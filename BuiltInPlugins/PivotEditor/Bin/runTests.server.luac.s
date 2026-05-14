MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Packages"]
        9 GETTABLEKS                       R1 R1 K4 ["DraggerFramework"]
       11 GETTABLEKS                       R2 R0 K5 ["Tests"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R4 R1 K8 ["Utility"]
       17 GETTABLEKS                       R4 R4 K9 ["isFTF"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R5 R1 K8 ["Utility"]
       24 GETTABLEKS                       R5 R5 K10 ["isCli"]
       26 CALL                             R4 1 1
       27 MOVE                             R5 R3
       28 CALL                             R5 0 1
       29 JUMPIF                           R5 ; [+1]
       30 JUMP                             ; [+63]
       31 GETIMPORT                        R5 K12 [_G]
       33 LOADB                            R6 1
       34 SETTABLEKS                       R6 R5 K13 ["__ROACT_17_MOCK_SCHEDULER__"]
       36 GETIMPORT                        R5 K7 [require]
       38 GETTABLEKS                       R6 R0 K3 ["Packages"]
       40 GETTABLEKS                       R6 R6 K14 ["Dev"]
       42 GETTABLEKS                       R6 R6 K15 ["Jest"]
       44 CALL                             R5 1 1
       45 GETTABLEKS                       R6 R5 K16 ["runCLI"]
       47 MOVE                             R7 R2
       48 DUPTABLE                         R8 K18 [{"reporters"}]
       49 NEWTABLE                         R9 0 0
       51 SETTABLEKS                       R9 R8 K17 ["reporters"]
       53 NEWTABLE                         R9 0 1
       55 MOVE                             R10 R2
       56 SETLIST                          R9 R10 1 [1]
       58 CALL                             R6 3 1
       59 NAMECALL                         R6 R6 K19 ["awaitStatus"]
       61 CALL                             R6 1 2
       62 JUMPIFNOTEQKS                    R6 K20 ["Resolved"] ; [+15]
       64 GETTABLEKS                       R8 R7 K21 ["results"]
       66 GETTABLEKS                       R8 R8 K22 ["numFailedTestSuites"]
       68 LOADN                            R9 0
       69 JUMPIFLT                         R9 R8 ; [+8]
       71 GETTABLEKS                       R8 R7 K21 ["results"]
       73 GETTABLEKS                       R8 R8 K23 ["numFailedTests"]
       75 LOADN                            R9 0
       76 JUMPIFNOTLT                      R9 R8 ; [+17]
       78 JUMPIFNOTEQKS                    R6 K24 ["Rejected"] ; [+5]
       80 GETIMPORT                        R8 K26 [print]
       82 MOVE                             R9 R7
       83 CALL                             R8 1 0
       84 GETIMPORT                        R8 K28 [game]
       86 LOADK                            R10 K29 ["TestService"]
       87 NAMECALL                         R8 R8 K30 ["GetService"]
       89 CALL                             R8 2 1
       90 LOADK                            R10 K31 ["Jest 3 test run failed"]
       91 NAMECALL                         R8 R8 K32 ["Error"]
       93 CALL                             R8 2 0
       94 MOVE                             R5 R4
       95 CALL                             R5 0 1
       96 JUMPIFNOT                        R5 ; [+10]
       97 GETIMPORT                        R5 K28 [game]
       99 LOADK                            R7 K33 ["ProcessService"]
      100 NAMECALL                         R5 R5 K30 ["GetService"]
      102 CALL                             R5 2 1
      103 LOADN                            R7 0
      104 NAMECALL                         R5 R5 K34 ["ExitAsync"]
      106 CALL                             R5 2 0
      107 RETURN                           R0 0
