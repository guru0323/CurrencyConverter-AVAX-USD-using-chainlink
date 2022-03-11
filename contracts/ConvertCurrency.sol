// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";

contract ConvertCurrency {
    using SafeMath for uint;

    AggregatorV3Interface internal priceFeed;

    constructor(address _feedAddress) {
        priceFeed = AggregatorV3Interface(_feedAddress);
    }

    function getCurrentPrice() public view returns (uint) {
        (, int256  _price, , , ) = priceFeed.latestRoundData();
        return uint(_price);
    }

    function convertCurrency(uint _usdA) public view returns (uint) {
        (, int256  _price, , , ) = priceFeed.latestRoundData();
        uint avaxA = _usdA.div(uint(_price));
        return avaxA;
    }
}
