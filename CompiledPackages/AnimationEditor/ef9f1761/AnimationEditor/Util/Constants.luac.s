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
       12 NEWTABLE                         R2 0 0
       14 MOVE                             R4 R3
       15 LOADNIL                          R5
       16 LOADNIL                          R6
       17 FORGPREP                         R4
       18 SETTABLE                         R8 R2 R8
       19 FORGLOOP                         R4 2 ; [-2]
       21 SETTABLEKS                       R2 R1 K5 ["EVENTS"]
       23 DUPTABLE                         R2 K11 [{["CompositorDebugger"] = "__RobloxCompositorDebugger", ["Server"] = "Server", ["Client"] = "Client", ["Gizmos"] = "Gizmos"}]
       24 SETTABLEKS                       R2 R1 K12 ["FOLDERS"]
       26 NEWTABLE                         R3 0 4
       28 LOADK                            R4 K13 ["LayerData"]
       29 LOADK                            R5 K14 ["Visualization"]
       30 LOADK                            R6 K15 ["History"]
       31 LOADK                            R7 K16 ["RawData"]
       32 SETLIST                          R3 R4 4 [1]
       34 NEWTABLE                         R2 0 0
       36 MOVE                             R4 R3
       37 LOADNIL                          R5
       38 LOADNIL                          R6
       39 FORGPREP                         R4
       40 SETTABLE                         R8 R2 R8
       41 FORGLOOP                         R4 2 ; [-2]
       43 SETTABLEKS                       R2 R1 K17 ["LAYER_TABS"]
       45 NEWTABLE                         R3 0 3
       47 LOADK                            R4 K18 ["Clear"]
       48 LOADK                            R5 K15 ["History"]
       49 LOADK                            R6 K19 ["NoOp"]
       50 SETLIST                          R3 R4 3 [1]
       52 NEWTABLE                         R2 0 0
       54 MOVE                             R4 R3
       55 LOADNIL                          R5
       56 LOADNIL                          R6
       57 FORGPREP                         R4
       58 SETTABLE                         R8 R2 R8
       59 FORGLOOP                         R4 2 ; [-2]
       61 SETTABLEKS                       R2 R1 K20 ["LAYERVIEW_ACTIONS"]
       63 NEWTABLE                         R3 0 4
       65 LOADK                            R4 K21 ["Valid"]
       66 LOADK                            R5 K22 ["MissingActor"]
       67 LOADK                            R6 K23 ["MissingHasCompositorAttribute"]
       68 LOADK                            R7 K24 ["WrongInstanceType"]
       69 SETLIST                          R3 R4 4 [1]
       71 NEWTABLE                         R2 0 0
       73 MOVE                             R4 R3
       74 LOADNIL                          R5
       75 LOADNIL                          R6
       76 FORGPREP                         R4
       77 SETTABLE                         R8 R2 R8
       78 FORGLOOP                         R4 2 ; [-2]
       80 SETTABLEKS                       R2 R1 K25 ["INSTANCE_CHECK"]
       82 DUPTABLE                         R2 K42 [{["LayerFilters"] = "CD_LayerFilters", ["ActiveLayersFilter"] = "CD_ActiveLayersFilter", ["FrameBufferDuration"] = "CD_FrameBufferDuration", ["SkipUIFrames"] = "CD_SkipUIFrames", ["WasEnabled"] = "CD_WasEnabled", ["CompositorViewMode"] = "CD_CompositorViewMode", ["ViewportPosition"] = "CD_ViewportPosition", ["ViewportZoom"] = "CD_ViewportZoom"}]
       83 SETTABLEKS                       R2 R1 K43 ["SETTINGS"]
       85 LOADK                            R2 K44 ["HasCompositor"]
       86 SETTABLEKS                       R2 R1 K45 ["COMPOSITOR_ATTRIBUTE"]
       88 LOADN                            R2 10
       89 SETTABLEKS                       R2 R1 K46 ["DEFAULT_TIMECONTROLS_INTERVAL"]
       91 LOADN                            R2 60
       92 SETTABLEKS                       R2 R1 K47 ["FRAMERATE"]
       94 NEWTABLE                         R2 0 5
       96 LOADN                            R3 0
       97 LOADN                            R4 1
       98 LOADN                            R5 2
       99 LOADN                            R6 5
      100 LOADN                            R7 10
      101 SETLIST                          R2 R3 5 [1]
      103 SETTABLEKS                       R2 R1 K48 ["SKIP_UI_FRAMES"]
      105 NEWTABLE                         R2 4 0
      107 DUPTABLE                         R3 K53 [{["Minor"] = 1, ["Major"] = 5}]
      108 SETTABLEN                        R3 R2 10
      109 DUPTABLE                         R3 K56 [{["Minor"] = 1, ["Medium"] = 5, ["Major"] = 10}]
      110 SETTABLEN                        R3 R2 30
      111 DUPTABLE                         R3 K57 [{["Minor"] = 5, ["Major"] = 10}]
      112 SETTABLEN                        R3 R2 60
      113 SETTABLEKS                       R2 R1 K58 ["TIMECONTROLS_INVERVALS"]
      115 LOADN                            R2 30
      116 SETTABLEKS                       R2 R1 K59 ["BLEND_TRAIL_LENGTH"]
      118 DUPTABLE                         R2 K62 [{["SphereRadius"] = 0.05}]
      119 SETTABLEKS                       R2 R1 K63 ["GIZMOS"]
      121 GETIMPORT                        R2 K66 [Vector2.new]
      123 LOADN                            R3 60
      124 LOADN                            R4 15
      125 CALL                             R2 2 1
      126 SETTABLEKS                       R2 R1 K67 ["CHILD_SPACING"]
      128 LOADN                            R2 200
      129 SETTABLEKS                       R2 R1 K68 ["CHILD_WIDTH"]
      131 LOADN                            R2 220
      132 SETTABLEKS                       R2 R1 K69 ["TRANSITION_PANEL_WIDTH"]
      134 LOADN                            R2 0
      135 SETTABLEKS                       R2 R1 K70 ["WELL_KNOWN_INPUT_PADDING"]
      137 LOADN                            R2 28
      138 SETTABLEKS                       R2 R1 K71 ["WELL_KNOWN_HEIGHT_OF_INPUT"]
      140 LOADN                            R2 28
      141 SETTABLEKS                       R2 R1 K72 ["WELL_KNOWN_HEIGHT_OF_PROPERTY"]
      143 LOADN                            R2 28
      144 SETTABLEKS                       R2 R1 K73 ["WELL_KNOWN_HEADER_HEIGHT"]
      146 LOADN                            R2 0
      147 SETTABLEKS                       R2 R1 K74 ["WELL_KNOWN_OUTER_PADDING"]
      149 LOADN                            R2 28
      150 SETTABLEKS                       R2 R1 K75 ["WELL_KNOWN_OUTPUT_SIZE"]
      152 LOADN                            R2 4
      153 SETTABLEKS                       R2 R1 K76 ["WELL_KNOWN_INNER_PADDING"]
      155 LOADN                            R2 4
      156 SETTABLEKS                       R2 R1 K77 ["WELL_KNOWN_CONTENT_PADDING"]
      158 LOADN                            R2 28
      159 SETTABLEKS                       R2 R1 K78 ["WELL_KNOWN_PREVIEW_SIZE"]
      161 LOADN                            R2 28
      162 SETTABLEKS                       R2 R1 K79 ["ORIGINAL_TILE_SIZE"]
      164 LOADN                            R2 30
      165 SETTABLEKS                       R2 R1 K80 ["SNAP_DISTANCE"]
      167 GETIMPORT                        R2 K66 [Vector2.new]
      169 LOADN                            R3 10
      170 LOADN                            R4 10
      171 CALL                             R2 2 1
      172 SETTABLEKS                       R2 R1 K81 ["GRAPH_PADDING"]
      174 DUPTABLE                         R2 K92 [{["Curves"] = 1, ["Nodes"] = 2, ["Selected"] = 3, ["Preview"] = 4, ["Anchors"] = 5, ["CurveEnds"] = 6}]
      175 SETTABLEKS                       R2 R1 K93 ["NODEVIEW_ZINDEX"]
      177 DUPTABLE                         R2 K111 [{["Position"] = "AnimGraph_Position", ["Size"] = "AnimGraph_Size", ["Collapsed"] = "AnimGraph_Collapsed", ["ParameterType"] = "AnimGraph_ParameterType", ["BindingName"] = "AnimGraph_BindingName", ["IsParameterDefinition"] = "RBX_IsParameterDefinition", ["DisplayName"] = "AnimGraph_DisplayName", ["Expression"] = "Expression", ["ZIndex"] = "AnimGraph_ZIndex"}]
      178 SETTABLEKS                       R2 R1 K112 ["NODE_ATTRIBUTES"]
      180 LOADK                            R2 K113 ["Configuration"]
      181 SETTABLEKS                       R2 R1 K114 ["NODE_CONFIGURATION_NAME"]
      183 LOADK                            R2 K115 ["Parameter"]
      184 SETTABLEKS                       R2 R1 K116 ["PARAMETER_NODE_CLASSNAME"]
      186 LOADK                            R2 K108 ["Expression"]
      187 SETTABLEKS                       R2 R1 K117 ["EXPRESSION_NODE_CLASSNAME"]
      189 DUPTABLE                         R2 K121 [{["Duration"] = 0.1, ["Curve"]}]
      190 GETIMPORT                        R3 K125 [Enum.PoseEasingStyle.Linear]
      192 SETTABLEKS                       R3 R2 K120 ["Curve"]
      194 SETTABLEKS                       R2 R1 K126 ["DEFAULT_TRANSITION"]
      196 DUPTABLE                         R2 K139 [{["TransitionClassName"] = "StateMachineTransitionDefinition", ["TransitionProperties"], ["TransitionAttributes"], ["StateIdAttribute"] = "StateId", ["EntryStateAttribute"] = "EntryState", ["IsStartAttribute"] = "RBX_IsStart", ["IsAnyAttribute"] = "RBX_IsAny"}]
      197 DUPTABLE                         R3 K145 [{["Id"] = "TransitionId", ["From"] = "From", ["To"] = "To", ["Priority"] = "Priority"}]
      198 SETTABLEKS                       R3 R2 K129 ["TransitionProperties"]
      200 DUPTABLE                         R3 K148 [{["Expression"] = "Expression", ["Duration"] = "Duration", ["Curve"] = "Curve", ["WaitFor"] = "WaitFor", ["When"] = "When"}]
      201 SETTABLEKS                       R3 R2 K130 ["TransitionAttributes"]
      203 SETTABLEKS                       R2 R1 K149 ["STATE_MACHINE"]
      205 DUPTABLE                         R2 K152 [{["Blend1D"] = "Blend1D", ["Blend2D"] = "Blend2D"}]
      206 SETTABLEKS                       R2 R1 K153 ["DRAGGABLE_PIN_MODES"]
      208 LOADK                            R2 K154 ["TransitionOverride"]
      209 SETTABLEKS                       R2 R1 K155 ["TRANSITION_OVERRIDE_PREFIX"]
      211 DUPTABLE                         R2 K161 [{["Angle"] = 3, ["Float"] = 3, ["Integer"] = 0, ["Timestamp"] = 3}]
      212 SETTABLEKS                       R2 R1 K162 ["NUMBER_PRECISION"]
      214 DUPTABLE                         R2 K164 [{["Angle"] = 0.005, ["Float"] = 0.005, ["Integer"] = 0.05, ["Timestamp"] = 0.005}]
      215 SETTABLEKS                       R2 R1 K165 ["NUMBER_STEP"]
      217 RETURN                           R1 1
