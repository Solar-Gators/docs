## Surfacing in Solidworks
### Overview
We currently use surfaces in Solidworks to design the body of the solar car. Because the CAD class at UF only teaches solids in Solidworks, new members have to be taught how to use surfaces. After taking a less-structured approach for a few years, the team has recently developed a course for training new members on using surfaces. Through a series of exercises, new members become comfortable with surfacing commands while also learning the design philosophy behind the solar car body. 

Many of these exercises are drawn from tutorial videos on YouTube; for each one, we have identified what commands we expect members to have used and in what ways, with the goal of members becoming comfortable using those commands by doing the exercise. Additionally, members are encouraged to not just follow the tutorial, but to add something of their own, to show true understanding of the commands.

The last part of the course delves into the theory behind solar car design, with readings assigned to teach members basic elements of design, such as types of drag, canopy style and position, and the influences of details such as fillets. This last part also sees the exercises branching out into designing actual solar car bodies, without using tutorials. By this point, it is expected that members have become fluent with most surfacing commands, solidifying their knowledge by using them on their own original designs.

Throughout the course, it is essential that the subteam lead(s)/PM give detailed feedback to members on their designs. Currently, leads have been meeting before the regular meetings to go over designs and prepare critiques for the meeting.

### Schedule
**Week One**: Surfacing Tutorial, Bottle <br>
**Week Two**: Teapot, Keycap <br>
**Week Three**: Flower, Panton Chair <br>
**Week Four**: Computer Mouse, Literature Review <br>
**Week Five**: Airfoil/Canopy, Vehicle Analysis <br>
**Week Six (and onward)**: Car Body

### Project Summaries
**Solidworks Surfacing Tutorial** <br>
The built-in Solidworks tutorial for surfacing, which should be done by any member who has never worked with surfaces before. It is also good for more experienced members that want to brush up on the knowledge of all the features in surfacing.

**Bottle** <br>
This is a simple project, focusing mainly on using the Surface Revolve feature. The goal is for members to become comfortable with drawing half cross-sections to be used for revolves, as this will prepare them eventually for using multiple, more complex, profiles for lofts. Members should look up tutorials on YouTube to use as a guide, but should also be encouraged to add their own design elements to the bottle. In the past, members have modeled bottles off of ones they own in real life, recognizable bottles of certain beverages, and even a martini glass.

Features: Revolve, Thicken

**Teapot** <br>
Because the bottle is a very simple project, the teapot is assigned in the same week. The goal is for members to build off of their skills doing simple revolves by adding some other features, most likely sweeps or simple lofts consisting of circular or ovular cross-sections. Make sure to also emphasize the use of reference geometry; encourage members to create reference planes for their cross-section sketches. Again, members should look up tutorials, but should be encouraged to make the design their own, with unique shapes or even colors.

A common mistake members make  is attempting to fill the ends of the handles with surfaces, and later thicken all surfaces. This will not work between thicken only works for a continuous surface, and the filled surfaces cannot be made continuous because they cannot be knit to the rest of the teapot. The knit cannot be done because it would result in an edge meeting a face. Thus, the easiest way forward is to simply leave the handle hollow. 

Features: Revolve, Thicken, Swept/Lofted Surface, Reference Axis/Plane

**Keycap** <br>
The keycap is the first more open-ended project; rather than having members follow a tutorial, it asks them to take a simply shaped body and attempt to model it based on appearance. Here, the focus is efficient use of extruded and fill surfaces, as well as uniqueness of design. Members that want to go above and beyond may use the configurations manager to create keycaps for multiple keys in a single file.

Features: Extruded Surface, Lofted Surface, Filled Surface

**Flower** <br>
This project is meant to introduce members to more organic design. Goals are to start becoming familiar with splines (but without strict controls), begin to understand 3D sketching using Spline on Surface, and simply design by using copying and moving features. Other topics that members might end up using are Boundary Surfaces and the selection manager, which can be important in actual solar car design. 

During this project, it is likely that members will learn how easy it is to break parts of their feature tree by making small rolled back changes. In Solidworks, this is a common occurrence, and the best (and basically only) way of fixing it is to edit every feature that is broken. Usually, the fixes are small: for instance, in this project, if the shape of a petal is changed, a surface spline on it may no longer fully lie on the surface. In this case, the spline just needs to be adjusted until it lies on the surface again.

