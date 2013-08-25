package cn.com.jr;

/**
 * Created with IntelliJ IDEA.
 * User: ThinkPad
 * Date: 13-8-24
 * Time: 下午10:52
 * To change this template use File | Settings | File Templates.
 */
public class RiskReport {
    String struture;
    String object;
    String point;
    String result;

    public String getStruture() {
        return struture;
    }

    public void setStruture(String struture) {
        this.struture = struture;
    }

    public String getObject() {
        return object;
    }

    public void setObject(String object) {
        this.object = object;
    }

    public String getPoint() {
        return point;
    }

    public void setPoint(String point) {
        this.point = point;
    }

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public RiskReport(String struture, String object, String point, String result) {
        this.struture = struture;
        this.object = object;
        this.point = point;
        this.result = result;
    }
}
