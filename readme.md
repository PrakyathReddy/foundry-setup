forge init - to get a project started. To initialize the repository.

lib folder - includes dependencies for our packages here
src - is the equivalent of contracts folder
test folder - files have .t.sol extension. To run a test, cmd line - forge test - will run through this file.
.gitignore - ignoring files for git
.gitmodules - this is where we actually define what github repos we want to pull in into our lib folder
foundry.toml - kind of like hardhat.config with a bunch of parameters

forge build - to compile
forge install Openzeppelin/openzellein-contracts - before doing forge install make sure all untracked files are committed.
forge build will not recognise @Openzellin/ope... Need to do remapping in the foundry.toml file

Once test file is ready, run command forge test

makefiles are ways to collect your scripts and collect what people want to do with your application. We most likely don't make our own makefiles, we just copy it.

To deploy to a local network - we will use hardhat to run our local network - run cmd 'yarn add hardhat'
then 'yarn hardhat'
then 'yarn hardhat node' - to setup sample accounts, with their private keys. Now we have a fake blockchain running on our localhost.

To deploy our staked contract to local blockchian - 'forge create StakeContract --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --rpc-url http://127.0.0.1:8545/'
