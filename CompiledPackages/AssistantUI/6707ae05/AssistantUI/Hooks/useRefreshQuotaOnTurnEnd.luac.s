PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+10]
        4 GETIMPORT                        R0 K3 [task.cancel]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["current"]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R0 0
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K0 ["current"]
       14 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 LOADK                            R1 K1 ["after prompt"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R1 1
        5 NOT                              R0 R1
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 1
        8 SETTABLEKS                       R2 R1 K0 ["current"]
       10 GETUPVAL                         R1 2
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+1]
       13 JUMPIF                           R0 ; [+2]
       14 LOADNIL                          R1
       15 RETURN                           R1 1
       16 GETUPVAL                         R1 3
       17 GETTABLEKS                       R1 R1 K0 ["current"]
       19 JUMPIFNOT                        R1 ; [+6]
       20 GETIMPORT                        R1 K3 [task.cancel]
       22 GETUPVAL                         R2 3
       23 GETTABLEKS                       R2 R2 K0 ["current"]
       25 CALL                             R1 1 0
       26 GETUPVAL                         R1 3
       27 GETIMPORT                        R2 K5 [task.delay]
       29 GETUPVAL                         R3 4
       30 GETTABLEKS                       R3 R3 K6 ["FIntAssistantPostTurnRefreshDelaySeconds"]
       32 NEWCLOSURE                       R4 P0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          UPVAL U5
       35 CALL                             R2 2 1
       36 SETTABLEKS                       R2 R1 K0 ["current"]
       38 LOADNIL                          R1
       39 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+1]
        3 RETURN                           R0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K0 ["useContext"]
        7 GETUPVAL                         R1 2
        8 GETTABLEKS                       R1 R1 K1 ["Context"]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K0 ["useContext"]
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K1 ["Context"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R0 K2 ["refreshQuotaSummary"]
       20 GETTABLEKS                       R3 R1 K3 ["reasonDisabled"]
       22 LOADB                            R4 0
       23 JUMPIFEQKNIL                     R3 ; [+10]
       25 GETTABLEKS                       R5 R3 K3 ["reasonDisabled"]
       27 GETUPVAL                         R6 4
       28 GETTABLEKS                       R6 R6 K4 ["Generation"]
       30 JUMPIFEQ                         R5 R6 ; [+2]
       32 LOADB                            R4 0 +1
       33 LOADB                            R4 1
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R5 R5 K5 ["useRef"]
       37 MOVE                             R6 R4
       38 CALL                             R5 1 1
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K5 ["useRef"]
       42 LOADNIL                          R7
       43 CALL                             R6 1 1
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       47 NEWCLOSURE                       R8 P0
       48 CAPTURE                          VAL R6
       49 NEWTABLE                         R9 0 0
       51 CALL                             R7 2 0
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K6 ["useEffect"]
       55 NEWCLOSURE                       R8 P1
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R4
       58 CAPTURE                          UPVAL U0
       59 CAPTURE                          VAL R6
       60 CAPTURE                          UPVAL U5
       61 CAPTURE                          VAL R2
       62 NEWTABLE                         R9 0 2
       64 MOVE                             R10 R4
       65 MOVE                             R11 R2
       66 SETLIST                          R9 R10 2 [1]
       68 CALL                             R7 2 0
       69 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Contexts"]
       13 GETTABLEKS                       R2 R2 K8 ["CreditMeteringContext"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Flags"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K7 ["Contexts"]
       27 GETTABLEKS                       R4 R4 K10 ["InputStateContext"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K11 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["React"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K13 ["FlagUtils"]
       41 GETTABLEKS                       R6 R6 K14 ["getIsCreditMeteringEnabled"]
       43 CALL                             R5 1 1
       44 GETTABLEKS                       R6 R3 K15 ["InputDisabledReasons"]
       46 DUPCLOSURE                       R7 K16 [PROTO_4]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R6
       52 CAPTURE                          VAL R2
       53 RETURN                           R7 1
