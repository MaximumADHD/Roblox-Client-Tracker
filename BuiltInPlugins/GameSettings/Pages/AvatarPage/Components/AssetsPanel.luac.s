PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["frameRef"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["frameRef"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 GETIMPORT                        R2 K4 [UDim2.new]
        7 LOADN                            R3 1
        8 LOADN                            R4 0
        9 LOADN                            R5 0
       10 GETTABLEKS                       R6 R0 K5 ["AbsoluteContentSize"]
       12 GETTABLEKS                       R6 R6 K6 ["y"]
       14 CALL                             R2 4 1
       15 SETTABLEKS                       R2 R1 K7 ["Size"]
       17 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["LayoutOrder"]
        5 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 1 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["createElement"]
        9 LOADK                            R4 K2 ["UIListLayout"]
       10 NEWTABLE                         R5 8 0
       12 GETIMPORT                        R6 K6 [Enum.SortOrder.LayoutOrder]
       14 SETTABLEKS                       R6 R5 K4 ["SortOrder"]
       16 GETIMPORT                        R6 K9 [Enum.HorizontalAlignment.Center]
       18 SETTABLEKS                       R6 R5 K7 ["HorizontalAlignment"]
       20 GETIMPORT                        R6 K12 [Enum.FillDirection.Vertical]
       22 SETTABLEKS                       R6 R5 K10 ["FillDirection"]
       24 GETUPVAL                         R6 2
       25 GETTABLEKS                       R6 R6 K13 ["VirticalPadding"]
       27 SETTABLEKS                       R6 R5 K14 ["Padding"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K15 ["Change"]
       32 GETTABLEKS                       R6 R6 K16 ["AbsoluteContentSize"]
       34 NEWCLOSURE                       R7 P0
       35 CAPTURE                          VAL R0
       36 SETTABLE                         R7 R5 R6
       37 CALL                             R3 2 1
       38 SETTABLEKS                       R3 R2 K17 ["UIListLayoutVertical"]
       40 GETTABLEKS                       R3 R0 K18 ["props"]
       42 GETTABLEKS                       R4 R3 K19 ["Localization"]
       44 GETUPVAL                         R5 3
       45 MOVE                             R6 R0
       46 MOVE                             R7 R2
       47 MOVE                             R8 R1
       48 MOVE                             R9 R4
       49 CALL                             R5 4 0
       50 GETUPVAL                         R5 4
       51 MOVE                             R6 R0
       52 MOVE                             R7 R2
       53 MOVE                             R8 R1
       54 MOVE                             R9 R4
       55 CALL                             R5 4 0
       56 GETUPVAL                         R5 1
       57 GETTABLEKS                       R5 R5 K1 ["createElement"]
       59 LOADK                            R6 K20 ["Frame"]
       60 NEWTABLE                         R7 8 0
       62 GETIMPORT                        R8 K22 [UDim2.new]
       64 LOADN                            R9 1
       65 LOADN                            R10 0
       66 LOADN                            R11 1
       67 LOADN                            R12 0
       68 CALL                             R8 4 1
       69 SETTABLEKS                       R8 R7 K23 ["Size"]
       71 LOADN                            R8 0
       72 SETTABLEKS                       R8 R7 K24 ["BorderSizePixel"]
       74 GETUPVAL                         R8 5
       75 GETTABLEKS                       R8 R8 K25 ["getBackgroundColor"]
       77 GETTABLEKS                       R9 R0 K18 ["props"]
       79 CALL                             R8 1 1
       80 SETTABLEKS                       R8 R7 K26 ["BackgroundColor3"]
       82 GETTABLEKS                       R8 R0 K18 ["props"]
       84 GETTABLEKS                       R8 R8 K5 ["LayoutOrder"]
       86 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       88 GETUPVAL                         R8 1
       89 GETTABLEKS                       R8 R8 K27 ["Ref"]
       91 GETTABLEKS                       R9 R0 K28 ["frameRef"]
       93 SETTABLE                         R9 R7 R8
       94 MOVE                             R8 R2
       95 CALL                             R5 3 -1
       96 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["AssetOverrideErrors"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["AssetOverrideErrors"]
       11 GETUPVAL                         R2 1
       12 GETTABLE                         R0 R1 R2
       13 JUMPIF                           R0 ; [+1]
       14 LOADNIL                          R0
       15 MOVE                             R1 R0
       16 JUMPIFNOT                        R1 ; [+8]
       17 GETUPVAL                         R1 2
       18 LOADK                            R3 K2 ["General"]
       19 LOADK                            R5 K3 ["Error"]
       20 MOVE                             R6 R0
       21 CONCAT                           R4 R5 R6
       22 NAMECALL                         R1 R1 K4 ["getText"]
       24 CALL                             R1 3 1
       25 RETURN                           R1 1

PROTO_5:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 [" "]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 2
        6 FASTCALL1                        STRING_LEN R1 ; [+3]
        7 MOVE                             R5 R1
        8 GETIMPORT                        R4 K6 [string.len]
       10 CALL                             R4 1 1
       11 LOADN                            R5 0
       12 JUMPIFNOTLT                      R5 R4 ; [+7]
       14 FASTCALL1                        TONUMBER R0 ; [+3]
       15 MOVE                             R4 R0
       16 GETIMPORT                        R3 K8 [tonumber]
       18 CALL                             R3 1 1
       19 JUMPIF                           R3 ; [+1]
       20 LOADN                            R3 0
       21 GETUPVAL                         R4 0
       22 JUMPIFEQ                         R3 R4 ; [+28]
       24 GETUPVAL                         R4 1
       25 GETTABLEKS                       R4 R4 K9 ["makeCopy"]
       27 GETUPVAL                         R5 2
       28 CALL                             R4 1 1
       29 JUMPIFNOTEQKN                    R3 K10 [0] ; [+2]
       31 LOADB                            R5 0 +1
       32 LOADB                            R5 1
       33 GETUPVAL                         R8 3
       34 MOVE                             R9 R3
       35 NOT                              R10 R5
       36 NAMECALL                         R6 R4 K11 ["setAsset"]
       38 CALL                             R6 4 0
       39 GETUPVAL                         R6 4
       40 GETTABLEKS                       R6 R6 K12 ["props"]
       42 GETTABLEKS                       R6 R6 K13 ["clobberTemplate"]
       44 GETUPVAL                         R7 4
       45 GETTABLEKS                       R7 R7 K12 ["props"]
       47 GETTABLEKS                       R7 R7 K14 ["template"]
       49 MOVE                             R8 R4
       50 CALL                             R6 2 0
       51 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["makeCopy"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R4 2
        6 LOADNIL                          R5
        7 NOT                              R6 R0
        8 NAMECALL                         R2 R1 K1 ["setAsset"]
       10 CALL                             R2 4 0
       11 GETUPVAL                         R2 3
       12 GETTABLEKS                       R2 R2 K2 ["props"]
       14 GETTABLEKS                       R2 R2 K3 ["clobberTemplate"]
       16 GETUPVAL                         R3 3
       17 GETTABLEKS                       R3 R3 K2 ["props"]
       19 GETTABLEKS                       R3 R3 K4 ["template"]
       21 MOVE                             R4 R1
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getStateModelTemplate"]
        3 GETTABLEKS                       R5 R0 K1 ["props"]
        5 CALL                             R4 1 1
        6 MOVE                             R7 R2
        7 NAMECALL                         R5 R4 K2 ["getAsset"]
        9 CALL                             R5 2 2
       10 NAMECALL                         R7 R3 K3 ["getNextOrder"]
       12 CALL                             R7 1 1
       13 GETTABLEKS                       R8 R0 K1 ["props"]
       15 GETTABLEKS                       R9 R8 K4 ["Localization"]
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R10 R10 K5 ["createElement"]
       20 GETUPVAL                         R11 2
       21 DUPTABLE                         R12 K15 [{"InputBoxText", "Title", "LayoutOrder", "PlayerChoice", "IsEnabled", "ErrorMessage", "Mouse", "SetValue", "SetPlayerChoiceValue"}]
       22 FASTCALL1                        TOSTRING R5 ; [+3]
       23 MOVE                             R14 R5
       24 GETIMPORT                        R13 K17 [tostring]
       26 CALL                             R13 1 1
       27 SETTABLEKS                       R13 R12 K6 ["InputBoxText"]
       29 SETTABLEKS                       R1 R12 K7 ["Title"]
       31 SETTABLEKS                       R7 R12 K8 ["LayoutOrder"]
       33 SETTABLEKS                       R6 R12 K9 ["PlayerChoice"]
       35 GETTABLEKS                       R13 R0 K1 ["props"]
       37 GETTABLEKS                       R13 R13 K10 ["IsEnabled"]
       39 SETTABLEKS                       R13 R12 K10 ["IsEnabled"]
       41 GETTABLEKS                       R15 R0 K1 ["props"]
       43 GETTABLEKS                       R15 R15 K18 ["AssetOverrideErrors"]
       45 JUMPIFNOT                        R15 ; [+6]
       46 GETTABLEKS                       R15 R0 K1 ["props"]
       48 GETTABLEKS                       R15 R15 K18 ["AssetOverrideErrors"]
       50 GETTABLE                         R14 R15 R2
       51 JUMPIF                           R14 ; [+1]
       52 LOADNIL                          R14
       53 MOVE                             R13 R14
       54 JUMPIFNOT                        R13 ; [+8]
       55 LOADK                            R17 K19 ["General"]
       56 LOADK                            R19 K20 ["Error"]
       57 MOVE                             R20 R14
       58 CONCAT                           R18 R19 R20
       59 NAMECALL                         R15 R9 K21 ["getText"]
       61 CALL                             R15 3 1
       62 MOVE                             R13 R15
       63 SETTABLEKS                       R13 R12 K11 ["ErrorMessage"]
       65 GETTABLEKS                       R13 R0 K1 ["props"]
       67 GETTABLEKS                       R13 R13 K12 ["Mouse"]
       69 SETTABLEKS                       R13 R12 K12 ["Mouse"]
       71 NEWCLOSURE                       R13 P0
       72 CAPTURE                          VAL R5
       73 CAPTURE                          UPVAL U3
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R0
       77 SETTABLEKS                       R13 R12 K13 ["SetValue"]
       79 NEWCLOSURE                       R13 P1
       80 CAPTURE                          UPVAL U3
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R0
       84 SETTABLEKS                       R13 R12 K14 ["SetPlayerChoiceValue"]
       86 CALL                             R10 2 -1
       87 RETURN                           R10 -1

PROTO_8:
        0 MOVE                             R6 R3
        1 LOADK                            R7 K0 ["Separator"]
        2 CONCAT                           R5 R6 R7
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K1 ["createElement"]
        6 GETUPVAL                         R7 1
        7 DUPTABLE                         R8 K4 [{"ThemeData", "LayoutOrder"}]
        8 GETTABLEKS                       R9 R0 K5 ["props"]
       10 GETTABLEKS                       R9 R9 K2 ["ThemeData"]
       12 SETTABLEKS                       R9 R8 K2 ["ThemeData"]
       14 NAMECALL                         R9 R2 K6 ["getNextOrder"]
       16 CALL                             R9 1 1
       17 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       19 CALL                             R6 2 1
       20 SETTABLE                         R6 R1 R5
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R5 R5 K1 ["createElement"]
       24 GETUPVAL                         R6 2
       25 DUPTABLE                         R7 K10 [{"ThemeData", "LayoutOrder", "IsEnabled", "Text", "IsPlayerChoiceTitleStyle"}]
       26 GETTABLEKS                       R8 R0 K5 ["props"]
       28 GETTABLEKS                       R8 R8 K2 ["ThemeData"]
       30 SETTABLEKS                       R8 R7 K2 ["ThemeData"]
       32 NAMECALL                         R8 R2 K6 ["getNextOrder"]
       34 CALL                             R8 1 1
       35 SETTABLEKS                       R8 R7 K3 ["LayoutOrder"]
       37 GETTABLEKS                       R8 R0 K5 ["props"]
       39 GETTABLEKS                       R8 R8 K7 ["IsEnabled"]
       41 SETTABLEKS                       R8 R7 K7 ["IsEnabled"]
       43 SETTABLEKS                       R3 R7 K8 ["Text"]
       45 LOADB                            R8 1
       46 SETTABLEKS                       R8 R7 K9 ["IsPlayerChoiceTitleStyle"]
       48 CALL                             R5 2 1
       49 SETTABLE                         R5 R1 R3
       50 GETIMPORT                        R5 K12 [pairs]
       52 MOVE                             R6 R4
       53 CALL                             R5 1 3
       54 FORGPREP_NEXT                    R5
       55 GETTABLEN                        R10 R9 1
       56 GETTABLEN                        R11 R9 2
       57 GETTABLEN                        R12 R9 1
       58 GETUPVAL                         R13 3
       59 MOVE                             R14 R0
       60 MOVE                             R15 R10
       61 MOVE                             R16 R11
       62 MOVE                             R17 R2
       63 CALL                             R13 4 1
       64 SETTABLE                         R13 R1 R12
       65 FORGLOOP                         R5 2 ; [-11]
       67 RETURN                           R0 0

PROTO_9:
        0 LOADK                            R6 K0 ["General"]
        1 LOADK                            R7 K1 ["TitleBodyParts"]
        2 NAMECALL                         R4 R3 K2 ["getText"]
        4 CALL                             R4 3 1
        5 NEWTABLE                         R5 0 7
        7 NEWTABLE                         R6 0 2
        9 LOADK                            R9 K0 ["General"]
       10 LOADK                            R10 K3 ["PartFace"]
       11 NAMECALL                         R7 R3 K2 ["getText"]
       13 CALL                             R7 3 1
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K4 ["AssetTypes"]
       17 GETTABLEKS                       R8 R8 K5 ["Face"]
       19 SETLIST                          R6 R7 2 [1]
       21 NEWTABLE                         R7 0 2
       23 LOADK                            R10 K0 ["General"]
       24 LOADK                            R11 K6 ["PartHead"]
       25 NAMECALL                         R8 R3 K2 ["getText"]
       27 CALL                             R8 3 1
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K4 ["AssetTypes"]
       31 GETTABLEKS                       R9 R9 K7 ["Head"]
       33 SETLIST                          R7 R8 2 [1]
       35 NEWTABLE                         R8 0 2
       37 LOADK                            R11 K0 ["General"]
       38 LOADK                            R12 K8 ["PartTorso"]
       39 NAMECALL                         R9 R3 K2 ["getText"]
       41 CALL                             R9 3 1
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R10 R10 K4 ["AssetTypes"]
       45 GETTABLEKS                       R10 R10 K9 ["Torso"]
       47 SETLIST                          R8 R9 2 [1]
       49 NEWTABLE                         R9 0 2
       51 LOADK                            R12 K0 ["General"]
       52 LOADK                            R13 K10 ["PartLeftArm"]
       53 NAMECALL                         R10 R3 K2 ["getText"]
       55 CALL                             R10 3 1
       56 GETUPVAL                         R11 0
       57 GETTABLEKS                       R11 R11 K4 ["AssetTypes"]
       59 GETTABLEKS                       R11 R11 K11 ["LeftArm"]
       61 SETLIST                          R9 R10 2 [1]
       63 NEWTABLE                         R10 0 2
       65 LOADK                            R13 K0 ["General"]
       66 LOADK                            R14 K12 ["PartRightArm"]
       67 NAMECALL                         R11 R3 K2 ["getText"]
       69 CALL                             R11 3 1
       70 GETUPVAL                         R12 0
       71 GETTABLEKS                       R12 R12 K4 ["AssetTypes"]
       73 GETTABLEKS                       R12 R12 K13 ["RightArm"]
       75 SETLIST                          R10 R11 2 [1]
       77 NEWTABLE                         R11 0 2
       79 LOADK                            R14 K0 ["General"]
       80 LOADK                            R15 K14 ["PartLeftLeg"]
       81 NAMECALL                         R12 R3 K2 ["getText"]
       83 CALL                             R12 3 1
       84 GETUPVAL                         R13 0
       85 GETTABLEKS                       R13 R13 K4 ["AssetTypes"]
       87 GETTABLEKS                       R13 R13 K15 ["LeftLeg"]
       89 SETLIST                          R11 R12 2 [1]
       91 NEWTABLE                         R12 0 2
       93 LOADK                            R15 K0 ["General"]
       94 LOADK                            R16 K16 ["PartRightLeg"]
       95 NAMECALL                         R13 R3 K2 ["getText"]
       97 CALL                             R13 3 1
       98 GETUPVAL                         R14 0
       99 GETTABLEKS                       R14 R14 K4 ["AssetTypes"]
      101 GETTABLEKS                       R14 R14 K17 ["RightLeg"]
      103 SETLIST                          R12 R13 2 [1]
      105 SETLIST                          R5 R6 7 [1]
      107 GETUPVAL                         R6 1
      108 MOVE                             R7 R0
      109 MOVE                             R8 R1
      110 MOVE                             R9 R2
      111 MOVE                             R10 R4
      112 MOVE                             R11 R5
      113 CALL                             R6 5 0
      114 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R6 K0 ["General"]
        1 LOADK                            R7 K1 ["TitleClothing"]
        2 NAMECALL                         R4 R3 K2 ["getText"]
        4 CALL                             R4 3 1
        5 NEWTABLE                         R5 0 3
        7 NEWTABLE                         R6 0 2
        9 LOADK                            R9 K0 ["General"]
       10 LOADK                            R10 K3 ["ClothingTShirt"]
       11 NAMECALL                         R7 R3 K2 ["getText"]
       13 CALL                             R7 3 1
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K4 ["AssetTypes"]
       17 GETTABLEKS                       R8 R8 K5 ["ShirtGraphic"]
       19 SETLIST                          R6 R7 2 [1]
       21 NEWTABLE                         R7 0 2
       23 LOADK                            R10 K0 ["General"]
       24 LOADK                            R11 K6 ["ClothingShirt"]
       25 NAMECALL                         R8 R3 K2 ["getText"]
       27 CALL                             R8 3 1
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K4 ["AssetTypes"]
       31 GETTABLEKS                       R9 R9 K7 ["Shirt"]
       33 SETLIST                          R7 R8 2 [1]
       35 NEWTABLE                         R8 0 2
       37 LOADK                            R11 K0 ["General"]
       38 LOADK                            R12 K8 ["ClothingPants"]
       39 NAMECALL                         R9 R3 K2 ["getText"]
       41 CALL                             R9 3 1
       42 GETUPVAL                         R10 0
       43 GETTABLEKS                       R10 R10 K4 ["AssetTypes"]
       45 GETTABLEKS                       R10 R10 K9 ["Pants"]
       47 SETLIST                          R8 R9 2 [1]
       49 SETLIST                          R5 R6 3 [1]
       51 GETUPVAL                         R6 1
       52 MOVE                             R7 R0
       53 MOVE                             R8 R1
       54 MOVE                             R9 R2
       55 MOVE                             R10 R4
       56 MOVE                             R11 R5
       57 CALL                             R6 5 0
       58 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K1 [script]
        9 GETTABLEKS                       R1 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R1 K2 ["Parent"]
       13 GETTABLEKS                       R1 R1 K2 ["Parent"]
       15 GETTABLEKS                       R1 R1 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R3 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R3 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R4 K7 ["Framework"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       33 GETTABLEKS                       R4 R3 K9 ["withContext"]
       35 GETIMPORT                        R5 K4 [require]
       37 GETTABLEKS                       R6 R1 K5 ["Packages"]
       39 GETTABLEKS                       R6 R6 K7 ["Framework"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K10 ["Util"]
       44 GETTABLEKS                       R7 R6 K11 ["LayoutOrderIterator"]
       46 GETIMPORT                        R8 K4 [require]
       48 GETTABLEKS                       R9 R0 K10 ["Util"]
       50 GETTABLEKS                       R9 R9 K12 ["ConstantAvatar"]
       52 CALL                             R8 1 1
       53 GETIMPORT                        R9 K4 [require]
       55 GETTABLEKS                       R10 R0 K10 ["Util"]
       57 GETTABLEKS                       R10 R10 K13 ["ConstantLayout"]
       59 CALL                             R9 1 1
       60 GETIMPORT                        R10 K4 [require]
       62 GETTABLEKS                       R11 R0 K10 ["Util"]
       64 GETTABLEKS                       R11 R11 K14 ["StateModelTemplate"]
       66 CALL                             R10 1 1
       67 GETIMPORT                        R11 K4 [require]
       69 GETTABLEKS                       R12 R0 K10 ["Util"]
       71 GETTABLEKS                       R12 R12 K15 ["StateInterfaceTemplates"]
       73 CALL                             R11 1 1
       74 GETIMPORT                        R12 K4 [require]
       76 GETTABLEKS                       R13 R0 K10 ["Util"]
       78 GETTABLEKS                       R13 R13 K16 ["StateInterfaceTheme"]
       80 CALL                             R12 1 1
       81 GETIMPORT                        R13 K4 [require]
       83 GETTABLEKS                       R14 R0 K17 ["Components"]
       85 GETTABLEKS                       R14 R14 K18 ["AssetInput"]
       87 CALL                             R13 1 1
       88 GETIMPORT                        R14 K4 [require]
       90 GETTABLEKS                       R15 R0 K17 ["Components"]
       92 GETTABLEKS                       R15 R15 K19 ["DividerRow"]
       94 CALL                             R14 1 1
       95 GETIMPORT                        R15 K4 [require]
       97 GETTABLEKS                       R16 R0 K17 ["Components"]
       99 GETTABLEKS                       R16 R16 K20 ["TitleBar"]
      101 CALL                             R15 1 1
      102 GETTABLEKS                       R16 R2 K21 ["Component"]
      104 LOADK                            R18 K22 ["ComponentAssetsPanel"]
      105 NAMECALL                         R16 R16 K23 ["extend"]
      107 CALL                             R16 2 1
      108 LOADNIL                          R17
      109 LOADNIL                          R18
      110 DUPCLOSURE                       R19 K24 [PROTO_0]
      111 CAPTURE                          VAL R2
      112 SETTABLEKS                       R19 R16 K25 ["init"]
      114 NEWCLOSURE                       R19 P1
      115 CAPTURE                          VAL R7
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R9
      118 CAPTURE                          REF R17
      119 CAPTURE                          REF R18
      120 CAPTURE                          VAL R12
      121 SETTABLEKS                       R19 R16 K26 ["render"]
      123 MOVE                             R19 R4
      124 DUPTABLE                         R20 K29 [{"Localization", "Mouse"}]
      125 GETTABLEKS                       R21 R3 K27 ["Localization"]
      127 SETTABLEKS                       R21 R20 K27 ["Localization"]
      129 GETTABLEKS                       R21 R3 K28 ["Mouse"]
      131 SETTABLEKS                       R21 R20 K28 ["Mouse"]
      133 CALL                             R19 1 1
      134 MOVE                             R20 R16
      135 CALL                             R19 1 1
      136 MOVE                             R16 R19
      137 DUPCLOSURE                       R19 K30 [PROTO_7]
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R13
      141 CAPTURE                          VAL R10
      142 DUPCLOSURE                       R20 K31 [PROTO_8]
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R14
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R19
      147 DUPCLOSURE                       R17 K32 [PROTO_9]
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R20
      150 DUPCLOSURE                       R18 K33 [PROTO_10]
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R20
      153 CLOSEUPVALS                      R17
      154 RETURN                           R16 1
