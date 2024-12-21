package parfumApp.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import parfumApp.Repository.ParfumRepository;
import parfumApp.model.Parfum;
import java.util.List;

@Controller
public class ParfumsController {

    @Autowired
    private ParfumRepository parfumRepository;

    @GetMapping("/parfums")
    public String getParfums(Model model) {
        try {
            List<Parfum> parfums = parfumRepository.findAll();  // Az összes parfüm lekérése

            if (parfums.isEmpty()) {
                model.addAttribute("message", "Nincs elérhető parfüm.");
            } else {
                model.addAttribute("parfums", parfums);
            }
            return "parfums";  // A thymeleaf sablont fogja visszaadni
        } catch (Exception e) {
            model.addAttribute("error", "Hiba történt a parfümök betöltése során.");
            return "error";  // Hibaoldal
        }
    }
}
