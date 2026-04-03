PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ToolboxCapabilities9"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 JUMPIFNOT                        R0 ; [+19]
        7 GETUPVAL                         R0 0
        8 CALL                             R0 0 1
        9 JUMPIFNOT                        R0 ; [+2]
       10 LOADB                            R0 1
       11 RETURN                           R0 1
       12 GETUPVAL                         R0 1
       13 CALL                             R0 0 1
       14 GETIMPORT                        R1 K1 [game]
       16 LOADK                            R3 K4 ["ToolboxCapabilitiesRollout"]
       17 NAMECALL                         R1 R1 K5 ["GetFastInt"]
       19 CALL                             R1 2 1
       20 MODK                             R3 R0 K6 [100]
       21 JUMPIFLT                         R3 R1 ; [+2]
       23 LOADB                            R2 0 +1
       24 LOADB                            R2 1
       25 RETURN                           R2 1
       26 LOADB                            R0 0
       27 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ToolboxCapabilities9"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["ToolboxCapabilitiesRollout"]
       11 LOADN                            R3 0
       12 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K7 [script]
       17 LOADK                            R2 K8 ["Toolbox"]
       18 NAMECALL                         R0 R0 K9 ["FindFirstAncestor"]
       20 CALL                             R0 2 1
       21 GETIMPORT                        R1 K11 [require]
       23 GETTABLEKS                       R4 R0 K12 ["Src"]
       25 GETTABLEKS                       R3 R4 K13 ["Util"]
       27 GETTABLEKS                       R2 R3 K14 ["getUserId"]
       29 CALL                             R1 1 1
       30 GETIMPORT                        R2 K11 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Src"]
       34 GETTABLEKS                       R4 R5 K13 ["Util"]
       36 GETTABLEKS                       R3 R4 K15 ["isCli"]
       38 CALL                             R2 1 1
       39 DUPCLOSURE                       R3 K16 [PROTO_0]
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R1
       42 RETURN                           R3 1
