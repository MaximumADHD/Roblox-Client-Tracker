PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETTABLEKS                       R2 R0 K0 ["assistantModeToolStates"]
        4 GETTABLEKS                       R1 R2 K1 ["value"]
        6 GETTABLEKS                       R3 R0 K0 ["assistantModeToolStates"]
        8 GETTABLEKS                       R2 R3 K2 ["set"]
       10 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Hooks"]
       11 GETTABLEKS                       R2 R3 K7 ["usePersistedSettings"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
