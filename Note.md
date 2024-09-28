# Note

- This is a fork of the original [kickstart.nvim](https://github.com/original-username/kickstart.nvim).

## Info

- A remote named `upstream` points to the original repository.

## Workflow

### Keeping Your Fork Updated

Every now and then, and as needed, perform the following steps to get the latest changes from the original repository:

1. **Fetch Updates from the Original Repository**:

    ```sh
    git fetch upstream
    ```

2. **Update Your `master` Branch with the Latest Changes**:

    ```sh
    git checkout master
    git merge upstream/master
    ```

### Making Changes

1. **Create a New Branch for Your Changes**:

    ```sh
    git checkout -b my-feature-branch
    ```

2. **Make Your Changes**:
    - Edit files, add new features, fix bugs, etc.

3. **Commit Your Changes**:

    ```sh
    git add .
    git commit -m "Describe your changes"
    ```

4. **Push Your Changes to Your Fork**:

    ```sh
    git push origin my-feature-branch
    ```

### Keeping Your Feature Branch Up to Date

Periodically, you should update your feature branch with the latest changes from the `upstream` repository:

1. **Fetch Updates from the Original Repository**:

    ```sh
    git fetch upstream
    ```

2. **Update Your `master` Branch with the Latest Changes**:

    ```sh
    git checkout master
    git merge upstream/master
    ```

3. **Rebase Your Feature Branch onto the Updated `master`**:

    ```sh
    git checkout my-feature-branch
    git rebase master
    ```

4. **Resolve Any Conflicts** (if necessary):
    - If there are conflicts during the rebase, resolve them and continue:

    ```sh
    git add .
    git rebase --continue
    ```

5. **Push the Updated Feature Branch**:

    ```sh
    git push origin my-feature-branch --force
    ```

### Submitting Your Changes

1. **Create a Pull Request**:
    - Go to your fork on GitHub and create a pull request from your feature branch to the original repository's `master` branch.

By following this process, you keep your fork's `master` branch in sync with the original repository and make your changes in separate branches. This helps in managing updates and reduces the risk of conflicts.
