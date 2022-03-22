pragma solidity >=0.4.25 <0.7.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/TUSDToken.sol";

contract TestMetaCoin {

  // test initial balance to be empty on deployed contract
  function testInitialBalanceUsingDeployedContract() public {
    TusdToken token = TusdToken(DeployedAddresses.TusdToken());
    uint expected = 0;
    Assert.equal(token.getBalance(tx.origin), expected, "Owner should not have any tUSD.");
  }

  // test initial balance to be empty on a new  instance of the contract
  function testInitialBalanceWithNewTusdToken() public {
    TusdToken token = new TusdToken();
    uint expected = 0;
    Assert.equal(token.getBalance(tx.origin), expected, "Owner should not have any tUSD.");
  }
}
