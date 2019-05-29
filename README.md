# getting_started-ease_into_crypto

This getting started is intended to simplify how the Jupyter notebook lessons in the "Ease Me Into Cryptography Walkthroughs" are spun up and shared.

The end outcome is a docker container with a Jupyter notebook server and all the content of the notebooks maintained at https://github.com/mgardi/Ease_Me_Into_Cryptography_Walkthroughs

To successfully complete this process you will first need to install Docker on your local machine:

## 1. Install Docker

Steps to install Docker

1. Create a DockerId at https://hub.docker.com/ - this will require you to login to your email and confirm your identity.
2. Download the Docker desktop for your machine at https://hub.docker.com/?overlay=onboarding
3. Run through steps 1 through 4 of https://hub.docker.com/?overlay=onboarding to make sure install worked successfully

Docker is a collection of software offerings that allow you to develop and deliver software inside standardized packages called containers. Containers are isolated from each other and bundle their own software, libraries and configuration files, they can also communicate with each other through well-defined channels.

This allows us to setup a Dockerfile on your local computer that creates a container with all the libraries and configuration files required to run jupyter notebooks without you downloading anything else.

## Step 2: Option 1 (recommended) Pull docker image from docker hub

1. Open a command prompt (Windows) or terminal (Mac) application.

    * You should be able to find command prompt or terminal application by searching in your start menu search on Windows or by opening a spotlight search on a mac by hitting ⌘ + spacebar or clicking on the magnifying glass at the top right of your screen

2. Run a docker container based on mgardi/easemeintocrypto. Type the following into your command prompt or terminal
    ```
    docker run -p 4000:8888 mgardi/easemeintocrypto
    ```
3. Visit http://localhost:4000/ on your browser

    *this container is using the jupyter/minimal-notebook which sets up the jupyter server to listen at port 8888 within the container. We are binding binding port 8888 inside the container and exposing it at port 4000*

4. Use the token printed on start up (should be in string that ends with :8888/?token=e4ba09c2eca9a0ae5febf69c5f64e5e24b090aea667ee8e8) to login. Copy and paste the token after the = sign for login.

## Step 2: Option 2. Create a Dockerfile

A Dockerfile is used to spin up a container with all the required libraries and configuration already set up. We will create a dockerfile that setups up a jupyter notebook server and copies all the required notebooks into the running container.

Let's start by creating a file to save our project in
1. Open a command prompt (Windows) or terminal (Mac) application.

    * You should be able to find search application by searching in your start menu search on Windows or by opening a spotlight search on a mac by hitting ⌘ + spacebar or clicking on the magnifying glass at the top of your screen

2. Check where in the file directory you are by typing or copy pasting

    ```
    cd
    ```
    on Windows or

    ```
    pwd
    ```
    on Mac

    Into the command prompt or terminal window. This is where we will create and save our project folder and dockerfile

3. Optional: You should be in your home directory when the terminal window opens but you can always used. Type:
    ```
    cd C:\<specify-your-path>
    ```
    on Windows or

    ```
    cd /<specify-your-path>
    ```
    on mac

    To specify the path where you would like to save a file (replace <specify-your-path> with wherever you want to save)

4. Create a project folder by typing:
    ```
    mkdir easemeintocrypto
    ```
5. Change directories into folder we just created by typing:
    ```
    cd easemeintocrypto
    ```
6. Create the Dockerfile
    ```
    edit Dockerfile
    ```
    on Windows or

    ```
    nano Dockerfile
    ```
    on Mac

7. Build a docker image by running
    ```
    docker build --tag=easemeintocrypto .
    ```

8. Run the docker container
    ```
    docker run -p 4000:8888 easemeintocrypto
    ```
    *this container is using the jupyter/minimal-notebook which sets up the jupyter server to listen at port 8888 within the container. We are binding binding port 8888 inside the container and exposing it at port 4000*

9. Visit http://localhost:4000/ on your browser

10. Use the token printed on start up (should be in string that ends with :8888/?token=e4ba09c2eca9a0ae5febf69c5fyoursisdifferent) to login. Copy and paste the token after the = sign for login.

Key Docker commands
