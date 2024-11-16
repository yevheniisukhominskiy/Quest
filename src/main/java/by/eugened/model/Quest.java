package by.eugened.model;

import lombok.Data;

import java.util.List;

@Data
public class Quest {
    private String title;
    private List<Question> questions;
}
