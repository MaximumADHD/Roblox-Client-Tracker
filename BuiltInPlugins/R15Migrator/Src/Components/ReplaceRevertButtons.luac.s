PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["revertAnimation"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["ScriptConversionContext"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["convertAnimation"]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K2 ["ScriptConversionContext"]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["Analytics"]
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["selection"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["new"]
       11 CALL                             R5 0 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K5 ["createElement"]
       15 GETUPVAL                         R7 2
       16 DUPTABLE                         R8 K11 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "AutomaticSize"}]
       17 GETIMPORT                        R9 K15 [Enum.FillDirection.Horizontal]
       19 SETTABLEKS                       R9 R8 K6 ["Layout"]
       21 GETIMPORT                        R9 K17 [Enum.HorizontalAlignment.Right]
       23 SETTABLEKS                       R9 R8 K7 ["HorizontalAlignment"]
       25 GETIMPORT                        R9 K19 [Enum.VerticalAlignment.Top]
       27 SETTABLEKS                       R9 R8 K8 ["VerticalAlignment"]
       29 GETTABLEKS                       R9 R3 K9 ["Spacing"]
       31 SETTABLEKS                       R9 R8 K9 ["Spacing"]
       33 GETIMPORT                        R9 K21 [Enum.AutomaticSize.XY]
       35 SETTABLEKS                       R9 R8 K10 ["AutomaticSize"]
       37 DUPTABLE                         R9 K24 [{"Revert", "Replace"}]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R10 R10 K5 ["createElement"]
       41 GETUPVAL                         R11 3
       42 DUPTABLE                         R12 K30 [{"Style", "Text", "Size", "OnClick", "LayoutOrder"}]
       43 LOADK                            R13 K31 ["Round"]
       44 SETTABLEKS                       R13 R12 K25 ["Style"]
       46 LOADK                            R15 K32 ["AnimationConversion"]
       47 LOADK                            R16 K22 ["Revert"]
       48 NAMECALL                         R13 R4 K33 ["getText"]
       50 CALL                             R13 3 1
       51 SETTABLEKS                       R13 R12 K26 ["Text"]
       53 GETTABLEKS                       R13 R3 K34 ["ButtonSize"]
       55 SETTABLEKS                       R13 R12 K27 ["Size"]
       57 NEWCLOSURE                       R13 P0
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R1
       60 SETTABLEKS                       R13 R12 K28 ["OnClick"]
       62 NAMECALL                         R13 R5 K35 ["getNextOrder"]
       64 CALL                             R13 1 1
       65 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K22 ["Revert"]
       70 GETUPVAL                         R10 1
       71 GETTABLEKS                       R10 R10 K5 ["createElement"]
       73 GETUPVAL                         R11 3
       74 DUPTABLE                         R12 K30 [{"Style", "Text", "Size", "OnClick", "LayoutOrder"}]
       75 LOADK                            R13 K36 ["RoundPrimary"]
       76 SETTABLEKS                       R13 R12 K25 ["Style"]
       78 LOADK                            R15 K32 ["AnimationConversion"]
       79 LOADK                            R16 K23 ["Replace"]
       80 NAMECALL                         R13 R4 K33 ["getText"]
       82 CALL                             R13 3 1
       83 SETTABLEKS                       R13 R12 K26 ["Text"]
       85 GETTABLEKS                       R13 R3 K34 ["ButtonSize"]
       87 SETTABLEKS                       R13 R12 K27 ["Size"]
       89 NEWCLOSURE                       R13 P1
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R1
       92 SETTABLEKS                       R13 R12 K28 ["OnClick"]
       94 NAMECALL                         R13 R5 K35 ["getNextOrder"]
       96 CALL                             R13 1 1
       97 SETTABLEKS                       R13 R12 K29 ["LayoutOrder"]
       99 CALL                             R10 2 1
      100 SETTABLEKS                       R10 R9 K23 ["Replace"]
      102 CALL                             R6 3 -1
      103 RETURN                           R6 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 DUPTABLE                         R1 K3 [{"convertAnimation", "revertAnimation", "uploadTestAnimations"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["convertAnimation"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["revertAnimation"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["uploadTestAnimations"]
       16 RETURN                           R1 1

PROTO_7:
        0 DUPTABLE                         R2 K1 [{"selection"}]
        1 GETTABLEKS                       R3 R0 K2 ["AnimationConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["selection"]
        5 SETTABLEKS                       R3 R2 K0 ["selection"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["UI"]
       30 GETTABLEKS                       R5 R4 K11 ["Pane"]
       32 GETTABLEKS                       R6 R4 K12 ["Button"]
       34 GETTABLEKS                       R7 R1 K13 ["Util"]
       36 GETTABLEKS                       R8 R7 K14 ["StyleModifier"]
       38 GETTABLEKS                       R9 R7 K15 ["LayoutOrderIterator"]
       40 GETTABLEKS                       R10 R1 K16 ["ContextServices"]
       42 GETIMPORT                        R11 K5 [require]
       44 GETTABLEKS                       R12 R0 K17 ["Src"]
       46 GETTABLEKS                       R12 R12 K18 ["Contexts"]
       48 GETTABLEKS                       R12 R12 K19 ["ScriptConversionContext"]
       50 CALL                             R11 1 1
       51 GETTABLEKS                       R12 R0 K17 ["Src"]
       53 GETTABLEKS                       R12 R12 K13 ["Util"]
       55 GETTABLEKS                       R12 R12 K20 ["AnimationConversion"]
       57 GETIMPORT                        R13 K5 [require]
       59 GETTABLEKS                       R14 R12 K21 ["AnimationConversionManager"]
       61 CALL                             R13 1 1
       62 GETIMPORT                        R14 K5 [require]
       64 GETTABLEKS                       R15 R12 K22 ["constants"]
       66 CALL                             R14 1 1
       67 GETTABLEKS                       R15 R14 K23 ["AssetType"]
       69 GETTABLEKS                       R16 R0 K17 ["Src"]
       71 GETTABLEKS                       R16 R16 K24 ["Thunks"]
       73 GETIMPORT                        R17 K5 [require]
       75 GETTABLEKS                       R18 R16 K25 ["ConvertAnimation"]
       77 CALL                             R17 1 1
       78 GETIMPORT                        R18 K5 [require]
       80 GETTABLEKS                       R19 R16 K26 ["UploadTestAnimations"]
       82 CALL                             R18 1 1
       83 GETIMPORT                        R19 K5 [require]
       85 GETTABLEKS                       R20 R16 K27 ["RevertAnimation"]
       87 CALL                             R19 1 1
       88 GETTABLEKS                       R20 R2 K28 ["PureComponent"]
       90 LOADK                            R22 K29 ["ReplaceRevertButtons"]
       91 NAMECALL                         R20 R20 K30 ["extend"]
       93 CALL                             R20 2 1
       94 DUPCLOSURE                       R21 K31 [PROTO_2]
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R6
       99 SETTABLEKS                       R21 R20 K32 ["render"]
      101 DUPCLOSURE                       R21 K33 [PROTO_6]
      102 CAPTURE                          VAL R17
      103 CAPTURE                          VAL R19
      104 CAPTURE                          VAL R18
      105 DUPCLOSURE                       R22 K34 [PROTO_7]
      106 GETTABLEKS                       R23 R10 K35 ["withContext"]
      108 DUPTABLE                         R24 K39 [{"Analytics", "Stylizer", "Localization", "ScriptConversionContext"}]
      109 GETTABLEKS                       R25 R10 K36 ["Analytics"]
      111 SETTABLEKS                       R25 R24 K36 ["Analytics"]
      113 GETTABLEKS                       R25 R10 K37 ["Stylizer"]
      115 SETTABLEKS                       R25 R24 K37 ["Stylizer"]
      117 GETTABLEKS                       R25 R10 K38 ["Localization"]
      119 SETTABLEKS                       R25 R24 K38 ["Localization"]
      121 SETTABLEKS                       R11 R24 K19 ["ScriptConversionContext"]
      123 CALL                             R23 1 1
      124 MOVE                             R24 R20
      125 CALL                             R23 1 1
      126 MOVE                             R20 R23
      127 GETTABLEKS                       R23 R3 K40 ["connect"]
      129 MOVE                             R24 R22
      130 MOVE                             R25 R21
      131 CALL                             R23 2 1
      132 MOVE                             R24 R20
      133 CALL                             R23 1 -1
      134 RETURN                           R23 -1
