package parfumApp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class WelcomePageController {

    // Kezdőlap kiszolgálása
    @GetMapping("/")
    public String index() {
        return "index"; // Az "index.html" sablont tölti be
    }
}
