## StarCCM Instructions
This is a set of instructions our team has developed over time to make sure all CFD simulations are always run the same way. 
Based off Gator Motorsports' Instructions. Definitions come from a variety of tutorials on theansweris27.com

***(text) represents annotation to explain the instructions or definitions***

**Note: Save work often**

<br>**1. Startup *(Create the simulation file)***

Click File -> New Simulation

Select Parallel on Local Host

Compute Processes: Use your logical processor count

Select Power Session and Power-On- Demand

Power-On-Demand Key: ***Ask team lead for this***

*Note: Save configuration for future use*

<br>Click File -> Import -> Import Surface Mesh

*Note: Make sure the file is a parasolid (.x_t file)*

Select Ok
	
<br>**2. Adding Wind Tunnel *(Defining the size of the wind tunnel. The size should be large enough so that the air on the outsides of the tunnel are unaffected by the part being tested, however too large of a volume will require more computer power)***

Open Geometry -> Right Click Parts

Select new shape part -> select block

Corner 1 Dimensions

<span style="margin-left:1em">X = -5 m

<span style="margin-left:1em">Y = -0.03 m

<span style="margin-left:1em">Z = -5 m 

Corner 2 Dimensions

<span style="margin-left:1em">X = 5 m

<span style="margin-left:1em">Y = 6 m

<span style="margin-left:1em">Z = 25 m *(To accommodate for the vortices from the car)*

Click Create and then Close

Rename Block to Wind Tunnel
	
<br>Open Wind Tunnel (new block)

Open Surfaces -> Right click Block Surface -> split by patch

Select front of block -> Change Part Surface Name to Inlet -> Click Create

Select back of block -> Change Part Surface Name to Outlet -> Click Create
	
Select bottom of blcok -> Change Part Surface Name to Ground -> Click Create

Close

*Note: The front of the block would be where the front of the car is facing*

<br>**3. Surface Wrapper *(Wraps the initial surface to provide a closed and manifold surfface mesh from a complex geometry)***

Right Click Operations (under geometry) -> New -> Surface wrapper

<span style="margin-left:1em">Select the car body

Open surface wrapper folder -> Open Defualt Controls

<span style="margin-left:1em">Select volume of interest

<span style="margin-left:2em">Under properties change Method to External

<span style="margin-left:1em">Select Base Size

<span style="margin-left:2em">Under properties change Base Size Value to 0.002 m

<span style="margin-left:3em">Whichever value you're told for surface wrapper; one that
<br><span style="margin-left:3em">provides a clean surface (i.e. no bumps)

<span style="margin-left:3em">*(Used 0.002)*

Right click Surface Wrapper -> Execute

<br>**4. Subtract Operation *(Removes the surface wrapper volume from the wind tunnel volume)***
	
Right Click Operation -> New -> Subtract
	
Input Parts -> Select -> Surface Wrapper and Wind Tunnel
	
Target Parts -> Select -> Wind Tunnel
	
Select Execture operator upon creation
	
Click Ok
	
<br>Open Scenes -> Open Geometry 1 -> Open Displayers -> Open Geometry 1

<span style="margin-left:1em">Double click Parts

<span style="margin-left:1em">Only have Subtract selected

*Note: The holes where the wheels intersect with the block should be visible from the bottom*
		
<br>**5. Physics Model**

Right click Continua -> New -> Physics Continuum

<span style="margin-left:1em">Double click Models

<span style="margin-left:1em">Select: 3D, Constant Density, Steady, Turbulent, Gas, K-Epsilon
<br><span style="margin-left:1em">Turbulence, Segregated Flow, Cell Quality Remediation
		
<br>Open Initial Conditions

<span style="margin-left:1em">Select velocity

<span style="margin-left:2em">Under properties change velocity value in the firection the wind
<br><span style="margin-left:2em">will be moving (15 m/s unless decifed otherwise)
			
<br>Under Geometry -> Open Parts

<span style="margin-left:1em">Right click Subtract and add "Assign Parts to Region"

<span style="margin-left:1em">On the bottom open the second scroll down option

<span style="margin-left:2em">Change to "Create a boundary for each part surface"

<br>Open Regions

<span style="margin-left:1em">Open Region -> Open Boundaries

<span style="margin-left:1em">Select Inlet

<span style="margin-left:2em">Under properties change Type to Velocity Inlet

<span style="margin-left:2em">Open Inlet -> Open Physics -> Select Velocity Magnitude

