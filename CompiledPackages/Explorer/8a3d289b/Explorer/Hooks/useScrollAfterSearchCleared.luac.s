PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getSearch"]
        3 CALL                             R0 0 1
        4 JUMPIFEQKS                       R0 K1 [""] ; [+5]
        6 GETUPVAL                         R0 1
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K2 ["current"]
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+21]
        4 GETUPVAL                         R0 0
        5 LOADB                            R1 0
        6 SETTABLEKS                       R1 R0 K0 ["current"]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["selectedIdsArrayObservable"]
       11 GETTABLEKS                       R0 R0 K2 ["get"]
       13 CALL                             R0 0 1
       14 LENGTH                           R3 R0
       15 LOADN                            R1 1
       16 LOADN                            R2 -1
       17 FORNPREP                         R1
       18 GETUPVAL                         R4 2
       19 GETTABLE                         R5 R0 R3
       20 CALL                             R4 1 1
       21 JUMPIFNOT                        R4 ; [+1]
       22 RETURN                           R0 0
       23 FORNLOOP                         R1
       24 RETURN                           R0 0
       25 GETUPVAL                         R0 3
       26 GETTABLEKS                       R0 R0 K0 ["current"]
       28 JUMPIFNOTEQKNIL                  R0 ; [+2]
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 4
       32 GETTABLEKS                       R1 R1 K0 ["current"]
       34 SETTABLEKS                       R1 R0 K3 ["CanvasPosition"]
       36 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["useRef"]
        3 LOADB                            R5 0
        4 CALL                             R4 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R5 R5 K1 ["useEffect"]
        8 GETTABLEKS                       R6 R0 K2 ["selectedIdsObservable"]
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R4
       13 NEWTABLE                         R8 0 0
       15 CALL                             R5 3 0
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R6 R0 K3 ["searchClearedSignal"]
       19 NEWCLOSURE                       R7 P1
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 NEWTABLE                         R8 0 1
       27 MOVE                             R9 R1
       28 SETLIST                          R8 R9 1 [1]
       30 CALL                             R5 3 0
       31 RETURN                           R0 0

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
       23 GETTABLEKS                       R4 R0 K10 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K11 ["Hooks"]
       30 GETTABLEKS                       R5 R5 K12 ["useEventConnection"]
       32 CALL                             R4 1 1
       33 DUPCLOSURE                       R5 K13 [PROTO_2]
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R4
       37 RETURN                           R5 1
