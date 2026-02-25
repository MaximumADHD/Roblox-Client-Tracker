MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K3 ["Tests"]
        9 GETTABLEKS                       R3 R0 K4 ["Packages"]
       11 GETTABLEKS                       R2 R3 K5 ["DraggerFramework"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R5 R2 K8 ["Utility"]
       17 GETTABLEKS                       R4 R5 K9 ["isFTF"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R6 R2 K8 ["Utility"]
       24 GETTABLEKS                       R5 R6 K10 ["isCli"]
       26 CALL                             R4 1 1
       27 MOVE                             R5 R3
       28 CALL                             R5 0 1
       29 JUMPIF                           R5 ; [+1]
       30 JUMP                             ; [+58]
       31 GETIMPORT                        R5 K7 [require]
       33 GETTABLEKS                       R8 R0 K4 ["Packages"]
       35 GETTABLEKS                       R7 R8 K11 ["Dev"]
       37 GETTABLEKS                       R6 R7 K12 ["Jest"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R5 K13 ["runCLI"]
       42 MOVE                             R7 R1
       43 NEWTABLE                         R8 0 0
       45 NEWTABLE                         R9 0 2
       47 GETTABLEKS                       R10 R1 K14 ["DraggerSchemaCore"]
       49 GETTABLEKS                       R11 R1 K5 ["DraggerFramework"]
       51 SETLIST                          R9 R10 2 [1]
       53 CALL                             R6 3 1
       54 NAMECALL                         R6 R6 K15 ["awaitStatus"]
       56 CALL                             R6 1 2
       57 JUMPIFNOTEQKS                    R6 K16 ["Resolved"] ; [+15]
       59 GETTABLEKS                       R9 R7 K17 ["results"]
       61 GETTABLEKS                       R8 R9 K18 ["numFailedTestSuites"]
       63 LOADN                            R9 0
       64 JUMPIFLT                         R9 R8 ; [+8]
       66 GETTABLEKS                       R9 R7 K17 ["results"]
       68 GETTABLEKS                       R8 R9 K19 ["numFailedTests"]
       70 LOADN                            R9 0
       71 JUMPIFNOTLT                      R9 R8 ; [+17]
       73 JUMPIFNOTEQKS                    R6 K20 ["Rejected"] ; [+5]
       75 GETIMPORT                        R8 K22 [print]
       77 MOVE                             R9 R7
       78 CALL                             R8 1 0
       79 GETIMPORT                        R8 K24 [game]
       81 LOADK                            R10 K25 ["TestService"]
       82 NAMECALL                         R8 R8 K26 ["GetService"]
       84 CALL                             R8 2 1
       85 LOADK                            R10 K27 ["Jest 3 test run failed"]
       86 NAMECALL                         R8 R8 K28 ["Error"]
       88 CALL                             R8 2 0
       89 MOVE                             R5 R4
       90 CALL                             R5 0 1
       91 JUMPIFNOT                        R5 ; [+10]
       92 GETIMPORT                        R5 K24 [game]
       94 LOADK                            R7 K29 ["ProcessService"]
       95 NAMECALL                         R5 R5 K26 ["GetService"]
       97 CALL                             R5 2 1
       98 LOADN                            R7 0
       99 NAMECALL                         R5 R5 K30 ["ExitAsync"]
      101 CALL                             R5 2 0
      102 RETURN                           R0 0
