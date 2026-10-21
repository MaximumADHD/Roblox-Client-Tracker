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

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["Fire"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R3 ; [+58]
        4 FASTCALL2K                       ASSERT R1 K1 ; [+5]
        6 MOVE                             R4 R1
        7 LOADK                            R5 K1 ["MultiPlayersModeUtils requires networking"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 FASTCALL2K                       ASSERT R2 K4 ; [+5]
       13 MOVE                             R4 R2
       14 LOADK                            R5 K4 ["MultiPlayersModeUtils requires a Destroying signal when FFlagAssistantUseNewDMNetworking is on"]
       15 GETIMPORT                        R3 K3 [assert]
       17 CALL                             R3 2 0
       18 GETUPVAL                         R3 1
       19 NAMECALL                         R3 R3 K5 ["Empty"]
       21 CALL                             R3 1 0
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K6 ["event"]
       25 MOVE                             R4 R1
       26 LOADK                            R5 K7 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Request"]
       27 CALL                             R3 2 1
       28 GETUPVAL                         R4 2
       29 GETTABLEKS                       R4 R4 K6 ["event"]
       31 MOVE                             R5 R1
       32 LOADK                            R6 K8 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Response"]
       33 CALL                             R4 2 1
       34 SETUPVAL                         R3 3
       35 GETUPVAL                         R5 1
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          VAL R1
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          VAL R4
       40 CAPTURE                          UPVAL U5
       41 NAMECALL                         R7 R3 K9 ["Connect"]
       43 CALL                             R7 2 -1
       44 NAMECALL                         R5 R5 K10 ["Add"]
       46 CALL                             R5 -1 0
       47 GETUPVAL                         R5 1
       48 DUPCLOSURE                       R9 K11 [PROTO_1]
       49 CAPTURE                          UPVAL U6
       50 NAMECALL                         R7 R4 K9 ["Connect"]
       52 CALL                             R7 2 -1
       53 NAMECALL                         R5 R5 K10 ["Add"]
       55 CALL                             R5 -1 0
       56 DUPCLOSURE                       R7 K12 [PROTO_2]
       57 CAPTURE                          UPVAL U1
       58 NAMECALL                         R5 R2 K13 ["Once"]
       60 CALL                             R5 2 0
       61 RETURN                           R0 0
       62 FASTCALL2K                       ASSERT R0 K14 ; [+5]
       64 MOVE                             R4 R0
       65 LOADK                            R5 K14 ["MultiPlayersModeUtils requires networkingOLD"]
       66 GETIMPORT                        R3 K3 [assert]
       68 CALL                             R3 2 0
       69 SETUPVAL                         R0 7
       70 GETUPVAL                         R3 7
       71 LOADK                            R5 K7 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Request"]
       72 NEWCLOSURE                       R6 P3
       73 CAPTURE                          UPVAL U8
       74 CAPTURE                          UPVAL U7
       75 CAPTURE                          UPVAL U5
       76 NAMECALL                         R3 R3 K15 ["OnHostEvent"]
       78 CALL                             R3 3 0
       79 GETUPVAL                         R3 7
       80 LOADK                            R5 K8 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Response"]
       81 DUPCLOSURE                       R6 K16 [PROTO_4]
       82 CAPTURE                          UPVAL U6
       83 NAMECALL                         R3 R3 K17 ["OnGuestEvent"]
       85 CALL                             R3 3 0
       86 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FFlagAssistantUseNewDMNetworking"]
        3 JUMPIFNOT                        R0 ; [+26]
        4 GETUPVAL                         R1 1
        5 FASTCALL2K                       ASSERT R1 K1 ; [+4]
        7 LOADK                            R2 K1 ["MultiPlayersModeUtils.init must be called first"]
        8 GETIMPORT                        R0 K3 [assert]
       10 CALL                             R0 2 0
       11 GETUPVAL                         R0 1
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R2 R2 K4 ["Edit"]
       15 NAMECALL                         R0 R0 K5 ["Fire"]
       17 CALL                             R0 2 0
       18 GETUPVAL                         R0 1
       19 GETUPVAL                         R2 2
       20 GETTABLEKS                       R2 R2 K6 ["PlayClient"]
       22 NAMECALL                         R0 R0 K5 ["Fire"]
       24 CALL                             R0 2 0
       25 GETUPVAL                         R0 3
       26 NAMECALL                         R0 R0 K7 ["Wait"]
       28 CALL                             R0 1 -1
       29 RETURN                           R0 -1
       30 GETUPVAL                         R0 4
       31 LOADK                            R2 K8 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Request"]
       32 GETUPVAL                         R3 5
       33 GETTABLEKS                       R3 R3 K9 ["Types"]
       35 GETTABLEKS                       R3 R3 K4 ["Edit"]
       37 NAMECALL                         R0 R0 K10 ["FireHost"]
       39 CALL                             R0 3 0
       40 GETUPVAL                         R0 4
       41 LOADK                            R2 K8 ["MultiPlayersModeChecker_GetIsMultiPlayerClient_Request"]
       42 GETUPVAL                         R3 5
       43 GETTABLEKS                       R3 R3 K9 ["Types"]
       45 GETTABLEKS                       R3 R3 K11 ["Client"]
       47 NAMECALL                         R0 R0 K10 ["FireHost"]
       49 CALL                             R0 3 0
       50 GETUPVAL                         R0 3
       51 NAMECALL                         R0 R0 K7 ["Wait"]
       53 CALL                             R0 1 -1
       54 RETURN                           R0 -1

PROTO_7:
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
       21 GETTABLEKS                       R5 R1 K9 ["DMNetworkingOLD"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Signal"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Util"]
       33 GETTABLEKS                       R7 R7 K12 ["DataModelType"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K6 [require]
       38 GETTABLEKS                       R8 R0 K13 ["Flags"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K11 ["Util"]
       45 GETTABLEKS                       R9 R9 K14 ["MultiPlayersConnection"]
       47 GETTABLEKS                       R9 R9 K15 ["MultiPlayersAgentClient"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R9 R3 K16 ["Identity"]
       52 GETTABLEKS                       R10 R3 K17 ["Remote"]
       54 LOADNIL                          R11
       55 LOADNIL                          R12
       56 GETTABLEKS                       R13 R2 K18 ["new"]
       58 CALL                             R13 0 1
       59 GETTABLEKS                       R14 R5 K18 ["new"]
       61 CALL                             R14 0 1
       62 NEWCLOSURE                       R15 P0
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R13
       65 CAPTURE                          VAL R10
       66 CAPTURE                          REF R12
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R8
       69 CAPTURE                          VAL R14
       70 CAPTURE                          REF R11
       71 CAPTURE                          VAL R6
       72 NEWCLOSURE                       R16 P1
       73 CAPTURE                          VAL R7
       74 CAPTURE                          REF R12
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R14
       77 CAPTURE                          REF R11
       78 CAPTURE                          VAL R6
       79 DUPCLOSURE                       R17 K19 [PROTO_7]
       80 CAPTURE                          VAL R7
       81 DUPTABLE                         R18 K23 [{"getIsMultiPlayerClientAgent", "log", "init"}]
       82 SETTABLEKS                       R16 R18 K20 ["getIsMultiPlayerClientAgent"]
       84 SETTABLEKS                       R17 R18 K21 ["log"]
       86 SETTABLEKS                       R15 R18 K22 ["init"]
       88 CLOSEUPVALS                      R11
       89 RETURN                           R18 1
