PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R2 K1 [script]
        2 GETTABLEKS                       R1 R2 K2 ["Parent"]
        4 GETTABLEKS                       R0 R1 K2 ["Parent"]
        6 GETIMPORT                        R1 K4 [pcall]
        8 DUPCLOSURE                       R2 K5 [PROTO_0]
        9 CALL                             R1 1 2
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETIMPORT                        R3 K7 [_G]
       14 LOADB                            R4 1
       15 SETTABLEKS                       R4 R3 K8 ["__DEV__"]
       17 GETIMPORT                        R3 K7 [_G]
       19 LOADB                            R4 1
       20 SETTABLEKS                       R4 R3 K9 ["__ROACT_17_MOCK_SCHEDULER__"]
       22 GETIMPORT                        R3 K7 [_G]
       24 LOADB                            R4 1
       25 SETTABLEKS                       R4 R3 K10 ["__ROACT_17_INLINE_ACT__"]
       27 GETIMPORT                        R3 K12 [require]
       29 GETTABLEKS                       R6 R0 K13 ["Packages"]
       31 GETTABLEKS                       R5 R6 K14 ["Dev"]
       33 GETTABLEKS                       R4 R5 K15 ["Jest"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R3 K16 ["runCLI"]
       38 MOVE                             R5 R4
       39 GETTABLEKS                       R6 R0 K17 ["Src"]
       41 DUPTABLE                         R7 K20 [{"verbose", "ci"}]
       42 LOADB                            R8 0
       43 SETTABLEKS                       R8 R7 K18 ["verbose"]
       45 LOADB                            R8 0
       46 SETTABLEKS                       R8 R7 K19 ["ci"]
       48 NEWTABLE                         R8 0 1
       50 GETTABLEKS                       R9 R0 K17 ["Src"]
       52 SETLIST                          R8 R9 1 [1]
       54 CALL                             R5 3 1
       55 NAMECALL                         R5 R5 K21 ["awaitStatus"]
       57 CALL                             R5 1 2
       58 JUMPIFNOTEQKS                    R5 K22 ["Rejected"] ; [+5]
       60 GETIMPORT                        R7 K24 [print]
       62 MOVE                             R8 R6
       63 CALL                             R7 1 0
       64 JUMPIFNOTEQKS                    R5 K25 ["Resolved"] ; [+17]
       66 GETTABLEKS                       R8 R6 K26 ["results"]
       68 GETTABLEKS                       R7 R8 K27 ["numFailedTestSuites"]
       70 JUMPIFNOTEQKN                    R7 K28 [0] ; [+11]
       72 GETTABLEKS                       R8 R6 K26 ["results"]
       74 GETTABLEKS                       R7 R8 K29 ["numFailedTests"]
       76 JUMPIFNOTEQKN                    R7 K28 [0] ; [+5]
       78 LOADN                            R9 0
       79 NAMECALL                         R7 R2 K30 ["ExitAsync"]
       81 CALL                             R7 2 0
       82 GETUPVAL                         R7 0
       83 LOADK                            R9 K31 ["Jest 3 test run failed"]
       84 NAMECALL                         R7 R7 K32 ["Error"]
       86 CALL                             R7 2 0
       87 LOADN                            R9 1
       88 NAMECALL                         R7 R2 K30 ["ExitAsync"]
       90 CALL                             R7 2 0
       91 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TestService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
