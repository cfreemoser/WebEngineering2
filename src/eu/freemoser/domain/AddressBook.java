package eu.freemoser.domain;

import java.time.LocalDate;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.function.Predicate;
import java.util.stream.Stream;


public class AddressBook implements Database {

    private final List<AddressDAO> database = new LinkedList<>();

    public AddressBook() {
        generateTestData();
    }

    private void generateTestData() {
        AddressDAO f1 = new AddressDAO(UUID.randomUUID().toString(), "Freimoser", "Cem", "whatever", "freimoser.c@gmail.com", "0893614251", "01774662591", "Schinkelstr", 15, "80805", "München", "Germany", LocalDate.of(1995, 9, 2));
        AddressDAO f2 = new AddressDAO(UUID.randomUUID().toString(), "Freimoser", "Serdar", "whatever", "somemail@gmx.de", "087212", "01224662591", "Berliner", 17, "Berlin", "90902", "Germany", LocalDate.of(1991, 5, 2));
        AddressDAO f3 = new AddressDAO(UUID.randomUUID().toString(), "Russo", "Linda", "whatever", "linda@gmx.de", "", "666666", "Lindasstreet", 12, "Karlsruhe", "90901", "Germany", LocalDate.of(2001, 5, 12));
        AddressDAO f4 = new AddressDAO(UUID.randomUUID().toString(), "Ross", "Bob", "whatever", "truefalsetruefalse@gmx.de", "1110011", "0111001101", "Binarysteet", 10, "1010101", "Oslo", "Norway", LocalDate.of(1966, 1, 19));
        AddressDAO f5 = new AddressDAO(UUID.randomUUID().toString(), "Afri", "Cola", "whatever", "cool@gmx.de", "087212", "01224662591", "Münchner", 17, "909090", "Hamburg", "Germany", LocalDate.of(1900, 5, 2));

        this.INSERT(f1);
        this.INSERT(f2);
        this.INSERT(f3);
        this.INSERT(f4);
        this.INSERT(f5);

    }

    @Override
    public boolean INSERT(AddressDAO dto) {
        return database.add(dto);
    }

    @Override
    public boolean INSERTORUPDATE(AddressDAO dao) {
        if (database.stream().anyMatch(dao1 -> dao1.getId().equals(dao.getId()))) {
            return UPDATE(dao);
        } else {
            return INSERT(dao);
        }
    }

    @Override
    public boolean UPDATE(AddressDAO dao) {
        return database
                .stream()
                .filter(dao1 -> dao1.getId().equals(dao.getId()))
                .findAny()
                .map(database::remove)
                .map(aBoolean -> aBoolean && database.add(dao))
                .orElse(false);
    }

    @Override
    public Stream<AddressDAO> SELECT(Predicate<AddressDAO> where) {
        return database
                .stream()
                .filter(where);
    }

    @Override
    public boolean DELETE(AddressDAO dao) {
        Predicate<AddressDAO> where = (AddressDAO d) -> d.getId().equals(dao.getId());
        return SELECT(where).findFirst().map(database::remove).orElse(false);
    }
}
