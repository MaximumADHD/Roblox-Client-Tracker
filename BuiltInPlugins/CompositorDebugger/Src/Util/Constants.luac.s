PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 SETTABLE                         R6 R1 R6
        7 FORGLOOP                         R2 2 ; [-2]
        9 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K18 [{["EVENTS"], ["FOLDERS"], ["LAYER_TABS"], ["LAYERVIEW_ACTIONS"], ["INSTANCE_CHECK"], ["SETTINGS"], ["COMPOSITOR_ATTRIBUTE"] = "HasCompositor", ["DEFAULT_TIMECONTROLS_INTERVAL"] = 10, ["FRAMERATE"] = 60, ["SKIP_UI_FRAMES"], ["TIMECONTROLS_INVERVALS"], ["BLEND_TRAIL_LENGTH"] = 30, ["GIZMOS"]}]
        3 NEWTABLE                         R3 0 4
        5 LOADK                            R4 K19 ["DebugData"]
        6 LOADK                            R5 K20 ["PropertyOverrides"]
        7 LOADK                            R6 K21 ["DebugPose"]
        8 LOADK                            R7 K22 ["LayerSelection"]
        9 SETLIST                          R3 R4 4 [1]
       11 NEWTABLE                         R4 0 0
       13 MOVE                             R5 R3
       14 LOADNIL                          R6
       15 LOADNIL                          R7
       16 FORGPREP                         R5
       17 SETTABLE                         R9 R4 R9
       18 FORGLOOP                         R5 2 ; [-2]
       20 MOVE                             R2 R4
       21 SETTABLEKS                       R2 R1 K1 ["EVENTS"]
       23 DUPTABLE                         R2 K28 [{["CompositorDebugger"] = "__RobloxCompositorDebugger", ["Server"] = "Server", ["Client"] = "Client", ["Gizmos"] = "Gizmos"}]
       24 SETTABLEKS                       R2 R1 K2 ["FOLDERS"]
       26 NEWTABLE                         R3 0 4
       28 LOADK                            R4 K29 ["LayerData"]
       29 LOADK                            R5 K30 ["Visualization"]
       30 LOADK                            R6 K31 ["History"]
       31 LOADK                            R7 K32 ["RawData"]
       32 SETLIST                          R3 R4 4 [1]
       34 NEWTABLE                         R4 0 0
       36 MOVE                             R5 R3
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 FORGPREP                         R5
       40 SETTABLE                         R9 R4 R9
       41 FORGLOOP                         R5 2 ; [-2]
       43 MOVE                             R2 R4
       44 SETTABLEKS                       R2 R1 K3 ["LAYER_TABS"]
       46 NEWTABLE                         R3 0 3
       48 LOADK                            R4 K33 ["Clear"]
       49 LOADK                            R5 K31 ["History"]
       50 LOADK                            R6 K34 ["NoOp"]
       51 SETLIST                          R3 R4 3 [1]
       53 NEWTABLE                         R4 0 0
       55 MOVE                             R5 R3
       56 LOADNIL                          R6
       57 LOADNIL                          R7
       58 FORGPREP                         R5
       59 SETTABLE                         R9 R4 R9
       60 FORGLOOP                         R5 2 ; [-2]
       62 MOVE                             R2 R4
       63 SETTABLEKS                       R2 R1 K4 ["LAYERVIEW_ACTIONS"]
       65 NEWTABLE                         R3 0 4
       67 LOADK                            R4 K35 ["Valid"]
       68 LOADK                            R5 K36 ["MissingActor"]
       69 LOADK                            R6 K37 ["MissingHasCompositorAttribute"]
       70 LOADK                            R7 K38 ["WrongInstanceType"]
       71 SETLIST                          R3 R4 4 [1]
       73 NEWTABLE                         R4 0 0
       75 MOVE                             R5 R3
       76 LOADNIL                          R6
       77 LOADNIL                          R7
       78 FORGPREP                         R5
       79 SETTABLE                         R9 R4 R9
       80 FORGLOOP                         R5 2 ; [-2]
       82 MOVE                             R2 R4
       83 SETTABLEKS                       R2 R1 K5 ["INSTANCE_CHECK"]
       85 DUPTABLE                         R2 K47 [{["LayerFilters"] = "CD_LayerFilters", ["ActiveLayersFilter"] = "CD_ActiveLayersFilter", ["FrameBufferDuration"] = "CD_FrameBufferDuration", ["SkipUIFrames"] = "CD_SkipUIFrames"}]
       86 SETTABLEKS                       R2 R1 K6 ["SETTINGS"]
       88 NEWTABLE                         R2 0 5
       90 LOADN                            R3 0
       91 LOADN                            R4 1
       92 LOADN                            R5 2
       93 LOADN                            R6 5
       94 LOADN                            R7 10
       95 SETLIST                          R2 R3 5 [1]
       97 SETTABLEKS                       R2 R1 K13 ["SKIP_UI_FRAMES"]
       99 NEWTABLE                         R2 4 0
      101 DUPTABLE                         R3 K52 [{["Minor"] = 1, ["Major"] = 5}]
      102 SETTABLEN                        R3 R2 10
      103 DUPTABLE                         R3 K54 [{["Minor"] = 1, ["Medium"] = 5, ["Major"] = 10}]
      104 SETTABLEN                        R3 R2 30
      105 DUPTABLE                         R3 K55 [{["Minor"] = 5, ["Major"] = 10}]
      106 SETTABLEN                        R3 R2 60
      107 SETTABLEKS                       R2 R1 K14 ["TIMECONTROLS_INVERVALS"]
      109 DUPTABLE                         R2 K58 [{["SphereRadius"] = 0.05}]
      110 SETTABLEKS                       R2 R1 K17 ["GIZMOS"]
      112 RETURN                           R1 1
