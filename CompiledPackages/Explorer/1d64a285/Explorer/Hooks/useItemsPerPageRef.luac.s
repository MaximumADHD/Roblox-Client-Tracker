PROTO_0:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 LOADN                            R3 2
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["extraNodes"]
        6 MUL                              R2 R3 R4
        7 SUB                              R0 R1 R2
        8 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R2
       13 NEWTABLE                         R5 0 2
       15 LENGTH                           R6 R1
       16 GETTABLEKS                       R7 R2 K3 ["extraNodes"]
       18 SETLIST                          R5 R6 2 [1]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K4 ["useRef"]
       24 MOVE                             R5 R3
       25 CALL                             R5 0 -1
       26 CALL                             R4 -1 1
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K5 ["useEffect"]
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R3
       33 NEWTABLE                         R7 0 1
       35 MOVE                             R8 R3
       36 SETLIST                          R7 R8 1 [1]
       38 CALL                             R5 2 0
       39 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Observable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R7 R0 K11 ["Components"]
       30 GETTABLEKS                       R6 R7 K12 ["Contexts"]
       32 GETTABLEKS                       R5 R6 K13 ["VirtualizedListContext"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       39 GETTABLEKS                       R6 R7 K15 ["useVisibleExplorerNodeRange"]
       41 CALL                             R5 1 1
       42 DUPCLOSURE                       R6 K16 [PROTO_2]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R4
       45 RETURN                           R6 1
