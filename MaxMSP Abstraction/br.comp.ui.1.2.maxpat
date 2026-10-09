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
        "openrect": [
            85.0,
            104.0,
            246.0,
            128.0
        ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 246.0,
        "description": "br.comp.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: soft-knee gain computer and dB-domain gain smoothing from D. Giannoulis, M. Massberg and J. D. Reiss, \"Digital Dynamic Range Compressor Design -- A Tutorial and Analysis\", Journal of the Audio Engineering Society 60(6), 2012.",
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
                    "text": "br.comp.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: soft-knee gain computer and dB-domain gain smoothing from D. Giannoulis, M. Massberg and J. D. Reiss, \"Digital Dynamic Range Compressor Design -- A Tutorial and Analysis\", Journal of the Audio Engineering Society 60(6), 2012."
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
                    "comment": "Threshold (Float) -60 - 0 dB. Compression starts here (the middle of the knee). Default -18",
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
                    "comment": "Ratio (Float) 1 - 20, as N:1. 4 = every 4 dB over the threshold comes out as 1 dB. Default 4",
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
                    "comment": "Attack (Float) 0.1 - 200 ms. Time to clamp down when the level rises (63% of the move). Default 10",
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
                    "comment": "Release (Float) 5 - 2000 ms. Time to let go when the level falls (63% of the move). Default 150",
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
                    "comment": "Knee (Float) 0 - 24 dB. Width of the soft corner around the threshold; 0 = hard knee. Default 6",
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
                    "comment": "Makeup (Float) -12 - 24 dB. Gain after compression. Default 0",
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
                    "comment": "Auto Makeup (Int) 0/1. 1 = adds half the gain a 0 dBFS signal would lose, on top of Makeup. Default 0",
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
                    "comment": "Dry/Wet (Float) 0 - 100 %. Below 100 = parallel compression. Default 100",
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
                    "comment": "Detect (Float) 0 - 100 %. 0 = peak detector (fast, catches transients), 100 = RMS over 10 ms (follows loudness). Default 0",
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
                    "comment": "Sidechain (Int) 0/1. 1 = the detector listens to the Sidechain Left/Right inlets (the last two) instead of the audio (ducking). Crossfades, no click. Default 0",
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
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "id": "obj-16",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        165.0,
                        55.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        5.0,
                        25.0,
                        44.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                -18.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Threshold",
                            "parameter_mmax": 0.0,
                            "parameter_mmin": -60.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Threshold",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Threshold"
                }
            },
            {
                "box": {
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "id": "obj-18",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        240.0,
                        55.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        51.0,
                        25.0,
                        44.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 2.0,
                            "parameter_initial": [
                                4.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Ratio",
                            "parameter_mmax": 20.0,
                            "parameter_mmin": 1.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Ratio",
                            "parameter_type": 0,
                            "parameter_unitstyle": 1
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Ratio"
                }
            },
            {
                "box": {
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "id": "obj-20",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        315.0,
                        55.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        4.99999862909317,
                        76.0000022649765,
                        44.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                10.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Attack",
                            "parameter_mmax": 200.0,
                            "parameter_mmin": 0.1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Attack",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Attack"
                }
            },
            {
                "box": {
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "id": "obj-22",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        390.0,
                        55.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        51.0,
                        76.0000022649765,
                        44.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                150.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Release",
                            "parameter_mmax": 2000.0,
                            "parameter_mmin": 5.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Release",
                            "parameter_type": 0,
                            "parameter_unitstyle": 2
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Release"
                }
            },
            {
                "box": {
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "id": "obj-24",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        465.0,
                        55.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        97.0,
                        25.0,
                        44.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                6.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Knee",
                            "parameter_mmax": 24.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Knee",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Knee"
                }
            },
            {
                "box": {
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "id": "obj-26",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        540.0,
                        55.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        97.0,
                        76.0000022649765,
                        44.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Makeup",
                            "parameter_mmax": 24.0,
                            "parameter_mmin": -12.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Makeup",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Makeup"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        615.0,
                        70.0,
                        50.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        186.66667222976685,
                        51.00000151991844,
                        55.33333498239517,
                        30.333334237337112
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "val1",
                                "val2"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Auto Makeup",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Auto Makeup",
                            "parameter_type": 2
                        }
                    },
                    "text": "auto",
                    "texton": "auto",
                    "varname": "Auto Makeup"
                }
            },
            {
                "box": {
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "id": "obj-30",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        690.0,
                        55.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        143.0,
                        25.0,
                        44.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                100.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Dry/Wet",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Dry/Wet",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "DryWet"
                }
            },
            {
                "box": {
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "id": "obj-33",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        765.0,
                        55.0,
                        44.0,
                        48.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        143.0,
                        79.33333569765091,
                        44.0,
                        48.0
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Detect",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "RMS",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "varname": "Detect"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        840.0,
                        70.0,
                        58.0,
                        15.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        186.66667222976685,
                        84.66666918992996,
                        56.000001668930054,
                        39.33333307504654
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "val1",
                                "val2"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Sidechain",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Sidechain",
                            "parameter_type": 2
                        }
                    },
                    "text": "sidechain",
                    "texton": "sidechain",
                    "varname": "Sidechain"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "maxclass": "newobj",
                    "text": "br.comp.1.2",
                    "numinlets": 14,
                    "numoutlets": 3,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        7.175791144371033,
                        398.681329369545,
                        853.7142850160599,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-39",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        65.93406915664673,
                        512.967049241066,
                        401.0,
                        75.0
                    ],
                    "text": "[br.comp.1.2] is the real object: the gen~ lives inside it (one gen~, linked stereo; Dry/Wet and Detect go in as %). This file adds the dials, the GR meter and the State outlet: each control goes [t f f] -> [change] -> [prepend <name>] -> State (last)."
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
                        8.274692296981812,
                        469.0110031366348,
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
                        424.758229136467,
                        462.41759622097015,
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
                        917.0659455060959,
                        525.0549619197845,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-47",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        976.4066077470779,
                        518.4615550041199,
                        58.0,
                        22.0
                    ],
                    "text": "-~ 24."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-48",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        976.4066077470779,
                        549.2307872772217,
                        58.0,
                        22.0
                    ],
                    "text": "dbtoa~"
                }
            },
            {
                "box": {
                    "display_range": [
                        -24.0,
                        3.0
                    ],
                    "id": "obj-49",
                    "interval": 50,
                    "maxclass": "live.meter~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "orientation": 1,
                    "outlettype": [
                        "float",
                        "int"
                    ],
                    "patching_rect": [
                        976.4066077470779,
                        578.9011183977127,
                        200.0,
                        14.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        79.33333569765091,
                        4.0000001192092896,
                        124.0,
                        12.0
                    ],
                    "slidercolor": [
                        0.079348079365577,
                        0.07934804057877,
                        0.079348050547289,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        976.4066077470779,
                        604.1758449077606,
                        51.0,
                        22.0
                    ],
                    "text": "+ 24."
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-51",
                    "ignoreclick": 1,
                    "maxclass": "flonum",
                    "numdecimalplaces": 1,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "bang"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        976.4066077470779,
                        631.6483737230301,
                        50.0,
                        22.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        189.33333653211594,
                        25.0,
                        50.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-52",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1013.4396092616595,
                        878.9011330604553,
                        650.0,
                        20.0
                    ],
                    "text": "GR meter: gain reduction - 24 as a level, so 0 dB GR = empty and 24 dB GR = full; the number adds the 24 back"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-53",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1049.703347297815,
                        594.2857345342636,
                        90.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        72.6666688323021,
                        20.0
                    ],
                    "text": "compressor",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-54",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1149.703352185396,
                        594.2857345342636,
                        30.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        213.33333653211594,
                        1.1920928955078125e-07,
                        26.0,
                        20.0
                    ],
                    "text": "GR",
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "br.comp.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: soft-knee gain computer and dB-domain gain smoothing from D. Giannoulis, M. Massberg and J. D. Reiss, \"Digital Dynamic Range Compressor Design -- A Tutorial and Analysis\", Journal of the Audio Engineering Society 60(6), 2012.",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "hint": "br.comp.ui.1.2 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: soft-knee gain computer and dB-domain gain smoothing from D. Giannoulis, M. Massberg and J. D. Reiss, \"Digital Dynamic Range Compressor Design -- A Tutorial and Analysis\", Journal of the Audio Engineering Society 60(6), 2012.",
                    "id": "obj-55",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1235.4176420890367,
                        608.5714495182037,
                        128.0,
                        128.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        247.33334070444107,
                        130.6666705608368
                    ],
                    "rounded": 7
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-state",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        960.0,
                        470.0,
                        30.0,
                        30.0
                    ],
                    "comment": "State (Message): threshold <dB>, ratio, attack / release <ms>, knee / makeup <dB>, automakeup, drywet <%>, detect <%> and sidechain, sent the moment a control changes. Pick them out by name: [route threshold ratio attack release knee makeup automakeup drywet detect sidechain]"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st0t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        165.0,
                        115.0,
                        54.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st0c",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        165.0,
                        175.0,
                        84.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st0p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        245.0,
                        145.0,
                        22.0
                    ],
                    "text": "prepend threshold"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st1t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        240.0,
                        115.0,
                        54.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st1c",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        240.0,
                        205.0,
                        84.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st1p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        240.0,
                        275.0,
                        115.0,
                        22.0
                    ],
                    "text": "prepend ratio"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st2t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        315.0,
                        115.0,
                        54.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st2c",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        315.0,
                        175.0,
                        84.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st2p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        315.0,
                        245.0,
                        122.0,
                        22.0
                    ],
                    "text": "prepend attack"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st3t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        390.0,
                        115.0,
                        54.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st3c",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        390.0,
                        205.0,
                        84.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st3p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        390.0,
                        275.0,
                        130.0,
                        22.0
                    ],
                    "text": "prepend release"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st4t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        465.0,
                        115.0,
                        54.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st4c",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        465.0,
                        175.0,
                        84.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st4p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        465.0,
                        245.0,
                        107.0,
                        22.0
                    ],
                    "text": "prepend knee"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st5t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        540.0,
                        115.0,
                        54.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st5c",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        540.0,
                        205.0,
                        84.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st5p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        540.0,
                        275.0,
                        122.0,
                        22.0
                    ],
                    "text": "prepend makeup"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st6t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        615.0,
                        115.0,
                        54.0,
                        22.0
                    ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st6c",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        615.0,
                        175.0,
                        77.0,
                        22.0
                    ],
                    "text": "change 0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st6p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        615.0,
                        245.0,
                        140.0,
                        22.0
                    ],
                    "text": "prepend automakeup"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st7t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        690.0,
                        115.0,
                        54.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st7c",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        690.0,
                        205.0,
                        84.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st7p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        690.0,
                        275.0,
                        122.0,
                        22.0
                    ],
                    "text": "prepend drywet"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st8t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        765.0,
                        115.0,
                        54.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st8c",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        765.0,
                        175.0,
                        84.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st8p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        765.0,
                        245.0,
                        122.0,
                        22.0
                    ],
                    "text": "prepend detect"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st9t",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        840.0,
                        115.0,
                        54.0,
                        22.0
                    ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st9c",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        840.0,
                        205.0,
                        77.0,
                        22.0
                    ],
                    "text": "change 0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-st9p",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        840.0,
                        275.0,
                        145.0,
                        22.0
                    ],
                    "text": "prepend sidechain"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-28",
                        0
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
                        "obj-30",
                        0
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
                        "obj-33",
                        0
                    ],
                    "source": [
                        "obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-36",
                        0
                    ],
                    "source": [
                        "obj-13",
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
                        "obj-4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-48",
                        0
                    ],
                    "source": [
                        "obj-47",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-49",
                        0
                    ],
                    "source": [
                        "obj-48",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-50",
                        0
                    ],
                    "source": [
                        "obj-49",
                        0
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
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-51",
                        0
                    ],
                    "source": [
                        "obj-50",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-20",
                        0
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
                        "obj-22",
                        0
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
                        "obj-24",
                        0
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
                        "obj-26",
                        0
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
                        "obj-16",
                        0
                    ],
                    "destination": [
                        "obj-st0t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st0t",
                        0
                    ],
                    "destination": [
                        "obj-st0c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st0c",
                        0
                    ],
                    "destination": [
                        "obj-st0p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st0p",
                        0
                    ],
                    "destination": [
                        "obj-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-18",
                        0
                    ],
                    "destination": [
                        "obj-st1t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st1t",
                        0
                    ],
                    "destination": [
                        "obj-st1c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st1c",
                        0
                    ],
                    "destination": [
                        "obj-st1p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st1p",
                        0
                    ],
                    "destination": [
                        "obj-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-20",
                        0
                    ],
                    "destination": [
                        "obj-st2t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st2t",
                        0
                    ],
                    "destination": [
                        "obj-st2c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st2c",
                        0
                    ],
                    "destination": [
                        "obj-st2p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st2p",
                        0
                    ],
                    "destination": [
                        "obj-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-22",
                        0
                    ],
                    "destination": [
                        "obj-st3t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st3t",
                        0
                    ],
                    "destination": [
                        "obj-st3c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st3c",
                        0
                    ],
                    "destination": [
                        "obj-st3p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st3p",
                        0
                    ],
                    "destination": [
                        "obj-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-24",
                        0
                    ],
                    "destination": [
                        "obj-st4t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st4t",
                        0
                    ],
                    "destination": [
                        "obj-st4c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st4c",
                        0
                    ],
                    "destination": [
                        "obj-st4p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st4p",
                        0
                    ],
                    "destination": [
                        "obj-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-26",
                        0
                    ],
                    "destination": [
                        "obj-st5t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st5t",
                        0
                    ],
                    "destination": [
                        "obj-st5c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st5c",
                        0
                    ],
                    "destination": [
                        "obj-st5p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st5p",
                        0
                    ],
                    "destination": [
                        "obj-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-28",
                        0
                    ],
                    "destination": [
                        "obj-st6t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st6t",
                        0
                    ],
                    "destination": [
                        "obj-st6c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st6c",
                        0
                    ],
                    "destination": [
                        "obj-st6p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st6p",
                        0
                    ],
                    "destination": [
                        "obj-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-30",
                        0
                    ],
                    "destination": [
                        "obj-st7t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st7t",
                        0
                    ],
                    "destination": [
                        "obj-st7c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st7c",
                        0
                    ],
                    "destination": [
                        "obj-st7p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st7p",
                        0
                    ],
                    "destination": [
                        "obj-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-33",
                        0
                    ],
                    "destination": [
                        "obj-st8t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st8t",
                        0
                    ],
                    "destination": [
                        "obj-st8c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st8c",
                        0
                    ],
                    "destination": [
                        "obj-st8p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st8p",
                        0
                    ],
                    "destination": [
                        "obj-state",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-36",
                        0
                    ],
                    "destination": [
                        "obj-st9t",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st9t",
                        0
                    ],
                    "destination": [
                        "obj-st9c",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st9c",
                        0
                    ],
                    "destination": [
                        "obj-st9p",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st9p",
                        0
                    ],
                    "destination": [
                        "obj-state",
                        0
                    ]
                }
            },
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
                        12
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
                        13
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-st0t",
                        1
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
                        "obj-st1t",
                        1
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
                        "obj-st2t",
                        1
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
                        "obj-st3t",
                        1
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
                        "obj-st4t",
                        1
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
                        "obj-st5t",
                        1
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
                        "obj-st6t",
                        1
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
                        "obj-st7t",
                        1
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
                        "obj-st8t",
                        1
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
                        "obj-st9t",
                        1
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
            },
            {
                "patchline": {
                    "source": [
                        "obj-38",
                        2
                    ],
                    "destination": [
                        "obj-47",
                        0
                    ]
                }
            }
        ]
    }
}