package eu.freemoser.domain;

import java.util.function.Predicate;
import java.util.stream.Stream;

/**
 * Created by freim on 16.06.2017.
 */
public interface Database {


    public boolean INSERT(AddressDAO dto);

    public boolean INSERTORUPDATE(AddressDAO dao);

    public boolean UPDATE(AddressDAO dao);

    public Stream<AddressDAO> SELECT(Predicate<AddressDAO> where);

    public boolean DELETE(AddressDAO dto);

}
