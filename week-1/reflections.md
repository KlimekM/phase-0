# 1.1 Think About Time Reflection

In assignment 1.1 I learned about a number of time management and productivity ideas. The one’s that really interested me were the power of meditation, the Fogg method, and the Pomodoro technique. The Fogg technique was by far my favorite and it is based on the idea that we want to build small habits by doing a repetitive task over and over until it becomes a habit as opposed to approaching a big change and thinking that we will have no problem making it happen. The thing that stuck with me from the technique is that we need a trigger to start behaving in a particular way. The example of doing push-ups after every time you use the restroom is a great visual for making something that you do numerous times a day the trigger to induce a behavior that you want to turn into a habit.

“Time boxing” is a technique in which you set an amount of time for the task at hand and after the set time is up you reflect on what you accomplished or take a break from the task. We can use “time boxing” in phase 0 during our individual challenges in order to take our mind away from the challenge after a set amount of time or even when we are pair programming so that we can reflect with the peer on what we accomplish in a given pair programming session.

I do not have a specific method of currently managing my time. I use the Google Calendar app and the Google Keep app on my phone to make lists, track appointments, and prioritize what needs to be done in a given day or time period. I feel that my current strategy is working, because it helps me plan my tasks and reminds me when there is an important deadline approaching.

After learning about all of these time management techniques I definitely plan to incorporate the Fogg technique in my daily life. One of my biggest problems is putting my clothes away when I get home from work or a night out. I tend to just toss them on the ground and deal with them when the pile becomes unbearable. I plan to use the Fogg technique to counter that and use myself undressing as the trigger. I also plan to turn off my notifications on my phone and get rid of any distractions around me as described in the power of meditation.

My overall plan for Phase 0 time management is to wake up a bit earlier than I have been and do whatever I can prior to heading in to work and do the majority of my phase 0 work when I get home. I would like to get as much work in during the week as possible so that I am not overly stressed or feel the pressure to get things done last minute on a weekend. I do hope to use the Pomodoro technique from time to time to keep me on track and provide me with 5 minutes of time to step away from a difficult challenge.

# 1.2 The Command Line Reflection

A shell is a way to access your computer’s operating system and command line prompts. “Bash” is the Unix version of a shell which runs on Linux and Apple operating systems.

The most challenging thing for me going through the Command Line Crash Course was by far the cp and mv prompts. I had a really difficult time understanding how to copy or move a file into another directory. After playing around with both of the commands I did get them to work, but I am still not super confident in executing them again. Aside from those two I was able to successfully use all of the commands. The commands that I feel were the most important are the cd and ../ commands which allows you to change directories and navigate through the shell in order to find certain files. The ls command is also very important since it can show you what is in a given directory.

pwd – print working directory
ls – list directory
mv – move a file or directory
cd – change directory
../ - move up a directory
touch – not positive, but create a file?
mkdir – make a directory
less – page through a file
rmdir – remove directory
rm – remove a file
help – used to find the description of a command and its’ function.

# 1.4 Forking and Cloning Reflection

If a new person wanted to create a new repo, fork, and clone a repo they should follow these instructions:

**To create a new repo:**
-	Log in to your GitHub account.
-	Navigate to the top right corner of the page where you will see a plus sign.
-	Click the plus sign which will show new repository and new organization.
-	Click new repository.
-	Enter your repository name, select whether you want to make it public or private, and determine if you want to add a license.
-	Click the big green button labeled “Create repository”.
*You have successfully created a new repository!*

**To fork a repository:**
-	When on a given repository, navigate to the right side of the webpage. 
-	Click the “Fork” button.
-	Ensure that the repository and its’ original name is behind your GitHub user folder.
*You have successfully forked a repository!*

**To clone a repository:**
-	Open your command terminal.
-	Access a repository in GitHub and navigate to the right side of the screen.
-	Click the “copy to clipboard” button under the “clone URL”
-	In your command terminal make sure you are in the proper directory that you want to clone the repository to.
-	Type: git clone copiedURL. Press enter.
*You have successfully cloned a repository!*

I had some silly struggles while cloning the directory. Since I am on a Windows PC I logged into the virtual linux machine and attempted to clone the repository into that which clearly did not work. It took a little more time to figure out what was going on, but in the end I did some solid research to help me properly clone the repository to my local directory.

I also struggled removing the cloned repository, because of a couple of hidden files and GitHub automatically attaching a hidden .git tag to the repository. This allowed me to find out the ls –a command and how to delete the tag, before reinstalling the repository to my local environment.
