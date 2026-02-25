PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 SETTABLE                         R5 R1 R6
        8 FORGLOOP                         R2 2 [inext] ; [-2]
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K25 [{"USE_MOCK_RBF_DATA", "CLUSTER_THRESHOLD", "DEFAULT_FALLOFF", "MAX_FALLOFF", "MAX_TRANSPARENCY", "DEFAULT_LATTICE_SUBDIVISIONS", "DEFAULT_CAGE_TRANSPARENCY", "MANNEQUIN_PATH", "HEAD_TEMPLATE_PATH", "PREVIEW_FOLDER_NAME", "PREVIEW_REMOTE_EVENT_NAME", "GENERATE_LEGACY_KEY", "GENERATE_MESH_PART_KEY", "MOCK_HIP_OFFSET", "MAX_WAYPOINTS", "CAGE_SAVE_DATA_FOLDER", "LCE_POINT_TAG", "LCE_CONTROL_TAG", "DRAGGER_STATES", "TOOL_MODE", "EDIT_MODE", "SELECTOR_MODE", "KEY_SHORTCUTS", "SIGNAL_KEYS", "SCREENS"}]
        2 LOADB                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["USE_MOCK_RBF_DATA"]
        5 LOADK                            R1 K26 [0.12]
        6 SETTABLEKS                       R1 R0 K1 ["CLUSTER_THRESHOLD"]
        8 LOADK                            R1 K27 [0.5]
        9 SETTABLEKS                       R1 R0 K2 ["DEFAULT_FALLOFF"]
       11 LOADN                            R1 20
       12 SETTABLEKS                       R1 R0 K3 ["MAX_FALLOFF"]
       14 LOADN                            R1 100
       15 SETTABLEKS                       R1 R0 K4 ["MAX_TRANSPARENCY"]
       17 LOADK                            R1 K28 [{1, 3, 1}]
       18 SETTABLEKS                       R1 R0 K5 ["DEFAULT_LATTICE_SUBDIVISIONS"]
       20 LOADN                            R1 100
       21 SETTABLEKS                       R1 R0 K6 ["DEFAULT_CAGE_TRANSPARENCY"]
       23 LOADK                            R1 K29 ["rbxasset://models/LayeredClothingEditor/mannequin.rbxm"]
       24 SETTABLEKS                       R1 R0 K7 ["MANNEQUIN_PATH"]
       26 LOADK                            R1 K30 ["rbxasset://models/LayeredClothingEditor/PartHeadTemplate.rbxm"]
       27 SETTABLEKS                       R1 R0 K8 ["HEAD_TEMPLATE_PATH"]
       29 LOADK                            R1 K31 ["LayeredClothingEditorPreview"]
       30 SETTABLEKS                       R1 R0 K9 ["PREVIEW_FOLDER_NAME"]
       32 LOADK                            R1 K32 ["PreviewChanged"]
       33 SETTABLEKS                       R1 R0 K10 ["PREVIEW_REMOTE_EVENT_NAME"]
       35 LOADK                            R1 K33 ["GenerateLegacyAcc"]
       36 SETTABLEKS                       R1 R0 K11 ["GENERATE_LEGACY_KEY"]
       38 LOADK                            R1 K34 ["GenerateMeshPartAcc"]
       39 SETTABLEKS                       R1 R0 K12 ["GENERATE_MESH_PART_KEY"]
       41 LOADK                            R1 K35 [{0, 4.1, 0}]
       42 SETTABLEKS                       R1 R0 K13 ["MOCK_HIP_OFFSET"]
       44 LOADN                            R1 20
       45 SETTABLEKS                       R1 R0 K14 ["MAX_WAYPOINTS"]
       47 LOADK                            R1 K36 ["CageSaveData"]
       48 SETTABLEKS                       R1 R0 K15 ["CAGE_SAVE_DATA_FOLDER"]
       50 LOADK                            R1 K37 ["LCE_Point_Tag"]
       51 SETTABLEKS                       R1 R0 K16 ["LCE_POINT_TAG"]
       53 LOADK                            R1 K38 ["LCE_Control_Tag"]
       54 SETTABLEKS                       R1 R0 K17 ["LCE_CONTROL_TAG"]
       56 DUPTABLE                         R1 K41 [{"Ready", "DragSelecting"}]
       57 LOADK                            R2 K39 ["Ready"]
       58 SETTABLEKS                       R2 R1 K39 ["Ready"]
       60 LOADK                            R2 K40 ["DragSelecting"]
       61 SETTABLEKS                       R2 R1 K40 ["DragSelecting"]
       63 SETTABLEKS                       R1 R0 K18 ["DRAGGER_STATES"]
       65 DUPTABLE                         R1 K47 [{"None", "Point", "Lattice", "Reset", "Finish"}]
       66 LOADK                            R2 K42 ["None"]
       67 SETTABLEKS                       R2 R1 K42 ["None"]
       69 LOADK                            R2 K48 ["PointTool"]
       70 SETTABLEKS                       R2 R1 K43 ["Point"]
       72 LOADK                            R2 K49 ["LatticeTool"]
       73 SETTABLEKS                       R2 R1 K44 ["Lattice"]
       75 LOADK                            R2 K45 ["Reset"]
       76 SETTABLEKS                       R2 R1 K45 ["Reset"]
       78 LOADK                            R2 K46 ["Finish"]
       79 SETTABLEKS                       R2 R1 K46 ["Finish"]
       81 SETTABLEKS                       R1 R0 K19 ["TOOL_MODE"]
       83 DUPTABLE                         R1 K53 [{"Outer", "Inner", "Mesh"}]
       84 GETIMPORT                        R2 K56 [Enum.CageType.Outer]
       86 SETTABLEKS                       R2 R1 K50 ["Outer"]
       88 GETIMPORT                        R2 K57 [Enum.CageType.Inner]
       90 SETTABLEKS                       R2 R1 K51 ["Inner"]
       92 GETIMPORT                        R2 K60 [Enum.MeshType.FileMesh]
       94 SETTABLEKS                       R2 R1 K52 ["Mesh"]
       96 SETTABLEKS                       R1 R0 K20 ["EDIT_MODE"]
       98 DUPTABLE                         R1 K63 [{"None", "EditingItem", "Preview"}]
       99 LOADK                            R2 K42 ["None"]
      100 SETTABLEKS                       R2 R1 K42 ["None"]
      102 LOADK                            R2 K61 ["EditingItem"]
      103 SETTABLEKS                       R2 R1 K61 ["EditingItem"]
      105 LOADK                            R2 K62 ["Preview"]
      106 SETTABLEKS                       R2 R1 K62 ["Preview"]
      108 SETTABLEKS                       R1 R0 K21 ["SELECTOR_MODE"]
      110 DUPTABLE                         R1 K65 [{"LockControl"}]
      111 GETIMPORT                        R2 K68 [Enum.KeyCode.R]
      113 SETTABLEKS                       R2 R1 K64 ["LockControl"]
      115 SETTABLEKS                       R1 R0 K22 ["KEY_SHORTCUTS"]
      117 DUPTABLE                         R1 K72 [{"SelectionChanged", "ToolChanged", "PluginWindowFocused"}]
      118 LOADK                            R2 K69 ["SelectionChanged"]
      119 SETTABLEKS                       R2 R1 K69 ["SelectionChanged"]
      121 LOADK                            R2 K70 ["ToolChanged"]
      122 SETTABLEKS                       R2 R1 K70 ["ToolChanged"]
      124 LOADK                            R2 K71 ["PluginWindowFocused"]
      125 SETTABLEKS                       R2 R1 K71 ["PluginWindowFocused"]
      127 SETTABLEKS                       R1 R0 K23 ["SIGNAL_KEYS"]
      129 DUPTABLE                         R1 K77 [{"Select", "AssetType", "Edit", "Generate"}]
      130 LOADK                            R2 K73 ["Select"]
      131 SETTABLEKS                       R2 R1 K73 ["Select"]
      133 LOADK                            R2 K74 ["AssetType"]
      134 SETTABLEKS                       R2 R1 K74 ["AssetType"]
      136 LOADK                            R2 K75 ["Edit"]
      137 SETTABLEKS                       R2 R1 K75 ["Edit"]
      139 LOADK                            R2 K76 ["Generate"]
      140 SETTABLEKS                       R2 R1 K76 ["Generate"]
      142 SETTABLEKS                       R1 R0 K24 ["SCREENS"]
      144 NEWTABLE                         R1 0 4
      146 LOADK                            R2 K78 ["AdjustAccessory"]
      147 LOADK                            R3 K79 ["EditCage"]
      148 LOADK                            R4 K62 ["Preview"]
      149 LOADK                            R5 K76 ["Generate"]
      150 SETLIST                          R1 R2 4 [1]
      152 NEWTABLE                         R2 0 2
      154 LOADK                            R3 K80 ["Rigid"]
      155 LOADK                            R4 K81 ["Layered"]
      156 SETLIST                          R2 R3 2 [1]
      158 NEWTABLE                         R3 0 2
      160 LOADK                            R4 K82 ["Thumbnail"]
      161 LOADK                            R5 K83 ["Workspace"]
      162 SETLIST                          R3 R4 2 [1]
      164 NEWTABLE                         R4 0 2
      166 LOADK                            R5 K84 ["Unedited"]
      167 LOADK                            R6 K85 ["Edited"]
      168 SETLIST                          R4 R5 2 [1]
      170 NEWTABLE                         R5 0 2
      172 LOADK                            R6 K86 ["Unpublished"]
      173 LOADK                            R7 K87 ["Published"]
      174 SETLIST                          R5 R6 2 [1]
      176 DUPCLOSURE                       R6 K88 [PROTO_0]
      177 NEWTABLE                         R8 0 0
      179 GETIMPORT                        R9 K90 [ipairs]
      181 MOVE                             R10 R1
      182 CALL                             R9 1 3
      183 FORGPREP_INEXT                   R9
      184 SETTABLE                         R12 R8 R13
      185 FORGLOOP                         R9 2 [inext] ; [-2]
      187 MOVE                             R7 R8
      188 SETTABLEKS                       R7 R0 K91 ["ACTIONS"]
      190 NEWTABLE                         R7 0 0
      192 SETTABLEKS                       R7 R0 K92 ["ANALYTICS_CONSTANTS"]
      194 GETTABLEKS                       R7 R0 K92 ["ANALYTICS_CONSTANTS"]
      196 NEWTABLE                         R9 0 0
      198 GETIMPORT                        R10 K90 [ipairs]
      200 MOVE                             R11 R2
      201 CALL                             R10 1 3
      202 FORGPREP_INEXT                   R10
      203 SETTABLE                         R13 R9 R14
      204 FORGLOOP                         R10 2 [inext] ; [-2]
      206 MOVE                             R8 R9
      207 SETTABLEKS                       R8 R7 K93 ["FLOW"]
      209 GETTABLEKS                       R7 R0 K92 ["ANALYTICS_CONSTANTS"]
      211 NEWTABLE                         R9 0 0
      213 GETIMPORT                        R10 K90 [ipairs]
      215 MOVE                             R11 R3
      216 CALL                             R10 1 3
      217 FORGPREP_INEXT                   R10
      218 SETTABLE                         R13 R9 R14
      219 FORGLOOP                         R10 2 [inext] ; [-2]
      221 MOVE                             R8 R9
      222 SETTABLEKS                       R8 R7 K94 ["PREVIEW_SELECT_METHOD"]
      224 GETTABLEKS                       R7 R0 K92 ["ANALYTICS_CONSTANTS"]
      226 NEWTABLE                         R9 0 0
      228 GETIMPORT                        R10 K90 [ipairs]
      230 MOVE                             R11 R4
      231 CALL                             R10 1 3
      232 FORGPREP_INEXT                   R10
      233 SETTABLE                         R13 R9 R14
      234 FORGLOOP                         R10 2 [inext] ; [-2]
      236 MOVE                             R8 R9
      237 SETTABLEKS                       R8 R7 K95 ["CAGE_EDITING"]
      239 GETTABLEKS                       R7 R0 K92 ["ANALYTICS_CONSTANTS"]
      241 NEWTABLE                         R9 0 0
      243 GETIMPORT                        R10 K90 [ipairs]
      245 MOVE                             R11 R5
      246 CALL                             R10 1 3
      247 FORGPREP_INEXT                   R10
      248 SETTABLE                         R13 R9 R14
      249 FORGLOOP                         R10 2 [inext] ; [-2]
      251 MOVE                             R8 R9
      252 SETTABLEKS                       R8 R7 K96 ["PUBLISHING"]
      254 NEWTABLE                         R7 4 0
      256 GETTABLEKS                       R9 R0 K20 ["EDIT_MODE"]
      258 GETTABLEKS                       R8 R9 K51 ["Inner"]
      260 LOADK                            R9 K51 ["Inner"]
      261 SETTABLE                         R9 R7 R8
      262 GETTABLEKS                       R9 R0 K20 ["EDIT_MODE"]
      264 GETTABLEKS                       R8 R9 K50 ["Outer"]
      266 LOADK                            R9 K50 ["Outer"]
      267 SETTABLE                         R9 R7 R8
      268 GETTABLEKS                       R9 R0 K20 ["EDIT_MODE"]
      270 GETTABLEKS                       R8 R9 K52 ["Mesh"]
      272 LOADK                            R9 K52 ["Mesh"]
      273 SETTABLE                         R9 R7 R8
      274 SETTABLEKS                       R7 R0 K97 ["EDIT_MODE_KEY_TO_STRING"]
      276 RETURN                           R0 1
