PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        5 GETTABLEKS                       R2 R3 K1 ["merge"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K5 [{"TextSize", "Font", "TextColor3"}]
        9 GETTABLEKS                       R5 R1 K6 ["textSize"]
       11 SETTABLEKS                       R5 R4 K2 ["TextSize"]
       13 GETTABLEKS                       R5 R1 K7 ["font"]
       15 SETTABLEKS                       R5 R4 K3 ["Font"]
       17 GETTABLEKS                       R5 R1 K8 ["text"]
       19 SETTABLEKS                       R5 R4 K4 ["TextColor3"]
       21 MOVE                             R5 R0
       22 CALL                             R2 3 1
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R3 R4 K9 ["createElement"]
       26 LOADK                            R4 K10 ["TextBox"]
       27 MOVE                             R5 R2
       28 CALL                             R3 2 -1
       29 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R5 K3 [script]
        5 GETTABLEKS                       R4 R5 K4 ["Parent"]
        7 GETTABLEKS                       R3 R4 K4 ["Parent"]
        9 GETTABLEKS                       R2 R3 K5 ["Packages"]
       11 GETTABLEKS                       R1 R2 K6 ["React"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R6 K3 [script]
       18 GETTABLEKS                       R5 R6 K4 ["Parent"]
       20 GETTABLEKS                       R4 R5 K4 ["Parent"]
       22 GETTABLEKS                       R3 R4 K5 ["Packages"]
       24 GETTABLEKS                       R2 R3 K7 ["Sift"]
       26 CALL                             R1 1 1
       27 GETIMPORT                        R2 K1 [require]
       29 GETIMPORT                        R5 K3 [script]
       31 GETTABLEKS                       R4 R5 K4 ["Parent"]
       33 GETTABLEKS                       R3 R4 K8 ["useTheme"]
       35 CALL                             R2 1 1
       36 DUPTABLE                         R3 K17 [{"AutomaticSize", "BackgroundTransparency", "ClearTextOnFocus", "ClipsDescendants", "TextEditable", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
       37 GETIMPORT                        R4 K20 [Enum.AutomaticSize.XY]
       39 SETTABLEKS                       R4 R3 K9 ["AutomaticSize"]
       41 LOADN                            R4 1
       42 SETTABLEKS                       R4 R3 K10 ["BackgroundTransparency"]
       44 LOADB                            R4 0
       45 SETTABLEKS                       R4 R3 K11 ["ClearTextOnFocus"]
       47 LOADB                            R4 1
       48 SETTABLEKS                       R4 R3 K12 ["ClipsDescendants"]
       50 LOADB                            R4 0
       51 SETTABLEKS                       R4 R3 K13 ["TextEditable"]
       53 LOADB                            R4 1
       54 SETTABLEKS                       R4 R3 K14 ["TextWrapped"]
       56 GETIMPORT                        R4 K22 [Enum.TextXAlignment.Left]
       58 SETTABLEKS                       R4 R3 K15 ["TextXAlignment"]
       60 GETIMPORT                        R4 K24 [Enum.TextYAlignment.Top]
       62 SETTABLEKS                       R4 R3 K16 ["TextYAlignment"]
       64 DUPCLOSURE                       R4 K25 [PROTO_0]
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R1
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R0
       69 RETURN                           R4 1
