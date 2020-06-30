# Software Development Guide
**Please Read the ClickUp guide first as this document will heavily rely on knowledge shared there.**
## Repositories
Organization is key to any team's success and throughout this documentation we try to make that clear. Towards that point repositories often do not have to be created but when they do here is how to do it:
### Naming:
For car firmware the naming convention is carName-PLATFORM-systemName (ex. cielo-STM32F0-telemetry). Cars will often reuse improved versions of previous firmware; however, please make a new repository when working for a new car that way we can easily distigush what is used where.  
1. Make sure you are a member of the [Solar-Gators GitHub organization](https://github.com/Solar-Gators).
2. Go to the organization homepage.
3. Towards the left of the screeen there is a green button with the text new, press that button.
4. This will take you to the create a new repository page fill out the information requested following the above conventions.
5. Make sure to add this new repo to clickup. There is a guide [here](https://docs.clickup.com/en/articles/856285-github).  
**Other Notes**
Make sure that a proper .gitignore file is made for any new repository.

## Branching
See the how to branch with ClickUp in the ClickUp documentation.

## Peer Reviews
Before anything is merged onto the main branch we need to make sure that it is throroghly tested testing should be done on your branch and when the code is ready it should be moved onto the main branch. Still we need to peer review eachothers code to make sure the the style is up to standard and to make sure that we dont have any unneccessary code. So create a pull request either through CllickUp or on GitHub and make sure your task is updated accordingly.

## Continuous integration
TODO