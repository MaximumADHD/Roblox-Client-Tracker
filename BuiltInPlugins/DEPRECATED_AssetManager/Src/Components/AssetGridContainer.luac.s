PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Path"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["IMAGES"]
        6 GETTABLEKS                       R3 R3 K0 ["Path"]
        8 JUMPIFEQ                         R2 R3 ; [+48]
       10 LOADB                            R1 1
       11 GETTABLEKS                       R2 R0 K0 ["Path"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["MESHES"]
       16 GETTABLEKS                       R3 R3 K0 ["Path"]
       18 JUMPIFEQ                         R2 R3 ; [+38]
       20 GETUPVAL                         R2 1
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+10]
       23 LOADB                            R1 1
       24 GETTABLEKS                       R2 R0 K0 ["Path"]
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R3 R3 K3 ["AUDIO"]
       29 GETTABLEKS                       R3 R3 K0 ["Path"]
       31 JUMPIFEQ                         R2 R3 ; [+25]
       33 GETUPVAL                         R2 2
       34 CALL                             R2 0 1
       35 JUMPIFNOT                        R2 ; [+10]
       36 LOADB                            R1 1
       37 GETTABLEKS                       R2 R0 K0 ["Path"]
       39 GETUPVAL                         R3 0
       40 GETTABLEKS                       R3 R3 K4 ["VIDEO"]
       42 GETTABLEKS                       R3 R3 K0 ["Path"]
       44 JUMPIFEQ                         R2 R3 ; [+12]
       46 GETTABLEKS                       R2 R0 K0 ["Path"]
       48 GETUPVAL                         R3 0
       49 GETTABLEKS                       R3 R3 K5 ["MODELS"]
       51 GETTABLEKS                       R3 R3 K0 ["Path"]
       53 JUMPIFEQ                         R2 R3 ; [+2]
       55 LOADB                            R1 0 +1
       56 LOADB                            R1 1
       57 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["Path"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["MAIN"]
        5 GETTABLEKS                       R4 R4 K0 ["Path"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+20]
        9 GETIMPORT                        R3 K3 [pairs]
       11 GETUPVAL                         R4 0
       12 CALL                             R3 1 3
       13 FORGPREP_NEXT                    R3
       14 GETTABLEKS                       R8 R7 K0 ["Path"]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R9 R9 K1 ["MAIN"]
       19 GETTABLEKS                       R9 R9 K0 ["Path"]
       21 JUMPIFEQ                         R8 R9 ; [+3]
       23 LOADB                            R8 1
       24 RETURN                           R8 1
       25 FORGLOOP                         R3 2 ; [-12]
       27 JUMP                             ; [+24]
       28 GETIMPORT                        R3 K3 [pairs]
       30 MOVE                             R4 R0
       31 CALL                             R3 1 3
       32 FORGPREP_NEXT                    R3
       33 GETIMPORT                        R8 K6 [string.find]
       35 GETIMPORT                        R9 K8 [string.lower]
       37 GETTABLEKS                       R10 R7 K9 ["name"]
       39 CALL                             R9 1 1
       40 GETIMPORT                        R10 K8 [string.lower]
       42 MOVE                             R11 R2
       43 CALL                             R10 1 1
       44 LOADN                            R11 1
       45 LOADB                            R12 1
       46 CALL                             R8 4 1
       47 JUMPIFNOT                        R8 ; [+2]
       48 LOADB                            R8 1
       49 RETURN                           R8 1
       50 FORGLOOP                         R3 2 ; [-18]
       52 LOADB                            R3 0
       53 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["Enabled"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K0 ["props"]
       10 GETTABLEKS                       R0 R0 K2 ["dispatchUpdateSelectedAssets"]
       12 NEWTABLE                         R1 0 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K2 ["dispatchUpdateSelectedAssets"]
       12 NEWTABLE                         R2 0 0
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K3 ["CurrentScreen"]
       17 GETTABLEKS                       R2 R1 K4 ["Path"]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R3 R3 K5 ["PLACES"]
       22 GETTABLEKS                       R3 R3 K4 ["Path"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+9]
       26 DUPTABLE                         R2 K9 [{["ClassName"] = "Folder", ["Screen"]}]
       27 SETTABLEKS                       R1 R2 K8 ["Screen"]
       29 GETTABLEKS                       R3 R0 K10 ["dispatchOnAssetRightClick"]
       31 MOVE                             R4 R0
       32 MOVE                             R5 R2
       33 CALL                             R3 2 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["dispatchUpdateSelectedAssets"]
        5 NEWTABLE                         R2 1 0
        7 GETTABLEKS                       R3 R0 K2 ["key"]
        9 LOADB                            R4 1
       10 SETTABLE                         R4 R2 R3
       11 CALL                             R1 1 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["props"]
       15 GETTABLEKS                       R2 R2 K3 ["AssetsTable"]
       17 GETTABLEKS                       R2 R2 K4 ["assetPreviewData"]
       19 GETTABLEKS                       R3 R0 K5 ["id"]
       21 GETTABLE                         R1 R2 R3
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K0 ["props"]
       25 GETTABLEKS                       R2 R2 K6 ["OnOpenAssetPreview"]
       27 MOVE                             R3 R0
       28 MOVE                             R4 R1
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnAssetPreviewClose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["InsertAsset"]
        5 NAMECALL                         R2 R2 K2 ["get"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R1 K3 ["dispatchOnAssetDrag"]
       10 MOVE                             R4 R2
       11 MOVE                             R5 R0
       12 GETTABLEKS                       R6 R1 K4 ["Analytics"]
       14 CALL                             R3 3 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnOpenConfirmRemovePlaceDialog"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K3 [{[1] = "", ["currentView"] = ""}]
        1 SETTABLEKS                       R1 R0 K4 ["state"]
        3 LOADB                            R1 0
        4 SETTABLEKS                       R1 R0 K5 ["hasItemsToDisplay"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K6 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K7 ["gridLayoutRef"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K6 ["createRef"]
       15 CALL                             R1 0 1
       16 SETTABLEKS                       R1 R0 K8 ["listLayoutRef"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K9 ["bulkImportFinishedConnection"]
       21 LOADNIL                          R1
       22 SETTABLEKS                       R1 R0 K10 ["importSessionFinishedConnection"]
       24 NEWCLOSURE                       R1 P0
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K11 ["onClearSelection"]
       28 NEWCLOSURE                       R1 P1
       29 CAPTURE                          VAL R0
       30 CAPTURE                          UPVAL U1
       31 SETTABLEKS                       R1 R0 K12 ["onMouseButton2Click"]
       33 NEWCLOSURE                       R1 P2
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K13 ["onOpenAssetPreview"]
       37 NEWCLOSURE                       R1 P3
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K14 ["onAssetPreviewClose"]
       41 NEWCLOSURE                       R1 P4
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K15 ["onAssetDrag"]
       45 NEWCLOSURE                       R1 P5
       46 CAPTURE                          VAL R0
       47 SETTABLEKS                       R1 R0 K16 ["onOpenConfirmRemovePlaceDialog"]
       49 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["CurrentScreen"]
        5 JUMPIFNOTEQKN                    R0 K2 [1] ; [+24]
        7 GETUPVAL                         R3 1
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMPIFNOT                        R3 ; [+19]
       11 GETTABLEKS                       R3 R1 K3 ["API"]
       13 NAMECALL                         R3 R3 K4 ["get"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R1 K5 ["dispatchSetAssets"]
       18 DUPTABLE                         R5 K7 [{"assets"}]
       19 NEWTABLE                         R6 0 0
       21 SETTABLEKS                       R6 R5 K6 ["assets"]
       23 CALL                             R4 1 0
       24 GETTABLEKS                       R4 R1 K8 ["dispatchGetAssets"]
       26 MOVE                             R5 R3
       27 GETTABLEKS                       R6 R2 K9 ["AssetType"]
       29 CALL                             R4 2 0
       30 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["CurrentScreen"]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 JUMPIFNOT                        R2 ; [+19]
        9 GETTABLEKS                       R2 R0 K2 ["API"]
       11 NAMECALL                         R2 R2 K3 ["get"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R0 K4 ["dispatchSetAssets"]
       16 DUPTABLE                         R4 K6 [{"assets"}]
       17 NEWTABLE                         R5 0 0
       19 SETTABLEKS                       R5 R4 K5 ["assets"]
       21 CALL                             R3 1 0
       22 GETTABLEKS                       R3 R0 K7 ["dispatchGetAssets"]
       24 MOVE                             R4 R2
       25 GETTABLEKS                       R5 R1 K8 ["AssetType"]
       27 CALL                             R3 2 0
       28 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["BulkImportFinished"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R1 R1 K1 ["connect"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K2 ["bulkImportFinishedConnection"]
       11 GETUPVAL                         R1 2
       12 GETTABLEKS                       R1 R1 K3 ["ImportSessionFinished"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U1
       17 NAMECALL                         R1 R1 K4 ["Connect"]
       19 CALL                             R1 2 1
       20 SETTABLEKS                       R1 R0 K5 ["importSessionFinishedConnection"]
       22 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["bulkImportFinishedConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["bulkImportFinishedConnection"]
        5 NAMECALL                         R1 R1 K1 ["disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["importSessionFinishedConnection"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["importSessionFinishedConnection"]
       13 NAMECALL                         R1 R1 K3 ["Disconnect"]
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_13:
        0 LOADN                            R10 0
        1 DUPTABLE                         R11 K1 [{"GridLayout"}]
        2 GETUPVAL                         R12 0
        3 GETTABLEKS                       R12 R12 K2 ["createElement"]
        5 LOADK                            R13 K3 ["UIGridLayout"]
        6 NEWTABLE                         R14 4 0
        8 GETUPVAL                         R16 1
        9 GETTABLEKS                       R16 R16 K4 ["Tile"]
       11 GETTABLE                         R15 R3 R16
       12 GETTABLEKS                       R15 R15 K5 ["Size"]
       14 SETTABLEKS                       R15 R14 K6 ["CellSize"]
       16 GETTABLEKS                       R15 R3 K7 ["AssetGridContainer"]
       18 GETTABLEKS                       R15 R15 K8 ["CellPadding"]
       20 SETTABLEKS                       R15 R14 K8 ["CellPadding"]
       22 GETIMPORT                        R15 K12 [Enum.SortOrder.LayoutOrder]
       24 SETTABLEKS                       R15 R14 K10 ["SortOrder"]
       26 GETUPVAL                         R15 0
       27 GETTABLEKS                       R15 R15 K13 ["Ref"]
       29 GETTABLEKS                       R16 R0 K14 ["gridLayoutRef"]
       31 SETTABLE                         R16 R14 R15
       32 CALL                             R12 2 1
       33 SETTABLEKS                       R12 R11 K0 ["GridLayout"]
       35 GETTABLEKS                       R12 R6 K15 ["Path"]
       37 GETUPVAL                         R13 2
       38 GETTABLEKS                       R13 R13 K16 ["MAIN"]
       40 GETTABLEKS                       R13 R13 K15 ["Path"]
       42 JUMPIFNOTEQ                      R12 R13 ; [+57]
       44 GETIMPORT                        R12 K18 [pairs]
       46 GETUPVAL                         R13 2
       47 CALL                             R12 1 3
       48 FORGPREP_NEXT                    R12
       49 GETTABLEKS                       R17 R16 K15 ["Path"]
       51 GETUPVAL                         R18 2
       52 GETTABLEKS                       R18 R18 K16 ["MAIN"]
       54 GETTABLEKS                       R18 R18 K15 ["Path"]
       56 JUMPIFEQ                         R17 R18 ; [+40]
       58 GETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
       60 GETUPVAL                         R18 0
       61 GETTABLEKS                       R18 R18 K2 ["createElement"]
       63 GETUPVAL                         R19 3
       64 DUPTABLE                         R20 K22 [{"AssetData", "LayoutOrder", "StyleModifier", "Enabled"}]
       65 DUPTABLE                         R21 K27 [{["name"], ["ClassName"] = "Folder", ["Screen"]}]
       66 LOADK                            R24 K28 ["Folders"]
       67 GETTABLEKS                       R25 R16 K15 ["Path"]
       69 NAMECALL                         R22 R2 K29 ["getText"]
       71 CALL                             R22 3 1
       72 SETTABLEKS                       R22 R21 K23 ["name"]
       74 SETTABLEKS                       R16 R21 K26 ["Screen"]
       76 SETTABLEKS                       R21 R20 K19 ["AssetData"]
       78 GETTABLEKS                       R21 R16 K11 ["LayoutOrder"]
       80 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
       82 GETTABLE                         R22 R8 R17
       83 JUMPIFNOT                        R22 ; [+4]
       84 GETUPVAL                         R21 4
       85 GETTABLEKS                       R21 R21 K30 ["Selected"]
       87 JUMPIF                           R21 ; [+1]
       88 LOADNIL                          R21
       89 SETTABLEKS                       R21 R20 K20 ["StyleModifier"]
       91 SETTABLEKS                       R9 R20 K21 ["Enabled"]
       93 CALL                             R18 2 1
       94 GETTABLEKS                       R19 R16 K15 ["Path"]
       96 SETTABLE                         R18 R11 R19
       97 FORGLOOP                         R12 2 ; [-49]
       99 JUMP                             ; [+76]
      100 GETIMPORT                        R12 K18 [pairs]
      102 MOVE                             R13 R4
      103 CALL                             R12 1 3
      104 FORGPREP_NEXT                    R12
      105 GETIMPORT                        R17 K33 [string.find]
      107 GETIMPORT                        R18 K35 [string.lower]
      109 GETTABLEKS                       R19 R16 K23 ["name"]
      111 CALL                             R18 1 1
      112 GETIMPORT                        R19 K35 [string.lower]
      114 MOVE                             R20 R7
      115 CALL                             R19 1 1
      116 LOADN                            R20 1
      117 LOADB                            R21 1
      118 CALL                             R17 4 1
      119 JUMPIFNOT                        R17 ; [+54]
      120 GETTABLEKS                       R17 R16 K36 ["layoutOrder"]
      122 SETTABLEKS                       R17 R16 K37 ["key"]
      124 GETUPVAL                         R17 0
      125 GETTABLEKS                       R17 R17 K2 ["createElement"]
      127 GETUPVAL                         R18 3
      128 DUPTABLE                         R19 K43 [{"AssetData", "ModerationData", "LayoutOrder", "StyleModifier", "Enabled", "OnOpenAssetPreview", "OnAssetPreviewClose", "OnAssetDrag", "OnOpenConfirmRemovePlaceDialog"}]
      129 SETTABLEKS                       R16 R19 K19 ["AssetData"]
      131 GETTABLEKS                       R21 R16 K44 ["id"]
      133 GETTABLE                         R20 R5 R21
      134 SETTABLEKS                       R20 R19 K38 ["ModerationData"]
      136 GETTABLEKS                       R20 R16 K36 ["layoutOrder"]
      138 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      140 GETTABLEKS                       R22 R16 K36 ["layoutOrder"]
      142 GETTABLE                         R21 R8 R22
      143 JUMPIFNOT                        R21 ; [+4]
      144 GETUPVAL                         R20 4
      145 GETTABLEKS                       R20 R20 K30 ["Selected"]
      147 JUMPIF                           R20 ; [+1]
      148 LOADNIL                          R20
      149 SETTABLEKS                       R20 R19 K20 ["StyleModifier"]
      151 SETTABLEKS                       R9 R19 K21 ["Enabled"]
      153 GETTABLEKS                       R20 R0 K45 ["onOpenAssetPreview"]
      155 SETTABLEKS                       R20 R19 K39 ["OnOpenAssetPreview"]
      157 GETTABLEKS                       R20 R0 K46 ["onAssetPreviewClose"]
      159 SETTABLEKS                       R20 R19 K40 ["OnAssetPreviewClose"]
      161 GETTABLEKS                       R20 R0 K47 ["onAssetDrag"]
      163 SETTABLEKS                       R20 R19 K41 ["OnAssetDrag"]
      165 GETTABLEKS                       R20 R0 K48 ["onOpenConfirmRemovePlaceDialog"]
      167 SETTABLEKS                       R20 R19 K42 ["OnOpenConfirmRemovePlaceDialog"]
      169 CALL                             R17 2 1
      170 GETTABLEKS                       R18 R16 K44 ["id"]
      172 SETTABLE                         R17 R11 R18
      173 ADDK                             R10 R10 K49 [1]
      174 FORGLOOP                         R12 2 ; [-70]
      176 MOVE                             R12 R11
      177 MOVE                             R13 R10
      178 RETURN                           R12 2

PROTO_14:
        0 LOADN                            R10 0
        1 DUPTABLE                         R11 K1 [{"ListLayout"}]
        2 GETUPVAL                         R12 0
        3 GETTABLEKS                       R12 R12 K2 ["createElement"]
        5 LOADK                            R13 K3 ["UIListLayout"]
        6 NEWTABLE                         R14 4 0
        8 GETIMPORT                        R15 K6 [UDim.new]
       10 LOADN                            R16 0
       11 LOADN                            R17 0
       12 CALL                             R15 2 1
       13 SETTABLEKS                       R15 R14 K7 ["Padding"]
       15 GETIMPORT                        R15 K11 [Enum.FillDirection.Vertical]
       17 SETTABLEKS                       R15 R14 K9 ["FillDirection"]
       19 GETIMPORT                        R15 K14 [Enum.SortOrder.LayoutOrder]
       21 SETTABLEKS                       R15 R14 K12 ["SortOrder"]
       23 GETUPVAL                         R15 0
       24 GETTABLEKS                       R15 R15 K15 ["Ref"]
       26 GETTABLEKS                       R16 R0 K16 ["listLayoutRef"]
       28 SETTABLE                         R16 R14 R15
       29 CALL                             R12 2 1
       30 SETTABLEKS                       R12 R11 K0 ["ListLayout"]
       32 GETTABLEKS                       R12 R6 K17 ["Path"]
       34 GETUPVAL                         R13 1
       35 GETTABLEKS                       R13 R13 K18 ["MAIN"]
       37 GETTABLEKS                       R13 R13 K17 ["Path"]
       39 JUMPIFNOTEQ                      R12 R13 ; [+57]
       41 GETIMPORT                        R12 K20 [pairs]
       43 GETUPVAL                         R13 1
       44 CALL                             R12 1 3
       45 FORGPREP_NEXT                    R12
       46 GETTABLEKS                       R17 R16 K17 ["Path"]
       48 GETUPVAL                         R18 1
       49 GETTABLEKS                       R18 R18 K18 ["MAIN"]
       51 GETTABLEKS                       R18 R18 K17 ["Path"]
       53 JUMPIFEQ                         R17 R18 ; [+40]
       55 GETUPVAL                         R17 0
       56 GETTABLEKS                       R17 R17 K2 ["createElement"]
       58 GETUPVAL                         R18 2
       59 DUPTABLE                         R19 K24 [{"AssetData", "LayoutOrder", "StyleModifier", "Enabled"}]
       60 DUPTABLE                         R20 K29 [{["name"], ["ClassName"] = "Folder", ["Screen"]}]
       61 LOADK                            R23 K30 ["Folders"]
       62 GETTABLEKS                       R24 R16 K17 ["Path"]
       64 NAMECALL                         R21 R2 K31 ["getText"]
       66 CALL                             R21 3 1
       67 SETTABLEKS                       R21 R20 K25 ["name"]
       69 SETTABLEKS                       R16 R20 K28 ["Screen"]
       71 SETTABLEKS                       R20 R19 K21 ["AssetData"]
       73 GETTABLEKS                       R20 R16 K13 ["LayoutOrder"]
       75 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
       77 GETTABLEKS                       R22 R16 K13 ["LayoutOrder"]
       79 GETTABLE                         R21 R8 R22
       80 JUMPIFNOT                        R21 ; [+4]
       81 GETUPVAL                         R20 3
       82 GETTABLEKS                       R20 R20 K32 ["Selected"]
       84 JUMPIF                           R20 ; [+1]
       85 LOADNIL                          R20
       86 SETTABLEKS                       R20 R19 K22 ["StyleModifier"]
       88 SETTABLEKS                       R9 R19 K23 ["Enabled"]
       90 CALL                             R17 2 1
       91 GETTABLEKS                       R18 R16 K17 ["Path"]
       93 SETTABLE                         R17 R11 R18
       94 FORGLOOP                         R12 2 ; [-49]
       96 JUMP                             ; [+76]
       97 GETIMPORT                        R12 K20 [pairs]
       99 MOVE                             R13 R4
      100 CALL                             R12 1 3
      101 FORGPREP_NEXT                    R12
      102 GETIMPORT                        R17 K35 [string.find]
      104 GETIMPORT                        R18 K37 [string.lower]
      106 GETTABLEKS                       R19 R16 K25 ["name"]
      108 CALL                             R18 1 1
      109 GETIMPORT                        R19 K37 [string.lower]
      111 MOVE                             R20 R7
      112 CALL                             R19 1 1
      113 LOADN                            R20 1
      114 LOADB                            R21 1
      115 CALL                             R17 4 1
      116 JUMPIFNOT                        R17 ; [+54]
      117 GETTABLEKS                       R17 R16 K38 ["layoutOrder"]
      119 SETTABLEKS                       R17 R16 K39 ["key"]
      121 GETUPVAL                         R17 0
      122 GETTABLEKS                       R17 R17 K2 ["createElement"]
      124 GETUPVAL                         R18 2
      125 DUPTABLE                         R19 K45 [{"AssetData", "ModerationData", "LayoutOrder", "StyleModifier", "Enabled", "OnOpenAssetPreview", "OnAssetPreviewClose", "OnAssetDrag", "OnOpenConfirmRemovePlaceDialog"}]
      126 SETTABLEKS                       R16 R19 K21 ["AssetData"]
      128 GETTABLEKS                       R21 R16 K46 ["id"]
      130 GETTABLE                         R20 R5 R21
      131 SETTABLEKS                       R20 R19 K40 ["ModerationData"]
      133 GETTABLEKS                       R20 R16 K38 ["layoutOrder"]
      135 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      137 GETTABLEKS                       R22 R16 K38 ["layoutOrder"]
      139 GETTABLE                         R21 R8 R22
      140 JUMPIFNOT                        R21 ; [+4]
      141 GETUPVAL                         R20 3
      142 GETTABLEKS                       R20 R20 K32 ["Selected"]
      144 JUMPIF                           R20 ; [+1]
      145 LOADNIL                          R20
      146 SETTABLEKS                       R20 R19 K22 ["StyleModifier"]
      148 SETTABLEKS                       R9 R19 K23 ["Enabled"]
      150 GETTABLEKS                       R20 R0 K47 ["onOpenAssetPreview"]
      152 SETTABLEKS                       R20 R19 K41 ["OnOpenAssetPreview"]
      154 GETTABLEKS                       R20 R0 K48 ["onAssetPreviewClose"]
      156 SETTABLEKS                       R20 R19 K42 ["OnAssetPreviewClose"]
      158 GETTABLEKS                       R20 R0 K49 ["onAssetDrag"]
      160 SETTABLEKS                       R20 R19 K43 ["OnAssetDrag"]
      162 GETTABLEKS                       R20 R0 K50 ["onOpenConfirmRemovePlaceDialog"]
      164 SETTABLEKS                       R20 R19 K44 ["OnOpenConfirmRemovePlaceDialog"]
      166 CALL                             R17 2 1
      167 GETTABLEKS                       R18 R16 K46 ["id"]
      169 SETTABLE                         R17 R11 R18
      170 ADDK                             R10 R10 K51 [1]
      171 FORGLOOP                         R12 2 ; [-70]
      173 MOVE                             R12 R11
      174 MOVE                             R13 R10
      175 RETURN                           R12 2

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["View"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R3 K3 ["currentView"]
        8 JUMPIFEQ                         R2 R3 ; [+7]
       10 DUPTABLE                         R5 K4 [{"currentView"}]
       11 SETTABLEKS                       R2 R5 K3 ["currentView"]
       13 NAMECALL                         R3 R0 K5 ["setState"]
       15 CALL                             R3 2 0
       16 GETTABLEKS                       R3 R1 K6 ["AssetsTable"]
       18 GETTABLEKS                       R3 R3 K7 ["assets"]
       20 GETTABLEKS                       R4 R1 K8 ["CurrentScreen"]
       22 GETTABLEKS                       R5 R1 K9 ["SearchTerm"]
       24 GETUPVAL                         R6 0
       25 MOVE                             R7 R3
       26 MOVE                             R8 R4
       27 MOVE                             R9 R5
       28 CALL                             R6 3 1
       29 GETTABLEKS                       R7 R0 K10 ["hasItemsToDisplay"]
       31 JUMPIFEQ                         R6 R7 ; [+9]
       33 SETTABLEKS                       R6 R0 K10 ["hasItemsToDisplay"]
       35 JUMPIFNOT                        R6 ; [+5]
       36 NEWTABLE                         R9 0 0
       38 NAMECALL                         R7 R0 K5 ["setState"]
       40 CALL                             R7 2 0
       41 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+8]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 GETTABLEKS                       R2 R2 K0 ["AssetType"]
        7 GETUPVAL                         R3 0
        8 CALL                             R0 3 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 4
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K0 ["AssetType"]
       17 LOADNIL                          R3
       18 GETUPVAL                         R4 4
       19 CALL                             R0 4 0
       20 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["AssetType"]
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["API"]
        4 NAMECALL                         R2 R2 K2 ["get"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R3 R1 K3 ["Stylizer"]
        9 GETTABLEKS                       R4 R1 K4 ["Localization"]
       11 GETTABLEKS                       R5 R1 K5 ["Size"]
       13 GETTABLEKS                       R6 R1 K6 ["LayoutOrder"]
       15 GETTABLEKS                       R7 R1 K7 ["Enabled"]
       17 GETTABLEKS                       R8 R1 K8 ["AssetsTable"]
       19 GETTABLEKS                       R9 R8 K9 ["assets"]
       21 GETTABLEKS                       R10 R8 K10 ["assetsModerationData"]
       23 GETTABLEKS                       R11 R8 K11 ["nextPageCursor"]
       25 GETTABLEKS                       R12 R8 K12 ["pageNumber"]
       27 GETTABLEKS                       R13 R1 K13 ["CurrentScreen"]
       29 GETTABLEKS                       R14 R1 K14 ["IsFetchingAssets"]
       31 GETTABLEKS                       R15 R1 K15 ["SearchTerm"]
       33 GETTABLEKS                       R16 R1 K16 ["SelectedAssets"]
       35 GETTABLEKS                       R17 R1 K17 ["dispatchGetAssets"]
       37 GETTABLEKS                       R18 R1 K18 ["dispatchLoadAllAliases"]
       39 GETTABLEKS                       R19 R1 K19 ["View"]
       41 LOADNIL                          R20
       42 LOADNIL                          R21
       43 LOADNIL                          R22
       44 GETTABLEKS                       R23 R19 K20 ["Key"]
       46 GETUPVAL                         R24 0
       47 GETTABLEKS                       R24 R24 K21 ["LIST"]
       49 GETTABLEKS                       R24 R24 K20 ["Key"]
       51 JUMPIFNOTEQ                      R23 R24 ; [+18]
       53 MOVE                             R25 R2
       54 MOVE                             R26 R4
       55 MOVE                             R27 R3
       56 MOVE                             R28 R9
       57 MOVE                             R29 R10
       58 MOVE                             R30 R13
       59 MOVE                             R31 R15
       60 MOVE                             R32 R16
       61 MOVE                             R33 R7
       62 NAMECALL                         R23 R0 K22 ["createListItems"]
       64 CALL                             R23 10 2
       65 MOVE                             R20 R23
       66 MOVE                             R21 R24
       67 GETTABLEKS                       R22 R0 K23 ["listLayoutRef"]
       69 JUMP                             ; [+25]
       70 GETTABLEKS                       R23 R19 K20 ["Key"]
       72 GETUPVAL                         R24 0
       73 GETTABLEKS                       R24 R24 K24 ["GRID"]
       75 GETTABLEKS                       R24 R24 K20 ["Key"]
       77 JUMPIFNOTEQ                      R23 R24 ; [+17]
       79 MOVE                             R25 R2
       80 MOVE                             R26 R4
       81 MOVE                             R27 R3
       82 MOVE                             R28 R9
       83 MOVE                             R29 R10
       84 MOVE                             R30 R13
       85 MOVE                             R31 R15
       86 MOVE                             R32 R16
       87 MOVE                             R33 R7
       88 NAMECALL                         R23 R0 K25 ["createTiles"]
       90 CALL                             R23 10 2
       91 MOVE                             R20 R23
       92 MOVE                             R21 R24
       93 GETTABLEKS                       R22 R0 K26 ["gridLayoutRef"]
       95 LOADB                            R23 1
       96 GETTABLEKS                       R24 R13 K27 ["Path"]
       98 GETUPVAL                         R25 1
       99 GETTABLEKS                       R25 R25 K28 ["MAIN"]
      101 GETTABLEKS                       R25 R25 K27 ["Path"]
      103 JUMPIFEQ                         R24 R25 ; [+5]
      105 JUMPIFNOTEQKN                    R21 K29 [0] ; [+2]
      107 LOADB                            R23 0 +1
      108 LOADB                            R23 1
      109 LOADNIL                          R24
      110 GETUPVAL                         R25 2
      111 JUMPIFNOT                        R25 ; [+5]
      112 JUMPIFNOTEQKNIL                  R11 ; [+2]
      114 LOADB                            R24 0 +1
      115 LOADB                            R24 1
      116 JUMP                             ; [+4]
      117 JUMPIFNOTEQKNIL                  R12 ; [+2]
      119 LOADB                            R24 0 +1
      120 LOADB                            R24 1
      121 LOADK                            R27 K30 ["Folders"]
      122 GETTABLEKS                       R28 R13 K27 ["Path"]
      124 NAMECALL                         R25 R4 K31 ["getText"]
      126 CALL                             R25 3 1
      127 LOADK                            R28 K32 ["AssetGrid"]
      128 LOADK                            R29 K33 ["NoResults"]
      129 DUPTABLE                         R30 K35 [{"assetType"}]
      130 SETTABLEKS                       R25 R30 K34 ["assetType"]
      132 NAMECALL                         R26 R4 K31 ["getText"]
      134 CALL                             R26 4 1
      135 GETUPVAL                         R27 3
      136 MOVE                             R28 R26
      137 GETTABLEKS                       R29 R3 K36 ["FontSizeMedium"]
      139 GETTABLEKS                       R30 R3 K37 ["Font"]
      141 CALL                             R27 3 1
      142 LOADK                            R30 K32 ["AssetGrid"]
      143 LOADK                            R31 K38 ["LoadButton"]
      144 NAMECALL                         R28 R4 K31 ["getText"]
      146 CALL                             R28 3 1
      147 GETUPVAL                         R29 3
      148 MOVE                             R30 R28
      149 GETTABLEKS                       R31 R3 K39 ["FontSizeLarge"]
      151 GETTABLEKS                       R32 R3 K37 ["Font"]
      153 CALL                             R29 3 1
      154 GETUPVAL                         R30 4
      155 GETTABLEKS                       R30 R30 K40 ["createElement"]
      157 LOADK                            R31 K41 ["Frame"]
      158 DUPTABLE                         R32 K44 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1}]
      159 SETTABLEKS                       R5 R32 K5 ["Size"]
      161 SETTABLEKS                       R6 R32 K6 ["LayoutOrder"]
      163 DUPTABLE                         R33 K48 [{"AssetGrid", "ActionButton", "NoResultsText", "LoadButton", "LoadingIndicator"}]
      164 MOVE                             R34 R23
      165 JUMPIFNOT                        R34 ; [+19]
      166 GETUPVAL                         R34 4
      167 GETTABLEKS                       R34 R34 K40 ["createElement"]
      169 GETUPVAL                         R35 5
      170 DUPTABLE                         R36 K53 [{["AutomaticCanvasSize"], ["NextPageRequestDistance"] = 100, ["NextPageFunc"]}]
      171 GETIMPORT                        R37 K57 [Enum.AutomaticSize.Y]
      173 SETTABLEKS                       R37 R36 K49 ["AutomaticCanvasSize"]
      175 NEWCLOSURE                       R37 P0
      176 CAPTURE                          VAL R11
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R2
      179 CAPTURE                          VAL R13
      180 CAPTURE                          VAL R12
      181 SETTABLEKS                       R37 R36 K52 ["NextPageFunc"]
      183 MOVE                             R37 R20
      184 CALL                             R34 3 1
      185 SETTABLEKS                       R34 R33 K32 ["AssetGrid"]
      187 MOVE                             R34 R23
      188 JUMPIFNOT                        R34 ; [+35]
      189 GETUPVAL                         R34 4
      190 GETTABLEKS                       R34 R34 K40 ["createElement"]
      192 LOADK                            R35 K58 ["ImageButton"]
      193 NEWTABLE                         R36 4 0
      195 GETIMPORT                        R37 K61 [UDim2.new]
      197 LOADN                            R38 1
      198 LOADN                            R39 0
      199 LOADN                            R40 1
      200 LOADN                            R41 0
      201 CALL                             R37 4 1
      202 SETTABLEKS                       R37 R36 K5 ["Size"]
      204 LOADN                            R37 1
      205 SETTABLEKS                       R37 R36 K42 ["BackgroundTransparency"]
      207 GETUPVAL                         R37 4
      208 GETTABLEKS                       R37 R37 K62 ["Event"]
      210 GETTABLEKS                       R37 R37 K63 ["Activated"]
      212 GETTABLEKS                       R38 R0 K64 ["onClearSelection"]
      214 SETTABLE                         R38 R36 R37
      215 GETUPVAL                         R37 4
      216 GETTABLEKS                       R37 R37 K62 ["Event"]
      218 GETTABLEKS                       R37 R37 K65 ["MouseButton2Click"]
      220 GETTABLEKS                       R38 R0 K66 ["onMouseButton2Click"]
      222 SETTABLE                         R38 R36 R37
      223 CALL                             R34 2 1
      224 SETTABLEKS                       R34 R33 K45 ["ActionButton"]
      226 NOT                              R34 R23
      227 JUMPIFNOT                        R34 ; [+51]
      228 NOT                              R34 R14
      229 JUMPIFNOT                        R34 ; [+49]
      230 NOT                              R34 R24
      231 JUMPIFNOT                        R34 ; [+47]
      232 GETUPVAL                         R34 4
      233 GETTABLEKS                       R34 R34 K40 ["createElement"]
      235 LOADK                            R35 K67 ["TextLabel"]
      236 DUPTABLE                         R36 K73 [{["Size"], ["Position"], ["AnchorPoint"], ["Text"], ["TextColor3"], ["Font"], ["TextSize"], ["BackgroundTransparency"] = 1}]
      237 GETIMPORT                        R37 K61 [UDim2.new]
      239 LOADN                            R38 0
      240 GETTABLEKS                       R39 R27 K74 ["X"]
      242 LOADN                            R40 0
      243 GETTABLEKS                       R41 R27 K56 ["Y"]
      245 CALL                             R37 4 1
      246 SETTABLEKS                       R37 R36 K5 ["Size"]
      248 GETIMPORT                        R37 K61 [UDim2.new]
      250 LOADK                            R38 K75 [0.5]
      251 LOADN                            R39 0
      252 LOADK                            R40 K76 [0.3]
      253 LOADN                            R41 0
      254 CALL                             R37 4 1
      255 SETTABLEKS                       R37 R36 K68 ["Position"]
      257 GETIMPORT                        R37 K78 [Vector2.new]
      259 LOADK                            R38 K75 [0.5]
      260 LOADK                            R39 K75 [0.5]
      261 CALL                             R37 2 1
      262 SETTABLEKS                       R37 R36 K69 ["AnchorPoint"]
      264 SETTABLEKS                       R26 R36 K70 ["Text"]
      266 GETTABLEKS                       R37 R3 K79 ["DisabledColor"]
      268 SETTABLEKS                       R37 R36 K71 ["TextColor3"]
      270 GETTABLEKS                       R37 R3 K37 ["Font"]
      272 SETTABLEKS                       R37 R36 K37 ["Font"]
      274 GETTABLEKS                       R37 R3 K36 ["FontSizeMedium"]
      276 SETTABLEKS                       R37 R36 K72 ["TextSize"]
      278 CALL                             R34 2 1
      279 SETTABLEKS                       R34 R33 K46 ["NoResultsText"]
      281 NOT                              R34 R23
      282 JUMPIFNOT                        R34 ; [+69]
      283 NOT                              R34 R14
      284 JUMPIFNOT                        R34 ; [+67]
      285 MOVE                             R34 R24
      286 JUMPIFNOT                        R34 ; [+65]
      287 GETUPVAL                         R34 4
      288 GETTABLEKS                       R34 R34 K40 ["createElement"]
      290 GETUPVAL                         R35 6
      291 DUPTABLE                         R36 K83 [{["Style"] = "RoundPrimary", ["Text"], ["Size"], ["Position"], ["AnchorPoint"], ["OnClick"]}]
      292 SETTABLEKS                       R28 R36 K70 ["Text"]
      294 GETIMPORT                        R37 K61 [UDim2.new]
      296 LOADN                            R38 0
      297 GETTABLEKS                       R40 R29 K74 ["X"]
      299 GETTABLEKS                       R41 R3 K84 ["AssetGridContainer"]
      301 GETTABLEKS                       R41 R41 K38 ["LoadButton"]
      303 GETTABLEKS                       R41 R41 K85 ["PaddingX"]
      305 ADD                              R39 R40 R41
      306 LOADN                            R40 0
      307 GETTABLEKS                       R42 R29 K56 ["Y"]
      309 GETTABLEKS                       R43 R3 K84 ["AssetGridContainer"]
      311 GETTABLEKS                       R43 R43 K38 ["LoadButton"]
      313 GETTABLEKS                       R43 R43 K86 ["PaddingY"]
      315 ADD                              R41 R42 R43
      316 CALL                             R37 4 1
      317 SETTABLEKS                       R37 R36 K5 ["Size"]
      319 GETIMPORT                        R37 K61 [UDim2.new]
      321 LOADK                            R38 K75 [0.5]
      322 LOADN                            R39 0
      323 LOADK                            R40 K76 [0.3]
      324 LOADN                            R41 0
      325 CALL                             R37 4 1
      326 SETTABLEKS                       R37 R36 K68 ["Position"]
      328 GETIMPORT                        R37 K78 [Vector2.new]
      330 LOADK                            R38 K75 [0.5]
      331 LOADK                            R39 K75 [0.5]
      332 CALL                             R37 2 1
      333 SETTABLEKS                       R37 R36 K69 ["AnchorPoint"]
      335 NEWCLOSURE                       R37 P1
      336 CAPTURE                          VAL R18
      337 CAPTURE                          VAL R2
      338 CAPTURE                          VAL R13
      339 SETTABLEKS                       R37 R36 K82 ["OnClick"]
      341 NEWTABLE                         R37 0 1
      343 GETUPVAL                         R38 4
      344 GETTABLEKS                       R38 R38 K40 ["createElement"]
      346 GETUPVAL                         R39 7
      347 DUPTABLE                         R40 K89 [{["Cursor"] = "PointingHand"}]
      348 CALL                             R38 2 -1
      349 SETLIST                          R37 R38 -1 [1]
      351 CALL                             R34 3 1
      352 SETTABLEKS                       R34 R33 K38 ["LoadButton"]
      354 MOVE                             R34 R14
      355 JUMPIFNOT                        R34 ; [+22]
      356 GETUPVAL                         R34 4
      357 GETTABLEKS                       R34 R34 K40 ["createElement"]
      359 GETUPVAL                         R35 8
      360 DUPTABLE                         R36 K92 [{["Position"], ["AnchorPoint"], ["ZIndex"] = 2}]
      361 GETIMPORT                        R37 K61 [UDim2.new]
      363 LOADK                            R38 K75 [0.5]
      364 LOADN                            R39 0
      365 LOADK                            R40 K75 [0.5]
      366 LOADN                            R41 0
      367 CALL                             R37 4 1
      368 SETTABLEKS                       R37 R36 K68 ["Position"]
      370 GETIMPORT                        R37 K78 [Vector2.new]
      372 LOADK                            R38 K75 [0.5]
      373 LOADK                            R39 K75 [0.5]
      374 CALL                             R37 2 1
      375 SETTABLEKS                       R37 R36 K69 ["AnchorPoint"]
      377 CALL                             R34 2 1
      378 SETTABLEKS                       R34 R33 K47 ["LoadingIndicator"]
      380 CALL                             R30 3 -1
      381 RETURN                           R30 -1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["AssetManagerReducer"]
        2 DUPTABLE                         R3 K7 [{"AssetsTable", "CurrentScreen", "IsFetchingAssets", "SearchTerm", "SelectedAssets", "View"}]
        3 GETTABLEKS                       R4 R2 K8 ["assetsTable"]
        5 SETTABLEKS                       R4 R3 K1 ["AssetsTable"]
        7 GETTABLEKS                       R4 R0 K9 ["Screen"]
        9 GETTABLEKS                       R4 R4 K10 ["currentScreen"]
       11 SETTABLEKS                       R4 R3 K2 ["CurrentScreen"]
       13 GETTABLEKS                       R4 R2 K11 ["isFetchingAssets"]
       15 SETTABLEKS                       R4 R3 K3 ["IsFetchingAssets"]
       17 GETTABLEKS                       R4 R2 K12 ["searchTerm"]
       19 SETTABLEKS                       R4 R3 K4 ["SearchTerm"]
       21 GETTABLEKS                       R4 R2 K13 ["selectedAssets"]
       23 SETTABLEKS                       R4 R3 K5 ["SelectedAssets"]
       25 GETTABLEKS                       R4 R2 K14 ["view"]
       27 SETTABLEKS                       R4 R3 K6 ["View"]
       29 RETURN                           R3 1

PROTO_20:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R0
        3 MOVE                             R7 R1
        4 MOVE                             R8 R2
        5 MOVE                             R9 R3
        6 CALL                             R5 4 -1
        7 CALL                             R4 -1 0
        8 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_22:
        0 SETTABLEKS                       R1 R0 K0 ["AssetData"]
        2 GETUPVAL                         R2 0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 CALL                             R3 1 -1
        6 CALL                             R2 -1 0
        7 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_24:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_26:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_27:
        0 DUPTABLE                         R1 K7 [{"dispatchGetAssets", "dispatchLoadAllAliases", "dispatchOnAssetRightClick", "dispatchOnAssetDrag", "dispatchOnScreenChange", "dispatchSetAssets", "dispatchUpdateSelectedAssets"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchGetAssets"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["dispatchLoadAllAliases"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["dispatchOnAssetRightClick"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["dispatchOnAssetDrag"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["dispatchOnScreenChange"]
       26 NEWCLOSURE                       R2 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 SETTABLEKS                       R2 R1 K5 ["dispatchSetAssets"]
       31 NEWCLOSURE                       R2 P6
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U6
       34 SETTABLEKS                       R2 R1 K6 ["dispatchUpdateSelectedAssets"]
       36 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["InsertAsset"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R1 K9 ["Context"]
       32 GETTABLEKS                       R4 R4 K10 ["InsertAssetContext"]
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R6 R0 K5 ["Packages"]
       38 GETTABLEKS                       R6 R6 K11 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K13 ["withContext"]
       45 GETTABLEKS                       R8 R5 K14 ["Util"]
       47 GETTABLEKS                       R9 R8 K15 ["GetTextSize"]
       49 GETTABLEKS                       R10 R8 K16 ["StyleModifier"]
       51 GETTABLEKS                       R11 R5 K17 ["Style"]
       53 GETTABLEKS                       R11 R11 K18 ["ComponentSymbols"]
       55 GETTABLEKS                       R12 R5 K19 ["UI"]
       57 GETTABLEKS                       R13 R12 K20 ["Button"]
       59 GETTABLEKS                       R14 R12 K21 ["HoverArea"]
       61 GETTABLEKS                       R15 R12 K22 ["LoadingIndicator"]
       63 GETTABLEKS                       R16 R12 K23 ["ScrollingFrame"]
       65 GETIMPORT                        R17 K4 [require]
       67 GETTABLEKS                       R18 R0 K24 ["Src"]
       69 GETTABLEKS                       R18 R18 K14 ["Util"]
       71 GETTABLEKS                       R18 R18 K25 ["Screens"]
       73 CALL                             R17 1 1
       74 GETIMPORT                        R18 K4 [require]
       76 GETTABLEKS                       R19 R0 K24 ["Src"]
       78 GETTABLEKS                       R19 R19 K14 ["Util"]
       80 GETTABLEKS                       R19 R19 K26 ["View"]
       82 CALL                             R18 1 1
       83 GETIMPORT                        R19 K4 [require]
       85 GETTABLEKS                       R20 R0 K24 ["Src"]
       87 GETTABLEKS                       R20 R20 K27 ["Components"]
       89 GETTABLEKS                       R20 R20 K28 ["ListItem"]
       91 CALL                             R19 1 1
       92 GETIMPORT                        R20 K4 [require]
       94 GETTABLEKS                       R21 R0 K24 ["Src"]
       96 GETTABLEKS                       R21 R21 K27 ["Components"]
       98 GETTABLEKS                       R21 R21 K29 ["Tile"]
      100 CALL                             R20 1 1
      101 GETIMPORT                        R21 K4 [require]
      103 GETTABLEKS                       R22 R0 K24 ["Src"]
      105 GETTABLEKS                       R22 R22 K30 ["Actions"]
      107 GETTABLEKS                       R22 R22 K31 ["SetAssets"]
      109 CALL                             R21 1 1
      110 GETIMPORT                        R22 K4 [require]
      112 GETTABLEKS                       R23 R0 K24 ["Src"]
      114 GETTABLEKS                       R23 R23 K32 ["Thunks"]
      116 GETTABLEKS                       R23 R23 K33 ["GetAssets"]
      118 CALL                             R22 1 1
      119 GETIMPORT                        R23 K4 [require]
      121 GETTABLEKS                       R24 R0 K24 ["Src"]
      123 GETTABLEKS                       R24 R24 K32 ["Thunks"]
      125 GETTABLEKS                       R24 R24 K34 ["LoadAllAliases"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K4 [require]
      130 GETTABLEKS                       R25 R0 K24 ["Src"]
      132 GETTABLEKS                       R25 R25 K32 ["Thunks"]
      134 GETTABLEKS                       R25 R25 K35 ["OnAssetDrag"]
      136 CALL                             R24 1 1
      137 GETIMPORT                        R25 K4 [require]
      139 GETTABLEKS                       R26 R0 K24 ["Src"]
      141 GETTABLEKS                       R26 R26 K32 ["Thunks"]
      143 GETTABLEKS                       R26 R26 K36 ["OnAssetRightClick"]
      145 CALL                             R25 1 1
      146 GETIMPORT                        R26 K4 [require]
      148 GETTABLEKS                       R27 R0 K24 ["Src"]
      150 GETTABLEKS                       R27 R27 K32 ["Thunks"]
      152 GETTABLEKS                       R27 R27 K37 ["OnScreenChange"]
      154 CALL                             R26 1 1
      155 GETIMPORT                        R27 K4 [require]
      157 GETTABLEKS                       R28 R0 K24 ["Src"]
      159 GETTABLEKS                       R28 R28 K32 ["Thunks"]
      161 GETTABLEKS                       R28 R28 K38 ["UpdateSelectedAssets"]
      163 CALL                             R27 1 1
      164 GETIMPORT                        R28 K40 [game]
      166 LOADK                            R30 K41 ["AssetManagerService"]
      167 NAMECALL                         R28 R28 K42 ["GetService"]
      169 CALL                             R28 2 1
      170 GETIMPORT                        R29 K40 [game]
      172 LOADK                            R31 K43 ["BulkImportService"]
      173 NAMECALL                         R29 R29 K42 ["GetService"]
      175 CALL                             R29 2 1
      176 GETIMPORT                        R30 K4 [require]
      178 GETTABLEKS                       R31 R0 K24 ["Src"]
      180 GETTABLEKS                       R31 R31 K14 ["Util"]
      182 GETTABLEKS                       R31 R31 K44 ["AssetManagerUtilities"]
      184 CALL                             R30 1 1
      185 GETTABLEKS                       R30 R30 K45 ["shouldEnableAudioImport"]
      187 GETIMPORT                        R31 K4 [require]
      189 GETTABLEKS                       R32 R0 K24 ["Src"]
      191 GETTABLEKS                       R32 R32 K14 ["Util"]
      193 GETTABLEKS                       R32 R32 K44 ["AssetManagerUtilities"]
      195 CALL                             R31 1 1
      196 GETTABLEKS                       R31 R31 K46 ["shouldEnableVideoImport"]
      198 GETIMPORT                        R32 K40 [game]
      200 LOADK                            R34 K47 ["AssetManagerMigrateAliasesEndpoint2"]
      201 NAMECALL                         R32 R32 K48 ["GetFastFlag"]
      203 CALL                             R32 2 1
      204 GETTABLEKS                       R33 R2 K49 ["Component"]
      206 LOADK                            R35 K50 ["AssetGridContainer"]
      207 NAMECALL                         R33 R33 K51 ["extend"]
      209 CALL                             R33 2 1
      210 DUPCLOSURE                       R34 K52 [PROTO_0]
      211 CAPTURE                          VAL R17
      212 CAPTURE                          VAL R30
      213 CAPTURE                          VAL R31
      214 DUPCLOSURE                       R35 K53 [PROTO_1]
      215 CAPTURE                          VAL R17
      216 DUPCLOSURE                       R36 K54 [PROTO_8]
      217 CAPTURE                          VAL R2
      218 CAPTURE                          VAL R17
      219 SETTABLEKS                       R36 R33 K55 ["init"]
      221 DUPCLOSURE                       R36 K56 [PROTO_11]
      222 CAPTURE                          VAL R29
      223 CAPTURE                          VAL R34
      224 CAPTURE                          VAL R28
      225 SETTABLEKS                       R36 R33 K57 ["didMount"]
      227 DUPCLOSURE                       R36 K58 [PROTO_12]
      228 SETTABLEKS                       R36 R33 K59 ["willUnmount"]
      230 DUPCLOSURE                       R36 K60 [PROTO_13]
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R11
      233 CAPTURE                          VAL R17
      234 CAPTURE                          VAL R20
      235 CAPTURE                          VAL R10
      236 SETTABLEKS                       R36 R33 K61 ["createTiles"]
      238 DUPCLOSURE                       R36 K62 [PROTO_14]
      239 CAPTURE                          VAL R2
      240 CAPTURE                          VAL R17
      241 CAPTURE                          VAL R19
      242 CAPTURE                          VAL R10
      243 SETTABLEKS                       R36 R33 K63 ["createListItems"]
      245 DUPCLOSURE                       R36 K64 [PROTO_15]
      246 CAPTURE                          VAL R35
      247 SETTABLEKS                       R36 R33 K65 ["didUpdate"]
      249 DUPCLOSURE                       R36 K66 [PROTO_18]
      250 CAPTURE                          VAL R18
      251 CAPTURE                          VAL R17
      252 CAPTURE                          VAL R32
      253 CAPTURE                          VAL R9
      254 CAPTURE                          VAL R2
      255 CAPTURE                          VAL R16
      256 CAPTURE                          VAL R13
      257 CAPTURE                          VAL R14
      258 CAPTURE                          VAL R15
      259 SETTABLEKS                       R36 R33 K67 ["render"]
      261 MOVE                             R36 R7
      262 DUPTABLE                         R37 K73 [{"Analytics", "API", "InsertAsset", "Localization", "Plugin", "Stylizer"}]
      263 GETTABLEKS                       R38 R6 K68 ["Analytics"]
      265 SETTABLEKS                       R38 R37 K68 ["Analytics"]
      267 GETTABLEKS                       R38 R6 K69 ["API"]
      269 SETTABLEKS                       R38 R37 K69 ["API"]
      271 SETTABLEKS                       R4 R37 K6 ["InsertAsset"]
      273 GETTABLEKS                       R38 R6 K70 ["Localization"]
      275 SETTABLEKS                       R38 R37 K70 ["Localization"]
      277 GETTABLEKS                       R38 R6 K71 ["Plugin"]
      279 SETTABLEKS                       R38 R37 K71 ["Plugin"]
      281 GETTABLEKS                       R38 R6 K72 ["Stylizer"]
      283 SETTABLEKS                       R38 R37 K72 ["Stylizer"]
      285 CALL                             R36 1 1
      286 MOVE                             R37 R33
      287 CALL                             R36 1 1
      288 MOVE                             R33 R36
      289 DUPCLOSURE                       R36 K74 [PROTO_19]
      290 DUPCLOSURE                       R37 K75 [PROTO_27]
      291 CAPTURE                          VAL R22
      292 CAPTURE                          VAL R23
      293 CAPTURE                          VAL R25
      294 CAPTURE                          VAL R24
      295 CAPTURE                          VAL R26
      296 CAPTURE                          VAL R21
      297 CAPTURE                          VAL R27
      298 GETTABLEKS                       R38 R3 K76 ["connect"]
      300 MOVE                             R39 R36
      301 MOVE                             R40 R37
      302 CALL                             R38 2 1
      303 MOVE                             R39 R33
      304 CALL                             R38 1 -1
      305 RETURN                           R38 -1
