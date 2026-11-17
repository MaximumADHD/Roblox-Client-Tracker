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
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R3 K5 [pcall]
       13 CALL                             R3 1 2
       14 JUMPIFNOT                        R3 ; [+6]
       15 MOVE                             R1 R4
       16 NAMECALL                         R5 R1 K6 ["ConfigPathAsync"]
       18 CALL                             R5 1 1
       19 MOVE                             R2 R5
       20 RETURN                           R1 2
       21 GETIMPORT                        R5 K8 [warn]
       23 LOADK                            R6 K9 ["No FTFUtil:"]
       24 MOVE                             R7 R4
       25 CALL                             R5 2 0
       26 RETURN                           R1 2

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
