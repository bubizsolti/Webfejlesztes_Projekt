package Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import model.*;

public interface ParfumRepository extends JpaRepository<Parfum, Long> {
}