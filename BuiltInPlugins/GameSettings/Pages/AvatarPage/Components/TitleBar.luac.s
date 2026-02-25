PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R4 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K2 ["Stylizer"]
        8 NEWTABLE                         R4 1 0
       10 GETTABLEKS                       R6 R0 K0 ["props"]
       12 GETTABLEKS                       R5 R6 K3 ["IsPlayerChoiceTitleStyle"]
       14 JUMPIFNOT                        R5 ; [+58]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K4 ["createElement"]
       18 LOADK                            R6 K5 ["TextLabel"]
       19 DUPTABLE                         R7 K14 [{"BackgroundTransparency", "BorderSizePixel", "TextXAlignment", "TextYAlignment", "TextColor3", "Font", "TextSize", "Text"}]
       20 LOADN                            R8 1
       21 SETTABLEKS                       R8 R7 K6 ["BackgroundTransparency"]
       23 LOADN                            R8 0
       24 SETTABLEKS                       R8 R7 K7 ["BorderSizePixel"]
       26 GETIMPORT                        R8 K17 [Enum.TextXAlignment.Left]
       28 SETTABLEKS                       R8 R7 K8 ["TextXAlignment"]
       30 GETIMPORT                        R8 K19 [Enum.TextYAlignment.Top]
       32 SETTABLEKS                       R8 R7 K9 ["TextYAlignment"]
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R9 R10 K20 ["getRadioButtonTextColor"]
       37 GETTABLEKS                       R10 R0 K0 ["props"]
       39 CALL                             R9 1 1
       40 JUMPIFNOT                        R9 ; [+7]
       41 GETUPVAL                         R9 1
       42 GETTABLEKS                       R8 R9 K20 ["getRadioButtonTextColor"]
       44 GETTABLEKS                       R9 R0 K0 ["props"]
       46 CALL                             R8 1 1
       47 JUMP                             ; [+6]
       48 GETTABLEKS                       R10 R3 K21 ["fontStyle"]
       50 GETTABLEKS                       R9 R10 K22 ["Header"]
       52 GETTABLEKS                       R8 R9 K10 ["TextColor3"]
       54 SETTABLEKS                       R8 R7 K10 ["TextColor3"]
       56 GETIMPORT                        R8 K24 [Enum.Font.SourceSans]
       58 SETTABLEKS                       R8 R7 K11 ["Font"]
       60 LOADN                            R8 22
       61 SETTABLEKS                       R8 R7 K12 ["TextSize"]
       63 LOADK                            R10 K25 ["General"]
       64 LOADK                            R11 K26 ["AvatarOverridePrompt"]
       65 NAMECALL                         R8 R2 K27 ["getText"]
       67 CALL                             R8 3 1
       68 SETTABLEKS                       R8 R7 K13 ["Text"]
       70 CALL                             R5 2 1
       71 SETTABLEKS                       R5 R4 K28 ["PlayerChoiceLabel"]
       73 GETUPVAL                         R6 0
       74 GETTABLEKS                       R5 R6 K4 ["createElement"]
       76 GETUPVAL                         R6 2
       77 DUPTABLE                         R7 K31 [{"LayoutOrder", "Title"}]
       78 GETTABLEKS                       R10 R0 K0 ["props"]
       80 GETTABLEKS                       R9 R10 K29 ["LayoutOrder"]
       82 ORK                              R8 R9 K32 [1]
       83 SETTABLEKS                       R8 R7 K29 ["LayoutOrder"]
       85 GETTABLEKS                       R9 R0 K0 ["props"]
       87 GETTABLEKS                       R8 R9 K13 ["Text"]
       89 SETTABLEKS                       R8 R7 K30 ["Title"]
       91 MOVE                             R8 R4
       92 CALL                             R5 3 -1
       93 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R5 K1 [script]
        9 GETTABLEKS                       R4 R5 K2 ["Parent"]
       11 GETTABLEKS                       R3 R4 K2 ["Parent"]
       13 GETTABLEKS                       R2 R3 K2 ["Parent"]
       15 GETTABLEKS                       R1 R2 K2 ["Parent"]
       17 GETIMPORT                        R2 K4 [require]
       19 GETTABLEKS                       R4 R1 K5 ["Packages"]
       21 GETTABLEKS                       R3 R4 K6 ["Roact"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R5 R1 K5 ["Packages"]
       28 GETTABLEKS                       R4 R5 K7 ["Framework"]
       30 CALL                             R3 1 1
       31 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       33 GETTABLEKS                       R5 R4 K9 ["withContext"]
       35 GETTABLEKS                       R6 R3 K10 ["UI"]
       37 GETTABLEKS                       R7 R6 K11 ["TitledFrame"]
       39 GETIMPORT                        R8 K4 [require]
       41 GETTABLEKS                       R10 R0 K12 ["Util"]
       43 GETTABLEKS                       R9 R10 K13 ["StateInterfaceTheme"]
       45 CALL                             R8 1 1
       46 GETTABLEKS                       R9 R2 K14 ["Component"]
       48 LOADK                            R11 K15 ["ComponentTitleBar"]
       49 NAMECALL                         R9 R9 K16 ["extend"]
       51 CALL                             R9 2 1
       52 DUPCLOSURE                       R10 K17 [PROTO_0]
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R7
       56 SETTABLEKS                       R10 R9 K18 ["render"]
       58 MOVE                             R10 R5
       59 DUPTABLE                         R11 K21 [{"Localization", "Stylizer"}]
       60 GETTABLEKS                       R12 R4 K19 ["Localization"]
       62 SETTABLEKS                       R12 R11 K19 ["Localization"]
       64 GETTABLEKS                       R12 R4 K20 ["Stylizer"]
       66 SETTABLEKS                       R12 R11 K20 ["Stylizer"]
       68 CALL                             R10 1 1
       69 MOVE                             R11 R9
       70 CALL                             R10 1 1
       71 MOVE                             R9 R10
       72 RETURN                           R9 1
