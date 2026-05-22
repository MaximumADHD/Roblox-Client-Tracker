PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 MOVE                             R7 R5
        6 CALL                             R6 1 1
        7 JUMPIF                           R6 ; [+2]
        8 FORGLOOP                         R1 2 ; [-5]
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedIdsArrayObservable"]
        3 GETTABLEKS                       R0 R0 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["expandAll"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bindToAction"]
        3 DUPTABLE                         R1 K4 [{"uri", "shouldFocusExplorer", "onActionActivated"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K5 ["fromAction"]
        7 LOADK                            R3 K6 ["Explorer"]
        8 LOADK                            R4 K7 ["ExpandAll"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K1 ["uri"]
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K2 ["shouldFocusExplorer"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 SETTABLEKS                       R2 R1 K3 ["onActionActivated"]
       20 CALL                             R0 1 -1
       21 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedIdsArrayObservable"]
        3 GETTABLEKS                       R0 R0 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["collapseAll"]
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 GETUPVAL                         R1 1
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bindToAction"]
        3 DUPTABLE                         R1 K4 [{"uri", "shouldFocusExplorer", "onActionActivated"}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K5 ["fromAction"]
        7 LOADK                            R3 K6 ["Explorer"]
        8 LOADK                            R4 K7 ["CollapseAll"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K1 ["uri"]
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K2 ["shouldFocusExplorer"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 SETTABLEKS                       R2 R1 K3 ["onActionActivated"]
       20 CALL                             R0 1 -1
       21 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["useCallback"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R5 0 1
       14 MOVE                             R6 R1
       15 SETLIST                          R5 R6 1 [1]
       17 CALL                             R3 2 1
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       21 NEWCLOSURE                       R5 P1
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R0
       25 CAPTURE                          VAL R3
       26 NEWTABLE                         R6 0 2
       28 GETTABLEKS                       R7 R0 K4 ["expandAll"]
       30 MOVE                             R8 R3
       31 SETLIST                          R6 R7 2 [1]
       33 CALL                             R4 2 0
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R4 R4 K3 ["useEffect"]
       37 NEWCLOSURE                       R5 P2
       38 CAPTURE                          VAL R2
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R6 0 2
       44 GETTABLEKS                       R7 R0 K5 ["collapseAll"]
       46 MOVE                             R8 R3
       47 SETLIST                          R6 R7 2 [1]
       49 CALL                             R4 2 0
       50 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["ActionContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["RpcTypes"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K13 ["Util"]
       37 GETTABLEKS                       R5 R5 K14 ["StudioUri"]
       39 DUPCLOSURE                       R6 K15 [PROTO_5]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 RETURN                           R6 1
