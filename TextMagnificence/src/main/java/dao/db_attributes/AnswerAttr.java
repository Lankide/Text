package dao.db_attributes;

/**
 * Created by koloturka on 22.07.15.
 */
public enum AnswerAttr implements Attribute {

    TEXT("text"), NEXT_ITEM("nextItem"), NEXT_ITEM_ID("nextItemId");

    AnswerAttr(String name) {
        this.name = name;
    }

    private String name;

    public String getName() {
        return name;
    }

}
