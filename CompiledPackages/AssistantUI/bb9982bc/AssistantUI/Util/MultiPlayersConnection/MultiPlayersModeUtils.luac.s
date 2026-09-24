PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["getDataModelType"]
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["Types"]
        7 GETTABLEKS                       R3 R3 K2 ["Edit"]
        9 JUMPIFNOTEQ                      R2 R3 ; [+13]
       11 GETUPVAL                         R3 1
       12 LOADK                            R5 K3 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Response"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K1 ["Types"]
       16 GETTABLEKS                       R6 R6 K4 ["Standalone"]
       18 LOADB                            R7 0
       19 NAMECALL                         R3 R3 K5 ["FireGuest"]
       21 CALL                             R3 4 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K1 ["Types"]
       26 GETTABLEKS                       R3 R3 K6 ["Client"]
       28 JUMPIFNOTEQ                      R2 R3 ; [+33]
       30 GETUPVAL                         R3 2
       31 GETTABLEKS                       R3 R3 K7 ["waitLocalPlayer"]
       33 CALL                             R3 0 1
       34 GETTABLEKS                       R4 R3 K8 ["UserId"]
       36 LOADN                            R5 0
       37 JUMPIFNOTLT                      R4 R5 ; [+13]
       39 GETUPVAL                         R4 1
       40 LOADK                            R6 K3 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Response"]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K1 ["Types"]
       44 GETTABLEKS                       R7 R7 K4 ["Standalone"]
       46 LOADB                            R8 1
       47 NAMECALL                         R4 R4 K5 ["FireGuest"]
       49 CALL                             R4 4 0
       50 RETURN                           R0 0
       51 GETUPVAL                         R4 1
       52 LOADK                            R6 K3 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Response"]
       53 GETUPVAL                         R7 0
       54 GETTABLEKS                       R7 R7 K1 ["Types"]
       56 GETTABLEKS                       R7 R7 K4 ["Standalone"]
       58 LOADB                            R8 0
       59 NAMECALL                         R4 R4 K5 ["FireGuest"]
       61 CALL                             R4 4 0
       62 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["Fire"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 SETUPVAL                         R0 0
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K0 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Request"]
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U2
        7 NAMECALL                         R1 R1 K1 ["OnHostEvent"]
        9 CALL                             R1 3 0
       10 GETUPVAL                         R1 0
       11 LOADK                            R3 K2 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Response"]
       12 DUPCLOSURE                       R4 K3 [PROTO_1]
       13 CAPTURE                          UPVAL U3
       14 NAMECALL                         R1 R1 K4 ["OnGuestEvent"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Request"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["Types"]
        5 GETTABLEKS                       R3 R3 K2 ["Edit"]
        7 NAMECALL                         R0 R0 K3 ["FireHost"]
        9 CALL                             R0 3 0
       10 GETUPVAL                         R0 0
       11 LOADK                            R2 K0 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Request"]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K1 ["Types"]
       15 GETTABLEKS                       R3 R3 K4 ["Client"]
       17 NAMECALL                         R0 R0 K3 ["FireHost"]
       19 CALL                             R0 3 0
       20 GETUPVAL                         R0 2
       21 NAMECALL                         R0 R0 K5 ["Wait"]
       23 CALL                             R0 1 -1
       24 RETURN                           R0 -1

PROTO_4:
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
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["DataModelType"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["Flags"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K8 ["Util"]
       30 GETTABLEKS                       R5 R5 K11 ["MultiPlayersConnection"]
       32 GETTABLEKS                       R5 R5 K12 ["MultiPlayersAgentClient"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["Signal"]
       41 CALL                             R5 1 1
       42 LOADNIL                          R6
       43 GETTABLEKS                       R7 R5 K14 ["new"]
       45 CALL                             R7 0 1
       46 NEWCLOSURE                       R8 P0
       47 CAPTURE                          REF R6
       48 CAPTURE                          VAL R2
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R7
       51 NEWCLOSURE                       R9 P1
       52 CAPTURE                          REF R6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R7
       55 DUPCLOSURE                       R10 K15 [PROTO_4]
       56 CAPTURE                          VAL R3
       57 DUPTABLE                         R11 K19 [{"getIsMultiPlayerClientAgent", "log", "init"}]
       58 SETTABLEKS                       R9 R11 K16 ["getIsMultiPlayerClientAgent"]
       60 SETTABLEKS                       R10 R11 K17 ["log"]
       62 SETTABLEKS                       R8 R11 K18 ["init"]
       64 CLOSEUPVALS                      R6
       65 RETURN                           R11 1
