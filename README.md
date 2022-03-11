# Simple currency converter contract Project

Create a simple currency converter contract that takes a value in usd($) and returns the amount in AVAX using the chainlink price feed oracle for AVAX

Truffle, which you can install with:
```shell
npm install -g truffle
```

Use npm to install web3, which is a library through which we can talk to the EVM and AvalancheJS which is used for cross chain swaps.

```shell
npm install web3 avalanche -s
```


The local development network pre-funds some static addresses when created. We'll use @truffle/hdwallet-provider to use these pre-funded addresses as our accounts.

```shell
npm install @truffle/hdwallet-provider
```

Scripting account funding
There is a convenient script that funds the accounts list . You can find it here. You can also download it using this command:
```shell
wget -nd -m https://raw.githubusercontent.com/ava-labs/avalanche-docs/master/scripts/fund-cchain-addresses.js
```
You can run the script with:

```shell
truffle exec fund-cchain-addresses.js --network development
```
Script will fund 1000 AVAX to each account in accounts list above. After succesfully running the script you can check balances with

# For deploy on testnet

Run the following command:

```shell
npm install -g truffle

npm i

truffle compile

truffle migrate --network testnet

truffle run verify ConvertCurrency --network testnet

```





