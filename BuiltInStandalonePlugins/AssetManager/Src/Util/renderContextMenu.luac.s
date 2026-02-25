PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
        4 GETTABLEKS                       R3 R4 K1 ["Asset"]
        6 GETTABLE                         R1 R2 R3
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R0 K2 ["ItemsController"]
       11 NAMECALL                         R2 R2 K3 ["getIsMock"]
       13 CALL                             R2 1 1
       14 JUMPIF                           R2 ; [+8]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R3 R0 K2 ["ItemsController"]
       18 NAMECALL                         R3 R3 K4 ["getPlugin"]
       20 CALL                             R3 1 1
       21 MOVE                             R4 R1
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["MenuContext"]
        4 GETTABLEKS                       R3 R4 K1 ["Column"]
        6 GETTABLE                         R1 R2 R3
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 GETTABLEKS                       R2 R0 K2 ["ItemsController"]
       11 NAMECALL                         R2 R2 K3 ["getIsMock"]
       13 CALL                             R2 1 1
       14 JUMPIF                           R2 ; [+8]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R3 R0 K2 ["ItemsController"]
       18 NAMECALL                         R3 R3 K4 ["getPlugin"]
       20 CALL                             R3 1 1
       21 MOVE                             R4 R1
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["MenuContext"]
        4 GETTABLEKS                       R5 R6 K1 ["Scope"]
        6 GETTABLE                         R3 R4 R5
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 1
       11 NAMECALL                         R4 R2 K2 ["getIsMock"]
       13 CALL                             R4 1 1
       14 JUMPIF                           R4 ; [+6]
       15 GETUPVAL                         R4 2
       16 NAMECALL                         R5 R2 K3 ["getPlugin"]
       18 CALL                             R5 1 1
       19 MOVE                             R6 R3
       20 CALL                             R4 2 0
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R7 1
        2 GETTABLEKS                       R6 R7 K0 ["MenuContext"]
        4 GETTABLEKS                       R5 R6 K1 ["Sidebar"]
        6 GETTABLE                         R3 R4 R5
        7 MOVE                             R4 R0
        8 MOVE                             R5 R1
        9 MOVE                             R6 R2
       10 CALL                             R3 3 1
       11 NAMECALL                         R4 R1 K2 ["getIsMock"]
       13 CALL                             R4 1 1
       14 JUMPIF                           R4 ; [+6]
       15 GETUPVAL                         R4 2
       16 NAMECALL                         R5 R1 K3 ["getPlugin"]
       18 CALL                             R5 1 1
       19 MOVE                             R6 R3
       20 CALL                             R4 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["UI"]
       16 GETTABLEKS                       R3 R2 K9 ["showContextMenu"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R6 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R6 K11 ["Types"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K5 [require]
       27 GETTABLEKS                       R8 R0 K10 ["Src"]
       29 GETTABLEKS                       R7 R8 K12 ["Util"]
       31 GETTABLEKS                       R6 R7 K13 ["createContextMenuItems"]
       33 CALL                             R5 1 1
       34 NEWTABLE                         R6 0 0
       36 GETTABLEKS                       R8 R4 K14 ["MenuContext"]
       38 GETTABLEKS                       R7 R8 K15 ["Asset"]
       40 DUPCLOSURE                       R8 K16 [PROTO_0]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 SETTABLE                         R8 R6 R7
       45 GETTABLEKS                       R8 R4 K14 ["MenuContext"]
       47 GETTABLEKS                       R7 R8 K17 ["Column"]
       49 DUPCLOSURE                       R8 K18 [PROTO_1]
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R3
       53 SETTABLE                         R8 R6 R7
       54 GETTABLEKS                       R8 R4 K14 ["MenuContext"]
       56 GETTABLEKS                       R7 R8 K19 ["Scope"]
       58 DUPCLOSURE                       R8 K20 [PROTO_2]
       59 CAPTURE                          VAL R5
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R3
       62 SETTABLE                         R8 R6 R7
       63 GETTABLEKS                       R8 R4 K14 ["MenuContext"]
       65 GETTABLEKS                       R7 R8 K21 ["Sidebar"]
       67 DUPCLOSURE                       R8 K22 [PROTO_3]
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R3
       71 SETTABLE                         R8 R6 R7
       72 RETURN                           R6 1
