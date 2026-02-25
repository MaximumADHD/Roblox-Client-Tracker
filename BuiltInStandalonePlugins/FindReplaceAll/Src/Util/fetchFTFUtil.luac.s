PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["FTFUtil"]
        2 NAMECALL                         R0 R0 K1 ["GetPluginComponent"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [script]
        2 LOADK                            R2 K2 ["Plugin"]
        3 NAMECALL                         R0 R0 K3 ["FindFirstAncestorWhichIsA"]
        5 CALL                             R0 2 1
        6 LOADNIL                          R1
        7 LOADNIL                          R2
        8 GETIMPORT                        R3 K5 [pcall]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          VAL R0
       12 CALL                             R3 1 2
       13 JUMPIFNOT                        R3 ; [+6]
       14 MOVE                             R1 R4
       15 NAMECALL                         R5 R1 K6 ["ConfigPathAsync"]
       17 CALL                             R5 1 1
       18 MOVE                             R2 R5
       19 RETURN                           R1 2
       20 GETIMPORT                        R5 K8 [warn]
       22 LOADK                            R6 K9 ["No FTFUtil:"]
       23 MOVE                             R7 R4
       24 CALL                             R5 2 0
       25 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
