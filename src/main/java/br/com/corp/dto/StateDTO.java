package br.com.corp.dto;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

@Entity
@Table(name = "STATE")
@SequenceGenerator(name = "seqState", sequenceName = "seqState")
public class StateDTO implements Serializable {

    @Id
    @GeneratedValue(generator = "seqState", strategy = GenerationType.IDENTITY)
    @Column(name = "STATE_ID")
    private Integer id;

    @Column(name = "STATE_NAME", nullable = false)
    private String name;

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "CITY_ID")
    private Set<CityDTO> cities;

    @OneToOne(fetch = FetchType.LAZY,
            cascade = CascadeType.ALL,
            mappedBy = "state")
    private AddressDTO address;

    /**
     * Empty Constructor
     */
    public StateDTO() {

    }

    /**
     * Constuctor using fields
     *
     * @param name   State name
     * @param cities List of Cities
     */
    public StateDTO(String name, Set<CityDTO> cities) {
        this.name = name;
        this.cities = cities;
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

    public Set<CityDTO> getCities() {
        return cities;
    }

    public void setCities(Set<CityDTO> cities) {
        this.cities = cities;
    }
}
