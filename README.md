# Code challenge

## Description

As a code challenge, let's consider the following **RoR** apps:

1. The first one (**app1**) is a basic blogging application that lets a user *register* and then write comments. Each user can *write*, *read*, *update*, *list* and *destroy* **its own comments** (including texts, images or whatever);
2. **app1**: the user is able to *filter* comments by their `description`;
3. **app1**: exposes the user authentication via an `API`;
4. The second app (**app2**) shares the login w/ the first app, via the aforementioned `API` (that is, an user A registered to **app1** can also log into **app2**; user data remains in **app1**’s DB).
5. **app2** just shows comments by any registered user to logged in users.

## Instruction for the candidate

* We’d like you to provide an implementation of the apps described above, the code should be production-ready. 
* Automated testing for the implemented parts is a **strict requirement**.
* When done, please create a branch inside the repository (you should have the permission to do so) and make a MR (Merge request/Pull request) to master branch setting as target project your project (the forked one).
* Complete the MR with a `RUN_INSTRUCTIONS.md` file that contains **all** the required steps to run the application/s.
* The MR will be subject to a code review process which will require your interaction.

Fell free to use whatever gem you want, no need to reinvent the wheel 🙂

If something is not clear, please ask.