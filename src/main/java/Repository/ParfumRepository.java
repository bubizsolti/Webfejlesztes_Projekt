package Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import model.*;

import java.util.List;

public interface ParfumRepository extends JpaRepository<Parfum, Long> {

    // Lekérdezés a gender alapján
    List<Parfum> findByGenderIn(List<String> genders);
}