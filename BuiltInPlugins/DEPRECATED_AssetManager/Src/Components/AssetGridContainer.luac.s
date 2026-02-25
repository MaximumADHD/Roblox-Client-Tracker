PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Path"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["IMAGES"]
        6 GETTABLEKS                       R3 R4 K0 ["Path"]
        8 JUMPIFEQ                         R2 R3 ; [+48]
       10 LOADB                            R1 1
       11 GETTABLEKS                       R2 R0 K0 ["Path"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K2 ["MESHES"]
       16 GETTABLEKS                       R3 R4 K0 ["Path"]
       18 JUMPIFEQ                         R2 R3 ; [+38]
       20 GETUPVAL                         R2 1
       21 CALL                             R2 0 1
       22 JUMPIFNOT                        R2 ; [+10]
       23 LOADB                            R1 1
       24 GETTABLEKS                       R2 R0 K0 ["Path"]
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R4 R5 K3 ["AUDIO"]
       29 GETTABLEKS                       R3 R4 K0 ["Path"]
       31 JUMPIFEQ                         R2 R3 ; [+25]
       33 GETUPVAL                         R2 2
       34 CALL                             R2 0 1
       35 JUMPIFNOT                        R2 ; [+10]
       36 LOADB                            R1 1
       37 GETTABLEKS                       R2 R0 K0 ["Path"]
       39 GETUPVAL                         R5 0
       40 GETTABLEKS                       R4 R5 K4 ["VIDEO"]
       42 GETTABLEKS                       R3 R4 K0 ["Path"]
       44 JUMPIFEQ                         R2 R3 ; [+12]
       46 GETTABLEKS                       R2 R0 K0 ["Path"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R4 R5 K5 ["MODELS"]
       51 GETTABLEKS                       R3 R4 K0 ["Path"]
       53 JUMPIFEQ                         R2 R3 ; [+2]
       55 LOADB                            R1 0 +1
       56 LOADB                            R1 1
       57 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R1 K0 ["Path"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["MAIN"]
        5 GETTABLEKS                       R4 R5 K0 ["Path"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+20]
        9 GETIMPORT                        R3 K3 [pairs]
       11 GETUPVAL                         R4 0
       12 CALL                             R3 1 3
       13 FORGPREP_NEXT                    R3
       14 GETTABLEKS                       R8 R7 K0 ["Path"]
       16 GETUPVAL                         R11 0
       17 GETTABLEKS                       R10 R11 K1 ["MAIN"]
       19 GETTABLEKS                       R9 R10 K0 ["Path"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["Enabled"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R1 R2 K0 ["props"]
       10 GETTABLEKS                       R0 R1 K2 ["dispatchUpdateSelectedAssets"]
       12 NEWTABLE                         R1 0 0
       14 CALL                             R0 1 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        5 JUMPIF                           R1 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K2 ["dispatchUpdateSelectedAssets"]
       12 NEWTABLE                         R2 0 0
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K3 ["CurrentScreen"]
       17 GETTABLEKS                       R2 R1 K4 ["Path"]
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K5 ["PLACES"]
       22 GETTABLEKS                       R3 R4 K4 ["Path"]
       24 JUMPIFNOTEQ                      R2 R3 ; [+12]
       26 DUPTABLE                         R2 K8 [{"ClassName", "Screen"}]
       27 LOADK                            R3 K9 ["Folder"]
       28 SETTABLEKS                       R3 R2 K6 ["ClassName"]
       30 SETTABLEKS                       R1 R2 K7 ["Screen"]
       32 GETTABLEKS                       R3 R0 K10 ["dispatchOnAssetRightClick"]
       34 MOVE                             R4 R0
       35 MOVE                             R5 R2
       36 CALL                             R3 2 0
       37 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["dispatchUpdateSelectedAssets"]
        5 NEWTABLE                         R2 1 0
        7 GETTABLEKS                       R3 R0 K2 ["key"]
        9 LOADB                            R4 1
       10 SETTABLE                         R4 R2 R3
       11 CALL                             R1 1 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R4 R5 K0 ["props"]
       15 GETTABLEKS                       R3 R4 K3 ["AssetsTable"]
       17 GETTABLEKS                       R2 R3 K4 ["assetPreviewData"]
       19 GETTABLEKS                       R3 R0 K5 ["id"]
       21 GETTABLE                         R1 R2 R3
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K0 ["props"]
       25 GETTABLEKS                       R2 R3 K6 ["OnOpenAssetPreview"]
       27 MOVE                             R3 R0
       28 MOVE                             R4 R1
       29 CALL                             R2 2 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnAssetPreviewClose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnOpenConfirmRemovePlaceDialog"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K2 [{"currentScreen", "currentView"}]
        1 LOADK                            R2 K3 [""]
        2 SETTABLEKS                       R2 R1 K0 ["currentScreen"]
        4 LOADK                            R2 K3 [""]
        5 SETTABLEKS                       R2 R1 K1 ["currentView"]
        7 SETTABLEKS                       R1 R0 K4 ["state"]
        9 LOADB                            R1 0
       10 SETTABLEKS                       R1 R0 K5 ["hasItemsToDisplay"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K6 ["createRef"]
       15 CALL                             R1 0 1
       16 SETTABLEKS                       R1 R0 K7 ["gridLayoutRef"]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K6 ["createRef"]
       21 CALL                             R1 0 1
       22 SETTABLEKS                       R1 R0 K8 ["listLayoutRef"]
       24 LOADNIL                          R1
       25 SETTABLEKS                       R1 R0 K9 ["bulkImportFinishedConnection"]
       27 LOADNIL                          R1
       28 SETTABLEKS                       R1 R0 K10 ["importSessionFinishedConnection"]
       30 NEWCLOSURE                       R1 P0
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K11 ["onClearSelection"]
       34 NEWCLOSURE                       R1 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          UPVAL U1
       37 SETTABLEKS                       R1 R0 K12 ["onMouseButton2Click"]
       39 NEWCLOSURE                       R1 P2
       40 CAPTURE                          VAL R0
       41 SETTABLEKS                       R1 R0 K13 ["onOpenAssetPreview"]
       43 NEWCLOSURE                       R1 P3
       44 CAPTURE                          VAL R0
       45 SETTABLEKS                       R1 R0 K14 ["onAssetPreviewClose"]
       47 NEWCLOSURE                       R1 P4
       48 CAPTURE                          VAL R0
       49 SETTABLEKS                       R1 R0 K15 ["onAssetDrag"]
       51 NEWCLOSURE                       R1 P5
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R1 R0 K16 ["onOpenConfirmRemovePlaceDialog"]
       55 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["BulkImportFinished"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 NAMECALL                         R1 R1 K1 ["connect"]
        8 CALL                             R1 2 1
        9 SETTABLEKS                       R1 R0 K2 ["bulkImportFinishedConnection"]
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K3 ["ImportSessionFinished"]
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
        2 GETUPVAL                         R13 0
        3 GETTABLEKS                       R12 R13 K2 ["createElement"]
        5 LOADK                            R13 K3 ["UIGridLayout"]
        6 NEWTABLE                         R14 4 0
        8 GETUPVAL                         R18 1
        9 GETTABLEKS                       R17 R18 K4 ["Tile"]
       11 GETTABLE                         R16 R3 R17
       12 GETTABLEKS                       R15 R16 K5 ["Size"]
       14 SETTABLEKS                       R15 R14 K6 ["CellSize"]
       16 GETTABLEKS                       R16 R3 K7 ["AssetGridContainer"]
       18 GETTABLEKS                       R15 R16 K8 ["CellPadding"]
       20 SETTABLEKS                       R15 R14 K8 ["CellPadding"]
       22 GETIMPORT                        R15 K12 [Enum.SortOrder.LayoutOrder]
       24 SETTABLEKS                       R15 R14 K10 ["SortOrder"]
       26 GETUPVAL                         R16 0
       27 GETTABLEKS                       R15 R16 K13 ["Ref"]
       29 GETTABLEKS                       R16 R0 K14 ["gridLayoutRef"]
       31 SETTABLE                         R16 R14 R15
       32 CALL                             R12 2 1
       33 SETTABLEKS                       R12 R11 K0 ["GridLayout"]
       35 GETTABLEKS                       R12 R6 K15 ["Path"]
       37 GETUPVAL                         R15 2
       38 GETTABLEKS                       R14 R15 K16 ["MAIN"]
       40 GETTABLEKS                       R13 R14 K15 ["Path"]
       42 JUMPIFNOTEQ                      R12 R13 ; [+60]
       44 GETIMPORT                        R12 K18 [pairs]
       46 GETUPVAL                         R13 2
       47 CALL                             R12 1 3
       48 FORGPREP_NEXT                    R12
       49 GETTABLEKS                       R17 R16 K15 ["Path"]
       51 GETUPVAL                         R20 2
       52 GETTABLEKS                       R19 R20 K16 ["MAIN"]
       54 GETTABLEKS                       R18 R19 K15 ["Path"]
       56 JUMPIFEQ                         R17 R18 ; [+43]
       58 GETTABLEKS                       R17 R16 K11 ["LayoutOrder"]
       60 GETUPVAL                         R19 0
       61 GETTABLEKS                       R18 R19 K2 ["createElement"]
       63 GETUPVAL                         R19 3
       64 DUPTABLE                         R20 K22 [{"AssetData", "LayoutOrder", "StyleModifier", "Enabled"}]
       65 DUPTABLE                         R21 K26 [{"name", "ClassName", "Screen"}]
       66 LOADK                            R24 K27 ["Folders"]
       67 GETTABLEKS                       R25 R16 K15 ["Path"]
       69 NAMECALL                         R22 R2 K28 ["getText"]
       71 CALL                             R22 3 1
       72 SETTABLEKS                       R22 R21 K23 ["name"]
       74 LOADK                            R22 K29 ["Folder"]
       75 SETTABLEKS                       R22 R21 K24 ["ClassName"]
       77 SETTABLEKS                       R16 R21 K25 ["Screen"]
       79 SETTABLEKS                       R21 R20 K19 ["AssetData"]
       81 GETTABLEKS                       R21 R16 K11 ["LayoutOrder"]
       83 SETTABLEKS                       R21 R20 K11 ["LayoutOrder"]
       85 GETTABLE                         R22 R8 R17
       86 JUMPIFNOT                        R22 ; [+4]
       87 GETUPVAL                         R22 4
       88 GETTABLEKS                       R21 R22 K30 ["Selected"]
       90 JUMPIF                           R21 ; [+1]
       91 LOADNIL                          R21
       92 SETTABLEKS                       R21 R20 K20 ["StyleModifier"]
       94 SETTABLEKS                       R9 R20 K21 ["Enabled"]
       96 CALL                             R18 2 1
       97 GETTABLEKS                       R19 R16 K15 ["Path"]
       99 SETTABLE                         R18 R11 R19
      100 FORGLOOP                         R12 2 ; [-52]
      102 JUMP                             ; [+76]
      103 GETIMPORT                        R12 K18 [pairs]
      105 MOVE                             R13 R4
      106 CALL                             R12 1 3
      107 FORGPREP_NEXT                    R12
      108 GETIMPORT                        R17 K33 [string.find]
      110 GETIMPORT                        R18 K35 [string.lower]
      112 GETTABLEKS                       R19 R16 K23 ["name"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K35 [string.lower]
      117 MOVE                             R20 R7
      118 CALL                             R19 1 1
      119 LOADN                            R20 1
      120 LOADB                            R21 1
      121 CALL                             R17 4 1
      122 JUMPIFNOT                        R17 ; [+54]
      123 GETTABLEKS                       R17 R16 K36 ["layoutOrder"]
      125 SETTABLEKS                       R17 R16 K37 ["key"]
      127 GETUPVAL                         R18 0
      128 GETTABLEKS                       R17 R18 K2 ["createElement"]
      130 GETUPVAL                         R18 3
      131 DUPTABLE                         R19 K43 [{"AssetData", "ModerationData", "LayoutOrder", "StyleModifier", "Enabled", "OnOpenAssetPreview", "OnAssetPreviewClose", "OnAssetDrag", "OnOpenConfirmRemovePlaceDialog"}]
      132 SETTABLEKS                       R16 R19 K19 ["AssetData"]
      134 GETTABLEKS                       R21 R16 K44 ["id"]
      136 GETTABLE                         R20 R5 R21
      137 SETTABLEKS                       R20 R19 K38 ["ModerationData"]
      139 GETTABLEKS                       R20 R16 K36 ["layoutOrder"]
      141 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      143 GETTABLEKS                       R22 R16 K36 ["layoutOrder"]
      145 GETTABLE                         R21 R8 R22
      146 JUMPIFNOT                        R21 ; [+4]
      147 GETUPVAL                         R21 4
      148 GETTABLEKS                       R20 R21 K30 ["Selected"]
      150 JUMPIF                           R20 ; [+1]
      151 LOADNIL                          R20
      152 SETTABLEKS                       R20 R19 K20 ["StyleModifier"]
      154 SETTABLEKS                       R9 R19 K21 ["Enabled"]
      156 GETTABLEKS                       R20 R0 K45 ["onOpenAssetPreview"]
      158 SETTABLEKS                       R20 R19 K39 ["OnOpenAssetPreview"]
      160 GETTABLEKS                       R20 R0 K46 ["onAssetPreviewClose"]
      162 SETTABLEKS                       R20 R19 K40 ["OnAssetPreviewClose"]
      164 GETTABLEKS                       R20 R0 K47 ["onAssetDrag"]
      166 SETTABLEKS                       R20 R19 K41 ["OnAssetDrag"]
      168 GETTABLEKS                       R20 R0 K48 ["onOpenConfirmRemovePlaceDialog"]
      170 SETTABLEKS                       R20 R19 K42 ["OnOpenConfirmRemovePlaceDialog"]
      172 CALL                             R17 2 1
      173 GETTABLEKS                       R18 R16 K44 ["id"]
      175 SETTABLE                         R17 R11 R18
      176 ADDK                             R10 R10 K49 [1]
      177 FORGLOOP                         R12 2 ; [-70]
      179 MOVE                             R12 R11
      180 MOVE                             R13 R10
      181 RETURN                           R12 2

PROTO_14:
        0 LOADN                            R10 0
        1 DUPTABLE                         R11 K1 [{"ListLayout"}]
        2 GETUPVAL                         R13 0
        3 GETTABLEKS                       R12 R13 K2 ["createElement"]
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
       23 GETUPVAL                         R16 0
       24 GETTABLEKS                       R15 R16 K15 ["Ref"]
       26 GETTABLEKS                       R16 R0 K16 ["listLayoutRef"]
       28 SETTABLE                         R16 R14 R15
       29 CALL                             R12 2 1
       30 SETTABLEKS                       R12 R11 K0 ["ListLayout"]
       32 GETTABLEKS                       R12 R6 K17 ["Path"]
       34 GETUPVAL                         R15 1
       35 GETTABLEKS                       R14 R15 K18 ["MAIN"]
       37 GETTABLEKS                       R13 R14 K17 ["Path"]
       39 JUMPIFNOTEQ                      R12 R13 ; [+60]
       41 GETIMPORT                        R12 K20 [pairs]
       43 GETUPVAL                         R13 1
       44 CALL                             R12 1 3
       45 FORGPREP_NEXT                    R12
       46 GETTABLEKS                       R17 R16 K17 ["Path"]
       48 GETUPVAL                         R20 1
       49 GETTABLEKS                       R19 R20 K18 ["MAIN"]
       51 GETTABLEKS                       R18 R19 K17 ["Path"]
       53 JUMPIFEQ                         R17 R18 ; [+43]
       55 GETUPVAL                         R18 0
       56 GETTABLEKS                       R17 R18 K2 ["createElement"]
       58 GETUPVAL                         R18 2
       59 DUPTABLE                         R19 K24 [{"AssetData", "LayoutOrder", "StyleModifier", "Enabled"}]
       60 DUPTABLE                         R20 K28 [{"name", "ClassName", "Screen"}]
       61 LOADK                            R23 K29 ["Folders"]
       62 GETTABLEKS                       R24 R16 K17 ["Path"]
       64 NAMECALL                         R21 R2 K30 ["getText"]
       66 CALL                             R21 3 1
       67 SETTABLEKS                       R21 R20 K25 ["name"]
       69 LOADK                            R21 K31 ["Folder"]
       70 SETTABLEKS                       R21 R20 K26 ["ClassName"]
       72 SETTABLEKS                       R16 R20 K27 ["Screen"]
       74 SETTABLEKS                       R20 R19 K21 ["AssetData"]
       76 GETTABLEKS                       R20 R16 K13 ["LayoutOrder"]
       78 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
       80 GETTABLEKS                       R22 R16 K13 ["LayoutOrder"]
       82 GETTABLE                         R21 R8 R22
       83 JUMPIFNOT                        R21 ; [+4]
       84 GETUPVAL                         R21 3
       85 GETTABLEKS                       R20 R21 K32 ["Selected"]
       87 JUMPIF                           R20 ; [+1]
       88 LOADNIL                          R20
       89 SETTABLEKS                       R20 R19 K22 ["StyleModifier"]
       91 SETTABLEKS                       R9 R19 K23 ["Enabled"]
       93 CALL                             R17 2 1
       94 GETTABLEKS                       R18 R16 K17 ["Path"]
       96 SETTABLE                         R17 R11 R18
       97 FORGLOOP                         R12 2 ; [-52]
       99 JUMP                             ; [+76]
      100 GETIMPORT                        R12 K20 [pairs]
      102 MOVE                             R13 R4
      103 CALL                             R12 1 3
      104 FORGPREP_NEXT                    R12
      105 GETIMPORT                        R17 K35 [string.find]
      107 GETIMPORT                        R18 K37 [string.lower]
      109 GETTABLEKS                       R19 R16 K25 ["name"]
      111 CALL                             R18 1 1
      112 GETIMPORT                        R19 K37 [string.lower]
      114 MOVE                             R20 R7
      115 CALL                             R19 1 1
      116 LOADN                            R20 1
      117 LOADB                            R21 1
      118 CALL                             R17 4 1
      119 JUMPIFNOT                        R17 ; [+54]
      120 GETTABLEKS                       R17 R16 K38 ["layoutOrder"]
      122 SETTABLEKS                       R17 R16 K39 ["key"]
      124 GETUPVAL                         R18 0
      125 GETTABLEKS                       R17 R18 K2 ["createElement"]
      127 GETUPVAL                         R18 2
      128 DUPTABLE                         R19 K45 [{"AssetData", "ModerationData", "LayoutOrder", "StyleModifier", "Enabled", "OnOpenAssetPreview", "OnAssetPreviewClose", "OnAssetDrag", "OnOpenConfirmRemovePlaceDialog"}]
      129 SETTABLEKS                       R16 R19 K21 ["AssetData"]
      131 GETTABLEKS                       R21 R16 K46 ["id"]
      133 GETTABLE                         R20 R5 R21
      134 SETTABLEKS                       R20 R19 K40 ["ModerationData"]
      136 GETTABLEKS                       R20 R16 K38 ["layoutOrder"]
      138 SETTABLEKS                       R20 R19 K13 ["LayoutOrder"]
      140 GETTABLEKS                       R22 R16 K38 ["layoutOrder"]
      142 GETTABLE                         R21 R8 R22
      143 JUMPIFNOT                        R21 ; [+4]
      144 GETUPVAL                         R21 3
      145 GETTABLEKS                       R20 R21 K32 ["Selected"]
      147 JUMPIF                           R20 ; [+1]
      148 LOADNIL                          R20
      149 SETTABLEKS                       R20 R19 K22 ["StyleModifier"]
      151 SETTABLEKS                       R9 R19 K23 ["Enabled"]
      153 GETTABLEKS                       R20 R0 K47 ["onOpenAssetPreview"]
      155 SETTABLEKS                       R20 R19 K41 ["OnOpenAssetPreview"]
      157 GETTABLEKS                       R20 R0 K48 ["onAssetPreviewClose"]
      159 SETTABLEKS                       R20 R19 K42 ["OnAssetPreviewClose"]
      161 GETTABLEKS                       R20 R0 K49 ["onAssetDrag"]
      163 SETTABLEKS                       R20 R19 K43 ["OnAssetDrag"]
      165 GETTABLEKS                       R20 R0 K50 ["onOpenConfirmRemovePlaceDialog"]
      167 SETTABLEKS                       R20 R19 K44 ["OnOpenConfirmRemovePlaceDialog"]
      169 CALL                             R17 2 1
      170 GETTABLEKS                       R18 R16 K46 ["id"]
      172 SETTABLE                         R17 R11 R18
      173 ADDK                             R10 R10 K51 [1]
      174 FORGLOOP                         R12 2 ; [-70]
      176 MOVE                             R12 R11
      177 MOVE                             R13 R10
      178 RETURN                           R12 2

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["View"]
        4 GETTABLEKS                       R4 R0 K2 ["state"]
        6 GETTABLEKS                       R3 R4 K3 ["currentView"]
        8 JUMPIFEQ                         R2 R3 ; [+7]
       10 DUPTABLE                         R5 K4 [{"currentView"}]
       11 SETTABLEKS                       R2 R5 K3 ["currentView"]
       13 NAMECALL                         R3 R0 K5 ["setState"]
       15 CALL                             R3 2 0
       16 GETTABLEKS                       R4 R1 K6 ["AssetsTable"]
       18 GETTABLEKS                       R3 R4 K7 ["assets"]
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
        4 GETUPVAL                         R3 3
        5 GETTABLEKS                       R2 R3 K0 ["AssetType"]
        7 GETUPVAL                         R3 0
        8 CALL                             R0 3 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 4
       11 JUMPIFNOT                        R0 ; [+8]
       12 GETUPVAL                         R0 1
       13 GETUPVAL                         R1 2
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R2 R3 K0 ["AssetType"]
       17 LOADNIL                          R3
       18 GETUPVAL                         R4 4
       19 CALL                             R0 4 0
       20 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R2 R3 K0 ["AssetType"]
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
       46 GETUPVAL                         R26 0
       47 GETTABLEKS                       R25 R26 K21 ["LIST"]
       49 GETTABLEKS                       R24 R25 K20 ["Key"]
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
       72 GETUPVAL                         R26 0
       73 GETTABLEKS                       R25 R26 K24 ["GRID"]
       75 GETTABLEKS                       R24 R25 K20 ["Key"]
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
       98 GETUPVAL                         R27 1
       99 GETTABLEKS                       R26 R27 K28 ["MAIN"]
      101 GETTABLEKS                       R25 R26 K27 ["Path"]
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
      154 GETUPVAL                         R31 4
      155 GETTABLEKS                       R30 R31 K40 ["createElement"]
      157 LOADK                            R31 K41 ["Frame"]
      158 DUPTABLE                         R32 K43 [{"Size", "LayoutOrder", "BackgroundTransparency"}]
      159 SETTABLEKS                       R5 R32 K5 ["Size"]
      161 SETTABLEKS                       R6 R32 K6 ["LayoutOrder"]
      163 LOADN                            R33 1
      164 SETTABLEKS                       R33 R32 K42 ["BackgroundTransparency"]
      166 DUPTABLE                         R33 K47 [{"AssetGrid", "ActionButton", "NoResultsText", "LoadButton", "LoadingIndicator"}]
      167 MOVE                             R34 R23
      168 JUMPIFNOT                        R34 ; [+22]
      169 GETUPVAL                         R35 4
      170 GETTABLEKS                       R34 R35 K40 ["createElement"]
      172 GETUPVAL                         R35 5
      173 DUPTABLE                         R36 K51 [{"AutomaticCanvasSize", "NextPageRequestDistance", "NextPageFunc"}]
      174 GETIMPORT                        R37 K55 [Enum.AutomaticSize.Y]
      176 SETTABLEKS                       R37 R36 K48 ["AutomaticCanvasSize"]
      178 LOADN                            R37 100
      179 SETTABLEKS                       R37 R36 K49 ["NextPageRequestDistance"]
      181 NEWCLOSURE                       R37 P0
      182 CAPTURE                          VAL R11
      183 CAPTURE                          VAL R17
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R13
      186 CAPTURE                          VAL R12
      187 SETTABLEKS                       R37 R36 K50 ["NextPageFunc"]
      189 MOVE                             R37 R20
      190 CALL                             R34 3 1
      191 SETTABLEKS                       R34 R33 K32 ["AssetGrid"]
      193 MOVE                             R34 R23
      194 JUMPIFNOT                        R34 ; [+35]
      195 GETUPVAL                         R35 4
      196 GETTABLEKS                       R34 R35 K40 ["createElement"]
      198 LOADK                            R35 K56 ["ImageButton"]
      199 NEWTABLE                         R36 4 0
      201 GETIMPORT                        R37 K59 [UDim2.new]
      203 LOADN                            R38 1
      204 LOADN                            R39 0
      205 LOADN                            R40 1
      206 LOADN                            R41 0
      207 CALL                             R37 4 1
      208 SETTABLEKS                       R37 R36 K5 ["Size"]
      210 LOADN                            R37 1
      211 SETTABLEKS                       R37 R36 K42 ["BackgroundTransparency"]
      213 GETUPVAL                         R39 4
      214 GETTABLEKS                       R38 R39 K60 ["Event"]
      216 GETTABLEKS                       R37 R38 K61 ["Activated"]
      218 GETTABLEKS                       R38 R0 K62 ["onClearSelection"]
      220 SETTABLE                         R38 R36 R37
      221 GETUPVAL                         R39 4
      222 GETTABLEKS                       R38 R39 K60 ["Event"]
      224 GETTABLEKS                       R37 R38 K63 ["MouseButton2Click"]
      226 GETTABLEKS                       R38 R0 K64 ["onMouseButton2Click"]
      228 SETTABLE                         R38 R36 R37
      229 CALL                             R34 2 1
      230 SETTABLEKS                       R34 R33 K44 ["ActionButton"]
      232 NOT                              R34 R23
      233 JUMPIFNOT                        R34 ; [+54]
      234 NOT                              R34 R14
      235 JUMPIFNOT                        R34 ; [+52]
      236 NOT                              R34 R24
      237 JUMPIFNOT                        R34 ; [+50]
      238 GETUPVAL                         R35 4
      239 GETTABLEKS                       R34 R35 K40 ["createElement"]
      241 LOADK                            R35 K65 ["TextLabel"]
      242 DUPTABLE                         R36 K71 [{"Size", "Position", "AnchorPoint", "Text", "TextColor3", "Font", "TextSize", "BackgroundTransparency"}]
      243 GETIMPORT                        R37 K59 [UDim2.new]
      245 LOADN                            R38 0
      246 GETTABLEKS                       R39 R27 K72 ["X"]
      248 LOADN                            R40 0
      249 GETTABLEKS                       R41 R27 K54 ["Y"]
      251 CALL                             R37 4 1
      252 SETTABLEKS                       R37 R36 K5 ["Size"]
      254 GETIMPORT                        R37 K59 [UDim2.new]
      256 LOADK                            R38 K73 [0.5]
      257 LOADN                            R39 0
      258 LOADK                            R40 K74 [0.3]
      259 LOADN                            R41 0
      260 CALL                             R37 4 1
      261 SETTABLEKS                       R37 R36 K66 ["Position"]
      263 GETIMPORT                        R37 K76 [Vector2.new]
      265 LOADK                            R38 K73 [0.5]
      266 LOADK                            R39 K73 [0.5]
      267 CALL                             R37 2 1
      268 SETTABLEKS                       R37 R36 K67 ["AnchorPoint"]
      270 SETTABLEKS                       R26 R36 K68 ["Text"]
      272 GETTABLEKS                       R37 R3 K77 ["DisabledColor"]
      274 SETTABLEKS                       R37 R36 K69 ["TextColor3"]
      276 GETTABLEKS                       R37 R3 K37 ["Font"]
      278 SETTABLEKS                       R37 R36 K37 ["Font"]
      280 GETTABLEKS                       R37 R3 K36 ["FontSizeMedium"]
      282 SETTABLEKS                       R37 R36 K70 ["TextSize"]
      284 LOADN                            R37 1
      285 SETTABLEKS                       R37 R36 K42 ["BackgroundTransparency"]
      287 CALL                             R34 2 1
      288 SETTABLEKS                       R34 R33 K45 ["NoResultsText"]
      290 NOT                              R34 R23
      291 JUMPIFNOT                        R34 ; [+75]
      292 NOT                              R34 R14
      293 JUMPIFNOT                        R34 ; [+73]
      294 MOVE                             R34 R24
      295 JUMPIFNOT                        R34 ; [+71]
      296 GETUPVAL                         R35 4
      297 GETTABLEKS                       R34 R35 K40 ["createElement"]
      299 GETUPVAL                         R35 6
      300 DUPTABLE                         R36 K80 [{"Style", "Text", "Size", "Position", "AnchorPoint", "OnClick"}]
      301 LOADK                            R37 K81 ["RoundPrimary"]
      302 SETTABLEKS                       R37 R36 K78 ["Style"]
      304 SETTABLEKS                       R28 R36 K68 ["Text"]
      306 GETIMPORT                        R37 K59 [UDim2.new]
      308 LOADN                            R38 0
      309 GETTABLEKS                       R40 R29 K72 ["X"]
      311 GETTABLEKS                       R43 R3 K82 ["AssetGridContainer"]
      313 GETTABLEKS                       R42 R43 K38 ["LoadButton"]
      315 GETTABLEKS                       R41 R42 K83 ["PaddingX"]
      317 ADD                              R39 R40 R41
      318 LOADN                            R40 0
      319 GETTABLEKS                       R42 R29 K54 ["Y"]
      321 GETTABLEKS                       R45 R3 K82 ["AssetGridContainer"]
      323 GETTABLEKS                       R44 R45 K38 ["LoadButton"]
      325 GETTABLEKS                       R43 R44 K84 ["PaddingY"]
      327 ADD                              R41 R42 R43
      328 CALL                             R37 4 1
      329 SETTABLEKS                       R37 R36 K5 ["Size"]
      331 GETIMPORT                        R37 K59 [UDim2.new]
      333 LOADK                            R38 K73 [0.5]
      334 LOADN                            R39 0
      335 LOADK                            R40 K74 [0.3]
      336 LOADN                            R41 0
      337 CALL                             R37 4 1
      338 SETTABLEKS                       R37 R36 K66 ["Position"]
      340 GETIMPORT                        R37 K76 [Vector2.new]
      342 LOADK                            R38 K73 [0.5]
      343 LOADK                            R39 K73 [0.5]
      344 CALL                             R37 2 1
      345 SETTABLEKS                       R37 R36 K67 ["AnchorPoint"]
      347 NEWCLOSURE                       R37 P1
      348 CAPTURE                          VAL R18
      349 CAPTURE                          VAL R2
      350 CAPTURE                          VAL R13
      351 SETTABLEKS                       R37 R36 K79 ["OnClick"]
      353 NEWTABLE                         R37 0 1
      355 GETUPVAL                         R39 4
      356 GETTABLEKS                       R38 R39 K40 ["createElement"]
      358 GETUPVAL                         R39 7
      359 DUPTABLE                         R40 K86 [{"Cursor"}]
      360 LOADK                            R41 K87 ["PointingHand"]
      361 SETTABLEKS                       R41 R40 K85 ["Cursor"]
      363 CALL                             R38 2 -1
      364 SETLIST                          R37 R38 -1 [1]
      366 CALL                             R34 3 1
      367 SETTABLEKS                       R34 R33 K38 ["LoadButton"]
      369 MOVE                             R34 R14
      370 JUMPIFNOT                        R34 ; [+25]
      371 GETUPVAL                         R35 4
      372 GETTABLEKS                       R34 R35 K40 ["createElement"]
      374 GETUPVAL                         R35 8
      375 DUPTABLE                         R36 K89 [{"Position", "AnchorPoint", "ZIndex"}]
      376 GETIMPORT                        R37 K59 [UDim2.new]
      378 LOADK                            R38 K73 [0.5]
      379 LOADN                            R39 0
      380 LOADK                            R40 K73 [0.5]
      381 LOADN                            R41 0
      382 CALL                             R37 4 1
      383 SETTABLEKS                       R37 R36 K66 ["Position"]
      385 GETIMPORT                        R37 K76 [Vector2.new]
      387 LOADK                            R38 K73 [0.5]
      388 LOADK                            R39 K73 [0.5]
      389 CALL                             R37 2 1
      390 SETTABLEKS                       R37 R36 K67 ["AnchorPoint"]
      392 LOADN                            R37 2
      393 SETTABLEKS                       R37 R36 K88 ["ZIndex"]
      395 CALL                             R34 2 1
      396 SETTABLEKS                       R34 R33 K46 ["LoadingIndicator"]
      398 CALL                             R30 3 -1
      399 RETURN                           R30 -1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["AssetManagerReducer"]
        2 DUPTABLE                         R3 K7 [{"AssetsTable", "CurrentScreen", "IsFetchingAssets", "SearchTerm", "SelectedAssets", "View"}]
        3 GETTABLEKS                       R4 R2 K8 ["assetsTable"]
        5 SETTABLEKS                       R4 R3 K1 ["AssetsTable"]
        7 GETTABLEKS                       R5 R0 K9 ["Screen"]
        9 GETTABLEKS                       R4 R5 K10 ["currentScreen"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["InsertAsset"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R5 R1 K9 ["Context"]
       32 GETTABLEKS                       R4 R5 K10 ["InsertAssetContext"]
       34 GETIMPORT                        R5 K4 [require]
       36 GETTABLEKS                       R7 R0 K5 ["Packages"]
       38 GETTABLEKS                       R6 R7 K11 ["Framework"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R5 K12 ["ContextServices"]
       43 GETTABLEKS                       R7 R6 K13 ["withContext"]
       45 GETTABLEKS                       R8 R5 K14 ["Util"]
       47 GETTABLEKS                       R9 R8 K15 ["GetTextSize"]
       49 GETTABLEKS                       R10 R8 K16 ["StyleModifier"]
       51 GETTABLEKS                       R12 R5 K17 ["Style"]
       53 GETTABLEKS                       R11 R12 K18 ["ComponentSymbols"]
       55 GETTABLEKS                       R12 R5 K19 ["UI"]
       57 GETTABLEKS                       R13 R12 K20 ["Button"]
       59 GETTABLEKS                       R14 R12 K21 ["HoverArea"]
       61 GETTABLEKS                       R15 R12 K22 ["LoadingIndicator"]
       63 GETTABLEKS                       R16 R12 K23 ["ScrollingFrame"]
       65 GETIMPORT                        R17 K4 [require]
       67 GETTABLEKS                       R20 R0 K24 ["Src"]
       69 GETTABLEKS                       R19 R20 K14 ["Util"]
       71 GETTABLEKS                       R18 R19 K25 ["Screens"]
       73 CALL                             R17 1 1
       74 GETIMPORT                        R18 K4 [require]
       76 GETTABLEKS                       R21 R0 K24 ["Src"]
       78 GETTABLEKS                       R20 R21 K14 ["Util"]
       80 GETTABLEKS                       R19 R20 K26 ["View"]
       82 CALL                             R18 1 1
       83 GETIMPORT                        R19 K4 [require]
       85 GETTABLEKS                       R22 R0 K24 ["Src"]
       87 GETTABLEKS                       R21 R22 K27 ["Components"]
       89 GETTABLEKS                       R20 R21 K28 ["ListItem"]
       91 CALL                             R19 1 1
       92 GETIMPORT                        R20 K4 [require]
       94 GETTABLEKS                       R23 R0 K24 ["Src"]
       96 GETTABLEKS                       R22 R23 K27 ["Components"]
       98 GETTABLEKS                       R21 R22 K29 ["Tile"]
      100 CALL                             R20 1 1
      101 GETIMPORT                        R21 K4 [require]
      103 GETTABLEKS                       R24 R0 K24 ["Src"]
      105 GETTABLEKS                       R23 R24 K30 ["Actions"]
      107 GETTABLEKS                       R22 R23 K31 ["SetAssets"]
      109 CALL                             R21 1 1
      110 GETIMPORT                        R22 K4 [require]
      112 GETTABLEKS                       R25 R0 K24 ["Src"]
      114 GETTABLEKS                       R24 R25 K32 ["Thunks"]
      116 GETTABLEKS                       R23 R24 K33 ["GetAssets"]
      118 CALL                             R22 1 1
      119 GETIMPORT                        R23 K4 [require]
      121 GETTABLEKS                       R26 R0 K24 ["Src"]
      123 GETTABLEKS                       R25 R26 K32 ["Thunks"]
      125 GETTABLEKS                       R24 R25 K34 ["LoadAllAliases"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K4 [require]
      130 GETTABLEKS                       R27 R0 K24 ["Src"]
      132 GETTABLEKS                       R26 R27 K32 ["Thunks"]
      134 GETTABLEKS                       R25 R26 K35 ["OnAssetDrag"]
      136 CALL                             R24 1 1
      137 GETIMPORT                        R25 K4 [require]
      139 GETTABLEKS                       R28 R0 K24 ["Src"]
      141 GETTABLEKS                       R27 R28 K32 ["Thunks"]
      143 GETTABLEKS                       R26 R27 K36 ["OnAssetRightClick"]
      145 CALL                             R25 1 1
      146 GETIMPORT                        R26 K4 [require]
      148 GETTABLEKS                       R29 R0 K24 ["Src"]
      150 GETTABLEKS                       R28 R29 K32 ["Thunks"]
      152 GETTABLEKS                       R27 R28 K37 ["OnScreenChange"]
      154 CALL                             R26 1 1
      155 GETIMPORT                        R27 K4 [require]
      157 GETTABLEKS                       R30 R0 K24 ["Src"]
      159 GETTABLEKS                       R29 R30 K32 ["Thunks"]
      161 GETTABLEKS                       R28 R29 K38 ["UpdateSelectedAssets"]
      163 CALL                             R27 1 1
      164 GETIMPORT                        R28 K40 [game]
      166 LOADK                            R30 K41 ["AssetManagerService"]
      167 NAMECALL                         R28 R28 K42 ["GetService"]
      169 CALL                             R28 2 1
      170 GETIMPORT                        R29 K40 [game]
      172 LOADK                            R31 K43 ["BulkImportService"]
      173 NAMECALL                         R29 R29 K42 ["GetService"]
      175 CALL                             R29 2 1
      176 GETIMPORT                        R31 K4 [require]
      178 GETTABLEKS                       R34 R0 K24 ["Src"]
      180 GETTABLEKS                       R33 R34 K14 ["Util"]
      182 GETTABLEKS                       R32 R33 K44 ["AssetManagerUtilities"]
      184 CALL                             R31 1 1
      185 GETTABLEKS                       R30 R31 K45 ["shouldEnableAudioImport"]
      187 GETIMPORT                        R32 K4 [require]
      189 GETTABLEKS                       R35 R0 K24 ["Src"]
      191 GETTABLEKS                       R34 R35 K14 ["Util"]
      193 GETTABLEKS                       R33 R34 K44 ["AssetManagerUtilities"]
      195 CALL                             R32 1 1
      196 GETTABLEKS                       R31 R32 K46 ["shouldEnableVideoImport"]
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
