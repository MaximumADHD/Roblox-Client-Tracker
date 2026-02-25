PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["SetSearchFilter"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Localization"]
        5 LOADK                            R4 K2 ["Preview"]
        6 LOADK                            R5 K3 ["PanelBlockerAddItemWithEscape"]
        7 NAMECALL                         R2 R1 K4 ["getText"]
        9 CALL                             R2 3 1
       10 GETTABLEKS                       R3 R0 K5 ["StartSelectingFromExplorer"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K6 ["SELECTOR_MODE"]
       15 GETTABLEKS                       R4 R5 K2 ["Preview"]
       17 MOVE                             R5 R2
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K1 [pairs]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K2 ["getTabs"]
        5 CALL                             R2 0 -1
        6 CALL                             R1 -1 3
        7 FORGPREP_NEXT                    R1
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R6 R7 K3 ["isInstanceValidForTab"]
       11 MOVE                             R7 R4
       12 MOVE                             R8 R0
       13 CALL                             R6 2 1
       14 JUMPIFNOT                        R6 ; [+1]
       15 RETURN                           R4 1
       16 FORGLOOP                         R1 2 ; [-9]
       18 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["EditingItemContext"]
        5 NAMECALL                         R3 R3 K2 ["getItem"]
        7 CALL                             R3 1 1
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K3 ["getTabInfo"]
       11 MOVE                             R5 R0
       12 CALL                             R4 1 1
       13 JUMPIFNOT                        R4 ; [+5]
       14 GETTABLEKS                       R5 R4 K4 ["IsSelectedInstanceValid"]
       16 MOVE                             R6 R1
       17 CALL                             R5 1 1
       18 JUMPIF                           R5 ; [+2]
       19 LOADB                            R5 0
       20 RETURN                           R5 1
       21 LOADK                            R8 K5 ["LayeredClothingEditorPreview"]
       22 NAMECALL                         R6 R1 K6 ["FindFirstAncestor"]
       24 CALL                             R6 2 1
       25 JUMPIFNOTEQKNIL                  R6 ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 JUMPIFEQ                         R1 R3 ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 GETTABLEKS                       R8 R3 K7 ["Parent"]
       35 JUMPIFEQ                         R1 R8 ; [+2]
       37 LOADB                            R7 0 +1
       38 LOADB                            R7 1
       39 MOVE                             R9 R5
       40 JUMPIF                           R9 ; [+3]
       41 MOVE                             R9 R6
       42 JUMPIF                           R9 ; [+1]
       43 MOVE                             R9 R7
       44 NOT                              R8 R9
       45 RETURN                           R8 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getTabForInstance"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADB                            R1 1
        7 RETURN                           R1 1
        8 LOADK                            R3 K1 ["Folder"]
        9 NAMECALL                         R1 R0 K2 ["IsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+2]
       13 LOADB                            R1 1
       14 RETURN                           R1 1
       15 LOADB                            R1 0
       16 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R1 2
        4 GETTABLEKS                       R0 R1 K0 ["getTabForInstance"]
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 1
        8 JUMPIFNOT                        R0 ; [+10]
        9 GETUPVAL                         R2 3
       10 GETTABLEKS                       R1 R2 K1 ["AddUserAddedAssetForPreview"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 1
       14 NAMECALL                         R3 R3 K2 ["Clone"]
       16 CALL                             R3 1 -1
       17 CALL                             R1 -1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R1 1
       20 LOADK                            R3 K3 ["Folder"]
       21 NAMECALL                         R1 R1 K4 ["IsA"]
       23 CALL                             R1 2 1
       24 JUMPIFNOT                        R1 ; [+26]
       25 GETUPVAL                         R2 2
       26 GETTABLEKS                       R1 R2 K5 ["previewFolder"]
       28 GETUPVAL                         R3 1
       29 NAMECALL                         R1 R1 K6 ["addFolderPath"]
       31 CALL                             R1 2 0
       32 GETUPVAL                         R2 2
       33 GETTABLEKS                       R1 R2 K5 ["previewFolder"]
       35 GETUPVAL                         R5 2
       36 GETTABLEKS                       R4 R5 K7 ["props"]
       38 GETTABLEKS                       R3 R4 K8 ["UserAddedAssets"]
       40 GETUPVAL                         R5 2
       41 GETTABLEKS                       R4 R5 K9 ["isInstanceValidForTab"]
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R6 R7 K7 ["props"]
       46 GETTABLEKS                       R5 R6 K1 ["AddUserAddedAssetForPreview"]
       48 NAMECALL                         R1 R1 K10 ["addDirtyFolders"]
       50 CALL                             R1 4 0
       51 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["FinishSelectingFromExplorer"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["props"]
        8 GETTABLEKS                       R3 R4 K2 ["Localization"]
       10 LOADK                            R5 K3 ["Preview"]
       11 LOADK                            R6 K4 ["ConfirmAddTile"]
       12 DUPTABLE                         R7 K6 [{"itemName"}]
       13 GETTABLEKS                       R8 R0 K7 ["Name"]
       15 SETTABLEKS                       R8 R7 K5 ["itemName"]
       17 NAMECALL                         R3 R3 K8 ["getText"]
       19 CALL                             R3 4 1
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K0 ["props"]
       23 GETTABLEKS                       R4 R5 K2 ["Localization"]
       25 LOADK                            R6 K3 ["Preview"]
       26 LOADK                            R7 K9 ["ConfirmAddTiles"]
       27 DUPTABLE                         R8 K6 [{"itemName"}]
       28 GETTABLEKS                       R9 R0 K7 ["Name"]
       30 SETTABLEKS                       R9 R8 K5 ["itemName"]
       32 NAMECALL                         R4 R4 K8 ["getText"]
       34 CALL                             R4 4 1
       35 LOADK                            R8 K10 ["Folder"]
       36 NAMECALL                         R6 R0 K11 ["IsA"]
       38 CALL                             R6 2 1
       39 JUMPIFNOT                        R6 ; [+2]
       40 MOVE                             R5 R4
       41 JUMP                             ; [+1]
       42 MOVE                             R5 R3
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R7 R1 K12 ["Plugin"]
       46 GETTABLEKS                       R8 R1 K2 ["Localization"]
       48 GETUPVAL                         R9 2
       49 DUPTABLE                         R10 K16 [{"Text", "OnClose", "OnConfirm"}]
       50 SETTABLEKS                       R5 R10 K13 ["Text"]
       52 SETTABLEKS                       R2 R10 K14 ["OnClose"]
       54 NEWCLOSURE                       R11 P0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R0
       57 CAPTURE                          UPVAL U0
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R11 R10 K15 ["OnConfirm"]
       61 CALL                             R6 4 0
       62 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["FinishSelectingFromExplorer"]
        5 GETTABLEKS                       R3 R1 K2 ["Localization"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R5 R1 K3 ["Plugin"]
       10 GETTABLEKS                       R6 R1 K2 ["Localization"]
       12 GETUPVAL                         R7 2
       13 DUPTABLE                         R8 K6 [{"Text", "OnClose"}]
       14 LOADK                            R11 K7 ["Preview"]
       15 LOADK                            R12 K8 ["InvalidAdd"]
       16 NAMECALL                         R9 R3 K9 ["getText"]
       18 CALL                             R9 3 1
       19 SETTABLEKS                       R9 R8 K4 ["Text"]
       21 SETTABLEKS                       R2 R8 K5 ["OnClose"]
       23 CALL                             R4 4 0
       24 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["previewFolder"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["onSearchRequested"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R1 R0 K3 ["onClickAddNewInstance"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K4 ["getTabForInstance"]
       20 NEWCLOSURE                       R1 P3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U2
       23 SETTABLEKS                       R1 R0 K5 ["isInstanceValidForTab"]
       25 NEWCLOSURE                       R1 P4
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K6 ["isSelectedInstanceValid"]
       29 NEWCLOSURE                       R1 P5
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          UPVAL U4
       33 SETTABLEKS                       R1 R0 K7 ["onInstanceSelectorValidSelection"]
       35 NEWCLOSURE                       R1 P6
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U3
       38 CAPTURE                          UPVAL U5
       39 SETTABLEKS                       R1 R0 K8 ["onInstanceSelectorInvalidSelection"]
       41 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["layoutOrder"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 DUPTABLE                         R5 K9 [{"LayoutOrder", "OnSearchRequested", "IsSelectedInstanceValid", "OnClickAddNewInstance", "OnInstanceSelectorValidSelection", "OnInstanceSelectorInvalidSelection"}]
        9 SETTABLEKS                       R2 R5 K3 ["LayoutOrder"]
       11 GETTABLEKS                       R6 R0 K10 ["onSearchRequested"]
       13 SETTABLEKS                       R6 R5 K4 ["OnSearchRequested"]
       15 GETTABLEKS                       R6 R0 K11 ["isSelectedInstanceValid"]
       17 SETTABLEKS                       R6 R5 K5 ["IsSelectedInstanceValid"]
       19 GETTABLEKS                       R6 R0 K12 ["onClickAddNewInstance"]
       21 SETTABLEKS                       R6 R5 K6 ["OnClickAddNewInstance"]
       23 GETTABLEKS                       R6 R0 K13 ["onInstanceSelectorValidSelection"]
       25 SETTABLEKS                       R6 R5 K7 ["OnInstanceSelectorValidSelection"]
       27 GETTABLEKS                       R6 R0 K14 ["onInstanceSelectorInvalidSelection"]
       29 SETTABLEKS                       R6 R5 K8 ["OnInstanceSelectorInvalidSelection"]
       31 CALL                             R3 2 -1
       32 RETURN                           R3 -1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETIMPORT                        R2 K2 [next]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K3 ["UserAddedAssets"]
        8 CALL                             R2 1 1
        9 JUMPIF                           R2 ; [+5]
       10 GETTABLEKS                       R2 R0 K4 ["previewFolder"]
       12 NAMECALL                         R2 R2 K5 ["resetAllFoldersAttributes"]
       14 CALL                             R2 1 0
       15 GETTABLEKS                       R2 R0 K4 ["previewFolder"]
       17 GETTABLEKS                       R5 R0 K0 ["props"]
       19 GETTABLEKS                       R4 R5 K3 ["UserAddedAssets"]
       21 GETTABLEKS                       R6 R0 K0 ["props"]
       23 GETTABLEKS                       R5 R6 K6 ["DeleteUserAddedAssetForPreview"]
       25 NAMECALL                         R2 R2 K7 ["cleanDirtyFolders"]
       27 CALL                             R2 3 0
       28 GETTABLEKS                       R2 R0 K4 ["previewFolder"]
       30 GETTABLEKS                       R5 R0 K0 ["props"]
       32 GETTABLEKS                       R4 R5 K3 ["UserAddedAssets"]
       34 GETTABLEKS                       R5 R0 K8 ["isInstanceValidForTab"]
       36 GETTABLEKS                       R7 R0 K0 ["props"]
       38 GETTABLEKS                       R6 R7 K9 ["AddUserAddedAssetForPreview"]
       40 NAMECALL                         R2 R2 K10 ["addDirtyFolders"]
       42 CALL                             R2 4 0
       43 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R0 K0 ["previewStatus"]
        2 DUPTABLE                         R3 K2 [{"UserAddedAssets"}]
        3 GETTABLEKS                       R4 R2 K3 ["userAddedAssets"]
        5 SETTABLEKS                       R4 R3 K1 ["UserAddedAssets"]
        7 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 CALL                             R1 -1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K5 [{"SetSearchFilter", "StartSelectingFromExplorer", "FinishSelectingFromExplorer", "DeleteUserAddedAssetForPreview", "AddUserAddedAssetForPreview"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetSearchFilter"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["StartSelectingFromExplorer"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["FinishSelectingFromExplorer"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["DeleteUserAddedAssetForPreview"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R2 R1 K4 ["AddUserAddedAssetForPreview"]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R6 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R6 K9 ["AvatarToolsShared"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K10 ["Components"]
       41 GETTABLEKS                       R6 R5 K11 ["ConfirmCancelDialog"]
       43 GETTABLEKS                       R7 R5 K12 ["ConfirmDialog"]
       45 GETTABLEKS                       R8 R5 K13 ["PreviewTopBar"]
       47 GETTABLEKS                       R10 R4 K14 ["Util"]
       49 GETTABLEKS                       R9 R10 K15 ["AccessoryAndBodyToolShared"]
       51 GETTABLEKS                       R10 R9 K16 ["Constants"]
       53 GETTABLEKS                       R11 R9 K17 ["PreviewConstants"]
       55 GETTABLEKS                       R12 R9 K18 ["PreviewConstantsInterface"]
       57 GETTABLEKS                       R13 R9 K19 ["PreviewFolderManager"]
       59 GETIMPORT                        R14 K4 [require]
       61 GETTABLEKS                       R16 R0 K5 ["Packages"]
       63 GETTABLEKS                       R15 R16 K20 ["Framework"]
       65 CALL                             R14 1 1
       66 GETTABLEKS                       R15 R14 K21 ["ContextServices"]
       68 GETTABLEKS                       R16 R15 K22 ["withContext"]
       70 GETTABLEKS                       R17 R14 K14 ["Util"]
       72 GETTABLEKS                       R18 R17 K23 ["LayoutOrderIterator"]
       74 GETTABLEKS                       R19 R17 K24 ["Typecheck"]
       76 GETIMPORT                        R20 K4 [require]
       78 GETTABLEKS                       R23 R0 K25 ["Src"]
       80 GETTABLEKS                       R22 R23 K26 ["Actions"]
       82 GETTABLEKS                       R21 R22 K27 ["SetSearchFilter"]
       84 CALL                             R20 1 1
       85 GETIMPORT                        R21 K4 [require]
       87 GETTABLEKS                       R24 R0 K25 ["Src"]
       89 GETTABLEKS                       R23 R24 K28 ["Thunks"]
       91 GETTABLEKS                       R22 R23 K29 ["StartSelectingFromExplorer"]
       93 CALL                             R21 1 1
       94 GETIMPORT                        R22 K4 [require]
       96 GETTABLEKS                       R25 R0 K25 ["Src"]
       98 GETTABLEKS                       R24 R25 K28 ["Thunks"]
      100 GETTABLEKS                       R23 R24 K30 ["FinishSelectingFromExplorer"]
      102 CALL                             R22 1 1
      103 GETIMPORT                        R23 K4 [require]
      105 GETTABLEKS                       R26 R0 K25 ["Src"]
      107 GETTABLEKS                       R25 R26 K28 ["Thunks"]
      109 GETTABLEKS                       R24 R25 K31 ["DeleteUserAddedAssetForPreview"]
      111 CALL                             R23 1 1
      112 GETIMPORT                        R24 K4 [require]
      114 GETTABLEKS                       R27 R0 K25 ["Src"]
      116 GETTABLEKS                       R26 R27 K28 ["Thunks"]
      118 GETTABLEKS                       R25 R26 K32 ["AddUserAddedAssetForPreview"]
      120 CALL                             R24 1 1
      121 GETTABLEKS                       R26 R4 K33 ["Contexts"]
      123 GETTABLEKS                       R25 R26 K34 ["EditingItemContext"]
      125 GETIMPORT                        R26 K4 [require]
      127 GETTABLEKS                       R29 R0 K25 ["Src"]
      129 GETTABLEKS                       R28 R29 K14 ["Util"]
      131 GETTABLEKS                       R27 R28 K16 ["Constants"]
      133 CALL                             R26 1 1
      134 GETIMPORT                        R27 K4 [require]
      136 GETTABLEKS                       R30 R0 K25 ["Src"]
      138 GETTABLEKS                       R29 R30 K14 ["Util"]
      140 GETTABLEKS                       R28 R29 K35 ["ShowDialog"]
      142 CALL                             R27 1 1
      143 GETTABLEKS                       R28 R1 K36 ["PureComponent"]
      145 LOADK                            R30 K37 ["PreviewTopBarWrapper"]
      146 NAMECALL                         R28 R28 K38 ["extend"]
      148 CALL                             R28 2 1
      149 GETTABLEKS                       R29 R19 K39 ["wrap"]
      151 MOVE                             R30 R28
      152 GETIMPORT                        R31 K1 [script]
      154 CALL                             R29 2 0
      155 DUPCLOSURE                       R29 K40 [PROTO_8]
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R26
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R27
      160 CAPTURE                          VAL R6
      161 CAPTURE                          VAL R7
      162 SETTABLEKS                       R29 R28 K41 ["init"]
      164 DUPCLOSURE                       R29 K42 [PROTO_9]
      165 CAPTURE                          VAL R1
      166 CAPTURE                          VAL R8
      167 SETTABLEKS                       R29 R28 K43 ["render"]
      169 DUPCLOSURE                       R29 K44 [PROTO_10]
      170 SETTABLEKS                       R29 R28 K45 ["didMount"]
      172 MOVE                             R29 R16
      173 DUPTABLE                         R30 K49 [{"Stylizer", "Localization", "Plugin", "EditingItemContext"}]
      174 GETTABLEKS                       R31 R15 K46 ["Stylizer"]
      176 SETTABLEKS                       R31 R30 K46 ["Stylizer"]
      178 GETTABLEKS                       R31 R15 K47 ["Localization"]
      180 SETTABLEKS                       R31 R30 K47 ["Localization"]
      182 GETTABLEKS                       R31 R15 K48 ["Plugin"]
      184 SETTABLEKS                       R31 R30 K48 ["Plugin"]
      186 SETTABLEKS                       R25 R30 K34 ["EditingItemContext"]
      188 CALL                             R29 1 1
      189 MOVE                             R30 R28
      190 CALL                             R29 1 1
      191 MOVE                             R28 R29
      192 DUPCLOSURE                       R29 K50 [PROTO_11]
      193 DUPCLOSURE                       R30 K51 [PROTO_17]
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R21
      196 CAPTURE                          VAL R22
      197 CAPTURE                          VAL R23
      198 CAPTURE                          VAL R24
      199 GETTABLEKS                       R31 R2 K52 ["connect"]
      201 MOVE                             R32 R29
      202 MOVE                             R33 R30
      203 CALL                             R31 2 1
      204 MOVE                             R32 R28
      205 CALL                             R31 1 -1
      206 RETURN                           R31 -1
