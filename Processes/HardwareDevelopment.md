# Hardware Development Guide
**Please Read the ClickUp guide first as this document will heavily rely on knowledge shared there.**
## Repositories
Altium schematics, like software, are stored in the organization's GitHub heres how to do that.
### Naming:
For PCBs the naming convention is carName-PLATFORM-systemName-PCB (ex. cielo-STM32F0-telemetry). Cars will often reuse improved versions of previous PCBs; however, please make a new repository when working for a new car that way we can easily distigush what is used where.  
**To create a new project**
1. Make sure you are a member of the [Solar-Gators GitHub organization](https://github.com/Solar-Gators).
2. Go to the organization homepage.
3. Towards the left of the screeen there is a green button with the text new, press that button.
4. This will take you to the create a new repository page fill out the information requested following the above conventions.
5. Make sure to add this new repo to clickup. There is a guide [here](https://docs.clickup.com/en/articles/856285-github).  
**To Migrate an existing project**
1. Follow the above steps to create a new repository and copy the url.
2. On your local computer go to the directory where the PCB is and open git bash.
3. Run `git clone your-repo-url .`.
4. Make sure to add the altium .gitignore if it has not been added create the .gitignore and run `git commit .gitignore -m "Added git ignore"`
5. Once the git ignore is added it is time to add all the files to the repository to do this run `git add .` to stage all the files followed by `git commit -a -m "Adding project files."` to commit all the files to the history.
6. Now after you have made those changes on your local branch we need to push them to the remote repository. To do this simply run `git push`
7. Now you are ready to develop
**Other Notes**
Make sure that a proper .gitignore file is made for any new repository.
When PCBs are manufactured make sure to tag the commit that was used!

## Branching
See the how to branch with ClickUp in the ClickUp documentation.

## Continuous integration
TODO