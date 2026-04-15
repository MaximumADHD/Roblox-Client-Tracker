PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+15]
        3 DUPTABLE                         R0 K4 [{"wasLoadedFromPersistence", "ephemeral", "isDirty", "threads"}]
        4 LOADB                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["wasLoadedFromPersistence"]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K1 ["ephemeral"]
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K2 ["isDirty"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K3 ["threads"]
       17 RETURN                           R0 1
       18 NEWTABLE                         R0 0 0
       20 RETURN                           R0 1

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
       14 GETTABLEKS                       R4 R0 K7 ["Flags"]
       16 GETTABLEKS                       R3 R4 K8 ["FFlagAssistantMultipleChatPersistence"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 CAPTURE                          VAL R2
       21 RETURN                           R3 1
