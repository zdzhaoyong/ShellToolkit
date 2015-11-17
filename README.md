This package is aim to help Linux/UNIX users to collect their own bash shells and got better experience. You can doing a lot of things easily by this tool, such as ‘cd’ to a folder faster, automatically config your Makefile environment, help you remember program history thing and complete your parameters later, and so on. Enjoy it!

You can download this software at: https://github.com/zdzhaoyong/ShellToolkit

##1.Install (tested in ubuntu 12.04,13.04 and mint 17)
Fetch the package from github:

 `git clone https://github.com/zdzhaoyong/ShellToolkit`

Cd to the folder and you can easily intall the package by the following command:

`cd ShellToolkit`

`sudo bash ./function install`

##2.Usage

Once the package is installed successfully, you can use it like this:

`Function [Function_Name] [Function_Paraments]`

If you got any question on the usage, you can also use “-help ” to show the parameter lists.
###List all function
You can list all available functions and their introductions with `Function -s`.

### Demo 1
Use the little diary : `Function diary "This is a nice tool~"` and later you can read the diary:

`Function diary`

In fact, the package has alias this command to Diary, so you can just use `Diary` instead of `Function diary`.

###Demo 2 (cd to the folder you want immediately!)
First, cd to the folder you want to get immediately later:

`cd /data/zhaoyong/Linux/Program/Apps/imu_related_docs`

By using the function "Here_Name", you can name this folder any alias you want, here we use "imu":

`Function Here_Name imu`

and later you can cd to the folder just input

`imu`

### Demo 3(using the function `AddShellSupport`)
* Read the introduction 

 `Function AddShellSupport -i`

* cd to the program folder

 `cd /data/zhaoyong/Linux/Program/Apps/imu_related_docs/AHRS_mini/AHRS_glviewer`

* Add shell support for a program: `AddShellSupport [Program_Name] [Install_Path]`

 `Function AddShellSupport interface`

* Use the program with shell supported

  `interface [-history] [-help] [paraments]`

You can use it without assigning the Install_Path and it will install to the system.
What should be point out is that the parament [Program_Name] must be the program name which you want to launch!

If you got any question on the usage ,you can also use "-help " to show the parament lists

##3.Add your own function!
You can also add your own function by using,

`Function -add [Function_Name]`

The tool has prepared a demo and you can just add things you want, all the functions can be also used without the this tool, you can just find your function file named "Function_Name.func" and copy it to anywhere and use it alone.

##4. Contact
If you have any problem, or you have some suggestions for this code, please contact Yong Zhao by zd5945@126.com, thank you very much!
