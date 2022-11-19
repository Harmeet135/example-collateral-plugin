// SPDX-License-Identifier: BlueOak-1.0.0
pragma solidity 0.8.9;

interface OHMToken {
    /// @dev From Compound Docs:
    function exchangeRateCurrent() external returns (uint256);

    function exchangeRateStored() external view returns (uint256);
}

interface IComptroller {
    /// Claim comp for an account, to an account
    function claimComp(address account) external;

    /// @return The address for COMP token
    function getCompAddress() external view returns (address);
}
