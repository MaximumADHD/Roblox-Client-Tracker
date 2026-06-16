PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantMultipleChatPersistence6"]
        3 LOADB                            R3 0
        4 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["MultiChatExperimentEnabledFn"]
        5 CALL                             R1 0 1
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETIMPORT                        R3 K1 [script]
       16 GETTABLEKS                       R3 R3 K7 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["FastSetting"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K10 [pcall]
       23 DUPCLOSURE                       R4 K11 [PROTO_0]
       24 CALL                             R3 1 0
       25 GETTABLEKS                       R3 R2 K12 ["createFFlag"]
       27 LOADK                            R4 K13 ["AssistantMultipleChatPersistence6"]
       28 LOADB                            R5 0
       29 DUPCLOSURE                       R6 K14 [PROTO_1]
       30 CAPTURE                          VAL R1
       31 CALL                             R3 3 -1
       32 RETURN                           R3 -1
