Red Caiman JBoss Tester - rcjbosstester
=============
This repository holds test applications used to excercise DLT Solution's Red Caiman environment capabilities.

Running on OpenShift
=============
Create an account in your OpenShift environment.


Create a scaling JBoss EAP application
```
rhc create-app rcjbosstester jbosseap-6 -s
```

Add this upstream rcjbosstester repo
``` 
git rm -rf src/ pom.xml .openshift/config/standalone.xml
git commit -am "deleted template application"
git remote add upstream -m TestDrive https://github.com/DLT-Solutions-JBoss/rcjbosstester
git pull -s recursive -X theirs upstream TestDrive
```

Then push the repo upstream
``` 
git push
```

That's it, you can now checkout your application at:
```
http://rcjbosstester-$namespace.<openshift environment>.com
```
