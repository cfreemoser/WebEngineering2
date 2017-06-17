package eu.freemoser.web.beans;

import eu.freemoser.DependencyContainer;
import eu.freemoser.domain.AddressBook;
import eu.freemoser.domain.AddressDAO;
import eu.freemoser.domain.Database;

import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

/**
 * Created by freim on 17.06.2017.
 */
public class AddressListBean {
    private final Database database;
    private String searchText;

    public AddressListBean() {
        database = ((AddressBook) DependencyContainer.loadInstance(AddressBook.class));
    }

    public List<AddressBean> getAddressBeans() {
        return database
                .SELECT(interpreterSearchText(searchText))
                .map(AddressBean::new)
                .collect(Collectors.toList());
    }

    public String getSearchText() {
        return searchText;
    }

    public void setSearchText(String searchText) {
        this.searchText = searchText;
    }

    public boolean deleteBean(String id) {
        return getAddressBeans()
                .stream()
                .filter(addressBean -> addressBean.getId().equals(id))
                .findFirst()
                .map(AddressBean::getDao)
                .map(database::DELETE)
                .orElse(false);
    }

    private Predicate<AddressDAO> interpreterSearchText(String searchText) {
        //TODO
        return (AddressDAO d) -> true;
    }
}
