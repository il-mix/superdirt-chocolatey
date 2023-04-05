# superdirt-chocolatey

SuperDirt Chocolatey package's source files.

## Content

The package contains:

- superdirt: the main package sources' folder


## Prerequisites

### Chocolatey package manager

Chocolatey is needed to generate and test the package locally. To install it (if not already installed), start Windows PowerShell as administrator and run the command

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

## Usage

### Package generation

Once the sources are updated, navigate to superdirt folder and run

```
choco pack
```

Chocolatey will generate the file `superdirt\superdirt.<version>.nupkg`.

Test the package locally. From the command line shell, navigate to the directory where the *.nupkg file is located, then type:

```
choco install superdirt --source ".;http://chocolatey.org/api/v2/" -y
```

Check that the commands executes without errors, and SuperDirt gets instaled on your system.

Try to unistall it, too

```
choco uninstall superdirt
```

If everything is ok, request to publish it on Chocolatey website.
