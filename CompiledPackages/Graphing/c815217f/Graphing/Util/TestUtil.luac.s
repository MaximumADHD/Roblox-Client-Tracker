PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["join"]
        3 MOVE                             R4 R1
        4 JUMPIF                           R4 ; [+2]
        5 NEWTABLE                         R4 0 0
        7 MOVE                             R5 R2
        8 JUMPIF                           R5 ; [+2]
        9 NEWTABLE                         R5 0 0
       11 CALL                             R3 2 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R4 R5 K1 ["createElement"]
       15 MOVE                             R5 R0
       16 MOVE                             R6 R3
       17 CALL                             R4 2 -1
       18 RETURN                           R4 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["render"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["unmount"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createTestElement"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 1
        7 GETIMPORT                        R4 K3 [Instance.new]
        9 LOADK                            R5 K4 ["Folder"]
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 1
       12 SETTABLEKS                       R5 R4 K5 ["Parent"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K6 ["createRoot"]
       17 MOVE                             R6 R4
       18 CALL                             R5 1 1
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K7 ["act"]
       22 NEWCLOSURE                       R7 P0
       23 CAPTURE                          VAL R5
       24 CAPTURE                          VAL R3
       25 CALL                             R6 1 0
       26 DUPTABLE                         R6 K12 [{"container", "element", "root", "destroy"}]
       27 SETTABLEKS                       R4 R6 K8 ["container"]
       29 SETTABLEKS                       R3 R6 K9 ["element"]
       31 SETTABLEKS                       R5 R6 K10 ["root"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R5
       35 SETTABLEKS                       R7 R6 K11 ["destroy"]
       37 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Dash"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["React"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["ReactRoblox"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K11 [game]
       26 LOADK                            R7 K12 ["CoreGui"]
       27 NAMECALL                         R5 R5 K13 ["GetService"]
       29 CALL                             R5 2 1
       30 NEWTABLE                         R6 2 0
       32 DUPCLOSURE                       R7 K14 [PROTO_0]
       33 CAPTURE                          VAL R2
       34 CAPTURE                          VAL R3
       35 SETTABLEKS                       R7 R6 K15 ["createTestElement"]
       37 DUPCLOSURE                       R7 K16 [PROTO_3]
       38 CAPTURE                          VAL R6
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R4
       41 SETTABLEKS                       R7 R6 K17 ["setupTest"]
       43 RETURN                           R6 1