Another lesson learned is how sensitive the thicken feature is when working with highly curved surfaces. In order to thicken a surface, it cannot have a curvature with a radius near the desired thickness, as Solidworks will not be able to complete the operation. This is because Thicken works by offsetting the face, and if you offset a curve by a distance larger than its curvature, it becomes a point. The best solution for this is to try to make any curves in your surface gradual, and to try thickening in a different direction, if possible, if the operation will not work.

Features: Thicken, Swept Surface, Lofted Surface, 3D sketch, Reference Plane, Boundary Surface

**Panton Chair** <br>
This project basically introduces the idea of using templates. The main goal is to produce a smooth, flowing shape, using as few features as possible, by lofting between curves projected from planes. Emphasis should be placed on learning to visual the projection of a 3D shape onto a flat surface, since this is how templates for the actual car design are made. 

Here, a common issue members have is the seam between the two halves of their chair not being smooth; the fix for this is making sure to use tangency controls, which are available whether they are using a Boundary Surface, Lofted Surface, or Filled Surface. Make sure members learn how valuable the various constraints they can put on curves and edges are, especially since the tangent constraint is often critical.

Features: Swept Surface, Lofted Surface, 3D Sketch, Project Curve

**Computer Mouse** <br>
The mouse is mainly a continuation of the skills gained from the Panton chair. Goals are to create both side and bottom profiles, which can be built on in a variety of ways to create the surfaces of the mouse. Another important idea to introduce is that there are a variety of ways to create a given surface; surface lofts and boundary surface can both be used interchangeably sometimes, so what feature you pick depends on what controls you need for that surface.

In this project, projected curves are extensively used. While their introduction is relatively late in the course, they are an important feature. They don’t have a multitude of uses, but the ability to make a curve from two profiles is useful in many specific instances. To this end, members should make sure to follow a tutorial that uses projected curves

Features: Lofted Surface, Boundary Surface, Project Curve

**Bolt** (scrapped) <br>
The reason we considered having members create a bolt as a project was to help introduce them to the idea of following standards and using precise dimensioning with their surfacing. This project would have been open-ended, with members choosing any bolt in ISO or ANSI standards (metric or Imperial, respectively), and making a fully accurate model. After we completed our bolts, we decided to not to include it in the course; bolts can easily be made using surfaces, but we realized that because one would typically model them with solids, it was a rather pointless assignment; furthermore, it mainly used revolved and swept surfacing commands, which members should already be familiar enough with by this point in the course.

We also realized that rather than try to expand their knowledge by requiring research into bolt standards, we should have them research something actually applicable to surfacing and car body design, leading to the reading assigned before the next project. 

**Literature Review** <br>
In this part of the course, members are given resources to learn about principles of design for solar car bodies. In past years, they would read parts of The Leading Edge by Goro Tamai. While that is a good, readily available resource, this summer we decided to have them read parts of a research paper, Aerodynamic Design and Analysis of a Solar-Powered Vehicle using CFD, by A. Z. Fourier. First, most of our members had already read The Leading Edge when they joined the club, and second, we felt that reading about the analysis of a specific body, rather than general tips, would be more beneficial

**Airfoil and Canopy** <br>
This project is preceded by reading assignments, as seen in the schedule. At this point, members should be becoming comfortable with the majority of the design tools at their disposal, and so the course shifts here to also teaching design methods.

A useful assignment is to have members analyze the appearance of other teams solar cars, pointing out specific aerodynamics qualities gained from their shapes and possibly critiquing the design as well. Members should be able to demonstrate the design knowledge they have gained from the readings in this way.

The other assignment associated with this is the airfoil and canopy. The first aspect, creating the airfoil, introduces members to using generated airfoils and being able to import them into SolidWorks. Make sure they understand that selection of NACA airfoils is a careful process based on the properties of those airfoils, and there are tradeoffs (drag reduction but with loss in cross-sectional area, etc). Furthermore, airfoils are mostly useful as a template or guide; it is okay to modify them slightly to accommodate the design demands of the car.

The second aspect is creating the canopy. There are not video tutorials on this, so leads should direct members to example files or take them through the process themselves in a meeting. The goal is not only for members to make a canopy, but to put some of the knowledge of aerodynamics and fillet radiuses to work.

Features: Import Curve, Scale

**Carbody** <br>
The final project: this should be conclusive and can be extended over many design revisions. Members will generate a concept for a body shell, then realize their vision in SolidWorks using surfacing features.

Members should be encouraged to draw concepts with basic dimensions and multiple views out on paper; make sure not to rush this stage, and emphasize that the more the flesh out the design on paper, the easier it will be to make it in SolidWorks. While it is best to follow conventional designs, thinking outside the box should not be discouraged, especially if it gives a member a chance to showcase their skills.

