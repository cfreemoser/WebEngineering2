package eu.freemoser.domain;

import eu.freemoser.DependencyContainer;

import java.time.LocalDate;
import java.util.Optional;

/**
 * Created by freim on 16.06.2017.
 */
public class AddressDAO {
    private final String id;
    private final String name;
    private final String christianname;
    private final String adressform;
    private final String email;
    private final String phone;
    private final String mobile;
    private final String street;
    private final Integer number;
    private final String city;
    private final String postcode;
    private final String country;
    private final LocalDate birthdate;
    private boolean dirty;


    public AddressDAO(String id) {
        this.id = id;
        this.name = null;
        this.christianname = null;
        this.adressform = null;
        this.email = null;
        this.phone = null;
        this.mobile = null;
        this.street = null;
        this.number = null;
        this.city = null;
        this.postcode = null;
        this.country = null;
        this.birthdate = null;
        this.dirty = true;
    }

    public AddressDAO(String id, String name, String christianname, String adressform, String email, String phone, String mobile, String street, Integer number, String city, String postcode, String country, LocalDate birthdate) {
        this.id = id;
        this.name = name;
        this.christianname = christianname;
        this.adressform = adressform;
        this.email = email;
        this.phone = phone;
        this.mobile = mobile;
        this.street = street;
        this.number = number;
        this.city = city;
        this.postcode = postcode;
        this.country = country;
        this.birthdate = birthdate;
        this.dirty = false;
    }

    public AddressDAO(String id, String name, String christianname, String adressform, String email, String phone, String mobile, String street, Integer number, String city, String postcode, String country, LocalDate birthdate, boolean dirty) {
        this.id = id;
        this.name = name;
        this.christianname = christianname;
        this.adressform = adressform;
        this.email = email;
        this.phone = phone;
        this.mobile = mobile;
        this.street = street;
        this.number = number;
        this.city = city;
        this.postcode = postcode;
        this.country = country;
        this.birthdate = birthdate;
        this.dirty = dirty;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getChristianname() {
        return christianname;
    }

    public String getAdressform() {
        return adressform;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getMobile() {
        return mobile;
    }

    public String getStreet() {
        return street;
    }

    public Integer getNumber() {
        return number;
    }

    public String getCity() {
        return city;
    }

    public String getPostcode() {
        return postcode;
    }

    public String getCountry() {
        return country;
    }

    public LocalDate getBirthdate() {
        return birthdate;
    }

    public AddressDAO setName(String name) {
        return new AddressDAO(this.id, name,
                this.christianname,
                this.adressform,
                this.email,
                this.phone,
                this.mobile,
                this.street,
                this.number,
                this.city,
                this.postcode,
                this.country,
                this.birthdate,
                true);
    }

    public AddressDAO setChristanname(String christanname) {
        return new AddressDAO(this.id,
                this.name,
                christanname,
                this.adressform,
                this.email,
                this.phone,
                this.mobile,
                this.street,
                this.number,
                this.city,
                this.postcode,
                this.country,
                this.birthdate,
                true);
    }

    public AddressDAO setAddressform(String adressform) {
        return new AddressDAO(this.id,
                this.name,
                this.christianname,
                adressform,
                this.email,
                this.phone,
                this.mobile,
                this.street,
                this.number,
                this.city,
                this.postcode,
                this.country,
                this.birthdate,
                true);
    }

    public AddressDAO setEmail(String email) {
        return new AddressDAO(this.id,
                this.name,
                this.christianname,
                this.adressform,
                email,
                this.phone,
                this.mobile,
                this.street,
                this.number,
                this.city,
                this.postcode,
                this.country,
                this.birthdate,
                true);
    }

    public AddressDAO setPhone(String phone) {
        return new AddressDAO(this.id,
                this.name,
                this.christianname,
                this.adressform,
                this.email,
                phone,
                this.mobile,
                this.street,
                this.number,
                this.city,
                this.postcode,
                this.country,
                this.birthdate,
                true);
    }

    public AddressDAO setMobile(String mobile) {
        return new AddressDAO(this.id,
                this.name,
                this.christianname,
                this.adressform,
                this.email,
                this.phone,
                mobile,
                this.street,
                this.number,
                this.city,
                this.postcode,
                this.country,
                this.birthdate,
                true);
    }

    public AddressDAO setStreet(String street) {
        return new AddressDAO(this.id,
                this.name,
                this.christianname,
                this.adressform,
                this.email,
                this.phone,
                this.mobile,
                street,
                this.number,
                this.city,
                this.postcode,
                this.country,
                this.birthdate,
                true);
    }

    public AddressDAO setNumber(int number) {
        return new AddressDAO(this.id,
                this.name,
                this.christianname,
                this.adressform,
                this.email,
                this.phone,
                this.mobile,
                this.street,
                number,
                this.city,
                this.postcode,
                this.country,
                this.birthdate,
                true);
    }

    public AddressDAO setCity(String city) {
        return new AddressDAO(this.id,
                this.name,
                this.christianname,
                this.adressform,
                this.email,
                this.phone,
                this.mobile,
                this.street,
                this.number,
                city,
                this.postcode,
                this.country,
                this.birthdate,
                true);
    }

    public AddressDAO setPostcode(String postcode) {
        return new AddressDAO(this.id,
                this.name,
                this.christianname,
                this.adressform,
                this.email,
                this.phone,
                this.mobile,
                this.street,
                this.number,
                this.city,
                postcode,
                this.country,
                this.birthdate,
                true);
    }

    public AddressDAO setCountry(String country) {
        return new AddressDAO(this.id,
                this.name,
                this.christianname,
                this.adressform,
                this.email,
                this.phone,
                this.mobile,
                this.street,
                this.number,
                this.city,
                this.postcode,
                country,
                this.birthdate,
                true);
    }

    public AddressDAO setBithdate(LocalDate birthdate) {
        return new AddressDAO(this.id,
                this.name,
                this.christianname,
                this.adressform,
                this.email,
                this.phone,
                this.mobile,
                this.street,
                this.number,
                this.city,
                this.postcode,
                this.country,
                birthdate,
                true);
    }

    /**
     * Commit changes to the database
     *
     * @return true if the commit was successful false otherwise
     */
    public boolean commit() {
        AddressBook addressBook = (AddressBook) DependencyContainer.loadInstance(AddressBook.class);
        boolean state = addressBook.INSERTORUPDATE(this);
        dirty = !state;
        return state;
    }

    public boolean isCommited() {
        return ((AddressBook) DependencyContainer.loadInstance(AddressBook.class))
                .SELECT((AddressDAO dao) -> dao.getId().equals(this.getId()))
                .findAny()
                .isPresent();
    }

    public boolean isModified() {
        return dirty;
    }

    /**
     * Undo all changed.
     *
     * @return the old version of this dao
     */
    public Optional<AddressDAO> rollback() {
        AddressBook addressBook = (AddressBook) DependencyContainer.loadInstance(AddressBook.class);
        return addressBook.SELECT((AddressDAO d) -> d.getId().equals(this.getId())).findFirst();
    }

    public boolean delete() {
        AddressBook addressBook = (AddressBook) DependencyContainer.loadInstance(AddressBook.class);
        return addressBook.DELETE(this);
    }
}
