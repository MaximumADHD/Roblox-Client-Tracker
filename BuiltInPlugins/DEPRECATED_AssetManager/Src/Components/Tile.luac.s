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
       25 DUPTABLE                         R3 K9 [{["assetPreviewButtonHovered"] = True}]
       26 NAMECALL                         R1 R1 K6 ["setState"]
       28 CALL                             R1 2 0
       29 GETUPVAL                         R1 0
       30 GETTABLEKS                       R1 R1 K0 ["props"]
       32 GETTABLEKS                       R1 R1 K10 ["AssetData"]
       34 GETTABLEKS                       R3 R1 K11 ["ClassName"]
       36 JUMPIFEQKS                       R3 K12 ["Folder"] ; [+2]
       38 LOADB                            R2 0 +1
       39 LOADB                            R2 1
       40 GETTABLEKS                       R4 R1 K13 ["assetType"]
       42 GETIMPORT                        R5 K17 [Enum.AssetType.Place]
       44 JUMPIFEQ                         R4 R5 ; [+2]
       46 LOADB                            R3 0 +1
       47 LOADB                            R3 1
       48 JUMPIF                           R2 ; [+38]
       49 JUMPIF                           R3 ; [+37]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R5 R5 K0 ["props"]
       53 GETTABLEKS                       R5 R5 K18 ["AssetsTable"]
       55 GETTABLEKS                       R5 R5 K19 ["assetPreviewData"]
       57 GETTABLEKS                       R6 R1 K20 ["id"]
       59 GETTABLE                         R4 R5 R6
       60 FASTCALL1                        TYPE R4 ; [+3]
       61 MOVE                             R6 R4
       62 GETIMPORT                        R5 K22 [type]
       64 CALL                             R5 1 1
       65 JUMPIFEQKS                       R5 K23 ["table"] ; [+21]
       67 GETUPVAL                         R5 0
       68 GETTABLEKS                       R5 R5 K0 ["props"]
       70 GETTABLEKS                       R5 R5 K24 ["dispatchGetAssetPreviewData"]
       72 GETUPVAL                         R6 0
       73 GETTABLEKS                       R6 R6 K0 ["props"]
       75 GETTABLEKS                       R6 R6 K25 ["API"]
       77 NAMECALL                         R6 R6 K26 ["get"]
       79 CALL                             R6 1 1
       80 NEWTABLE                         R7 0 1
       82 GETTABLEKS                       R8 R1 K20 ["id"]
       84 SETLIST                          R7 R8 1 [1]
       86 CALL                             R5 2 0
       87 RETURN                           R0 0

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
       28 DUPTABLE                         R3 K10 [{["assetPreviewButtonHovered"] = False}]
       29 NAMECALL                         R1 R1 K7 ["setState"]
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

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
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["props"]
        8 GETTABLEKS                       R0 R0 K5 ["AssetData"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K4 ["props"]
       13 GETTABLEKS                       R1 R1 K6 ["OnOpenAssetPreview"]
       15 MOVE                             R2 R0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

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
        0 DUPTABLE                         R1 K7 [{[1] = , ["assetFetchStatus"] = , ["assetPreviewButtonHovered"] = False, ["editText"] = ""}]
        1 SETTABLEKS                       R1 R0 K8 ["state"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K9 ["editing"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K10 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K11 ["textBoxRef"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 SETTABLEKS                       R1 R0 K12 ["onMouseEnter"]
       17 NEWCLOSURE                       R1 P1
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U0
       21 SETTABLEKS                       R1 R0 K13 ["onMouseLeave"]
       23 NEWCLOSURE                       R1 P2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K14 ["onClick"]
       27 NEWCLOSURE                       R1 P3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K15 ["onDragBegan"]
       31 NEWCLOSURE                       R1 P4
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K16 ["onRightClick"]
       35 NEWCLOSURE                       R1 P5
       36 CAPTURE                          VAL R0
       37 SETTABLEKS                       R1 R0 K17 ["openAssetPreview"]
       39 NEWCLOSURE                       R1 P6
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R1 R0 K18 ["onTextChanged"]
       43 NEWCLOSURE                       R1 P7
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U3
       47 CAPTURE                          UPVAL U4
       48 SETTABLEKS                       R1 R0 K19 ["onTextBoxFocusLost"]
       50 GETTABLEKS                       R1 R0 K20 ["props"]
       52 GETTABLEKS                       R2 R1 K21 ["AssetData"]
       54 GETTABLEKS                       R4 R2 K22 ["ClassName"]
       56 JUMPIFEQKS                       R4 K23 ["Folder"] ; [+2]
       58 LOADB                            R3 0 +1
       59 LOADB                            R3 1
       60 GETTABLEKS                       R4 R2 K24 ["id"]
       62 JUMPIF                           R3 ; [+31]
       63 GETTABLEKS                       R5 R2 K25 ["assetType"]
       65 GETIMPORT                        R6 K29 [Enum.AssetType.Place]
       67 JUMPIFNOTEQ                      R5 R6 ; [+11]
       69 GETIMPORT                        R5 K32 [string.format]
       71 LOADK                            R6 K33 ["rbxthumb://type=AutoGeneratedAsset&id=%i&w=%i&h=%i"]
       72 MOVE                             R7 R4
       73 LOADN                            R8 150
       74 LOADN                            R9 150
       75 CALL                             R5 4 1
       76 SETTABLEKS                       R5 R0 K34 ["thumbnailUrl"]
       78 JUMP                             ; [+9]
       79 GETIMPORT                        R5 K32 [string.format]
       81 LOADK                            R6 K35 ["rbxthumb://type=Asset&id=%i&w=%i&h=%i"]
       82 MOVE                             R7 R4
       83 LOADN                            R8 150
       84 LOADN                            R9 150
       85 CALL                             R5 4 1
       86 SETTABLEKS                       R5 R0 K34 ["thumbnailUrl"]
       88 GETIMPORT                        R5 K37 [spawn]
       90 NEWCLOSURE                       R6 P8
       91 CAPTURE                          VAL R0
       92 CAPTURE                          UPVAL U5
       93 CALL                             R5 1 0
       94 RETURN                           R0 0

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
      295 DUPTABLE                         R51 K75 [{["Size"], ["Position"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 0}]
      296 SETTABLEKS                       R34 R51 K4 ["Size"]
      298 SETTABLEKS                       R36 R51 K16 ["Position"]
      300 SETTABLEKS                       R39 R51 K74 ["BackgroundColor3"]
      302 JUMPIF                           R31 ; [+2]
      303 SETTABLEKS                       R33 R51 K50 ["Image"]
      305 LOADNIL                          R52
      306 LOADNIL                          R53
      307 LOADNIL                          R54
      308 LOADNIL                          R55
      309 LOADNIL                          R56
      310 LOADNIL                          R57
      311 JUMPIF                           R31 ; [+68]
      312 GETTABLEKS                       R58 R1 K76 ["ModerationData"]
      314 JUMPIFNOT                        R58 ; [+65]
      315 GETIMPORT                        R59 K78 [next]
      317 MOVE                             R60 R58
      318 CALL                             R59 1 1
      319 JUMPIFEQKNIL                     R59 ; [+60]
      321 GETTABLEKS                       R60 R58 K79 ["reviewStatus"]
      323 GETUPVAL                         R61 2
      324 GETTABLEKS                       R61 R61 K80 ["Pending"]
      326 JUMPIFEQ                         R60 R61 ; [+2]
      328 LOADB                            R59 0 +1
      329 LOADB                            R59 1
      330 GETUPVAL                         R60 3
      331 GETTABLEKS                       R60 R60 K81 ["isApprovedAsset"]
      333 MOVE                             R61 R58
      334 CALL                             R60 1 1
      335 MOVE                             R61 R59
      336 JUMPIF                           R61 ; [+1]
      337 NOT                              R61 R60
      338 MOVE                             R52 R61
      339 JUMPIFNOT                        R52 ; [+40]
      340 JUMPIFNOT                        R59 ; [+7]
      341 GETTABLEKS                       R61 R2 K50 ["Image"]
      343 GETTABLEKS                       R61 R61 K82 ["ModerationStatus"]
      345 GETTABLEKS                       R53 R61 K80 ["Pending"]
      347 JUMP                             ; [+7]
      348 JUMPIF                           R60 ; [+6]
      349 GETTABLEKS                       R61 R2 K50 ["Image"]
      351 GETTABLEKS                       R61 R61 K82 ["ModerationStatus"]
      353 GETTABLEKS                       R53 R61 K83 ["Rejected"]
      355 GETTABLEKS                       R61 R2 K50 ["Image"]
      357 GETTABLEKS                       R61 R61 K82 ["ModerationStatus"]
      359 GETTABLEKS                       R54 R61 K4 ["Size"]
      361 GETTABLEKS                       R61 R2 K50 ["Image"]
      363 GETTABLEKS                       R61 R61 K82 ["ModerationStatus"]
      365 GETTABLEKS                       R55 R61 K69 ["XOffset"]
      367 GETTABLEKS                       R61 R2 K50 ["Image"]
      369 GETTABLEKS                       R61 R61 K82 ["ModerationStatus"]
      371 GETTABLEKS                       R56 R61 K70 ["YOffset"]
      373 GETUPVAL                         R61 3
      374 GETTABLEKS                       R61 R61 K84 ["getModerationTooltip"]
      376 MOVE                             R62 R3
      377 MOVE                             R63 R58
      378 CALL                             R61 2 1
      379 MOVE                             R57 R61
      380 GETUPVAL                         R58 4
      381 GETTABLEKS                       R58 R58 K85 ["createElement"]
      383 GETUPVAL                         R59 5
      384 DUPTABLE                         R60 K90 [{"AutomaticSize", "LayoutOrder", "OnClick", "OnRightClick", "OnDragBegan"}]
      385 GETIMPORT                        R61 K92 [Enum.AutomaticSize.XY]
      387 SETTABLEKS                       R61 R60 K86 ["AutomaticSize"]
      389 SETTABLEKS                       R49 R60 K71 ["LayoutOrder"]
      391 GETTABLEKS                       R61 R0 K93 ["onClick"]
      393 SETTABLEKS                       R61 R60 K87 ["OnClick"]
      395 GETTABLEKS                       R61 R0 K94 ["onRightClick"]
      397 SETTABLEKS                       R61 R60 K88 ["OnRightClick"]
      399 GETTABLEKS                       R61 R0 K95 ["onDragBegan"]
      401 SETTABLEKS                       R61 R60 K89 ["OnDragBegan"]
      403 DUPTABLE                         R61 K96 [{"Button"}]
      404 GETUPVAL                         R62 4
      405 GETTABLEKS                       R62 R62 K85 ["createElement"]
      407 GETUPVAL                         R63 6
      408 NEWTABLE                         R64 8 0
      410 SETTABLEKS                       R7 R64 K6 ["BackgroundColor"]
      412 SETTABLEKS                       R5 R64 K4 ["Size"]
      414 SETTABLEKS                       R8 R64 K97 ["Transparency"]
      416 GETUPVAL                         R65 4
      417 GETTABLEKS                       R65 R65 K98 ["Event"]
      419 GETTABLEKS                       R65 R65 K99 ["MouseEnter"]
      421 GETTABLEKS                       R66 R0 K100 ["onMouseEnter"]
      423 SETTABLE                         R66 R64 R65
      424 GETUPVAL                         R65 4
      425 GETTABLEKS                       R65 R65 K98 ["Event"]
      427 GETTABLEKS                       R65 R65 K101 ["MouseLeave"]
      429 GETTABLEKS                       R66 R0 K102 ["onMouseLeave"]
      431 SETTABLE                         R66 R64 R65
      432 DUPTABLE                         R65 K108 [{"ThumbnailContainer", "Name", "RenameTextBox", "NameTooltip", "DEPRECATED_Tooltip"}]
      433 GETUPVAL                         R66 4
      434 GETTABLEKS                       R66 R66 K85 ["createElement"]
      436 MOVE                             R67 R50
      437 MOVE                             R68 R51
      438 DUPTABLE                         R69 K113 [{"AssetPreviewButton", "RootPlaceImage", "ModerationStatusImage", "FolderImage"}]
      439 MOVE                             R70 R40
      440 JUMPIFNOT                        R70 ; [+27]
      441 GETUPVAL                         R70 4
      442 GETTABLEKS                       R70 R70 K85 ["createElement"]
      444 GETUPVAL                         R71 7
      445 DUPTABLE                         R72 K115 [{"Position", "Image", "ShowIcon", "OnClick", "OnRightClick"}]
      446 GETIMPORT                        R73 K117 [UDim2.new]
      448 LOADN                            R74 1
      449 MINUS                            R75 R43
      450 LOADN                            R76 0
      451 MOVE                             R77 R43
      452 CALL                             R73 4 1
      453 SETTABLEKS                       R73 R72 K16 ["Position"]
      455 SETTABLEKS                       R42 R72 K50 ["Image"]
      457 SETTABLEKS                       R41 R72 K114 ["ShowIcon"]
      459 GETTABLEKS                       R73 R0 K118 ["openAssetPreview"]
      461 SETTABLEKS                       R73 R72 K87 ["OnClick"]
      463 GETTABLEKS                       R73 R0 K94 ["onRightClick"]
      465 SETTABLEKS                       R73 R72 K88 ["OnRightClick"]
      467 CALL                             R70 2 1
      468 SETTABLEKS                       R70 R69 K109 ["AssetPreviewButton"]
      470 MOVE                             R70 R44
      471 JUMPIFNOT                        R70 ; [+26]
      472 GETUPVAL                         R70 4
      473 GETTABLEKS                       R70 R70 K85 ["createElement"]
      475 LOADK                            R71 K72 ["ImageLabel"]
      476 DUPTABLE                         R72 K120 [{["Size"], ["Position"], ["Image"], ["BackgroundTransparency"] = 1}]
      477 GETIMPORT                        R73 K117 [UDim2.new]
      479 LOADN                            R74 0
      480 MOVE                             R75 R45
      481 LOADN                            R76 0
      482 MOVE                             R77 R45
      483 CALL                             R73 4 1
      484 SETTABLEKS                       R73 R72 K4 ["Size"]
      486 GETIMPORT                        R73 K117 [UDim2.new]
      488 LOADN                            R74 0
      489 MOVE                             R75 R47
      490 LOADN                            R76 0
      491 MOVE                             R77 R48
      492 CALL                             R73 4 1
      493 SETTABLEKS                       R73 R72 K16 ["Position"]
      495 SETTABLEKS                       R46 R72 K50 ["Image"]
      497 CALL                             R70 2 1
      498 SETTABLEKS                       R70 R69 K110 ["RootPlaceImage"]
      500 MOVE                             R70 R52
      501 JUMPIFNOT                        R70 ; [+39]
      502 GETUPVAL                         R70 4
      503 GETTABLEKS                       R70 R70 K85 ["createElement"]
      505 LOADK                            R71 K72 ["ImageLabel"]
      506 DUPTABLE                         R72 K120 [{["Size"], ["Position"], ["Image"], ["BackgroundTransparency"] = 1}]
      507 GETIMPORT                        R73 K117 [UDim2.new]
      509 LOADN                            R74 0
      510 MOVE                             R75 R54
      511 LOADN                            R76 0
      512 MOVE                             R77 R54
      513 CALL                             R73 4 1
      514 SETTABLEKS                       R73 R72 K4 ["Size"]
      516 GETIMPORT                        R73 K117 [UDim2.new]
      518 LOADN                            R74 0
      519 MOVE                             R75 R55
      520 LOADN                            R76 0
      521 MOVE                             R77 R56
      522 CALL                             R73 4 1
      523 SETTABLEKS                       R73 R72 K16 ["Position"]
      525 SETTABLEKS                       R53 R72 K50 ["Image"]
      527 DUPTABLE                         R73 K122 [{"ModerationTooltip"}]
      528 GETUPVAL                         R74 4
      529 GETTABLEKS                       R74 R74 K85 ["createElement"]
      531 GETUPVAL                         R75 8
      532 DUPTABLE                         R76 K123 [{"Text", "Enabled"}]
      533 SETTABLEKS                       R57 R76 K9 ["Text"]
      535 SETTABLEKS                       R4 R76 K3 ["Enabled"]
      537 CALL                             R74 2 1
      538 SETTABLEKS                       R74 R73 K121 ["ModerationTooltip"]
      540 CALL                             R70 3 1
      541 SETTABLEKS                       R70 R69 K111 ["ModerationStatusImage"]
      543 MOVE                             R70 R31
      544 JUMPIFNOT                        R70 ; [+14]
      545 GETUPVAL                         R70 4
      546 GETTABLEKS                       R70 R70 K85 ["createElement"]
      548 LOADK                            R71 K72 ["ImageLabel"]
      549 DUPTABLE                         R72 K125 [{["Size"], ["Image"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1}]
      550 SETTABLEKS                       R35 R72 K4 ["Size"]
      552 SETTABLEKS                       R33 R72 K50 ["Image"]
      554 SETTABLEKS                       R37 R72 K16 ["Position"]
      556 SETTABLEKS                       R38 R72 K124 ["AnchorPoint"]
      558 CALL                             R70 2 1
      559 SETTABLEKS                       R70 R69 K112 ["FolderImage"]
      561 CALL                             R66 3 1
      562 SETTABLEKS                       R66 R65 K103 ["ThumbnailContainer"]
      564 NOT                              R66 R20
      565 JUMPIFNOT                        R66 ; [+26]
      566 GETUPVAL                         R66 4
      567 GETTABLEKS                       R66 R66 K85 ["createElement"]
      569 LOADK                            R67 K126 ["TextLabel"]
      570 DUPTABLE                         R68 K132 [{["Size"], ["Position"], ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["BackgroundTransparency"], ["TextXAlignment"], ["TextYAlignment"], ["TextTruncate"], ["TextWrapped"] = True}]
      571 SETTABLEKS                       R17 R68 K4 ["Size"]
      573 SETTABLEKS                       R18 R68 K16 ["Position"]
      575 SETTABLEKS                       R29 R68 K9 ["Text"]
      577 SETTABLEKS                       R10 R68 K127 ["TextColor3"]
      579 SETTABLEKS                       R11 R68 K11 ["Font"]
      581 SETTABLEKS                       R12 R68 K128 ["TextSize"]
      583 SETTABLEKS                       R13 R68 K7 ["BackgroundTransparency"]
      585 SETTABLEKS                       R15 R68 K129 ["TextXAlignment"]
      587 SETTABLEKS                       R16 R68 K130 ["TextYAlignment"]
      589 SETTABLEKS                       R14 R68 K12 ["TextTruncate"]
      591 CALL                             R66 2 1
      592 SETTABLEKS                       R66 R65 K104 ["Name"]
      594 MOVE                             R66 R20
      595 JUMPIFNOT                        R66 ; [+65]
      596 GETUPVAL                         R66 4
      597 GETTABLEKS                       R66 R66 K85 ["createElement"]
      599 LOADK                            R67 K133 ["TextBox"]
      600 NEWTABLE                         R68 16 0
      602 GETIMPORT                        R69 K117 [UDim2.new]
      604 LOADN                            R70 0
      605 GETTABLEKS                       R72 R26 K28 ["X"]
      607 ADD                              R71 R72 R27
      608 LOADN                            R72 0
      609 GETTABLEKS                       R73 R26 K33 ["Y"]
      611 CALL                             R69 4 1
      612 SETTABLEKS                       R69 R68 K4 ["Size"]
      614 SETTABLEKS                       R18 R68 K16 ["Position"]
      616 SETTABLEKS                       R24 R68 K74 ["BackgroundColor3"]
      618 SETTABLEKS                       R25 R68 K134 ["BorderColor3"]
      620 SETTABLEKS                       R19 R68 K9 ["Text"]
      622 SETTABLEKS                       R10 R68 K127 ["TextColor3"]
      624 SETTABLEKS                       R11 R68 K11 ["Font"]
      626 SETTABLEKS                       R12 R68 K128 ["TextSize"]
      628 SETTABLEKS                       R23 R68 K129 ["TextXAlignment"]
      630 GETIMPORT                        R69 K136 [Enum.TextTruncate.None]
      632 SETTABLEKS                       R69 R68 K12 ["TextTruncate"]
      634 SETTABLEKS                       R21 R68 K22 ["TextWrapped"]
      636 SETTABLEKS                       R22 R68 K23 ["ClearTextOnFocus"]
      638 GETUPVAL                         R69 4
      639 GETTABLEKS                       R69 R69 K137 ["Ref"]
      641 GETTABLEKS                       R70 R0 K138 ["textBoxRef"]
      643 SETTABLE                         R70 R68 R69
      644 GETUPVAL                         R69 4
      645 GETTABLEKS                       R69 R69 K139 ["Change"]
      647 GETTABLEKS                       R69 R69 K9 ["Text"]
      649 GETTABLEKS                       R70 R0 K140 ["onTextChanged"]
      651 SETTABLE                         R70 R68 R69
      652 GETUPVAL                         R69 4
      653 GETTABLEKS                       R69 R69 K98 ["Event"]
      655 GETTABLEKS                       R69 R69 K141 ["FocusLost"]
      657 GETTABLEKS                       R70 R0 K142 ["onTextBoxFocusLost"]
      659 SETTABLE                         R70 R68 R69
      660 CALL                             R66 2 1
      661 SETTABLEKS                       R66 R65 K105 ["RenameTextBox"]
      663 GETUPVAL                         R66 4
      664 GETTABLEKS                       R66 R66 K85 ["createElement"]
      666 GETUPVAL                         R67 8
      667 DUPTABLE                         R68 K123 [{"Text", "Enabled"}]
      668 SETTABLEKS                       R28 R68 K9 ["Text"]
      670 SETTABLEKS                       R4 R68 K3 ["Enabled"]
      672 CALL                             R66 2 1
      673 SETTABLEKS                       R66 R65 K106 ["NameTooltip"]
      675 MOVE                             R66 R4
      676 JUMPIFNOT                        R66 ; [+8]
      677 GETUPVAL                         R66 4
      678 GETTABLEKS                       R66 R66 K85 ["createElement"]
      680 GETUPVAL                         R67 8
      681 DUPTABLE                         R68 K143 [{["Text"], ["Enabled"] = True}]
      682 SETTABLEKS                       R28 R68 K9 ["Text"]
      684 CALL                             R66 2 1
      685 SETTABLEKS                       R66 R65 K107 ["DEPRECATED_Tooltip"]
      687 CALL                             R62 3 1
      688 SETTABLEKS                       R62 R61 K65 ["Button"]
      690 CALL                             R58 3 -1
      691 RETURN                           R58 -1

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
