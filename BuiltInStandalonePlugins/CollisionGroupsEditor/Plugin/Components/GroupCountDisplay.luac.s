PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["createElement"]
        9 GETUPVAL                         R5 1
       10 DUPTABLE                         R6 K9 [{"Text", "Style", "Size", "TextXAlignment", "TextYAlignment"}]
       11 LOADK                            R7 K10 ["%d/%d %s"]
       12 GETTABLEKS                       R9 R1 K11 ["GroupCount"]
       14 GETUPVAL                         R10 2
       15 GETTABLEKS                       R10 R10 K12 ["GroupCountMax"]
       17 LOADK                            R13 K13 ["Info"]
       18 LOADK                            R14 K14 ["Groups"]
       19 NAMECALL                         R11 R3 K15 ["getText"]
       21 CALL                             R11 3 -1
       22 NAMECALL                         R7 R7 K16 ["format"]
       24 CALL                             R7 -1 1
       25 SETTABLEKS                       R7 R6 K4 ["Text"]
       27 LOADK                            R7 K17 ["SubText"]
       28 SETTABLEKS                       R7 R6 K5 ["Style"]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R7 R7 K18 ["GroupLabelFixedSize"]
       33 SETTABLEKS                       R7 R6 K6 ["Size"]
       35 GETIMPORT                        R7 K21 [Enum.TextXAlignment.Center]
       37 SETTABLEKS                       R7 R6 K7 ["TextXAlignment"]
       39 GETIMPORT                        R7 K22 [Enum.TextYAlignment.Center]
       41 SETTABLEKS                       R7 R6 K8 ["TextYAlignment"]
       43 CALL                             R4 2 -1
       44 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["TextLabel"]
       29 GETIMPORT                        R6 K4 [require]
       31 GETIMPORT                        R7 K1 [script]
       33 GETTABLEKS                       R7 R7 K2 ["Parent"]
       35 GETTABLEKS                       R7 R7 K2 ["Parent"]
       37 GETTABLEKS                       R7 R7 K11 ["Constants"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R1 K12 ["Component"]
       42 LOADK                            R9 K13 ["GroupCountDisplay"]
       43 NAMECALL                         R7 R7 K14 ["extend"]
       45 CALL                             R7 2 1
       46 DUPCLOSURE                       R8 K15 [PROTO_0]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R6
       50 SETTABLEKS                       R8 R7 K16 ["render"]
       52 GETTABLEKS                       R8 R3 K17 ["withContext"]
       54 DUPTABLE                         R9 K20 [{"Stylizer", "Localization"}]
       55 GETTABLEKS                       R10 R3 K18 ["Stylizer"]
       57 SETTABLEKS                       R10 R9 K18 ["Stylizer"]
       59 GETTABLEKS                       R10 R3 K19 ["Localization"]
       61 SETTABLEKS                       R10 R9 K19 ["Localization"]
       63 CALL                             R8 1 1
       64 MOVE                             R9 R7
       65 CALL                             R8 1 1
       66 MOVE                             R7 R8
       67 RETURN                           R7 1
