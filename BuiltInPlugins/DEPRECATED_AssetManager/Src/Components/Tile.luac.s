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
       25 DUPTABLE                         R3 K8 [{"assetPreviewButtonHovered"}]
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R3 K7 ["assetPreviewButtonHovered"]
       29 NAMECALL                         R1 R1 K6 ["setState"]
       31 CALL                             R1 2 0
       32 GETUPVAL                         R1 0
       33 GETTABLEKS                       R1 R1 K0 ["props"]
       35 GETTABLEKS                       R1 R1 K9 ["AssetData"]
       37 GETTABLEKS                       R3 R1 K10 ["ClassName"]
       39 JUMPIFEQKS                       R3 K11 ["Folder"] ; [+2]
       41 LOADB                            R2 0 +1
       42 LOADB                            R2 1
       43 GETTABLEKS                       R4 R1 K12 ["assetType"]
       45 GETIMPORT                        R5 K16 [Enum.AssetType.Place]
       47 JUMPIFEQ                         R4 R5 ; [+2]
       49 LOADB                            R3 0 +1
       50 LOADB                            R3 1
       51 JUMPIF                           R2 ; [+38]
       52 JUMPIF                           R3 ; [+37]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R5 R5 K0 ["props"]
       56 GETTABLEKS                       R5 R5 K17 ["AssetsTable"]
       58 GETTABLEKS                       R5 R5 K18 ["assetPreviewData"]
       60 GETTABLEKS                       R6 R1 K19 ["id"]
       62 GETTABLE                         R4 R5 R6
       63 FASTCALL1                        TYPE R4 ; [+3]
       64 MOVE                             R6 R4
       65 GETIMPORT                        R5 K21 [type]
       67 CALL                             R5 1 1
       68 JUMPIFEQKS                       R5 K22 ["table"] ; [+21]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R5 R5 K0 ["props"]
       73 GETTABLEKS                       R5 R5 K23 ["dispatchGetAssetPreviewData"]
       75 GETUPVAL                         R6 0
       76 GETTABLEKS                       R6 R6 K0 ["props"]
       78 GETTABLEKS                       R6 R6 K24 ["API"]
       80 NAMECALL                         R6 R6 K25 ["get"]
       82 CALL                             R6 1 1
       83 NEWTABLE                         R7 0 1
       85 GETTABLEKS                       R8 R1 K19 ["id"]
       87 SETLIST                          R7 R8 1 [1]
       89 CALL                             R5 2 0
       90 RETURN                           R0 0

