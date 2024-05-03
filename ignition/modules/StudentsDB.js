const {buildModule} = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("StudentsDBModule",(m)=>{
    const students=m.contract("StudentsDB");
    return {students};
});