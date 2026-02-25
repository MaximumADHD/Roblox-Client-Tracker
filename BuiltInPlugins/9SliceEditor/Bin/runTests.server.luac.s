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
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R4 K1 [script]
       11 GETTABLEKS                       R3 R4 K2 ["Parent"]
       13 GETTABLEKS                       R2 R3 K5 ["defineFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K7 [pcall]
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CALL                             R1 1 2
       20 JUMPIFNOT                        R1 ; [+1]
       21 JUMPIF                           R2 ; [+1]
       22 RETURN                           R0 0
       23 GETIMPORT                        R3 K4 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R5 R6 K2 ["Parent"]
       29 GETTABLEKS                       R4 R5 K9 ["commonInit"]
       31 CALL                             R3 1 1
       32 MOVE                             R4 R3
       33 CALL                             R4 0 0
       34 GETIMPORT                        R4 K4 [require]
       36 GETTABLEKS                       R7 R0 K10 ["Src"]
       38 GETTABLEKS                       R6 R7 K11 ["Util"]
       40 GETTABLEKS                       R5 R6 K12 ["DebugFlags"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R4 K13 ["RunningUnderCLI"]
       45 CALL                             R5 0 1
       46 JUMPIF                           R5 ; [+4]
       47 GETTABLEKS                       R5 R4 K14 ["RunTests"]
       49 CALL                             R5 0 1
       50 JUMPIFNOT                        R5 ; [+64]
       51 GETIMPORT                        R5 K4 [require]
       53 GETTABLEKS                       R8 R0 K15 ["Packages"]
       55 GETTABLEKS                       R7 R8 K16 ["Dev"]
       57 GETTABLEKS                       R6 R7 K17 ["TestEZ"]
       59 CALL                             R5 1 1
       60 GETTABLEKS                       R6 R5 K18 ["TestBootstrap"]
       62 GETTABLEKS                       R8 R5 K19 ["Reporters"]
       64 GETTABLEKS                       R7 R8 K20 ["TeamCityReporter"]
       66 GETTABLEKS                       R9 R5 K19 ["Reporters"]
       68 GETTABLEKS                       R8 R9 K21 ["TextReporter"]
       70 GETIMPORT                        R11 K24 [_G]
       72 GETTABLEKS                       R10 R11 K22 ["TEAMCITY"]
       74 JUMPIFNOT                        R10 ; [+2]
       75 MOVE                             R9 R7
       76 JUMPIF                           R9 ; [+1]
       77 MOVE                             R9 R8
       78 GETTABLEKS                       R10 R0 K10 ["Src"]
       80 GETIMPORT                        R11 K26 [print]
       82 LOADK                            R13 K27 ["----- All "]
       83 GETTABLEKS                       R14 R0 K28 ["Name"]
       85 LOADK                            R15 K29 [" Tests ------"]
       86 CONCAT                           R12 R13 R15
       87 CALL                             R11 1 0
       88 GETIMPORT                        R11 K31 [tick]
       90 CALL                             R11 0 1
       91 NEWTABLE                         R14 0 1
       93 MOVE                             R15 R10
       94 SETLIST                          R14 R15 1 [1]
       96 MOVE                             R15 R9
       97 NAMECALL                         R12 R6 K32 ["run"]
       99 CALL                             R12 3 0
      100 GETIMPORT                        R12 K26 [print]
      102 GETIMPORT                        R13 K35 [string.format]
      104 LOADK                            R14 K36 ["Completed in %.3f s"]
      105 GETIMPORT                        R16 K31 [tick]
      107 CALL                             R16 0 1
      108 SUB                              R15 R16 R11
      109 CALL                             R13 2 -1
      110 CALL                             R12 -1 0
      111 GETIMPORT                        R12 K26 [print]
      113 LOADK                            R13 K37 ["----------------------------------"]
      114 CALL                             R12 1 0
      115 GETTABLEKS                       R5 R4 K13 ["RunningUnderCLI"]
      117 CALL                             R5 0 1
      118 JUMPIFNOT                        R5 ; [+4]
      119 GETIMPORT                        R5 K7 [pcall]
      121 DUPCLOSURE                       R6 K38 [PROTO_1]
      122 CALL                             R5 1 0
      123 RETURN                           R0 0
