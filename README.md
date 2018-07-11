# Code challenge

## Description

As a code challenge, let's consider the following **RoR** apps:

1. The first one (**app1**) lets a user *register* and then post comments. Each user can *write*, *read*, *update*, *list* and *destroy* **its own posts** (including texts, images or whatever);
2. **app1**: the user is able to *filter* posts by their `description`;
3. **app1**: exposes the user authentication via an `API`;
4. The second app (**app2**) shares the login w/ the first app, via the aforementioned `API` (that is, an user A registered to **app1** can also log into **app2**; user data remains in **app1**’s DB).
5. **app2** just shows posts by any registered user to logged in users.

## Instruction for the candidate

* We’d like you to provide a small implementation of one or more parts (no matter how small) of the apps described above, the choice is yours, the better you can in your available time. 
* Automated testing for the implemented parts is a **strict requirement**.
* When done, please create a branch inside the repository (you should have the permission to do so) and make a MR (Merge request/Pull request) to master with the install and run instructions.

Fell free to use whatever gem you want, no need to reinvent the wheel 🙂

If something is not clear, please ask.