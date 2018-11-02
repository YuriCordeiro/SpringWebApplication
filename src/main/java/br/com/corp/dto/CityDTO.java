package br.com.corp.dto;

import javax.persistence.*;

@Entity
@Table(name = "CITY")
@SequenceGenerator(name = "seqCity", sequenceName = "seqCity")
public class CityDTO {

    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "seqCity")
    @Column(name = "CITY_ID")
    private Integer id;

    @Column(name = "CITY_NAME")
    private String name;

    /**
     * Empty Constructor
     */
    public CityDTO() {

    }

    /**
     * Constructor Using Fields
     *
     * @param name
     */
    public CityDTO(String name) {
        this.name = name;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
