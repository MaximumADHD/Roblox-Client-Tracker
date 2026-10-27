PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 LOADN                            R2 1
        7 NAMECALL                         R0 R0 K4 ["ExitAsync"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 LOADN                            R2 0
        7 NAMECALL                         R0 R0 K4 ["ExitAsync"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["defineLuaFlags"]
       17 CALL                             R1 1 0
       18 GETIMPORT                        R1 K9 [game]
       20 LOADK                            R3 K10 ["Workspace"]
       21 NAMECALL                         R1 R1 K11 ["GetService"]
       23 CALL                             R1 2 1
       24 LOADK                            R3 K12 ["PluginManagementFlags"]
       25 NAMECALL                         R1 R1 K13 ["FindFirstChild"]
       27 CALL                             R1 2 1
       28 JUMPIFNOT                        R1 ; [+15]
       29 LOADK                            R4 K14 ["RunUnitTests"]
       30 NAMECALL                         R2 R1 K13 ["FindFirstChild"]
       32 CALL                             R2 2 1
       33 JUMPIFNOT                        R2 ; [+10]
       34 GETTABLEKS                       R2 R1 K14 ["RunUnitTests"]
       36 GETTABLEKS                       R2 R2 K15 ["Value"]
       38 JUMPIFNOT                        R2 ; [+5]
       39 GETIMPORT                        R2 K17 [_G]
       41 LOADB                            R3 1
       42 SETTABLEKS                       R3 R2 K18 ["__ROACT_17_COMPAT_LEGACY_ROOT__"]
       44 GETTABLEKS                       R2 R0 K5 ["Src"]
       46 GETIMPORT                        R3 K4 [require]
       48 GETTABLEKS                       R4 R0 K5 ["Src"]
       50 GETTABLEKS                       R4 R4 K19 ["Util"]
       52 GETTABLEKS                       R4 R4 K20 ["isCli"]
       54 CALL                             R3 1 1
       55 LOADB                            R4 0
       56 MOVE                             R5 R3
       57 CALL                             R5 0 1
       58 JUMPIFNOT                        R5 ; [+1]
       59 LOADB                            R4 1
       60 JUMPIFNOT                        R4 ; [+78]
       61 GETIMPORT                        R5 K4 [require]
       63 GETTABLEKS                       R6 R0 K21 ["Packages"]
       65 GETTABLEKS                       R6 R6 K22 ["Dev"]
       67 GETTABLEKS                       R6 R6 K23 ["Jest"]
       69 CALL                             R5 1 1
       70 GETIMPORT                        R6 K4 [require]
       72 GETTABLEKS                       R7 R0 K21 ["Packages"]
       74 GETTABLEKS                       R7 R7 K24 ["TestLoader"]
       76 CALL                             R6 1 1
       77 GETTABLEKS                       R7 R6 K25 ["runJestAsync"]
       79 DUPTABLE                         R8 K30 [{"Jest", "suiteName", "rootDir", "projects", "options"}]
       80 SETTABLEKS                       R5 R8 K23 ["Jest"]
       82 GETTABLEKS                       R9 R0 K31 ["Name"]
       84 SETTABLEKS                       R9 R8 K26 ["suiteName"]
       86 SETTABLEKS                       R2 R8 K27 ["rootDir"]
       88 NEWTABLE                         R9 0 1
       90 MOVE                             R10 R2
       91 SETLIST                          R9 R10 1 [1]
       93 SETTABLEKS                       R9 R8 K28 ["projects"]
       95 DUPTABLE                         R9 K35 [{["ci"] = True, ["verbose"] = True}]
       96 SETTABLEKS                       R9 R8 K29 ["options"]
       98 CALL                             R7 1 2
       99 JUMPIFNOTEQKS                    R7 K36 ["Resolved"] ; [+15]
      101 GETTABLEKS                       R9 R8 K37 ["results"]
      103 GETTABLEKS                       R9 R9 K38 ["numFailedTestSuites"]
      105 LOADN                            R10 0
      106 JUMPIFLT                         R10 R9 ; [+8]
      108 GETTABLEKS                       R9 R8 K37 ["results"]
      110 GETTABLEKS                       R9 R9 K39 ["numFailedTests"]
      112 LOADN                            R10 0
      113 JUMPIFNOTLT                      R10 R9 ; [+25]
      115 JUMPIFNOTEQKS                    R7 K40 ["Rejected"] ; [+5]
      117 GETIMPORT                        R9 K42 [print]
      119 MOVE                             R10 R8
      120 CALL                             R9 1 0
      121 GETIMPORT                        R9 K9 [game]
      123 LOADK                            R11 K43 ["TestService"]
      124 NAMECALL                         R9 R9 K11 ["GetService"]
      126 CALL                             R9 2 1
      127 LOADK                            R11 K44 ["Jest 3 test run failed"]
      128 NAMECALL                         R9 R9 K45 ["Error"]
      130 CALL                             R9 2 0
      131 MOVE                             R9 R3
      132 CALL                             R9 0 1
      133 JUMPIFNOT                        R9 ; [+4]
      134 GETIMPORT                        R9 K47 [pcall]
      136 DUPCLOSURE                       R10 K48 [PROTO_0]
      137 CALL                             R9 1 0
      138 RETURN                           R0 0
      139 MOVE                             R5 R3
      140 CALL                             R5 0 1
      141 JUMPIFNOT                        R5 ; [+4]
      142 GETIMPORT                        R5 K47 [pcall]
      144 DUPCLOSURE                       R6 K49 [PROTO_1]
      145 CALL                             R5 1 0
      146 RETURN                           R0 0