Emphasis that making the actual model will require a lot of work and revisions; they may even start over with completely different documents as they figure out the ways to model their shell. You can offer them these tips:
- Once the initial design is down, it can be extremely beneficial to future work to create templates based on it, adding on the templates as necessary as the design changes. Make sure to show examples of the templates, which are basic profiles that include lines for features such as the edges of fillets.
- Breaking the car down into sections can be helpful, such as front and back. This means that as you’re making surfaces for the back, you don’t have the worry about what the front surfaces will be like.
- It’s okay to start with broad shapes and ideas and then narrow them down, just be aware that SolidWorks is pretty unfriendly to major design tree changes and it might be easier in some cases to start a whole new part document.
- Try to do swept features, like lofts, from the front to the back of the vehicle. This will help ensure that your shell is smoothest in the direction that air is flowing.
- Keep the feature tree organized by making folders to contain elements of the design, e.g. rear wing, once you have finished them.

### Conclusion
We ran this course for the first time over summer 2020, and found that it was successful in quickly bringing members up to speed on surfacing in solidworks, even with all of our meetings taking place virtually. What we found to be most vital during the course was communication and availability of leads and other experienced members, as being able to give timely feedback to members was critical. 

Our future recommendations start with a note of caution: as this course was first delivered during the summer, the schedule reflects that, and it might move too quickly for the school year. In this regard, course coordinators should be flexible about scheduling, and may sometimes need to add in a half or full week for a project, depending on member workloads.

Another conclusion we found is that it is ok for members to be working on multiple projects at once. For example, members may move on to working on the computer mouse project while still being assigned to make minor revisions to their panton chairs. 

The last recommendation is touched on in the introduction to the course; always try to critique designs or anticipate mistakes before meetings, so that the time when all members are together can be used for giving feedback, rather than appraising designs on the spot. This will make the course run smoothly, keeping meetings from dragging on and ensuring that leads always have thoughtful advice for members.

### Appendices
#### A. Surfacing Commands
**Surface Extrude:** extrude a line or curve from a plane, creating a surface.

**Planar surface:** create a surface on a plane bounded by a sketch.

**Revolve surface:** revolve a sketch around an axis, leaving a surface where the sketch has swept

**Trim Surface:** remove parts of a surface based on intersection with another surface or a sketch

**Swept surface:** sweep a sketch along another sketch, a curve, or an edge, creating a surface with the profile of the first sketch.

**Lofted surface:** create a surface between two or more sketches, curves, edges, or points. Controllable using other sketches or edges as guide curves.

**Boundary Surface:** create a surface between two edges, with control of tangency to surfaces at those edges

**Thicken:** makes a surface into a solid feature by offsetting a surface in a specified direction and then filling the gap

**Knit Surface:** Knit Surface: combine multiple surface bodies into a single surface body. Necessary for doing things like filleting the junction of two surfaces.

#### B. Commands not Specific to Surfacing
**Reference Geometry:** create reference planes that can be sketched on, mirrored around, or used for cuts, and reference axes to revolve around.

**3D Sketch:** sketch in a 3D space, not attached to a plane. Hard to fully constrain, so limited and mainly simple uses. Can be useful if you don’t feel like making a new reference plane for a cross-sectional sketch.

**Project Curve:** makes 3D curves in space or on a surface based on one or two reference curves, which are the profiles of the projected curve.

#### C. YouTube Tutorials
- [Bottle](https://www.youtube.com/watch?v=FSzgv9r2oso&ab_channel=CADCAMTUTORIAL)
- [Teapot](https://www.youtube.com/watch?v=zBtttG8hE-4&ab_channel=SolidWorksTutorial%E2%98%BA)
- [Flower](https://www.youtube.com/watch?v=3IzAAx5htwQ&ab_channel=SOLIDWORKS)
- [Computer Mouse](https://www.youtube.com/watch?v=lnJTfrqYfMU&ab_channel=CADCAMTUTORIAL)
- [Panton Chair](https://www.youtube.com/watch?v=a0kZGWsT6sY&ab_channel=SolidWorksTutorial%E2%98%BA)

#### D. Additional Resources
- [NACA Airfoil Generator](http://airfoiltools.com/plotter/index)
- [*Aerodynamic Design and Analysis of a Solar-Powered Vehicle using CFD*, A. Z. Fourier](https://repository.nwu.ac.za/bitstream/handle/10394/19212/Fourie_AZ_2016.pdf?sequence=1&isAllowed=y)
