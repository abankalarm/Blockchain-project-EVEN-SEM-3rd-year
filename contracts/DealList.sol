pragma solidity ^0.5.0;

//the contract
contract DealList {
  uint public taskCount = 0;
 
  //functions for converting into string 

  function toString(address account) public pure returns(string memory) {
    return toString(abi.encodePacked(account));
}

  function toString(uint256 value) public pure returns(string memory) {
      return toString(abi.encodePacked(value));
  }

  function toString(bytes32 value) public pure returns(string memory) {
      return toString(abi.encodePacked(value));
  }

  function toString(bytes memory data) public pure returns(string memory) {
      bytes memory alphabet = "0123456789abcdef";

      bytes memory str = new bytes(2 + data.length * 2);
      str[0] = "0";
      str[1] = "x";
      for (uint i = 0; i < data.length; i++) {
          str[2+i*2] = alphabet[uint(uint8(data[i] >> 4))];
          str[3+i*2] = alphabet[uint(uint8(data[i] & 0x0f))];
      }
      return string(str);
  }

  struct Task {
    uint id;
    string content;
    bool completed;
  }

  mapping(uint => Task) public tasks;

  event TaskCreated(
    uint id,
    string content,
    bool completed
  );

  event TaskCompleted(
    uint id,
    bool completed
  );

  constructor() public {
    createTask("Welcome to Ayygree");
  }

  function createTask(string memory _content) public {
    taskCount ++;
    address a = msg.sender;
    tasks[taskCount] = Task(taskCount, string(abi.encodePacked(toString(a)," says ",_content)), false);
    emit TaskCreated(taskCount, string(abi.encodePacked(toString(a),_content)), false);
  }

  function toggleCompleted(uint _id) public {
    Task memory _task = tasks[_id];
    _task.completed = !_task.completed;
    tasks[_id] = _task;
    emit TaskCompleted(_id, _task.completed);
  }


}