# Contributing
Thank you for your interest in contributing to our project - but to keep everything organized, we need some guidelines and standards that apply to the project.
We tried to keep those guidelines as short as possible and make it easy for new contributors to get started. Please read this guidelines carefully, to keep up with our issue, branching and pull request standards.


## Code of conduct
Please refer to our `code of conduct` before you contribute anything as it sets 
some behavior rules to make a pleasant together. In the moment you contribute anything, you must follow this code of conduct.

## Dealing with questions, bugs and feature requests
If you have any questions, bugs or feature requests, feel free to open an issue. 
Note that you must use one of our issue templates that your issue is valid - valid issues will always retrieve the attention that is required to solve them.
Before you create an issue, search for your subject and be sure to not create a duplicate. Always provide a clear and concise explanation of your matter of concern.

### Security issues
If you find some really serious security issue, please don't create a GitHub issue for it in the first line - it could put all bots based on this repository onto risk.
Send a mail to [this email][reportmail] instead, to keep it structured you can simply copy our bug template into your mail.

## Contributing code
Code contributions are great because they allow anyone to contribute to their favorite projects - in addition they help us to make progress. But there're some things to keep in mind when contributing code. You grant us a perpetual license to use your code under the MIT license in the moment you contribute something to this project. This contributing code section covers all defined standards that have nothing to do with or coding standards, as they are separated from our contribution guide - but we recommended to read them, as code that not follows them will be rejected.

### First time contributors
As a first time contributor, you might find it hard to find an issue that you can work on. To make it easier for you, some issues will be labeled as "good first issue" or so.
This type of issue is often done with a few changes to the source code, which does not require a too deep knowledge of the projects source code.

### Process of a code contribution
The step by step process for code contributions to dcc looks like the following:
 1. Choose an issue that you want to resolve (Create one if you want to implement something, but there is no issue for it)
 2. Create a comment in that issue that you want to resolve it.
 3. You can now start to develop. But the issue will not be yours till it has been assigned to you by a collaborator or maintainer.
 4. If you're done with development, create a pull request.
 5. Your PR will be reviewed by a collaborator or maintainer.
 6. If your PR has been approved you're done, else start again at number 3 and make the required changes.

### Guidelines for issues
The following things should be noted when working with issues:
 1. Always use the matching template when you create new issues.
 2. Keep the issue up to date with your current progress.
 4. Do not create duplicates.

If you don't follow this guidelines, your issue will be closed and labeled as invalid or duplicate.

### Pull requests, branching and commits
#### Branching
Our project uses a very standard branching model. We have the `master` branch that is the most stable branch. It is always the branch that ends up as a release.
The `develop` branch is our default branch. All contributions will be merged into ´develop´ using pull requests. If you want to contribute, fork the project and make your changes. You should create feature and bug branches. We do not use documentation branches to minify the overhead.

#### Commits
As we use squash merges in our pull requests, the commit messages of your branch are not that important. But we would be happy if you still use proper messages.
Orient yourself on the following commit message (Note the upper case first letter and the usage of the imperative form):

```
Add this great new feature
```

#### Pull requests
When you're ready to create a pull request, use the predefined template for it. Choose a meaningful title (maybe the issues title will fit) and add all required labels.
It is very important that you link the right issue in the "Solves issue" section of the template, as every PR must be the result of an open issue. 

Requirements for an approved PR:
 1. Merge into develop: You need one approving review from a collaborator or maintainer.
 2. The CI checks have to pass.
 4. All requested changes and conversations have to be resolved before the merge.
 5. You need a linked issue that the PR solves.
 6. Merge into master: Only develop is allowed to be merged into master.
 7. Merge into master: You need two approving reviews. One **must** be from a maintainer.

## You're ready
As you read this contribution guidelines, the code of conduct and most important our coding guidelines you are good to go!
We really appreciate your work spent on contributions to our project, as people like you make the open source community great :heart:!

If you have some suggestions to this contributing guidelines, feel free to suggest them!

<!-- Variables -->
[reportmail]: mailto:elias.knodel@gmail.com
