const ConvertCurrency = artifacts.require("ConvertCurrency");

module.exports = function (deployer) {

  //mainnet -> AAVE/USD		0x3CA13391E9fb38a75330fb28f8cc2eB3D9ceceED

  //testnet -> AVAX/USD	 	0x5498BB86BC934c8D34FDA08E81D444153d0D06aD
  deployer.deploy(ConvertCurrency, "0x5498BB86BC934c8D34FDA08E81D444153d0D06aD");
};
