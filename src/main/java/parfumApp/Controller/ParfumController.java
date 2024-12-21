package parfumApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import parfumApp.Repository.ParfumRepository;
import parfumApp.model.Parfum;

import java.util.List;
import java.util.stream.Collectors;

@Controller
public class ParfumController {

    @Autowired
    private ParfumRepository parfumRepository;

    // Kezdőlap kiszolgálása
    @GetMapping("/")
    public String index() {
        return "index"; // Az "index.html" sablont tölti be
    }

    // Parfümök listázása
    @GetMapping("/parfums")
    public String getParfums(@RequestParam(required = false) List<String> genders, Model model) {
        List<Parfum> parfums;

        if (genders == null || genders.isEmpty()) {
            parfums = parfumRepository.findAll(); // Ha nincs szűrés, akkor minden parfümöt visszaad
        } else {
            try {
                List<Parfum.Gender> genderEnums = genders.stream()
                        .map(gender -> Parfum.Gender.valueOf(gender.toUpperCase())) // Szűrjük nemek szerint
                        .collect(Collectors.toList());
                parfums = parfumRepository.findByGenderIn(genderEnums);
            } catch (IllegalArgumentException e) {
                throw new IllegalArgumentException("Invalid gender value(s) provided. Valid values are FÉRFI, NŐI, UNISEX.");
            }
        }

        model.addAttribute("parfums", parfums); // Parfüm adatokat adunk a modellhez
        return "parfums"; // Az "parfums.html" sablont tölti be
    }
}
