package parfumApp.Controller;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CustomErrorController implements ErrorController {

    @RequestMapping("/error")  // Az /error végpontot kezeljük
    public String handleError() {
        // Az error.html sablont visszaadja, amely a /src/main/resources/templates mappában található
        return "error";
    }
}