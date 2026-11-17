PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["GetIdentity"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["Identity"]
        7 GETTABLEKS                       R2 R2 K2 ["Edit"]
        9 JUMPIFNOTEQ                      R1 R2 ; [+8]
       11 GETUPVAL                         R2 2
       12 MOVE                             R4 R0
       13 LOADB                            R5 0
       14 NAMECALL                         R2 R2 K3 ["Fire"]
       16 CALL                             R2 3 0
       17 RETURN                           R0 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K1 ["Identity"]
       21 GETTABLEKS                       R2 R2 K4 ["PlayClient"]
       23 JUMPIFNOTEQ                      R1 R2 ; [+18]
       25 GETUPVAL                         R2 3
       26 GETTABLEKS                       R2 R2 K5 ["waitLocalPlayer"]
       28 CALL                             R2 0 1
       29 GETTABLEKS                       R4 R2 K6 ["UserId"]
       31 LOADN                            R5 0
       32 JUMPIFLT                         R4 R5 ; [+2]
       34 LOADB                            R3 0 +1
       35 LOADB                            R3 1
       36 GETUPVAL                         R4 2
       37 MOVE                             R6 R0
       38 MOVE                             R7 R3
       39 NAMECALL                         R4 R4 K3 ["Fire"]
       41 CALL                             R4 3 0
       42 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["Fire"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Empty"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Empty"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["event"]
        7 MOVE                             R3 R0
        8 LOADK                            R4 K2 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Request"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K1 ["event"]
       13 MOVE                             R4 R0
       14 LOADK                            R5 K3 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Response"]
       15 CALL                             R3 2 1
       16 SETUPVAL                         R2 2
       17 GETUPVAL                         R4 0
       18 NEWCLOSURE                       R8 P0
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R3
       22 CAPTURE                          UPVAL U4
       23 NAMECALL                         R6 R2 K4 ["Connect"]
       25 CALL                             R6 2 -1
       26 NAMECALL                         R4 R4 K5 ["Add"]
       28 CALL                             R4 -1 0
       29 GETUPVAL                         R4 0
       30 DUPCLOSURE                       R8 K6 [PROTO_1]
       31 CAPTURE                          UPVAL U5
       32 NAMECALL                         R6 R3 K4 ["Connect"]
       34 CALL                             R6 2 -1
       35 NAMECALL                         R4 R4 K5 ["Add"]
       37 CALL                             R4 -1 0
       38 DUPCLOSURE                       R6 K7 [PROTO_2]
       39 CAPTURE                          UPVAL U0
       40 NAMECALL                         R4 R1 K8 ["Once"]
       42 CALL                             R4 2 0
       43 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["MultiPlayersModeUtils.init must be called first"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETUPVAL                         R0 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["Edit"]
       11 NAMECALL                         R0 R0 K4 ["Fire"]
       13 CALL                             R0 2 0
       14 GETUPVAL                         R0 0
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R2 R2 K5 ["PlayClient"]
       18 NAMECALL                         R0 R0 K4 ["Fire"]
       20 CALL                             R0 2 0
       21 GETUPVAL                         R0 2
       22 NAMECALL                         R0 R0 K6 ["Wait"]
       24 CALL                             R0 1 -1
       25 RETURN                           R0 -1

PROTO_5:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["FFlagDebugAssistantMultiPlayerAgentsLog"]
        4 JUMPIFNOT                        R0 ; [+5]
        5 GETIMPORT                        R0 K2 [print]
        7 GETVARARGS                       R1 1
        8 LOADK                            R2 K3 ["\n"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Bin"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["DMNetworking"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["Signal"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R0 K10 ["Flags"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Util"]
       33 GETTABLEKS                       R7 R7 K12 ["MultiPlayersConnection"]
       35 GETTABLEKS                       R7 R7 K13 ["MultiPlayersAgentClient"]
       37 CALL                             R6 1 1
       38 GETTABLEKS                       R7 R3 K14 ["Identity"]
       40 GETTABLEKS                       R8 R3 K15 ["Remote"]
       42 LOADNIL                          R9
       43 GETTABLEKS                       R10 R2 K16 ["new"]
       45 CALL                             R10 0 1
       46 GETTABLEKS                       R11 R4 K16 ["new"]
       48 CALL                             R11 0 1
       49 NEWCLOSURE                       R12 P0
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R8
       52 CAPTURE                          REF R9
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R11
       56 NEWCLOSURE                       R13 P1
       57 CAPTURE                          REF R9
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R11
       60 DUPCLOSURE                       R14 K17 [PROTO_5]
       61 CAPTURE                          VAL R5
       62 DUPTABLE                         R15 K21 [{"getIsMultiPlayerClientAgent", "log", "init"}]
       63 SETTABLEKS                       R13 R15 K18 ["getIsMultiPlayerClientAgent"]
       65 SETTABLEKS                       R14 R15 K19 ["log"]
       67 SETTABLEKS                       R12 R15 K20 ["init"]
       69 CLOSEUPVALS                      R9
       70 RETURN                           R15 1
