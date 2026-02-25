PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["getExplorerNodeById"]
        7 MOVE                             R6 R3
        8 CALL                             R5 1 1
        9 JUMPIFNOT                        R5 ; [+13]
       10 GETTABLEKS                       R6 R5 K1 ["parent"]
       12 JUMPIFNOT                        R6 ; [+10]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K2 ["expandAsync"]
       16 GETTABLEKS                       R9 R5 K1 ["parent"]
       18 GETTABLEKS                       R8 R9 K3 ["datum"]
       20 GETTABLEKS                       R7 R8 K4 ["id"]
       22 CALL                             R6 1 0
       23 FORGLOOP                         R0 1 ; [-20]
       25 GETUPVAL                         R0 0
       26 LOADNIL                          R1
       27 LOADNIL                          R2
       28 FORGPREP                         R0
       29 GETUPVAL                         R5 2
       30 MOVE                             R6 R3
       31 CALL                             R5 1 1
       32 JUMPIF                           R5 ; [+2]
       33 FORGLOOP                         R0 1 ; [-5]
       35 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["selectedIdsObservable"]
        3 GETTABLEKS                       R0 R1 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETIMPORT                        R1 K4 [task.spawn]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["bindToAction"]
        3 DUPTABLE                         R1 K4 [{"uri", "shouldFocusExplorer", "onActionActivated"}]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K5 ["fromAction"]
        7 LOADK                            R3 K6 ["BuilderTools"]
        8 LOADK                            R4 K7 ["ZoomExtents"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K1 ["uri"]
       12 LOADB                            R2 0
       13 SETTABLEKS                       R2 R1 K2 ["shouldFocusExplorer"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 SETTABLEKS                       R2 R1 K3 ["onActionActivated"]
       20 CALL                             R0 1 -1
       21 RETURN                           R0 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["useContext"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["useEffect"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R2
       12 CAPTURE                          UPVAL U2
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R5 0 2
       17 MOVE                             R6 R0
       18 MOVE                             R7 R1
       19 SETLIST                          R5 R6 2 [1]
       21 CALL                             R3 2 0
       22 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Components"]
       11 GETTABLEKS                       R3 R4 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R3 K8 ["ActionContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R4 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["RpcTypes"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R6 R2 K13 ["Util"]
       37 GETTABLEKS                       R5 R6 K14 ["StudioUri"]
       39 DUPCLOSURE                       R6 K15 [PROTO_3]
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R5
       43 RETURN                           R6 1
