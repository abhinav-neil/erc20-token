const Token = artifacts.require("ERC20Token.sol");

module.exports = function (deployer) {
  deployer.deploy(Token);
};
