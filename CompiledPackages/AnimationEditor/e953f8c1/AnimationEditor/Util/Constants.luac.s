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
        2 NEWTABLE                         R1 64 0
        4 NEWTABLE                         R3 0 4
        6 LOADK                            R4 K1 ["DebugData"]
        7 LOADK                            R5 K2 ["PropertyOverrides"]
        8 LOADK                            R6 K3 ["DebugPose"]
        9 LOADK                            R7 K4 ["LayerSelection"]
       10 SETLIST                          R3 R4 4 [1]
       12 NEWTABLE                         R4 0 0
       14 MOVE                             R5 R3
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 FORGPREP                         R5
       18 SETTABLE                         R9 R4 R9
       19 FORGLOOP                         R5 2 ; [-2]
       21 MOVE                             R2 R4
       22 SETTABLEKS                       R2 R1 K5 ["EVENTS"]
       24 DUPTABLE                         R2 K11 [{["CompositorDebugger"] = "__RobloxCompositorDebugger", ["Server"] = "Server", ["Client"] = "Client", ["Gizmos"] = "Gizmos"}]
       25 SETTABLEKS                       R2 R1 K12 ["FOLDERS"]
       27 NEWTABLE                         R3 0 4
       29 LOADK                            R4 K13 ["LayerData"]
       30 LOADK                            R5 K14 ["Visualization"]
       31 LOADK                            R6 K15 ["History"]
       32 LOADK                            R7 K16 ["RawData"]
       33 SETLIST                          R3 R4 4 [1]
       35 NEWTABLE                         R4 0 0
       37 MOVE                             R5 R3
       38 LOADNIL                          R6
       39 LOADNIL                          R7
       40 FORGPREP                         R5
       41 SETTABLE                         R9 R4 R9
       42 FORGLOOP                         R5 2 ; [-2]
       44 MOVE                             R2 R4
       45 SETTABLEKS                       R2 R1 K17 ["LAYER_TABS"]
       47 NEWTABLE                         R3 0 3
       49 LOADK                            R4 K18 ["Clear"]
       50 LOADK                            R5 K15 ["History"]
       51 LOADK                            R6 K19 ["NoOp"]
       52 SETLIST                          R3 R4 3 [1]
       54 NEWTABLE                         R4 0 0
       56 MOVE                             R5 R3
       57 LOADNIL                          R6
       58 LOADNIL                          R7
       59 FORGPREP                         R5
       60 SETTABLE                         R9 R4 R9
       61 FORGLOOP                         R5 2 ; [-2]
       63 MOVE                             R2 R4
       64 SETTABLEKS                       R2 R1 K20 ["LAYERVIEW_ACTIONS"]
       66 NEWTABLE                         R3 0 4
       68 LOADK                            R4 K21 ["Valid"]
       69 LOADK                            R5 K22 ["MissingActor"]
       70 LOADK                            R6 K23 ["MissingHasCompositorAttribute"]
       71 LOADK                            R7 K24 ["WrongInstanceType"]
       72 SETLIST                          R3 R4 4 [1]
       74 NEWTABLE                         R4 0 0
       76 MOVE                             R5 R3
       77 LOADNIL                          R6
       78 LOADNIL                          R7
       79 FORGPREP                         R5
       80 SETTABLE                         R9 R4 R9
       81 FORGLOOP                         R5 2 ; [-2]
       83 MOVE                             R2 R4
       84 SETTABLEKS                       R2 R1 K25 ["INSTANCE_CHECK"]
       86 DUPTABLE                         R2 K42 [{["LayerFilters"] = "CD_LayerFilters", ["ActiveLayersFilter"] = "CD_ActiveLayersFilter", ["FrameBufferDuration"] = "CD_FrameBufferDuration", ["SkipUIFrames"] = "CD_SkipUIFrames", ["WasEnabled"] = "CD_WasEnabled", ["CompositorViewMode"] = "CD_CompositorViewMode", ["ViewportPosition"] = "CD_ViewportPosition", ["ViewportZoom"] = "CD_ViewportZoom"}]
       87 SETTABLEKS                       R2 R1 K43 ["SETTINGS"]
       89 LOADK                            R2 K44 ["HasCompositor"]
       90 SETTABLEKS                       R2 R1 K45 ["COMPOSITOR_ATTRIBUTE"]
       92 LOADN                            R2 10
       93 SETTABLEKS                       R2 R1 K46 ["DEFAULT_TIMECONTROLS_INTERVAL"]
       95 LOADN                            R2 60
       96 SETTABLEKS                       R2 R1 K47 ["FRAMERATE"]
       98 NEWTABLE                         R2 0 5
      100 LOADN                            R3 0
      101 LOADN                            R4 1
      102 LOADN                            R5 2
      103 LOADN                            R6 5
      104 LOADN                            R7 10
      105 SETLIST                          R2 R3 5 [1]
      107 SETTABLEKS                       R2 R1 K48 ["SKIP_UI_FRAMES"]
      109 NEWTABLE                         R2 4 0
      111 DUPTABLE                         R3 K53 [{["Minor"] = 1, ["Major"] = 5}]
      112 SETTABLEN                        R3 R2 10
      113 DUPTABLE                         R3 K56 [{["Minor"] = 1, ["Medium"] = 5, ["Major"] = 10}]
      114 SETTABLEN                        R3 R2 30
      115 DUPTABLE                         R3 K57 [{["Minor"] = 5, ["Major"] = 10}]
      116 SETTABLEN                        R3 R2 60
      117 SETTABLEKS                       R2 R1 K58 ["TIMECONTROLS_INVERVALS"]
      119 LOADN                            R2 30
      120 SETTABLEKS                       R2 R1 K59 ["BLEND_TRAIL_LENGTH"]
      122 DUPTABLE                         R2 K62 [{["SphereRadius"] = 0.05}]
      123 SETTABLEKS                       R2 R1 K63 ["GIZMOS"]
      125 GETIMPORT                        R2 K66 [Vector2.new]
      127 LOADN                            R3 60
      128 LOADN                            R4 15
      129 CALL                             R2 2 1
      130 SETTABLEKS                       R2 R1 K67 ["CHILD_SPACING"]
      132 LOADN                            R2 200
      133 SETTABLEKS                       R2 R1 K68 ["CHILD_WIDTH"]
      135 LOADN                            R2 220
      136 SETTABLEKS                       R2 R1 K69 ["TRANSITION_PANEL_WIDTH"]
      138 LOADN                            R2 0
      139 SETTABLEKS                       R2 R1 K70 ["WELL_KNOWN_INPUT_PADDING"]
      141 LOADN                            R2 28
      142 SETTABLEKS                       R2 R1 K71 ["WELL_KNOWN_HEIGHT_OF_INPUT"]
      144 LOADN                            R2 28
      145 SETTABLEKS                       R2 R1 K72 ["WELL_KNOWN_HEIGHT_OF_PROPERTY"]
      147 LOADN                            R2 28
      148 SETTABLEKS                       R2 R1 K73 ["WELL_KNOWN_HEADER_HEIGHT"]
      150 LOADN                            R2 0
      151 SETTABLEKS                       R2 R1 K74 ["WELL_KNOWN_OUTER_PADDING"]
      153 LOADN                            R2 28
      154 SETTABLEKS                       R2 R1 K75 ["WELL_KNOWN_OUTPUT_SIZE"]
      156 LOADN                            R2 4
      157 SETTABLEKS                       R2 R1 K76 ["WELL_KNOWN_INNER_PADDING"]
      159 LOADN                            R2 4
      160 SETTABLEKS                       R2 R1 K77 ["WELL_KNOWN_CONTENT_PADDING"]
      162 LOADN                            R2 28
      163 SETTABLEKS                       R2 R1 K78 ["WELL_KNOWN_PREVIEW_SIZE"]
      165 LOADN                            R2 28
      166 SETTABLEKS                       R2 R1 K79 ["ORIGINAL_TILE_SIZE"]
      168 LOADN                            R2 30
      169 SETTABLEKS                       R2 R1 K80 ["SNAP_DISTANCE"]
      171 GETIMPORT                        R2 K66 [Vector2.new]
      173 LOADN                            R3 10
      174 LOADN                            R4 10
      175 CALL                             R2 2 1
      176 SETTABLEKS                       R2 R1 K81 ["GRAPH_PADDING"]
      178 DUPTABLE                         R2 K92 [{["Curves"] = 1, ["Nodes"] = 2, ["Selected"] = 3, ["Preview"] = 4, ["Anchors"] = 5, ["CurveEnds"] = 6}]
      179 SETTABLEKS                       R2 R1 K93 ["NODEVIEW_ZINDEX"]
      181 DUPTABLE                         R2 K108 [{["Position"] = "AnimGraph_Position", ["Size"] = "AnimGraph_Size", ["Collapsed"] = "AnimGraph_Collapsed", ["ParameterType"] = "AnimGraph_ParameterType", ["BindingName"] = "AnimGraph_BindingName", ["DisplayName"] = "AnimGraph_DisplayName", ["ZIndex"] = "AnimGraph_ZIndex"}]
      182 SETTABLEKS                       R2 R1 K109 ["NODE_ATTRIBUTES"]
      184 LOADK                            R2 K110 ["Configuration"]
      185 SETTABLEKS                       R2 R1 K111 ["NODE_CONFIGURATION_NAME"]
      187 LOADK                            R2 K112 ["Parameter"]
      188 SETTABLEKS                       R2 R1 K113 ["PARAMETER_NODE_CLASSNAME"]
      190 DUPTABLE                         R2 K117 [{["Duration"] = 0.1, ["Curve"]}]
      191 GETIMPORT                        R3 K121 [Enum.PoseEasingStyle.Linear]
      193 SETTABLEKS                       R3 R2 K116 ["Curve"]
      195 SETTABLEKS                       R2 R1 K122 ["DEFAULT_TRANSITION"]
      197 DUPTABLE                         R2 K125 [{["Blend1D"] = "Blend1D", ["Blend2D"] = "Blend2D"}]
      198 SETTABLEKS                       R2 R1 K126 ["DRAGGABLE_PIN_MODES"]
      200 LOADK                            R2 K127 ["TransitionOverride"]
      201 SETTABLEKS                       R2 R1 K128 ["TRANSITION_OVERRIDE_PREFIX"]
      203 DUPTABLE                         R2 K134 [{["Angle"] = 3, ["Float"] = 3, ["Integer"] = 0, ["Timestamp"] = 3}]
      204 SETTABLEKS                       R2 R1 K135 ["NUMBER_PRECISION"]
      206 DUPTABLE                         R2 K137 [{["Angle"] = 0.005, ["Float"] = 0.005, ["Integer"] = 0.05, ["Timestamp"] = 0.005}]
      207 SETTABLEKS                       R2 R1 K138 ["NUMBER_STEP"]
      209 RETURN                           R1 1
