PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R3 0
        7 JUMPIFNOT                        R3 ; [+2]
        8 LOADN                            R2 1
        9 JUMP                             ; [+1]
       10 LOADN                            R2 0
       11 NAMECALL                         R0 R0 K4 ["ExitAsync"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 DUPCLOSURE                       R2 K3 [PROTO_0]
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K5 [pcall]
       11 CALL                             R1 1 2
       12 JUMPIFNOT                        R1 ; [+2]
       13 JUMPIF                           R2 ; [+1]
       14 RETURN                           R0 0
       15 GETIMPORT                        R3 K7 [require]
       17 GETTABLEKS                       R4 R0 K8 ["Src"]
       19 GETTABLEKS                       R4 R4 K9 ["Util"]
       21 GETTABLEKS                       R4 R4 K10 ["DebugFlags"]
       23 CALL                             R3 1 1
       24 LOADB                            R4 0
       25 GETTABLEKS                       R5 R3 K11 ["RunningUnderCLI"]
       27 CALL                             R5 0 1
       28 JUMPIF                           R5 ; [+4]
       29 GETTABLEKS                       R5 R3 K12 ["RunTests"]
       31 CALL                             R5 0 1
       32 JUMPIFNOT                        R5 ; [+85]
       33 GETIMPORT                        R5 K7 [require]
       35 GETIMPORT                        R6 K1 [script]
       37 GETTABLEKS                       R6 R6 K2 ["Parent"]
       39 GETTABLEKS                       R6 R6 K13 ["commonInit"]
       41 CALL                             R5 1 1
       42 MOVE                             R6 R5
       43 CALL                             R6 0 0
       44 GETIMPORT                        R6 K7 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Packages"]
       48 GETTABLEKS                       R7 R7 K15 ["Dev"]
       50 GETTABLEKS                       R7 R7 K16 ["Jest"]
       52 CALL                             R6 1 1
       53 GETIMPORT                        R7 K7 [require]
       55 GETTABLEKS                       R8 R0 K14 ["Packages"]
       57 GETTABLEKS                       R8 R8 K17 ["TestLoader"]
       59 CALL                             R7 1 1
       60 GETTABLEKS                       R8 R7 K18 ["runJestAsync"]
       62 DUPTABLE                         R9 K23 [{"Jest", "suiteName", "rootDir", "projects", "options"}]
       63 SETTABLEKS                       R6 R9 K16 ["Jest"]
       65 GETTABLEKS                       R10 R0 K24 ["Name"]
       67 SETTABLEKS                       R10 R9 K19 ["suiteName"]
       69 GETTABLEKS                       R10 R0 K8 ["Src"]
       71 SETTABLEKS                       R10 R9 K20 ["rootDir"]
       73 NEWTABLE                         R10 0 1
       75 GETTABLEKS                       R11 R0 K8 ["Src"]
       77 SETLIST                          R10 R11 1 [1]
       79 SETTABLEKS                       R10 R9 K21 ["projects"]
       81 DUPTABLE                         R10 K28 [{["ci"] = True, ["verbose"] = True}]
       82 SETTABLEKS                       R10 R9 K22 ["options"]
       84 CALL                             R8 1 2
       85 JUMPIFNOTEQKS                    R8 K29 ["Resolved"] ; [+15]
       87 GETTABLEKS                       R10 R9 K30 ["results"]
       89 GETTABLEKS                       R10 R10 K31 ["numFailedTestSuites"]
       91 LOADN                            R11 0
       92 JUMPIFLT                         R11 R10 ; [+8]
       94 GETTABLEKS                       R10 R9 K30 ["results"]
       96 GETTABLEKS                       R10 R10 K32 ["numFailedTests"]
       98 LOADN                            R11 0
       99 JUMPIFNOTLT                      R11 R10 ; [+18]
      101 JUMPIFNOTEQKS                    R8 K33 ["Rejected"] ; [+5]
      103 GETIMPORT                        R10 K35 [print]
      105 MOVE                             R11 R9
      106 CALL                             R10 1 0
      107 GETIMPORT                        R10 K37 [game]
      109 LOADK                            R12 K38 ["TestService"]
      110 NAMECALL                         R10 R10 K39 ["GetService"]
      112 CALL                             R10 2 1
      113 LOADK                            R12 K40 ["Jest 3 test run failed"]
      114 NAMECALL                         R10 R10 K41 ["Error"]
      116 CALL                             R10 2 0
      117 LOADB                            R4 1
      118 GETTABLEKS                       R5 R3 K11 ["RunningUnderCLI"]
      120 CALL                             R5 0 1
      121 JUMPIFNOT                        R5 ; [+6]
      122 NEWCLOSURE                       R6 P1
      123 CAPTURE                          REF R4
      124 FASTPCALL                        pcall 1 ; [+2]
      125 GETIMPORT                        R5 K5 [pcall]
      127 CALL                             R5 1 0
      128 CLOSEUPVALS                      R4
      129 RETURN                           R0 0
