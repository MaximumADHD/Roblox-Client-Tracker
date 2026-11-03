PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setRenameBoxActiveFor"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["get"]
        6 CALL                             R1 0 1
        7 GETTABLEKS                       R1 R1 K2 ["datum"]
        9 GETTABLEKS                       R1 R1 K3 ["id"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setRenameBoxActiveFor"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["renameBoxActiveFor"]
        4 GETTABLEKS                       R4 R0 K1 ["datum"]
        6 GETTABLEKS                       R4 R4 K2 ["id"]
        8 JUMPIFEQ                         R3 R4 ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 0 2
       15 GETTABLEKS                       R5 R1 K3 ["setRenameBoxActiveFor"]
       17 MOVE                             R6 R0
       18 SETLIST                          R4 R5 2 [1]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       24 NEWCLOSURE                       R4 P1
       25 CAPTURE                          VAL R1
       26 NEWTABLE                         R5 0 1
       28 GETTABLEKS                       R6 R1 K3 ["setRenameBoxActiveFor"]
       30 SETLIST                          R5 R6 1 [1]
       32 CALL                             R3 2 1
       33 GETUPVAL                         R4 0
       34 GETTABLEKS                       R4 R4 K4 ["useState"]
       36 LOADB                            R5 0
       37 CALL                             R4 1 2
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K5 ["useEffect"]
       41 MOVE                             R7 R0
       42 NEWCLOSURE                       R8 P2
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R1
       45 NEWTABLE                         R9 0 2
       47 MOVE                             R10 R0
       48 GETTABLEKS                       R11 R1 K6 ["renameBoxActiveFor"]
       50 SETLIST                          R9 R10 2 [1]
       52 CALL                             R6 3 0
       53 DUPTABLE                         R6 K10 [{"enable", "disable", "enabled"}]
       54 SETTABLEKS                       R2 R6 K7 ["enable"]
       56 SETTABLEKS                       R3 R6 K8 ["disable"]
       58 SETTABLEKS                       R4 R6 K9 ["enabled"]
       60 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Observable"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Components"]
       25 GETTABLEKS                       R4 R4 K11 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K12 ["RenameBoxContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Util"]
       34 GETTABLEKS                       R5 R5 K13 ["profile"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K14 ["Hooks"]
       41 GETTABLEKS                       R6 R6 K15 ["useVisibleExplorerNodeRange"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K16 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R1
       48 MOVE                             R7 R4
       49 MOVE                             R8 R6
       50 CALL                             R7 1 -1
       51 RETURN                           R7 -1
