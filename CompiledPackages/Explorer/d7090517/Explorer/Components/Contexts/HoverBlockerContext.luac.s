PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 DUPCLOSURE                       R0 K0 [PROTO_0]
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 SUBK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["current"]
        9 JUMPIFNOTEQKN                    R0 K2 [0] ; [+4]
       11 GETUPVAL                         R0 1
       12 LOADB                            R1 0
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K2 ["get"]
        9 CALL                             R0 0 1
       10 JUMPIF                           R0 ; [+3]
       11 GETUPVAL                         R0 2
       12 LOADB                            R1 1
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 3
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          UPVAL U2
       18 CALL                             R0 1 -1
       19 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K1 ["useRef"]
        8 LOADN                            R4 0
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R4 R5 K2 ["useCallback"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U2
       18 NEWTABLE                         R6 0 0
       20 CALL                             R4 2 1
       21 DUPTABLE                         R5 K5 [{"blockHover", "isBlockingHoveringObservable"}]
       22 SETTABLEKS                       R4 R5 K3 ["blockHover"]
       24 SETTABLEKS                       R1 R5 K4 ["isBlockingHoveringObservable"]
       26 GETUPVAL                         R6 3
       27 GETUPVAL                         R8 4
       28 GETTABLEKS                       R7 R8 K6 ["Provider"]
       30 DUPTABLE                         R8 K8 [{"value"}]
       31 SETTABLEKS                       R5 R8 K7 ["value"]
       33 GETTABLEKS                       R9 R0 K9 ["children"]
       35 CALL                             R6 3 -1
       36 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 0
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["blockHover"]
       10 CALL                             R1 0 1
       11 SETTABLEKS                       R1 R0 K0 ["current"]
       13 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["current"]
        9 CALL                             R0 0 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R0 ; [+5]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K0 ["current"]
        8 CALL                             R0 0 0
        9 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useContext"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["useRef"]
        8 LOADNIL                          R2
        9 CALL                             R1 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K2 ["useCallback"]
       13 NEWCLOSURE                       R3 P0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          VAL R0
       16 NEWTABLE                         R4 0 0
       18 CALL                             R2 2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R1
       24 NEWTABLE                         R5 0 0
       26 CALL                             R3 2 1
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R4 R5 K3 ["useEffect"]
       30 NEWCLOSURE                       R5 P2
       31 CAPTURE                          VAL R1
       32 NEWTABLE                         R6 0 0
       34 CALL                             R4 2 0
       35 DUPTABLE                         R4 K6 [{"onMouseEnter", "onMouseLeave"}]
       36 SETTABLEKS                       R2 R4 K4 ["onMouseEnter"]
       38 SETTABLEKS                       R3 R4 K5 ["onMouseLeave"]
       40 RETURN                           R4 1

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
       23 GETTABLEKS                       R5 R0 K6 ["Util"]
       25 GETTABLEKS                       R4 R5 K10 ["onlyOnce"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K11 ["createElement"]
       30 DUPTABLE                         R5 K14 [{"blockHover", "isBlockingHoveringObservable"}]
       31 DUPCLOSURE                       R6 K15 [PROTO_1]
       32 SETTABLEKS                       R6 R5 K12 ["blockHover"]
       34 GETTABLEKS                       R6 R1 K16 ["create"]
       36 LOADB                            R7 0
       37 CALL                             R6 1 1
       38 SETTABLEKS                       R6 R5 K13 ["isBlockingHoveringObservable"]
       40 GETTABLEKS                       R6 R2 K17 ["createContext"]
       42 MOVE                             R7 R5
       43 CALL                             R6 1 1
       44 DUPCLOSURE                       R7 K18 [PROTO_4]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R6
       50 DUPCLOSURE                       R8 K19 [PROTO_9]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R6
       53 DUPTABLE                         R9 K23 [{"Context", "Provider", "useHoverBlockerTriggers"}]
       54 SETTABLEKS                       R6 R9 K20 ["Context"]
       56 SETTABLEKS                       R7 R9 K21 ["Provider"]
       58 SETTABLEKS                       R8 R9 K22 ["useHoverBlockerTriggers"]
       60 RETURN                           R9 1
