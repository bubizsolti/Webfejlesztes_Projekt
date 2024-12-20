package parfumApp.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import parfumApp.model.Parfum;

import java.util.List;

public interface ParfumRepository extends JpaRepository<Parfum, Long> {

    // Lekérdezés a gender alapján, de a gender enum-ot string típusra cseréljük
    List<Parfum> findByGenderIn(List<Parfum.Gender> genders);
}
