# Car Software

The code for this team is located in the [Telemetry_2019-2020](https://github.com/Solar-Gators/Telemetry_2019-2020) repository.

## Getting Started

First install the [STM32CubeIDE](https://www.st.com/en/development-tools/stm32cubeide.html) as that is what we will be using for our toolchain and to program our boards.

Next, clone [our repository](https://github.com/Solar-Gators/Telemetry_2019-2020). Open the STM32CubeIDE on your computer and navigate to **File**->**Open Projects from File System...**. Browse by **Directory** to the "Telemetry_2019-2020" cloned directory and select it. Then as in the Figure below, only select the "Telemetry_2019-2020\dev-board" folder to import as an Eclipse project and select **Finish**. Now the project should be imported and you can see it on the **Project Explorer** pane to your left. If you are familiar with Eclipse, this IDE behaves very similar.

![Import Project](/_static/telemetry/telemetry_import-project.PNG)

## Building and Running The Code

To build this project, simply open up any file from this project in the IDE and select the build icon in the top toolbar. This compiles all the code and should succeed if nothing has been changed within the project.

In order to actually run the code on a microcontroller. Plug in either the development board for the stm32f072rb or a programmer hooked up to the stm32f072rb. If you are using a ST-LINK programmer proceed to the next paragraph, otherwise keep reading. If you are using the SEGGER-J-LINK programmer you need to access the **Debug Configurations** menu which can be found by clicking the dropdown arrow attached to the debug icon in the top toolbar. Once in the **Debug Configurations** menu, you must select select the "telemetry-dev-board.elf" file from the left hand pane. Then, click the **Debugger** tab at the top and change the **Debug Probe** to "SEGGER-J-LINK" and click **Apply**.

Now that the correct programmer has been selecting and hooked up to the computer and microcontroller, we can load the code on to the microcontroller by simply clicking the debug icon in the top toolbar. 

## File Structure

In order to get a feel for this project and where the different modules are located, I suggest you take a look at the <a href="https://github.com/Solar-Gators/Telemetry_2019-2020/blob/master/README.md"> README inside the Telemetry_2019-2020 repo </a>
