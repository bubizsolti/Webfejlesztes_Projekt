package parfumApp.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import parfumApp.model.*;

public interface FragranceNoteRepository extends JpaRepository<FragranceNote, Long> {

}