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
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [game]
        9 LOADK                            R3 K5 ["ImprovePluginSpeed_TagEditor"]
       10 NAMECALL                         R1 R1 K6 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+7]
       14 GETIMPORT                        R2 K8 [pcall]
       16 DUPCLOSURE                       R3 K9 [PROTO_0]
       17 CALL                             R2 1 2
       18 JUMPIFNOT                        R2 ; [+2]
       19 JUMPIF                           R3 ; [+1]
       20 RETURN                           R0 0
       21 GETIMPORT                        R2 K11 [require]
       23 GETTABLEKS                       R3 R0 K12 ["Src"]
       25 GETTABLEKS                       R3 R3 K13 ["Util"]
       27 GETTABLEKS                       R3 R3 K14 ["DebugFlags"]
       29 CALL                             R2 1 1
       30 GETTABLEKS                       R3 R2 K15 ["RunningUnderCLI"]
       32 CALL                             R3 0 1
       33 JUMPIF                           R3 ; [+4]
       34 GETTABLEKS                       R3 R2 K16 ["RunTests"]
       36 CALL                             R3 0 1
       37 JUMPIFNOT                        R3 ; [+77]
       38 JUMPIFNOT                        R1 ; [+11]
       39 GETIMPORT                        R3 K11 [require]
       41 GETIMPORT                        R4 K1 [script]
       43 GETTABLEKS                       R4 R4 K2 ["Parent"]
       45 GETTABLEKS                       R4 R4 K17 ["commonInit"]
       47 CALL                             R3 1 1
       48 MOVE                             R4 R3
       49 CALL                             R4 0 0
       50 GETIMPORT                        R3 K11 [require]
       52 GETTABLEKS                       R4 R0 K18 ["Packages"]
       54 GETTABLEKS                       R4 R4 K19 ["Dev"]
       56 GETTABLEKS                       R4 R4 K20 ["Jest"]
       58 CALL                             R3 1 1
       59 GETTABLEKS                       R3 R3 K21 ["runCLI"]
       61 GETIMPORT                        R4 K8 [pcall]
       63 DUPCLOSURE                       R5 K22 [PROTO_1]
       64 CALL                             R4 1 2
       65 MOVE                             R6 R3
       66 GETTABLEKS                       R7 R0 K12 ["Src"]
       68 DUPTABLE                         R8 K25 [{"verbose", "ci"}]
       69 LOADB                            R9 0
       70 SETTABLEKS                       R9 R8 K23 ["verbose"]
       72 LOADB                            R9 0
       73 SETTABLEKS                       R9 R8 K24 ["ci"]
       75 NEWTABLE                         R9 0 1
       77 GETTABLEKS                       R10 R0 K12 ["Src"]
       79 SETLIST                          R9 R10 1 [1]
       81 CALL                             R6 3 1
       82 NAMECALL                         R6 R6 K26 ["awaitStatus"]
       84 CALL                             R6 1 2
       85 JUMPIFNOTEQKS                    R6 K27 ["Rejected"] ; [+5]
       87 GETIMPORT                        R8 K29 [print]
       89 MOVE                             R9 R7
       90 CALL                             R8 1 0
       91 JUMPIFNOTEQKS                    R6 K30 ["Resolved"] ; [+18]
       93 GETTABLEKS                       R8 R7 K31 ["results"]
       95 GETTABLEKS                       R8 R8 K32 ["numFailedTestSuites"]
       97 JUMPIFNOTEQKN                    R8 K33 [0] ; [+12]
       99 GETTABLEKS                       R8 R7 K31 ["results"]
      101 GETTABLEKS                       R8 R8 K34 ["numFailedTests"]
      103 JUMPIFNOTEQKN                    R8 K33 [0] ; [+6]
      105 JUMPIFNOT                        R4 ; [+4]
      106 LOADN                            R10 0
      107 NAMECALL                         R8 R5 K35 ["ExitAsync"]
      109 CALL                             R8 2 0
      110 JUMPIFNOT                        R4 ; [+4]
      111 LOADN                            R10 1
      112 NAMECALL                         R8 R5 K35 ["ExitAsync"]
      114 CALL                             R8 2 0
      115 RETURN                           R0 0
