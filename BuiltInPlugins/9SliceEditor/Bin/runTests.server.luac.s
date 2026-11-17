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
        6 LOADN                            R2 0
        7 NAMECALL                         R0 R0 K4 ["ExitAsync"]
        9 CALL                             R0 2 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["defineFlags"]
       15 CALL                             R1 1 0
       16 DUPCLOSURE                       R2 K6 [PROTO_0]
       17 FASTPCALL                        pcall 1 ; [+2]
       18 GETIMPORT                        R1 K8 [pcall]
       20 CALL                             R1 1 2
       21 JUMPIFNOT                        R1 ; [+1]
       22 JUMPIF                           R2 ; [+1]
       23 RETURN                           R0 0
       24 GETIMPORT                        R3 K4 [require]
       26 GETIMPORT                        R4 K1 [script]
       28 GETTABLEKS                       R4 R4 K2 ["Parent"]
       30 GETTABLEKS                       R4 R4 K9 ["commonInit"]
       32 CALL                             R3 1 1
       33 MOVE                             R4 R3
       34 CALL                             R4 0 0
       35 GETIMPORT                        R4 K4 [require]
       37 GETTABLEKS                       R5 R0 K10 ["Src"]
       39 GETTABLEKS                       R5 R5 K11 ["Util"]
       41 GETTABLEKS                       R5 R5 K12 ["DebugFlags"]
       43 CALL                             R4 1 1
       44 GETTABLEKS                       R5 R4 K13 ["RunningUnderCLI"]
       46 CALL                             R5 0 1
       47 JUMPIF                           R5 ; [+4]
       48 GETTABLEKS                       R5 R4 K14 ["RunTests"]
       50 CALL                             R5 0 1
       51 JUMPIFNOT                        R5 ; [+64]
       52 GETIMPORT                        R5 K4 [require]
       54 GETTABLEKS                       R6 R0 K15 ["Packages"]
       56 GETTABLEKS                       R6 R6 K16 ["Dev"]
       58 GETTABLEKS                       R6 R6 K17 ["TestEZ"]
       60 CALL                             R5 1 1
       61 GETTABLEKS                       R6 R5 K18 ["TestBootstrap"]
       63 GETTABLEKS                       R7 R5 K19 ["Reporters"]
       65 GETTABLEKS                       R7 R7 K20 ["TeamCityReporter"]
       67 GETTABLEKS                       R8 R5 K19 ["Reporters"]
       69 GETTABLEKS                       R8 R8 K21 ["TextReporter"]
       71 GETIMPORT                        R11 K24 [_G]
       73 GETTABLEKS                       R10 R11 K22 ["TEAMCITY"]
       75 JUMPIFNOT                        R10 ; [+2]
       76 MOVE                             R9 R7
       77 JUMPIF                           R9 ; [+1]
       78 MOVE                             R9 R8
       79 GETTABLEKS                       R10 R0 K10 ["Src"]
       81 GETIMPORT                        R11 K26 [print]
       83 LOADK                            R13 K27 ["----- All "]
       84 GETTABLEKS                       R14 R0 K28 ["Name"]
       86 LOADK                            R15 K29 [" Tests ------"]
       87 CONCAT                           R12 R13 R15
       88 CALL                             R11 1 0
       89 GETIMPORT                        R11 K31 [tick]
       91 CALL                             R11 0 1
       92 NEWTABLE                         R14 0 1
       94 MOVE                             R15 R10
       95 SETLIST                          R14 R15 1 [1]
       97 MOVE                             R15 R9
       98 NAMECALL                         R12 R6 K32 ["run"]
      100 CALL                             R12 3 0
      101 GETIMPORT                        R12 K26 [print]
      103 GETIMPORT                        R13 K35 [string.format]
      105 LOADK                            R14 K36 ["Completed in %.3f s"]
      106 GETIMPORT                        R16 K31 [tick]
      108 CALL                             R16 0 1
      109 SUB                              R15 R16 R11
      110 CALL                             R13 2 -1
      111 CALL                             R12 -1 0
      112 GETIMPORT                        R12 K26 [print]
      114 LOADK                            R13 K37 ["----------------------------------"]
      115 CALL                             R12 1 0
      116 GETTABLEKS                       R5 R4 K13 ["RunningUnderCLI"]
      118 CALL                             R5 0 1
      119 JUMPIFNOT                        R5 ; [+5]
      120 DUPCLOSURE                       R6 K38 [PROTO_1]
      121 FASTPCALL                        pcall 1 ; [+2]
      122 GETIMPORT                        R5 K8 [pcall]
      124 CALL                             R5 1 0
      125 RETURN                           R0 0
