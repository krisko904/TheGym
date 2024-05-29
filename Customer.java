import lombok.Data;
import java.util.List;

@Data
public class Customer {

    private String name;
    private List<TrainingSession> trainingSessions;

    public List<TrainingSession> getTrainingSessions(){
        return trainingSessions;
    }
}
