# Using ClickUp
As the electrical team we practice a design paradigm known as Agile. To manage our development process we use ClickUp. Everything that is being worked on should be under a clickup task that way we can track progress and plan the semester around everyone's engineering capabilities. This might seem like a lot of extra work in addition to engineering systems for the car but we have tried to make it as simple as possible.

## Creating a Task
Most of the times tasks should have been created by the electrical PM but in the case that you come across something that deserves to be its own task these are the steps for making a task.
1. Check to see if a task exists already or if the issue is closely related with a task that already exists. The way to do this is go to ClickUp, go to the relevent year, go to the relevent semester and click on the folder. Go to the top of the page and click on List, scroll through the list look through all the tasks.
2. If you still need to create a task decide whether it is important enough to be put in the backlog or in the current sprint.
3. Create the task in the open status or blocked status make sure to give the task a meaningful name and an elaborate description so that anyone can pick up the task and know what to do ask yourself these questions: 1. Where is the work needed 2. What should count as this task being completed. and 3. Who should work on this task.
4. Make sure to assign people and tag the task accordingly.

## GitHub Branches with clickup
When doing development always make sure you are on a branch associated with your task. This will allow ClickUp to properly move the task from open to in progress to closed. It will also give the branch a descriptive name that matches it to the task.
To create a branch do the following:
1. Go to your clickup task and open it.
2. At the top right you will see the GitHub symbol click on it this will open up the GitHub modal.
3. In the pannel on the right look to see if there are already branches for that task.
4. If there are no branches hit the create branch button in the bottom left. 
5. Select the correct repo for the task.
6. Select the appropriate branch as your source often times this will be master.
7. Hit create new branch.  
**Now ClickUp will automatically create the branch. I suggest copying the branch name as it is often long.**  
To get the branch on your computer:
1. Go to where you have the repo on your computer and open git bash.
2. Type `git fetch` to update your local copy with one at the origin.
3. Type `git checkout branchName` where you paste or type the branch name you would like to check out.
4. Start developing! make sure to commit often and leave meaingful commit messges.

# STATUSES

## ACTIVE STATUSES
*   **OPEN -** Not being worked on
*   **BLOCKED -** Not being worked on and is blocked by another task (other task must be completed)
*   **IN PROGRESS -** In development, design, or coding
*   **REVIEW -** Waiting for system and group review, make sure no issues with PCB and with other systems

## DONE STATUSES
*   **READY -** Done and waiting for parts to be purchase and delivered
*   **TESTING -** Ready to be put together, soldered, built and be test

## CLOSED STATUS
*   **CLOSED -** Either finished or split into other tasks

# LISTS

Lists are the sprints, backlog, bugs, etc. which list the task that must be completed.

**Colors:**

**Blue -** Backlog and bugs combined.

**Yellow -** Previous Sprints

**Green -** Current Sprint

  

# SPRINTS

## SPRINTS WORKLOAD

Sprints will hopefully be setup to achieve all tasks.

Any tasks that aren't completed within a task can be carried over or split into smaller

tasks.

## SPRINTS DURATION

Sprints will last for 2 weeks.

## SUMMER PLANS

Summer is a rough test drive of click up.

Duration will be longer and prone to change.