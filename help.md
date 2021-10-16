Welcome to my gist for the even sem project IIIrd year

# Setup

## init folder
truffle init

## compiling code
truffle compile

now we can look at .json compiled

## truffle config - to decide all

## migration file to allow migration
It helps to change the state of the database, basically any changes we made are pushed to ??active?? state

## now use ganache and deploy
truffle migrate

add --reset flag to run a new copy

## truffle console
truffle console 

> dealList = await DealList.deployed()

should return undefined

> dealList

should return bockchain

> dealList.address 

should return default addresss used to deploy

> dealList.taskCount()

should return task number - right now 0
after constructor written it will be 1 instead


> x = await dealList.tasks(1)
> task

this shoudl return all tasks but with the id we need in result

## lite-server
remember we create a config file so that it can know which directory to look in

# Code 

## convention
_xyz local var
xyz state var

## good things
In using async and await, async is prepended when returning a promise, await is prepended when calling a promise. try and catch are also used to get the rejection value of an async function.

## mapping or hash
we use it to store key value pair 
> mapping (type => type) public name;

we now need to use it
>function createTask(string memory _content) public {
}


### memory??
Much like RAM, Memory in Solidity is a temporary place to store data whereas Storage holds data between function calls. The Solidity Smart Contract can use any amount of memory during the execution but once the execution stops, the Memory is completely wiped off for the next execution.


To use mapping
> mapping_name[tasskcount] = any_structure(taskcount, _content, false);

we use constructor for default task
> function name above with our content as arguement


To get data from mapping
we need to iterate every single time :(
we can use a for loop here

## app.js

### we use load async in await to load all components like web3, truffle our account
we will use the stanard loadweb3 config by METAMASK ITSELF!!!!

### remember we need to declare 1st account also as the default so that the app detects it! and not just load it in the first array :(



# tests

we can write tests
and run them by

> truffle test

# displaying data

to display we need to create a event that we can actually refer to 

eg
in sol
	event taskcreated(...){}

.js
	we can check if event is triggered by using result of actual create task func
	const event = result.logs[0].args
	
