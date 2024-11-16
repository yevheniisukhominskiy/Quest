package by.eugened.support;



import by.eugened.model.Quest;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.io.File;
import java.io.IOException;

public class QuestLoader {
    public Quest loadQuest(String fileName) throws IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        return objectMapper.readValue(new File(fileName), Quest.class);
    }
}
