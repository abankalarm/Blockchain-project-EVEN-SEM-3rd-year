var DealList = artifacts.require("./DealList.sol");

module.exports = function(deployer) {
  deployer.deploy(DealList);
};