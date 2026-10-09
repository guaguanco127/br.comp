# Max/MSP Abstractions:   
## br.comp.1.1



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.comp.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.comp](https://github.com/guaguanco127/br.comp)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Table of Contents 

[What's new in 1.1](#New11)  
[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Example Patch](#Example)  
[Credits](#Credits)  
 
 

## <a name="New11"></a>What's new in 1.1

- New [State outlet](#State) (outlet 4, the last one): it sends the settings as named messages the moment they change, so moving a control, numbers into the inlets and preset recalls all show up. Use it to keep a display, Mira or another patch in sync.
- The inlets and the other outlets are unchanged, so 1.1 swaps in for 1.0 without rewiring.
- The example patch has a new State outlet tab that reads the compress tab's settings by name.

## <a name="About"></a>About

A linked stereo compressor for Max/MSP, built in gen~, whose controls mean exactly what their units say: Threshold and Knee in dB, Ratio as N:1, Attack and Release in milliseconds.

**Exact numbers:** The gain is worked out in dB from the level, then smoothed in dB, so the steady-state result is exactly what Threshold and Ratio say (-6 dBFS in, Threshold -18, Ratio 4:1 comes out at exactly -15 dBFS), and Attack and Release are pure times: the time to 63% of the move, the same at any level.

**Linked stereo:** One detector listens to the louder of Left and Right (or of the two sidechain inlets) and turns both channels down together, so the stereo image stays put.

**Click-free controls:** Every control glides over 10 ms. Sidechain and Auto Makeup crossfade instead of jumping.

**Light on CPU:** Below the knee the level math is skipped, and when the input is silent and nothing is moving, the compressor does almost nothing at all.

### Controls

**Threshold:** -60 to 0 dB. Compression starts here (the middle of the knee). The default is -18.

**Ratio:** 1 to 20, as N:1. At 4, every 4 dB above the threshold comes out as 1 dB. 1 is no compression. The dial is curved, so more of its travel covers the lower ratios. The default is 4.

**Attack:** 0.1 to 200 ms. How fast it clamps down when the level rises. Short catches the front of a hit; long lets the hit through for more punch. The default is 10.

**Release:** 5 to 2000 ms. How fast it lets go when the level falls. Short pumps; long is smooth. The default is 150.

**Knee:** 0 to 24 dB. The width of the soft corner around the threshold: compression eases in across this range instead of switching on at one level. 0 is a hard knee. The default is 6.

**Makeup:** -12 to 24 dB. Gain after compression, to bring the level back up. The default is 0.

**Auto Makeup:** Adds half the gain a full-scale (0 dBFS) signal would lose, on top of Makeup, and follows Threshold and Ratio as you move them. Off by default.

**Dry/Wet:** 0 to 100 %. Below 100 % is parallel compression: the untouched hits stay and the squashed copy fills in underneath. 0 % is the dry signal, to compare. The default is 100.

**Detect:** 0 to 100 %. 0 % is a peak detector, which reacts to every transient. 100 % is RMS over about 10 ms, which follows loudness and is gentler on voices. In between blends the two. The default is 0.

**Sidechain:** Off: the compressor listens to its own audio. On: it listens to the Sidechain Left / Right inlets instead, so another sound decides when it turns down (for example, a drum loop ducking a pad). Off by default.

**GR meter:** The meter and number at the top show the gain reduction in dB. The full meter is 24 dB.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install 

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy and paste br.comp.1.1.maxpat inside of the same folder as the Max patch you are using.

3. To use the built-in dials, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the abstraction located within the same folder as your project. Size the bpatcher to 247 x 131 to show all of the controls.

4. Alternatively, create an object with the abstraction's name ([br.comp.1.1], do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

Every control has its own inlet, in the order listed below. Sending a value to an inlet moves its on-screen control too, so the display always matches the sound. Values outside a control's range are limited to that range. Hover over an inlet or outlet in Max to see its range and default.

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio to compress | |
| 2 | Right In | Signal | audio to compress | |
| 3 | Threshold | Float | -60 - 0 dB | -18 |
| 4 | Ratio | Float | 1 - 20 (N:1) | 4 |
| 5 | Attack | Float | 0.1 - 200 ms | 10 |
| 6 | Release | Float | 5 - 2000 ms | 150 |
| 7 | Knee | Float | 0 - 24 dB | 6 |
| 8 | Makeup | Float | -12 - 24 dB | 0 |
| 9 | Auto Makeup | Int | 0 / 1 | 0 |
| 10 | Dry/Wet | Float | 0 - 100 % | 100 |
| 11 | Detect | Float | 0 - 100 % (0 peak, 100 RMS) | 0 |
| 12 | Sidechain | Int | 0 / 1 | 0 |
| 13 | Sidechain Left | Signal | what the detector listens to when Sidechain is on | silence |
| 14 | Sidechain Right | Signal | what the detector listens to when Sidechain is on | silence |

| Outlet | Name | Type |
|---|---|---|
| 1 | Left Out: compressed audio | Signal |
| 2 | Right Out: compressed audio | Signal |
| 3 | Gain Reduction in dB, positive: 0 = none, 6 = turned down 6 dB | Signal |
| 4 | State: the settings as named messages, see [State outlet](#State) | Message |

**Ideas:**
- Mono: send the same signal into Left and Right and use one outlet.
- Ducking: a kick or drum loop into the Sidechain inlets, Sidechain on, a high Ratio and a short Attack.
- De-essing: a highpassed or bandpassed copy of a voice (2 - 8 kHz) into the Sidechain inlets, so only the sibilance triggers the compressor.
- Ducking something else: the Gain Reduction outlet through [*~ -1] and [dbtoa~] gives a gain you can multiply any other sound by.

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

## <a name="Example"></a>Example Patch

Open _br.comp.example.1.1.maxpat (keep it in the same folder as the abstraction). The first page introduces br.comp; the tabs at the top hold the examples. Turn on the audio with the toggle, then raise the gain slider, which starts muted.

- **compress:** Pick a source (a drum loop, a voice, plucks at random levels, or a microphone) and shape it. Bring Threshold down until the GR meter moves on the loud parts, then set Ratio, Attack and Release, and use Makeup (or Auto Makeup) to bring the level back. Try Dry/Wet at 50 % for parallel compression.
- **sidechain:** A drone goes into Left / Right and a drum loop into the Sidechain inlets, with Sidechain on, so the drone ducks on every hit. Turn Sidechain off and the ducking stops. Turn on "drums in the mix" to hear what it ducks against.
- **State outlet:** The compress tab's settings, read by name with [route] into number boxes. Move a dial and its number follows.

## <a name="Credits"></a>Credits

The soft-knee gain computer and dB-domain gain smoothing follow D. Giannoulis, M. Massberg and J. D. Reiss, "Digital Dynamic Range Compressor Design -- A Tutorial and Analysis", Journal of the Audio Engineering Society 60(6), 2012.
