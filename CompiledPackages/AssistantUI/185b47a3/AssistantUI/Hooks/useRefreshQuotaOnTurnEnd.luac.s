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
       11 GETTABLEKS                       R1 R1 K1 ["FFlagAssistantCreditMetering"]
       13 JUMPIFNOT                        R1 ; [+1]
       14 JUMPIF                           R0 ; [+2]
       15 LOADNIL                          R1
       16 RETURN                           R1 1
       17 GETUPVAL                         R1 3
       18 GETTABLEKS                       R1 R1 K0 ["current"]
       20 JUMPIFNOT                        R1 ; [+6]
       21 GETIMPORT                        R1 K4 [task.cancel]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K0 ["current"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 3
       28 GETIMPORT                        R2 K6 [task.delay]
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K7 ["FIntAssistantPostTurnRefreshDelaySeconds"]
       33 NEWCLOSURE                       R4 P0
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U4
       36 CALL                             R2 2 1
       37 SETTABLEKS                       R2 R1 K0 ["current"]
       39 LOADNIL                          R1
       40 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantCreditMetering"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K1 ["useContext"]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K2 ["Context"]
       11 CALL                             R0 1 1
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K1 ["useContext"]
       15 GETUPVAL                         R2 3
       16 GETTABLEKS                       R2 R2 K2 ["Context"]
       18 CALL                             R1 1 1
       19 GETTABLEKS                       R2 R0 K3 ["refreshQuotaSummary"]
       21 GETTABLEKS                       R3 R1 K4 ["reasonDisabled"]
       23 LOADB                            R4 0
       24 JUMPIFEQKNIL                     R3 ; [+10]
       26 GETTABLEKS                       R5 R3 K4 ["reasonDisabled"]
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R6 R6 K5 ["Generation"]
       31 JUMPIFEQ                         R5 R6 ; [+2]
       33 LOADB                            R4 0 +1
       34 LOADB                            R4 1
       35 GETUPVAL                         R5 1
       36 GETTABLEKS                       R5 R5 K6 ["useRef"]
       38 MOVE                             R6 R4
       39 CALL                             R5 1 1
       40 GETUPVAL                         R6 1
       41 GETTABLEKS                       R6 R6 K6 ["useRef"]
       43 LOADNIL                          R7
       44 CALL                             R6 1 1
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R7 R7 K7 ["useEffect"]
       48 NEWCLOSURE                       R8 P0
       49 CAPTURE                          VAL R6
       50 NEWTABLE                         R9 0 0
       52 CALL                             R7 2 0
       53 GETUPVAL                         R7 1
       54 GETTABLEKS                       R7 R7 K7 ["useEffect"]
       56 NEWCLOSURE                       R8 P1
       57 CAPTURE                          VAL R5
       58 CAPTURE                          VAL R4
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          VAL R6
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
       37 GETTABLEKS                       R5 R3 K13 ["InputDisabledReasons"]
       39 DUPCLOSURE                       R6 K14 [PROTO_4]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R5
       45 RETURN                           R6 1
