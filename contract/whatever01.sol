// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract NrmChain {
    uint8 private secretNumber;
    address public owner;

    event GameStarted(address indexed by, uint8 secretNumber);
    event GuessResult(address indexed player, bool correct, uint8 guessedNumber, uint8 actualNumber);

    constructor() {
        owner = msg.sender;
        _generateRandomNumber();
    }

    // internal function to generate pseudo-random number (1–10)
    function _generateRandomNumber() internal {
        // pseudo-random (not secure — for learning only)
        secretNumber = uint8(uint256(keccak256(abi.encodePacked(block.timestamp, block.prevrandao, msg.sender))) % 10 + 1);
        emit GameStarted(owner, secretNumber);
    }

    // players guess a number between 1–10
    function guessNumber(uint8 _guess) public {
        require(_guess >= 1 && _guess <= 10, "Guess must be between 1 and 10");

        bool correct = (_guess == secretNumber);
        emit GuessResult(msg.sender, correct, _guess, secretNumber);

        // regenerate number after every guess
        _generateRandomNumber();
    }

    // view current secret (for debugging only; remove in production)
    function getSecretNumber() public view returns (uint8) {
        return secretNumber;
    }
}

