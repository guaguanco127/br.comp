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
        "rect": [
            134.0,
            159.0,
            780.0,
            680.0
        ],
        "description": "br.comp.rnbo.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "autosave": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        218.0,
                        40.0,
                        520.0,
                        33.0
                    ],
                    "text": "br.comp.rnbo.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        38.0,
                        40.0,
                        150.0,
                        39.0
                    ],
                    "text": "Drop sample into here"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "",
                        "dictionary"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        38.0,
                        98.0,
                        150.0,
                        30.0
                    ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        61.0,
                        600.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        61.0,
                        450.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-7",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "in1",
                                "comment": "Left In (Signal) audio to compress"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "in2",
                                "comment": "Right In (Signal) audio to compress"
                            },
                            {
                                "type": "event",
                                "index": 3,
                                "tag": "in3",
                                "comment": "Threshold (Signal/Float) -60 - 0 dB. Compression starts here (the middle of the knee). Default -18"
                            },
                            {
                                "type": "event",
                                "index": 4,
                                "tag": "in4",
                                "comment": "Ratio (Signal/Float) 1 - 20, as N:1. 4 = every 4 dB over the threshold comes out as 1 dB. Default 4"
                            },
                            {
                                "type": "event",
                                "index": 5,
                                "tag": "in5",
                                "comment": "Attack (Signal/Float) 0.1 - 200 ms. Time to clamp down when the level rises (63% of the move). Default 10"
                            },
                            {
                                "type": "event",
                                "index": 6,
                                "tag": "in6",
                                "comment": "Release (Signal/Float) 5 - 2000 ms. Time to let go when the level falls (63% of the move). Default 150"
                            },
                            {
                                "type": "event",
                                "index": 7,
                                "tag": "in7",
                                "comment": "Knee (Signal/Float) 0 - 24 dB. Width of the soft corner around the threshold; 0 = hard knee. Default 6"
                            },
                            {
                                "type": "event",
                                "index": 8,
                                "tag": "in8",
                                "comment": "Makeup (Signal/Float) -12 - 24 dB. Gain after compression. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 9,
                                "tag": "in9",
                                "comment": "Auto Makeup (Signal/Int) 0/1. 1 = adds half the gain a 0 dBFS signal would lose, on top of Makeup. Default 0"
                            },
                            {
                                "type": "event",
                                "index": 10,
                                "tag": "in10",
                                "comment": "Dry/Wet (Signal/Float) 0 - 100 %. Below 100 = parallel compression. Default 100"
                            },
                            {
                                "type": "event",
                                "index": 11,
                                "tag": "in11",
                                "comment": "Detect (Signal/Float) 0 - 100 %. 0 = peak detector (fast, catches transients), 100 = RMS over 10 ms (follows loudness). Default 0"
                            },
                            {
                                "type": "event",
                                "index": 12,
                                "tag": "in12",
                                "comment": "Sidechain (Signal/Int) 0/1. 1 = the detector listens to the Sidechain Left/Right inlets (the last two) instead of the audio (ducking). Crossfades, no click. Default 0"
                            },
                            {
                                "type": "signal",
                                "index": 13,
                                "tag": "in13",
                                "comment": "Sidechain Left (Signal) what the detector listens to when Sidechain is on. Unconnected = silence"
                            },
                            {
                                "type": "signal",
                                "index": 14,
                                "tag": "in14",
                                "comment": "Sidechain Right (Signal) what the detector listens to when Sidechain is on. Unconnected = silence"
                            }
                        ]
                    },
                    "maxclass": "newobj",
                    "numinlets": 14,
                    "numoutlets": 4,
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "out1",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "out2",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 3,
                                "tag": "out3",
                                "comment": ""
                            }
                        ]
                    },
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "list"
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
                        "classnamespace": "rnbo",
                        "rect": [
                            100.0,
                            100.0,
                            1300.0,
                            480.0
                        ],
                        "default_fontname": "Lato",
                        "title": "untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-sin1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        20.0,
                                        190.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in~_obj-sin1",
                                    "text": "in~ 1 @comment \"Left In (Signal) audio to compress\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-sin2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        230.0,
                                        20.0,
                                        190.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in~_obj-sin2",
                                    "text": "in~ 2 @comment \"Right In (Signal) audio to compress\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-sin13",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        430.0,
                                        20.0,
                                        190.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "in~_obj-sin13",
                                    "text": "in~ 13 @comment \"Sidechain Left (Signal) what the detector listens to when Sidechain is on. Unconnected = silence\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-sin14",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        20.0,
                                        190.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "in~_obj-sin14",
                                    "text": "in~ 14 @comment \"Sidechain Right (Signal) what the detector listens to when Sidechain is on. Unconnected = silence\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gen",
                                    "maxclass": "newobj",
                                    "text": "gen~ @title br.comp.1.2",
                                    "numinlets": 14,
                                    "numoutlets": 3,
                                    "outlettype": [
                                        "signal",
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        260.0,
                                        1100.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "gen~",
                                    "rnbo_extra_attributes": {
                                        "exposeparams": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "br.comp.1.2",
                                    "varname": "br.comp.1.2",
                                    "genpatcher": {
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
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-ein3",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        830.0,
                                        70.0,
                                        190.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_obj-ein3",
                                    "text": "in 3 @comment \"Threshold (Signal/Float) -60 - 0 dB. Compression starts here (the middle of the knee). Default -18\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "pThreshold",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        830.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Threshold",
                                    "text": "param Threshold -18 @min -60.0 @max 0.0 @order 1",
                                    "varname": "Threshold"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-ein4",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1030.0,
                                        70.0,
                                        190.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in_obj-ein4",
                                    "text": "in 4 @comment \"Ratio (Signal/Float) 1 - 20; as N:1. 4 = every 4 dB over the threshold comes out as 1 dB. Default 4\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "pRatio",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1030.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 2.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "Ratio",
                                    "text": "param Ratio 4 @min 1.0 @max 20.0 @exponent 2.0 @order 2",
                                    "varname": "Ratio"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-ein5",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1230.0,
                                        70.0,
                                        190.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "in_obj-ein5",
                                    "text": "in 5 @comment \"Attack (Signal/Float) 0.1 - 200 ms. Time to clamp down when the level rises (63% of the move). Default 10\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "pAttack",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1230.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 3.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "Attack",
                                    "text": "param Attack 10 @min 0.1 @max 200.0 @exponent 3.0 @order 3",
                                    "varname": "Attack"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-ein6",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1430.0,
                                        70.0,
                                        190.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "in_obj-ein6",
                                    "text": "in 6 @comment \"Release (Signal/Float) 5 - 2000 ms. Time to let go when the level falls (63% of the move). Default 150\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "pRelease",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1430.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 3.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 4,
                                    "rnbo_uniqueid": "Release",
                                    "text": "param Release 150 @min 5.0 @max 2000.0 @exponent 3.0 @order 4",
                                    "varname": "Release"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-ein7",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1630.0,
                                        70.0,
                                        190.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 5,
                                    "rnbo_uniqueid": "in_obj-ein7",
                                    "text": "in 7 @comment \"Knee (Signal/Float) 0 - 24 dB. Width of the soft corner around the threshold; 0 = hard knee. Default 6\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "pKnee",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1630.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 5,
                                    "rnbo_uniqueid": "Knee",
                                    "text": "param Knee 6 @min 0.0 @max 24.0 @order 5",
                                    "varname": "Knee"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-ein8",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        1830.0,
                                        70.0,
                                        190.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 6,
                                    "rnbo_uniqueid": "in_obj-ein8",
                                    "text": "in 8 @comment \"Makeup (Signal/Float) -12 - 24 dB. Gain after compression. Default 0\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "pMakeup",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        1830.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 6,
                                    "rnbo_uniqueid": "Makeup",
                                    "text": "param Makeup 0 @min -12.0 @max 24.0 @order 6",
                                    "varname": "Makeup"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-ein9",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2030.0,
                                        70.0,
                                        190.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 7,
                                    "rnbo_uniqueid": "in_obj-ein9",
                                    "text": "in 9 @comment \"Auto Makeup (Signal/Int) 0/1. 1 = adds half the gain a 0 dBFS signal would lose; on top of Makeup. Default 0\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "pAuto_Makeup",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2030.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 2.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 7,
                                    "rnbo_uniqueid": "Auto_Makeup",
                                    "text": "param Auto_Makeup 0 @min 0 @max 1 @enum Off On @order 7",
                                    "varname": "Auto_Makeup"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-ein10",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2230.0,
                                        70.0,
                                        190.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 8,
                                    "rnbo_uniqueid": "in_obj-ein10",
                                    "text": "in 10 @comment \"Dry/Wet (Signal/Float) 0 - 100 %. Below 100 = parallel compression. Default 100\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "pDry_Wet",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2230.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 8,
                                    "rnbo_uniqueid": "Dry_Wet",
                                    "text": "param Dry_Wet 100 @min 0.0 @max 100.0 @order 8",
                                    "varname": "Dry_Wet"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-ein11",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2430.0,
                                        70.0,
                                        190.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 9,
                                    "rnbo_uniqueid": "in_obj-ein11",
                                    "text": "in 11 @comment \"Detect (Signal/Float) 0 - 100 %. 0 = peak detector (fast; catches transients); 100 = RMS over 10 ms (follows loudness). Default 0\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "pDetect",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2430.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 9,
                                    "rnbo_uniqueid": "Detect",
                                    "text": "param Detect 0 @min 0.0 @max 100.0 @order 9",
                                    "varname": "Detect"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-ein12",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        2630.0,
                                        70.0,
                                        190.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 10,
                                    "rnbo_uniqueid": "in_obj-ein12",
                                    "text": "in 12 @comment \"Sidechain (Signal/Int) 0/1. 1 = the detector listens to the Sidechain Left/Right inlets (the last two) instead of the audio (ducking). Crossfades; no click. Default 0\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "pSidechain",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        2630.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "fromnormalized": "",
                                        "exponent": 1.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 2.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 10,
                                    "rnbo_uniqueid": "Sidechain",
                                    "text": "param Sidechain 0 @min 0 @max 1 @enum Off On @order 10",
                                    "varname": "Sidechain"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-sout1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        320.0,
                                        200.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_obj-sout1",
                                    "text": "out~ 1 @comment \"Left Out (Signal)\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-sout2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        430.0,
                                        320.0,
                                        200.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "out~_obj-sout2",
                                    "text": "out~ 2 @comment \"Right Out (Signal)\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-sout3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        830.0,
                                        320.0,
                                        200.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 3,
                                    "rnbo_uniqueid": "out~_obj-sout3",
                                    "text": "out~ 3 @comment \"Gain Reduction (Signal) dB\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "linecount": 3,
                                    "patching_rect": [
                                        30.0,
                                        380.0,
                                        700.0,
                                        50.0
                                    ],
                                    "text": "gen~ code MUST MATCH br.comp.1.2 (open both: same gen~ patcher and codebox; Dry/Wet and Detect are % and scaled by * 0.01 inside). The ten params are the plugin parameters (VST/AU, web, external). Outlet 3 = gain reduction dB."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-ein3",
                                        0
                                    ],
                                    "destination": [
                                        "pThreshold",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pThreshold",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-ein4",
                                        0
                                    ],
                                    "destination": [
                                        "pRatio",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pRatio",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-ein5",
                                        0
                                    ],
                                    "destination": [
                                        "pAttack",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pAttack",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-ein6",
                                        0
                                    ],
                                    "destination": [
                                        "pRelease",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pRelease",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-ein7",
                                        0
                                    ],
                                    "destination": [
                                        "pKnee",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pKnee",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        8
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-ein8",
                                        0
                                    ],
                                    "destination": [
                                        "pMakeup",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pMakeup",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        9
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-ein9",
                                        0
                                    ],
                                    "destination": [
                                        "pAuto_Makeup",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pAuto_Makeup",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        10
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-ein10",
                                        0
                                    ],
                                    "destination": [
                                        "pDry_Wet",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pDry_Wet",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        11
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-ein11",
                                        0
                                    ],
                                    "destination": [
                                        "pDetect",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pDetect",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        12
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-ein12",
                                        0
                                    ],
                                    "destination": [
                                        "pSidechain",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pSidechain",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        13
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-sin1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-sin2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-sin13",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-sin14",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gen",
                                        0
                                    ],
                                    "destination": [
                                        "obj-sout1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gen",
                                        1
                                    ],
                                    "destination": [
                                        "obj-sout2",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gen",
                                        2
                                    ],
                                    "destination": [
                                        "obj-sout3",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        54.0,
                        400.0,
                        340.0,
                        22.0
                    ],
                    "rnboversion": "1.4.3",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "4e3e7739-4f67-4efb-8b9c-2237cfcbb24c"
                    },
                    "text": "rnbo~",
                    "varname": "rnbo~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-export",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "linecount": 4,
                    "patching_rect": [
                        420.0,
                        400.0,
                        340.0,
                        60.0
                    ],
                    "text": "EXPORT NAME: br.comp.1.2~\nMax External Export asks for a name: keep the ~ at the end. The sidechain is a second stereo audio input (in~ 13-14)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-attr0",
                    "maxclass": "attrui",
                    "attr": "Threshold",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        232.0,
                        90.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-attr1",
                    "maxclass": "attrui",
                    "attr": "Ratio",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        232.0,
                        114.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-attr2",
                    "maxclass": "attrui",
                    "attr": "Attack",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        232.0,
                        138.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-attr3",
                    "maxclass": "attrui",
                    "attr": "Release",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        232.0,
                        162.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-attr4",
                    "maxclass": "attrui",
                    "attr": "Knee",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        232.0,
                        186.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-attr5",
                    "maxclass": "attrui",
                    "attr": "Makeup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        232.0,
                        210.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-attr6",
                    "maxclass": "attrui",
                    "attr": "Auto_Makeup",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        232.0,
                        234.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-attr7",
                    "maxclass": "attrui",
                    "attr": "Dry_Wet",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        232.0,
                        258.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-attr8",
                    "maxclass": "attrui",
                    "attr": "Detect",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        232.0,
                        282.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-attr9",
                    "maxclass": "attrui",
                    "attr": "Sidechain",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        232.0,
                        306.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-grsnap",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        180.0,
                        450.0,
                        90.0,
                        22.0
                    ],
                    "text": "snapshot~ 100"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "format": 6,
                    "id": "obj-grnum",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        180.0,
                        475.0,
                        60.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-grn",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        245.0,
                        475.0,
                        130.0,
                        20.0
                    ],
                    "text": "gain reduction dB"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-scn",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "linecount": 2,
                    "patching_rect": [
                        420.0,
                        340.0,
                        340.0,
                        33.0
                    ],
                    "text": "Sidechain Left / Right = rnbo~ inlets 13 and 14 (signals). Turn Sidechain on to use them."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        1
                    ],
                    "destination": [
                        "obj-7",
                        1
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
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-7",
                        1
                    ],
                    "destination": [
                        "obj-5",
                        1
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
                        "obj-6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-5",
                        1
                    ],
                    "destination": [
                        "obj-6",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr0",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr1",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr2",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr3",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr4",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr5",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr6",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr7",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr8",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr9",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-7",
                        2
                    ],
                    "destination": [
                        "obj-grsnap",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-grsnap",
                        0
                    ],
                    "destination": [
                        "obj-grnum",
                        0
                    ]
                }
            }
        ]
    }
}