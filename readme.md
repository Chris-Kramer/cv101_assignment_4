# Assignment 4 - Classification benchmarks
**Christoffer Kramer**  
**21-03-2021**  
Classifier benchmarks using Logistic Regression and a Neural Network  
This assignment builds on the work we did in class and from session 6.  
You'll use your new knowledge and skills to create two commandline tools which can be used to perform a simple classification task on the MNIST data and print the output to the terminal. These scripts can then be used to provide easy-to-understand benchmark scores for evaluating these models.  
You should create two Python scripts. One takes the full MNIST data set, trains a Logistic Regression Classifier, and prints the evaluation metrics to the terminal. The other should take the full MNIST dataset, train a neural network classifier, and print the evaluation metrics to the terminal.  

## Methods  
These scripts a logistic regression and a relatively simple NumPy feedforward neural network, which was created by my instructor, Ross, for this class.  

## How to run  
This should work on both Linux, Mac, and Windows. However, If you are running on a local windows machine, you should run it from a bash emulator such as git bash.  
**Step 1: Clone repo**  
- open terminal  
- Navigate to destination for repo  
- type the following command  
```console
git clone https://github.com/Chris-Kramer/cv101_assignment_4.git
```  
**Step 2: Navigate to the folder "cv101_assignment_4"**  
```console
cd cv101_assignment_4
```  
**Step 3: Run bash scripts**  
- Run the bash script run_nn-mnist.sh or run_lr-mnist.sh to set up environment and run the classifiers.  

_Neural network:_
```console
bash run_nn-mnist.sh
```    
_Logistic regression classifier:_  
```console
bash run_lr-mnist.sh
```
NOTE: The neural network will take a long time to run, especially if you use 2 or three hidden layers. If you just need to test if the script works I recommend using few epochs (around 100) and only have 1 hidden layer with few nodes (between 10 and 16).  

### Running on windows without a bash emulator  
If you're running on a local windows machine, and don't have a bash emulator, you have to set up a virtual environment, activate it, install dependencies (requirements.txt), and then run the python scripts manually from the src folder.  

## Output
The output is printed directly to the terminal with both scripts.  

## Parameters
Both scripts take parameters, they have already been supplied with default values, but feel free to change them.  

### run_lr-mnist.sh / lr-mnist.py
- `--test_size` The size of the test data as a float percentage. The training size will be adjusted automatically.  
    - DEFAULT = 0.2  

Example:  

_With bash script:_  
```console
bash run_lr-mnist.sh --test_size 0.25
```  
_without bash script:_  
```console
python lr-mnist.py --test_size 0.25
```  
### run_nn-mnist.sh / nn-mnist.py
- `--test_size` The size of the test data as a float percentage. Training size will be adjusted automatically.  
    - DEFAULT = 0.2  
- `--epochs` The number of epochs that should run.  
    - DEFAULT = 500  
- `--hidden_layers` Hidden layers as a list of ints. The first value represents nodes in the first hidden layer, the second value represents nodes in the second layer, etc. There can be between 1 and 3 layers.  
    - DEFAULT = 32 16  
    
Example:  
_With bash script:_  
```console
bash run_nn-mnist.sh --test_size 0.25 --epochs 100 --hidden_layers 10 5
```
_Without bash script:_  
```console
python run_nn-mnist.py --test_size 0.25 --epochs 100 --hidden_layers 10 5
```