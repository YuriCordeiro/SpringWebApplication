package br.com.corp.dto;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "ADDRESS")
@SequenceGenerator(name = "seqAddress", sequenceName = "seqAddress")
public class AddressDTO implements Serializable {

    @Column(name = "ADDRESS_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "seqAddress")
    private Integer id;

    @Column(name = "ADDRESS_DESCRIPTION", nullable = false)
    private String address;

    @Column(nullable = false)
    @OneToOne(fetch = FetchType.LAZY)
    @MapsId
    private StateDTO state;

    @Column(name = "ZIP_POSTAL", length = 9, nullable = false)
    private String zipPostal;

    @Column(name = "COUNTRY", nullable = false)
    private String country;


    @Temporal(value = TemporalType.TIMESTAMP)
    @Column(name = "CREATED_DATE", nullable = false)
    private Date created;

    @Column(name = "PHONE_NUMEBR")
    private String phoneNumber;

    /**
     * Empty constructor
     */
    public AddressDTO() {
    }

    /**
     * Constuctor using fields
     *
     * @param address   street x, avenue x, etc...
     * @param state     address' state
     * @param zipPostal address' zipPostal
     * @param country   address' country
     * @param created   address' created
     */
    public AddressDTO(String address, StateDTO state, String zipPostal, String country, Date created) {
        this.address = address;
        this.state = state;
        this.zipPostal = zipPostal;
        this.country = country;
        this.created = created;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public StateDTO getState() {
        return state;
    }

    public void setState(StateDTO state) {
        this.state = state;
    }

    public String getZipPostal() {
        return zipPostal;
    }

    public void setZipPostal(String zipPostal) {
        this.zipPostal = zipPostal;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }
}
