# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.comp.1.1



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.comp.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.comp](https://github.com/guaguanco127/br.comp)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Links

[What's new in 1.1](#New11)  
[About](#About)   
[State outlet](#State)  
[Max/MSP Abstraction](https://github.com/guaguanco127/br.comp/tree/main/MaxMSP%20Abstraction) To use as an abstraction within Max/MSP   

This is a Max/MSP-only release (no Max for Live device).

## <a name="New11"></a>What's new in 1.1

- New [State outlet](#State) (outlet 4, the last one): it sends the settings as named messages the moment they change, so moving a control, numbers into the inlets and preset recalls all show up. Use it to keep a display, Mira or another patch in sync.
- The inlets and the other outlets are unchanged, so 1.1 swaps in for 1.0 without rewiring.
- The example patch has a new State outlet tab that reads the compress tab's settings by name.

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

The example patch (_br.comp.example.1.1.maxpat) has a tab for compressing a drum loop, a voice, uneven plucks or a microphone, and a tab where a drum loop ducks a drone through the sidechain inlets.

## <a name="State"></a>State outlet

The last outlet (State) sends the current settings as named messages the moment they change, for example `threshold -18.`, `ratio 4.`, `sidechain 1`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route threshold ratio attack release knee makeup automakeup drywet detect sidechain], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| threshold | Float | dB, -60 to 0 |
| ratio | Float | 1 to 20 (N:1) |
| attack | Float | ms, 0.1 to 200 |
| release | Float | ms, 5 to 2000 |
| knee | Float | dB, 0 to 24 |
| makeup | Float | dB, -12 to 24 |
| automakeup | Int | 0 = off, 1 = on |
| drywet | Float | %, 0 to 100 |
| detect | Float | %, 0 (peak) to 100 (RMS) |
| sidechain | Int | 0 = off, 1 = on |

Each message carries the same value its inlet takes, so a State message can go straight back into an inlet. The example patch has a State outlet tab that shows this.

## <a name="Credits"></a>Credits

The soft-knee gain computer and dB-domain gain smoothing follow D. Giannoulis, M. Massberg and J. D. Reiss, "Digital Dynamic Range Compressor Design -- A Tutorial and Analysis", Journal of the Audio Engineering Society 60(6), 2012.
