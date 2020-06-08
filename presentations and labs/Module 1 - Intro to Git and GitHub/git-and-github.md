# Introduction to Git and Github
## Presentation
* Core topics includes
    * What and why version controls
    * Git workflow
    * Basic useful git commands
    * Undoing/reverting
    * Branching and merging
    * Github exploration
Slides available [here](https://docs.google.com/presentation/d/13b_j3seC4H-sf7K7gbHMpaCzajgHeIZ8_g6VzDUmn18/edit?usp=sharing).

## Labs - 01
So apparently, these are the couple of questions you could hurdle around with....

* Create a new folder and initialize a git repository according to the instructions in the slides.
* Create a connection to our [remote repo](https://github.com/ralphmensah/learnweb) on your local machine and verify the connection.
```$xslt
$ git remote add origin <github-repo-url>
$ git remote -v
```
* Create a branch within your name and checkout to it.
```
$ git branch <branch-name>
$ git checkout <branch-name>
```
or with shortcut
``$ git checkout -b <branch-name>
``
* Create two new files, *file1* and *file2*. Add some text to each of them. Stage the two files with ``git add .`` . Use ```git status``` to investigate the status of the two files.

* Commit the files. Use ```git status``` to investigate the status of your repository.

* Let's add some more text to one of the files. Check the status to know which file changed and stage them.  Now check the status again to verify theythe files with 'git add .''re staged(the files should turn green)  and then commit them.

* Push your branch to the remote repository on GitHub.

*  Add a paragraph to file2. Check status. Stage and commit with the message, "add paragraph".

* Check your commit logs with ``git log`` or ``git log --oneline``. Analyze the difference b/n the two.

* Add another line of text to file2. Check status. Stage and commit with the message, "add another line".

* Finally, revert file2 to the previous version. One with the commit message, "add paragraph". 🙂

<br>
Please, kindly don't hesitate to hit me up for any question, concern, or clarification on the slides or on the deliverables. 

<br>
Thanks. 

Cheers.