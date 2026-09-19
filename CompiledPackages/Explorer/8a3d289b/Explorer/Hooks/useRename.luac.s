PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["selectedIdsArrayObservable"]
        3 GETTABLEKS                       R0 R0 K1 ["get"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 1
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEN                        R1 R0 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["getExplorerNodeById"]
       15 MOVE                             R3 R1
       16 CALL                             R2 1 1
       17 JUMPIFNOT                        R2 ; [+13]
       18 GETTABLEKS                       R3 R2 K3 ["parent"]
       20 JUMPIFNOT                        R3 ; [+10]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K4 ["expandAsync"]
       24 GETTABLEKS                       R4 R2 K3 ["parent"]
       26 GETTABLEKS                       R4 R4 K5 ["datum"]
       28 GETTABLEKS                       R4 R4 K6 ["id"]
       30 CALL                             R3 1 0
       31 GETUPVAL                         R3 2
       32 MOVE                             R4 R1
       33 CALL                             R3 1 1
       34 JUMPIFNOT                        R3 ; [+5]
       35 GETUPVAL                         R3 3
       36 GETTABLEKS                       R3 R3 K7 ["setRenameBoxActiveFor"]
       38 MOVE                             R4 R1
       39 CALL                             R3 1 0
       40 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bindToAction"]
        3 DUPTABLE                         R1 K5 [{["uri"], ["shouldFocusExplorer"] = True, ["onActionActivated"]}]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K6 ["fromAction"]
        7 LOADK                            R3 K7 ["Explorer"]
        8 LOADK                            R4 K8 ["Rename"]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K1 ["uri"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U5
       17 SETTABLEKS                       R2 R1 K4 ["onActionActivated"]
       19 CALL                             R0 1 -1
       20 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["Context"]
        6 CALL                             R2 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R4 R4 K1 ["Context"]
       13 CALL                             R3 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U4
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R3
       24 NEWTABLE                         R6 0 2
       26 MOVE                             R7 R0
       27 MOVE                             R8 R1
       28 SETLIST                          R6 R7 2 [1]
       30 CALL                             R4 2 0
       31 RETURN                           R0 0

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
       32 GETTABLEKS                       R5 R0 K6 ["Components"]
       34 GETTABLEKS                       R5 R5 K7 ["Contexts"]
       36 GETTABLEKS                       R5 R5 K12 ["RenameBoxContext"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K13 ["RpcTypes"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Util"]
       48 GETTABLEKS                       R7 R7 K15 ["hasOneItem"]
       50 CALL                             R6 1 1
       51 GETTABLEKS                       R7 R2 K14 ["Util"]
       53 GETTABLEKS                       R7 R7 K16 ["StudioUri"]
       55 DUPCLOSURE                       R8 K17 [PROTO_2]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R6
       61 RETURN                           R8 1