<span style="margin-left:3em">Change value to 15 m/s (same as the car's velocity

<span style="margin-left:1em">Select Outlet

<span style="margin-left:2em">Under Properties change Type to Pressure Outlet

**<br>6. Creating Mesh**

Right Click Operation -> New -> Automated Mesh

Select Subtract

At the bottom select:

<span style="margin-left:1em">Surface Remsher:

*(Remeshes the initial surface to provide a quality discretized mesh that is suitable for CFD. It is used to retriangulate the surface based on a target edge length supplied and can also omit specific surfaces or boundaries preserving the original triangulation from the imported mesh.)*

<span style="margin-left:1em"> Trimmed Cell Mesher:

*(Generates a volume mesh by cutting a gexahedral template mesh with the geometry surface. It is recommended when an underlying custom mesh needs to be used or if the surface quality is not good enough for a polyhedral mesh. Besides, it is useful in modeling external aerodyanic flow due to its ability to refine cell in a wake region - unsteady and turbulent fluid caused by boundary layer seperation.)*

<span style="margin-left:1em">Prism Layer Mesher:

*(Adds prismatic cell layers next to the wall boundaries. The mesher projects the core mesh back to the wall boundaries to create prismatic cells.)*

<span style="margin-left:1em">Automatic Surface Repair

<span style="margin-left:1em">Click Ok

<br>Open Automated Mesh -> Open Default Control

<span style="margin-left:1em">Under Properties change Base Size value to 0.5m

<br>Creating Surface Control

<span style="margin-left:1em">Open Automated Mesh -> Right click Custom Controls -> Surface Control

<span style="margin-left:1em">Open Custom Controls -> Select the new Surface Control

<span style="margin-left:1em">Under properties in Part Surfaces click the three dots or the empty bracket

<span style="margin-left:2em"> Open Subtract -> Select Surface Wrapper

<br><span style="margin-left:1em">Open Surface Control -> Open Controls

<span style="margin-left:2em">Select Target Surface Size

<span style="margin-left:3em">Under Properties convert to Custom

<span style="margin-left:2em">Select Minimum Surface size

<span style="margin-left:3em">Under Properties convert to Custom

<span style="margin-left:3em">Select Prism Layers

<span style="margin-left:2em">Under Properties convert to Custom

<span style="margin-left:3em">Open Prism Layers -> Select Customize

<span style="margin-left:4em">Select Number of Layer

<span style="margin-left:4em">Select Total Thickness

<span style="margin-left:2em">Open Balues

<span style="margin-left:3em">Select Target Surface Size

<span style="margin-left:4em">Under Properties change to Absolute

<span style="margin-left:4em">Open Target Surface Size -> Select Absolute Size

<span style="margin-left:5em">Change Value to 0.003

<span style="margin-left:3em">Open Custom Prism Values

<span style="margin-left:4em">Select Number of Prism Layers

<span style="margin-left:5em">Change value to 12

<span style="margin-left:4em">Select Prism Layer Total Thickness -> Change to Absolute

<span style="margin-left:5em">Open folder -> Select Absolute Size

<span style="margin-left:5em">Change Value to 0.03m

<span style="margin-left:3em">Select Minimum Surface Size

<span style="margin-left:4em">Change to Absolute

<span style="margin-left:4em">Open folder -> Select Absolute Size

<span style="margin-left:5em">Change Value to 0.001

<span style="margin-left:5em"> The larger the range between the two values the less errors
<br><span style="margin-left:5em">should occur along with a shorter mesh execution time

*Note: The wider range between target size and minimum size might make the mesh run faster*

<br>Creating Wall Control

<span style="margin-left:1em">Open Automated Mesh -> Right click Custom Controls -> Surface Control

<span style="margin-left:1em">Select the new surface control (Rename Wall Control)

<span style="margin-left:2em">Click on the 3 dots next to Part Surfaces

<span style="margin-left:3em">Open Subtract -> Open Wind Tunnel -> Select Block Surface

<span style="margin-left:2em">Open the surface control (wall control) -> Open Controls

<span style="margin-left:3em">Select Prism Layers

<span style="margin-left:4em">Under properties change to Prism Layers to Disable

<br>Right Click Automated Mesh -> Execute

<br>**7. Reports**

Right Click Reports -> New Report -> Force

Select Force (Rename Drag Force)

<span style="margin-left:1em">Under Properties

<span style="margin-left:2em">Open Parts -> Open Regions -> Open Region -> Open Boundaries

<span style="margin-left:3em">Select subtract.surface wrapper.body

<span style="margin-left:3em">(select all faces corresponding to the car body)

<span style="margin-left:2em">In Direction - adjust values to correct direction with value of 1

<span style="margin-left:3em">(In this case, only the z value would be used with a value of -1)

<br>Right click Drag Force

<span style="margin-left:1em">Create Monitor and Plot from Report

<br>Frontal Area

<span style="margin-left:1em">Create a new report

<span style="margin-left:1em">Under Properties

<span style="margin-left:2em">Open Parts -> Open Regions -> Open Region -> Open Boundaries

<span style="margin-left:3em">Select subtract.surface wrapper.body

<span style="margin-left:3em">(select all faces corresponding to the car body)

<span style="margin-left:3em">(make sure the normal direction is the same firection as the
<br><span style="margin-left:3em">force report)

<br>Drag Force Coefficient

<span style="margin-left:1em">Create a new report

<span style="margin-left:1em">Under Properties

<span style="margin-left:2em">Open Parts -> Open Regions -> Open Region -> Open Boundaries

<span style="margin-left:3em">Select subtract.surface wrapper.body

<span style="margin-left:3em">(select all faces corresponding to the car body)

<span style="margin-left:2em">In Direction - adjust values to correct direction with value of 1

<span style="margin-left:3em">(In this case, only the z value would be used with a value of -1)

<span style="margin-left:2em">Reference Density - 1.225 kg/m^3

<span style="margin-left:2em">Reference Velocity - 15 m/s (same as car velocity)

<span style="margin-left:2em">Reference Area - Frontal Area value

<br>*Note Double click the report to show final value*

<br>**8. Stopping Criteria**

Different options:

Disable maximum steps *(So the simulation does not stop when not complete)

<span style="margin-left:1em">Open stopping criteria -> click Maximum Steps -> uncheck box 
<br><span style="margin-left:1em">next to "Enabled"

<br>Set up standard deviation

<span style="margin-left:1em">Right click Stopping Criteria -> create new criterion -> from monitor

<span style="margin-left:1em">Select Drag Force Monitor -> Ok

<span style="margin-left:1em">Click Drag Force Monitor Criterion -> under properties drop
<br><span style="margin-left:1em">down Criterion Option -> Standard Deviation

<span style="margin-left:1em">Open Drag Force Monitor Criterion -> click standard deviation

<span style="margin-left:1em">Standard Deviation: 0.02N

<span style="margin-left:1em">Number of samples: 100

<br>Open Stopping Criteria

<span style="margin-left:2em">Click Maximum Steps -> Change Maximum Steps to include 1000
<br><span style="margin-left:2em">more steps

<br>**9. Run Simulation**

Click the running man at the top

*Note: On the Drag Force Plot the line should be leveling off as more iterations pass by.*

<br>**10. After Simulation**

Pressure Scenes

<span style="margin-left:1em">Right click Scene -> New Scene -> Scalar

<span style="margin-left:1em">Expand Scalar Scene 1 -> Expand Displayers -> Expand Scalar 1

<span style="margin-left:1em">Double click Parts

<span style="margin-left:2em">Expand Regions -> Select subtract.surface wapper.body
<br><span style="margin-left:2em">(all faces corresponding to the car body)

<span style="margin-left:1em">Double click Scalar Field

<span style="margin-left:2em">For Function -> Click the three dots

<span style="margin-left:3em">Select Absolute Pressure

<br>Steamline

<span style="margin-left:1em">Open Pressure Scalar Scene

<span style="margin-left:1em">Right Click Derived Parts -> New Part -> Streamline

<span style="margin-left:1em">For Seed Parts -> Click Select

<span style="margin-left:2em">Open Region -> Wind Tunnel Inlet

<span style="margin-left:1em">Select Part U and Part V resolution to 10

<span style="margin-left:1em">Click Create then Close

<br><span style="margin-left:1em">Expand Pressure Scalar Scene -> Expand Displayers -> Espand
<br><span style="margin-left:1em">Streamline Streamline

<span style="margin-left:2em">Double click Scalar Field

<span style="margin-left:3em">For Function -> Click the three dots

<span style="margin-left:4em">Expand Velocity -> Select Magnitude

<br>Vector

<span style="margin-left:1em">Right click Scene -> New Scene -> Vector

<span style="margin-left:1em">Expand Scalar Scene 1 -> Expand Displayers -> Expand Scalar 1

<span style="margin-left:1em">Double click Parts ->

<span style="margin-left:2em">Expand Regions -> Select subtract.surface wapper.body
<br><span style="margin-left:2em">(all faces corresponding to the car body)

<span style="margin-left:1em">Right click Displayer -> New Displayer -> Vector

<span style="margin-left:1em">Expand Vector -> double click Parts

<span style="margin-left:2em">Expand derived parts -> select Plane Section

Plane Section

<span style="margin-left:1em">Right-click derived part -> derived part -> section -> plane

<span style="margin-left:1em">Select correct orientation (cutting through the profile of car)

<br>**11. Rerun a simulation**

To rerun a simulation and avoid setting it up from the beginning:

<span style="margin-left:1em">At the top click Solutions and Clear Solutions

<span style="margin-left:1em">With the given setting click OK