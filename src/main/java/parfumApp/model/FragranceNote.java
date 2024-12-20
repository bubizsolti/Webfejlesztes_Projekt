package parfumApp.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class FragranceNote {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String note;

    //@ManyToMany(mappedBy = "fragranceNotes")  // A kapcsolat a Parfum osztályban van kezelve
    //@JsonIgnore
    //private Set<Parfum> parfums;  // A parfümök listája, amelyekhez tartozik az illatjegy
}

