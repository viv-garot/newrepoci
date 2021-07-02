# Learning CI with travis

Simple hello print test

### - Create an account on travis

- Go to travis-ci.com and sign up with GitHub

![image](https://user-images.githubusercontent.com/85481359/124274799-fda8fe00-db41-11eb-9d70-5cf37191ca92.png)

- Accept the Authorization of Travis CI. You’ll be redirected to GitHub. 

![image](https://user-images.githubusercontent.com/85481359/124275663-241b6900-db43-11eb-8d2d-7c4fb4eea390.png)

- Click on your profile picture in the top right of your Travis Dashboard, click Settings and then the green Activate button, and select the repositories you want to use with Travis CI.

![image](https://user-images.githubusercontent.com/85481359/124275987-88d6c380-db43-11eb-934a-6fea7cac08c7.png)

- Travis will take a few mins to sync with the GitHub repo

### - Create a new branch on GitHub

![image](https://user-images.githubusercontent.com/85481359/124276436-14e8eb00-db44-11eb-8dfa-0840e335e095.png)

### - Create travis file

![image](https://user-images.githubusercontent.com/85481359/124276769-84f77100-db44-11eb-9036-548c768d78af.png)

*.travis.yml :*
```
language: generic
sudo: required
script:
- bash test_hello.sh
```

### - Create hello file

*hello.sh :*
```
#!/usr/bin/env bash

echo "hello"
```

### - Create test_hello file

*test_hello.sh :*
```
#!/usr/bin/env bash

# test that hello.sh outputs hello

OUT=$(bash ./hello.sh)

if [ ${OUT} = "hello" ] ; then
 echo "Output is hello"
 exit 0
else
 echo "Output is not hello"
 echo ${OUT}
 exit 1
fi
```

### - Create pull request

- Compare & pull request


![image](https://user-images.githubusercontent.com/85481359/124278039-0dc2dc80-db46-11eb-858d-7eb676200c94.png)

- Create pull request

![image](https://user-images.githubusercontent.com/85481359/124278129-2af7ab00-db46-11eb-8c08-66bcfad40673.png)


### - Wait for travis to complete the checks/build

![image](https://user-images.githubusercontent.com/85481359/124280340-dbff4500-db48-11eb-9aa4-a0742de9a145.png)

### - This how look a successful build on travis

![image](https://user-images.githubusercontent.com/85481359/124279005-40b9a000-db47-11eb-843e-17b6e38fcddf.png)


### - Checks passed on GitHub, you can now merge the PR (Pull Request)



![image](https://user-images.githubusercontent.com/85481359/124279175-79f21000-db47-11eb-9532-85fba5e962de.png)

- Confirm the merge

![image](https://user-images.githubusercontent.com/85481359/124279319-a574fa80-db47-11eb-88bd-4d6e725b8830.png)

### - Delete the branch

![image](https://user-images.githubusercontent.com/85481359/124279456-d2291200-db47-11eb-9f5a-030c62eed6e8.png)

### - Modify hello.sh so the build fails in travis

- Edit hello.sh (replace hello with bye)
```
#!/usr/bin/env bash

echo "bye"
```

- Commit the changes into a new branch

![image](https://user-images.githubusercontent.com/85481359/124281396-f685ee00-db49-11eb-9604-8e7d58d3cb10.png)

- Create the pull request

- See how the checks are now failing in GH

![image](https://user-images.githubusercontent.com/85481359/124281736-511f4a00-db4a-11eb-8a77-7f8486d1849c.png)

- And the build failed in  travis

![image](https://user-images.githubusercontent.com/85481359/124281851-72803600-db4a-11eb-891c-eec62b5e0c32.png)

### - Close the pull request

![image](https://user-images.githubusercontent.com/85481359/124282532-3a2d2780-db4b-11eb-8c65-23db92d5bd50.png)

### - Delete the branch

![image](https://user-images.githubusercontent.com/85481359/124283149-df480000-db4b-11eb-8342-d21870fdc025.png)

![image](https://user-images.githubusercontent.com/85481359/124282785-824c4a00-db4b-11eb-852a-138517173fe6.png)
