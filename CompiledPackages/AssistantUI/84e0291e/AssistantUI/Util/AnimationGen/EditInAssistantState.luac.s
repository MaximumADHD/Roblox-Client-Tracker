PROTO_0:
        0 DUPTABLE                         R1 K5 [{"editSessionId", "priorJobId", "editSource", "savedKeyframesContentId", "duration"}]
        1 GETUPVAL                         R2 1
        2 LOADB                            R4 0
        3 NAMECALL                         R2 R2 K6 ["GenerateGUID"]
        5 CALL                             R2 2 1
        6 SETTABLEKS                       R2 R1 K0 ["editSessionId"]
        8 GETTABLEKS                       R2 R0 K1 ["priorJobId"]
       10 SETTABLEKS                       R2 R1 K1 ["priorJobId"]
       12 GETTABLEKS                       R2 R0 K2 ["editSource"]
       14 SETTABLEKS                       R2 R1 K2 ["editSource"]
       16 GETTABLEKS                       R2 R0 K3 ["savedKeyframesContentId"]
       18 SETTABLEKS                       R2 R1 K3 ["savedKeyframesContentId"]
       20 GETTABLEKS                       R2 R0 K4 ["duration"]
       22 SETTABLEKS                       R2 R1 K4 ["duration"]
       24 SETUPVAL                         R1 0
       25 LOADB                            R1 1
       26 SETUPVAL                         R1 2
       27 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 SETUPVAL                         R1 0
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETUPVAL                         R1 0
        3 LOADB                            R1 0
        4 SETUPVAL                         R1 1
        5 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["editSessionId"]
        6 JUMPIFEQ                         R1 R0 ; [+3]
        8 LOADNIL                          R1
        9 RETURN                           R1 1
       10 GETUPVAL                         R2 0
       11 LOADNIL                          R3
       12 SETUPVAL                         R3 0
       13 LOADB                            R3 0
       14 SETUPVAL                         R3 1
       15 MOVE                             R1 R2
       16 RETURN                           R1 1

PROTO_5:
        0 LOADNIL                          R0
        1 SETUPVAL                         R0 0
        2 LOADB                            R0 0
        3 SETUPVAL                         R0 1
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+10]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["editSessionId"]
        6 JUMPIFNOTEQ                      R1 R0 ; [+5]
        8 LOADNIL                          R1
        9 SETUPVAL                         R1 0
       10 LOADB                            R1 0
       11 SETUPVAL                         R1 1
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["AnimationGen"]
       19 GETTABLEKS                       R3 R3 K12 ["State"]
       21 GETTABLEKS                       R3 R3 K13 ["AnimationHistoryTypes"]
       23 CALL                             R2 1 1
       24 LOADNIL                          R3
       25 LOADB                            R4 0
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          REF R3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          REF R4
       30 NEWCLOSURE                       R6 P1
       31 CAPTURE                          REF R3
       32 NEWCLOSURE                       R7 P2
       33 CAPTURE                          REF R4
       34 NEWCLOSURE                       R8 P3
       35 CAPTURE                          REF R3
       36 CAPTURE                          REF R4
       37 NEWCLOSURE                       R9 P4
       38 CAPTURE                          REF R3
       39 CAPTURE                          REF R4
       40 NEWCLOSURE                       R10 P5
       41 CAPTURE                          REF R3
       42 CAPTURE                          REF R4
       43 NEWCLOSURE                       R11 P6
       44 CAPTURE                          REF R3
       45 CAPTURE                          REF R4
       46 DUPTABLE                         R12 K20 [{"setPendingEdit", "getPendingEdit", "takeShowPanelRequest", "takePendingEditIfOwnedBy", "clearPendingEdit", "clearPendingEditIfOwnedBy"}]
       47 SETTABLEKS                       R5 R12 K14 ["setPendingEdit"]
       49 SETTABLEKS                       R6 R12 K15 ["getPendingEdit"]
       51 SETTABLEKS                       R7 R12 K16 ["takeShowPanelRequest"]
       53 SETTABLEKS                       R9 R12 K17 ["takePendingEditIfOwnedBy"]
       55 SETTABLEKS                       R10 R12 K18 ["clearPendingEdit"]
       57 SETTABLEKS                       R11 R12 K19 ["clearPendingEditIfOwnedBy"]
       59 CLOSEUPVALS                      R3
       60 RETURN                           R12 1
