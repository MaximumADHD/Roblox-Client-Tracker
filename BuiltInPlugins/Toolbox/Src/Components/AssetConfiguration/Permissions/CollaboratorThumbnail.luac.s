PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R3 R3 K3 ["UseMask"]
        8 ORK                              R2 R3 K2 [False]
        9 GETTABLEKS                       R4 R0 K0 ["props"]
       11 GETTABLEKS                       R4 R4 K4 ["IsLoadedThumbnail"]
       13 ORK                              R3 R4 K2 [False]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K5 ["Dictionary"]
       17 GETTABLEKS                       R4 R4 K6 ["join"]
       19 GETTABLEKS                       R5 R0 K0 ["props"]
       21 DUPTABLE                         R6 K7 [{"UseMask", "IsLoadedThumbnail", "Stylizer"}]
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R7 R7 K8 ["None"]
       25 SETTABLEKS                       R7 R6 K3 ["UseMask"]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R7 R7 K8 ["None"]
       30 SETTABLEKS                       R7 R6 K4 ["IsLoadedThumbnail"]
       32 GETUPVAL                         R7 0
       33 GETTABLEKS                       R7 R7 K8 ["None"]
       35 SETTABLEKS                       R7 R6 K1 ["Stylizer"]
       37 CALL                             R4 2 1
       38 GETUPVAL                         R5 1
       39 GETTABLEKS                       R5 R5 K9 ["createElement"]
       41 LOADK                            R6 K10 ["ImageLabel"]
       42 GETUPVAL                         R7 0
       43 GETTABLEKS                       R7 R7 K5 ["Dictionary"]
       45 GETTABLEKS                       R7 R7 K6 ["join"]
       47 MOVE                             R8 R4
       48 DUPTABLE                         R9 K12 [{"ImageColor3"}]
       49 JUMPIFNOT                        R3 ; [+7]
       50 GETIMPORT                        R10 K15 [Color3.new]
       52 LOADN                            R11 1
       53 LOADN                            R12 1
       54 LOADN                            R13 1
       55 CALL                             R10 3 1
       56 JUMPIF                           R10 ; [+8]
       57 GETTABLEKS                       R10 R1 K16 ["assetConfig"]
       59 GETTABLEKS                       R10 R10 K17 ["packagePermissions"]
       61 GETTABLEKS                       R10 R10 K18 ["subjectThumbnail"]
       63 GETTABLEKS                       R10 R10 K19 ["defaultImageColor"]
       65 SETTABLEKS                       R10 R9 K11 ["ImageColor3"]
       67 CALL                             R7 2 1
       68 DUPTABLE                         R8 K21 [{"Mask"}]
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R9 R9 K9 ["createElement"]
       72 LOADK                            R10 K22 ["UICorner"]
       73 DUPTABLE                         R11 K24 [{"CornerRadius"}]
       74 GETIMPORT                        R12 K26 [UDim.new]
       76 JUMPIFNOT                        R2 ; [+2]
       77 LOADN                            R13 1
       78 JUMP                             ; [+1]
       79 LOADK                            R13 K27 [0.1]
       80 LOADN                            R14 0
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R11 K23 ["CornerRadius"]
       84 CALL                             R9 2 1
       85 SETTABLEKS                       R9 R8 K20 ["Mask"]
       87 CALL                             R5 3 -1
       88 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETTABLEKS                       R1 R0 K3 ["Packages"]
       15 GETIMPORT                        R2 K5 [require]
       17 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R1 K7 ["Roact"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R1 K8 ["Framework"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K9 ["ContextServices"]
       32 GETTABLEKS                       R6 R5 K10 ["withContext"]
       34 GETTABLEKS                       R7 R3 K11 ["PureComponent"]
       36 LOADK                            R9 K12 ["CollaboratorThumbnail"]
       37 NAMECALL                         R7 R7 K13 ["extend"]
       39 CALL                             R7 2 1
       40 DUPCLOSURE                       R8 K14 [PROTO_0]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 SETTABLEKS                       R8 R7 K15 ["render"]
       45 MOVE                             R8 R6
       46 DUPTABLE                         R9 K17 [{"Stylizer"}]
       47 GETTABLEKS                       R10 R5 K16 ["Stylizer"]
       49 SETTABLEKS                       R10 R9 K16 ["Stylizer"]
       51 CALL                             R8 1 1
       52 MOVE                             R9 R7
       53 CALL                             R8 1 1
       54 MOVE                             R7 R8
       55 RETURN                           R7 1
