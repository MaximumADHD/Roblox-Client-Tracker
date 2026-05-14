PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Color"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 LOADK                            R6 K5 ["Frame"]
       12 DUPTABLE                         R7 K7 [{"BackgroundTransparency", "Size"}]
       13 LOADN                            R8 1
       14 SETTABLEKS                       R8 R7 K6 ["BackgroundTransparency"]
       16 SETTABLEKS                       R3 R7 K2 ["Size"]
       18 DUPTABLE                         R8 K9 [{"Thumbnail"}]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R9 R9 K4 ["createElement"]
       22 LOADK                            R10 K10 ["ImageLabel"]
       23 DUPTABLE                         R11 K13 [{"Size", "BackgroundTransparency", "ImageColor3", "Image"}]
       24 GETIMPORT                        R12 K16 [UDim2.fromScale]
       26 LOADN                            R13 1
       27 LOADN                            R14 1
       28 CALL                             R12 2 1
       29 SETTABLEKS                       R12 R11 K2 ["Size"]
       31 LOADN                            R12 1
       32 SETTABLEKS                       R12 R11 K6 ["BackgroundTransparency"]
       34 GETIMPORT                        R12 K19 [Color3.fromHex]
       36 MOVE                             R13 R2
       37 CALL                             R12 1 1
       38 SETTABLEKS                       R12 R11 K11 ["ImageColor3"]
       40 GETTABLEKS                       R12 R4 K20 ["orgRoleThumbnail"]
       42 GETTABLEKS                       R12 R12 K12 ["Image"]
       44 SETTABLEKS                       R12 R11 K12 ["Image"]
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K8 ["Thumbnail"]
       49 CALL                             R5 3 -1
       50 RETURN                           R5 -1

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
       25 GETTABLEKS                       R3 R2 K8 ["Style"]
       27 GETTABLEKS                       R3 R3 K9 ["Stylizer"]
       29 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K11 ["withContext"]
       33 GETTABLEKS                       R6 R1 K12 ["Component"]
       35 GETIMPORT                        R8 K1 [script]
       37 GETTABLEKS                       R8 R8 K13 ["Name"]
       39 NAMECALL                         R6 R6 K14 ["extend"]
       41 CALL                             R6 2 1
       42 DUPCLOSURE                       R7 K15 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 SETTABLEKS                       R7 R6 K16 ["render"]
       46 MOVE                             R7 R5
       47 DUPTABLE                         R8 K17 [{"Stylizer"}]
       48 SETTABLEKS                       R3 R8 K9 ["Stylizer"]
       50 CALL                             R7 1 1
       51 MOVE                             R8 R6
       52 CALL                             R7 1 1
       53 MOVE                             R6 R7
       54 RETURN                           R6 1
