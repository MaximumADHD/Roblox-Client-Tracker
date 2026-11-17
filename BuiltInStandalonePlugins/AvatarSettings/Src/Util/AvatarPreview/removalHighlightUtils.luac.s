PROTO_0:
        0 LOADK                            R3 K0 ["Handle"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+2]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 LOADK                            R5 K2 ["WrapLayer"]
        8 NAMECALL                         R3 R1 K3 ["FindFirstChildWhichIsA"]
       10 CALL                             R3 2 1
       11 JUMPIFNOTEQKNIL                  R3 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["HIGHLIGHT_TAG"]
        4 NAMECALL                         R1 R1 K1 ["GetTagged"]
        6 CALL                             R1 2 3
        7 FORGPREP                         R1
        8 MOVE                             R8 R0
        9 NAMECALL                         R6 R5 K2 ["IsDescendantOf"]
       11 CALL                             R6 2 1
       12 JUMPIFNOT                        R6 ; [+3]
       13 NAMECALL                         R6 R5 K3 ["Destroy"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-9]
       18 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["Handle"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+5]
        5 LOADK                            R4 K2 ["BasePart"]
        6 NAMECALL                         R2 R1 K3 ["IsA"]
        8 CALL                             R2 2 1
        9 JUMPIF                           R2 ; [+1]
       10 RETURN                           R0 0
       11 NAMECALL                         R2 R0 K4 ["GetChildren"]
       13 CALL                             R2 1 3
       14 FORGPREP                         R2
       15 LOADK                            R9 K5 ["Highlight"]
       16 NAMECALL                         R7 R6 K3 ["IsA"]
       18 CALL                             R7 2 1
       19 JUMPIFNOT                        R7 ; [+10]
       20 GETUPVAL                         R7 0
       21 MOVE                             R9 R6
       22 GETUPVAL                         R10 1
       23 GETTABLEKS                       R10 R10 K6 ["HIGHLIGHT_TAG"]
       25 NAMECALL                         R7 R7 K7 ["HasTag"]
       27 CALL                             R7 3 1
       28 JUMPIFNOT                        R7 ; [+1]
       29 RETURN                           R0 0
       30 FORGLOOP                         R2 2 ; [-16]
       32 GETIMPORT                        R2 K10 [Instance.new]
       34 LOADK                            R3 K5 ["Highlight"]
       35 CALL                             R2 1 1
       36 GETUPVAL                         R3 2
       37 GETTABLEKS                       R3 R3 K11 ["HighlightName"]
       39 SETTABLEKS                       R3 R2 K12 ["Name"]
       41 GETUPVAL                         R3 2
       42 GETTABLEKS                       R3 R3 K13 ["FillColor"]
       44 SETTABLEKS                       R3 R2 K13 ["FillColor"]
       46 GETUPVAL                         R3 2
       47 GETTABLEKS                       R3 R3 K14 ["OutlineColor"]
       49 SETTABLEKS                       R3 R2 K14 ["OutlineColor"]
       51 GETUPVAL                         R3 2
       52 GETTABLEKS                       R3 R3 K15 ["FillTransparency"]
       54 SETTABLEKS                       R3 R2 K15 ["FillTransparency"]
       56 GETUPVAL                         R3 2
       57 GETTABLEKS                       R3 R3 K16 ["OutlineTransparency"]
       59 SETTABLEKS                       R3 R2 K16 ["OutlineTransparency"]
       61 SETTABLEKS                       R1 R2 K17 ["Adornee"]
       63 GETUPVAL                         R3 0
       64 MOVE                             R5 R2
       65 GETUPVAL                         R6 1
       66 GETTABLEKS                       R6 R6 K6 ["HIGHLIGHT_TAG"]
       68 NAMECALL                         R3 R3 K18 ["AddTag"]
       70 CALL                             R3 3 0
       71 SETTABLEKS                       R0 R2 K19 ["Parent"]
       73 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 MOVE                             R8 R5
        6 GETUPVAL                         R9 1
        7 GETTABLEKS                       R9 R9 K1 ["HIGHLIGHT_TAG"]
        9 NAMECALL                         R6 R6 K2 ["HasTag"]
       11 CALL                             R6 3 1
       12 JUMPIFNOT                        R6 ; [+3]
       13 NAMECALL                         R6 R5 K3 ["Destroy"]
       15 CALL                             R6 1 0
       16 FORGLOOP                         R1 2 ; [-13]
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["WillLimitLayeredAccessoryAsync"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+45]
        5 GETUPVAL                         R1 1
        6 GETIMPORT                        R3 K1 [game]
        8 NAMECALL                         R1 R1 K2 ["IsDescendantOf"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+38]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K3 ["Parent"]
       15 GETUPVAL                         R2 1
       16 JUMPIFNOTEQ                      R1 R2 ; [+33]
       18 GETUPVAL                         R1 3
       19 GETTABLEKS                       R1 R1 K3 ["Parent"]
       21 GETUPVAL                         R2 2
       22 JUMPIFNOTEQ                      R1 R2 ; [+27]
       24 GETUPVAL                         R1 4
       25 GETTABLEKS                       R1 R1 K3 ["Parent"]
       27 GETUPVAL                         R2 2
       28 JUMPIFNOTEQ                      R1 R2 ; [+21]
       30 GETUPVAL                         R1 5
       31 GETTABLEKS                       R1 R1 K4 ["avatarClothingRules"]
       33 CALL                             R1 0 1
       34 GETUPVAL                         R2 6
       35 JUMPIFNOTEQ                      R1 R2 ; [+14]
       37 GETUPVAL                         R1 6
       38 GETTABLEKS                       R1 R1 K5 ["ClothingMode"]
       40 GETIMPORT                        R2 K9 [Enum.AvatarSettingsClothingMode.CustomLimit]
       42 JUMPIFNOTEQ                      R1 R2 ; [+7]
       44 GETUPVAL                         R1 6
       45 GETTABLEKS                       R1 R1 K10 ["LimitBounds"]
       47 GETUPVAL                         R2 7
       48 JUMPIFEQ                         R1 R2 ; [+2]
       50 RETURN                           R0 0
       51 JUMPIFNOT                        R0 ; [+6]
       52 GETUPVAL                         R1 8
       53 GETTABLEKS                       R1 R1 K11 ["highlightAccessory"]
       55 GETUPVAL                         R2 3
       56 CALL                             R1 1 0
       57 RETURN                           R0 0
       58 GETUPVAL                         R1 8
       59 GETTABLEKS                       R1 R1 K12 ["removeAccessoryHighlight"]
       61 GETUPVAL                         R2 3
       62 CALL                             R1 1 0
       63 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["avatarClothingRules"]
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETTABLEKS                       R3 R2 K1 ["ClothingMode"]
        7 GETIMPORT                        R4 K5 [Enum.AvatarSettingsClothingMode.CustomLimit]
        9 JUMPIFEQ                         R3 R4 ; [+7]
       11 GETUPVAL                         R3 1
       12 GETTABLEKS                       R3 R3 K6 ["removeExistingHighlights"]
       14 MOVE                             R4 R0
       15 CALL                             R3 1 0
       16 RETURN                           R0 0
       17 NAMECALL                         R3 R0 K7 ["GetChildren"]
       19 CALL                             R3 1 3
       20 FORGPREP                         R3
       21 LOADK                            R10 K8 ["Model"]
       22 NAMECALL                         R8 R7 K9 ["IsA"]
       24 CALL                             R8 2 1
       25 JUMPIFNOT                        R8 ; [+45]
       26 LOADK                            R10 K10 ["Humanoid"]
       27 NAMECALL                         R8 R7 K11 ["FindFirstChildWhichIsA"]
       29 CALL                             R8 2 1
       30 JUMPIFNOT                        R8 ; [+40]
       31 NAMECALL                         R9 R7 K7 ["GetChildren"]
       33 CALL                             R9 1 3
       34 FORGPREP                         R9
       35 LOADK                            R16 K12 ["Accessory"]
       36 NAMECALL                         R14 R13 K9 ["IsA"]
       38 CALL                             R14 2 1
       39 JUMPIFNOT                        R14 ; [+29]
       40 GETUPVAL                         R14 1
       41 GETTABLEKS                       R14 R14 K13 ["isLayeredAccessory"]
       43 MOVE                             R15 R13
       44 CALL                             R14 1 1
       45 JUMPIFNOT                        R14 ; [+23]
       46 GETTABLEKS                       R14 R2 K14 ["LimitBounds"]
       48 GETUPVAL                         R15 2
       49 GETTABLEKS                       R15 R15 K15 ["request"]
       51 MOVE                             R16 R8
       52 MOVE                             R17 R13
       53 MOVE                             R18 R14
       54 NEWCLOSURE                       R19 P0
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R13
       58 NEWCLOSURE                       R20 P1
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R13
       63 CAPTURE                          VAL R8
       64 CAPTURE                          UPVAL U0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R14
       67 CAPTURE                          UPVAL U1
       68 CALL                             R15 5 0
       69 FORGLOOP                         R9 2 ; [-35]
       71 FORGLOOP                         R3 2 ; [-51]
       73 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 NAMECALL                         R0 R0 K0 ["willRemoveAccessory"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["avatarAccessoryRules"]
        3 CALL                             R1 0 1
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETTABLEKS                       R2 R1 K1 ["AccessoryMode"]
        7 GETIMPORT                        R3 K5 [Enum.AvatarSettingsAccessoryMode.PlayerChoice]
        9 JUMPIFEQ                         R2 R3 ; [+7]
       11 GETTABLEKS                       R2 R1 K6 ["LimitMethod"]
       13 GETIMPORT                        R3 K9 [Enum.AvatarSettingsAccessoryLimitMethod.Remove]
       15 JUMPIFEQ                         R2 R3 ; [+7]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K10 ["removeExistingHighlights"]
       20 MOVE                             R3 R0
       21 CALL                             R2 1 0
       22 RETURN                           R0 0
       23 NAMECALL                         R2 R0 K11 ["GetChildren"]
       25 CALL                             R2 1 3
       26 FORGPREP                         R2
       27 LOADK                            R9 K12 ["Model"]
       28 NAMECALL                         R7 R6 K13 ["IsA"]
       30 CALL                             R7 2 1
       31 JUMPIFNOT                        R7 ; [+44]
       32 LOADK                            R9 K14 ["Humanoid"]
       33 NAMECALL                         R7 R6 K15 ["FindFirstChildWhichIsA"]
       35 CALL                             R7 2 1
       36 JUMPIFNOT                        R7 ; [+39]
       37 NAMECALL                         R8 R6 K11 ["GetChildren"]
       39 CALL                             R8 1 3
       40 FORGPREP                         R8
       41 LOADK                            R15 K16 ["Accessory"]
       42 NAMECALL                         R13 R12 K13 ["IsA"]
       44 CALL                             R13 2 1
       45 JUMPIFNOT                        R13 ; [+28]
       46 GETUPVAL                         R13 1
       47 GETTABLEKS                       R13 R13 K17 ["isLayeredAccessory"]
       49 MOVE                             R14 R12
       50 CALL                             R13 1 1
       51 JUMPIF                           R13 ; [+22]
       52 NEWCLOSURE                       R14 P0
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R12
       56 FASTPCALL                        pcall 1 ; [+2]
       57 GETIMPORT                        R13 K19 [pcall]
       59 CALL                             R13 1 2
       60 JUMPIFNOT                        R13 ; [+8]
       61 JUMPIFNOTEQKB                    R14 TRUE ; [+7]
       63 GETUPVAL                         R15 1
       64 GETTABLEKS                       R15 R15 K20 ["highlightAccessory"]
       66 MOVE                             R16 R12
       67 CALL                             R15 1 0
       68 JUMP                             ; [+5]
       69 GETUPVAL                         R15 1
       70 GETTABLEKS                       R15 R15 K21 ["removeAccessoryHighlight"]
       72 MOVE                             R16 R12
       73 CALL                             R15 1 0
       74 FORGLOOP                         R8 2 ; [-34]
       76 FORGLOOP                         R2 2 ; [-50]
       78 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPreview"]
       15 GETTABLEKS                       R2 R2 K9 ["removalHighlightResults"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K11 [game]
       20 LOADK                            R4 K12 ["CollectionService"]
       21 NAMECALL                         R2 R2 K13 ["GetService"]
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K5 [require]
       26 GETTABLEKS                       R4 R0 K6 ["Src"]
       28 GETTABLEKS                       R4 R4 K7 ["Util"]
       30 GETTABLEKS                       R4 R4 K8 ["AvatarPreview"]
       32 GETTABLEKS                       R4 R4 K14 ["AvatarPreviewConstants"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K5 [require]
       37 GETTABLEKS                       R5 R0 K6 ["Src"]
       39 GETTABLEKS                       R5 R5 K7 ["Util"]
       41 GETTABLEKS                       R5 R5 K15 ["BridgingFiles"]
       43 GETTABLEKS                       R5 R5 K16 ["AssetDmFiles"]
       45 GETTABLEKS                       R5 R5 K17 ["assetDmUtils"]
       47 CALL                             R4 1 1
       48 GETTABLEKS                       R5 R3 K18 ["HighlightProperties"]
       50 NEWTABLE                         R6 8 0
       52 LOADK                            R7 K19 ["AvatarPreviewRemovalHighlight"]
       53 SETTABLEKS                       R7 R6 K20 ["HIGHLIGHT_TAG"]
       55 DUPCLOSURE                       R7 K21 [PROTO_0]
       56 SETTABLEKS                       R7 R6 K22 ["isLayeredAccessory"]
       58 DUPCLOSURE                       R7 K23 [PROTO_1]
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R6
       61 SETTABLEKS                       R7 R6 K24 ["removeExistingHighlights"]
       63 DUPCLOSURE                       R7 K25 [PROTO_2]
       64 CAPTURE                          VAL R2
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R5
       67 SETTABLEKS                       R7 R6 K26 ["highlightAccessory"]
       69 DUPCLOSURE                       R7 K27 [PROTO_3]
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R6
       72 SETTABLEKS                       R7 R6 K28 ["removeAccessoryHighlight"]
       74 DUPCLOSURE                       R7 K29 [PROTO_6]
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R1
       78 SETTABLEKS                       R7 R6 K30 ["highlightOverLimitLayeredClothing"]
       80 DUPCLOSURE                       R7 K31 [PROTO_8]
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R6
       83 SETTABLEKS                       R7 R6 K32 ["highlightRemovableRigidAccessories"]
       85 RETURN                           R6 1
