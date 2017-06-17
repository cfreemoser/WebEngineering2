package eu.freemoser.web.beans;

import eu.freemoser.DependencyContainer;
import eu.freemoser.domain.AddressBook;
import eu.freemoser.domain.AddressDAO;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Locale;
import java.util.UUID;

/**
 * Created by freim on 16.06.2017.
 */
public class AddressBean {

    private AddressDAO dao;

    public AddressBean() {
        dao = new AddressDAO(UUID.randomUUID().toString());
    }

    public AddressBean(AddressDAO dao) {
        this.dao = dao;
    }

    public String getId() {
        return dao.getId();
    }

    public String getName() {
        return dao.getName();
    }

    public String getChristianname() {
        return dao.getChristianname();
    }

    public String getAdressform() {
        return dao.getAdressform();
    }

    public String getEmail() {
        return dao.getEmail();
    }

    public String getPhone() {
        return dao.getPhone();
    }

    public String getMobile() {
        return dao.getMobile();
    }

    public String getStreet() {
        return dao.getStreet();
    }

    public Integer getNumber() {
        return dao.getNumber();
    }

    public String getCity() {
        return dao.getCity();
    }

    public String getPostcode() {
        return dao.getPostcode();
    }

    public String getCountry() {
        return dao.getCountry();
    }

    public String getBirthdate() {
        Locale l = new Locale("en", "US");
        DateTimeFormatter f = DateTimeFormatter.ofPattern("d MMMM, uuuu", l);
        if (dao.getBirthdate() != null) {
            return f.format(dao.getBirthdate());
        } else return "";
    }

    public void setId(String id) {
        dao = ((AddressBook) DependencyContainer.loadInstance(AddressBook.class))
                .SELECT((AddressDAO dao) -> dao.getId().equals(id))
                .findFirst()
                .orElse(new AddressDAO(id));
    }

    public void setName(String name) {
        dao = dao.setName(name);
    }

    public void setChristanname(String christanname) {
        dao = dao.setChristanname(christanname);
    }

    public void setAddressform(String adressform) {
        dao = dao.setChristanname(adressform);
    }

    public void setEmail(String email) {
        dao = dao.setEmail(email);
    }

    public void setPhone(String phone) {
        dao = dao.setPhone(phone);
    }

    public void setMobile(String mobile) {
        dao = dao.setMobile(mobile);
    }

    public void setStreet(String street) {
        dao = dao.setStreet(street);
    }

    public void setNumber(int number) {
        dao = dao.setNumber(number);
    }

    public void setCity(String city) {
        dao = dao.setCity(city);
    }

    public void setPostcode(String postcode) {
        dao = dao.setPostcode(postcode);
    }

    public void setCountry(String country) {
        dao = dao.setPostcode(country);
    }

    public void setBithdate(LocalDate birthdate) {
        dao = dao.setBithdate(birthdate);
    }

    public boolean save() {
        return dao.commit();
    }

    public boolean isValid() {
        return !dao.isModified() && dao.isCommited();
    }

    AddressDAO getDao() {
        return dao;
    }

    public boolean delete() {
        return dao.delete();
    }

}
