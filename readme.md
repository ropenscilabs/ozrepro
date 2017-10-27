# simpler version control from R

## What does stow do?

Stow allows beginners with minimal programming experience to use version control. Version control is a framework that saves previous versions of your work as you develop your projects (Like 'Track changes' in MS Word). You can then easily look at previous versions, merge changes, and collaborate with others, but without the headache! 

Stow uses git under the hood. Git is a popular version control system used by projects such as Android and ggplot2. Don't worry, you don't need to know any git to use stow!


## Get started!

Four easy steps to success!

1. Start a new repository (or download an existing one). 
What is a repository, you ask? A repository is a folder in which you store your project. The folder saves previous versions of your project and allows you to easily access them. 
  For example:

``` {r}
#Create a brand new repository in a new or existing local project. Defaults to your current working directory
create_repo("~/Desktop/myproject")

#Download an existing repository from online
download_repo("url")
```
  [insert picture depicting a conceptual repository here]
  
2. Make some changes: work on your project as normal. Don't forget to save your changes. 
  [insert picture/code here]


3. Review and visualise the changes you have made to your project.
  [insert picture here]

``` 
changes()
```

4. Once you are happy with your changes, record them in your repository. Your repository records a snapshot of your current project, adding it to the list of previous versions.   
  [insert picture here]

```{r}
# automatically performs all of the steps to record your changes in your repository
record()

# two-step version of the same process that gives you a bit more control
stage()
commit()

```


## Fixing stuff, moving back, recording stuff

5. Look at your history of records

```{r}
# print a history of your past records in your console:
print(gethistory())

# ...or depict it in an [interactive?] plot!
plot(gethistory())

```


6.  Fixing stuff!

```{r}   
# Made a mistake? Return your project to your last record:
scrub()

# ...or to another previous record of your choice:
retrieve(recordid)

# take a peek into any older record 
go_to(recordid)

```

7. Saving stuff online
When you work on your computer, you are usually working in what is called the 'local' environment. The local environment encompasses anything housed on your computer's hard drive. If you want to collaborate or make your work available to others, it's a good idea to put it 'in the cloud,' in other words, in a 'remote' repository. These are housed on a server somewhere else in the world, and can be accessed online. This can also provide additional safety in case you lose your work in your local environment. 
 
```{r}
# Synchronize your work with a new or existing remote repository
sync("url")
```
   


# An example workflow

```{r}

```


# Installation

This package depends on the [githug](https://github.com/jennybc/githug) package. ou can install githug from github with:

```
# install.packages("devtools")
devtools::install_github("jennybc/githug")
```


