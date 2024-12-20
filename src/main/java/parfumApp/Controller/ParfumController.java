package parfumApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import parfumApp.Repository.ParfumRepository;
import parfumApp.model.Parfum;

import java.util.List;
import java.util.stream.Collectors;

@RestController
public class ParfumController {

    @Autowired
    private ParfumRepository parfumRepository;

    // A gender szűréshez új paramétereket adunk hozzá
    @GetMapping("/parfums")
    public List<Parfum> getAllParfums(@RequestParam(required = false) List<String> genders) {
        if (genders == null || genders.isEmpty()) {
            return parfumRepository.findAll();  // Ha nincs gender, akkor visszaadjuk az összes parfümöt
        }

        // Átalakítjuk a String típusú genders-t Parfum.Gender típusúvá
        try {
            List<Parfum.Gender> genderEnums = genders.stream()
                    .map(gender -> Parfum.Gender.valueOf(gender.toUpperCase()))  // Enum értékek nagybetűs alakban
                    .collect(Collectors.toList());

            return parfumRepository.findByGenderIn(genderEnums);  // Ha van gender, akkor szűrünk
        } catch (IllegalArgumentException e) {
            // Hibás gender értékek kezelése
            throw new IllegalArgumentException("Invalid gender value(s) provided. Valid values are FÉRFI, NŐI, UNISEX.");
        }
    }
}
