{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "openinpresentation": 0,
        "description": "br.comp.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: soft-knee gain computer and dB-domain gain smoothing from D. Giannoulis, M. Massberg and J. D. Reiss, \"Digital Dynamic Range Compressor Design -- A Tutorial and Analysis\", Journal of the Audio Engineering Society 60(6), 2012.",
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1050.0,
                        15.0,
                        662.0,
                        60.0
                    ],
                    "text": "br.comp.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: soft-knee gain computer and dB-domain gain smoothing from D. Giannoulis, M. Massberg and J. D. Reiss, \"Digital Dynamic Range Compressor Design -- A Tutorial and Analysis\", Journal of the Audio Engineering Society 60(6), 2012."
                }
            },
            {
                "box": {
                    "comment": "Left In (Signal) audio to compress",
                    "id": "obj-2",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right In (Signal) audio to compress",
                    "id": "obj-3",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Threshold (Signal/Float) -60 - 0 dB. Compression starts here (the middle of the knee). Default -18",
                    "id": "obj-4",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Ratio (Signal/Float) 1 - 20, as N:1. 4 = every 4 dB over the threshold comes out as 1 dB. Default 4",
                    "id": "obj-5",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Attack (Signal/Float) 0.1 - 200 ms. Time to clamp down when the level rises (63% of the move). Default 10",
                    "id": "obj-6",
                    "index": 5,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        315.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Release (Signal/Float) 5 - 2000 ms. Time to let go when the level falls (63% of the move). Default 150",
                    "id": "obj-7",
                    "index": 6,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Knee (Signal/Float) 0 - 24 dB. Width of the soft corner around the threshold; 0 = hard knee. Default 6",
                    "id": "obj-8",
                    "index": 7,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        465.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Makeup (Signal/Float) -12 - 24 dB. Gain after compression. Default 0",
                    "id": "obj-9",
                    "index": 8,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        540.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Auto Makeup (Signal/Int) 0/1. 1 = adds half the gain a 0 dBFS signal would lose, on top of Makeup. Default 0",
                    "id": "obj-10",
                    "index": 9,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        615.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Dry/Wet (Signal/Float) 0 - 100 %. Below 100 = parallel compression. Default 100",
                    "id": "obj-11",
                    "index": 10,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        690.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Detect (Signal/Float) 0 - 100 %. 0 = peak detector (fast, catches transients), 100 = RMS over 10 ms (follows loudness). Default 0",
                    "id": "obj-12",
                    "index": 11,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        765.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Sidechain (Signal/Int) 0/1. 1 = the detector listens to the Sidechain Left/Right inlets (the last two) instead of the audio (ducking). Crossfades, no click. Default 0",
                    "id": "obj-13",
                    "index": 12,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        840.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Sidechain Left (Signal) what the detector listens to when Sidechain is on. Unconnected = silence",
                    "id": "obj-14",
                    "index": 13,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        915.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Sidechain Right (Signal) what the detector listens to when Sidechain is on. Unconnected = silence",
                    "id": "obj-15",
                    "index": 14,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        990.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-38",
                    "maxclass": "newobj",
                    "numinlets": 14,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [
                            100.0,
                            100.0,
                            600.0,
                            450.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-1",
                                    "linecount": 7,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        20.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 1 @comment Audio L"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "linecount": 7,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        265.0,
                                        20.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 2 @comment Audio R"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "linecount": 10,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        480.0,
                                        20.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 3 @comment Sidechain key L"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-4",
                                    "linecount": 10,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        695.0,
                                        20.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 4 @comment Sidechain key R"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-5",
                                    "linecount": 11,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        50.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 5 @comment Threshold dB -60 to 0 @default -18"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "linecount": 10,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        265.0,
                                        50.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 6 @comment Ratio N:1 1 to 20 @default 4"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-7",
                                    "linecount": 11,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        480.0,
                                        50.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 7 @comment Attack ms 0.1 to 200 @default 10"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-8",
                                    "linecount": 12,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        695.0,
                                        50.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 8 @comment Release ms 5 to 2000 @default 150"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-9",
                                    "linecount": 10,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        910.0,
                                        50.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 9 @comment Knee dB 0 to 24 @default 6"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-10",
                                    "linecount": 13,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        80.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 10 @comment Makeup dB -12 to 24 @default 0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-11",
                                    "linecount": 12,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        265.0,
                                        80.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 11 @comment Auto makeup 0/1 @default 0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-12",
                                    "linecount": 10,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        480.0,
                                        80.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 12 @comment Dry/wet % 0 to 100 @default 100"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-13",
                                    "linecount": 14,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        695.0,
                                        80.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 13 @comment Detect % 0 peak to 100 RMS @default 0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-14",
                                    "linecount": 11,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        910.0,
                                        80.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "in 14 @comment Sidechain on 0/1 @default 0"
                                }
                            },
                            {
                                "box": {
                                    "code": "// br.comp.1.2 -- linked stereo compressor (DSP = the tested internal br.comp.1.2)\n// Full idle mode: silent inputs + fully released + controls settled -> skip everything\n// Skips work that isn't needed:\n//   - constant math computed once, again only if the samplerate changes\n//   - attack/release coefficients recomputed only when attack/release move\n//   - below the knee: no log, gain reduction is exactly 0\n//   - fully released: no dbtoa, the output gain is cached\n// Every stored value is read first and written last, never read after a write.\n// in1/in2 audio L/R, in3/in4 sidechain key L/R\n// in5-in14 controls: send plain floats, no prepend, or signals\n// in12 dry/wet and in13 detect arrive 0-1: the patcher scales the % inputs by * 0.01\n// out1/out2 audio L/R, out3 gain reduction in dB, positive, 0 = none\n\n// detector + gain state\nHistory ms_env(0);\nHistory gr_db(0);\n// 10 ms smoothed controls\nHistory th_s(-18);\nHistory ra_s(4);\nHistory at_s(10);\nHistory re_s(150);\nHistory kn_s(6);\nHistory mk_s(0);\nHistory am_s(0);\nHistory dw_s(1);\nHistory de_s(0);\nHistory sc_s(0);\n// cached math and the values it was computed for\nHistory sr_last(0);\nHistory c10_c(0);\nHistory at_last(-1);\nHistory aa_c(0);\nHistory re_last(-1);\nHistory ar_c(0);\nHistory knee_key_th(1000);\nHistory knee_key_kn(-1);\nHistory klin_c(0);\nHistory base_last(-1000);\nHistory gst_c(1);\n// idle mode: raw control inputs last seen, and whether every smoother had reached its target\nHistory settled_s(0);\nHistory r5(0);\nHistory r6(0);\nHistory r7(0);\nHistory r8(0);\nHistory r9(0);\nHistory r10(0);\nHistory r11(0);\nHistory r12(0);\nHistory r13(0);\nHistory r14(0);\n\n// --- constants: once, and again if the samplerate changes ---\nsr = samplerate;\nsr_new = sr != sr_last;\nc10 = c10_c;\nif (sr_new) {\n    c10 = exp(-1 / mstosamps(10));\n}\n\n// --- idle test: silent, RMS below the knee, nothing moving ---\n// below the knee the gain computer is exactly 0, so the only live work is the release and RMS decay\nq = max(max(abs(in1), abs(in2)), max(abs(in3), abs(in4)));\nquiet = q < 0.000001;\nsame = in5 == r5 && in6 == r6 && in7 == r7 && in8 == r8 && in9 == r9 && in10 == r10 && in11 == r11 && in12 == r12 && in13 == r13 && in14 == r14;\nidle = quiet && same && settled_s > 0.5 && ms_env < klin_c * klin_c && !sr_new;\n\n// defaults = stored state, which is exactly what idle keeps\nthreshold = 0;\nratio = 0;\nattack = 0;\nrelease = 0;\nknee = 0;\nmakeup = 0;\nautomakeup = 0;\ndrywet = 0;\ndetect = 0;\nsidechain = 0;\nth = th_s;\nra = ra_s;\nat = at_s;\nre = re_s;\nkn = kn_s;\nmk = mk_s;\nam = am_s;\ndw = dw_s;\nde = de_s;\nsc = sc_s;\naa = aa_c;\nar = ar_c;\nw = 0;\nklin = klin_c;\nkl = 0;\nkr = 0;\npk = 0;\nms = 0;\nlvl = 0;\nslope = 0;\ngc = 0;\nx_db = 0;\nover = 0;\nk = 0;\ng_prev = 0;\ncoef = 0;\ng = 0;\nauto_db = 0;\nbase = base_last;\ngst = gst_c;\ngain = gst_c;\nsettled = settled_s;\n\nif (!idle) {\n    // --- controls from inlets, clamped to safe ranges ---\n    // an unset inlet reads 0: ratio clamps to 1 = no compression, drywet 0 = dry\n    threshold = clamp(in5, -60, 0);\n    ratio = clamp(in6, 1, 20);\n    attack = clamp(in7, 0.1, 200);\n    release = clamp(in8, 5, 2000);\n    knee = clamp(in9, 0, 24);\n    makeup = clamp(in10, -12, 24);\n    automakeup = clamp(in11, 0, 1);\n    drywet = clamp(in12, 0, 1);\n    detect = clamp(in13, 0, 1);\n    sidechain = clamp(in14, 0, 1);\n\n    // --- 10 ms smoothing that snaps exactly onto the target once within a hair ---\n    // snapping makes a settled control exactly constant, so the change tests below are exact\n    th = mix(threshold, th_s, c10);\n    th = abs(th - threshold) < 0.0001 ? threshold : th;\n    ra = mix(ratio, ra_s, c10);\n    ra = abs(ra - ratio) < 0.00001 ? ratio : ra;\n    at = mix(attack, at_s, c10);\n    at = abs(at - attack) < 0.0001 ? attack : at;\n    re = mix(release, re_s, c10);\n    re = abs(re - release) < 0.0001 ? release : re;\n    kn = mix(knee, kn_s, c10);\n    kn = abs(kn - knee) < 0.0001 ? knee : kn;\n    mk = mix(makeup, mk_s, c10);\n    mk = abs(mk - makeup) < 0.0001 ? makeup : mk;\n    am = mix(automakeup, am_s, c10);\n    am = abs(am - automakeup) < 0.000001 ? automakeup : am;\n    dw = mix(drywet, dw_s, c10);\n    dw = abs(dw - drywet) < 0.000001 ? drywet : dw;\n    de = mix(detect, de_s, c10);\n    de = abs(de - detect) < 0.000001 ? detect : de;\n    sc = mix(sidechain, sc_s, c10);\n    sc = abs(sc - sidechain) < 0.000001 ? sidechain : sc;\n\n    // --- attack/release coefficients: only when they move ---\n    aa = aa_c;\n    if (at != at_last || sr_new) {\n        aa = exp(-1 / mstosamps(at));\n    }\n    ar = ar_c;\n    if (re != re_last || sr_new) {\n        ar = exp(-1 / mstosamps(re));\n    }\n\n    // --- knee start as a plain level: only when threshold or knee move ---\n    w = max(kn, 0.001);\n    klin = klin_c;\n    if (th != knee_key_th || kn != knee_key_kn) {\n        klin = dbtoa(th - w * 0.5);\n    }\n\n    // --- detector key, crossfaded own input <-> sidechain; linked ---\n    kl = mix(in1, in3, sc);\n    kr = mix(in2, in4, sc);\n    pk = max(abs(kl), abs(kr));\n    ms = mix(pk * pk, ms_env, c10);\n    lvl = pk;\n    if (de > 0) {\n        lvl = mix(pk, sqrt(ms), de);\n    }\n\n    // --- gain computer: below the knee it is exactly 0, so the log is skipped ---\n    slope = 1 / ra - 1;\n    gc = 0;\n    x_db = 0;\n    over = 0;\n    k = 0;\n    if (lvl > klin) {\n        x_db = atodb(max(lvl, 0.000001));\n        over = x_db - th;\n        if (over >= w * 0.5) {\n            gc = slope * over;\n        } else {\n            k = over + w * 0.5;\n            gc = slope * k * k / (2 * w);\n        }\n    }\n\n    // --- attack/release smoothing on the gain, in dB ---\n    g_prev = gr_db;\n    coef = gc < g_prev ? aa : ar;\n    g = mix(gc, g_prev, coef);\n    // release finished: snap to exactly 0 so the output gain can be cached\n    g = (gc == 0 && g > -0.0001) ? 0 : g;\n\n    // --- makeup: when released, the gain is makeup only, cached until makeup moves ---\n    auto_db = am * -th * (1 - 1 / ra) * 0.5;\n    base = mk + auto_db;\n    // makeup-only gain, refreshed whenever makeup moves, so idle always has the current value\n    gst = gst_c;\n    if (base != base_last) {\n        gst = dbtoa(base);\n    }\n    gain = gst;\n    if (g != 0) {\n        gain = dbtoa(g + base);\n    }\n\n    // every smoother on target: allows idle next time\n    settled = th == threshold && ra == ratio && at == attack && re == release && kn == knee && mk == makeup && am == automakeup && dw == drywet && de == detect && sc == sidechain;\n} else {\n    // idle: release continues as a plain multiply because the gain computer is 0; RMS keeps decaying\n    ms = mix(q * q, ms_env, c10);\n    g = ar_c * gr_db;\n    g = g > -0.0001 ? 0 : g;\n    // input is below -120 dBFS here, so the makeup-only gain is exact to far below hearing\n    gain = gst_c;\n}\n\nout1 = mix(in1, in1 * gain, dw);\nout2 = mix(in2, in2 * gain, dw);\nout3 = -g;\n\n// --- write all state last ---\nms_env = ms;\ngr_db = g;\nth_s = th;\nra_s = ra;\nat_s = at;\nre_s = re;\nkn_s = kn;\nmk_s = mk;\nam_s = am;\ndw_s = dw;\nde_s = de;\nsc_s = sc;\nsr_last = sr;\nc10_c = c10;\nat_last = at;\naa_c = aa;\nre_last = re;\nar_c = ar;\nknee_key_th = th;\nknee_key_kn = kn;\nklin_c = klin;\nbase_last = base;\ngst_c = gst;\nsettled_s = settled;\nr5 = in5;\nr6 = in6;\nr7 = in7;\nr8 = in8;\nr9 = in9;\nr10 = in10;\nr11 = in11;\nr12 = in12;\nr13 = in13;\nr14 = in14;\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-15",
                                    "maxclass": "codebox",
                                    "numinlets": 14,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "",
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        50.0,
                                        160.0,
                                        400.0,
                                        200.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-16",
                                    "linecount": 8,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        50.0,
                                        400.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "out 1 @comment Audio L"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-17",
                                    "linecount": 8,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        130.0,
                                        400.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "out 2 @comment Audio R"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-18",
                                    "linecount": 12,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        210.0,
                                        400.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "out 3 @comment Gain reduction dB"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-pct12",
                                    "maxclass": "newobj",
                                    "text": "* 0.01",
                                    "patching_rect": [
                                        480.0,
                                        115.0,
                                        60.0,
                                        22.0
                                    ],
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-pct13",
                                    "maxclass": "newobj",
                                    "text": "* 0.01",
                                    "patching_rect": [
                                        695.0,
                                        115.0,
                                        60.0,
                                        22.0
                                    ],
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        0
                                    ],
                                    "source": [
                                        "obj-1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        9
                                    ],
                                    "source": [
                                        "obj-10",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        10
                                    ],
                                    "source": [
                                        "obj-11",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        13
                                    ],
                                    "source": [
                                        "obj-14",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-16",
                                        0
                                    ],
                                    "source": [
                                        "obj-15",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-17",
                                        0
                                    ],
                                    "source": [
                                        "obj-15",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-18",
                                        0
                                    ],
                                    "source": [
                                        "obj-15",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        1
                                    ],
                                    "source": [
                                        "obj-2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        2
                                    ],
                                    "source": [
                                        "obj-3",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        3
                                    ],
                                    "source": [
                                        "obj-4",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        4
                                    ],
                                    "source": [
                                        "obj-5",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        5
                                    ],
                                    "source": [
                                        "obj-6",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        6
                                    ],
                                    "source": [
                                        "obj-7",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        7
                                    ],
                                    "source": [
                                        "obj-8",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [
                                        "obj-15",
                                        8
                                    ],
                                    "source": [
                                        "obj-9",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-12",
                                        0
                                    ],
                                    "destination": [
                                        "obj-pct12",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-pct12",
                                        0
                                    ],
                                    "destination": [
                                        "obj-15",
                                        11
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-13",
                                        0
                                    ],
                                    "destination": [
                                        "obj-pct13",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-pct13",
                                        0
                                    ],
                                    "destination": [
                                        "obj-15",
                                        12
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        15.0,
                        80.0,
                        1000.0,
                        22.0
                    ],
                    "text": "gen~ @title br.comp.1.2",
                    "varname": "br_comp"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-39",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        180.0,
                        560.0,
                        33.0
                    ],
                    "text": "one gen~, linked stereo: the louder of L/R (or of the sidechain pair) drives both channels. gen~ inputs: 1-2 audio, 3-4 sidechain, 5-14 controls (outer inlets 13-14 are the sidechain)."
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal) compressed audio",
                    "id": "obj-44",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        130.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal) compressed audio",
                    "id": "obj-45",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        500.0,
                        130.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Gain Reduction (Signal) in dB, positive: 0 = none, 6 = turned down 6 dB. For meters or ducking other things",
                    "id": "obj-46",
                    "index": 3,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        985.0,
                        130.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-why",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        600.0,
                        180.0,
                        450.0,
                        60.0
                    ],
                    "text": "The plain object: every control inlet goes straight into gen~, so it takes numbers OR signals (an LFO on Dry/Wet, a fader, another patch's output). Unconnected inlets sit at the defaults; every control glides 10 ms inside gen~, so jumps never click. [br.comp.ui.1.2] wraps this file with dials, the GR meter and the State outlet.",
                    "linecount": 4
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-2",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-3",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-14",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-15",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-4",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-5",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-6",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-7",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-8",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-10",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        10
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-11",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        11
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-12",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        12
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-13",
                        0
                    ],
                    "destination": [
                        "obj-38",
                        13
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-38",
                        0
                    ],
                    "destination": [
                        "obj-44",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-38",
                        1
                    ],
                    "destination": [
                        "obj-45",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-38",
                        2
                    ],
                    "destination": [
                        "obj-46",
                        0
                    ]
                }
            }
        ]
    }
}