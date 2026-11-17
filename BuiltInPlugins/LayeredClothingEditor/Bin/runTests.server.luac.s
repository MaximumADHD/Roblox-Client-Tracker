PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["Jest"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["Packages"]
       15 GETTABLEKS                       R2 R2 K5 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K6 ["runJestAsync"]
       20 DUPTABLE                         R3 K9 [{"Jest", "rootDir", "projects"}]
       21 SETTABLEKS                       R0 R3 K4 ["Jest"]
       23 GETUPVAL                         R4 0
       24 SETTABLEKS                       R4 R3 K7 ["rootDir"]
       26 NEWTABLE                         R4 0 3
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K10 ["Src"]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K2 ["Packages"]
       34 GETTABLEKS                       R6 R6 K11 ["_Index"]
       36 GETTABLEKS                       R6 R6 K12 ["AvatarToolsShared"]
       38 GETTABLEKS                       R6 R6 K12 ["AvatarToolsShared"]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R7 R7 K2 ["Packages"]
       43 GETTABLEKS                       R7 R7 K13 ["LuaMeshEditingModule"]
       45 SETLIST                          R4 R5 3 [1]
       47 SETTABLEKS                       R4 R3 K8 ["projects"]
       49 CALL                             R2 1 2
       50 JUMPIFNOTEQKS                    R2 K14 ["Resolved"] ; [+15]
       52 GETTABLEKS                       R4 R3 K15 ["results"]
       54 GETTABLEKS                       R4 R4 K16 ["numFailedTestSuites"]
       56 LOADN                            R5 0
       57 JUMPIFLT                         R5 R4 ; [+8]
       59 GETTABLEKS                       R4 R3 K15 ["results"]
       61 GETTABLEKS                       R4 R4 K17 ["numFailedTests"]
       63 LOADN                            R5 0
       64 JUMPIFNOTLT                      R5 R4 ; [+17]
       66 JUMPIFNOTEQKS                    R2 K18 ["Rejected"] ; [+5]
       68 GETIMPORT                        R4 K20 [print]
       70 MOVE                             R5 R3
       71 CALL                             R4 1 0
       72 GETIMPORT                        R4 K22 [game]
       74 LOADK                            R6 K23 ["TestService"]
       75 NAMECALL                         R4 R4 K24 ["GetService"]
       77 CALL                             R4 2 1
       78 LOADK                            R6 K25 ["Jest 3 test run failed"]
       79 NAMECALL                         R4 R4 K26 ["Error"]
       81 CALL                             R4 2 0
       82 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["TestEZ"]
        9 CALL                             R0 1 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["RhodiumTests"]
       13 GETTABLEKS                       R2 R0 K6 ["TestBootstrap"]
       15 GETTABLEKS                       R3 R0 K7 ["Reporters"]
       17 GETTABLEKS                       R3 R3 K8 ["TextReporter"]
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R1
       22 SETLIST                          R6 R7 1 [1]
       24 MOVE                             R7 R3
       25 LOADB                            R8 0
       26 LOADB                            R9 1
       27 NAMECALL                         R4 R2 K9 ["run"]
       29 CALL                             R4 5 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R2 K6 ["Util"]
       13 GETTABLEKS                       R2 R2 K7 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K8 [PROTO_0]
       17 CAPTURE                          VAL R0
       18 DUPCLOSURE                       R3 K9 [PROTO_1]
       19 CAPTURE                          VAL R0
       20 GETTABLEKS                       R4 R1 K10 ["RunTests"]
       22 CALL                             R4 0 1
       23 GETTABLEKS                       R5 R1 K11 ["RunRhodiumTests"]
       25 CALL                             R5 0 1
       26 JUMPIFNOT                        R4 ; [+11]
       27 GETIMPORT                        R6 K4 [require]
       29 GETIMPORT                        R7 K1 [script]
       31 GETTABLEKS                       R7 R7 K2 ["Parent"]
       33 GETTABLEKS                       R7 R7 K12 ["defineLuaFlags"]
       35 CALL                             R6 1 0
       36 MOVE                             R6 R2
       37 CALL                             R6 0 0
       38 JUMPIFNOT                        R5 ; [+20]
       39 GETIMPORT                        R6 K14 [print]
       41 LOADK                            R8 K15 ["----- All "]
       42 GETIMPORT                        R9 K1 [script]
       44 GETTABLEKS                       R9 R9 K2 ["Parent"]
       46 GETTABLEKS                       R9 R9 K2 ["Parent"]
       48 GETTABLEKS                       R9 R9 K16 ["Name"]
       50 LOADK                            R10 K17 [" Rhodium Tests ------"]
       51 CONCAT                           R7 R8 R10
       52 CALL                             R6 1 0
       53 MOVE                             R6 R3
       54 CALL                             R6 0 0
       55 GETIMPORT                        R6 K14 [print]
       57 LOADK                            R7 K18 ["----------------------------------"]
       58 CALL                             R6 1 0
       59 JUMPIF                           R4 ; [+1]
       60 JUMPIFNOT                        R5 ; [+10]
       61 GETIMPORT                        R6 K20 [game]
       63 LOADK                            R8 K21 ["ProcessService"]
       64 NAMECALL                         R6 R6 K22 ["GetService"]
       66 CALL                             R6 2 1
       67 LOADN                            R8 0
       68 NAMECALL                         R6 R6 K23 ["ExitAsync"]
       70 CALL                             R6 2 0
       71 RETURN                           R0 0
