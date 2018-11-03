package br.com.corp.dto;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

@Entity
@Table(name = "PERSON")
@SequenceGenerator(name = "seqPerson", sequenceName = "seqPerson")
@NamedQueries(
        @NamedQuery(name = "findAll", query = "FROM PersonDTO")
)
public class PersonDTO implements Serializable {

    @Id
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

    @OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
    @JoinColumn(name = "PERSON_ID")
    private Set<AddressDTO> addresses;

    @Temporal(value = TemporalType.TIMESTAMP)
    @Column(name = "REGISTER_DATE")
    private Date registerDate;

    @OneToOne(fetch = FetchType.LAZY, cascade = CascadeType.ALL, optional = false, mappedBy = "person")
    private UserDTO user;

    @Column(name = "PHONE_NUMBER", length = 15)
    private String phoneNumber;

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
    public PersonDTO(String firstName, String lastName, String nickName, char sexGender, Set<AddressDTO> addresses,
                     Date registerDate, UserDTO user, String phoneNumber) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.nickName = nickName;
        this.sexGender = sexGender;
        this.addresses = addresses;
        this.registerDate = registerDate;
        this.user = user;
        this.phoneNumber = phoneNumber;
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

    public UserDTO getUser() {
        return user;
    }

    public void setUser(UserDTO user) {
        this.user = user;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

}
