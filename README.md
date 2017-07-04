Hey guys, to get to your specific portion of the api you must follow these conventions:


Everything will be proceeded with this:
https://secure-ravine-87574.herokuapp.com


Afterwards, you must use the following to access the students json:
/api/v1/students.json

To access the speicific student will be
/api/v1/students/1.json

After, depending on the resource you are looking into, you must follow this syntax:

Types: skills, educations, experiences, capstones

/api/v1/students/1/skills.json
/api/v1/students/1/skills/1.json
/api/v1/students/1/skills/1/edit.json

All post requests should go to the base version. For example:
/api/v1/students/1/skills.json

All update and patch request should go to
/api/v1/students/1/skills/1.json




