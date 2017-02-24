Working title
---
Advances in computing technology for ad-hoc pedagogy


Authors
---
(alphabetical here, but we should discuss ordering)
Culich, A.; Holdgraf, C.R.; Rokem, A.


General thoughts
---
* Try to include concrete examples / stories of users to illustrate points
* Make it clear where we are being descriptive and where we are being prescriptive
* Include a section explicitly for suggestions etc
* Decide where to include references to our repository / materials
* We should discuss 

Outline
---
* Intro
  * Growing use of short-term classes, bootcamps, etc in research
  * Define "ad-hoc" teaching / scope of what we're discussing
  * Benefits of this type of learning over traditional classes
  * Teaser for how technology is allowing us to do this in new ways
* General structure of one of these events
  * Instructors create materials on their own laptops / environments
  * In the days before, instructors send links to github repositories, as well as instructions for how to download the proper packages.
  * On the day of, instructors hope that students have already figured out how to install this material on their computers
  * Material is covered during the bootcamp, assuming it will run on student computers.
  * After the bootcamp, students return home with (hopefully now more complete) materials to use on their own
  * Course materials remain on github (or some other online format)
* Benefits and drawbacks of this approach
  * Self sufficiency (main benefits)
    * By forcing students to install materials on their own computers, they are working in the environment they'll likely continue with into the future.
    * They may learn about the kinds of issues that come up when dealing with myriad computing environments
    * Moreover, they don't need to learn about the computing environment itself (beyond new software like a computer language) because it's their own computer
  * Reliability and robustness (main drawbacks)
    * Because students bring their own computing environments with them, it introduces a lot of noise into the learning process
      * Some students have difficulty setting up packages and environments, this costs time at the beginning of class
      * Some have pre-existing installations of software that may clash with new installations, or introduce version dependency clashes.
    * Because computational power varies across students, it limits the kind of tutorials that can be given by the instructor. E.g., you cannot do anything that requires heavy computation. This also has implications for equality and discrimination.
    * This is also an issue for instructors who often have higher-quality computers than students will have.
  * Consistency and control
    * Because students each have their own computing environment, this can cause large differences in the coding session. E.g., OS's have different file system structures.
    * Because students will pull the material for the day separately, this material must be frozen relatively early. It is difficult to change things during the day-of.
    * Moreover, this experience will largely depend on the students' ability to get help from the instructors. It makes the materials significantly less useful after the class or if a student who didn't take the course is interested in the materials.
* Using technology to improve this process
  * A quick description of our bootcamp, from a high level
    * Instructors doing development within Docker
    * Docker images being built and linked to a repository + data
    * Those images being hosted on a cluster
    * Students getting an IP address to interact w/ the cluster
    * Instructors running materials from the cluster
    * IP addresses persist for days after the bootcamp
    * The Docker + repo persist in time and are easily reproducible w/ the right tools 
  * The technology that let this happen
    * ###AARON### can insert his magician-like knowledge of the tech here
  * Benefits of this approach over the traditional approach
    * Reliability and Robustness
      * There were no startup costs on the day-of. Students only needed a web browser to have all the materials needed.
      * Students all had a "clean" environment, given by the docker image.
      * Instructors were also developing in this environment, which guaranteed that everything would "just work" in practice.
    * Consistency and control
      * Because students were all operating on the same computational platform, they had equal experiences in speed and operability.
      * In addition, using the XSEDE cluster gave the instructors full control over the environments of students. If we wanted to change files, update scripts, etc, this could be done on the backend.
      * Because the full computing environment is provided with the class materials (as a dockerfile), future users could replicate the exact experience that the students had.
      * In addition, the XSEDE cluster allowed us to keep course materials available for many days after the course was over, which lets students continue experimenting after the class is finished.
      * This course also resulted in a docker image that could be further built upon for new classes, or modified for specific applications.
* Challenges in this approach / areas for further development
  * For the instructors
    * Using a cluster requires knowledge of which cluster environments are available, and how to utilize them. Need more materials and institutional knowledge of how to get time on the clusters. Also need improvements in ease-of-use for the clusters themselves. Minimize barriers to entry for users.
    * The course requires credits in order to be run on a cluster. This is usually not difficult to apply for but again the process can be opaque for new users.
    * Docker is still not intuitive and has a steep learning curve. However it is relatively straightforward to do things following simple instructions as long as they exist.
  * For the students
    * Because students weren't using their own laptops, it adds an extra step in order to port course materials to their own computers after the class, if they wish to. (however, a counter to this is that they now have a better working knowledge of what it's like to work on a cluster)
* Wrap up
  * Broad statement about how technology offers opportunities to improve the way we learn how to do science, particularly in data analysis.
  * However, it will be important to build tools that are user-friendly and don't require sysadmin-level knolwedge in order to use.
  * This manuscript represents one attempt to use cloud computing and container technology in order to create new avenues for teaching and learning, but there is still much to be done!
* ![](http://cultofthepartyparrot.com/parrots/parrot.gif)
