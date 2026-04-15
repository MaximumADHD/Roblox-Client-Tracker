PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["selectedIdsArrayObservable"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 2
       12 GETTABLEKS                       R1 R2 K2 ["setRenameBoxActiveFor"]
       14 GETTABLEN                        R2 R0 1
       15 CALL                             R1 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["coreItems"]
        3 GETTABLEKS                       R1 R2 K1 ["rename"]
        5 JUMPIFNOTEQ                      R0 R1 ; [+18]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["selectedIdsArrayObservable"]
       10 GETTABLEKS                       R1 R2 K3 ["get"]
       12 CALL                             R1 0 1
       13 GETUPVAL                         R2 2
       14 MOVE                             R3 R1
       15 CALL                             R2 1 1
       16 JUMPIF                           R2 ; [+1]
       17 RETURN                           R0 0
       18 GETUPVAL                         R3 3
       19 GETTABLEKS                       R2 R3 K4 ["setRenameBoxActiveFor"]
       21 GETTABLEN                        R3 R1 1
       22 CALL                             R2 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R1 R2 K5 ["performContextMenuAction"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 NEWCLOSURE                       R3 P0
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U3
       17 CAPTURE                          VAL R2
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R5 R1 K2 ["actionTriggeredSignal"]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R2
       26 NEWTABLE                         R7 0 1
       28 GETTABLEKS                       R8 R0 K3 ["performContextMenuAction"]
       30 SETLIST                          R7 R8 1 [1]
       32 CALL                             R4 3 0
       33 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Data"]
       11 GETTABLEKS                       R2 R3 K7 ["ContextMenu"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Contexts"]
       20 GETTABLEKS                       R3 R4 K10 ["ContextMenuContext"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Parent"]
       27 GETTABLEKS                       R4 R5 K12 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K8 ["Components"]
       34 GETTABLEKS                       R6 R7 K9 ["Contexts"]
       36 GETTABLEKS                       R5 R6 K13 ["RenameBoxContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K14 ["RpcTypes"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Util"]
       48 GETTABLEKS                       R7 R8 K16 ["hasOneItem"]
       50 CALL                             R6 1 1
       51 GETIMPORT                        R7 K5 [require]
       53 GETTABLEKS                       R9 R0 K17 ["Hooks"]
       55 GETTABLEKS                       R8 R9 K18 ["useEventConnection"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K19 [PROTO_2]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R1
       65 RETURN                           R8 1
