PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Header"]
        6 GETTABLEKS                       R4 R1 K3 ["Body"]
        8 GETTABLEKS                       R5 R1 K4 ["Buttons"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K5 ["createElement"]
       13 GETUPVAL                         R7 1
       14 DUPTABLE                         R8 K7 [{"Buttons", "OnResult"}]
       15 SETTABLEKS                       R5 R8 K4 ["Buttons"]
       17 GETTABLEKS                       R9 R1 K6 ["OnResult"]
       19 SETTABLEKS                       R9 R8 K6 ["OnResult"]
       21 DUPTABLE                         R9 K8 [{"Header", "Body"}]
       22 GETUPVAL                         R11 0
       23 GETTABLEKS                       R10 R11 K5 ["createElement"]
       25 LOADK                            R11 K9 ["TextLabel"]
       26 GETUPVAL                         R14 2
       27 GETTABLEKS                       R13 R14 K10 ["Dictionary"]
       29 GETTABLEKS                       R12 R13 K11 ["join"]
       31 GETTABLEKS                       R14 R2 K12 ["fontStyle"]
       33 GETTABLEKS                       R13 R14 K13 ["Title"]
       35 DUPTABLE                         R14 K19 [{"AutomaticSize", "Size", "BackgroundTransparency", "Text", "TextWrapped"}]
       36 GETIMPORT                        R15 K22 [Enum.AutomaticSize.Y]
       38 SETTABLEKS                       R15 R14 K14 ["AutomaticSize"]
       40 GETIMPORT                        R15 K25 [UDim2.new]
       42 LOADN                            R16 1
       43 LOADN                            R17 0
       44 LOADN                            R18 0
       45 LOADN                            R19 0
       46 CALL                             R15 4 1
       47 SETTABLEKS                       R15 R14 K15 ["Size"]
       49 LOADN                            R15 1
       50 SETTABLEKS                       R15 R14 K16 ["BackgroundTransparency"]
       52 SETTABLEKS                       R3 R14 K17 ["Text"]
       54 LOADB                            R15 1
       55 SETTABLEKS                       R15 R14 K18 ["TextWrapped"]
       57 CALL                             R12 2 -1
       58 CALL                             R10 -1 1
       59 SETTABLEKS                       R10 R9 K2 ["Header"]
       61 SETTABLEKS                       R4 R9 K3 ["Body"]
       63 CALL                             R6 3 -1
       64 RETURN                           R6 -1

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
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       34 GETTABLEKS                       R5 R4 K10 ["withContext"]
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R10 R0 K11 ["Src"]
       40 GETTABLEKS                       R9 R10 K12 ["Components"]
       42 GETTABLEKS                       R8 R9 K13 ["Dialog"]
       44 GETTABLEKS                       R7 R8 K14 ["BaseDialog"]
       46 CALL                             R6 1 1
       47 GETTABLEKS                       R7 R1 K15 ["PureComponent"]
       49 LOADK                            R9 K16 ["SimpleDialog"]
       50 NAMECALL                         R7 R7 K17 ["extend"]
       52 CALL                             R7 2 1
       53 DUPCLOSURE                       R8 K18 [PROTO_0]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R3
       57 SETTABLEKS                       R8 R7 K19 ["render"]
       59 MOVE                             R8 R5
       60 DUPTABLE                         R9 K21 [{"Stylizer"}]
       61 GETTABLEKS                       R10 R4 K20 ["Stylizer"]
       63 SETTABLEKS                       R10 R9 K20 ["Stylizer"]
       65 CALL                             R8 1 1
       66 MOVE                             R9 R7
       67 CALL                             R8 1 1
       68 MOVE                             R7 R8
       69 RETURN                           R7 1
