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
create_repo("~/Desktop")

#Download an existing repository from online
download_repo("url")
```
  [insert picture depicting a conceptual repository here]
  
2. Make some changes: work on your project as normal. Don't forget to save your changes. 
  [insert picture/code here]


3. Use stow to review and visualise the changes you have made to your project.
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


## More stuff! (Fixing stuff, moving back, saving stuff)

5. Look at your history of records


6.  Fixing stuff!
```{r}   
# Made a mistake? Return your project to your last record:
scrub()

# ...or to another previous record of your choice:
retrieve(recordid)

# take a peek into any older record 
go_to(recordid)

```

7. Saving stuff online (non-local!!)
   - Must define local vs remote environments 
   - Push/Sync functions
   


# An example workflow




# Installation

This package depends on the [githug](https://github.com/jennybc/githug) package. ou can install githug from github with:

```
# install.packages("devtools")
devtools::install_github("jennybc/githug")
```



