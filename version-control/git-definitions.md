# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

Version control is a process that keeps track of different versions of a project as you work on it. It helps keep the master branch working at all times, so that you don't make your product unusable by working on it. It also allows for easier collaboration between several people working on different aspects of the same project. And it gives you an option to "undo" bad changes you've made. 


* What is a branch and why would you use one?

A branch is a copy of the codebase. You make a new branch to make changes to the code, test them, and then merge them back into the master branch (the main branch). You do that so that the master branch has a functional product at all times.


* What is a commit? What makes a good commit message?

A commit is like a save point, a point you can go back to if something goes wrong. Looking at commit messages also gives you an idea of the process the programmers went through to arrive at the current state of the code.
A good commit message is specific and pretty succinct. It completes the sentence "This commit will..." (e.g. add submit button to form.)


* What is a merge conflict?

A merge conflict occurs if two branches that are being merged were changed in contradictory ways. For instance, if one person made changes to a section of the code, but another person deleted the same section. A merge conflict will then have to be resolved manually, Git won't know how to merge the two branches automaticaly.