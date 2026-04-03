PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["FTFUtil"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Plugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestorWhichIsA"]
        6 CALL                             R0 2 1
        7 LOADK                            R4 K2 ["Plugin"]
        8 NAMECALL                         R2 R0 K4 ["isA"]
       10 CALL                             R2 2 -1
       11 FASTCALL                         ASSERT ; [+2]
       12 GETIMPORT                        R1 K6 [assert]
       14 CALL                             R1 -1 0
       15 GETIMPORT                        R1 K8 [pcall]
       17 DUPCLOSURE                       R2 K9 [PROTO_0]
       18 CAPTURE                          VAL R0
       19 CALL                             R1 1 2
       20 DUPCLOSURE                       R3 K10 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 RETURN                           R3 1
