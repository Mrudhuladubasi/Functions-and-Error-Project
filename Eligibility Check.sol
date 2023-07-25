// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract EligibilityChecker {
    //address public owner;
    uint256 public age;
    bool public hasValidLicense;
    bool public hasValidPensionPlan;

    constructor(uint256 a1, bool l1, bool p1) {
        //owner = msg.sender;
        age = a1;
        hasValidLicense = l1;
        hasValidPensionPlan = p1;
    }

    function checkEligibilityToVote() public view returns (bool) {
        require(age >= 18, "You must be at least 18 years old to vote.");
        return true;
    }

    function checkEligibilityToBuyCar() public view returns (bool) {
        assert(hasValidLicense == true);
        require(age >= 21, "You must be at least 21 years old to buy a car.");
        return true;
    }

    function checkEligibilityForPension() public view returns (bool) {
        require(hasValidPensionPlan == true, "You must have a valid pension plan.");

        if(age >= 60)
        {
            revert("You must be at least 60 years old to take a pension.");
        }
        return true;
    }

}
