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
        1 DUPTABLE                         R0 K41 [{[1] = False, ["CLUSTER_THRESHOLD"] = 0.12, ["DEFAULT_FALLOFF"] = 0.5, ["MAX_FALLOFF"] = 20, ["MAX_TRANSPARENCY"] = 100, ["DEFAULT_LATTICE_SUBDIVISIONS"] = {1, 3, 1}, ["DEFAULT_CAGE_TRANSPARENCY"] = 100, ["MANNEQUIN_PATH"] = "rbxasset://models/LayeredClothingEditor/mannequin.rbxm", ["HEAD_TEMPLATE_PATH"] = "rbxasset://models/LayeredClothingEditor/PartHeadTemplate.rbxm", ["PREVIEW_FOLDER_NAME"] = "LayeredClothingEditorPreview", ["PREVIEW_REMOTE_EVENT_NAME"] = "PreviewChanged", ["GENERATE_LEGACY_KEY"] = "GenerateLegacyAcc", ["GENERATE_MESH_PART_KEY"] = "GenerateMeshPartAcc", ["MOCK_HIP_OFFSET"] = {0, 4.1, 0}, ["MAX_WAYPOINTS"] = 20, ["CAGE_SAVE_DATA_FOLDER"] = "CageSaveData", ["LCE_POINT_TAG"] = "LCE_Point_Tag", ["LCE_CONTROL_TAG"] = "LCE_Control_Tag", ["DRAGGER_STATES"], ["TOOL_MODE"], ["EDIT_MODE"], ["SELECTOR_MODE"], ["KEY_SHORTCUTS"], ["SIGNAL_KEYS"], ["SCREENS"]}]
        2 DUPTABLE                         R1 K44 [{["Ready"] = "Ready", ["DragSelecting"] = "DragSelecting"}]
        3 SETTABLEKS                       R1 R0 K34 ["DRAGGER_STATES"]
        5 DUPTABLE                         R1 K52 [{["None"] = "None", ["Point"] = "PointTool", ["Lattice"] = "LatticeTool", ["Reset"] = "Reset", ["Finish"] = "Finish"}]
        6 SETTABLEKS                       R1 R0 K35 ["TOOL_MODE"]
        8 DUPTABLE                         R1 K56 [{"Outer", "Inner", "Mesh"}]
        9 GETIMPORT                        R2 K59 [Enum.CageType.Outer]
       11 SETTABLEKS                       R2 R1 K53 ["Outer"]
       13 GETIMPORT                        R2 K60 [Enum.CageType.Inner]
       15 SETTABLEKS                       R2 R1 K54 ["Inner"]
       17 GETIMPORT                        R2 K63 [Enum.MeshType.FileMesh]
       19 SETTABLEKS                       R2 R1 K55 ["Mesh"]
       21 SETTABLEKS                       R1 R0 K36 ["EDIT_MODE"]
       23 DUPTABLE                         R1 K66 [{["None"] = "None", ["EditingItem"] = "EditingItem", ["Preview"] = "Preview"}]
       24 SETTABLEKS                       R1 R0 K37 ["SELECTOR_MODE"]
       26 DUPTABLE                         R1 K68 [{"LockControl"}]
       27 GETIMPORT                        R2 K71 [Enum.KeyCode.R]
       29 SETTABLEKS                       R2 R1 K67 ["LockControl"]
       31 SETTABLEKS                       R1 R0 K38 ["KEY_SHORTCUTS"]
       33 DUPTABLE                         R1 K75 [{["SelectionChanged"] = "SelectionChanged", ["ToolChanged"] = "ToolChanged", ["PluginWindowFocused"] = "PluginWindowFocused"}]
       34 SETTABLEKS                       R1 R0 K39 ["SIGNAL_KEYS"]
       36 DUPTABLE                         R1 K80 [{["Select"] = "Select", ["AssetType"] = "AssetType", ["Edit"] = "Edit", ["Generate"] = "Generate"}]
       37 SETTABLEKS                       R1 R0 K40 ["SCREENS"]
       39 NEWTABLE                         R1 0 4
       41 LOADK                            R2 K81 ["AdjustAccessory"]
       42 LOADK                            R3 K82 ["EditCage"]
       43 LOADK                            R4 K65 ["Preview"]
       44 LOADK                            R5 K79 ["Generate"]
       45 SETLIST                          R1 R2 4 [1]
       47 NEWTABLE                         R2 0 2
       49 LOADK                            R3 K83 ["Rigid"]
       50 LOADK                            R4 K84 ["Layered"]
       51 SETLIST                          R2 R3 2 [1]
       53 NEWTABLE                         R3 0 2
       55 LOADK                            R4 K85 ["Thumbnail"]
       56 LOADK                            R5 K86 ["Workspace"]
       57 SETLIST                          R3 R4 2 [1]
       59 NEWTABLE                         R4 0 2
       61 LOADK                            R5 K87 ["Unedited"]
       62 LOADK                            R6 K88 ["Edited"]
       63 SETLIST                          R4 R5 2 [1]
       65 NEWTABLE                         R5 0 2
       67 LOADK                            R6 K89 ["Unpublished"]
       68 LOADK                            R7 K90 ["Published"]
       69 SETLIST                          R5 R6 2 [1]
       71 DUPCLOSURE                       R6 K91 [PROTO_0]
       72 NEWTABLE                         R7 0 0
       74 GETIMPORT                        R8 K93 [ipairs]
       76 MOVE                             R9 R1
       77 CALL                             R8 1 3
       78 FORGPREP_INEXT                   R8
       79 SETTABLE                         R11 R7 R12
       80 FORGLOOP                         R8 2 [inext] ; [-2]
       82 SETTABLEKS                       R7 R0 K94 ["ACTIONS"]
       84 NEWTABLE                         R7 0 0
       86 SETTABLEKS                       R7 R0 K95 ["ANALYTICS_CONSTANTS"]
       88 GETTABLEKS                       R7 R0 K95 ["ANALYTICS_CONSTANTS"]
       90 NEWTABLE                         R8 0 0
       92 GETIMPORT                        R9 K93 [ipairs]
       94 MOVE                             R10 R2
       95 CALL                             R9 1 3
       96 FORGPREP_INEXT                   R9
       97 SETTABLE                         R12 R8 R13
       98 FORGLOOP                         R9 2 [inext] ; [-2]
      100 SETTABLEKS                       R8 R7 K96 ["FLOW"]
      102 GETTABLEKS                       R7 R0 K95 ["ANALYTICS_CONSTANTS"]
      104 NEWTABLE                         R8 0 0
      106 GETIMPORT                        R9 K93 [ipairs]
      108 MOVE                             R10 R3
      109 CALL                             R9 1 3
      110 FORGPREP_INEXT                   R9
      111 SETTABLE                         R12 R8 R13
      112 FORGLOOP                         R9 2 [inext] ; [-2]
      114 SETTABLEKS                       R8 R7 K97 ["PREVIEW_SELECT_METHOD"]
      116 GETTABLEKS                       R7 R0 K95 ["ANALYTICS_CONSTANTS"]
      118 NEWTABLE                         R8 0 0
      120 GETIMPORT                        R9 K93 [ipairs]
      122 MOVE                             R10 R4
      123 CALL                             R9 1 3
      124 FORGPREP_INEXT                   R9
      125 SETTABLE                         R12 R8 R13
      126 FORGLOOP                         R9 2 [inext] ; [-2]
      128 SETTABLEKS                       R8 R7 K98 ["CAGE_EDITING"]
      130 GETTABLEKS                       R7 R0 K95 ["ANALYTICS_CONSTANTS"]
      132 NEWTABLE                         R8 0 0
      134 GETIMPORT                        R9 K93 [ipairs]
      136 MOVE                             R10 R5
      137 CALL                             R9 1 3
      138 FORGPREP_INEXT                   R9
      139 SETTABLE                         R12 R8 R13
      140 FORGLOOP                         R9 2 [inext] ; [-2]
      142 SETTABLEKS                       R8 R7 K99 ["PUBLISHING"]
      144 NEWTABLE                         R7 4 0
      146 GETTABLEKS                       R8 R0 K36 ["EDIT_MODE"]
      148 GETTABLEKS                       R8 R8 K54 ["Inner"]
      150 LOADK                            R9 K54 ["Inner"]
      151 SETTABLE                         R9 R7 R8
      152 GETTABLEKS                       R8 R0 K36 ["EDIT_MODE"]
      154 GETTABLEKS                       R8 R8 K53 ["Outer"]
      156 LOADK                            R9 K53 ["Outer"]
      157 SETTABLE                         R9 R7 R8
      158 GETTABLEKS                       R8 R0 K36 ["EDIT_MODE"]
      160 GETTABLEKS                       R8 R8 K55 ["Mesh"]
      162 LOADK                            R9 K55 ["Mesh"]
      163 SETTABLE                         R9 R7 R8
      164 SETTABLEKS                       R7 R0 K100 ["EDIT_MODE_KEY_TO_STRING"]
      166 RETURN                           R0 1
