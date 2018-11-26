pragma solidity ^0.4.20;

contract Dice {

  address owner; //创建者的地址

  modifier ifNull() {
    require(msg.value != 0);
    require(this.balance != 0 && this.balance == msg.value *2);
    _;
  }

  modifier ifOwner() {
    require(msg.sender == owner);
    _;
  }

  event getBalance(string,uint);
  event getResult(string,string,uint,string,string);

  function Dice() {
    owner = msg.sender;
  }

  function MoreThan55()payable {
    uint ramdon = 0;
    ramdon = uint(sha256(now,msg.sender));
    ramdon = uint(sha256(now,msg.sender,ramdon,owner));
    ramdon = ramdon % 100;

    if(ramdon > 55) {
      msg.sender.transfer(msg.value * 2);
      getResult("You Win!","Result:",ramdon,"Guess:","55<");
    } else {
      getResult("You Lost!","Result:",ramdon,"Guess:","55<");
    }
  }

  function LessThan43()payable {
    uint ramdon = 0;
    ramdon = uint(sha256(now,msg.sender));
    ramdon = uint(sha256(now,msg.sender,ramdon,owner));
    ramdon = ramdon % 100;

    if(ramdon < 43) {
      msg.sender.transfer(msg.value * 2);
      getResult("You Win!","Result:",ramdon,"Guess:","<43");
    } else {
      getResult("You Lost!","Result:",ramdon,"Guess:","<43");
    }
  }

  function SelectOne(uint guess)payable {
    uint ramdon = 0;
    ramdon = uint(sha256(now,msg.sender));
    ramdon = uint(sha256(now,msg.sender,ramdon,owner));
    ramdon = ramdon % 100;

    if(ramdon == guess ) {
      msg.sender.transfer(msg.value * 10);
      getResult("You Win!","Result:",ramdon,"Guess:","55<");
    } else {
      getResult("You Lost!","Result:",ramdon,"Guess:","55<");
    }
  }

  function ()payable ifOwner(){
    if(msg.value == 0) {
      owner.sender.transfer(this.balance);
    } else {
      getBalance("充值成功，合约余额为：",this.balance);
    }
  }

  function getBalance() constant returns(uint) {
    return this.balance;
  }

  function getRamdon() constant returns(uint) {
    uint ramdon = 0;
    ramdon = uint(sha256(10,msg.sender));
    return ramdon;
  }
}
