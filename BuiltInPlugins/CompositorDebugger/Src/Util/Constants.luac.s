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
       11 NEWTABLE                         R2 0 0
       13 MOVE                             R4 R3
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 SETTABLE                         R8 R2 R8
       18 FORGLOOP                         R4 2 ; [-2]
       20 SETTABLEKS                       R2 R1 K1 ["EVENTS"]
       22 DUPTABLE                         R2 K28 [{["CompositorDebugger"] = "__RobloxCompositorDebugger", ["Server"] = "Server", ["Client"] = "Client", ["Gizmos"] = "Gizmos"}]
       23 SETTABLEKS                       R2 R1 K2 ["FOLDERS"]
       25 NEWTABLE                         R3 0 4
       27 LOADK                            R4 K29 ["LayerData"]
       28 LOADK                            R5 K30 ["Visualization"]
       29 LOADK                            R6 K31 ["History"]
       30 LOADK                            R7 K32 ["RawData"]
       31 SETLIST                          R3 R4 4 [1]
       33 NEWTABLE                         R2 0 0
       35 MOVE                             R4 R3
       36 LOADNIL                          R5
       37 LOADNIL                          R6
       38 FORGPREP                         R4
       39 SETTABLE                         R8 R2 R8
       40 FORGLOOP                         R4 2 ; [-2]
       42 SETTABLEKS                       R2 R1 K3 ["LAYER_TABS"]
       44 NEWTABLE                         R3 0 3
       46 LOADK                            R4 K33 ["Clear"]
       47 LOADK                            R5 K31 ["History"]
       48 LOADK                            R6 K34 ["NoOp"]
       49 SETLIST                          R3 R4 3 [1]
       51 NEWTABLE                         R2 0 0
       53 MOVE                             R4 R3
       54 LOADNIL                          R5
       55 LOADNIL                          R6
       56 FORGPREP                         R4
       57 SETTABLE                         R8 R2 R8
       58 FORGLOOP                         R4 2 ; [-2]
       60 SETTABLEKS                       R2 R1 K4 ["LAYERVIEW_ACTIONS"]
       62 NEWTABLE                         R3 0 4
       64 LOADK                            R4 K35 ["Valid"]
       65 LOADK                            R5 K36 ["MissingActor"]
       66 LOADK                            R6 K37 ["MissingHasCompositorAttribute"]
       67 LOADK                            R7 K38 ["WrongInstanceType"]
       68 SETLIST                          R3 R4 4 [1]
       70 NEWTABLE                         R2 0 0
       72 MOVE                             R4 R3
       73 LOADNIL                          R5
       74 LOADNIL                          R6
       75 FORGPREP                         R4
       76 SETTABLE                         R8 R2 R8
       77 FORGLOOP                         R4 2 ; [-2]
       79 SETTABLEKS                       R2 R1 K5 ["INSTANCE_CHECK"]
       81 DUPTABLE                         R2 K47 [{["LayerFilters"] = "CD_LayerFilters", ["ActiveLayersFilter"] = "CD_ActiveLayersFilter", ["FrameBufferDuration"] = "CD_FrameBufferDuration", ["SkipUIFrames"] = "CD_SkipUIFrames"}]
       82 SETTABLEKS                       R2 R1 K6 ["SETTINGS"]
       84 NEWTABLE                         R2 0 5
       86 LOADN                            R3 0
       87 LOADN                            R4 1
       88 LOADN                            R5 2
       89 LOADN                            R6 5
       90 LOADN                            R7 10
       91 SETLIST                          R2 R3 5 [1]
       93 SETTABLEKS                       R2 R1 K13 ["SKIP_UI_FRAMES"]
       95 NEWTABLE                         R2 4 0
       97 DUPTABLE                         R3 K52 [{["Minor"] = 1, ["Major"] = 5}]
       98 SETTABLEN                        R3 R2 10
       99 DUPTABLE                         R3 K54 [{["Minor"] = 1, ["Medium"] = 5, ["Major"] = 10}]
      100 SETTABLEN                        R3 R2 30
      101 DUPTABLE                         R3 K55 [{["Minor"] = 5, ["Major"] = 10}]
      102 SETTABLEN                        R3 R2 60
      103 SETTABLEKS                       R2 R1 K14 ["TIMECONTROLS_INVERVALS"]
      105 DUPTABLE                         R2 K58 [{["SphereRadius"] = 0.05}]
      106 SETTABLEKS                       R2 R1 K17 ["GIZMOS"]
      108 RETURN                           R1 1
