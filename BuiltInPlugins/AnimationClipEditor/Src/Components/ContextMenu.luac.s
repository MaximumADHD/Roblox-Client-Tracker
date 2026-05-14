PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Actions"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 NAMECALL                         R3 R3 K3 ["get"]
        8 CALL                             R3 1 1
        9 GETTABLEKS                       R4 R1 K4 ["OnMenuOpened"]
       11 CALL                             R4 0 0
       12 GETUPVAL                         R4 0
       13 MOVE                             R5 R3
       14 MOVE                             R6 R2
       15 CALL                             R4 2 0
       16 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["showMenu"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["showMenu"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R2 K11 ["UI"]
       27 GETTABLEKS                       R6 R5 K12 ["showContextMenu"]
       29 GETTABLEKS                       R7 R1 K13 ["PureComponent"]
       31 LOADK                            R9 K14 ["ContextMenu"]
       32 NAMECALL                         R7 R7 K15 ["extend"]
       34 CALL                             R7 2 1
       35 DUPCLOSURE                       R8 K16 [PROTO_0]
       36 CAPTURE                          VAL R6
       37 SETTABLEKS                       R8 R7 K17 ["showMenu"]
       39 DUPCLOSURE                       R8 K18 [PROTO_1]
       40 SETTABLEKS                       R8 R7 K19 ["didMount"]
       42 DUPCLOSURE                       R8 K20 [PROTO_2]
       43 SETTABLEKS                       R8 R7 K21 ["didUpdate"]
       45 DUPCLOSURE                       R8 K22 [PROTO_3]
       46 SETTABLEKS                       R8 R7 K23 ["render"]
       48 MOVE                             R8 R4
       49 DUPTABLE                         R9 K25 [{"Plugin"}]
       50 GETTABLEKS                       R10 R3 K24 ["Plugin"]
       52 SETTABLEKS                       R10 R9 K24 ["Plugin"]
       54 CALL                             R8 1 1
       55 MOVE                             R9 R7
       56 CALL                             R8 1 1
       57 MOVE                             R7 R8
       58 RETURN                           R7 1
