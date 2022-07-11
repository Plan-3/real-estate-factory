const { network, ethers } = require("hardhat");
const {development, networkConfig} = require("../helper-hardhat-config")
const {verify} = require("../utils/verify.js")
require("dotenv").config()

module.exports = async function({getNamedAccounts, deployments}) {
    const{deploy, log} = deployments;
    const{deployer} = await getNamedAccounts();
    let chainId = network.config.chainId
    let vrfCoordinatorV2Address, subscriptionId

    log("--------------------------")

    const args = [
       
    ];
    
   console.log("before deploy");
   console.log(args);
    const randomNft = await deploy("Factory", {
            from: deployer,
            args: args,
            log: true,
            waitConfirmations: network.config.blockConfirmations || 1
        })
        console.log(`${deployer}`);
        if(!development.includes(network.name) && process.env.ETHERSCAN_API){
                log("Verifying....")
                await verify(randomNft.address, args)
            }
            log("----------Verified----------")
            log(`---------Deployed at-----------`)
}

module.exports.tags = ["factory"]