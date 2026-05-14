PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["%s+"]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 1
        6 GETIMPORT                        R2 K2 [string.gsub]
        8 MOVE                             R3 R1
        9 LOADK                            R4 K5 ["\n"]
       10 LOADK                            R5 K4 [""]
       11 CALL                             R2 3 1
       12 MOVE                             R1 R2
       13 GETIMPORT                        R2 K2 [string.gsub]
       15 MOVE                             R3 R1
       16 LOADK                            R4 K6 ["\t"]
       17 LOADK                            R5 K4 [""]
       18 CALL                             R2 3 1
       19 MOVE                             R1 R2
       20 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["assetType"]
        2 GETIMPORT                        R2 K4 [Enum.AssetType.Place]
        4 JUMPIFNOTEQ                      R1 R2 ; [+16]
        6 GETTABLEKS                       R2 R0 K5 ["isRootPlace"]
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETUPVAL                         R2 0
       10 LOADK                            R4 K6 ["SpawnLocation"]
       11 NAMECALL                         R2 R2 K7 ["GetClassIcon"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1
       15 GETUPVAL                         R2 0
       16 LOADK                            R4 K8 ["Workspace"]
       17 NAMECALL                         R2 R2 K7 ["GetClassIcon"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1
       21 GETIMPORT                        R2 K10 [Enum.AssetType.Package]
       23 JUMPIFNOTEQ                      R1 R2 ; [+7]
       25 GETUPVAL                         R2 0
       26 LOADK                            R4 K11 ["Model"]
       27 NAMECALL                         R2 R2 K7 ["GetClassIcon"]
       29 CALL                             R2 2 -1
       30 RETURN                           R2 -1
       31 GETIMPORT                        R2 K13 [Enum.AssetType.Image]
       33 JUMPIFNOTEQ                      R1 R2 ; [+7]
       35 GETUPVAL                         R2 0
       36 LOADK                            R4 K14 ["Decal"]
       37 NAMECALL                         R2 R2 K7 ["GetClassIcon"]
       39 CALL                             R2 2 -1
       40 RETURN                           R2 -1
       41 GETIMPORT                        R2 K16 [Enum.AssetType.MeshPart]
       43 JUMPIFNOTEQ                      R1 R2 ; [+7]
       45 GETUPVAL                         R2 0
       46 LOADK                            R4 K15 ["MeshPart"]
       47 NAMECALL                         R2 R2 K7 ["GetClassIcon"]
       49 CALL                             R2 2 -1
       50 RETURN                           R2 -1
       51 GETUPVAL                         R2 1
       52 CALL                             R2 0 1
       53 JUMPIFNOT                        R2 ; [+10]
       54 GETIMPORT                        R2 K18 [Enum.AssetType.Audio]
       56 JUMPIFNOTEQ                      R1 R2 ; [+7]
       58 GETUPVAL                         R2 0
       59 LOADK                            R4 K19 ["Sound"]
       60 NAMECALL                         R2 R2 K7 ["GetClassIcon"]
       62 CALL                             R2 2 -1
       63 RETURN                           R2 -1
       64 GETUPVAL                         R2 2
       65 CALL                             R2 0 1
       66 JUMPIFNOT                        R2 ; [+10]
       67 GETIMPORT                        R2 K21 [Enum.AssetType.Video]
       69 JUMPIFNOTEQ                      R1 R2 ; [+7]
       71 GETUPVAL                         R2 0
       72 LOADK                            R4 K22 ["VideoFrame"]
       73 NAMECALL                         R2 R2 K7 ["GetClassIcon"]
       75 CALL                             R2 2 -1
       76 RETURN                           R2 -1
       77 GETIMPORT                        R2 K23 [Enum.AssetType.Model]
       79 JUMPIFNOTEQ                      R1 R2 ; [+7]
       81 GETUPVAL                         R2 0
       82 LOADK                            R4 K11 ["Model"]
       83 NAMECALL                         R2 R2 K7 ["GetClassIcon"]
       85 CALL                             R2 2 -1
       86 RETURN                           R2 -1
       87 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["AssetData"]
        4 GETTABLEKS                       R3 R3 K2 ["ClassName"]
        6 JUMPIFEQKS                       R3 K3 ["Folder"] ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["state"]
       10 GETTABLEKS                       R1 R1 K3 ["StyleModifier"]
       12 JUMPIFNOTEQKNIL                  R1 ; [+11]
       14 GETUPVAL                         R1 0
       15 DUPTABLE                         R3 K4 [{"StyleModifier"}]
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R4 R4 K5 ["Hover"]
       19 SETTABLEKS                       R4 R3 K3 ["StyleModifier"]
       21 NAMECALL                         R1 R1 K6 ["setState"]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["props"]
       27 GETTABLEKS                       R1 R1 K7 ["AssetData"]
       29 GETTABLEKS                       R3 R1 K8 ["ClassName"]
       31 JUMPIFEQKS                       R3 K9 ["Folder"] ; [+2]
       33 LOADB                            R2 0 +1
       34 LOADB                            R2 1
       35 GETTABLEKS                       R4 R1 K10 ["assetType"]
       37 GETIMPORT                        R5 K14 [Enum.AssetType.Place]
       39 JUMPIFEQ                         R4 R5 ; [+2]
       41 LOADB                            R3 0 +1
       42 LOADB                            R3 1
       43 JUMPIF                           R2 ; [+38]
       44 JUMPIF                           R3 ; [+37]
       45 GETUPVAL                         R5 0
       46 GETTABLEKS                       R5 R5 K0 ["props"]
       48 GETTABLEKS                       R5 R5 K15 ["AssetsTable"]
       50 GETTABLEKS                       R5 R5 K16 ["assetPreviewData"]
       52 GETTABLEKS                       R6 R1 K17 ["id"]
       54 GETTABLE                         R4 R5 R6
       55 FASTCALL1                        TYPE R4 ; [+3]
       56 MOVE                             R6 R4
       57 GETIMPORT                        R5 K19 [type]
       59 CALL                             R5 1 1
       60 JUMPIFEQKS                       R5 K20 ["table"] ; [+21]
       62 GETUPVAL                         R5 0
       63 GETTABLEKS                       R5 R5 K0 ["props"]
       65 GETTABLEKS                       R5 R5 K21 ["dispatchGetAssetPreviewData"]
       67 GETUPVAL                         R6 0
       68 GETTABLEKS                       R6 R6 K0 ["props"]
       70 GETTABLEKS                       R6 R6 K22 ["API"]
       72 NAMECALL                         R6 R6 K23 ["get"]
       74 CALL                             R6 1 1
       75 NEWTABLE                         R7 0 1
       77 GETTABLEKS                       R8 R1 K17 ["id"]
       79 SETLIST                          R7 R8 1 [1]
       81 CALL                             R5 2 0
       82 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["state"]
       10 GETTABLEKS                       R1 R1 K3 ["StyleModifier"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K4 ["Hover"]
       15 JUMPIFNOTEQ                      R1 R2 ; [+11]
       17 GETUPVAL                         R1 0
       18 DUPTABLE                         R3 K5 [{"StyleModifier"}]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K6 ["None"]
       22 SETTABLEKS                       R4 R3 K3 ["StyleModifier"]
       24 NAMECALL                         R1 R1 K7 ["setState"]
       26 CALL                             R1 2 0
       27 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["Enabled"]
        5 JUMPIF                           R3 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R2 K2 ["AssetData"]
        9 JUMPIFNOTEQKN                    R1 K3 [0] ; [+7]
       11 GETTABLEKS                       R4 R2 K4 ["dispatchOnAssetSingleClick"]
       13 MOVE                             R5 R0
       14 MOVE                             R6 R3
       15 CALL                             R4 2 0
       16 RETURN                           R0 0
       17 JUMPIFNOTEQKN                    R1 K5 [1] ; [+7]
       19 GETTABLEKS                       R4 R2 K6 ["dispatchOnAssetDoubleClick"]
       21 GETTABLEKS                       R5 R2 K7 ["Analytics"]
       23 MOVE                             R6 R3
       24 CALL                             R4 2 0
       25 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["isFolder"]
        3 CALL                             R1 1 1
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["props"]
        9 GETTABLEKS                       R2 R1 K2 ["OnAssetDrag"]
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R0 0
       13 GETTABLEKS                       R2 R1 K3 ["AssetData"]
       15 GETTABLEKS                       R3 R1 K2 ["OnAssetDrag"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R1 R0 K2 ["AssetData"]
        9 GETTABLEKS                       R3 R1 K3 ["ClassName"]
       11 JUMPIFEQKS                       R3 K4 ["Folder"] ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 JUMPIFNOT                        R2 ; [+14]
       16 GETTABLEKS                       R4 R0 K5 ["SelectedAssets"]
       18 GETTABLEKS                       R5 R1 K6 ["Screen"]
       20 GETTABLEKS                       R5 R5 K7 ["LayoutOrder"]
       22 GETTABLE                         R3 R4 R5
       23 JUMPIF                           R3 ; [+17]
       24 GETTABLEKS                       R3 R0 K8 ["dispatchOnAssetSingleClick"]
       26 LOADNIL                          R4
       27 MOVE                             R5 R1
       28 CALL                             R3 2 0
       29 JUMP                             ; [+11]
       30 GETTABLEKS                       R4 R0 K5 ["SelectedAssets"]
       32 GETTABLEKS                       R5 R1 K9 ["key"]
       34 GETTABLE                         R3 R4 R5
       35 JUMPIF                           R3 ; [+5]
       36 GETTABLEKS                       R3 R0 K8 ["dispatchOnAssetSingleClick"]
       38 LOADNIL                          R4
       39 MOVE                             R5 R1
       40 CALL                             R3 2 0
       41 GETTABLEKS                       R3 R0 K10 ["RecentListItem"]
       43 JUMPIFNOT                        R3 ; [+5]
       44 GETTABLEKS                       R3 R0 K11 ["dispatchOnRecentAssetRightClick"]
       46 MOVE                             R4 R0
       47 CALL                             R3 1 0
       48 RETURN                           R0 0
       49 GETTABLEKS                       R3 R0 K12 ["dispatchOnAssetRightClick"]
       51 MOVE                             R4 R0
       52 CALL                             R3 1 0
       53 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Text"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["props"]
        5 GETTABLEKS                       R2 R2 K2 ["AssetData"]
        7 GETTABLEKS                       R2 R2 K3 ["name"]
        9 JUMPIFEQ                         R1 R2 ; [+8]
       11 GETUPVAL                         R2 0
       12 DUPTABLE                         R4 K5 [{"editText"}]
       13 SETTABLEKS                       R1 R4 K4 ["editText"]
       15 NAMECALL                         R2 R2 K6 ["setState"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R4 R3 K1 ["AssetData"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["state"]
        8 GETTABLEKS                       R5 R5 K3 ["editText"]
       10 GETIMPORT                        R6 K6 [utf8.len]
       12 MOVE                             R7 R5
       13 CALL                             R6 1 1
       14 JUMPIFEQKN                       R6 K7 [0] ; [+134]
       16 GETIMPORT                        R6 K6 [utf8.len]
       18 GETIMPORT                        R8 K10 [string.gsub]
       20 MOVE                             R9 R5
       21 LOADK                            R10 K11 ["%s+"]
       22 LOADK                            R11 K12 [""]
       23 CALL                             R8 3 1
       24 GETIMPORT                        R9 K10 [string.gsub]
       26 MOVE                             R10 R8
       27 LOADK                            R11 K13 ["\n"]
       28 LOADK                            R12 K12 [""]
       29 CALL                             R9 3 1
       30 MOVE                             R8 R9
       31 GETIMPORT                        R9 K10 [string.gsub]
       33 MOVE                             R10 R8
       34 LOADK                            R11 K14 ["\t"]
       35 LOADK                            R12 K12 [""]
       36 CALL                             R9 3 1
       37 MOVE                             R8 R9
       38 MOVE                             R7 R8
       39 CALL                             R6 1 1
       40 JUMPIFEQKN                       R6 K7 [0] ; [+108]
       42 GETTABLEKS                       R6 R4 K15 ["assetType"]
       44 GETIMPORT                        R7 K19 [Enum.AssetType.Place]
       46 JUMPIFNOTEQ                      R6 R7 ; [+9]
       48 GETUPVAL                         R6 1
       49 GETTABLEKS                       R8 R4 K20 ["id"]
       51 MOVE                             R9 R5
       52 NAMECALL                         R6 R6 K21 ["RenamePlace"]
       54 CALL                             R6 3 0
       55 JUMP                             ; [+93]
       56 GETTABLEKS                       R6 R4 K15 ["assetType"]
       58 GETIMPORT                        R7 K23 [Enum.AssetType.Image]
       60 JUMPIFEQ                         R6 R7 ; [+25]
       62 GETTABLEKS                       R6 R4 K15 ["assetType"]
       64 GETIMPORT                        R7 K25 [Enum.AssetType.MeshPart]
       66 JUMPIFEQ                         R6 R7 ; [+19]
       68 GETUPVAL                         R6 2
       69 CALL                             R6 0 1
       70 JUMPIFNOT                        R6 ; [+6]
       71 GETTABLEKS                       R6 R4 K15 ["assetType"]
       73 GETIMPORT                        R7 K27 [Enum.AssetType.Audio]
       75 JUMPIFEQ                         R6 R7 ; [+10]
       77 GETUPVAL                         R6 3
       78 CALL                             R6 0 1
       79 JUMPIFNOT                        R6 ; [+69]
       80 GETTABLEKS                       R6 R4 K15 ["assetType"]
       82 GETIMPORT                        R7 K29 [Enum.AssetType.Video]
       84 JUMPIFNOTEQ                      R6 R7 ; [+64]
       86 LOADNIL                          R6
       87 GETTABLEKS                       R7 R4 K15 ["assetType"]
       89 GETIMPORT                        R8 K23 [Enum.AssetType.Image]
       91 JUMPIFNOTEQ                      R7 R8 ; [+3]
       93 LOADK                            R6 K30 ["Images/"]
       94 JUMP                             ; [+37]
       95 GETTABLEKS                       R7 R4 K15 ["assetType"]
       97 GETIMPORT                        R8 K25 [Enum.AssetType.MeshPart]
       99 JUMPIFNOTEQ                      R7 R8 ; [+3]
      101 LOADK                            R6 K31 ["Meshes/"]
      102 JUMP                             ; [+29]
      103 GETUPVAL                         R7 2
      104 CALL                             R7 0 1
      105 JUMPIFNOT                        R7 ; [+8]
      106 GETTABLEKS                       R7 R4 K15 ["assetType"]
      108 GETIMPORT                        R8 K27 [Enum.AssetType.Audio]
      110 JUMPIFNOTEQ                      R7 R8 ; [+3]
      112 LOADK                            R6 K32 ["Audio/"]
      113 JUMP                             ; [+18]
      114 GETUPVAL                         R7 3
      115 CALL                             R7 0 1
      116 JUMPIFNOT                        R7 ; [+8]
      117 GETTABLEKS                       R7 R4 K15 ["assetType"]
      119 GETIMPORT                        R8 K29 [Enum.AssetType.Video]
      121 JUMPIFNOTEQ                      R7 R8 ; [+3]
      123 LOADK                            R6 K33 ["Video/"]
      124 JUMP                             ; [+7]
      125 GETTABLEKS                       R7 R4 K15 ["assetType"]
      127 GETIMPORT                        R8 K35 [Enum.AssetType.Model]
      129 JUMPIFNOTEQ                      R7 R8 ; [+2]
      131 LOADK                            R6 K36 ["Models/"]
      132 GETUPVAL                         R7 1
      133 GETTABLEKS                       R9 R4 K15 ["assetType"]
      135 GETTABLEKS                       R9 R9 K37 ["Value"]
      137 GETTABLEKS                       R10 R4 K20 ["id"]
      139 MOVE                             R12 R6
      140 GETTABLEKS                       R13 R4 K38 ["name"]
      142 CONCAT                           R11 R12 R13
      143 MOVE                             R13 R6
      144 MOVE                             R14 R5
      145 CONCAT                           R12 R13 R14
      146 NAMECALL                         R7 R7 K39 ["RenameAlias"]
      148 CALL                             R7 5 0
      149 GETTABLEKS                       R6 R3 K40 ["dispatchSetEditingAssets"]
      151 NEWTABLE                         R7 0 0
      153 CALL                             R6 1 0
      154 GETTABLEKS                       R6 R3 K41 ["dispatchChangeAssetAlias"]
      156 GETTABLEKS                       R8 R4 K20 ["id"]
      158 FASTCALL1                        TOSTRING R8 ; [+2]
      159 GETIMPORT                        R7 K43 [tostring]
      161 CALL                             R7 1 1
      162 MOVE                             R8 R5
      163 CALL                             R6 2 0
      164 GETUPVAL                         R6 0
      165 DUPTABLE                         R8 K44 [{"editText"}]
      166 GETTABLEKS                       R9 R3 K1 ["AssetData"]
      168 GETTABLEKS                       R9 R9 K38 ["name"]
      170 SETTABLEKS                       R9 R8 K3 ["editText"]
      172 NAMECALL                         R6 R6 K45 ["setState"]
      174 CALL                             R6 2 0
      175 GETUPVAL                         R6 0
      176 LOADB                            R7 0
      177 SETTABLEKS                       R7 R6 K46 ["editing"]
      179 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"assetFetchStatus"}]
        2 SETTABLEKS                       R1 R4 K0 ["assetFetchStatus"]
        4 NAMECALL                         R2 R2 K2 ["setState"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["thumbnailUrl"]
        5 SETLIST                          R0 R1 1 [1]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 GETUPVAL                         R2 1
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R2 K1 ["PreloadAsync"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R1 K3 [{"StyleModifier", "assetFetchStatus", "editText"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["StyleModifier"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["assetFetchStatus"]
        7 LOADK                            R2 K4 [""]
        8 SETTABLEKS                       R2 R1 K2 ["editText"]
       10 SETTABLEKS                       R1 R0 K5 ["state"]
       12 LOADB                            R1 0
       13 SETTABLEKS                       R1 R0 K6 ["editing"]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K7 ["createRef"]
       18 CALL                             R1 0 1
       19 SETTABLEKS                       R1 R0 K8 ["textBoxRef"]
       21 NEWCLOSURE                       R1 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 SETTABLEKS                       R1 R0 K9 ["onMouseEnter"]
       26 NEWCLOSURE                       R1 P1
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U0
       30 SETTABLEKS                       R1 R0 K10 ["onMouseLeave"]
       32 NEWCLOSURE                       R1 P2
       33 CAPTURE                          VAL R0
       34 SETTABLEKS                       R1 R0 K11 ["onClick"]
       36 NEWCLOSURE                       R1 P3
       37 CAPTURE                          VAL R0
       38 SETTABLEKS                       R1 R0 K12 ["onDragBegan"]
       40 NEWCLOSURE                       R1 P4
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R1 R0 K13 ["onRightClick"]
       44 NEWCLOSURE                       R1 P5
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R1 R0 K14 ["onTextChanged"]
       48 NEWCLOSURE                       R1 P6
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U2
       51 CAPTURE                          UPVAL U3
       52 CAPTURE                          UPVAL U4
       53 SETTABLEKS                       R1 R0 K15 ["onTextBoxFocusLost"]
       55 GETTABLEKS                       R1 R0 K16 ["props"]
       57 GETTABLEKS                       R2 R1 K17 ["AssetData"]
       59 GETTABLEKS                       R4 R2 K18 ["ClassName"]
       61 JUMPIFEQKS                       R4 K19 ["Folder"] ; [+2]
       63 LOADB                            R3 0 +1
       64 LOADB                            R3 1
       65 GETTABLEKS                       R4 R2 K20 ["id"]
       67 JUMPIF                           R3 ; [+31]
       68 GETTABLEKS                       R5 R2 K21 ["assetType"]
       70 GETIMPORT                        R6 K25 [Enum.AssetType.Place]
       72 JUMPIFNOTEQ                      R5 R6 ; [+11]
       74 GETIMPORT                        R5 K28 [string.format]
       76 LOADK                            R6 K29 ["rbxthumb://type=AutoGeneratedAsset&id=%i&w=%i&h=%i"]
       77 MOVE                             R7 R4
       78 LOADN                            R8 150
       79 LOADN                            R9 150
       80 CALL                             R5 4 1
       81 SETTABLEKS                       R5 R0 K30 ["thumbnailUrl"]
       83 JUMP                             ; [+9]
       84 GETIMPORT                        R5 K28 [string.format]
       86 LOADK                            R6 K31 ["rbxthumb://type=Asset&id=%i&w=%i&h=%i"]
       87 MOVE                             R7 R4
       88 LOADN                            R8 150
       89 LOADN                            R9 150
       90 CALL                             R5 4 1
       91 SETTABLEKS                       R5 R0 K30 ["thumbnailUrl"]
       93 GETIMPORT                        R5 K33 [spawn]
       95 NEWCLOSURE                       R6 P7
       96 CAPTURE                          VAL R0
       97 CAPTURE                          UPVAL U5
       98 CALL                             R5 1 0
       99 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R3 K1 [{"editText"}]
        1 GETTABLEKS                       R4 R0 K2 ["props"]
        3 GETTABLEKS                       R4 R4 K3 ["AssetData"]
        5 GETTABLEKS                       R4 R4 K4 ["name"]
        7 SETTABLEKS                       R4 R3 K0 ["editText"]
        9 NAMECALL                         R1 R0 K5 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["AssetData"]
        4 GETTABLEKS                       R6 R3 K2 ["EditingAssets"]
        6 GETTABLEKS                       R7 R4 K3 ["id"]
        8 GETTABLE                         R5 R6 R7
        9 JUMPIFNOT                        R5 ; [+34]
       10 GETTABLEKS                       R6 R3 K4 ["RecentListItem"]
       12 JUMPIFNOT                        R6 ; [+1]
       13 RETURN                           R0 0
       14 GETTABLEKS                       R6 R0 K5 ["textBoxRef"]
       16 JUMPIFNOT                        R6 ; [+27]
       17 GETTABLEKS                       R6 R0 K5 ["textBoxRef"]
       19 GETTABLEKS                       R6 R6 K6 ["current"]
       21 JUMPIFNOT                        R6 ; [+22]
       22 GETTABLEKS                       R6 R0 K7 ["editing"]
       24 JUMPIF                           R6 ; [+19]
       25 GETTABLEKS                       R6 R0 K5 ["textBoxRef"]
       27 GETTABLEKS                       R6 R6 K6 ["current"]
       29 NAMECALL                         R7 R6 K8 ["CaptureFocus"]
       31 CALL                             R7 1 0
       32 LOADN                            R7 1
       33 SETTABLEKS                       R7 R6 K9 ["SelectionStart"]
       35 GETTABLEKS                       R9 R6 K11 ["Text"]
       37 LENGTH                           R8 R9
       38 ADDK                             R7 R8 K10 [1]
       39 SETTABLEKS                       R7 R6 K12 ["CursorPosition"]
       41 LOADB                            R7 1
       42 SETTABLEKS                       R7 R0 K7 ["editing"]
       44 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Enabled"]
        8 GETTABLEKS                       R5 R2 K4 ["Size"]
       10 GETTABLEKS                       R6 R1 K5 ["AssetData"]
       12 GETTABLEKS                       R7 R2 K6 ["BackgroundColor"]
       14 GETTABLEKS                       R8 R2 K7 ["BackgroundTransparency"]
       16 GETTABLEKS                       R9 R2 K8 ["Spacing"]
       18 NEWTABLE                         R10 1 0
       20 GETTABLEKS                       R12 R6 K9 ["ClassName"]
       22 JUMPIFEQKS                       R12 K10 ["Folder"] ; [+2]
       24 LOADB                            R11 0 +1
       25 LOADB                            R11 1
       26 JUMPIFNOT                        R11 ; [+29]
       27 GETTABLEKS                       R12 R6 K11 ["Screen"]
       29 GETTABLEKS                       R12 R12 K12 ["Image"]
       31 JUMPIFNOTEQKNIL                  R12 ; [+13]
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R12 R12 K13 ["getIconForCurrentTheme"]
       36 GETUPVAL                         R13 0
       37 GETTABLEKS                       R13 R13 K14 ["IconEnums"]
       39 GETTABLEKS                       R13 R13 K15 ["BlankFolder"]
       41 CALL                             R12 1 1
       42 SETTABLEKS                       R12 R10 K12 ["Image"]
       44 JUMP                             ; [+53]
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K13 ["getIconForCurrentTheme"]
       48 GETTABLEKS                       R13 R6 K11 ["Screen"]
       50 GETTABLEKS                       R13 R13 K12 ["Image"]
       52 CALL                             R12 1 1
       53 SETTABLEKS                       R12 R10 K12 ["Image"]
       55 JUMP                             ; [+42]
       56 GETTABLEKS                       R12 R0 K16 ["state"]
       58 GETTABLEKS                       R12 R12 K17 ["assetFetchStatus"]
       60 GETIMPORT                        R13 K21 [Enum.AssetFetchStatus.Success]
       62 JUMPIFNOTEQ                      R12 R13 ; [+20]
       64 GETTABLEKS                       R12 R6 K22 ["assetType"]
       66 GETIMPORT                        R13 K25 [Enum.AssetType.Place]
       68 JUMPIFNOTEQ                      R12 R13 ; [+9]
       70 GETTABLEKS                       R12 R6 K26 ["isRootPlace"]
       72 JUMPIFNOT                        R12 ; [+5]
       73 GETUPVAL                         R12 1
       74 MOVE                             R13 R6
       75 CALL                             R12 1 1
       76 MOVE                             R10 R12
       77 JUMP                             ; [+20]
       78 GETTABLEKS                       R12 R0 K27 ["thumbnailUrl"]
       80 SETTABLEKS                       R12 R10 K12 ["Image"]
       82 JUMP                             ; [+15]
       83 GETTABLEKS                       R12 R0 K16 ["state"]
       85 GETTABLEKS                       R12 R12 K17 ["assetFetchStatus"]
       87 GETIMPORT                        R13 K29 [Enum.AssetFetchStatus.Failure]
       89 JUMPIFEQ                         R12 R13 ; [+4]
       91 GETTABLEKS                       R12 R1 K30 ["RecentListItem"]
       93 JUMPIFNOT                        R12 ; [+4]
       94 GETUPVAL                         R12 1
       95 MOVE                             R13 R6
       96 CALL                             R12 1 1
       97 MOVE                             R10 R12
       98 GETTABLEKS                       R12 R2 K12 ["Image"]
      100 GETTABLEKS                       R12 R12 K31 ["FrameSize"]
      102 GETTABLEKS                       R13 R2 K12 ["Image"]
      104 GETTABLEKS                       R13 R13 K32 ["ImageSize"]
      106 GETTABLEKS                       R14 R2 K12 ["Image"]
      108 GETTABLEKS                       R14 R14 K33 ["ImagePosition"]
      110 GETTABLEKS                       R15 R2 K12 ["Image"]
      112 GETTABLEKS                       R15 R15 K34 ["ImageAnchorPosition"]
      114 GETTABLEKS                       R16 R2 K12 ["Image"]
      116 GETTABLEKS                       R16 R16 K6 ["BackgroundColor"]
      118 GETTABLEKS                       R17 R2 K35 ["Text"]
      120 GETTABLEKS                       R17 R17 K36 ["Color"]
      122 GETTABLEKS                       R18 R2 K37 ["Font"]
      124 GETTABLEKS                       R19 R2 K35 ["Text"]
      126 GETTABLEKS                       R19 R19 K4 ["Size"]
      128 GETTABLEKS                       R20 R2 K35 ["Text"]
      130 GETTABLEKS                       R20 R20 K7 ["BackgroundTransparency"]
      132 GETTABLEKS                       R21 R2 K35 ["Text"]
      134 GETTABLEKS                       R21 R21 K38 ["TextTruncate"]
      136 GETTABLEKS                       R22 R2 K35 ["Text"]
      138 GETTABLEKS                       R22 R22 K39 ["XAlignment"]
      140 GETTABLEKS                       R23 R2 K35 ["Text"]
      142 GETTABLEKS                       R23 R23 K40 ["YAlignment"]
      144 GETTABLEKS                       R24 R2 K35 ["Text"]
      146 GETTABLEKS                       R24 R24 K41 ["Frame"]
      148 GETTABLEKS                       R24 R24 K4 ["Size"]
      150 GETTABLEKS                       R25 R0 K16 ["state"]
      152 GETTABLEKS                       R25 R25 K42 ["editText"]
      154 GETTABLEKS                       R27 R1 K43 ["EditingAssets"]
      156 GETTABLEKS                       R28 R6 K44 ["id"]
      158 GETTABLE                         R26 R27 R28
      159 GETTABLEKS                       R27 R2 K45 ["EditText"]
      161 GETTABLEKS                       R27 R27 K46 ["TextPadding"]
      163 GETTABLEKS                       R28 R2 K45 ["EditText"]
      165 GETTABLEKS                       R28 R28 K47 ["ClearTextOnFocus"]
      167 GETTABLEKS                       R29 R2 K35 ["Text"]
      169 GETTABLEKS                       R29 R29 K39 ["XAlignment"]
      171 GETTABLEKS                       R30 R2 K45 ["EditText"]
      173 GETTABLEKS                       R30 R30 K41 ["Frame"]
      175 GETTABLEKS                       R30 R30 K6 ["BackgroundColor"]
      177 GETTABLEKS                       R31 R2 K45 ["EditText"]
      179 GETTABLEKS                       R31 R31 K41 ["Frame"]
      181 GETTABLEKS                       R31 R31 K48 ["BorderColor"]
      183 GETUPVAL                         R32 2
      184 MOVE                             R33 R25
      185 MOVE                             R34 R19
      186 MOVE                             R35 R18
      187 GETIMPORT                        R36 K51 [Vector2.new]
      189 GETTABLEKS                       R37 R2 K4 ["Size"]
      191 GETTABLEKS                       R37 R37 K52 ["X"]
      193 GETTABLEKS                       R37 R37 K53 ["Offset"]
      195 LOADK                            R38 K54 [∞]
      196 CALL                             R36 2 -1
      197 CALL                             R32 -1 1
      198 GETTABLEKS                       R33 R6 K55 ["name"]
      200 GETTABLEKS                       R34 R6 K55 ["name"]
      202 GETUPVAL                         R35 2
      203 GETTABLEKS                       R36 R6 K55 ["name"]
      205 MOVE                             R37 R19
      206 MOVE                             R38 R18
      207 GETIMPORT                        R39 K51 [Vector2.new]
      209 GETTABLEKS                       R40 R24 K52 ["X"]
      211 GETTABLEKS                       R40 R40 K53 ["Offset"]
      213 LOADK                            R41 K54 [∞]
      214 CALL                             R39 2 -1
      215 CALL                             R35 -1 1
      216 GETTABLEKS                       R36 R35 K56 ["Y"]
      218 GETTABLEKS                       R37 R24 K56 ["Y"]
      220 GETTABLEKS                       R37 R37 K53 ["Offset"]
      222 JUMPIFNOTLT                      R37 R36 ; [+26]
      224 GETTABLEKS                       R40 R6 K55 ["name"]
      226 LOADN                            R41 1
      227 LOADN                            R42 12
      228 FASTCALL                         STRING_SUB ; [+2]
      229 GETIMPORT                        R39 K59 [string.sub]
      231 CALL                             R39 3 1
      232 MOVE                             R36 R39
      233 LOADK                            R37 K60 ["..."]
      234 GETTABLEKS                       R39 R6 K55 ["name"]
      236 GETTABLEKS                       R42 R6 K55 ["name"]
      238 FASTCALL1                        STRING_LEN R42 ; [+2]
      239 GETIMPORT                        R41 K63 [string.len]
      241 CALL                             R41 1 1
      242 SUBK                             R40 R41 K61 [5]
      243 FASTCALL2                        STRING_SUB R39 R40 ; [+3]
      245 GETIMPORT                        R38 K59 [string.sub]
      247 CALL                             R38 2 1
      248 CONCAT                           R34 R36 R38
      249 GETTABLEKS                       R36 R1 K64 ["LayoutOrder"]
      251 GETUPVAL                         R37 3
      252 GETTABLEKS                       R37 R37 K50 ["new"]
      254 CALL                             R37 0 1
      255 LOADNIL                          R38
      256 LOADNIL                          R39
      257 LOADNIL                          R40
      258 GETIMPORT                        R41 K66 [UDim2.new]
      260 LOADN                            R42 1
      261 GETTABLEKS                       R43 R2 K35 ["Text"]
      263 GETTABLEKS                       R43 R43 K41 ["Frame"]
      265 GETTABLEKS                       R43 R43 K67 ["XOffset"]
      267 LOADN                            R44 0
      268 GETTABLEKS                       R45 R2 K35 ["Text"]
      270 GETTABLEKS                       R45 R45 K41 ["Frame"]
      272 GETTABLEKS                       R45 R45 K68 ["YOffset"]
      274 CALL                             R41 4 1
      275 MOVE                             R24 R41
      276 JUMPIF                           R11 ; [+77]
      277 GETTABLEKS                       R41 R1 K69 ["ModerationData"]
      279 JUMPIFNOT                        R41 ; [+74]
      280 GETIMPORT                        R42 K71 [next]
      282 MOVE                             R43 R41
      283 CALL                             R42 1 1
      284 JUMPIFEQKNIL                     R42 ; [+69]
      286 GETTABLEKS                       R43 R41 K72 ["reviewStatus"]
      288 GETUPVAL                         R44 4
      289 GETTABLEKS                       R44 R44 K73 ["Pending"]
      291 JUMPIFEQ                         R43 R44 ; [+2]
      293 LOADB                            R42 0 +1
      294 LOADB                            R42 1
      295 GETUPVAL                         R43 5
      296 GETTABLEKS                       R43 R43 K74 ["isApprovedAsset"]
      298 MOVE                             R44 R41
      299 CALL                             R43 1 1
      300 MOVE                             R44 R42
      301 JUMPIF                           R44 ; [+1]
      302 NOT                              R44 R43
      303 MOVE                             R39 R44
      304 JUMPIFNOT                        R39 ; [+49]
      305 JUMPIFNOT                        R42 ; [+7]
      306 GETTABLEKS                       R44 R2 K12 ["Image"]
      308 GETTABLEKS                       R44 R44 K75 ["ModerationStatus"]
      310 GETTABLEKS                       R38 R44 K73 ["Pending"]
      312 JUMP                             ; [+7]
      313 JUMPIF                           R43 ; [+6]
      314 GETTABLEKS                       R44 R2 K12 ["Image"]
      316 GETTABLEKS                       R44 R44 K75 ["ModerationStatus"]
      318 GETTABLEKS                       R38 R44 K76 ["Rejected"]
      320 GETIMPORT                        R44 K66 [UDim2.new]
      322 LOADN                            R45 1
      323 LOADN                            R48 2
      324 GETTABLEKS                       R49 R2 K35 ["Text"]
      326 GETTABLEKS                       R49 R49 K41 ["Frame"]
      328 GETTABLEKS                       R49 R49 K67 ["XOffset"]
      330 MUL                              R47 R48 R49
      331 GETTABLEKS                       R48 R2 K35 ["Text"]
      333 GETTABLEKS                       R48 R48 K41 ["Frame"]
      335 GETTABLEKS                       R48 R48 K77 ["Padding"]
      337 SUB                              R46 R47 R48
      338 LOADN                            R47 0
      339 GETTABLEKS                       R48 R2 K35 ["Text"]
      341 GETTABLEKS                       R48 R48 K41 ["Frame"]
      343 GETTABLEKS                       R48 R48 K68 ["YOffset"]
      345 CALL                             R44 4 1
      346 MOVE                             R24 R44
      347 GETUPVAL                         R44 5
      348 GETTABLEKS                       R44 R44 K78 ["getModerationTooltip"]
      350 MOVE                             R45 R3
      351 MOVE                             R46 R41
      352 CALL                             R44 2 1
      353 MOVE                             R40 R44
      354 GETUPVAL                         R41 6
      355 GETTABLEKS                       R41 R41 K79 ["createElement"]
      357 GETUPVAL                         R42 7
      358 DUPTABLE                         R43 K83 [{"Size", "LayoutOrder", "OnClick", "OnRightClick", "OnDragBegan"}]
      359 SETTABLEKS                       R5 R43 K4 ["Size"]
      361 SETTABLEKS                       R36 R43 K64 ["LayoutOrder"]
      363 GETTABLEKS                       R44 R0 K84 ["onClick"]
      365 SETTABLEKS                       R44 R43 K80 ["OnClick"]
      367 GETTABLEKS                       R44 R0 K85 ["onRightClick"]
      369 SETTABLEKS                       R44 R43 K81 ["OnRightClick"]
      371 GETTABLEKS                       R44 R0 K86 ["onDragBegan"]
      373 SETTABLEKS                       R44 R43 K82 ["OnDragBegan"]
      375 DUPTABLE                         R44 K88 [{"ListItem"}]
      376 GETUPVAL                         R45 6
      377 GETTABLEKS                       R45 R45 K79 ["createElement"]
      379 GETUPVAL                         R46 8
      380 NEWTABLE                         R47 8 0
      382 GETIMPORT                        R48 K90 [Enum.AutomaticSize.Y]
      384 SETTABLEKS                       R48 R47 K89 ["AutomaticSize"]
      386 SETTABLEKS                       R7 R47 K6 ["BackgroundColor"]
      388 GETIMPORT                        R48 K93 [Enum.FillDirection.Horizontal]
      390 SETTABLEKS                       R48 R47 K94 ["Layout"]
      392 SETTABLEKS                       R9 R47 K8 ["Spacing"]
      394 SETTABLEKS                       R8 R47 K95 ["Transparency"]
      396 GETUPVAL                         R48 6
      397 GETTABLEKS                       R48 R48 K96 ["Event"]
      399 GETTABLEKS                       R48 R48 K97 ["MouseEnter"]
      401 GETTABLEKS                       R49 R0 K98 ["onMouseEnter"]
      403 SETTABLE                         R49 R47 R48
      404 GETUPVAL                         R48 6
      405 GETTABLEKS                       R48 R48 K96 ["Event"]
      407 GETTABLEKS                       R48 R48 K99 ["MouseLeave"]
      409 GETTABLEKS                       R49 R0 K100 ["onMouseLeave"]
      411 SETTABLE                         R49 R47 R48
      412 DUPTABLE                         R48 K105 [{"ImageFrame", "Name", "RenameTextBox", "ModerationImageFrame"}]
      413 GETUPVAL                         R49 6
      414 GETTABLEKS                       R49 R49 K79 ["createElement"]
      416 LOADK                            R50 K41 ["Frame"]
      417 DUPTABLE                         R51 K108 [{"Size", "LayoutOrder", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
      418 SETTABLEKS                       R12 R51 K4 ["Size"]
      420 NAMECALL                         R52 R37 K109 ["getNextOrder"]
      422 CALL                             R52 1 1
      423 SETTABLEKS                       R52 R51 K64 ["LayoutOrder"]
      425 LOADN                            R52 0
      426 SETTABLEKS                       R52 R51 K7 ["BackgroundTransparency"]
      428 SETTABLEKS                       R16 R51 K106 ["BackgroundColor3"]
      430 LOADN                            R52 0
      431 SETTABLEKS                       R52 R51 K107 ["BorderSizePixel"]
      433 DUPTABLE                         R52 K110 [{"Image"}]
      434 GETUPVAL                         R53 6
      435 GETTABLEKS                       R53 R53 K79 ["createElement"]
      437 LOADK                            R54 K111 ["ImageLabel"]
      438 GETUPVAL                         R55 9
      439 GETTABLEKS                       R55 R55 K112 ["Dictionary"]
      441 GETTABLEKS                       R55 R55 K113 ["join"]
      443 MOVE                             R56 R10
      444 DUPTABLE                         R57 K116 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency"}]
      445 SETTABLEKS                       R13 R57 K4 ["Size"]
      447 SETTABLEKS                       R14 R57 K114 ["Position"]
      449 SETTABLEKS                       R15 R57 K115 ["AnchorPoint"]
      451 LOADN                            R58 1
      452 SETTABLEKS                       R58 R57 K7 ["BackgroundTransparency"]
      454 CALL                             R55 2 -1
      455 CALL                             R53 -1 1
      456 SETTABLEKS                       R53 R52 K12 ["Image"]
      458 CALL                             R49 3 1
      459 SETTABLEKS                       R49 R48 K101 ["ImageFrame"]
      461 NOT                              R49 R26
      462 JUMPIFNOT                        R49 ; [+45]
      463 GETUPVAL                         R49 6
      464 GETTABLEKS                       R49 R49 K79 ["createElement"]
      466 LOADK                            R50 K117 ["TextLabel"]
      467 DUPTABLE                         R51 K123 [{"Size", "LayoutOrder", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextTruncate", "TextWrapped"}]
      468 SETTABLEKS                       R24 R51 K4 ["Size"]
      470 NAMECALL                         R52 R37 K109 ["getNextOrder"]
      472 CALL                             R52 1 1
      473 SETTABLEKS                       R52 R51 K64 ["LayoutOrder"]
      475 SETTABLEKS                       R34 R51 K35 ["Text"]
      477 SETTABLEKS                       R17 R51 K118 ["TextColor3"]
      479 SETTABLEKS                       R18 R51 K37 ["Font"]
      481 SETTABLEKS                       R19 R51 K119 ["TextSize"]
      483 SETTABLEKS                       R20 R51 K7 ["BackgroundTransparency"]
      485 SETTABLEKS                       R22 R51 K120 ["TextXAlignment"]
      487 SETTABLEKS                       R23 R51 K121 ["TextYAlignment"]
      489 SETTABLEKS                       R21 R51 K38 ["TextTruncate"]
      491 LOADB                            R52 1
      492 SETTABLEKS                       R52 R51 K122 ["TextWrapped"]
      494 DUPTABLE                         R52 K125 [{"NameTooltip"}]
      495 GETUPVAL                         R53 6
      496 GETTABLEKS                       R53 R53 K79 ["createElement"]
      498 GETUPVAL                         R54 10
      499 DUPTABLE                         R55 K126 [{"Text", "Enabled"}]
      500 SETTABLEKS                       R33 R55 K35 ["Text"]
      502 SETTABLEKS                       R4 R55 K3 ["Enabled"]
      504 CALL                             R53 2 1
      505 SETTABLEKS                       R53 R52 K124 ["NameTooltip"]
      507 CALL                             R49 3 1
      508 SETTABLEKS                       R49 R48 K102 ["Name"]
      510 MOVE                             R49 R26
      511 JUMPIFNOT                        R49 ; [+64]
      512 GETUPVAL                         R49 6
      513 GETTABLEKS                       R49 R49 K79 ["createElement"]
      515 LOADK                            R50 K127 ["TextBox"]
      516 NEWTABLE                         R51 16 0
      518 GETIMPORT                        R52 K66 [UDim2.new]
      520 LOADN                            R53 0
      521 GETTABLEKS                       R55 R32 K52 ["X"]
      523 ADD                              R54 R55 R27
      524 LOADN                            R55 0
      525 GETTABLEKS                       R56 R24 K56 ["Y"]
      527 GETTABLEKS                       R56 R56 K53 ["Offset"]
      529 CALL                             R52 4 1
      530 SETTABLEKS                       R52 R51 K4 ["Size"]
      532 NAMECALL                         R52 R37 K109 ["getNextOrder"]
      534 CALL                             R52 1 1
      535 SETTABLEKS                       R52 R51 K64 ["LayoutOrder"]
      537 SETTABLEKS                       R30 R51 K106 ["BackgroundColor3"]
      539 SETTABLEKS                       R31 R51 K128 ["BorderColor3"]
      541 SETTABLEKS                       R25 R51 K35 ["Text"]
      543 SETTABLEKS                       R17 R51 K118 ["TextColor3"]
      545 SETTABLEKS                       R18 R51 K37 ["Font"]
      547 SETTABLEKS                       R19 R51 K119 ["TextSize"]
      549 SETTABLEKS                       R29 R51 K120 ["TextXAlignment"]
      551 SETTABLEKS                       R28 R51 K47 ["ClearTextOnFocus"]
      553 GETUPVAL                         R52 6
      554 GETTABLEKS                       R52 R52 K129 ["Ref"]
      556 GETTABLEKS                       R53 R0 K130 ["textBoxRef"]
      558 SETTABLE                         R53 R51 R52
      559 GETUPVAL                         R52 6
      560 GETTABLEKS                       R52 R52 K131 ["Change"]
      562 GETTABLEKS                       R52 R52 K35 ["Text"]
      564 GETTABLEKS                       R53 R0 K132 ["onTextChanged"]
      566 SETTABLE                         R53 R51 R52
      567 GETUPVAL                         R52 6
      568 GETTABLEKS                       R52 R52 K96 ["Event"]
      570 GETTABLEKS                       R52 R52 K133 ["FocusLost"]
      572 GETTABLEKS                       R53 R0 K134 ["onTextBoxFocusLost"]
      574 SETTABLE                         R53 R51 R52
      575 CALL                             R49 2 1
      576 SETTABLEKS                       R49 R48 K103 ["RenameTextBox"]
      578 MOVE                             R49 R39
      579 JUMPIFNOT                        R49 ; [+48]
      580 GETUPVAL                         R49 6
      581 GETTABLEKS                       R49 R49 K79 ["createElement"]
      583 LOADK                            R50 K41 ["Frame"]
      584 DUPTABLE                         R51 K135 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
      585 SETTABLEKS                       R12 R51 K4 ["Size"]
      587 NAMECALL                         R52 R37 K109 ["getNextOrder"]
      589 CALL                             R52 1 1
      590 SETTABLEKS                       R52 R51 K64 ["LayoutOrder"]
      592 LOADN                            R52 1
      593 SETTABLEKS                       R52 R51 K7 ["BackgroundTransparency"]
      595 DUPTABLE                         R52 K137 [{"Image", "ModerationTooltip"}]
      596 GETUPVAL                         R53 6
      597 GETTABLEKS                       R53 R53 K79 ["createElement"]
      599 LOADK                            R54 K111 ["ImageLabel"]
      600 DUPTABLE                         R55 K138 [{"Image", "Size", "Position", "AnchorPoint", "BackgroundTransparency"}]
      601 SETTABLEKS                       R38 R55 K12 ["Image"]
      603 SETTABLEKS                       R13 R55 K4 ["Size"]
      605 SETTABLEKS                       R14 R55 K114 ["Position"]
      607 SETTABLEKS                       R15 R55 K115 ["AnchorPoint"]
      609 LOADN                            R56 1
      610 SETTABLEKS                       R56 R55 K7 ["BackgroundTransparency"]
      612 CALL                             R53 2 1
      613 SETTABLEKS                       R53 R52 K12 ["Image"]
      615 GETUPVAL                         R53 6
      616 GETTABLEKS                       R53 R53 K79 ["createElement"]
      618 GETUPVAL                         R54 10
      619 DUPTABLE                         R55 K126 [{"Text", "Enabled"}]
      620 SETTABLEKS                       R40 R55 K35 ["Text"]
      622 SETTABLEKS                       R4 R55 K3 ["Enabled"]
      624 CALL                             R53 2 1
      625 SETTABLEKS                       R53 R52 K136 ["ModerationTooltip"]
      627 CALL                             R49 3 1
      628 SETTABLEKS                       R49 R48 K104 ["ModerationImageFrame"]
      630 CALL                             R45 3 1
      631 SETTABLEKS                       R45 R44 K87 ["ListItem"]
      633 CALL                             R41 3 -1
      634 RETURN                           R41 -1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["AssetManagerReducer"]
        2 DUPTABLE                         R3 K4 [{"AssetsTable", "EditingAssets", "SelectedAssets"}]
        3 GETTABLEKS                       R4 R2 K5 ["assetsTable"]
        5 SETTABLEKS                       R4 R3 K1 ["AssetsTable"]
        7 GETTABLEKS                       R4 R2 K6 ["editingAssets"]
        9 SETTABLEKS                       R4 R3 K2 ["EditingAssets"]
       11 GETTABLEKS                       R4 R2 K7 ["selectedAssets"]
       13 SETTABLEKS                       R4 R3 K3 ["SelectedAssets"]
       15 RETURN                           R3 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_24:
        0 DUPTABLE                         R1 K7 [{"dispatchGetAssetPreviewData", "dispatchOnAssetDoubleClick", "dispatchOnAssetRightClick", "dispatchOnAssetSingleClick", "dispatchOnRecentAssetRightClick", "dispatchSetEditingAssets", "dispatchChangeAssetAlias"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchGetAssetPreviewData"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchOnAssetDoubleClick"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["dispatchOnAssetRightClick"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["dispatchOnAssetSingleClick"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["dispatchOnRecentAssetRightClick"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["dispatchSetEditingAssets"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R1 K6 ["dispatchChangeAssetAlias"]
       36 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Cryo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K5 ["Packages"]
       34 GETTABLEKS                       R5 R5 K9 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K10 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K11 ["withContext"]
       41 GETTABLEKS                       R7 R4 K12 ["UI"]
       43 GETTABLEKS                       R8 R7 K13 ["DragSource"]
       45 GETTABLEKS                       R9 R7 K14 ["Pane"]
       47 GETTABLEKS                       R10 R7 K15 ["Tooltip"]
       49 GETTABLEKS                       R11 R4 K16 ["Util"]
       51 GETTABLEKS                       R12 R11 K17 ["StyleModifier"]
       53 GETIMPORT                        R13 K4 [require]
       55 GETTABLEKS                       R14 R0 K5 ["Packages"]
       57 GETTABLEKS                       R14 R14 K18 ["FitFrame"]
       59 CALL                             R13 1 1
       60 GETTABLEKS                       R13 R13 K19 ["FitFrameOnAxis"]
       62 GETTABLEKS                       R14 R11 K20 ["LayoutOrderIterator"]
       64 GETTABLEKS                       R15 R11 K21 ["GetTextSize"]
       66 GETIMPORT                        R16 K4 [require]
       68 GETTABLEKS                       R17 R0 K22 ["Src"]
       70 GETTABLEKS                       R17 R17 K23 ["Actions"]
       72 GETTABLEKS                       R17 R17 K24 ["SetEditingAssets"]
       74 CALL                             R16 1 1
       75 GETIMPORT                        R17 K4 [require]
       77 GETTABLEKS                       R18 R0 K22 ["Src"]
       79 GETTABLEKS                       R18 R18 K23 ["Actions"]
       81 GETTABLEKS                       R18 R18 K25 ["ChangeAssetAlias"]
       83 CALL                             R17 1 1
       84 GETIMPORT                        R18 K4 [require]
       86 GETTABLEKS                       R19 R0 K22 ["Src"]
       88 GETTABLEKS                       R19 R19 K26 ["Thunks"]
       90 GETTABLEKS                       R19 R19 K27 ["GetAssetPreviewData"]
       92 CALL                             R18 1 1
       93 GETIMPORT                        R19 K4 [require]
       95 GETTABLEKS                       R20 R0 K22 ["Src"]
       97 GETTABLEKS                       R20 R20 K26 ["Thunks"]
       99 GETTABLEKS                       R20 R20 K28 ["OnAssetDoubleClick"]
      101 CALL                             R19 1 1
      102 GETIMPORT                        R20 K4 [require]
      104 GETTABLEKS                       R21 R0 K22 ["Src"]
      106 GETTABLEKS                       R21 R21 K26 ["Thunks"]
      108 GETTABLEKS                       R21 R21 K29 ["OnAssetRightClick"]
      110 CALL                             R20 1 1
      111 GETIMPORT                        R21 K4 [require]
      113 GETTABLEKS                       R22 R0 K22 ["Src"]
      115 GETTABLEKS                       R22 R22 K26 ["Thunks"]
      117 GETTABLEKS                       R22 R22 K30 ["OnAssetSingleClick"]
      119 CALL                             R21 1 1
      120 GETIMPORT                        R22 K4 [require]
      122 GETTABLEKS                       R23 R0 K22 ["Src"]
      124 GETTABLEKS                       R23 R23 K26 ["Thunks"]
      126 GETTABLEKS                       R23 R23 K31 ["OnRecentAssetRightClick"]
      128 CALL                             R22 1 1
      129 GETIMPORT                        R23 K4 [require]
      131 GETTABLEKS                       R24 R0 K22 ["Src"]
      133 GETTABLEKS                       R24 R24 K16 ["Util"]
      135 GETTABLEKS                       R24 R24 K32 ["ReviewStatus"]
      137 CALL                             R23 1 1
      138 GETIMPORT                        R24 K4 [require]
      140 GETTABLEKS                       R25 R0 K22 ["Src"]
      142 GETTABLEKS                       R25 R25 K16 ["Util"]
      144 GETTABLEKS                       R25 R25 K33 ["ModerationUtil"]
      146 CALL                             R24 1 1
      147 GETIMPORT                        R25 K4 [require]
      149 GETTABLEKS                       R26 R0 K22 ["Src"]
      151 GETTABLEKS                       R26 R26 K16 ["Util"]
      153 GETTABLEKS                       R26 R26 K34 ["ModernIcons"]
      155 CALL                             R25 1 1
      156 GETIMPORT                        R26 K36 [game]
      158 LOADK                            R28 K37 ["AssetManagerService"]
      159 NAMECALL                         R26 R26 K38 ["GetService"]
      161 CALL                             R26 2 1
      162 GETIMPORT                        R27 K36 [game]
      164 LOADK                            R29 K39 ["ContentProvider"]
      165 NAMECALL                         R27 R27 K38 ["GetService"]
      167 CALL                             R27 2 1
      168 GETIMPORT                        R28 K36 [game]
      170 LOADK                            R30 K40 ["StudioService"]
      171 NAMECALL                         R28 R28 K38 ["GetService"]
      173 CALL                             R28 2 1
      174 GETTABLEKS                       R29 R2 K41 ["PureComponent"]
      176 LOADK                            R31 K42 ["ListItem"]
      177 NAMECALL                         R29 R29 K43 ["extend"]
      179 CALL                             R29 2 1
      180 GETIMPORT                        R30 K4 [require]
      182 GETTABLEKS                       R31 R0 K22 ["Src"]
      184 GETTABLEKS                       R31 R31 K16 ["Util"]
      186 GETTABLEKS                       R31 R31 K44 ["AssetManagerUtilities"]
      188 CALL                             R30 1 1
      189 GETTABLEKS                       R30 R30 K45 ["enableAudioImport"]
      191 GETIMPORT                        R31 K4 [require]
      193 GETTABLEKS                       R32 R0 K22 ["Src"]
      195 GETTABLEKS                       R32 R32 K16 ["Util"]
      197 GETTABLEKS                       R32 R32 K44 ["AssetManagerUtilities"]
      199 CALL                             R31 1 1
      200 GETTABLEKS                       R31 R31 K46 ["enableVideoImport"]
      202 DUPCLOSURE                       R32 K47 [PROTO_0]
      203 DUPCLOSURE                       R33 K48 [PROTO_1]
      204 CAPTURE                          VAL R28
      205 CAPTURE                          VAL R30
      206 CAPTURE                          VAL R31
      207 DUPCLOSURE                       R34 K49 [PROTO_2]
      208 SETTABLEKS                       R34 R29 K50 ["isFolder"]
      210 DUPCLOSURE                       R34 K51 [PROTO_12]
      211 CAPTURE                          VAL R2
      212 CAPTURE                          VAL R12
      213 CAPTURE                          VAL R26
      214 CAPTURE                          VAL R30
      215 CAPTURE                          VAL R31
      216 CAPTURE                          VAL R27
      217 SETTABLEKS                       R34 R29 K52 ["init"]
      219 DUPCLOSURE                       R34 K53 [PROTO_13]
      220 SETTABLEKS                       R34 R29 K54 ["didMount"]
      222 DUPCLOSURE                       R34 K55 [PROTO_14]
      223 SETTABLEKS                       R34 R29 K56 ["didUpdate"]
      225 DUPCLOSURE                       R34 K57 [PROTO_15]
      226 CAPTURE                          VAL R25
      227 CAPTURE                          VAL R33
      228 CAPTURE                          VAL R15
      229 CAPTURE                          VAL R14
      230 CAPTURE                          VAL R23
      231 CAPTURE                          VAL R24
      232 CAPTURE                          VAL R2
      233 CAPTURE                          VAL R8
      234 CAPTURE                          VAL R9
      235 CAPTURE                          VAL R1
      236 CAPTURE                          VAL R10
      237 SETTABLEKS                       R34 R29 K58 ["render"]
      239 MOVE                             R34 R6
      240 DUPTABLE                         R35 K65 [{"Analytics", "API", "Localization", "Mouse", "Plugin", "Stylizer"}]
      241 GETTABLEKS                       R36 R5 K59 ["Analytics"]
      243 SETTABLEKS                       R36 R35 K59 ["Analytics"]
      245 GETTABLEKS                       R36 R5 K60 ["API"]
      247 SETTABLEKS                       R36 R35 K60 ["API"]
      249 GETTABLEKS                       R36 R5 K61 ["Localization"]
      251 SETTABLEKS                       R36 R35 K61 ["Localization"]
      253 GETTABLEKS                       R36 R5 K62 ["Mouse"]
      255 SETTABLEKS                       R36 R35 K62 ["Mouse"]
      257 GETTABLEKS                       R36 R5 K63 ["Plugin"]
      259 SETTABLEKS                       R36 R35 K63 ["Plugin"]
      261 GETTABLEKS                       R36 R5 K64 ["Stylizer"]
      263 SETTABLEKS                       R36 R35 K64 ["Stylizer"]
      265 CALL                             R34 1 1
      266 MOVE                             R35 R29
      267 CALL                             R34 1 1
      268 MOVE                             R29 R34
      269 DUPCLOSURE                       R34 K66 [PROTO_16]
      270 DUPCLOSURE                       R35 K67 [PROTO_24]
      271 CAPTURE                          VAL R18
      272 CAPTURE                          VAL R19
      273 CAPTURE                          VAL R20
      274 CAPTURE                          VAL R21
      275 CAPTURE                          VAL R22
      276 CAPTURE                          VAL R16
      277 CAPTURE                          VAL R17
      278 GETTABLEKS                       R36 R3 K68 ["connect"]
      280 MOVE                             R37 R34
      281 MOVE                             R38 R35
      282 CALL                             R36 2 1
      283 MOVE                             R37 R29
      284 CALL                             R36 1 -1
      285 RETURN                           R36 -1
