PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 NAMECALL                         R1 R0 K1 ["getMouse"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 NAMECALL                         R3 R0 K2 ["IsMouseDown"]
       10 CALL                             R3 1 -1
       11 CALL                             R2 -1 2
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R5 R1 K3 ["Button1Down"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R3
       17 NEWTABLE                         R7 0 0
       19 CALL                             R4 3 0
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R5 R1 K4 ["Button1Up"]
       23 NEWCLOSURE                       R6 P1
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R7 0 0
       27 CALL                             R4 3 0
       28 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useEffect"]
       16 GETTABLEKS                       R3 R1 K9 ["useState"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K10 ["Src"]
       22 GETTABLEKS                       R5 R5 K11 ["Hooks"]
       24 GETTABLEKS                       R5 R5 K12 ["useEventConnection"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Controllers"]
       33 GETTABLEKS                       R6 R6 K14 ["ShortcutController"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K15 [PROTO_2]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R3
       39 CAPTURE                          VAL R4
       40 RETURN                           R6 1
