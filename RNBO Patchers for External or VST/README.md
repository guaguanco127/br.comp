# Max/MSP RNBO Patch for External Creation: br.comp.rnbo.1.2  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.comp.1.2, with all related files, can be found here: [https://github.com/guaguanco127/br.comp](https://github.com/guaguanco127/br.comp)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents 

[About](#About)   
[What is an External for Max/MSP?](#External)  
[How To Export as a Max/MSP External](#Export)  
[A Note on VST and AU Plugins](#VST)  
[Credits](#Credits) 

## <a name="About"></a>About

A linked stereo compressor whose controls mean exactly what their units say: Threshold and Knee in dB, Ratio as N:1, Attack and Release in milliseconds. Soft knee, peak/RMS detection, dry/wet, sidechain and a gain reduction output, all click-free.

Inside [rnbo~], Threshold, Ratio, Attack, Release, Knee, Makeup, Auto_Makeup, Dry_Wet, Detect and Sidechain are params, and inlets 3 to 12 set the same params, so the external has the same inlets and outlets as the plain abstraction br.comp.1.2: L, R, the ten controls, Sidechain L, Sidechain R / L, R, Gain Reduction (dB, as a signal). Dry/Wet and Detect are in %, as on the abstraction. The gen~ code inside is the same as br.comp.1.2, so you can also copy it into your own RNBO patches. To try it, drop a sample into the [playlist~] and use the attrui controls; the number shows the gain reduction.

There is no State output: whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way. 

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.comp.rnbo.1.2.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.comp.1.2~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.comp.1.2, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.comp.1.2~ in any patch. It has the same inlets and outlets as the plain abstraction br.comp.1.2, except that the controls take numbers only.

## <a name="VST"></a>A Note on VST and AU Plugins

RNBO can also export this patch as a VST3 or AU plugin (Export Sidebar > Audio Plugin Export). The ten params become the plugin's parameters, and the Sidechain L/R inputs (in~ 13 and 14) become a second stereo input, which most DAWs offer as a sidechain. Most DAWs already include a compressor, so this is mostly useful if you want the same sound in Max and in your DAW.
## <a name="Credits"></a>Credits

The soft-knee gain computer and dB-domain gain smoothing follow D. Giannoulis, M. Massberg and J. D. Reiss, "Digital Dynamic Range Compressor Design -- A Tutorial and Analysis", Journal of the Audio Engineering Society 60(6), 2012.
