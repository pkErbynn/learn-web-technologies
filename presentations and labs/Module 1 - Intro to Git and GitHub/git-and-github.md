# Introduction to Git and Github
### Presentation 
Slides available [here](https://docs.google.com/presentation/d/13b_j3seC4H-sf7K7gbHMpaCzajgHeIZ8_g6VzDUmn18/edit?usp=sharing).

### Labs - 01
So apparently, these are the couple of questions you could hurdle around with....

1. Create a new folder and initialize a git repository according to the instructions in the slides.
2. Create a connection to our [remote repo](https://github.com/ralphmensah/learnweb) on your local machine and verify the connection.
```$xslt
$ git remote add origin <github-repo-url>
$ git remote -v
```
3. Create a branch within your name and checkout to it.
```
$ git branch <branch-name>
$ git checkout <branch-name>
```
or with shortcut
``$ git checkout -b <branch-name>
``
4. Create two new files, file1 and file2. Add some text to each of them. Stage the two files. Use 'git status' to investigate the status of the two files. [ Hint: Slide #11 ]
5. Commit the files. Use 'git status' to investigate the status of your repository.
6. Let's add some more text to one of the files. Check the status to know which file changed. Stage the files with 'git add .' .  Now check the status again to verify they're staged(the files should turn green)  and then commit them.
7. Push your branch to the remote repository on GitHub.
8. Add a paragraph to file2. Check status. Stage and commit with the message, "add paragraph".
9. Check your commit logs with 'git log' and with 'git log --oneline'. Analyze the difference b/n the two.
10. Add another line of text to file2. Check status. Stage and commit with the message, "add another line".
11. Finally, revert file2 to the previous version. One with the commit message, "add paragraph". 🙂


And please, kindly don't hesitate to hit me up for any question, concern, or clarification on the slides or on the deliverables. 

Thanks. Cheers.