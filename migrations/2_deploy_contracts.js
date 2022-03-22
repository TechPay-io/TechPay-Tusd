const ConvertLib = artifacts.require("ConvertLib");
const TusdToken = artifacts.require("TusdToken");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, TusdToken);
  deployer.deploy(TusdToken);
};
