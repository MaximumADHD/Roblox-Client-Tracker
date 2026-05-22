PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+12]
        3 DUPTABLE                         R0 K3 [{"threads", "threadLoadState", "threadPageState"}]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K0 ["threads"]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K1 ["threadLoadState"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K2 ["threadPageState"]
       14 RETURN                           R0 1
       15 NEWTABLE                         R0 0 0
       17 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Flags"]
       16 GETTABLEKS                       R3 R3 K8 ["FFlagAssistantMultipleChatPersistence"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
