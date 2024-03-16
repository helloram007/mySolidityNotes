// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

//Insert, update, read from array of structs
contract TodoList {
    struct Todo{
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) external {
        todos.push(Todo({
            text: _text,
            completed: false
        }));
    }
    function updateText(uint _index, string calldata _text) external {
        // 35138 gas
        todos[_index].text = _text;
        
        // 35138 gas
        //todos[_index].text = _text;
        //todos[_index].text = _text;
        //todos[_index].text = _text;
        //todos[_index].text = _text;

        //34578 gas
        //This says gas, because you are calling array only once and 
        //and updating data 4 times, but the above method calls array 4 times and updates
        //hence the gas cost is more
        //Todo storage todo = todos[_index];
        //todo.text = _text;
        //todo.text = _text;
        //todo.text = _text;
        //todo.text = _text;

    }
    function get(uint _index) external view returns (string memory, bool) {
        Todo memory todo = todos[_index];
        // memory - 29397
        // calldata - 29480
        //memory is more expeensive than calldata.
        return (todo.text, todo.completed);
    }

    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}