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
        9 GETIMPORT                        R2 K5 [pcall]
       11 DUPCLOSURE                       R3 K6 [PROTO_0]
       12 CALL                             R2 1 1
       13 GETIMPORT                        R3 K5 [pcall]
       15 DUPCLOSURE                       R4 K7 [PROTO_1]
       16 CALL                             R3 1 1
       17 JUMPIF                           R2 ; [+1]
       18 JUMP                             ; [+79]
       19 GETIMPORT                        R4 K9 [_G]
       21 LOADB                            R5 1
       22 SETTABLEKS                       R5 R4 K10 ["__ROACT_17_MOCK_SCHEDULER__"]
       24 GETIMPORT                        R4 K12 [require]
       26 GETTABLEKS                       R5 R0 K13 ["Packages"]
       28 GETTABLEKS                       R5 R5 K14 ["Dev"]
       30 GETTABLEKS                       R5 R5 K15 ["Jest"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K12 [require]
       35 GETTABLEKS                       R6 R0 K13 ["Packages"]
       37 GETTABLEKS                       R6 R6 K16 ["TestLoader"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R5 K17 ["runJestAsync"]
       42 DUPTABLE                         R7 K22 [{"Jest", "suiteName", "rootDir", "projects", "options"}]
       43 SETTABLEKS                       R4 R7 K15 ["Jest"]
       45 GETTABLEKS                       R8 R0 K23 ["Name"]
       47 SETTABLEKS                       R8 R7 K18 ["suiteName"]
       49 SETTABLEKS                       R1 R7 K19 ["rootDir"]
       51 NEWTABLE                         R8 0 1
       53 MOVE                             R9 R1
       54 SETLIST                          R8 R9 1 [1]
       56 SETTABLEKS                       R8 R7 K20 ["projects"]
       58 DUPTABLE                         R8 K25 [{"reporters"}]
       59 NEWTABLE                         R9 0 0
       61 SETTABLEKS                       R9 R8 K24 ["reporters"]
       63 SETTABLEKS                       R8 R7 K21 ["options"]
       65 CALL                             R6 1 2
       66 JUMPIFNOTEQKS                    R6 K26 ["Resolved"] ; [+15]
       68 GETTABLEKS                       R8 R7 K27 ["results"]
       70 GETTABLEKS                       R8 R8 K28 ["numFailedTestSuites"]
       72 LOADN                            R9 0
       73 JUMPIFLT                         R9 R8 ; [+8]
       75 GETTABLEKS                       R8 R7 K27 ["results"]
       77 GETTABLEKS                       R8 R8 K29 ["numFailedTests"]
       79 LOADN                            R9 0
       80 JUMPIFNOTLT                      R9 R8 ; [+17]
       82 JUMPIFNOTEQKS                    R6 K30 ["Rejected"] ; [+5]
       84 GETIMPORT                        R8 K32 [print]
       86 MOVE                             R9 R7
       87 CALL                             R8 1 0
       88 GETIMPORT                        R8 K34 [game]
       90 LOADK                            R10 K35 ["TestService"]
       91 NAMECALL                         R8 R8 K36 ["GetService"]
       93 CALL                             R8 2 1
       94 LOADK                            R10 K37 ["Jest 3 test run failed"]
       95 NAMECALL                         R8 R8 K38 ["Error"]
       97 CALL                             R8 2 0
       98 JUMPIFNOT                        R3 ; [+10]
       99 GETIMPORT                        R4 K34 [game]
      101 LOADK                            R6 K39 ["ProcessService"]
      102 NAMECALL                         R4 R4 K36 ["GetService"]
      104 CALL                             R4 2 1
      105 LOADN                            R6 0
      106 NAMECALL                         R4 R4 K40 ["ExitAsync"]
      108 CALL                             R4 2 0
      109 RETURN                           R0 0
