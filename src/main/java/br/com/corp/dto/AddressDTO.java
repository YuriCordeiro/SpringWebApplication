package br.com.corp.dto;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "ADDRESS")
@SequenceGenerator(name = "seqAddress", sequenceName = "seqAddress")
public class AddressDTO implements Serializable {

    @Id
    @Column(name = "ADDRESS_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY, generator = "seqAddress")
    private Integer id;

    @Column(name = "ADDRESS_DESCRIPTION", nullable = false)
    private String address;

    @Column(name = "UF", nullable = false, length = 2)
    private String uf;

    @Column(name = "CITY", nullable = false, length = 30)
    private String city;

    @Column(name = "DISTRICT", length = 30, nullable = false)
    private String district;

    @Column(name = "ZIP_POSTAL", length = 9, nullable = false)
    private String zipPostal;

    @Column(name = "ADDRESS_NUMBER", length = 6)
    private String number;

    @Column(name = "ADDRESS_COMPLEMENT", length = 45)
    private String complement;

    @Temporal(value = TemporalType.TIMESTAMP)
    @Column(name = "CREATED_DATE", nullable = false)
    private Date created;


    /**
     * Empty constructor
     */
    public AddressDTO() {
    }

    /**
     * Constuctor using fields
     *
     * @param id
     * @param address
     * @param uf
     * @param city
     * @param district
     * @param zipPostal
     * @param number
     * @param complement
     * @param created
     */
    public AddressDTO(Integer id, String address, String uf, String city, String district, String zipPostal, String number, String complement, Date created) {
        this.id = id;
        this.address = address;
        this.uf = uf;
        this.city = city;
        this.district = district;
        this.zipPostal = zipPostal;
        this.number = number;
        this.complement = complement;
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

    public String getZipPostal() {
        return zipPostal;
    }

    public void setZipPostal(String zipPostal) {
        this.zipPostal = zipPostal;
    }

    public Date getCreated() {
        return created;
    }

    public void setCreated(Date created) {
        this.created = created;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getUf() {
        return uf;
    }

    public void setUf(String uf) {
        this.uf = uf;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }

    public String getComplement() {
        return complement;
    }

    public void setComplement(String complement) {
        this.complement = complement;
    }
}
