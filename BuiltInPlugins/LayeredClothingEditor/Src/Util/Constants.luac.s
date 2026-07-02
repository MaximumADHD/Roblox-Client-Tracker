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
       72 NEWTABLE                         R8 0 0
       74 GETIMPORT                        R9 K93 [ipairs]
       76 MOVE                             R10 R1
       77 CALL                             R9 1 3
       78 FORGPREP_INEXT                   R9
       79 SETTABLE                         R12 R8 R13
       80 FORGLOOP                         R9 2 [inext] ; [-2]
       82 MOVE                             R7 R8
       83 SETTABLEKS                       R7 R0 K94 ["ACTIONS"]
       85 NEWTABLE                         R7 0 0
       87 SETTABLEKS                       R7 R0 K95 ["ANALYTICS_CONSTANTS"]
       89 GETTABLEKS                       R7 R0 K95 ["ANALYTICS_CONSTANTS"]
       91 NEWTABLE                         R9 0 0
       93 GETIMPORT                        R10 K93 [ipairs]
       95 MOVE                             R11 R2
       96 CALL                             R10 1 3
       97 FORGPREP_INEXT                   R10
       98 SETTABLE                         R13 R9 R14
       99 FORGLOOP                         R10 2 [inext] ; [-2]
      101 MOVE                             R8 R9
      102 SETTABLEKS                       R8 R7 K96 ["FLOW"]
      104 GETTABLEKS                       R7 R0 K95 ["ANALYTICS_CONSTANTS"]
      106 NEWTABLE                         R9 0 0
      108 GETIMPORT                        R10 K93 [ipairs]
      110 MOVE                             R11 R3
      111 CALL                             R10 1 3
      112 FORGPREP_INEXT                   R10
      113 SETTABLE                         R13 R9 R14
      114 FORGLOOP                         R10 2 [inext] ; [-2]
      116 MOVE                             R8 R9
      117 SETTABLEKS                       R8 R7 K97 ["PREVIEW_SELECT_METHOD"]
      119 GETTABLEKS                       R7 R0 K95 ["ANALYTICS_CONSTANTS"]
      121 NEWTABLE                         R9 0 0
      123 GETIMPORT                        R10 K93 [ipairs]
      125 MOVE                             R11 R4
      126 CALL                             R10 1 3
      127 FORGPREP_INEXT                   R10
      128 SETTABLE                         R13 R9 R14
      129 FORGLOOP                         R10 2 [inext] ; [-2]
      131 MOVE                             R8 R9
      132 SETTABLEKS                       R8 R7 K98 ["CAGE_EDITING"]
      134 GETTABLEKS                       R7 R0 K95 ["ANALYTICS_CONSTANTS"]
      136 NEWTABLE                         R9 0 0
      138 GETIMPORT                        R10 K93 [ipairs]
      140 MOVE                             R11 R5
      141 CALL                             R10 1 3
      142 FORGPREP_INEXT                   R10
      143 SETTABLE                         R13 R9 R14
      144 FORGLOOP                         R10 2 [inext] ; [-2]
      146 MOVE                             R8 R9
      147 SETTABLEKS                       R8 R7 K99 ["PUBLISHING"]
      149 NEWTABLE                         R7 4 0
      151 GETTABLEKS                       R8 R0 K36 ["EDIT_MODE"]
      153 GETTABLEKS                       R8 R8 K54 ["Inner"]
      155 LOADK                            R9 K54 ["Inner"]
      156 SETTABLE                         R9 R7 R8
      157 GETTABLEKS                       R8 R0 K36 ["EDIT_MODE"]
      159 GETTABLEKS                       R8 R8 K53 ["Outer"]
      161 LOADK                            R9 K53 ["Outer"]
      162 SETTABLE                         R9 R7 R8
      163 GETTABLEKS                       R8 R0 K36 ["EDIT_MODE"]
      165 GETTABLEKS                       R8 R8 K55 ["Mesh"]
      167 LOADK                            R9 K55 ["Mesh"]
      168 SETTABLE                         R9 R7 R8
      169 SETTABLEKS                       R7 R0 K100 ["EDIT_MODE_KEY_TO_STRING"]
      171 RETURN                           R0 1
