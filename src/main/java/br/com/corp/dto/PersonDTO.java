package br.com.corp.dto;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "PERSON")
@SequenceGenerator(name = "seqPerson", sequenceName = "seqPerson")
@NamedQueries(
        @NamedQuery(name = "findlAll", query = "FROM PersonDTO")
)
public class PersonDTO implements Serializable {

    @Column(name = "PERSON_ID")
    @GeneratedValue(generator = "seqPerson", strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "FIRST_NAME", length = 30, nullable = false)
    private String firstName;

    @Column(name = "LAST_NAME", length = 120, nullable = false)
    private String lastName;

    @Column(name = "NICKNAME", length = 15)
    private String nickName;

    @Column(name = "SEX_GENDER", length = 1, nullable = false)
    private char sexGender;

    @OneToMany(fetch = FetchType.EAGER)
    @JoinColumn(name = "PERSON_ID", nullable = false)
    private Set<AddressDTO> addresses;

    @Temporal(value = TemporalType.TIMESTAMP)
    @Column(name = "REGISTER_DATE")
    private Date registerDate;

//    private List<CreditCardDTO> creditCards;


    /**
     * Empty Contrusctor
     */
    public PersonDTO() {

    }

    /**
     * Constructor using fields
     *
     * @param firstName    person first name
     * @param lastName     person last name
     * @param nickName     person nickname (optional)
     * @param sexGender    person sex gender
     * @param addresses    person addresses
     * @param registerDate registered date
     */
    public PersonDTO(String firstName, String lastName, String nickName, char sexGender, Set<AddressDTO> addresses, Date registerDate) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.nickName = nickName;
        this.sexGender = sexGender;
        this.addresses = addresses;
        this.registerDate = registerDate;
    }


    public char getSexGender() {
        return sexGender;
    }

    public Date getRegisterDate() {
        return registerDate;
    }

    public Integer getId() {
        return id;
    }

    public Set<AddressDTO> getAddresses() {
        return addresses;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getNickName() {
        return nickName;
    }

    public void setAddresses(Set<AddressDTO> addresses) {
        this.addresses = addresses;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }

    public void setRegisterDate(Date registerDate) {
        this.registerDate = registerDate;
    }

    public void setSexGender(char sexGender) {
        this.sexGender = sexGender;
    }

    /**
     * Should add a new Address to the user's addresses list
     *
     * @param newAddress a user new address
     */
    public void addNewAddress(AddressDTO newAddress) {
        this.addresses.add(newAddress);
    }
}
