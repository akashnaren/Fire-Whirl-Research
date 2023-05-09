import java.util.ArrayList;
import java.util.Scanner;

public class firewhirl {

    public static void main(String[] args) {

        // Create an ArrayList to store experiment data
        ArrayList<ExperimentData> data = new ArrayList<>();

        // Create a Scanner to read input from the user
        Scanner scanner = new Scanner(System.in);

        // Prompt the user to input data for each experiment
        while (true) {
            System.out.println("Enter data for an experiment (or type 'done' to finish):");
            System.out.print("Hole diameter: ");
            double holeDiameter = scanner.nextDouble();
            System.out.print("Vane angle: ");
            int vaneAngle = scanner.nextInt();
            System.out.print("Fuel tank weight before experiment: ");
            double fuelWeightBefore = scanner.nextDouble();
            System.out.print("Fuel tank weight after experiment: ");
            double fuelWeightAfter = scanner.nextDouble();
            System.out.print("Observations: ");
            scanner.nextLine(); // Consume newline character from previous input
            String observations = scanner.nextLine();

            // Create a new ExperimentData object and add it to the ArrayList
            data.add(new ExperimentData(holeDiameter, vaneAngle, fuelWeightBefore, fuelWeightAfter, observations));
        }

        // Analyze the data
        double totalFuelWeightChange = 0;
        int numExperiments = data.size();
        for (ExperimentData experiment : data) {
            double fuelWeightChange = experiment.getFuelWeightAfter() - experiment.getFuelWeightBefore();
            totalFuelWeightChange += fuelWeightChange;
            System.out.printf("Experiment #%d: Plate diameter=%.2f, hole diameter=%.2f, vane angle=%d, fuel weight change=%.2f, observations=%s\n",
                    data.indexOf(experiment) + 1, experiment.getPlateDiameter(), experiment.getHoleDiameter(), experiment.getVaneAngle(), fuelWeightChange, experiment.getObservations());
        }

        // Print summary statistics
        double averageFuelWeightChange = totalFuelWeightChange / numExperiments;
        System.out.printf("Summary: %d experiments, average fuel weight change=%.2f\n", numExperiments, averageFuelWeightChange);
    }

}

class ExperimentData {

    private final double plateDiameter;
    private final double holeDiameter;
    private final int vaneAngle;
    private final double fuelWeightBefore;
    private final double fuelWeightAfter;
    private final String observations;

    public ExperimentData(double plateDiameter, double holeDiameter, int vaneAngle, double fuelWeightBefore, double fuelWeightAfter, String observations) {
        this.plateDiameter = plateDiameter;
        this.holeDiameter = holeDiameter;
        this.vaneAngle = vaneAngle;
        this.fuelWeightBefore = fuelWeightBefore;
        this.fuelWeightAfter = fuelWeightAfter;
        this.observations = observations;
    }

    public double getPlateDiameter() {
        return plateDiameter;
    }

    public double getHoleDiameter() {
        return holeDiameter;
    }

    public int getVaneAngle() {
        return vaneAngle;
    }

    public double getFuelWeightBefore() {
        return fuelWeightBefore;
    }

    public double getFuelWeightAfter() {
        return fuelWeightAfter;
    }

    public String getObservations(){
        return observations;
    }
}