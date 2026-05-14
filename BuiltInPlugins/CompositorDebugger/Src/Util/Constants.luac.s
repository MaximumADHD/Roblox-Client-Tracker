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
        2 DUPTABLE                         R1 K14 [{"EVENTS", "FOLDERS", "LAYER_TABS", "LAYERVIEW_ACTIONS", "INSTANCE_CHECK", "SETTINGS", "COMPOSITOR_ATTRIBUTE", "DEFAULT_TIMECONTROLS_INTERVAL", "FRAMERATE", "SKIP_UI_FRAMES", "TIMECONTROLS_INVERVALS", "BLEND_TRAIL_LENGTH", "GIZMOS"}]
        3 NEWTABLE                         R3 0 4
        5 LOADK                            R4 K15 ["DebugData"]
        6 LOADK                            R5 K16 ["PropertyOverrides"]
        7 LOADK                            R6 K17 ["DebugPose"]
        8 LOADK                            R7 K18 ["LayerSelection"]
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
       23 DUPTABLE                         R2 K23 [{"CompositorDebugger", "Server", "Client", "Gizmos"}]
       24 LOADK                            R3 K24 ["__RobloxCompositorDebugger"]
       25 SETTABLEKS                       R3 R2 K19 ["CompositorDebugger"]
       27 LOADK                            R3 K20 ["Server"]
       28 SETTABLEKS                       R3 R2 K20 ["Server"]
       30 LOADK                            R3 K21 ["Client"]
       31 SETTABLEKS                       R3 R2 K21 ["Client"]
       33 LOADK                            R3 K22 ["Gizmos"]
       34 SETTABLEKS                       R3 R2 K22 ["Gizmos"]
       36 SETTABLEKS                       R2 R1 K2 ["FOLDERS"]
       38 NEWTABLE                         R3 0 4
       40 LOADK                            R4 K25 ["LayerData"]
       41 LOADK                            R5 K26 ["Visualization"]
       42 LOADK                            R6 K27 ["History"]
       43 LOADK                            R7 K28 ["RawData"]
       44 SETLIST                          R3 R4 4 [1]
       46 NEWTABLE                         R4 0 0
       48 MOVE                             R5 R3
       49 LOADNIL                          R6
       50 LOADNIL                          R7
       51 FORGPREP                         R5
       52 SETTABLE                         R9 R4 R9
       53 FORGLOOP                         R5 2 ; [-2]
       55 MOVE                             R2 R4
       56 SETTABLEKS                       R2 R1 K3 ["LAYER_TABS"]
       58 NEWTABLE                         R3 0 3
       60 LOADK                            R4 K29 ["Clear"]
       61 LOADK                            R5 K27 ["History"]
       62 LOADK                            R6 K30 ["NoOp"]
       63 SETLIST                          R3 R4 3 [1]
       65 NEWTABLE                         R4 0 0
       67 MOVE                             R5 R3
       68 LOADNIL                          R6
       69 LOADNIL                          R7
       70 FORGPREP                         R5
       71 SETTABLE                         R9 R4 R9
       72 FORGLOOP                         R5 2 ; [-2]
       74 MOVE                             R2 R4
       75 SETTABLEKS                       R2 R1 K4 ["LAYERVIEW_ACTIONS"]
       77 NEWTABLE                         R3 0 4
       79 LOADK                            R4 K31 ["Valid"]
       80 LOADK                            R5 K32 ["MissingActor"]
       81 LOADK                            R6 K33 ["MissingHasCompositorAttribute"]
       82 LOADK                            R7 K34 ["WrongInstanceType"]
       83 SETLIST                          R3 R4 4 [1]
       85 NEWTABLE                         R4 0 0
       87 MOVE                             R5 R3
       88 LOADNIL                          R6
       89 LOADNIL                          R7
       90 FORGPREP                         R5
       91 SETTABLE                         R9 R4 R9
       92 FORGLOOP                         R5 2 ; [-2]
       94 MOVE                             R2 R4
       95 SETTABLEKS                       R2 R1 K5 ["INSTANCE_CHECK"]
       97 DUPTABLE                         R2 K39 [{"LayerFilters", "ActiveLayersFilter", "FrameBufferDuration", "SkipUIFrames"}]
       98 LOADK                            R3 K40 ["CD_LayerFilters"]
       99 SETTABLEKS                       R3 R2 K35 ["LayerFilters"]
      101 LOADK                            R3 K41 ["CD_ActiveLayersFilter"]
      102 SETTABLEKS                       R3 R2 K36 ["ActiveLayersFilter"]
      104 LOADK                            R3 K42 ["CD_FrameBufferDuration"]
      105 SETTABLEKS                       R3 R2 K37 ["FrameBufferDuration"]
      107 LOADK                            R3 K43 ["CD_SkipUIFrames"]
      108 SETTABLEKS                       R3 R2 K38 ["SkipUIFrames"]
      110 SETTABLEKS                       R2 R1 K6 ["SETTINGS"]
      112 LOADK                            R2 K44 ["HasCompositor"]
      113 SETTABLEKS                       R2 R1 K7 ["COMPOSITOR_ATTRIBUTE"]
      115 LOADN                            R2 10
      116 SETTABLEKS                       R2 R1 K8 ["DEFAULT_TIMECONTROLS_INTERVAL"]
      118 LOADN                            R2 60
      119 SETTABLEKS                       R2 R1 K9 ["FRAMERATE"]
      121 NEWTABLE                         R2 0 5
      123 LOADN                            R3 0
      124 LOADN                            R4 1
      125 LOADN                            R5 2
      126 LOADN                            R6 5
      127 LOADN                            R7 10
      128 SETLIST                          R2 R3 5 [1]
      130 SETTABLEKS                       R2 R1 K10 ["SKIP_UI_FRAMES"]
      132 NEWTABLE                         R2 4 0
      134 DUPTABLE                         R3 K47 [{"Minor", "Major"}]
      135 LOADN                            R4 1
      136 SETTABLEKS                       R4 R3 K45 ["Minor"]
      138 LOADN                            R4 5
      139 SETTABLEKS                       R4 R3 K46 ["Major"]
      141 SETTABLEN                        R3 R2 10
      142 DUPTABLE                         R3 K49 [{"Minor", "Medium", "Major"}]
      143 LOADN                            R4 1
      144 SETTABLEKS                       R4 R3 K45 ["Minor"]
      146 LOADN                            R4 5
      147 SETTABLEKS                       R4 R3 K48 ["Medium"]
      149 LOADN                            R4 10
      150 SETTABLEKS                       R4 R3 K46 ["Major"]
      152 SETTABLEN                        R3 R2 30
      153 DUPTABLE                         R3 K47 [{"Minor", "Major"}]
      154 LOADN                            R4 5
      155 SETTABLEKS                       R4 R3 K45 ["Minor"]
      157 LOADN                            R4 10
      158 SETTABLEKS                       R4 R3 K46 ["Major"]
      160 SETTABLEN                        R3 R2 60
      161 SETTABLEKS                       R2 R1 K11 ["TIMECONTROLS_INVERVALS"]
      163 LOADN                            R2 30
      164 SETTABLEKS                       R2 R1 K12 ["BLEND_TRAIL_LENGTH"]
      166 DUPTABLE                         R2 K51 [{"SphereRadius"}]
      167 LOADK                            R3 K52 [0.05]
      168 SETTABLEKS                       R3 R2 K50 ["SphereRadius"]
      170 SETTABLEKS                       R2 R1 K13 ["GIZMOS"]
      172 RETURN                           R1 1
