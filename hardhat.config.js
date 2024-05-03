const { hardhatArguments } = require("hardhat");

require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.24",
 /* networks:(
    hardhat:{},
    sepolia:{
      url:"https://sepolia.infura.io/v3/103af23784b7408e989e8d848d5f4c1c"
      accounts:[Process.env]
    }
  )*/
};
