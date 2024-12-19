package model;

import jakarta.persistence.*;
import java.util.Set;

@Entity
public class FragranceNote {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String note;

    @ManyToMany(mappedBy = "fragranceNotes")  // A kapcsolat a Parfum osztályban van kezelve
    private Set<Parfum> parfums;  // A parfümök listája, amelyekhez tartozik az illatjegy

    // Getterek és setterek
}

