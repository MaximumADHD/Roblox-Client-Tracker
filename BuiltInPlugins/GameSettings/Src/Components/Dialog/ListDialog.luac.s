PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Header"]
        4 GETTABLEKS                       R3 R1 K2 ["Entries"]
        6 GETTABLEKS                       R4 R1 K3 ["Buttons"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 DUPTABLE                         R6 K5 [{"Header"}]
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R7 R7 K6 ["createElement"]
       14 LOADK                            R8 K7 ["TextLabel"]
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R9 R9 K8 ["Dictionary"]
       18 GETTABLEKS                       R9 R9 K9 ["join"]
       20 GETTABLEKS                       R10 R5 K10 ["fontStyle"]
       22 GETTABLEKS                       R10 R10 K11 ["SemiBold"]
       24 DUPTABLE                         R11 K18 [{"AutomaticSize", "Size", "BackgroundTransparency", "Text", "TextXAlignment", "TextWrapped"}]
       25 GETIMPORT                        R12 K21 [Enum.AutomaticSize.Y]
       27 SETTABLEKS                       R12 R11 K12 ["AutomaticSize"]
       29 GETIMPORT                        R12 K24 [UDim2.new]
       31 LOADN                            R13 1
       32 LOADN                            R14 196
       33 LOADN                            R15 0
       34 LOADN                            R16 0
       35 CALL                             R12 4 1
       36 SETTABLEKS                       R12 R11 K13 ["Size"]
       38 LOADN                            R12 1
       39 SETTABLEKS                       R12 R11 K14 ["BackgroundTransparency"]
       41 SETTABLEKS                       R2 R11 K15 ["Text"]
       43 GETIMPORT                        R12 K26 [Enum.TextXAlignment.Left]
       45 SETTABLEKS                       R12 R11 K16 ["TextXAlignment"]
       47 LOADB                            R12 1
       48 SETTABLEKS                       R12 R11 K17 ["TextWrapped"]
       50 CALL                             R9 2 -1
       51 CALL                             R7 -1 1
       52 SETTABLEKS                       R7 R6 K1 ["Header"]
       54 GETUPVAL                         R7 0
       55 GETTABLEKS                       R7 R7 K6 ["createElement"]
       57 GETUPVAL                         R8 2
       58 DUPTABLE                         R9 K29 [{"TextTruncate", "Items", "Size"}]
       59 GETIMPORT                        R10 K31 [Enum.TextTruncate.AtEnd]
       61 SETTABLEKS                       R10 R9 K27 ["TextTruncate"]
       63 SETTABLEKS                       R3 R9 K28 ["Items"]
       65 GETIMPORT                        R10 K24 [UDim2.new]
       67 LOADN                            R11 1
       68 LOADN                            R12 196
       69 LOADN                            R13 0
       70 LOADN                            R14 0
       71 CALL                             R10 4 1
       72 SETTABLEKS                       R10 R9 K13 ["Size"]
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K32 ["List"]
       77 GETUPVAL                         R7 0
       78 GETTABLEKS                       R7 R7 K6 ["createElement"]
       80 GETUPVAL                         R8 3
       81 DUPTABLE                         R9 K34 [{"Buttons", "OnResult"}]
       82 SETTABLEKS                       R4 R9 K3 ["Buttons"]
       84 GETTABLEKS                       R10 R1 K33 ["OnResult"]
       86 SETTABLEKS                       R10 R9 K33 ["OnResult"]
       88 MOVE                             R10 R6
       89 CALL                             R7 3 -1
       90 RETURN                           R7 -1

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
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K9 ["UI"]
       34 GETTABLEKS                       R5 R4 K10 ["BulletList"]
       36 GETTABLEKS                       R6 R2 K11 ["ContextServices"]
       38 GETTABLEKS                       R7 R6 K12 ["withContext"]
       40 GETIMPORT                        R8 K4 [require]
       42 GETTABLEKS                       R9 R0 K13 ["Src"]
       44 GETTABLEKS                       R9 R9 K14 ["Components"]
       46 GETTABLEKS                       R9 R9 K15 ["Dialog"]
       48 GETTABLEKS                       R9 R9 K16 ["BaseDialog"]
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R1 K17 ["PureComponent"]
       53 LOADK                            R11 K18 ["ListDialog"]
       54 NAMECALL                         R9 R9 K19 ["extend"]
       56 CALL                             R9 2 1
       57 DUPCLOSURE                       R10 K20 [PROTO_0]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R8
       62 SETTABLEKS                       R10 R9 K21 ["render"]
       64 MOVE                             R10 R7
       65 DUPTABLE                         R11 K23 [{"Stylizer"}]
       66 GETTABLEKS                       R12 R6 K22 ["Stylizer"]
       68 SETTABLEKS                       R12 R11 K22 ["Stylizer"]
       70 CALL                             R10 1 1
       71 MOVE                             R11 R9
       72 CALL                             R10 1 1
       73 MOVE                             R9 R10
       74 RETURN                           R9 1
