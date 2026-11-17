PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantIdleSSEDisconnectMS"]
        3 LOADN                            R3 100
        4 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["FastSetting"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R2 K6 [PROTO_0]
       11 FASTPCALL                        pcall 1 ; [+2]
       12 GETIMPORT                        R1 K8 [pcall]
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K9 ["createFInt"]
       17 LOADK                            R2 K10 ["AssistantIdleSSEDisconnectMS"]
       18 LOADN                            R3 100
       19 CALL                             R1 2 -1
       20 RETURN                           R1 -1
