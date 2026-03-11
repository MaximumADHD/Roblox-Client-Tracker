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
       41 DUPTABLE                         R7 K21 [{"verbose", "ci", "testNamePattern"}]
       42 LOADB                            R8 0
       43 SETTABLEKS                       R8 R7 K18 ["verbose"]
       45 LOADB                            R8 0
       46 SETTABLEKS                       R8 R7 K19 ["ci"]
       48 GETIMPORT                        R9 K7 [_G]
       50 GETTABLEKS                       R8 R9 K22 ["JEST_TEST_NAME_PATTERN"]
       52 SETTABLEKS                       R8 R7 K20 ["testNamePattern"]
       54 NEWTABLE                         R8 0 1
       56 GETTABLEKS                       R9 R0 K17 ["Src"]
       58 SETLIST                          R8 R9 1 [1]
       60 CALL                             R5 3 1
       61 NAMECALL                         R5 R5 K23 ["awaitStatus"]
       63 CALL                             R5 1 2
       64 JUMPIFNOTEQKS                    R5 K24 ["Rejected"] ; [+5]
       66 GETIMPORT                        R7 K26 [print]
       68 MOVE                             R8 R6
       69 CALL                             R7 1 0
       70 JUMPIFNOTEQKS                    R5 K27 ["Resolved"] ; [+17]
       72 GETTABLEKS                       R8 R6 K28 ["results"]
       74 GETTABLEKS                       R7 R8 K29 ["numFailedTestSuites"]
       76 JUMPIFNOTEQKN                    R7 K30 [0] ; [+11]
       78 GETTABLEKS                       R8 R6 K28 ["results"]
       80 GETTABLEKS                       R7 R8 K31 ["numFailedTests"]
       82 JUMPIFNOTEQKN                    R7 K30 [0] ; [+5]
       84 LOADN                            R9 0
       85 NAMECALL                         R7 R2 K32 ["ExitAsync"]
       87 CALL                             R7 2 0
       88 GETUPVAL                         R7 0
       89 LOADK                            R9 K33 ["Jest 3 test run failed"]
       90 NAMECALL                         R7 R7 K34 ["Error"]
       92 CALL                             R7 2 0
       93 LOADN                            R9 1
       94 NAMECALL                         R7 R2 K32 ["ExitAsync"]
       96 CALL                             R7 2 0
       97 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TestService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
