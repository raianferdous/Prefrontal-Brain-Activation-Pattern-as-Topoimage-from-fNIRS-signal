# Prefrontal-Brain-Activation-Pattern-as-Topoimage-from-fNIRS-signal
The project title is "A Simple Design of a MATLAB-Based Function for Topographical Presentation of fNIRS Data ". This project is divide into two parts. The first one is the generation of brain activation pattern as topoimage from fNIRS signal using MATLAB. The later part is registration of the topoimage on brain surface image for better anatomical view to understand the activation pattern in detail and identify the oxygenated and deoxygenated region. 

Abstract: Functional Near-Infrared Spectroscopy (fNIRS) has aggrandized the domain of Neurophotonics and Imaging research to reach its apex. With enhanced spatial resolution with the pre-existing temporal resolution, fNIRS can be more promising for the functional analysis of the brain. Hardware integrated software for fNIRS analysis is affluent as well as limited for users. And the analysis based on MATLAB are done with the Guided User Interface (GUI) that are difficult to use because they involve numerous steps, coefficients, and related files. This is a simple MATLAB based study that includes the generation of the brain activation patterns based on oxygenation and de-oxygenation of hemoglobin and enhancing spatial resolution for the better identification of brain functionality. Brain activation pattern based on the recorded fNIRS data is created in the form of a color-coded map. The map is registered to the brain surface image which provides better visuality of activation scheme of the brain with anatomical view. This research intends to encourage prolific researchers in this research area to conduct simplified and cost-effective analysis of fNIRS study.

#Files Description:
HBO.txt = Oxyhemoglobin Data File consists 250 rows and 16 columns
fNIRS.m = Matlab file (Code)

How To Run Code:
1. Put the files in a same folder
2. Run the matlab code
3. Can select the specific data points by changing the [data=x(55,:);] here 55 indicates the 55th number data points and will generate topoimage for that data 
