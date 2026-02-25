PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLE                         R1 R2 R3
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 LOADB                            R6 0
        4 CALL                             R3 3 2
        5 GETUPVAL                         R6 1
        6 GETTABLEKS                       R5 R6 K0 ["useState"]
        8 GETIMPORT                        R6 K3 [table.find]
       10 MOVE                             R7 R2
       11 MOVE                             R8 R3
       12 CALL                             R6 2 -1
       13 CALL                             R5 -1 2
       14 GETUPVAL                         R8 1
       15 GETTABLEKS                       R7 R8 K4 ["useEffect"]
       17 NEWCLOSURE                       R8 P0
       18 CAPTURE                          VAL R4
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R5
       21 NEWTABLE                         R9 0 1
       23 MOVE                             R10 R5
       24 SETLIST                          R9 R10 1 [1]
       26 CALL                             R7 2 0
       27 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Hooks"]
       20 GETTABLEKS                       R3 R4 K10 ["useToggleAction"]
       22 CALL                             R2 1 1
       23 DUPCLOSURE                       R3 K11 [PROTO_1]
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R1
       26 RETURN                           R3 1
