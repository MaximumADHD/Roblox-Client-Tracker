PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["isClothes"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R2 R0 K2 ["Parent"]
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["isAvatar"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 1
       19 JUMPIF                           R3 ; [+1]
       20 RETURN                           R0 0
       21 NAMECALL                         R3 R2 K4 ["Clone"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K6 [ipairs]
       26 NAMECALL                         R5 R3 K7 ["GetChildren"]
       28 CALL                             R5 1 -1
       29 CALL                             R4 -1 3
       30 FORGPREP_INEXT                   R4
       31 GETTABLEKS                       R9 R8 K8 ["Name"]
       33 GETTABLEKS                       R10 R0 K8 ["Name"]
       35 JUMPIFNOTEQ                      R9 R10 ; [+4]
       37 NAMECALL                         R9 R8 K9 ["Destroy"]
       39 CALL                             R9 1 0
       40 FORGLOOP                         R4 2 [inext] ; [-10]
       42 GETTABLEKS                       R4 R1 K10 ["AddUserAddedAssetForPreview"]
       44 GETUPVAL                         R5 2
       45 GETTABLEKS                       R5 R5 K11 ["TABS_KEYS"]
       47 GETTABLEKS                       R5 R5 K12 ["Avatars"]
       49 MOVE                             R6 R3
       50 CALL                             R4 2 0
       51 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["EditingItemContext"]
        5 MOVE                             R3 R0
        6 NAMECALL                         R1 R1 K2 ["setSourceItem"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["checkForPreviewAvatar"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["props"]
       17 GETTABLEKS                       R1 R1 K4 ["SetToolMode"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K5 ["TOOL_MODE"]
       22 GETTABLEKS                       R2 R2 K6 ["None"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R1 R1 K0 ["props"]
       28 GETTABLEKS                       R1 R1 K7 ["GoToNext"]
       30 CALL                             R1 0 0
       31 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setSourceItem"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R3 R1 K1 ["Plugin"]
        6 GETTABLEKS                       R4 R1 K2 ["Localization"]
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K5 [{"Text", "OnConfirm"}]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K0 ["props"]
       13 GETTABLEKS                       R7 R7 K2 ["Localization"]
       15 LOADK                            R9 K6 ["Select"]
       16 LOADK                            R10 K7 ["LoseChanges"]
       17 NAMECALL                         R7 R7 K8 ["getText"]
       19 CALL                             R7 3 1
       20 SETTABLEKS                       R7 R6 K3 ["Text"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          UPVAL U0
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R7 R6 K4 ["OnConfirm"]
       27 CALL                             R2 4 0
       28 RETURN                           R0 0

PROTO_4:
        0 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["state"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R2 R0 K2 ["selectedPart"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["isSelectedInstanceValid"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+37]
       14 GETUPVAL                         R4 0
       15 DUPTABLE                         R6 K5 [{"invalidSelected", "selectedPart"}]
       16 LOADB                            R7 1
       17 SETTABLEKS                       R7 R6 K4 ["invalidSelected"]
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R7 R7 K6 ["None"]
       22 SETTABLEKS                       R7 R6 K2 ["selectedPart"]
       24 NAMECALL                         R4 R4 K7 ["setState"]
       26 CALL                             R4 2 0
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R5 R1 K8 ["Plugin"]
       30 GETTABLEKS                       R6 R1 K9 ["Localization"]
       32 GETUPVAL                         R7 3
       33 DUPTABLE                         R8 K12 [{"Text", "OnClose"}]
       34 GETUPVAL                         R9 0
       35 GETTABLEKS                       R9 R9 K1 ["props"]
       37 GETTABLEKS                       R9 R9 K9 ["Localization"]
       39 LOADK                            R11 K13 ["Select"]
       40 LOADK                            R12 K14 ["Invalid"]
       41 NAMECALL                         R9 R9 K15 ["getText"]
       43 CALL                             R9 3 1
       44 SETTABLEKS                       R9 R8 K10 ["Text"]
       46 DUPCLOSURE                       R9 K16 [PROTO_4]
       47 SETTABLEKS                       R9 R8 K11 ["OnClose"]
       49 CALL                             R4 4 0
       50 RETURN                           R0 0
       51 JUMPIFNOT                        R2 ; [+19]
       52 GETTABLEKS                       R4 R1 K17 ["EditingItemContext"]
       54 NAMECALL                         R4 R4 K18 ["getSourceItem"]
       56 CALL                             R4 1 1
       57 JUMPIFNOT                        R4 ; [+2]
       58 JUMPIFNOTEQ                      R4 R2 ; [+7]
       60 GETUPVAL                         R5 0
       61 GETTABLEKS                       R5 R5 K19 ["setSourceItem"]
       63 MOVE                             R6 R2
       64 CALL                             R5 1 0
       65 RETURN                           R0 0
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K20 ["onSelectNewItem"]
       69 MOVE                             R6 R2
       70 CALL                             R5 1 0
       71 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["EditingItemContext"]
        5 NAMECALL                         R2 R2 K2 ["getItem"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["isPotentialLayeredClothingItem"]
       11 MOVE                             R4 R0
       12 CALL                             R3 1 1
       13 JUMPIF                           R3 ; [+2]
       14 LOADB                            R3 0
       15 RETURN                           R3 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K4 ["hasInvalidCage"]
       19 MOVE                             R4 R0
       20 CALL                             R3 1 1
       21 JUMPIFNOT                        R3 ; [+2]
       22 LOADB                            R3 0
       23 RETURN                           R3 1
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R3 R3 K5 ["isAvatar"]
       27 MOVE                             R4 R0
       28 CALL                             R3 1 1
       29 LOADK                            R6 K6 ["MeshPart"]
       30 NAMECALL                         R4 R0 K7 ["IsA"]
       32 CALL                             R4 2 1
       33 JUMPIFNOT                        R4 ; [+4]
       34 LOADK                            R6 K8 ["WrapTarget"]
       35 NAMECALL                         R4 R0 K9 ["FindFirstChildWhichIsA"]
       37 CALL                             R4 2 1
       38 JUMPIF                           R3 ; [+1]
       39 JUMPIFNOT                        R4 ; [+2]
       40 LOADB                            R5 0
       41 RETURN                           R5 1
       42 LOADK                            R8 K10 ["LayeredClothingEditorPreview"]
       43 NAMECALL                         R6 R0 K11 ["FindFirstAncestor"]
       45 CALL                             R6 2 1
       46 JUMPIFNOTEQKNIL                  R6 ; [+2]
       48 LOADB                            R5 0 +1
       49 LOADB                            R5 1
       50 JUMPIFEQ                         R0 R2 ; [+2]
       52 LOADB                            R6 0 +1
       53 LOADB                            R6 1
       54 MOVE                             R7 R2
       55 JUMPIFNOT                        R7 ; [+6]
       56 GETTABLEKS                       R8 R2 K12 ["Parent"]
       58 JUMPIFEQ                         R0 R8 ; [+2]
       60 LOADB                            R7 0 +1
       61 LOADB                            R7 1
       62 MOVE                             R8 R2
       63 JUMPIFNOT                        R8 ; [+5]
       64 GETTABLEKS                       R10 R2 K13 ["Name"]
       66 NAMECALL                         R8 R0 K11 ["FindFirstAncestor"]
       68 CALL                             R8 2 1
       69 MOVE                             R9 R0
       70 JUMPIFNOT                        R9 ; [+10]
       71 MOVE                             R9 R2
       72 JUMPIFNOT                        R9 ; [+8]
       73 GETTABLEKS                       R10 R0 K12 ["Parent"]
       75 GETTABLEKS                       R11 R2 K12 ["Parent"]
       77 JUMPIFEQ                         R10 R11 ; [+2]
       79 LOADB                            R9 0 +1
       80 LOADB                            R9 1
       81 MOVE                             R11 R5
       82 JUMPIF                           R11 ; [+7]
       83 MOVE                             R11 R6
       84 JUMPIF                           R11 ; [+5]
       85 MOVE                             R11 R7
       86 JUMPIF                           R11 ; [+3]
       87 MOVE                             R11 R9
       88 JUMPIF                           R11 ; [+1]
       89 MOVE                             R11 R8
       90 NOT                              R10 R11
       91 RETURN                           R10 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"selectedPart", "invalidSelected"}]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K3 ["None"]
        5 SETTABLEKS                       R3 R2 K0 ["selectedPart"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K1 ["invalidSelected"]
       10 NAMECALL                         R0 R0 K4 ["setState"]
       12 CALL                             R0 2 0
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K5 ["ancestryChangedHandle"]
       16 NAMECALL                         R0 R0 K6 ["Disconnect"]
       18 CALL                             R0 1 0
       19 GETUPVAL                         R0 0
       20 LOADNIL                          R1
       21 SETTABLEKS                       R1 R0 K5 ["ancestryChangedHandle"]
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"selectedPart", "invalidSelected"}]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K3 ["getHandle"]
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R4 R3 K0 ["selectedPart"]
        9 LOADB                            R4 0
       10 SETTABLEKS                       R4 R3 K1 ["invalidSelected"]
       12 NAMECALL                         R1 R1 K4 ["setState"]
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K5 ["ancestryChangedHandle"]
       18 JUMPIFNOT                        R1 ; [+6]
       19 GETUPVAL                         R1 0
       20 GETTABLEKS                       R1 R1 K5 ["ancestryChangedHandle"]
       22 NAMECALL                         R1 R1 K6 ["Disconnect"]
       24 CALL                             R1 1 0
       25 GETUPVAL                         R1 0
       26 GETTABLEKS                       R2 R0 K7 ["AncestryChanged"]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          UPVAL U0
       30 CAPTURE                          UPVAL U2
       31 NAMECALL                         R2 R2 K8 ["Connect"]
       33 CALL                             R2 2 1
       34 SETTABLEKS                       R2 R1 K5 ["ancestryChangedHandle"]
       36 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"invalidSelected", "selectedPart"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["invalidSelected"]
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K3 ["None"]
        8 SETTABLEKS                       R3 R2 K1 ["selectedPart"]
       10 NAMECALL                         R0 R0 K4 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"selectedPart", "invalidSelected"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["selectedPart"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["invalidSelected"]
        7 SETTABLEKS                       R1 R0 K3 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R1 R0 K4 ["checkForPreviewAvatar"]
       15 NEWCLOSURE                       R1 P1
       16 CAPTURE                          VAL R0
       17 CAPTURE                          UPVAL U2
       18 SETTABLEKS                       R1 R0 K5 ["setSourceItem"]
       20 NEWCLOSURE                       R1 P2
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U3
       23 CAPTURE                          UPVAL U4
       24 SETTABLEKS                       R1 R0 K6 ["onSelectNewItem"]
       26 NEWCLOSURE                       R1 P3
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U6
       31 SETTABLEKS                       R1 R0 K7 ["onConfirmSelection"]
       33 NEWCLOSURE                       R1 P4
       34 CAPTURE                          VAL R0
       35 CAPTURE                          UPVAL U0
       36 SETTABLEKS                       R1 R0 K8 ["isSelectedInstanceValid"]
       38 NEWCLOSURE                       R1 P5
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U0
       41 CAPTURE                          UPVAL U5
       42 SETTABLEKS                       R1 R0 K9 ["onSelectValidInstance"]
       44 NEWCLOSURE                       R1 P6
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U5
       47 SETTABLEKS                       R1 R0 K10 ["onInvalidSelectionInstance"]
       49 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["EditingItemContext"]
        4 NAMECALL                         R1 R1 K2 ["getSourceItem"]
        6 CALL                             R1 1 1
        7 JUMPIFNOT                        R1 ; [+6]
        8 DUPTABLE                         R4 K4 [{"selectedPart"}]
        9 SETTABLEKS                       R1 R4 K3 ["selectedPart"]
       11 NAMECALL                         R2 R0 K5 ["setState"]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R4 R2 K2 ["selectedPart"]
        6 JUMPIFNOT                        R4 ; [+5]
        7 GETTABLEKS                       R3 R2 K2 ["selectedPart"]
        9 GETTABLEKS                       R3 R3 K3 ["Name"]
       11 JUMPIF                           R3 ; [+1]
       12 LOADK                            R3 K4 [""]
       13 GETTABLEKS                       R4 R2 K5 ["invalidSelected"]
       15 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 GETTABLEKS                       R6 R1 K6 ["Stylizer"]
       21 GETTABLEKS                       R7 R1 K7 ["Localization"]
       23 JUMPIFNOT                        R4 ; [+6]
       24 LOADK                            R10 K8 ["Select"]
       25 LOADK                            R11 K9 ["Invalid"]
       26 NAMECALL                         R8 R7 K10 ["getText"]
       28 CALL                             R8 3 1
       29 JUMPIF                           R8 ; [+1]
       30 MOVE                             R8 R3
       31 GETUPVAL                         R9 0
       32 GETTABLEKS                       R9 R9 K11 ["createElement"]
       34 LOADK                            R10 K12 ["Frame"]
       35 DUPTABLE                         R11 K16 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
       36 GETIMPORT                        R12 K19 [UDim2.new]
       38 LOADN                            R13 1
       39 LOADN                            R14 0
       40 LOADN                            R15 1
       41 LOADN                            R16 0
       42 CALL                             R12 4 1
       43 SETTABLEKS                       R12 R11 K13 ["Size"]
       45 GETTABLEKS                       R12 R6 K20 ["BackgroundColor"]
       47 SETTABLEKS                       R12 R11 K14 ["BackgroundColor3"]
       49 LOADN                            R12 0
       50 SETTABLEKS                       R12 R11 K15 ["BorderSizePixel"]
       52 DUPTABLE                         R12 K23 [{"SelectFrame", "InstanceSelector"}]
       53 GETUPVAL                         R13 0
       54 GETTABLEKS                       R13 R13 K11 ["createElement"]
       56 GETUPVAL                         R14 1
       57 DUPTABLE                         R15 K27 [{"PartName", "ButtonEnabled", "OnConfirmSelection"}]
       58 SETTABLEKS                       R8 R15 K24 ["PartName"]
       60 SETTABLEKS                       R5 R15 K25 ["ButtonEnabled"]
       62 GETTABLEKS                       R16 R0 K28 ["onConfirmSelection"]
       64 SETTABLEKS                       R16 R15 K26 ["OnConfirmSelection"]
       66 CALL                             R13 2 1
       67 SETTABLEKS                       R13 R12 K21 ["SelectFrame"]
       69 GETUPVAL                         R13 0
       70 GETTABLEKS                       R13 R13 K11 ["createElement"]
       72 GETUPVAL                         R14 2
       73 DUPTABLE                         R15 K32 [{"IsSelectedInstanceValid", "OnValidSelection", "OnInvalidSelection"}]
       74 GETTABLEKS                       R16 R0 K33 ["isSelectedInstanceValid"]
       76 SETTABLEKS                       R16 R15 K29 ["IsSelectedInstanceValid"]
       78 GETTABLEKS                       R16 R0 K34 ["onSelectValidInstance"]
       80 SETTABLEKS                       R16 R15 K30 ["OnValidSelection"]
       82 GETTABLEKS                       R16 R0 K35 ["onInvalidSelectionInstance"]
       84 SETTABLEKS                       R16 R15 K31 ["OnInvalidSelection"]
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K22 ["InstanceSelector"]
       89 CALL                             R9 3 -1
       90 RETURN                           R9 -1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["ancestryChangedHandle"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["ancestryChangedHandle"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["ancestryChangedHandle"]
       11 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R1 K2 [{"SetToolMode", "AddUserAddedAssetForPreview"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetToolMode"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["AddUserAddedAssetForPreview"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["AvatarToolsShared"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K9 ["Util"]
       34 GETTABLEKS                       R4 R4 K10 ["AccessoryAndBodyToolShared"]
       36 GETTABLEKS                       R5 R4 K11 ["ItemCharacteristics"]
       38 GETTABLEKS                       R6 R4 K12 ["PreviewConstants"]
       40 GETTABLEKS                       R7 R3 K13 ["Components"]
       42 GETTABLEKS                       R8 R7 K14 ["ConfirmDialog"]
       44 GETTABLEKS                       R9 R7 K15 ["ConfirmCancelDialog"]
       46 GETTABLEKS                       R10 R7 K16 ["InstanceSelector"]
       48 GETIMPORT                        R11 K4 [require]
       50 GETTABLEKS                       R12 R0 K5 ["Packages"]
       52 GETTABLEKS                       R12 R12 K17 ["Framework"]
       54 CALL                             R11 1 1
       55 GETTABLEKS                       R12 R11 K18 ["ContextServices"]
       57 GETTABLEKS                       R13 R12 K19 ["withContext"]
       59 GETTABLEKS                       R14 R3 K20 ["Contexts"]
       61 GETTABLEKS                       R14 R14 K21 ["EditingItemContext"]
       63 GETIMPORT                        R15 K4 [require]
       65 GETTABLEKS                       R16 R0 K22 ["Src"]
       67 GETTABLEKS                       R16 R16 K23 ["Actions"]
       69 GETTABLEKS                       R16 R16 K24 ["SetToolMode"]
       71 CALL                             R15 1 1
       72 GETIMPORT                        R16 K4 [require]
       74 GETTABLEKS                       R17 R0 K22 ["Src"]
       76 GETTABLEKS                       R17 R17 K25 ["Thunks"]
       78 GETTABLEKS                       R17 R17 K26 ["AddUserAddedAssetForPreview"]
       80 CALL                             R16 1 1
       81 GETIMPORT                        R17 K4 [require]
       83 GETTABLEKS                       R18 R0 K22 ["Src"]
       85 GETTABLEKS                       R18 R18 K13 ["Components"]
       87 GETTABLEKS                       R18 R18 K27 ["SelectFrame"]
       89 CALL                             R17 1 1
       90 GETIMPORT                        R18 K4 [require]
       92 GETTABLEKS                       R19 R0 K22 ["Src"]
       94 GETTABLEKS                       R19 R19 K9 ["Util"]
       96 GETTABLEKS                       R19 R19 K28 ["ShowDialog"]
       98 CALL                             R18 1 1
       99 GETIMPORT                        R19 K4 [require]
      101 GETTABLEKS                       R20 R0 K22 ["Src"]
      103 GETTABLEKS                       R20 R20 K9 ["Util"]
      105 GETTABLEKS                       R20 R20 K29 ["Constants"]
      107 CALL                             R19 1 1
      108 GETTABLEKS                       R20 R1 K30 ["PureComponent"]
      110 LOADK                            R22 K31 ["SelectItemScreen"]
      111 NAMECALL                         R20 R20 K32 ["extend"]
      113 CALL                             R20 2 1
      114 GETTABLEKS                       R21 R11 K9 ["Util"]
      116 GETTABLEKS                       R22 R21 K33 ["Typecheck"]
      118 GETTABLEKS                       R23 R22 K34 ["wrap"]
      120 MOVE                             R24 R20
      121 GETIMPORT                        R25 K1 [script]
      123 CALL                             R23 2 0
      124 DUPCLOSURE                       R23 K35 [PROTO_10]
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R18
      129 CAPTURE                          VAL R9
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R8
      132 SETTABLEKS                       R23 R20 K36 ["init"]
      134 DUPCLOSURE                       R23 K37 [PROTO_11]
      135 SETTABLEKS                       R23 R20 K38 ["didMount"]
      137 DUPCLOSURE                       R23 K39 [PROTO_12]
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R17
      140 CAPTURE                          VAL R10
      141 SETTABLEKS                       R23 R20 K40 ["render"]
      143 DUPCLOSURE                       R23 K41 [PROTO_13]
      144 SETTABLEKS                       R23 R20 K42 ["willUnmount"]
      146 MOVE                             R23 R13
      147 DUPTABLE                         R24 K46 [{"Plugin", "Stylizer", "Localization", "EditingItemContext"}]
      148 GETTABLEKS                       R25 R12 K43 ["Plugin"]
      150 SETTABLEKS                       R25 R24 K43 ["Plugin"]
      152 GETTABLEKS                       R25 R12 K44 ["Stylizer"]
      154 SETTABLEKS                       R25 R24 K44 ["Stylizer"]
      156 GETTABLEKS                       R25 R12 K45 ["Localization"]
      158 SETTABLEKS                       R25 R24 K45 ["Localization"]
      160 SETTABLEKS                       R14 R24 K21 ["EditingItemContext"]
      162 CALL                             R23 1 1
      163 MOVE                             R24 R20
      164 CALL                             R23 1 1
      165 MOVE                             R20 R23
      166 DUPCLOSURE                       R23 K47 [PROTO_16]
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R16
      169 GETTABLEKS                       R24 R2 K48 ["connect"]
      171 LOADNIL                          R25
      172 MOVE                             R26 R23
      173 CALL                             R24 2 1
      174 MOVE                             R25 R20
      175 CALL                             R24 1 -1
      176 RETURN                           R24 -1
