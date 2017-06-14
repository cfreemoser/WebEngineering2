package eu.freemoser.bean;

/**
 * Created by freim on 14.06.2017.
 */
public class CalculatorBean {
    private String op1;
    private String op;
    private String op2;
    private int validop1;
    private String validop;
    private int validop2;

    public CalculatorBean() {
        //invalid
        validop = "";
        op1 = "";
        op = "";
        op2 = "";

    }

    public boolean isOp1Valid() {
        try {
            validop1 = Integer.valueOf(op1);
            System.out.println("!o");
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

    public boolean isOpValid() {
        switch (op) {
            case "/":
                validop = op;
                return true;
            case "+":
                validop = op;
                return true;
            case "-":
                validop = op;
                return true;
            case "*":
                validop = op;
                return true;
            default:
                return false;
        }
    }

    public boolean isOp2Valid() {
        try {
            validop2 = Integer.valueOf(op2);
            return !(validop.equals("/") && validop2 == 0);
        } catch (Exception ex) {
            return false;
        }
    }

    public String getOp1() {
        return op1;
    }

    public void setOp1(String op1) {
        this.op1 = op1;
    }

    public String getOp() {
        return op;
    }

    public void setOp(String op) {
        this.op = op;
    }

    public String getOp2() {
        return op2;
    }

    public void setOp2(String op2) {
        this.op2 = op2;
    }

    public float getResult() {
        switch (validop) {
            case "/":
                return validop1 / validop2;
            case "+":
                return validop1 + validop2;
            case "-":
                return validop1 - validop2;
            case "*":
                return validop1 * validop2;
            default:
                return 42;
        }
    }

}
