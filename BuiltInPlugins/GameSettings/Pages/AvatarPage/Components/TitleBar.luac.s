PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K2 ["Stylizer"]
        8 NEWTABLE                         R4 1 0
       10 GETTABLEKS                       R5 R0 K0 ["props"]
       12 GETTABLEKS                       R5 R5 K3 ["IsPlayerChoiceTitleStyle"]
       14 JUMPIFNOT                        R5 ; [+49]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K4 ["createElement"]
       18 LOADK                            R6 K5 ["TextLabel"]
       19 DUPTABLE                         R7 K17 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextXAlignment"], ["TextYAlignment"], ["TextColor3"], ["Font"], ["TextSize"] = 22, ["Text"]}]
       20 GETIMPORT                        R8 K20 [Enum.TextXAlignment.Left]
       22 SETTABLEKS                       R8 R7 K10 ["TextXAlignment"]
       24 GETIMPORT                        R8 K22 [Enum.TextYAlignment.Top]
       26 SETTABLEKS                       R8 R7 K11 ["TextYAlignment"]
       28 GETUPVAL                         R9 1
       29 GETTABLEKS                       R9 R9 K23 ["getRadioButtonTextColor"]
       31 GETTABLEKS                       R10 R0 K0 ["props"]
       33 CALL                             R9 1 1
       34 JUMPIFNOT                        R9 ; [+7]
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R8 R8 K23 ["getRadioButtonTextColor"]
       38 GETTABLEKS                       R9 R0 K0 ["props"]
       40 CALL                             R8 1 1
       41 JUMP                             ; [+6]
       42 GETTABLEKS                       R8 R3 K24 ["fontStyle"]
       44 GETTABLEKS                       R8 R8 K25 ["Header"]
       46 GETTABLEKS                       R8 R8 K12 ["TextColor3"]
       48 SETTABLEKS                       R8 R7 K12 ["TextColor3"]
       50 GETIMPORT                        R8 K27 [Enum.Font.SourceSans]
       52 SETTABLEKS                       R8 R7 K13 ["Font"]
       54 LOADK                            R10 K28 ["General"]
       55 LOADK                            R11 K29 ["AvatarOverridePrompt"]
       56 NAMECALL                         R8 R2 K30 ["getText"]
       58 CALL                             R8 3 1
       59 SETTABLEKS                       R8 R7 K16 ["Text"]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K31 ["PlayerChoiceLabel"]
       64 GETUPVAL                         R5 0
       65 GETTABLEKS                       R5 R5 K4 ["createElement"]
       67 GETUPVAL                         R6 2
       68 DUPTABLE                         R7 K34 [{"LayoutOrder", "Title"}]
       69 GETTABLEKS                       R9 R0 K0 ["props"]
       71 GETTABLEKS                       R9 R9 K32 ["LayoutOrder"]
       73 ORK                              R8 R9 K7 [1]
       74 SETTABLEKS                       R8 R7 K32 ["LayoutOrder"]
       76 GETTABLEKS                       R8 R0 K0 ["props"]
       78 GETTABLEKS                       R8 R8 K16 ["Text"]
       80 SETTABLEKS                       R8 R7 K33 ["Title"]
       82 MOVE                             R8 R4
       83 CALL                             R5 3 -1
       84 RETURN                           R5 -1

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
       31 GETTABLEKS                       R4 R3 K8 ["ContextServices"]
       33 GETTABLEKS                       R5 R4 K9 ["withContext"]
       35 GETTABLEKS                       R6 R3 K10 ["UI"]
       37 GETTABLEKS                       R7 R6 K11 ["TitledFrame"]
       39 GETIMPORT                        R8 K4 [require]
       41 GETTABLEKS                       R9 R0 K12 ["Util"]
       43 GETTABLEKS                       R9 R9 K13 ["StateInterfaceTheme"]
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
