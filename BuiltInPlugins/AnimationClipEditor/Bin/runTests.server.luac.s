PROTO_0:
        0 GETIMPORT                        R1 K1 [require]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K2 ["Packages"]
        5 GETTABLEKS                       R2 R2 K3 ["Dev"]
        7 GETTABLEKS                       R2 R2 K4 ["Jest"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K1 [require]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["Packages"]
       15 GETTABLEKS                       R3 R3 K5 ["TestLoader"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K6 ["runJestAsync"]
       20 DUPTABLE                         R4 K11 [{"Jest", "suiteName", "rootDir", "projects", "options"}]
       21 SETTABLEKS                       R1 R4 K4 ["Jest"]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K12 ["Name"]
       26 SETTABLEKS                       R5 R4 K7 ["suiteName"]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K13 ["Src"]
       31 SETTABLEKS                       R5 R4 K8 ["rootDir"]
       33 SETTABLEKS                       R0 R4 K9 ["projects"]
       35 DUPTABLE                         R5 K19 [{["ci"] = True, ["verbose"] = True, ["testTimeout"] = 30000}]
       36 SETTABLEKS                       R5 R4 K10 ["options"]
       38 CALL                             R3 1 2
       39 JUMPIFNOTEQKS                    R3 K20 ["Resolved"] ; [+15]
       41 GETTABLEKS                       R5 R4 K21 ["results"]
       43 GETTABLEKS                       R5 R5 K22 ["numFailedTestSuites"]
       45 LOADN                            R6 0
       46 JUMPIFLT                         R6 R5 ; [+8]
       48 GETTABLEKS                       R5 R4 K21 ["results"]
       50 GETTABLEKS                       R5 R5 K23 ["numFailedTests"]
       52 LOADN                            R6 0
       53 JUMPIFNOTLT                      R6 R5 ; [+19]
       55 JUMPIFNOTEQKS                    R3 K24 ["Rejected"] ; [+5]
       57 GETIMPORT                        R5 K26 [print]
       59 MOVE                             R6 R4
       60 CALL                             R5 1 0
       61 GETIMPORT                        R5 K28 [game]
       63 LOADK                            R7 K29 ["TestService"]
       64 NAMECALL                         R5 R5 K30 ["GetService"]
       66 CALL                             R5 2 1
       67 LOADK                            R7 K31 ["Jest 3 test run failed"]
       68 NAMECALL                         R5 R5 K32 ["Error"]
       70 CALL                             R5 2 0
       71 LOADB                            R5 0
       72 RETURN                           R5 1
       73 LOADB                            R5 1
       74 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 LOADK                            R2 K6 ["AnimationClipEditor"]
       13 NAMECALL                         R0 R0 K7 ["FindFirstAncestor"]
       15 CALL                             R0 2 1
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R2 R0 K8 ["Src"]
       20 GETTABLEKS                       R2 R2 K9 ["Util"]
       22 GETTABLEKS                       R2 R2 K10 ["DebugFlags"]
       24 CALL                             R1 1 1
       25 DUPCLOSURE                       R2 K11 [PROTO_0]
       26 CAPTURE                          VAL R0
       27 GETTABLEKS                       R3 R1 K12 ["RunTests"]
       29 CALL                             R3 0 1
       30 GETTABLEKS                       R4 R1 K13 ["RunRhodiumTests"]
       32 CALL                             R4 0 1
       33 JUMPIF                           R3 ; [+1]
       34 JUMPIFNOT                        R4 ; [+51]
       35 GETIMPORT                        R5 K15 [_G]
       37 LOADB                            R6 1
       38 SETTABLEKS                       R6 R5 K16 ["__ROACT_17_COMPAT_LEGACY_ROOT__"]
       40 NEWTABLE                         R5 0 0
       42 JUMPIFNOT                        R3 ; [+8]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       47 MOVE                             R7 R5
       48 GETIMPORT                        R6 K19 [table.insert]
       50 CALL                             R6 2 0
       51 JUMPIFNOT                        R4 ; [+14]
       52 GETIMPORT                        R6 K15 [_G]
       54 GETIMPORT                        R7 K21 [plugin]
       56 SETTABLEKS                       R7 R6 K22 ["__ANIMATION_CLIP_EDITOR_TEST_PLUGIN__"]
       58 GETTABLEKS                       R8 R0 K23 ["RhodiumTests"]
       60 FASTCALL2                        TABLE_INSERT R5 R8 ; [+4]
       62 MOVE                             R7 R5
       63 GETIMPORT                        R6 K19 [table.insert]
       65 CALL                             R6 2 0
       66 MOVE                             R6 R2
       67 MOVE                             R7 R5
       68 CALL                             R6 1 1
       69 GETTABLEKS                       R7 R1 K24 ["RunningUnderCLI"]
       71 CALL                             R7 0 1
       72 JUMPIFNOT                        R7 ; [+13]
       73 GETIMPORT                        R7 K26 [game]
       75 LOADK                            R9 K27 ["ProcessService"]
       76 NAMECALL                         R7 R7 K28 ["GetService"]
       78 CALL                             R7 2 1
       79 JUMPIFNOT                        R6 ; [+2]
       80 LOADN                            R9 0
       81 JUMP                             ; [+1]
       82 LOADN                            R9 1
       83 NAMECALL                         R7 R7 K29 ["ExitAsync"]
       85 CALL                             R7 2 0
       86 RETURN                           R0 0
