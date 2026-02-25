PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ExplorerStreaming4"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+11]
        7 GETUPVAL                         R0 0
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+8]
       10 GETUPVAL                         R0 1
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETUPVAL                         R0 2
       14 CALL                             R0 0 1
       15 JUMPIFNOT                        R0 ; [+2]
       16 GETUPVAL                         R0 3
       17 CALL                             R0 0 1
       18 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Flags"]
       11 GETTABLEKS                       R2 R3 K7 ["createGetSafeFFlag"]
       13 CALL                             R1 1 1
       14 MOVE                             R2 R1
       15 LOADK                            R3 K8 ["DifferentiateStreamedOut"]
       16 CALL                             R2 1 1
       17 MOVE                             R3 R1
       18 LOADK                            R4 K9 ["RemoteCommandServiceEnabled"]
       19 CALL                             R3 1 1
       20 MOVE                             R4 R1
       21 LOADK                            R5 K10 ["GetOrCreateUniqueIdMethod"]
       22 CALL                             R4 1 1
       23 MOVE                             R5 R1
       24 LOADK                            R6 K11 ["PinStreamingSignals"]
       25 CALL                             R5 1 1
       26 GETIMPORT                        R6 K13 [game]
       28 LOADK                            R8 K14 ["ExplorerStreaming4"]
       29 LOADB                            R9 0
       30 NAMECALL                         R6 R6 K15 ["DefineFastFlag"]
       32 CALL                             R6 3 0
       33 DUPCLOSURE                       R6 K16 [PROTO_0]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R5
       38 RETURN                           R6 1
