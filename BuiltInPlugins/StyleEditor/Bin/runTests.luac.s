PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [script]
        2 GETTABLEKS                       R0 R0 K2 ["Parent"]
        4 GETTABLEKS                       R0 R0 K2 ["Parent"]
        6 DUPCLOSURE                       R2 K3 [PROTO_0]
        7 FASTPCALL                        pcall 1 ; [+2]
        8 GETIMPORT                        R1 K5 [pcall]
       10 CALL                             R1 1 2
       11 JUMPIF                           R1 ; [+1]
       12 RETURN                           R0 0
       13 GETIMPORT                        R3 K7 [_G]
       15 LOADB                            R4 1
       16 SETTABLEKS                       R4 R3 K8 ["__DEV__"]
       18 GETIMPORT                        R3 K7 [_G]
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K9 ["__ROACT_17_MOCK_SCHEDULER__"]
       23 GETIMPORT                        R3 K7 [_G]
       25 LOADB                            R4 1
       26 SETTABLEKS                       R4 R3 K10 ["__ROACT_17_INLINE_ACT__"]
       28 GETIMPORT                        R3 K12 [require]
       30 GETTABLEKS                       R4 R0 K13 ["Packages"]
       32 GETTABLEKS                       R4 R4 K14 ["Dev"]
       34 GETTABLEKS                       R4 R4 K15 ["Jest"]
       36 CALL                             R3 1 1
       37 GETTABLEKS                       R4 R3 K16 ["runCLI"]
       39 MOVE                             R5 R4
       40 GETTABLEKS                       R6 R0 K17 ["Src"]
       42 DUPTABLE                         R7 K22 [{["verbose"] = False, ["ci"] = False, ["testNamePattern"]}]
       43 GETIMPORT                        R8 K7 [_G]
       45 GETTABLEKS                       R8 R8 K23 ["JEST_TEST_NAME_PATTERN"]
       47 SETTABLEKS                       R8 R7 K21 ["testNamePattern"]
       49 NEWTABLE                         R8 0 1
       51 GETTABLEKS                       R9 R0 K17 ["Src"]
       53 SETLIST                          R8 R9 1 [1]
       55 CALL                             R5 3 1
       56 NAMECALL                         R5 R5 K24 ["awaitStatus"]
       58 CALL                             R5 1 2
       59 JUMPIFNOTEQKS                    R5 K25 ["Rejected"] ; [+5]
       61 GETIMPORT                        R7 K27 [print]
       63 MOVE                             R8 R6
       64 CALL                             R7 1 0
       65 JUMPIFNOTEQKS                    R5 K28 ["Resolved"] ; [+17]
       67 GETTABLEKS                       R7 R6 K29 ["results"]
       69 GETTABLEKS                       R7 R7 K30 ["numFailedTestSuites"]
       71 JUMPIFNOTEQKN                    R7 K31 [0] ; [+11]
       73 GETTABLEKS                       R7 R6 K29 ["results"]
       75 GETTABLEKS                       R7 R7 K32 ["numFailedTests"]
       77 JUMPIFNOTEQKN                    R7 K31 [0] ; [+5]
       79 LOADN                            R9 0
       80 NAMECALL                         R7 R2 K33 ["ExitAsync"]
       82 CALL                             R7 2 0
       83 GETUPVAL                         R7 0
       84 LOADK                            R9 K34 ["Jest 3 test run failed"]
       85 NAMECALL                         R7 R7 K35 ["Error"]
       87 CALL                             R7 2 0
       88 LOADN                            R9 1
       89 NAMECALL                         R7 R2 K33 ["ExitAsync"]
       91 CALL                             R7 2 0
       92 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TestService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 RETURN                           R1 1
