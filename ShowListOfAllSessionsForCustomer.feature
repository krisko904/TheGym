Feature: View all training sessions of a customer

  Scenario: Customer has multiple training sessions
    Given a customer named "Ivan Georgiev" with the following training sessions:
      | type                | sessionDuration       | exercise1        | exercise2    | exercise3     |
      | Strength Workout    | 1.30                  | Bench Press      | Squat        | DeadLift      |
      | Crossfit Workout    | 1.15                  | Pull Ups         | Dips         | Chin Ups      |
      | Full Body Workout   | 2.15                  | Shoulder Press   | Leg Press    | Bicep Curls   |
    When I request the list of training sessions for "Ivan Georgiev"
    Then I should see 3 training sessions
    And the first session should be "Strength Workout"
    And the second session should be "Crossfit Workout"
    And the third session should be "Full Body Workout"