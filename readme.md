forge init - to get a project started

lib folder - includes dependencies for our packages here
src - is the equivalent of contracts folder
test folder - files have .t.sol extension. To run a test, cmd line - forge test - will run through this file.
.gitignore - ignoring files for git
.gitmodules - this is where we actually define what github repos we want to pull in into our lib folder
foundry.toml - kind of like hardhat.config with a bunch of parameters

forge build - to compile
forge install Openzeppelin/openzellein-contracts - before doing forge install make sure all untracked files are committed.
forge build will not recognise @Openzellin/ope... Need to do remapping in the foundry.toml file
