# Demo
这是一个简单的DApp应用，主要功能如下：
* 使用区块链记录个人信息，包括：姓名（fName）和 年龄（age）
* 使用**web3.js** 与区块链进行交互

<p>
文档结构如下：

> Demo
>> index.html </br>
>> main.css </br>
>> InfoContract.sol </br>

</p>

需要用到的工具
* Ganache
* Meatmask
* Remix
* NodeJS
* npm


**DApp** 可以直接使用区块链作为服务器，跟链上的智能合约进行交互；下面是一个简单的Demo，简单包含了 Web3.js + Solidity (智能合约)  的使用
可以尝试体验一番。

</br>

1、首先创建一个项目
```
mkdir Demo
```
2、安装web3到项目中
```
npm install --save web3@0.20.0  
```

3、创建描述项目的文件（可选）
```
npm init
```

4、运行Ganache

5、使用[Remix](http://remix.ethereum.org)编写并且部署智能合约，我们创建一个合约文件 **InfoContract.sol**。通过这个合约，我们可以保存上述的个人信息，包含两个方法，get && set 方法。

6、编写**Index.html**,使用web3 连接我们私有链，并且调用我们部署的智能合约**InfoContract**

7、使用浏览器打开**index.html**，输入信息，点击按钮后刷新网页，将会显示你刚刚输入的信息

如果有疑问可以联系


