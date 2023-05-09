import java.util.Scanner;

public class FuelConsumption {
   public static void main(String[] args) {
      Scanner input = new Scanner(System.in);
      
      // Prompt user for input
      System.out.print("Enter weight of fuel tank before experiment (in kg): ");
      double initialWeight = input.nextDouble();
      
      System.out.print("Enter weight of fuel tank after experiment (in kg): ");
      double finalWeight = input.nextDouble();
      
      System.out.print("Enter time elapsed during the experiment (in hours): ");
      double timeElapsed = input.nextDouble();
      
      // Calculate fuel consumption rate
      double fuelConsumptionRate = (initialWeight - finalWeight) / timeElapsed;
      
      // Display result
      System.out.println("Fuel consumption rate: " + fuelConsumptionRate + " kg/hour");
   }
}

