PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 RETURN                           R0 0

PROTO_2:
        0 RETURN                           R0 0

PROTO_3:
        0 ADDK                             R1 R0 K0 [1]
        1 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R1 K0 [PROTO_3]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R2 0
        1 SUBK                             R3 R0 K0 [1]
        2 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
        4 GETIMPORT                        R1 K3 [math.max]
        6 CALL                             R1 2 1
        7 JUMPIFNOTEQKN                    R1 K4 [0] ; [+6]
        9 GETUPVAL                         R2 0
       10 GETIMPORT                        R3 K7 [os.clock]
       12 CALL                             R3 0 -1
       13 CALL                             R2 -1 0
       14 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R1 P0
        2 CAPTURE                          UPVAL U1
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["default"]
        2 JUMPIFEQKNIL                     R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["default is not supported in this context"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R1 R2 K4 ["useState"]
       15 LOADN                            R2 0
       16 CALL                             R1 1 2
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R3 R4 K4 ["useState"]
       20 LOADN                            R4 0
       21 CALL                             R3 1 2
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R5 R6 K5 ["useCallback"]
       25 NEWCLOSURE                       R6 P0
       26 CAPTURE                          VAL R4
       27 NEWTABLE                         R7 0 1
       29 MOVE                             R8 R4
       30 SETLIST                          R7 R8 1 [1]
       32 CALL                             R5 2 1
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K5 ["useCallback"]
       36 NEWCLOSURE                       R7 P1
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R8 0 2
       41 MOVE                             R9 R4
       42 MOVE                             R10 R2
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 1
       46 DUPTABLE                         R7 K11 [{"lastPacketTime", "setLastPacketTime", "hasPendingUserInput", "incrementPendingUserInput", "decrementPendingUserInput"}]
       47 GETTABLEKS                       R9 R0 K6 ["lastPacketTime"]
       49 OR                               R8 R9 R1
       50 SETTABLEKS                       R8 R7 K6 ["lastPacketTime"]
       52 GETTABLEKS                       R9 R0 K7 ["setLastPacketTime"]
       54 OR                               R8 R9 R2
       55 SETTABLEKS                       R8 R7 K7 ["setLastPacketTime"]
       57 LOADN                            R9 0
       58 JUMPIFLT                         R9 R3 ; [+2]
       60 LOADB                            R8 0 +1
       61 LOADB                            R8 1
       62 SETTABLEKS                       R8 R7 K8 ["hasPendingUserInput"]
       64 SETTABLEKS                       R5 R7 K9 ["incrementPendingUserInput"]
       66 SETTABLEKS                       R6 R7 K10 ["decrementPendingUserInput"]
       68 GETUPVAL                         R8 1
       69 GETUPVAL                         R10 2
       70 GETTABLEKS                       R9 R10 K12 ["Provider"]
       72 DUPTABLE                         R10 K14 [{"value"}]
       73 SETTABLEKS                       R7 R10 K13 ["value"]
       75 GETTABLEKS                       R11 R0 K15 ["children"]
       77 CALL                             R8 3 -1
       78 RETURN                           R8 -1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+2]
        2 LOADNIL                          R0
        3 RETURN                           R0 1
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 NEWCLOSURE                       R0 P0
        7 CAPTURE                          UPVAL U2
        8 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["incrementPendingUserInput"]
        7 GETTABLEKS                       R3 R1 K2 ["decrementPendingUserInput"]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R4 R5 K3 ["useEffect"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R3
       16 NEWTABLE                         R6 0 3
       18 MOVE                             R7 R0
       19 MOVE                             R8 R2
       20 MOVE                             R9 R3
       21 SETLIST                          R6 R7 3 [1]
       23 CALL                             R4 2 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R1 K9 ["createElement"]
       21 DUPTABLE                         R4 K16 [{"default", "lastPacketTime", "setLastPacketTime", "hasPendingUserInput", "incrementPendingUserInput", "decrementPendingUserInput"}]
       22 LOADB                            R5 1
       23 SETTABLEKS                       R5 R4 K10 ["default"]
       25 LOADN                            R5 0
       26 SETTABLEKS                       R5 R4 K11 ["lastPacketTime"]
       28 DUPCLOSURE                       R5 K17 [PROTO_0]
       29 SETTABLEKS                       R5 R4 K12 ["setLastPacketTime"]
       31 LOADB                            R5 0
       32 SETTABLEKS                       R5 R4 K13 ["hasPendingUserInput"]
       34 DUPCLOSURE                       R5 K18 [PROTO_1]
       35 SETTABLEKS                       R5 R4 K14 ["incrementPendingUserInput"]
       37 DUPCLOSURE                       R5 K19 [PROTO_2]
       38 SETTABLEKS                       R5 R4 K15 ["decrementPendingUserInput"]
       40 GETTABLEKS                       R5 R1 K20 ["createContext"]
       42 MOVE                             R6 R4
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K21 [PROTO_7]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R5
       48 DUPCLOSURE                       R7 K22 [PROTO_10]
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R5
       51 DUPTABLE                         R8 K26 [{"Context", "Provider", "useMarkUserInputRequired"}]
       52 SETTABLEKS                       R5 R8 K23 ["Context"]
       54 SETTABLEKS                       R6 R8 K24 ["Provider"]
       56 SETTABLEKS                       R7 R8 K25 ["useMarkUserInputRequired"]
       58 RETURN                           R8 1
