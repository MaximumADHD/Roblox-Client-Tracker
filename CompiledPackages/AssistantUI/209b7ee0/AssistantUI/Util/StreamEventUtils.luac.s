PROTO_0:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["type"]
        3 JUMPIFEQKS                       R2 K1 ["message_stop"] ; [+7]
        5 GETTABLEKS                       R2 R0 K0 ["type"]
        7 JUMPIFEQKS                       R2 K2 ["error"] ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_0]
       13 DUPTABLE                         R3 K9 [{"isTerminalEventType"}]
       14 SETTABLEKS                       R2 R3 K8 ["isTerminalEventType"]
       16 RETURN                           R3 1
