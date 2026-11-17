PROTO_0:
        0 GETIMPORT                        R0 K1 [plugin]
        2 LOADK                            R2 K2 ["FTFUtil"]
        3 NAMECALL                         R0 R0 K3 ["GetPluginComponent"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Tests"]
        9 DUPCLOSURE                       R3 K4 [PROTO_0]
       10 FASTPCALL                        pcall 1 ; [+2]
       11 GETIMPORT                        R2 K6 [pcall]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R4 K7 [PROTO_1]
       15 FASTPCALL                        pcall 1 ; [+2]
       16 GETIMPORT                        R3 K6 [pcall]
       18 CALL                             R3 1 1
       19 JUMPIF                           R2 ; [+1]
       20 JUMP                             ; [+79]
       21 GETIMPORT                        R4 K9 [_G]
       23 LOADB                            R5 1
       24 SETTABLEKS                       R5 R4 K10 ["__ROACT_17_MOCK_SCHEDULER__"]
       26 GETIMPORT                        R4 K12 [require]
       28 GETTABLEKS                       R5 R0 K13 ["Packages"]
       30 GETTABLEKS                       R5 R5 K14 ["Dev"]
       32 GETTABLEKS                       R5 R5 K15 ["Jest"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K12 [require]
       37 GETTABLEKS                       R6 R0 K13 ["Packages"]
       39 GETTABLEKS                       R6 R6 K16 ["TestLoader"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K17 ["runJestAsync"]
       44 DUPTABLE                         R7 K22 [{"Jest", "suiteName", "rootDir", "projects", "options"}]
       45 SETTABLEKS                       R4 R7 K15 ["Jest"]
       47 GETTABLEKS                       R8 R0 K23 ["Name"]
       49 SETTABLEKS                       R8 R7 K18 ["suiteName"]
       51 SETTABLEKS                       R1 R7 K19 ["rootDir"]
       53 NEWTABLE                         R8 0 1
       55 MOVE                             R9 R1
       56 SETLIST                          R8 R9 1 [1]
       58 SETTABLEKS                       R8 R7 K20 ["projects"]
       60 DUPTABLE                         R8 K25 [{"reporters"}]
       61 NEWTABLE                         R9 0 0
       63 SETTABLEKS                       R9 R8 K24 ["reporters"]
       65 SETTABLEKS                       R8 R7 K21 ["options"]
       67 CALL                             R6 1 2
       68 JUMPIFNOTEQKS                    R6 K26 ["Resolved"] ; [+15]
       70 GETTABLEKS                       R8 R7 K27 ["results"]
       72 GETTABLEKS                       R8 R8 K28 ["numFailedTestSuites"]
       74 LOADN                            R9 0
       75 JUMPIFLT                         R9 R8 ; [+8]
       77 GETTABLEKS                       R8 R7 K27 ["results"]
       79 GETTABLEKS                       R8 R8 K29 ["numFailedTests"]
       81 LOADN                            R9 0
       82 JUMPIFNOTLT                      R9 R8 ; [+17]
       84 JUMPIFNOTEQKS                    R6 K30 ["Rejected"] ; [+5]
       86 GETIMPORT                        R8 K32 [print]
       88 MOVE                             R9 R7
       89 CALL                             R8 1 0
       90 GETIMPORT                        R8 K34 [game]
       92 LOADK                            R10 K35 ["TestService"]
       93 NAMECALL                         R8 R8 K36 ["GetService"]
       95 CALL                             R8 2 1
       96 LOADK                            R10 K37 ["Jest 3 test run failed"]
       97 NAMECALL                         R8 R8 K38 ["Error"]
       99 CALL                             R8 2 0
      100 JUMPIFNOT                        R3 ; [+10]
      101 GETIMPORT                        R4 K34 [game]
      103 LOADK                            R6 K39 ["ProcessService"]
      104 NAMECALL                         R4 R4 K36 ["GetService"]
      106 CALL                             R4 2 1
      107 LOADN                            R6 0
      108 NAMECALL                         R4 R4 K40 ["ExitAsync"]
      110 CALL                             R4 2 0
      111 RETURN                           R0 0
