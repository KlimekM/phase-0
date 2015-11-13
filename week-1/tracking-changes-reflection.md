# 1.5 Tracking Changes Reflection

**How does tracking and adding changes make developers' lives easier?**
Tracking and adding changes makes developers' lives easier, because it allows them to access all the changes that they have previously made and see what they did in a given moment and why. It also makes it easier to track any bugs since they can see each change and figure out how it might have effected the code.

**What is a commit?**
A commit is essentially a "save" of your work to git.

**What are the best practices for commit messages?**
The best practices for commit messages are to keep the header around 50 characters. The body, below the header, should be the space in which you describe your changes and what they do. When describing any change it is recommended to do so in the present tense (i.e Update instead of Updated).

**What does the HEAD^ argument mean?**
The HEAD argument allows you to change files that you have previously committed. 

**What are the 3 stages of a git change and how do you move a file from one stage to the other?**
The three stages of a git change are: Modified, Added, and Committed.
A file is modified when you add any sort of text or change to it and save the document. A file is added when you run the git add command on it and prepare the file to be committed. The file is finally saved or committed when you run the git commit -m "" command on it and create a save point for your work.

**Write a handy cheatsheet of the commands you need to commit your changes?**
	* git status - checks the status of your changes.
	* git add - adds all of your changes and prepares them to create a save point
	* git commit -m "Insert Commit Message" - tells git that you have made changes and creates a save point.

**What is a pull request and how do you create and merge one?**
A pull request is a way to make sure that you are working with the most up-to-date original project on your local repository and that the changes that you made are added or pulled back into the original project. You create a pull request by using the command: git push origin featured-branch-name, then accessing GitHub, creating the pull request, and finally merging the changes.

**Why are pull requests preferred when working with teams?**
Pull requests are preferred when working with teams, because everyone is able to work on the project from the confines of their own computer. They are then able to update or push the changes that they have and merge them back to the original document. This is ideal when a project has numerous contributors that need to work on different aspects of the project at the same time.

This challenge was difficult for me and I had to spend a decent amount of time figuring out how to commit a directory. I kept trying to do so without moving to the directory directly above it first. On the plus side I did get a lot of experience adding and committing changes.