pragma solidity >=0.4.24;

contract StringContract {
    
    function getElementAt(string memory s, uint index) public pure returns(byte) {
        // Convert string to bytes
        bytes  memory bytesData = bytes(s);
        // Get the element at the specified index
        byte element = bytesData[index];
        return element;
    }
}