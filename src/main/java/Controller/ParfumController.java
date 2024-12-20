package Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import Repository.*;
import model.*;

import java.util.List;

@RestController
public class ParfumController {

    @Autowired
    private ParfumRepository parfumRepository;

    // A gender szűréshez új paramétereket adunk hozzá
    @GetMapping("/parfums")
    public List<Parfum> getAllParfums(@RequestParam List<String> genders) {
        return parfumRepository.findByGenderIn(genders);  // Lekérdezzük az adatokat a gender alapján
    }
}
