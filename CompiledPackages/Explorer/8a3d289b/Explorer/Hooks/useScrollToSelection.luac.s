PROTO_0:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R7 0
        5 GETTABLEKS                       R7 R7 K0 ["current"]
        7 GETTABLE                         R6 R7 R4
        8 JUMPIF                           R6 ; [+4]
        9 GETUPVAL                         R6 1
       10 MOVE                             R7 R4
       11 CALL                             R6 1 1
       12 JUMPIF                           R6 ; [+2]
       13 FORGLOOP                         R1 1 ; [-10]
       15 GETUPVAL                         R1 0
       16 SETTABLEKS                       R0 R1 K0 ["current"]
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useRef"]
        3 NEWTABLE                         R3 0 0
        5 CALL                             R2 1 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["useEffect"]
        9 GETTABLEKS                       R4 R0 K2 ["selectedIdsObservable"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R6 0 1
       16 MOVE                             R7 R1
       17 SETLIST                          R6 R7 1 [1]
       19 CALL                             R3 3 0
       20 RETURN                           R0 0

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
       26 DUPCLOSURE                       R4 K11 [PROTO_1]
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R1
       29 RETURN                           R4 1
