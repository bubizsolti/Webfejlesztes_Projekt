package parfumApp.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import parfumApp.model.Parfum;

public interface ParfumRepository extends JpaRepository<Parfum, Long> {

}
