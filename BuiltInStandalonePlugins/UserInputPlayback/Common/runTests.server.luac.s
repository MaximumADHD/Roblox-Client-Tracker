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
        7 GETIMPORT                        R1 K4 [pcall]
        9 DUPCLOSURE                       R2 K5 [PROTO_0]
       10 CALL                             R1 1 2
       11 JUMPIFNOT                        R1 ; [+2]
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R3 K7 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R4 K9 ["Util"]
       20 GETTABLEKS                       R4 R4 K10 ["DebugFlags"]
       22 CALL                             R3 1 1
       23 LOADB                            R4 0
       24 GETTABLEKS                       R5 R3 K11 ["RunningUnderCLI"]
       26 CALL                             R5 0 1
       27 JUMPIF                           R5 ; [+4]
       28 GETTABLEKS                       R5 R3 K12 ["RunTests"]
       30 CALL                             R5 0 1
       31 JUMPIFNOT                        R5 ; [+85]
       32 GETIMPORT                        R5 K7 [require]
       34 GETIMPORT                        R6 K1 [script]
       36 GETTABLEKS                       R6 R6 K2 ["Parent"]
       38 GETTABLEKS                       R6 R6 K13 ["commonInit"]
       40 CALL                             R5 1 1
       41 MOVE                             R6 R5
       42 CALL                             R6 0 0
       43 GETIMPORT                        R6 K7 [require]
       45 GETTABLEKS                       R7 R0 K14 ["Packages"]
       47 GETTABLEKS                       R7 R7 K15 ["Dev"]
       49 GETTABLEKS                       R7 R7 K16 ["Jest"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K7 [require]
       54 GETTABLEKS                       R8 R0 K14 ["Packages"]
       56 GETTABLEKS                       R8 R8 K17 ["TestLoader"]
       58 CALL                             R7 1 1
       59 GETTABLEKS                       R8 R7 K18 ["runJestAsync"]
       61 DUPTABLE                         R9 K23 [{"Jest", "suiteName", "rootDir", "projects", "options"}]
       62 SETTABLEKS                       R6 R9 K16 ["Jest"]
       64 GETTABLEKS                       R10 R0 K24 ["Name"]
       66 SETTABLEKS                       R10 R9 K19 ["suiteName"]
       68 GETTABLEKS                       R10 R0 K8 ["Src"]
       70 SETTABLEKS                       R10 R9 K20 ["rootDir"]
       72 NEWTABLE                         R10 0 1
       74 GETTABLEKS                       R11 R0 K8 ["Src"]
       76 SETLIST                          R10 R11 1 [1]
       78 SETTABLEKS                       R10 R9 K21 ["projects"]
       80 DUPTABLE                         R10 K28 [{["ci"] = True, ["verbose"] = True}]
       81 SETTABLEKS                       R10 R9 K22 ["options"]
       83 CALL                             R8 1 2
       84 JUMPIFNOTEQKS                    R8 K29 ["Resolved"] ; [+15]
       86 GETTABLEKS                       R10 R9 K30 ["results"]
       88 GETTABLEKS                       R10 R10 K31 ["numFailedTestSuites"]
       90 LOADN                            R11 0
       91 JUMPIFLT                         R11 R10 ; [+8]
       93 GETTABLEKS                       R10 R9 K30 ["results"]
       95 GETTABLEKS                       R10 R10 K32 ["numFailedTests"]
       97 LOADN                            R11 0
       98 JUMPIFNOTLT                      R11 R10 ; [+18]
      100 JUMPIFNOTEQKS                    R8 K33 ["Rejected"] ; [+5]
      102 GETIMPORT                        R10 K35 [print]
      104 MOVE                             R11 R9
      105 CALL                             R10 1 0
      106 GETIMPORT                        R10 K37 [game]
      108 LOADK                            R12 K38 ["TestService"]
      109 NAMECALL                         R10 R10 K39 ["GetService"]
      111 CALL                             R10 2 1
      112 LOADK                            R12 K40 ["Jest 3 test run failed"]
      113 NAMECALL                         R10 R10 K41 ["Error"]
      115 CALL                             R10 2 0
      116 LOADB                            R4 1
      117 GETTABLEKS                       R5 R3 K11 ["RunningUnderCLI"]
      119 CALL                             R5 0 1
      120 JUMPIFNOT                        R5 ; [+5]
      121 GETIMPORT                        R5 K4 [pcall]
      123 NEWCLOSURE                       R6 P1
      124 CAPTURE                          REF R4
      125 CALL                             R5 1 0
      126 CLOSEUPVALS                      R4
      127 RETURN                           R0 0
