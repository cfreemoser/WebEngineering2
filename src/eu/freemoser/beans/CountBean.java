package eu.freemoser.beans;

/**
 * Created by freim on 13.06.2017.
 */
public class CountBean {

    private int count;

    public CountBean() {

    }


    public int getCount() {
        count = count + 1;
        return count;
    }

    public String getHash() {
        return String.valueOf(this.hashCode());
    }

}
