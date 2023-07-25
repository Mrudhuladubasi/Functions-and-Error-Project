# Eligibility Checker
The EligibilityChecker smart contract is a basic Solidity contract that implements functions to check eligibility for voting, buying a car, and taking a pension. It utilizes the require(), assert(), and revert() statements to implement the eligibility criteria in each case.

## Smart Contract Details
The smart contract has the following state variables:
* age: Age of the individual, taken from the user, used to check eligibility for voting, buying a car, and taking a pension.
* hasValidLicense: To check whether the individual has a valid driver's license (used for buying a car).
* hasValidPensionPlan: To check whether the individual has a valid pension plan (used for taking a pension).

## Functions

* checkEligibilityToVote(): Checks whether the individual is eligible to vote. It requires the age to be at least 18 years.

* checkEligibilityToBuyCar(): Checks whether the individual is eligible to buy a car. It requires the age to be at least 21 years and that the individual has a valid driver's license.

* checkEligibilityForPension(): Checks whether the individual is eligible to take a pension. It requires the age to be at least 60 years and that the individual has a valid pension plan.

## Usage
* Deploy the EligibilityChecker smart contract by providing the required constructor parameters (_age, _hasValidLicense, and _hasValidPensionPlan).

* Use the checkEligibilityToVote(), checkEligibilityToBuyCar(), and checkEligibilityForPension() functions to check eligibility for different cases.

## Built With
* Solidity - The programming language to write the smart contract.
* Ethereum - The blockchain platform to deploy and execute the smart contract.

## Authors
Mrudhula Dubasi

mrudhuladubasi@gmail.com

#Chandigarh University

## License

This project is licensed under the MIT License - see the LICENSE.md file for details
