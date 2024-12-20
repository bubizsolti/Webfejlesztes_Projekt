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

    @GetMapping("/")
    public String index() {
        return "index";  // Az `index.html` betöltése a `src/main/resources/templates` könyvtárból
    }

}
