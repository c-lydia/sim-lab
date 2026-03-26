# Sim-Lab

This project gives you a ready-to-use environment for scientific computing using **Octave** and **Python** inside **Jupyter Notebook**. You don’t need to install anything except **Docker** and **Docker Compose**.

---

## What You Can Do

* Run **Octave** code (similar to MATLAB)
* Run **Python** code
* Create and save **Jupyter Notebooks**
* Organize your code in `src/` and your results in `plots/`
* Customize Jupyter settings with `jupyter-settings/`

---

## Step 1: Install Prerequisites

1. Install [Docker](https://www.docker.com/get-started)
2. Install [Docker Compose](https://docs.docker.com/compose/install/)

Make sure you can run:

```bash
docker --version
docker-compose --version
```

---

## Step 2: Get the Project

Clone this project to your computer:

```bash
git clone [<your-repo-url>](https://github.com/c-lydia/sim-lab.git)
cd <your-repo-directory>
```

---

## Step 3: Start the Environment

Run the container:

```bash
docker-compose up --build
```

This will:

* Build the Docker image with Octave, Python, and Jupyter
* Start a container named `sim-lab`
* Map your local folders to the container so your work is saved

---

## Step 4: Open Jupyter Notebook

1. Open your browser
2. Go to: [http://localhost:8888](http://localhost:8888)
3. You’ll see Jupyter Notebook ready to use

**Tip:** You can choose **Python** or **Octave** as the kernel when creating a new notebook.

---

## Step 5: Organize Your Work

The container maps local folders to the container:

| Local Folder        | Inside Container                   | Purpose               |
| ------------------- | ---------------------------------- | --------------------- |
| `notebooks/`        | `/workspace/notebooks`             | Store your notebooks  |
| `src/`              | `/workspace/src`                   | Store code or scripts |
| `plots/`            | `/workspace/plots`                 | Store generated plots |
| `jupyter-settings/` | `/root/.jupyter/lab/user-settings` | Customize Jupyter UI  |

Anything you save here stays even if the container is removed.

---

## Step 6: Running Code

Once inside Jupyter:

1. Create a new notebook
2. Select **Octave** or **Python** kernel
3. Write your code and run cells

For example, an Octave cell:

```octave
x = 0:0.1:10;
y = sin(x);
plot(x, y);
```

---

## Step 7: Add Python Packages

If you need extra Python packages:

```bash
pip3 install <package-name>
```

You can run this in the container terminal:

```bash
docker exec -it sim-lab bash
```

---

## Step 8: Stop the Container

When done:

```bash
docker-compose down
```

Your notebooks and files will remain on your computer.
