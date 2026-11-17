PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K10 [{"Text", "LayoutOrder", "Position", "Size", "Font", "FontFace", "TextXAlignment", "TextYAlignment", "RichText"}]
        5 GETTABLEKS                       R4 R0 K1 ["Text"]
        7 SETTABLEKS                       R4 R3 K1 ["Text"]
        9 GETTABLEKS                       R4 R0 K2 ["LayoutOrder"]
       11 SETTABLEKS                       R4 R3 K2 ["LayoutOrder"]
       13 GETTABLEKS                       R4 R0 K3 ["Position"]
       15 SETTABLEKS                       R4 R3 K3 ["Position"]
       17 GETTABLEKS                       R4 R0 K4 ["Size"]
       19 SETTABLEKS                       R4 R3 K4 ["Size"]
       21 GETTABLEKS                       R4 R0 K5 ["Font"]
       23 SETTABLEKS                       R4 R3 K5 ["Font"]
       25 GETTABLEKS                       R4 R0 K6 ["FontFace"]
       27 SETTABLEKS                       R4 R3 K6 ["FontFace"]
       29 GETTABLEKS                       R4 R0 K7 ["TextXAlignment"]
       31 SETTABLEKS                       R4 R3 K7 ["TextXAlignment"]
       33 GETTABLEKS                       R4 R0 K8 ["TextYAlignment"]
       35 SETTABLEKS                       R4 R3 K8 ["TextYAlignment"]
       37 GETTABLEKS                       R4 R0 K9 ["RichText"]
       39 SETTABLEKS                       R4 R3 K9 ["RichText"]
       41 CALL                             R1 2 -1
       42 RETURN                           R1 -1

PROTO_1:
        0 DUPTABLE                         R4 K9 [{"Text", "LayoutOrder", "Position", "Size", "Font", "FontFace", "TextXAlignment", "TextYAlignment", "RichText"}]
        1 SETTABLEKS                       R0 R4 K0 ["Text"]
        3 SETTABLEKS                       R1 R4 K1 ["LayoutOrder"]
        5 SETTABLEKS                       R2 R4 K2 ["Position"]
        7 SETTABLEKS                       R3 R4 K3 ["Size"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K10 ["props"]
       12 GETTABLEKS                       R5 R5 K4 ["Font"]
       14 SETTABLEKS                       R5 R4 K4 ["Font"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R5 R5 K10 ["props"]
       19 GETTABLEKS                       R5 R5 K5 ["FontFace"]
       21 SETTABLEKS                       R5 R4 K5 ["FontFace"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K10 ["props"]
       26 GETTABLEKS                       R5 R5 K6 ["TextXAlignment"]
       28 SETTABLEKS                       R5 R4 K6 ["TextXAlignment"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K10 ["props"]
       33 GETTABLEKS                       R5 R5 K7 ["TextYAlignment"]
       35 SETTABLEKS                       R5 R4 K7 ["TextYAlignment"]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K10 ["props"]
       40 GETTABLEKS                       R5 R5 K8 ["RichText"]
       42 SETTABLEKS                       R5 R4 K8 ["RichText"]
       44 RETURN                           R4 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [string.split]
        2 GETTABLEKS                       R2 R0 K3 ["props"]
        4 GETTABLEKS                       R2 R2 K4 ["Text"]
        6 LOADK                            R3 K5 ["\n"]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K6 ["createElement"]
       11 LOADK                            R3 K7 ["Frame"]
       12 DUPTABLE                         R4 K15 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["AutomaticSize"], ["LayoutOrder"]}]
       13 GETIMPORT                        R5 K18 [UDim2.new]
       15 LOADN                            R6 1
       16 LOADN                            R7 0
       17 LOADN                            R8 0
       18 GETTABLEKS                       R10 R0 K3 ["props"]
       20 GETTABLEKS                       R10 R10 K19 ["MaxHeight"]
       22 LENGTH                           R12 R1
       23 MULK                             R11 R12 K20 [20]
       24 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       26 GETIMPORT                        R9 K23 [math.min]
       28 CALL                             R9 2 1
       29 CALL                             R5 4 1
       30 SETTABLEKS                       R5 R4 K10 ["Size"]
       32 GETTABLEKS                       R5 R0 K3 ["props"]
       34 GETTABLEKS                       R5 R5 K11 ["Position"]
       36 SETTABLEKS                       R5 R4 K11 ["Position"]
       38 GETTABLEKS                       R5 R0 K3 ["props"]
       40 GETTABLEKS                       R5 R5 K12 ["AnchorPoint"]
       42 SETTABLEKS                       R5 R4 K12 ["AnchorPoint"]
       44 GETTABLEKS                       R5 R0 K3 ["props"]
       46 GETTABLEKS                       R5 R5 K13 ["AutomaticSize"]
       48 SETTABLEKS                       R5 R4 K13 ["AutomaticSize"]
       50 GETTABLEKS                       R5 R0 K3 ["props"]
       52 GETTABLEKS                       R5 R5 K14 ["LayoutOrder"]
       54 SETTABLEKS                       R5 R4 K14 ["LayoutOrder"]
       56 DUPTABLE                         R5 K25 [{"List"}]
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R6 R6 K6 ["createElement"]
       60 GETUPVAL                         R7 1
       61 DUPTABLE                         R8 K30 [{["Rows"], ["RowHeight"] = 20, ["RowComponent"], ["GetRowProps"]}]
       62 SETTABLEKS                       R1 R8 K26 ["Rows"]
       64 DUPCLOSURE                       R9 K31 [PROTO_0]
       65 CAPTURE                          UPVAL U0
       66 CAPTURE                          UPVAL U2
       67 SETTABLEKS                       R9 R8 K28 ["RowComponent"]
       69 NEWCLOSURE                       R9 P1
       70 CAPTURE                          VAL R0
       71 SETTABLEKS                       R9 R8 K29 ["GetRowProps"]
       73 CALL                             R6 2 1
       74 SETTABLEKS                       R6 R5 K24 ["List"]
       76 CALL                             R2 3 -1
       77 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["React"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K11 ["withContext"]
       34 GETTABLEKS                       R6 R4 K12 ["Analytics"]
       36 GETTABLEKS                       R7 R4 K13 ["Localization"]
       38 GETTABLEKS                       R8 R3 K14 ["Style"]
       40 GETTABLEKS                       R8 R8 K15 ["Stylizer"]
       42 GETTABLEKS                       R9 R3 K16 ["UI"]
       44 GETTABLEKS                       R10 R9 K17 ["TextLabel"]
       46 GETTABLEKS                       R11 R9 K18 ["List"]
       48 GETTABLEKS                       R12 R2 K19 ["PureComponent"]
       50 LOADK                            R14 K20 ["LongText"]
       51 NAMECALL                         R12 R12 K21 ["extend"]
       53 CALL                             R12 2 1
       54 DUPCLOSURE                       R13 K22 [PROTO_2]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R11
       57 CAPTURE                          VAL R10
       58 SETTABLEKS                       R13 R12 K23 ["render"]
       60 MOVE                             R13 R5
       61 DUPTABLE                         R14 K24 [{"Analytics", "Localization", "Stylizer"}]
       62 SETTABLEKS                       R6 R14 K12 ["Analytics"]
       64 SETTABLEKS                       R7 R14 K13 ["Localization"]
       66 SETTABLEKS                       R8 R14 K15 ["Stylizer"]
       68 CALL                             R13 1 1
       69 MOVE                             R14 R12
       70 CALL                             R13 1 1
       71 MOVE                             R12 R13
       72 RETURN                           R12 1
