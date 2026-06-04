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
       24 DUPTABLE                         R2 K10 [{"CompositorDebugger", "Server", "Client", "Gizmos"}]
       25 LOADK                            R3 K11 ["__RobloxCompositorDebugger"]
       26 SETTABLEKS                       R3 R2 K6 ["CompositorDebugger"]
       28 LOADK                            R3 K7 ["Server"]
       29 SETTABLEKS                       R3 R2 K7 ["Server"]
       31 LOADK                            R3 K8 ["Client"]
       32 SETTABLEKS                       R3 R2 K8 ["Client"]
       34 LOADK                            R3 K9 ["Gizmos"]
       35 SETTABLEKS                       R3 R2 K9 ["Gizmos"]
       37 SETTABLEKS                       R2 R1 K12 ["FOLDERS"]
       39 NEWTABLE                         R3 0 4
       41 LOADK                            R4 K13 ["LayerData"]
       42 LOADK                            R5 K14 ["Visualization"]
       43 LOADK                            R6 K15 ["History"]
       44 LOADK                            R7 K16 ["RawData"]
       45 SETLIST                          R3 R4 4 [1]
       47 NEWTABLE                         R4 0 0
       49 MOVE                             R5 R3
       50 LOADNIL                          R6
       51 LOADNIL                          R7
       52 FORGPREP                         R5
       53 SETTABLE                         R9 R4 R9
       54 FORGLOOP                         R5 2 ; [-2]
       56 MOVE                             R2 R4
       57 SETTABLEKS                       R2 R1 K17 ["LAYER_TABS"]
       59 NEWTABLE                         R3 0 3
       61 LOADK                            R4 K18 ["Clear"]
       62 LOADK                            R5 K15 ["History"]
       63 LOADK                            R6 K19 ["NoOp"]
       64 SETLIST                          R3 R4 3 [1]
       66 NEWTABLE                         R4 0 0
       68 MOVE                             R5 R3
       69 LOADNIL                          R6
       70 LOADNIL                          R7
       71 FORGPREP                         R5
       72 SETTABLE                         R9 R4 R9
       73 FORGLOOP                         R5 2 ; [-2]
       75 MOVE                             R2 R4
       76 SETTABLEKS                       R2 R1 K20 ["LAYERVIEW_ACTIONS"]
       78 NEWTABLE                         R3 0 4
       80 LOADK                            R4 K21 ["Valid"]
       81 LOADK                            R5 K22 ["MissingActor"]
       82 LOADK                            R6 K23 ["MissingHasCompositorAttribute"]
       83 LOADK                            R7 K24 ["WrongInstanceType"]
       84 SETLIST                          R3 R4 4 [1]
       86 NEWTABLE                         R4 0 0
       88 MOVE                             R5 R3
       89 LOADNIL                          R6
       90 LOADNIL                          R7
       91 FORGPREP                         R5
       92 SETTABLE                         R9 R4 R9
       93 FORGLOOP                         R5 2 ; [-2]
       95 MOVE                             R2 R4
       96 SETTABLEKS                       R2 R1 K25 ["INSTANCE_CHECK"]
       98 DUPTABLE                         R2 K34 [{"LayerFilters", "ActiveLayersFilter", "FrameBufferDuration", "SkipUIFrames", "WasEnabled", "CompositorViewMode", "ViewportPosition", "ViewportZoom"}]
       99 LOADK                            R3 K35 ["CD_LayerFilters"]
      100 SETTABLEKS                       R3 R2 K26 ["LayerFilters"]
      102 LOADK                            R3 K36 ["CD_ActiveLayersFilter"]
      103 SETTABLEKS                       R3 R2 K27 ["ActiveLayersFilter"]
      105 LOADK                            R3 K37 ["CD_FrameBufferDuration"]
      106 SETTABLEKS                       R3 R2 K28 ["FrameBufferDuration"]
      108 LOADK                            R3 K38 ["CD_SkipUIFrames"]
      109 SETTABLEKS                       R3 R2 K29 ["SkipUIFrames"]
      111 LOADK                            R3 K39 ["CD_WasEnabled"]
      112 SETTABLEKS                       R3 R2 K30 ["WasEnabled"]
      114 LOADK                            R3 K40 ["CD_CompositorViewMode"]
      115 SETTABLEKS                       R3 R2 K31 ["CompositorViewMode"]
      117 LOADK                            R3 K41 ["CD_ViewportPosition"]
      118 SETTABLEKS                       R3 R2 K32 ["ViewportPosition"]
      120 LOADK                            R3 K42 ["CD_ViewportZoom"]
      121 SETTABLEKS                       R3 R2 K33 ["ViewportZoom"]
      123 SETTABLEKS                       R2 R1 K43 ["SETTINGS"]
      125 LOADK                            R2 K44 ["HasCompositor"]
      126 SETTABLEKS                       R2 R1 K45 ["COMPOSITOR_ATTRIBUTE"]
      128 LOADN                            R2 10
      129 SETTABLEKS                       R2 R1 K46 ["DEFAULT_TIMECONTROLS_INTERVAL"]
      131 LOADN                            R2 60
      132 SETTABLEKS                       R2 R1 K47 ["FRAMERATE"]
      134 NEWTABLE                         R2 0 5
      136 LOADN                            R3 0
      137 LOADN                            R4 1
      138 LOADN                            R5 2
      139 LOADN                            R6 5
      140 LOADN                            R7 10
      141 SETLIST                          R2 R3 5 [1]
      143 SETTABLEKS                       R2 R1 K48 ["SKIP_UI_FRAMES"]
      145 NEWTABLE                         R2 4 0
      147 DUPTABLE                         R3 K51 [{"Minor", "Major"}]
      148 LOADN                            R4 1
      149 SETTABLEKS                       R4 R3 K49 ["Minor"]
      151 LOADN                            R4 5
      152 SETTABLEKS                       R4 R3 K50 ["Major"]
      154 SETTABLEN                        R3 R2 10
      155 DUPTABLE                         R3 K53 [{"Minor", "Medium", "Major"}]
      156 LOADN                            R4 1
      157 SETTABLEKS                       R4 R3 K49 ["Minor"]
      159 LOADN                            R4 5
      160 SETTABLEKS                       R4 R3 K52 ["Medium"]
      162 LOADN                            R4 10
      163 SETTABLEKS                       R4 R3 K50 ["Major"]
      165 SETTABLEN                        R3 R2 30
      166 DUPTABLE                         R3 K51 [{"Minor", "Major"}]
      167 LOADN                            R4 5
      168 SETTABLEKS                       R4 R3 K49 ["Minor"]
      170 LOADN                            R4 10
      171 SETTABLEKS                       R4 R3 K50 ["Major"]
      173 SETTABLEN                        R3 R2 60
      174 SETTABLEKS                       R2 R1 K54 ["TIMECONTROLS_INVERVALS"]
      176 LOADN                            R2 30
      177 SETTABLEKS                       R2 R1 K55 ["BLEND_TRAIL_LENGTH"]
      179 DUPTABLE                         R2 K57 [{"SphereRadius"}]
      180 LOADK                            R3 K58 [0.05]
      181 SETTABLEKS                       R3 R2 K56 ["SphereRadius"]
      183 SETTABLEKS                       R2 R1 K59 ["GIZMOS"]
      185 GETIMPORT                        R2 K62 [Vector2.new]
      187 LOADN                            R3 60
      188 LOADN                            R4 15
      189 CALL                             R2 2 1
      190 SETTABLEKS                       R2 R1 K63 ["CHILD_SPACING"]
      192 LOADN                            R2 200
      193 SETTABLEKS                       R2 R1 K64 ["CHILD_WIDTH"]
      195 LOADN                            R2 200
      196 SETTABLEKS                       R2 R1 K65 ["TRANSITION_PANEL_WIDTH"]
      198 LOADN                            R2 0
      199 SETTABLEKS                       R2 R1 K66 ["WELL_KNOWN_INPUT_PADDING"]
      201 LOADN                            R2 28
      202 SETTABLEKS                       R2 R1 K67 ["WELL_KNOWN_HEIGHT_OF_INPUT"]
      204 LOADN                            R2 28
      205 SETTABLEKS                       R2 R1 K68 ["WELL_KNOWN_HEIGHT_OF_PROPERTY"]
      207 LOADN                            R2 28
      208 SETTABLEKS                       R2 R1 K69 ["WELL_KNOWN_HEADER_HEIGHT"]
      210 LOADN                            R2 0
      211 SETTABLEKS                       R2 R1 K70 ["WELL_KNOWN_OUTER_PADDING"]
      213 LOADN                            R2 28
      214 SETTABLEKS                       R2 R1 K71 ["WELL_KNOWN_OUTPUT_SIZE"]
      216 LOADN                            R2 4
      217 SETTABLEKS                       R2 R1 K72 ["WELL_KNOWN_INNER_PADDING"]
      219 LOADN                            R2 4
      220 SETTABLEKS                       R2 R1 K73 ["WELL_KNOWN_CONTENT_PADDING"]
      222 LOADN                            R2 28
      223 SETTABLEKS                       R2 R1 K74 ["WELL_KNOWN_PREVIEW_SIZE"]
      225 LOADN                            R2 28
      226 SETTABLEKS                       R2 R1 K75 ["ORIGINAL_TILE_SIZE"]
      228 LOADN                            R2 30
      229 SETTABLEKS                       R2 R1 K76 ["SNAP_DISTANCE"]
      231 GETIMPORT                        R2 K62 [Vector2.new]
      233 LOADN                            R3 10
      234 LOADN                            R4 10
      235 CALL                             R2 2 1
      236 SETTABLEKS                       R2 R1 K77 ["GRAPH_PADDING"]
      238 DUPTABLE                         R2 K84 [{"Curves", "Nodes", "Selected", "Preview", "Anchors", "CurveEnds"}]
      239 LOADN                            R3 1
      240 SETTABLEKS                       R3 R2 K78 ["Curves"]
      242 LOADN                            R3 2
      243 SETTABLEKS                       R3 R2 K79 ["Nodes"]
      245 LOADN                            R3 3
      246 SETTABLEKS                       R3 R2 K80 ["Selected"]
      248 LOADN                            R3 4
      249 SETTABLEKS                       R3 R2 K81 ["Preview"]
      251 LOADN                            R3 5
      252 SETTABLEKS                       R3 R2 K82 ["Anchors"]
      254 LOADN                            R3 6
      255 SETTABLEKS                       R3 R2 K83 ["CurveEnds"]
      257 SETTABLEKS                       R2 R1 K85 ["NODEVIEW_ZINDEX"]
      259 DUPTABLE                         R2 K92 [{"Position", "Size", "Collapsed", "ParameterType", "BindingName", "DisplayName"}]
      260 LOADK                            R3 K93 ["AnimGraph_Position"]
      261 SETTABLEKS                       R3 R2 K86 ["Position"]
      263 LOADK                            R3 K94 ["AnimGraph_Size"]
      264 SETTABLEKS                       R3 R2 K87 ["Size"]
      266 LOADK                            R3 K95 ["AnimGraph_Collapsed"]
      267 SETTABLEKS                       R3 R2 K88 ["Collapsed"]
      269 LOADK                            R3 K96 ["AnimGraph_ParameterType"]
      270 SETTABLEKS                       R3 R2 K89 ["ParameterType"]
      272 LOADK                            R3 K97 ["AnimGraph_BindingName"]
      273 SETTABLEKS                       R3 R2 K90 ["BindingName"]
      275 LOADK                            R3 K98 ["AnimGraph_DisplayName"]
      276 SETTABLEKS                       R3 R2 K91 ["DisplayName"]
      278 SETTABLEKS                       R2 R1 K99 ["NODE_ATTRIBUTES"]
      280 LOADK                            R2 K100 ["Configuration"]
      281 SETTABLEKS                       R2 R1 K101 ["NODE_CONFIGURATION_NAME"]
      283 LOADK                            R2 K102 ["Parameter"]
      284 SETTABLEKS                       R2 R1 K103 ["PARAMETER_NODE_CLASSNAME"]
      286 DUPTABLE                         R2 K106 [{"Duration", "Curve"}]
      287 LOADK                            R3 K107 [0.1]
      288 SETTABLEKS                       R3 R2 K104 ["Duration"]
      290 GETIMPORT                        R3 K111 [Enum.PoseEasingStyle.Linear]
      292 SETTABLEKS                       R3 R2 K105 ["Curve"]
      294 SETTABLEKS                       R2 R1 K112 ["DEFAULT_TRANSITION"]
      296 DUPTABLE                         R2 K115 [{"Blend1D", "Blend2D"}]
      297 LOADK                            R3 K113 ["Blend1D"]
      298 SETTABLEKS                       R3 R2 K113 ["Blend1D"]
      300 LOADK                            R3 K114 ["Blend2D"]
      301 SETTABLEKS                       R3 R2 K114 ["Blend2D"]
      303 SETTABLEKS                       R2 R1 K116 ["DRAGGABLE_PIN_MODES"]
      305 LOADK                            R2 K117 ["TransitionOverride"]
      306 SETTABLEKS                       R2 R1 K118 ["TRANSITION_OVERRIDE_PREFIX"]
      308 DUPTABLE                         R2 K123 [{"Angle", "Float", "Integer", "Timestamp"}]
      309 LOADN                            R3 3
      310 SETTABLEKS                       R3 R2 K119 ["Angle"]
      312 LOADN                            R3 3
      313 SETTABLEKS                       R3 R2 K120 ["Float"]
      315 LOADN                            R3 0
      316 SETTABLEKS                       R3 R2 K121 ["Integer"]
      318 LOADN                            R3 3
      319 SETTABLEKS                       R3 R2 K122 ["Timestamp"]
      321 SETTABLEKS                       R2 R1 K124 ["NUMBER_PRECISION"]
      323 DUPTABLE                         R2 K123 [{"Angle", "Float", "Integer", "Timestamp"}]
      324 LOADK                            R3 K125 [0.005]
      325 SETTABLEKS                       R3 R2 K119 ["Angle"]
      327 LOADK                            R3 K125 [0.005]
      328 SETTABLEKS                       R3 R2 K120 ["Float"]
      330 LOADK                            R3 K58 [0.05]
      331 SETTABLEKS                       R3 R2 K121 ["Integer"]
      333 LOADK                            R3 K125 [0.005]
      334 SETTABLEKS                       R3 R2 K122 ["Timestamp"]
      336 SETTABLEKS                       R2 R1 K126 ["NUMBER_STEP"]
      338 RETURN                           R1 1
