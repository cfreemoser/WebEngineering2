package eu.freemoser.beans;

/**
 * Created by freim on 13.06.2017.
 */
public class CountBean {

    private int count;

    public CountBean() {

    }


    public int getCount() {
        return count++;
    }

    public void setCount(int count) {
        this.count = count;
    }
}
