package eu.freemoser.bean;

/**
 * Created by freim on 14.06.2017.
 */
public class ErrorBean {
    String error;

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public String getHash() {
        return String.valueOf(this.hashCode());
    }

}
