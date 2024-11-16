package by.eugened.model;

import lombok.Data;

@Data
public class Option {
    private int id;
    private String text;
    private Integer nextQuestionId;
    private String result;
}