PROTO_2:
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
       27 GETUPVAL                         R1 0
       28 DUPTABLE                         R3 K9 [{"assetPreviewButtonHovered"}]
       29 LOADB                            R4 0
       30 SETTABLEKS                       R4 R3 K8 ["assetPreviewButtonHovered"]
       32 NAMECALL                         R1 R1 K7 ["setState"]
       34 CALL                             R1 2 0
       35 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["AssetData"]
        5 GETTABLEKS                       R3 R1 K2 ["OnAssetDrag"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

PROTO_5:
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
       41 GETTABLEKS                       R3 R0 K10 ["dispatchOnAssetRightClick"]
       43 MOVE                             R4 R0
       44 CALL                             R3 1 0
       45 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"assetPreviewButtonHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["assetPreviewButtonHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K3 ["props"]
       11 GETTABLEKS                       R0 R0 K4 ["AssetData"]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K3 ["props"]
       16 GETTABLEKS                       R1 R1 K5 ["OnOpenAssetPreview"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 0
       20 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 DUPTABLE                         R4 K1 [{"assetFetchStatus"}]
        2 SETTABLEKS                       R1 R4 K0 ["assetFetchStatus"]
        4 NAMECALL                         R2 R2 K2 ["setState"]
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
        0 DUPTABLE                         R1 K4 [{"StyleModifier", "assetFetchStatus", "assetPreviewButtonHovered", "editText"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["StyleModifier"]
        4 LOADNIL                          R2
        5 SETTABLEKS                       R2 R1 K1 ["assetFetchStatus"]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["assetPreviewButtonHovered"]
       10 LOADK                            R2 K5 [""]
       11 SETTABLEKS                       R2 R1 K3 ["editText"]
       13 SETTABLEKS                       R1 R0 K6 ["state"]
       15 LOADB                            R1 0
       16 SETTABLEKS                       R1 R0 K7 ["editing"]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K8 ["createRef"]
       21 CALL                             R1 0 1
       22 SETTABLEKS                       R1 R0 K9 ["textBoxRef"]
       24 NEWCLOSURE                       R1 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U1
       27 SETTABLEKS                       R1 R0 K10 ["onMouseEnter"]
       29 NEWCLOSURE                       R1 P1
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          UPVAL U0
       33 SETTABLEKS                       R1 R0 K11 ["onMouseLeave"]
       35 NEWCLOSURE                       R1 P2
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K12 ["onClick"]
       39 NEWCLOSURE                       R1 P3
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R1 R0 K13 ["onDragBegan"]
       43 NEWCLOSURE                       R1 P4
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R1 R0 K14 ["onRightClick"]
       47 NEWCLOSURE                       R1 P5
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R1 R0 K15 ["openAssetPreview"]
       51 NEWCLOSURE                       R1 P6
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R1 R0 K16 ["onTextChanged"]
       55 NEWCLOSURE                       R1 P7
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U2
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U4
       60 SETTABLEKS                       R1 R0 K17 ["onTextBoxFocusLost"]
       62 GETTABLEKS                       R1 R0 K18 ["props"]
       64 GETTABLEKS                       R2 R1 K19 ["AssetData"]
       66 GETTABLEKS                       R4 R2 K20 ["ClassName"]
       68 JUMPIFEQKS                       R4 K21 ["Folder"] ; [+2]
       70 LOADB                            R3 0 +1
       71 LOADB                            R3 1
       72 GETTABLEKS                       R4 R2 K22 ["id"]
       74 JUMPIF                           R3 ; [+31]
       75 GETTABLEKS                       R5 R2 K23 ["assetType"]
       77 GETIMPORT                        R6 K27 [Enum.AssetType.Place]
       79 JUMPIFNOTEQ                      R5 R6 ; [+11]
       81 GETIMPORT                        R5 K30 [string.format]
       83 LOADK                            R6 K31 ["rbxthumb://type=AutoGeneratedAsset&id=%i&w=%i&h=%i"]
       84 MOVE                             R7 R4
       85 LOADN                            R8 150
       86 LOADN                            R9 150
       87 CALL                             R5 4 1
       88 SETTABLEKS                       R5 R0 K32 ["thumbnailUrl"]
       90 JUMP                             ; [+9]
       91 GETIMPORT                        R5 K30 [string.format]
       93 LOADK                            R6 K33 ["rbxthumb://type=Asset&id=%i&w=%i&h=%i"]
       94 MOVE                             R7 R4
       95 LOADN                            R8 150
       96 LOADN                            R9 150
       97 CALL                             R5 4 1
       98 SETTABLEKS                       R5 R0 K32 ["thumbnailUrl"]
      100 GETIMPORT                        R5 K35 [spawn]
      102 NEWCLOSURE                       R6 P8
      103 CAPTURE                          VAL R0
      104 CAPTURE                          UPVAL U5
      105 CALL                             R5 1 0
      106 RETURN                           R0 0

PROTO_12:
        0 DUPTABLE                         R3 K1 [{"editText"}]
        1 GETTABLEKS                       R4 R0 K2 ["props"]
        3 GETTABLEKS                       R4 R4 K3 ["AssetData"]
        5 GETTABLEKS                       R4 R4 K4 ["name"]
        7 SETTABLEKS                       R4 R3 K0 ["editText"]
        9 NAMECALL                         R1 R0 K5 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_13:
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

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Enabled"]
        8 GETTABLEKS                       R5 R2 K4 ["Size"]
       10 GETTABLEKS                       R6 R1 K5 ["AssetData"]
       12 GETTABLEKS                       R7 R2 K6 ["BackgroundColor"]
       14 GETTABLEKS                       R8 R2 K7 ["BackgroundTransparency"]
       16 GETTABLEKS                       R9 R2 K8 ["BorderSizePixel"]
       18 GETTABLEKS                       R10 R2 K9 ["Text"]
       20 GETTABLEKS                       R10 R10 K10 ["Color"]
       22 GETTABLEKS                       R11 R2 K11 ["Font"]
       24 GETTABLEKS                       R12 R2 K9 ["Text"]
       26 GETTABLEKS                       R12 R12 K4 ["Size"]
       28 GETTABLEKS                       R13 R2 K9 ["Text"]
       30 GETTABLEKS                       R13 R13 K7 ["BackgroundTransparency"]
       32 GETTABLEKS                       R14 R2 K9 ["Text"]
       34 GETTABLEKS                       R14 R14 K12 ["TextTruncate"]
       36 GETTABLEKS                       R15 R2 K9 ["Text"]
       38 GETTABLEKS                       R15 R15 K13 ["XAlignment"]
       40 GETTABLEKS                       R16 R2 K9 ["Text"]
       42 GETTABLEKS                       R16 R16 K14 ["YAlignment"]
       44 GETTABLEKS                       R17 R2 K9 ["Text"]
       46 GETTABLEKS                       R17 R17 K15 ["Frame"]
       48 GETTABLEKS                       R17 R17 K4 ["Size"]
       50 GETTABLEKS                       R18 R2 K9 ["Text"]
       52 GETTABLEKS                       R18 R18 K15 ["Frame"]
       54 GETTABLEKS                       R18 R18 K16 ["Position"]
       56 GETTABLEKS                       R19 R0 K17 ["state"]
       58 GETTABLEKS                       R19 R19 K18 ["editText"]
       60 GETTABLEKS                       R21 R1 K19 ["EditingAssets"]
       62 GETTABLEKS                       R22 R6 K20 ["id"]
       64 GETTABLE                         R20 R21 R22
       65 GETTABLEKS                       R21 R2 K21 ["EditText"]
       67 GETTABLEKS                       R21 R21 K22 ["TextWrapped"]
       69 GETTABLEKS                       R22 R2 K21 ["EditText"]
       71 GETTABLEKS                       R22 R22 K23 ["ClearTextOnFocus"]
       73 GETTABLEKS                       R23 R2 K9 ["Text"]
       75 GETTABLEKS                       R23 R23 K13 ["XAlignment"]
       77 GETTABLEKS                       R24 R2 K21 ["EditText"]
       79 GETTABLEKS                       R24 R24 K15 ["Frame"]
       81 GETTABLEKS                       R24 R24 K6 ["BackgroundColor"]
       83 GETTABLEKS                       R25 R2 K21 ["EditText"]
       85 GETTABLEKS                       R25 R25 K15 ["Frame"]
       87 GETTABLEKS                       R25 R25 K24 ["BorderColor"]
       89 GETUPVAL                         R26 0
       90 MOVE                             R27 R19
       91 MOVE                             R28 R12
       92 MOVE                             R29 R11
       93 GETIMPORT                        R30 K27 [Vector2.new]
       95 GETTABLEKS                       R31 R2 K4 ["Size"]
       97 GETTABLEKS                       R31 R31 K28 ["X"]
       99 GETTABLEKS                       R31 R31 K29 ["Offset"]
      101 LOADK                            R32 K30 [∞]
      102 CALL                             R30 2 -1
      103 CALL                             R26 -1 1
      104 LOADNIL                          R27
      105 GETTABLEKS                       R28 R26 K28 ["X"]
      107 GETTABLEKS                       R29 R2 K4 ["Size"]
      109 GETTABLEKS                       R29 R29 K28 ["X"]
      111 GETTABLEKS                       R29 R29 K29 ["Offset"]
      113 JUMPIFNOTLT                      R28 R29 ; [+6]
      115 GETTABLEKS                       R28 R2 K21 ["EditText"]
      117 GETTABLEKS                       R27 R28 K31 ["TextPadding"]
      119 JUMP                             ; [+1]
      120 LOADN                            R27 0
      121 GETTABLEKS                       R28 R6 K32 ["name"]
      123 GETTABLEKS                       R29 R6 K32 ["name"]
      125 GETUPVAL                         R30 0
      126 GETTABLEKS                       R31 R6 K32 ["name"]
      128 MOVE                             R32 R12
      129 MOVE                             R33 R11
      130 GETIMPORT                        R34 K27 [Vector2.new]
      132 GETTABLEKS                       R35 R17 K28 ["X"]
      134 GETTABLEKS                       R35 R35 K29 ["Offset"]
      136 LOADK                            R36 K30 [∞]
      137 CALL                             R34 2 -1
      138 CALL                             R30 -1 1
      139 GETTABLEKS                       R31 R30 K33 ["Y"]
      141 GETTABLEKS                       R32 R17 K33 ["Y"]
      143 GETTABLEKS                       R32 R32 K29 ["Offset"]
      145 JUMPIFNOTLT                      R32 R31 ; [+26]
      147 GETTABLEKS                       R35 R6 K32 ["name"]
      149 LOADN                            R36 1
      150 LOADN                            R37 12
      151 FASTCALL                         STRING_SUB ; [+2]
      152 GETIMPORT                        R34 K36 [string.sub]
      154 CALL                             R34 3 1
      155 MOVE                             R31 R34
      156 LOADK                            R32 K37 ["..."]
      157 GETTABLEKS                       R34 R6 K32 ["name"]
      159 GETTABLEKS                       R37 R6 K32 ["name"]
      161 FASTCALL1                        STRING_LEN R37 ; [+2]
      162 GETIMPORT                        R36 K40 [string.len]
      164 CALL                             R36 1 1
      165 SUBK                             R35 R36 K38 [5]
      166 FASTCALL2                        STRING_SUB R34 R35 ; [+3]
      168 GETIMPORT                        R33 K36 [string.sub]
      170 CALL                             R33 2 1
      171 CONCAT                           R29 R31 R33
      172 GETTABLEKS                       R32 R6 K41 ["ClassName"]
      174 JUMPIFEQKS                       R32 K42 ["Folder"] ; [+2]
      176 LOADB                            R31 0 +1
      177 LOADB                            R31 1
      178 GETTABLEKS                       R33 R6 K43 ["assetType"]
      180 GETIMPORT                        R34 K47 [Enum.AssetType.Place]
      182 JUMPIFEQ                         R33 R34 ; [+2]
      184 LOADB                            R32 0 +1
      185 LOADB                            R32 1
      186 LOADNIL                          R33
      187 JUMPIFNOT                        R31 ; [+10]
      188 GETUPVAL                         R34 1
      189 GETTABLEKS                       R34 R34 K48 ["getIconForCurrentTheme"]
      191 GETTABLEKS                       R35 R6 K49 ["Screen"]
      193 GETTABLEKS                       R35 R35 K50 ["Image"]
      195 CALL                             R34 1 1
      196 MOVE                             R33 R34
      197 JUMP                             ; [+16]
      198 GETTABLEKS                       R35 R0 K17 ["state"]
      200 GETTABLEKS                       R35 R35 K51 ["assetFetchStatus"]
      202 GETIMPORT                        R36 K54 [Enum.AssetFetchStatus.Success]
      204 JUMPIFNOTEQ                      R35 R36 ; [+4]
      206 GETTABLEKS                       R34 R0 K55 ["thumbnailUrl"]
      208 JUMPIF                           R34 ; [+4]
      209 GETTABLEKS                       R34 R2 K50 ["Image"]
      211 GETTABLEKS                       R34 R34 K56 ["PlaceHolder"]
      213 MOVE                             R33 R34
      214 GETTABLEKS                       R34 R2 K50 ["Image"]
      216 GETTABLEKS                       R34 R34 K57 ["FrameSize"]
      218 GETTABLEKS                       R35 R2 K50 ["Image"]
      220 GETTABLEKS                       R35 R35 K58 ["ImageSize"]
      222 GETTABLEKS                       R36 R2 K50 ["Image"]
      224 GETTABLEKS                       R36 R36 K16 ["Position"]
      226 GETTABLEKS                       R37 R2 K50 ["Image"]
      228 GETTABLEKS                       R37 R37 K59 ["FolderPosition"]
      230 GETTABLEKS                       R38 R2 K50 ["Image"]
      232 GETTABLEKS                       R38 R38 K60 ["FolderAnchorPosition"]
      234 GETTABLEKS                       R39 R2 K50 ["Image"]
      236 GETTABLEKS                       R39 R39 K6 ["BackgroundColor"]
      238 NOT                              R40 R31
      239 JUMPIFNOT                        R40 ; [+1]
      240 NOT                              R40 R32
      241 GETTABLEKS                       R41 R0 K17 ["state"]
      243 GETTABLEKS                       R41 R41 K61 ["assetPreviewButtonHovered"]
      245 GETUPVAL                         R42 1
      246 GETTABLEKS                       R42 R42 K48 ["getIconForCurrentTheme"]
      248 GETUPVAL                         R43 1
      249 GETTABLEKS                       R43 R43 K62 ["IconEnums"]
      251 GETTABLEKS                       R43 R43 K63 ["Zoom"]
      253 CALL                             R42 1 1
      254 GETTABLEKS                       R43 R2 K64 ["AssetPreview"]
      256 GETTABLEKS                       R43 R43 K65 ["Button"]
      258 GETTABLEKS                       R43 R43 K29 ["Offset"]
      260 GETTABLEKS                       R44 R6 K66 ["isRootPlace"]
      262 GETTABLEKS                       R45 R2 K50 ["Image"]
      264 GETTABLEKS                       R45 R45 K67 ["StartingPlace"]
      266 GETTABLEKS                       R45 R45 K4 ["Size"]
      268 GETUPVAL                         R46 1
      269 GETTABLEKS                       R46 R46 K48 ["getIconForCurrentTheme"]
      271 GETUPVAL                         R47 1
      272 GETTABLEKS                       R47 R47 K62 ["IconEnums"]
      274 GETTABLEKS                       R47 R47 K68 ["Spawn"]
      276 CALL                             R46 1 1
      277 GETTABLEKS                       R47 R2 K50 ["Image"]
      279 GETTABLEKS                       R47 R47 K67 ["StartingPlace"]
      281 GETTABLEKS                       R47 R47 K69 ["XOffset"]
      283 GETTABLEKS                       R48 R2 K50 ["Image"]
      285 GETTABLEKS                       R48 R48 K67 ["StartingPlace"]
      287 GETTABLEKS                       R48 R48 K70 ["YOffset"]
      289 GETTABLEKS                       R49 R1 K71 ["LayoutOrder"]
      291 JUMPIFNOT                        R31 ; [+2]
      292 LOADK                            R50 K15 ["Frame"]
      293 JUMP                             ; [+1]
      294 LOADK                            R50 K72 ["ImageLabel"]
      295 DUPTABLE                         R51 K74 [{"Size", "Position", "BackgroundTransparency", "BackgroundColor3", "BorderSizePixel"}]
      296 SETTABLEKS                       R34 R51 K4 ["Size"]
      298 SETTABLEKS                       R36 R51 K16 ["Position"]
      300 LOADN                            R52 0
      301 SETTABLEKS                       R52 R51 K7 ["BackgroundTransparency"]
      303 SETTABLEKS                       R39 R51 K73 ["BackgroundColor3"]
      305 LOADN                            R52 0
      306 SETTABLEKS                       R52 R51 K8 ["BorderSizePixel"]
      308 JUMPIF                           R31 ; [+2]
      309 SETTABLEKS                       R33 R51 K50 ["Image"]
      311 LOADNIL                          R52
      312 LOADNIL                          R53
      313 LOADNIL                          R54
      314 LOADNIL                          R55
      315 LOADNIL                          R56
      316 LOADNIL                          R57
      317 JUMPIF                           R31 ; [+68]
      318 GETTABLEKS                       R58 R1 K75 ["ModerationData"]
      320 JUMPIFNOT                        R58 ; [+65]
      321 GETIMPORT                        R59 K77 [next]
      323 MOVE                             R60 R58
      324 CALL                             R59 1 1
      325 JUMPIFEQKNIL                     R59 ; [+60]
      327 GETTABLEKS                       R60 R58 K78 ["reviewStatus"]
      329 GETUPVAL                         R61 2
      330 GETTABLEKS                       R61 R61 K79 ["Pending"]
      332 JUMPIFEQ                         R60 R61 ; [+2]
      334 LOADB                            R59 0 +1
      335 LOADB                            R59 1
      336 GETUPVAL                         R60 3
      337 GETTABLEKS                       R60 R60 K80 ["isApprovedAsset"]
      339 MOVE                             R61 R58
      340 CALL                             R60 1 1
      341 MOVE                             R61 R59
      342 JUMPIF                           R61 ; [+1]
      343 NOT                              R61 R60
      344 MOVE                             R52 R61
      345 JUMPIFNOT                        R52 ; [+40]
      346 JUMPIFNOT                        R59 ; [+7]
      347 GETTABLEKS                       R61 R2 K50 ["Image"]
      349 GETTABLEKS                       R61 R61 K81 ["ModerationStatus"]
      351 GETTABLEKS                       R53 R61 K79 ["Pending"]
      353 JUMP                             ; [+7]
      354 JUMPIF                           R60 ; [+6]
      355 GETTABLEKS                       R61 R2 K50 ["Image"]
      357 GETTABLEKS                       R61 R61 K81 ["ModerationStatus"]
      359 GETTABLEKS                       R53 R61 K82 ["Rejected"]
      361 GETTABLEKS                       R61 R2 K50 ["Image"]
      363 GETTABLEKS                       R61 R61 K81 ["ModerationStatus"]
      365 GETTABLEKS                       R54 R61 K4 ["Size"]
      367 GETTABLEKS                       R61 R2 K50 ["Image"]
      369 GETTABLEKS                       R61 R61 K81 ["ModerationStatus"]
      371 GETTABLEKS                       R55 R61 K69 ["XOffset"]
      373 GETTABLEKS                       R61 R2 K50 ["Image"]
      375 GETTABLEKS                       R61 R61 K81 ["ModerationStatus"]
      377 GETTABLEKS                       R56 R61 K70 ["YOffset"]
      379 GETUPVAL                         R61 3
      380 GETTABLEKS                       R61 R61 K83 ["getModerationTooltip"]
      382 MOVE                             R62 R3
      383 MOVE                             R63 R58
      384 CALL                             R61 2 1
      385 MOVE                             R57 R61
      386 GETUPVAL                         R58 4
      387 GETTABLEKS                       R58 R58 K84 ["createElement"]
      389 GETUPVAL                         R59 5
      390 DUPTABLE                         R60 K89 [{"AutomaticSize", "LayoutOrder", "OnClick", "OnRightClick", "OnDragBegan"}]
      391 GETIMPORT                        R61 K91 [Enum.AutomaticSize.XY]
      393 SETTABLEKS                       R61 R60 K85 ["AutomaticSize"]
      395 SETTABLEKS                       R49 R60 K71 ["LayoutOrder"]
      397 GETTABLEKS                       R61 R0 K92 ["onClick"]
      399 SETTABLEKS                       R61 R60 K86 ["OnClick"]
      401 GETTABLEKS                       R61 R0 K93 ["onRightClick"]
      403 SETTABLEKS                       R61 R60 K87 ["OnRightClick"]
      405 GETTABLEKS                       R61 R0 K94 ["onDragBegan"]
      407 SETTABLEKS                       R61 R60 K88 ["OnDragBegan"]
      409 DUPTABLE                         R61 K95 [{"Button"}]
      410 GETUPVAL                         R62 4
      411 GETTABLEKS                       R62 R62 K84 ["createElement"]
      413 GETUPVAL                         R63 6
      414 NEWTABLE                         R64 8 0
      416 SETTABLEKS                       R7 R64 K6 ["BackgroundColor"]
      418 SETTABLEKS                       R5 R64 K4 ["Size"]
      420 SETTABLEKS                       R8 R64 K96 ["Transparency"]
      422 GETUPVAL                         R65 4
      423 GETTABLEKS                       R65 R65 K97 ["Event"]
      425 GETTABLEKS                       R65 R65 K98 ["MouseEnter"]
      427 GETTABLEKS                       R66 R0 K99 ["onMouseEnter"]
      429 SETTABLE                         R66 R64 R65
      430 GETUPVAL                         R65 4
      431 GETTABLEKS                       R65 R65 K97 ["Event"]
      433 GETTABLEKS                       R65 R65 K100 ["MouseLeave"]
      435 GETTABLEKS                       R66 R0 K101 ["onMouseLeave"]
      437 SETTABLE                         R66 R64 R65
      438 DUPTABLE                         R65 K107 [{"ThumbnailContainer", "Name", "RenameTextBox", "NameTooltip", "DEPRECATED_Tooltip"}]
      439 GETUPVAL                         R66 4
      440 GETTABLEKS                       R66 R66 K84 ["createElement"]
      442 MOVE                             R67 R50
      443 MOVE                             R68 R51
      444 DUPTABLE                         R69 K112 [{"AssetPreviewButton", "RootPlaceImage", "ModerationStatusImage", "FolderImage"}]
      445 MOVE                             R70 R40
      446 JUMPIFNOT                        R70 ; [+27]
      447 GETUPVAL                         R70 4
      448 GETTABLEKS                       R70 R70 K84 ["createElement"]
      450 GETUPVAL                         R71 7
      451 DUPTABLE                         R72 K114 [{"Position", "Image", "ShowIcon", "OnClick", "OnRightClick"}]
      452 GETIMPORT                        R73 K116 [UDim2.new]
      454 LOADN                            R74 1
      455 MINUS                            R75 R43
      456 LOADN                            R76 0
      457 MOVE                             R77 R43
      458 CALL                             R73 4 1
      459 SETTABLEKS                       R73 R72 K16 ["Position"]
      461 SETTABLEKS                       R42 R72 K50 ["Image"]
      463 SETTABLEKS                       R41 R72 K113 ["ShowIcon"]
      465 GETTABLEKS                       R73 R0 K117 ["openAssetPreview"]
      467 SETTABLEKS                       R73 R72 K86 ["OnClick"]
      469 GETTABLEKS                       R73 R0 K93 ["onRightClick"]
      471 SETTABLEKS                       R73 R72 K87 ["OnRightClick"]
      473 CALL                             R70 2 1
      474 SETTABLEKS                       R70 R69 K108 ["AssetPreviewButton"]
      476 MOVE                             R70 R44
      477 JUMPIFNOT                        R70 ; [+29]
      478 GETUPVAL                         R70 4
      479 GETTABLEKS                       R70 R70 K84 ["createElement"]
      481 LOADK                            R71 K72 ["ImageLabel"]
      482 DUPTABLE                         R72 K118 [{"Size", "Position", "Image", "BackgroundTransparency"}]
      483 GETIMPORT                        R73 K116 [UDim2.new]
      485 LOADN                            R74 0
      486 MOVE                             R75 R45
      487 LOADN                            R76 0
      488 MOVE                             R77 R45
      489 CALL                             R73 4 1
      490 SETTABLEKS                       R73 R72 K4 ["Size"]
      492 GETIMPORT                        R73 K116 [UDim2.new]
      494 LOADN                            R74 0
      495 MOVE                             R75 R47
      496 LOADN                            R76 0
      497 MOVE                             R77 R48
      498 CALL                             R73 4 1
      499 SETTABLEKS                       R73 R72 K16 ["Position"]
      501 SETTABLEKS                       R46 R72 K50 ["Image"]
      503 LOADN                            R73 1
      504 SETTABLEKS                       R73 R72 K7 ["BackgroundTransparency"]
      506 CALL                             R70 2 1
      507 SETTABLEKS                       R70 R69 K109 ["RootPlaceImage"]
      509 MOVE                             R70 R52
      510 JUMPIFNOT                        R70 ; [+42]
      511 GETUPVAL                         R70 4
      512 GETTABLEKS                       R70 R70 K84 ["createElement"]
      514 LOADK                            R71 K72 ["ImageLabel"]
      515 DUPTABLE                         R72 K118 [{"Size", "Position", "Image", "BackgroundTransparency"}]
      516 GETIMPORT                        R73 K116 [UDim2.new]
      518 LOADN                            R74 0
      519 MOVE                             R75 R54
      520 LOADN                            R76 0
      521 MOVE                             R77 R54
      522 CALL                             R73 4 1
      523 SETTABLEKS                       R73 R72 K4 ["Size"]
      525 GETIMPORT                        R73 K116 [UDim2.new]
      527 LOADN                            R74 0
      528 MOVE                             R75 R55
      529 LOADN                            R76 0
      530 MOVE                             R77 R56
      531 CALL                             R73 4 1
      532 SETTABLEKS                       R73 R72 K16 ["Position"]
      534 SETTABLEKS                       R53 R72 K50 ["Image"]
      536 LOADN                            R73 1
      537 SETTABLEKS                       R73 R72 K7 ["BackgroundTransparency"]
      539 DUPTABLE                         R73 K120 [{"ModerationTooltip"}]
      540 GETUPVAL                         R74 4
      541 GETTABLEKS                       R74 R74 K84 ["createElement"]
      543 GETUPVAL                         R75 8
      544 DUPTABLE                         R76 K121 [{"Text", "Enabled"}]
      545 SETTABLEKS                       R57 R76 K9 ["Text"]
      547 SETTABLEKS                       R4 R76 K3 ["Enabled"]
      549 CALL                             R74 2 1
      550 SETTABLEKS                       R74 R73 K119 ["ModerationTooltip"]
      552 CALL                             R70 3 1
      553 SETTABLEKS                       R70 R69 K110 ["ModerationStatusImage"]
      555 MOVE                             R70 R31
      556 JUMPIFNOT                        R70 ; [+17]
      557 GETUPVAL                         R70 4
      558 GETTABLEKS                       R70 R70 K84 ["createElement"]
      560 LOADK                            R71 K72 ["ImageLabel"]
      561 DUPTABLE                         R72 K123 [{"Size", "Image", "Position", "AnchorPoint", "BackgroundTransparency"}]
      562 SETTABLEKS                       R35 R72 K4 ["Size"]
      564 SETTABLEKS                       R33 R72 K50 ["Image"]
      566 SETTABLEKS                       R37 R72 K16 ["Position"]
      568 SETTABLEKS                       R38 R72 K122 ["AnchorPoint"]
      570 LOADN                            R73 1
      571 SETTABLEKS                       R73 R72 K7 ["BackgroundTransparency"]
      573 CALL                             R70 2 1
      574 SETTABLEKS                       R70 R69 K111 ["FolderImage"]
      576 CALL                             R66 3 1
      577 SETTABLEKS                       R66 R65 K102 ["ThumbnailContainer"]
      579 NOT                              R66 R20
      580 JUMPIFNOT                        R66 ; [+29]
      581 GETUPVAL                         R66 4
      582 GETTABLEKS                       R66 R66 K84 ["createElement"]
      584 LOADK                            R67 K124 ["TextLabel"]
      585 DUPTABLE                         R68 K129 [{"Size", "Position", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "TextTruncate", "TextWrapped"}]
      586 SETTABLEKS                       R17 R68 K4 ["Size"]
      588 SETTABLEKS                       R18 R68 K16 ["Position"]
      590 SETTABLEKS                       R29 R68 K9 ["Text"]
      592 SETTABLEKS                       R10 R68 K125 ["TextColor3"]
      594 SETTABLEKS                       R11 R68 K11 ["Font"]
      596 SETTABLEKS                       R12 R68 K126 ["TextSize"]
      598 SETTABLEKS                       R13 R68 K7 ["BackgroundTransparency"]
      600 SETTABLEKS                       R15 R68 K127 ["TextXAlignment"]
      602 SETTABLEKS                       R16 R68 K128 ["TextYAlignment"]
      604 SETTABLEKS                       R14 R68 K12 ["TextTruncate"]
      606 LOADB                            R69 1
      607 SETTABLEKS                       R69 R68 K22 ["TextWrapped"]
      609 CALL                             R66 2 1
      610 SETTABLEKS                       R66 R65 K103 ["Name"]
      612 MOVE                             R66 R20
      613 JUMPIFNOT                        R66 ; [+65]
      614 GETUPVAL                         R66 4
      615 GETTABLEKS                       R66 R66 K84 ["createElement"]
      617 LOADK                            R67 K130 ["TextBox"]
      618 NEWTABLE                         R68 16 0
      620 GETIMPORT                        R69 K116 [UDim2.new]
      622 LOADN                            R70 0
      623 GETTABLEKS                       R72 R26 K28 ["X"]
      625 ADD                              R71 R72 R27
      626 LOADN                            R72 0
      627 GETTABLEKS                       R73 R26 K33 ["Y"]
      629 CALL                             R69 4 1
      630 SETTABLEKS                       R69 R68 K4 ["Size"]
      632 SETTABLEKS                       R18 R68 K16 ["Position"]
      634 SETTABLEKS                       R24 R68 K73 ["BackgroundColor3"]
      636 SETTABLEKS                       R25 R68 K131 ["BorderColor3"]
      638 SETTABLEKS                       R19 R68 K9 ["Text"]
      640 SETTABLEKS                       R10 R68 K125 ["TextColor3"]
      642 SETTABLEKS                       R11 R68 K11 ["Font"]
      644 SETTABLEKS                       R12 R68 K126 ["TextSize"]
      646 SETTABLEKS                       R23 R68 K127 ["TextXAlignment"]
      648 GETIMPORT                        R69 K133 [Enum.TextTruncate.None]
      650 SETTABLEKS                       R69 R68 K12 ["TextTruncate"]
      652 SETTABLEKS                       R21 R68 K22 ["TextWrapped"]
      654 SETTABLEKS                       R22 R68 K23 ["ClearTextOnFocus"]
      656 GETUPVAL                         R69 4
      657 GETTABLEKS                       R69 R69 K134 ["Ref"]
      659 GETTABLEKS                       R70 R0 K135 ["textBoxRef"]
      661 SETTABLE                         R70 R68 R69
      662 GETUPVAL                         R69 4
      663 GETTABLEKS                       R69 R69 K136 ["Change"]
      665 GETTABLEKS                       R69 R69 K9 ["Text"]
      667 GETTABLEKS                       R70 R0 K137 ["onTextChanged"]
      669 SETTABLE                         R70 R68 R69
      670 GETUPVAL                         R69 4
      671 GETTABLEKS                       R69 R69 K97 ["Event"]
      673 GETTABLEKS                       R69 R69 K138 ["FocusLost"]
      675 GETTABLEKS                       R70 R0 K139 ["onTextBoxFocusLost"]
      677 SETTABLE                         R70 R68 R69
      678 CALL                             R66 2 1
      679 SETTABLEKS                       R66 R65 K104 ["RenameTextBox"]
      681 GETUPVAL                         R66 4
      682 GETTABLEKS                       R66 R66 K84 ["createElement"]
      684 GETUPVAL                         R67 8
      685 DUPTABLE                         R68 K121 [{"Text", "Enabled"}]
      686 SETTABLEKS                       R28 R68 K9 ["Text"]
      688 SETTABLEKS                       R4 R68 K3 ["Enabled"]
      690 CALL                             R66 2 1
      691 SETTABLEKS                       R66 R65 K105 ["NameTooltip"]
      693 MOVE                             R66 R4
      694 JUMPIFNOT                        R66 ; [+11]
      695 GETUPVAL                         R66 4
      696 GETTABLEKS                       R66 R66 K84 ["createElement"]
      698 GETUPVAL                         R67 8
      699 DUPTABLE                         R68 K121 [{"Text", "Enabled"}]
      700 SETTABLEKS                       R28 R68 K9 ["Text"]
      702 LOADB                            R69 1
      703 SETTABLEKS                       R69 R68 K3 ["Enabled"]
      705 CALL                             R66 2 1
      706 SETTABLEKS                       R66 R65 K106 ["DEPRECATED_Tooltip"]
      708 CALL                             R62 3 1
      709 SETTABLEKS                       R62 R61 K65 ["Button"]
      711 CALL                             R58 3 -1
      712 RETURN                           R58 -1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["AssetManagerReducer"]
        2 DUPTABLE                         R3 K4 [{"AssetsTable", "EditingAssets", "SelectedAssets"}]
        3 GETTABLEKS                       R4 R2 K5 ["assetsTable"]
        5 SETTABLEKS                       R4 R3 K1 ["AssetsTable"]
        7 GETTABLEKS                       R4 R2 K6 ["editingAssets"]
        9 SETTABLEKS                       R4 R3 K2 ["EditingAssets"]
       11 GETTABLEKS                       R4 R2 K7 ["selectedAssets"]
       13 SETTABLEKS                       R4 R3 K3 ["SelectedAssets"]
       15 RETURN                           R3 1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_22:
        0 DUPTABLE                         R1 K6 [{"dispatchGetAssetPreviewData", "dispatchOnAssetDoubleClick", "dispatchOnAssetRightClick", "dispatchOnAssetSingleClick", "dispatchSetEditingAssets", "dispatchChangeAssetAlias"}]
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
       24 SETTABLEKS                       R2 R1 K4 ["dispatchSetEditingAssets"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["dispatchChangeAssetAlias"]
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R3 K11 ["Util"]
       36 GETTABLEKS                       R7 R6 K12 ["StyleModifier"]
       38 GETTABLEKS                       R8 R6 K13 ["GetTextSize"]
       40 GETTABLEKS                       R9 R3 K14 ["UI"]
       42 GETTABLEKS                       R10 R9 K15 ["DragSource"]
       44 GETTABLEKS                       R11 R9 K16 ["Pane"]
       46 GETTABLEKS                       R12 R9 K17 ["Tooltip"]
       48 GETIMPORT                        R13 K4 [require]
       50 GETTABLEKS                       R14 R0 K18 ["Src"]
       52 GETTABLEKS                       R14 R14 K19 ["Components"]
       54 GETTABLEKS                       R14 R14 K20 ["PopUpButton"]
       56 CALL                             R13 1 1
       57 GETIMPORT                        R14 K4 [require]
       59 GETTABLEKS                       R15 R0 K18 ["Src"]
       61 GETTABLEKS                       R15 R15 K11 ["Util"]
       63 GETTABLEKS                       R15 R15 K21 ["AssetManagerUtilities"]
       65 CALL                             R14 1 1
       66 GETTABLEKS                       R14 R14 K22 ["enableAudioImport"]
       68 GETIMPORT                        R15 K4 [require]
       70 GETTABLEKS                       R16 R0 K18 ["Src"]
       72 GETTABLEKS                       R16 R16 K11 ["Util"]
       74 GETTABLEKS                       R16 R16 K21 ["AssetManagerUtilities"]
       76 CALL                             R15 1 1
       77 GETTABLEKS                       R15 R15 K23 ["enableVideoImport"]
       79 GETIMPORT                        R16 K4 [require]
       81 GETTABLEKS                       R17 R0 K18 ["Src"]
       83 GETTABLEKS                       R17 R17 K24 ["Actions"]
       85 GETTABLEKS                       R17 R17 K25 ["SetEditingAssets"]
       87 CALL                             R16 1 1
       88 GETIMPORT                        R17 K4 [require]
       90 GETTABLEKS                       R18 R0 K18 ["Src"]
       92 GETTABLEKS                       R18 R18 K24 ["Actions"]
       94 GETTABLEKS                       R18 R18 K26 ["ChangeAssetAlias"]
       96 CALL                             R17 1 1
       97 GETIMPORT                        R18 K4 [require]
       99 GETTABLEKS                       R19 R0 K18 ["Src"]
      101 GETTABLEKS                       R19 R19 K27 ["Thunks"]
      103 GETTABLEKS                       R19 R19 K28 ["GetAssetPreviewData"]
      105 CALL                             R18 1 1
      106 GETIMPORT                        R19 K4 [require]
      108 GETTABLEKS                       R20 R0 K18 ["Src"]
      110 GETTABLEKS                       R20 R20 K27 ["Thunks"]
      112 GETTABLEKS                       R20 R20 K29 ["OnAssetDoubleClick"]
      114 CALL                             R19 1 1
      115 GETIMPORT                        R20 K4 [require]
      117 GETTABLEKS                       R21 R0 K18 ["Src"]
      119 GETTABLEKS                       R21 R21 K27 ["Thunks"]
      121 GETTABLEKS                       R21 R21 K30 ["OnAssetRightClick"]
      123 CALL                             R20 1 1
      124 GETIMPORT                        R21 K4 [require]
      126 GETTABLEKS                       R22 R0 K18 ["Src"]
      128 GETTABLEKS                       R22 R22 K27 ["Thunks"]
      130 GETTABLEKS                       R22 R22 K31 ["OnAssetSingleClick"]
      132 CALL                             R21 1 1
      133 GETIMPORT                        R22 K4 [require]
      135 GETTABLEKS                       R23 R0 K18 ["Src"]
      137 GETTABLEKS                       R23 R23 K11 ["Util"]
      139 GETTABLEKS                       R23 R23 K32 ["ReviewStatus"]
      141 CALL                             R22 1 1
      142 GETIMPORT                        R23 K4 [require]
      144 GETTABLEKS                       R24 R0 K18 ["Src"]
      146 GETTABLEKS                       R24 R24 K11 ["Util"]
      148 GETTABLEKS                       R24 R24 K33 ["ModerationUtil"]
      150 CALL                             R23 1 1
      151 GETIMPORT                        R24 K4 [require]
      153 GETTABLEKS                       R25 R0 K18 ["Src"]
      155 GETTABLEKS                       R25 R25 K11 ["Util"]
      157 GETTABLEKS                       R25 R25 K34 ["ModernIcons"]
      159 CALL                             R24 1 1
      160 GETIMPORT                        R25 K36 [game]
      162 LOADK                            R27 K37 ["AssetManagerService"]
      163 NAMECALL                         R25 R25 K38 ["GetService"]
      165 CALL                             R25 2 1
      166 GETIMPORT                        R26 K36 [game]
      168 LOADK                            R28 K39 ["ContentProvider"]
      169 NAMECALL                         R26 R26 K38 ["GetService"]
      171 CALL                             R26 2 1
      172 GETTABLEKS                       R27 R1 K40 ["PureComponent"]
      174 LOADK                            R29 K41 ["Tile"]
      175 NAMECALL                         R27 R27 K42 ["extend"]
      177 CALL                             R27 2 1
      178 DUPCLOSURE                       R28 K43 [PROTO_0]
      179 DUPCLOSURE                       R29 K44 [PROTO_11]
      180 CAPTURE                          VAL R1
      181 CAPTURE                          VAL R7
      182 CAPTURE                          VAL R25
      183 CAPTURE                          VAL R14
      184 CAPTURE                          VAL R15
      185 CAPTURE                          VAL R26
      186 SETTABLEKS                       R29 R27 K45 ["init"]
      188 DUPCLOSURE                       R29 K46 [PROTO_12]
      189 SETTABLEKS                       R29 R27 K47 ["didMount"]
      191 DUPCLOSURE                       R29 K48 [PROTO_13]
      192 SETTABLEKS                       R29 R27 K49 ["didUpdate"]
      194 DUPCLOSURE                       R29 K50 [PROTO_14]
      195 CAPTURE                          VAL R8
      196 CAPTURE                          VAL R24
      197 CAPTURE                          VAL R22
      198 CAPTURE                          VAL R23
      199 CAPTURE                          VAL R1
      200 CAPTURE                          VAL R10
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R13
      203 CAPTURE                          VAL R12
      204 SETTABLEKS                       R29 R27 K51 ["render"]
      206 MOVE                             R29 R5
      207 DUPTABLE                         R30 K58 [{"Analytics", "API", "Localization", "Mouse", "Plugin", "Stylizer"}]
      208 GETTABLEKS                       R31 R4 K52 ["Analytics"]
      210 SETTABLEKS                       R31 R30 K52 ["Analytics"]
      212 GETTABLEKS                       R31 R4 K53 ["API"]
      214 SETTABLEKS                       R31 R30 K53 ["API"]
      216 GETTABLEKS                       R31 R4 K54 ["Localization"]
      218 SETTABLEKS                       R31 R30 K54 ["Localization"]
      220 GETTABLEKS                       R31 R4 K55 ["Mouse"]
      222 SETTABLEKS                       R31 R30 K55 ["Mouse"]
      224 GETTABLEKS                       R31 R4 K56 ["Plugin"]
      226 SETTABLEKS                       R31 R30 K56 ["Plugin"]
      228 GETTABLEKS                       R31 R4 K57 ["Stylizer"]
      230 SETTABLEKS                       R31 R30 K57 ["Stylizer"]
      232 CALL                             R29 1 1
      233 MOVE                             R30 R27
      234 CALL                             R29 1 1
      235 MOVE                             R27 R29
      236 DUPCLOSURE                       R29 K59 [PROTO_15]
      237 DUPCLOSURE                       R30 K60 [PROTO_22]
      238 CAPTURE                          VAL R18
      239 CAPTURE                          VAL R19
      240 CAPTURE                          VAL R20
      241 CAPTURE                          VAL R21
      242 CAPTURE                          VAL R16
      243 CAPTURE                          VAL R17
      244 GETTABLEKS                       R31 R2 K61 ["connect"]
      246 MOVE                             R32 R29
      247 MOVE                             R33 R30
      248 CALL                             R31 2 1
      249 MOVE                             R32 R27
      250 CALL                             R31 1 -1
      251 RETURN                           R31 -1
