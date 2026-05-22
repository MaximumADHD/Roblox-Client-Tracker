PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantDebugToolMaxOutput"]
        3 LOADN                            R3 16
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
       10 GETIMPORT                        R1 K7 [pcall]
       12 DUPCLOSURE                       R2 K8 [PROTO_0]
       13 CALL                             R1 1 0
       14 GETTABLEKS                       R1 R0 K9 ["createFInt"]
       16 LOADK                            R2 K10 ["AssistantDebugToolMaxOutput"]
       17 LOADN                            R3 16
       18 CALL                             R1 2 -1
       19 RETURN                           R1 -1
