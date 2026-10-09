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
        "description": "br.comp.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: soft-knee gain computer and dB-domain gain smoothing from D. Giannoulis, M. Massberg and J. D. Reiss, \"Digital Dynamic Range Compressor Design -- A Tutorial and Analysis\", Journal of the Audio Engineering Society 60(6), 2012.",
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
                    "text": "br.comp.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: soft-knee gain computer and dB-domain gain smoothing from D. Giannoulis, M. Massberg and J. D. Reiss, \"Digital Dynamic Range Compressor Design -- A Tutorial and Analysis\", Journal of the Audio Engineering Society 60(6), 2012."
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
                            "parameter_longname": "Threshold[1]",
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
                            "parameter_longname": "Ratio[1]",
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
                            "parameter_longname": "Attack[1]",
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
                            "parameter_longname": "Release[1]",
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
                            "parameter_longname": "Knee[1]",
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
                            "parameter_longname": "Makeup[1]",
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
                            "parameter_longname": "Auto Makeup[1]",
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
                            "parameter_longname": "Dry/Wet[1]",
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
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        708.0,
                        320.0,
                        58.0,
                        22.0
                    ],
                    "text": "/ 100."
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
                            "parameter_longname": "Detect[1]",
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
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [
                        "float"
                    ],
                    "patching_rect": [
                        782.725278377533,
                        320.0,
                        58.0,
                        22.0
                    ],
                    "text": "/ 100."
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
                            "parameter_longname": "Sidechain[1]",
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
                                        30.0,
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
                                        130.0,
                                        20.0,
                                        30.0,
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
                                        210.0,
                                        20.0,
                                        30.0,
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
                                        290.0,
                                        20.0,
                                        30.0,
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
                                        370.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 5 @comment Threshold dB -60 to 0"
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
                                        450.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 6 @comment Ratio N:1 1 to 20"
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
                                        530.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 7 @comment Attack ms 0.1 to 200"
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
                                        610.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 8 @comment Release ms 5 to 2000"
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
                                        690.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 9 @comment Knee dB 0 to 24"
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
                                        770.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 10 @comment Makeup dB -12 to 24"
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
                                        850.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 11 @comment Auto makeup 0/1"
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
                                        930.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 12 @comment Dry/wet 0 to 1"
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
                                        1010.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 13 @comment Detect 0 peak to 1 RMS"
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
                                        1090.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 14 @comment Sidechain on 0/1"
                                }
                            },
                            {
                                "box": {
                                    "code": "// br.comp.1.1 -- linked stereo compressor (DSP = the tested internal br.comp.1.2)\n// Full idle mode: silent inputs + fully released + controls settled -> skip everything\n// Skips work that isn't needed:\n//   - constant math computed once, again only if the samplerate changes\n//   - attack/release coefficients recomputed only when attack/release move\n//   - below the knee: no log, gain reduction is exactly 0\n//   - fully released: no dbtoa, the output gain is cached\n// Every stored value is read first and written last, never read after a write.\n// in1/in2 audio L/R, in3/in4 sidechain key L/R\n// in5-in14 controls: send plain floats, no prepend, or signals\n// out1/out2 audio L/R, out3 gain reduction in dB, positive, 0 = none\n\n// detector + gain state\nHistory ms_env(0);\nHistory gr_db(0);\n// 10 ms smoothed controls\nHistory th_s(-18);\nHistory ra_s(4);\nHistory at_s(10);\nHistory re_s(150);\nHistory kn_s(6);\nHistory mk_s(0);\nHistory am_s(0);\nHistory dw_s(1);\nHistory de_s(0);\nHistory sc_s(0);\n// cached math and the values it was computed for\nHistory sr_last(0);\nHistory c10_c(0);\nHistory at_last(-1);\nHistory aa_c(0);\nHistory re_last(-1);\nHistory ar_c(0);\nHistory knee_key_th(1000);\nHistory knee_key_kn(-1);\nHistory klin_c(0);\nHistory base_last(-1000);\nHistory gst_c(1);\n// idle mode: raw control inputs last seen, and whether every smoother had reached its target\nHistory settled_s(0);\nHistory r5(0);\nHistory r6(0);\nHistory r7(0);\nHistory r8(0);\nHistory r9(0);\nHistory r10(0);\nHistory r11(0);\nHistory r12(0);\nHistory r13(0);\nHistory r14(0);\n\n// --- constants: once, and again if the samplerate changes ---\nsr = samplerate;\nsr_new = sr != sr_last;\nc10 = c10_c;\nif (sr_new) {\n    c10 = exp(-1 / mstosamps(10));\n}\n\n// --- idle test: silent, RMS below the knee, nothing moving ---\n// below the knee the gain computer is exactly 0, so the only live work is the release and RMS decay\nq = max(max(abs(in1), abs(in2)), max(abs(in3), abs(in4)));\nquiet = q < 0.000001;\nsame = in5 == r5 && in6 == r6 && in7 == r7 && in8 == r8 && in9 == r9 && in10 == r10 && in11 == r11 && in12 == r12 && in13 == r13 && in14 == r14;\nidle = quiet && same && settled_s > 0.5 && ms_env < klin_c * klin_c && !sr_new;\n\n// defaults = stored state, which is exactly what idle keeps\nthreshold = 0;\nratio = 0;\nattack = 0;\nrelease = 0;\nknee = 0;\nmakeup = 0;\nautomakeup = 0;\ndrywet = 0;\ndetect = 0;\nsidechain = 0;\nth = th_s;\nra = ra_s;\nat = at_s;\nre = re_s;\nkn = kn_s;\nmk = mk_s;\nam = am_s;\ndw = dw_s;\nde = de_s;\nsc = sc_s;\naa = aa_c;\nar = ar_c;\nw = 0;\nklin = klin_c;\nkl = 0;\nkr = 0;\npk = 0;\nms = 0;\nlvl = 0;\nslope = 0;\ngc = 0;\nx_db = 0;\nover = 0;\nk = 0;\ng_prev = 0;\ncoef = 0;\ng = 0;\nauto_db = 0;\nbase = base_last;\ngst = gst_c;\ngain = gst_c;\nsettled = settled_s;\n\nif (!idle) {\n    // --- controls from inlets, clamped to safe ranges ---\n    // an unset inlet reads 0: ratio clamps to 1 = no compression, drywet 0 = dry\n    threshold = clamp(in5, -60, 0);\n    ratio = clamp(in6, 1, 20);\n    attack = clamp(in7, 0.1, 200);\n    release = clamp(in8, 5, 2000);\n    knee = clamp(in9, 0, 24);\n    makeup = clamp(in10, -12, 24);\n    automakeup = clamp(in11, 0, 1);\n    drywet = clamp(in12, 0, 1);\n    detect = clamp(in13, 0, 1);\n    sidechain = clamp(in14, 0, 1);\n\n    // --- 10 ms smoothing that snaps exactly onto the target once within a hair ---\n    // snapping makes a settled control exactly constant, so the change tests below are exact\n    th = mix(threshold, th_s, c10);\n    th = abs(th - threshold) < 0.0001 ? threshold : th;\n    ra = mix(ratio, ra_s, c10);\n    ra = abs(ra - ratio) < 0.00001 ? ratio : ra;\n    at = mix(attack, at_s, c10);\n    at = abs(at - attack) < 0.0001 ? attack : at;\n    re = mix(release, re_s, c10);\n    re = abs(re - release) < 0.0001 ? release : re;\n    kn = mix(knee, kn_s, c10);\n    kn = abs(kn - knee) < 0.0001 ? knee : kn;\n    mk = mix(makeup, mk_s, c10);\n    mk = abs(mk - makeup) < 0.0001 ? makeup : mk;\n    am = mix(automakeup, am_s, c10);\n    am = abs(am - automakeup) < 0.000001 ? automakeup : am;\n    dw = mix(drywet, dw_s, c10);\n    dw = abs(dw - drywet) < 0.000001 ? drywet : dw;\n    de = mix(detect, de_s, c10);\n    de = abs(de - detect) < 0.000001 ? detect : de;\n    sc = mix(sidechain, sc_s, c10);\n    sc = abs(sc - sidechain) < 0.000001 ? sidechain : sc;\n\n    // --- attack/release coefficients: only when they move ---\n    aa = aa_c;\n    if (at != at_last || sr_new) {\n        aa = exp(-1 / mstosamps(at));\n    }\n    ar = ar_c;\n    if (re != re_last || sr_new) {\n        ar = exp(-1 / mstosamps(re));\n    }\n\n    // --- knee start as a plain level: only when threshold or knee move ---\n    w = max(kn, 0.001);\n    klin = klin_c;\n    if (th != knee_key_th || kn != knee_key_kn) {\n        klin = dbtoa(th - w * 0.5);\n    }\n\n    // --- detector key, crossfaded own input <-> sidechain; linked ---\n    kl = mix(in1, in3, sc);\n    kr = mix(in2, in4, sc);\n    pk = max(abs(kl), abs(kr));\n    ms = mix(pk * pk, ms_env, c10);\n    lvl = pk;\n    if (de > 0) {\n        lvl = mix(pk, sqrt(ms), de);\n    }\n\n    // --- gain computer: below the knee it is exactly 0, so the log is skipped ---\n    slope = 1 / ra - 1;\n    gc = 0;\n    x_db = 0;\n    over = 0;\n    k = 0;\n    if (lvl > klin) {\n        x_db = atodb(max(lvl, 0.000001));\n        over = x_db - th;\n        if (over >= w * 0.5) {\n            gc = slope * over;\n        } else {\n            k = over + w * 0.5;\n            gc = slope * k * k / (2 * w);\n        }\n    }\n\n    // --- attack/release smoothing on the gain, in dB ---\n    g_prev = gr_db;\n    coef = gc < g_prev ? aa : ar;\n    g = mix(gc, g_prev, coef);\n    // release finished: snap to exactly 0 so the output gain can be cached\n    g = (gc == 0 && g > -0.0001) ? 0 : g;\n\n    // --- makeup: when released, the gain is makeup only, cached until makeup moves ---\n    auto_db = am * -th * (1 - 1 / ra) * 0.5;\n    base = mk + auto_db;\n    // makeup-only gain, refreshed whenever makeup moves, so idle always has the current value\n    gst = gst_c;\n    if (base != base_last) {\n        gst = dbtoa(base);\n    }\n    gain = gst;\n    if (g != 0) {\n        gain = dbtoa(g + base);\n    }\n\n    // every smoother on target: allows idle next time\n    settled = th == threshold && ra == ratio && at == attack && re == release && kn == knee && mk == makeup && am == automakeup && dw == drywet && de == detect && sc == sidechain;\n} else {\n    // idle: release continues as a plain multiply because the gain computer is 0; RMS keeps decaying\n    ms = mix(q * q, ms_env, c10);\n    g = ar_c * gr_db;\n    g = g > -0.0001 ? 0 : g;\n    // input is below -120 dBFS here, so the makeup-only gain is exact to far below hearing\n    gain = gst_c;\n}\n\nout1 = mix(in1, in1 * gain, dw);\nout2 = mix(in2, in2 * gain, dw);\nout3 = -g;\n\n// --- write all state last ---\nms_env = ms;\ngr_db = g;\nth_s = th;\nra_s = ra;\nat_s = at;\nre_s = re;\nkn_s = kn;\nmk_s = mk;\nam_s = am;\ndw_s = dw;\nde_s = de;\nsc_s = sc;\nsr_last = sr;\nc10_c = c10;\nat_last = at;\naa_c = aa;\nre_last = re;\nar_c = ar;\nknee_key_th = th;\nknee_key_kn = kn;\nklin_c = klin;\nbase_last = base;\ngst_c = gst;\nsettled_s = settled;\nr5 = in5;\nr6 = in6;\nr7 = in7;\nr8 = in8;\nr9 = in9;\nr10 = in10;\nr11 = in11;\nr12 = in12;\nr13 = in13;\nr14 = in14;\n",
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
                                        80.0,
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
                                        320.0,
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
                                        320.0,
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
                                        320.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "out 3 @comment Gain reduction dB"
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
                                        11
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
                                        "obj-15",
                                        12
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
                            }
                        ]
                    },
                    "patching_rect": [
                        7.175791144371033,
                        398.681329369545,
                        853.7142850160599,
                        22.0
                    ],
                    "text": "gen~ @title br.comp.1.1",
                    "varname": "br_comp"
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
                    "text": "one gen~, linked stereo: the louder of L/R (or of the sidechain pair) drives both channels. gen~ inputs: 1-2 audio, 3-4 sidechain, 5-14 controls (outer inlets 13-14 are the sidechain) Each control also goes [t f f] -> [change] -> [prepend <name>] -> the State outlet (last): the panel's settings as named messages."
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
                    "annotation": "br.comp.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: soft-knee gain computer and dB-domain gain smoothing from D. Giannoulis, M. Massberg and J. D. Reiss, \"Digital Dynamic Range Compressor Design -- A Tutorial and Analysis\", Journal of the Audio Engineering Society 60(6), 2012.",
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
                    "hint": "br.comp.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: soft-knee gain computer and dB-domain gain smoothing from D. Giannoulis, M. Massberg and J. D. Reiss, \"Digital Dynamic Range Compressor Design -- A Tutorial and Analysis\", Journal of the Audio Engineering Society 60(6), 2012.",
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
                        "obj-38",
                        2
                    ],
                    "midpoints": [
                        924.5,
                        170.4706218226711,
                        145.0933734545341,
                        170.4706218226711
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
                        "obj-38",
                        3
                    ],
                    "midpoints": [
                        999.5,
                        193.95557612771154,
                        209.30216460961563,
                        193.95557612771154
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
                        "obj-38",
                        0
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
                        "obj-38",
                        1
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
                        "obj-38",
                        11
                    ],
                    "source": [
                        "obj-32",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-38",
                        12
                    ],
                    "source": [
                        "obj-35",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-44",
                        0
                    ],
                    "source": [
                        "obj-38",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-45",
                        0
                    ],
                    "source": [
                        "obj-38",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-46",
                        0
                    ],
                    "order": 1,
                    "source": [
                        "obj-38",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-47",
                        0
                    ],
                    "order": 0,
                    "source": [
                        "obj-38",
                        2
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
                        1
                    ],
                    "destination": [
                        "obj-32",
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
                        1
                    ],
                    "destination": [
                        "obj-35",
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
                        1
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
            }
        ]
    }
}