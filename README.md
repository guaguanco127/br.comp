# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.comp.1.0



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.comp.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.comp](https://github.com/guaguanco127/br.comp)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Links

[About](#About)   
[Max/MSP Abstraction](https://github.com/guaguanco127/br.comp/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   

This is a Max/MSP-only release (no Max for Live device).

## <a name="About"></a>About

A linked stereo compressor for Max/MSP, built in gen~, whose controls mean exactly what their units say: Threshold and Knee in dB, Ratio as N:1, Attack and Release in milliseconds.

| Feature | What it does |
|---|---|
| Soft knee | 0 - 24 dB wide, centered on the threshold; 0 is a hard knee |
| Peak / RMS detection | One dial blends from a peak detector (catches transients) to RMS (follows loudness) |
| Dry/Wet | Parallel compression without extra patching |
| Sidechain | Two extra inlets let another sound drive the compressor (ducking) |
| Gain reduction outlet | The gain reduction in dB as a signal, plus a meter on the panel |
| Auto Makeup | Adds back gain based on Threshold and Ratio |

**Exact numbers:** Threshold and Ratio land where they say: -6 dBFS in, Threshold -18, Ratio 4:1 comes out at exactly -15 dBFS. Attack and Release are the time to 63% of the move, the same at any level.

**Linked stereo:** One detector listens to the louder of Left and Right and turns both down together, so the stereo image stays put.

**Click-free controls:** Every control glides over 10 ms, including the Sidechain and Auto Makeup switches, so moving them never clicks.

**Light on CPU:** When the input is silent and nothing is moving, the compressor skips almost all of its work.

The example patch (_br.comp.example.1.0.maxpat) has a tab for compressing a drum loop, a voice, uneven plucks or a microphone, and a tab where a drum loop ducks a drone through the sidechain inlets.

## <a name="Credits"></a>Credits

The soft-knee gain computer and dB-domain gain smoothing follow D. Giannoulis, M. Massberg and J. D. Reiss, "Digital Dynamic Range Compressor Design -- A Tutorial and Analysis", Journal of the Audio Engineering Society 60(6), 2012.
