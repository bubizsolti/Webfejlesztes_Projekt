package Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import model.*;

public interface UserRepository extends JpaRepository<User, Long> {
}
