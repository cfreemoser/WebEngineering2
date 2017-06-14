package eu.freemoser.bean;

/**
 * Created by freim on 14.06.2017.
 */
public class CalculatorBean {
    private int value1;
    private String operator;
    private int value2;

    public int getValue1() {
        return value1;
    }

    public void setValue1(int value1) {
        this.value1 = value1;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public int getValue2() {
        return value2;
    }

    public void setValue2(int value2) {
        this.value2 = value2;
    }

    public float getResult() {
        switch (operator) {
            case "+":
                return value1 + value2;
            case "-":
                return value1 - value2;
            case "/":
                return value1 / value2;
            case "*":
                return value1 * value2;
            default:
                return Float.NaN;
        }
    }
}
