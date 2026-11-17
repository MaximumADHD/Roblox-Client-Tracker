PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Color"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["createElement"]
       11 GETUPVAL                         R6 1
       12 DUPTABLE                         R7 K11 [{["name"], ["variant"], ["size"], ["style"], ["tag"] = "align-x-center align-y-center"}]
       13 GETTABLEKS                       R9 R1 K12 ["IsPrivate"]
       15 JUMPIFNOT                        R9 ; [+6]
       16 GETUPVAL                         R8 2
       17 GETTABLEKS                       R8 R8 K13 ["IconName"]
       19 GETTABLEKS                       R8 R8 K14 ["LockClosed"]
       21 JUMP                             ; [+5]
       22 GETUPVAL                         R8 2
       23 GETTABLEKS                       R8 R8 K13 ["IconName"]
       25 GETTABLEKS                       R8 R8 K15 ["PersonRectangleHorizontalLine"]
       27 SETTABLEKS                       R8 R7 K5 ["name"]
       29 GETUPVAL                         R8 3
       30 GETTABLEKS                       R8 R8 K16 ["Filled"]
       32 SETTABLEKS                       R8 R7 K6 ["variant"]
       34 GETTABLEKS                       R8 R4 K17 ["collaboratorItem"]
       36 GETTABLEKS                       R8 R8 K18 ["iconContainerSize"]
       38 SETTABLEKS                       R8 R7 K7 ["size"]
       40 DUPTABLE                         R8 K22 [{["Color3"], ["Transparency"] = 0}]
       41 GETIMPORT                        R9 K24 [Color3.fromHex]
       43 MOVE                             R10 R2
       44 CALL                             R9 1 1
       45 SETTABLEKS                       R9 R8 K19 ["Color3"]
       47 SETTABLEKS                       R8 R7 K8 ["style"]
       49 CALL                             R5 2 1
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K4 ["createElement"]
       53 LOADK                            R7 K25 ["Frame"]
       54 DUPTABLE                         R8 K28 [{["BackgroundTransparency"] = 1, ["Size"]}]
       55 SETTABLEKS                       R3 R8 K2 ["Size"]
       57 DUPTABLE                         R9 K30 [{"Thumbnail"}]
       58 SETTABLEKS                       R5 R9 K29 ["Thumbnail"]
       60 CALL                             R6 3 -1
       61 RETURN                           R6 -1

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
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R7 R0 K5 ["Packages"]
       37 GETTABLEKS                       R7 R7 K12 ["Foundation"]
       39 CALL                             R6 1 1
       40 GETTABLEKS                       R7 R6 K13 ["Icon"]
       42 GETTABLEKS                       R8 R6 K14 ["Enums"]
       44 GETTABLEKS                       R9 R6 K14 ["Enums"]
       46 GETTABLEKS                       R9 R9 K15 ["IconVariant"]
       48 GETTABLEKS                       R10 R1 K16 ["Component"]
       50 GETIMPORT                        R12 K1 [script]
       52 GETTABLEKS                       R12 R12 K17 ["Name"]
       54 NAMECALL                         R10 R10 K18 ["extend"]
       56 CALL                             R10 2 1
       57 DUPCLOSURE                       R11 K19 [PROTO_0]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R9
       62 SETTABLEKS                       R11 R10 K20 ["render"]
       64 MOVE                             R11 R5
       65 DUPTABLE                         R12 K21 [{"Stylizer"}]
       66 SETTABLEKS                       R3 R12 K9 ["Stylizer"]
       68 CALL                             R11 1 1
       69 MOVE                             R12 R10
       70 CALL                             R11 1 1
       71 MOVE                             R10 R11
       72 RETURN                           R10 1
