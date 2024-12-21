package parfumApp.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Parfum {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @Enumerated(EnumType.STRING)
    private Gender gender;

    private String imageUrl = "No image available";

    private Double price;

    @Column(columnDefinition = "LONGTEXT")
    private String description;
    /*@ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
        name = "parfum_fragrance_note",   // Kapcsoló tábla neve
        joinColumns = @JoinColumn(name = "parfum_id"),   // Parfüm ID
        inverseJoinColumns = @JoinColumn(name = "fragrance_note_id")  // Illatjegy ID
    )
    private Set<FragranceNote> fragranceNotes;  // Az illatjegyek listája
*/
    public enum Gender {
        FÉRFI, NŐI, UNISEX;
    }

}
