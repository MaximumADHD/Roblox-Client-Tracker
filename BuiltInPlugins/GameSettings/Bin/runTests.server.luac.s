PROTO_0:
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
       13 GETTABLEKS                       R2 R3 K5 ["commonInit"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 CALL                             R2 0 0
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Src"]
       22 GETTABLEKS                       R4 R5 K7 ["Util"]
       24 GETTABLEKS                       R3 R4 K8 ["DebugFlags"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K9 ["RunningUnderCLI"]
       29 CALL                             R3 0 1
       30 JUMPIF                           R3 ; [+4]
       31 GETTABLEKS                       R3 R2 K10 ["RunTests"]
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+59]
       35 GETIMPORT                        R3 K4 [require]
       37 GETTABLEKS                       R6 R0 K11 ["Packages"]
       39 GETTABLEKS                       R5 R6 K12 ["Dev"]
       41 GETTABLEKS                       R4 R5 K13 ["TestEZ"]
       43 CALL                             R3 1 1
       44 GETTABLEKS                       R4 R3 K14 ["TestBootstrap"]
       46 GETTABLEKS                       R6 R3 K15 ["Reporters"]
       48 GETTABLEKS                       R5 R6 K16 ["TeamCityReporter"]
       50 GETTABLEKS                       R7 R3 K15 ["Reporters"]
       52 GETTABLEKS                       R6 R7 K17 ["TextReporter"]
       54 GETIMPORT                        R9 K20 [_G]
       56 GETTABLEKS                       R8 R9 K18 ["TEAMCITY"]
       58 JUMPIFNOT                        R8 ; [+2]
       59 MOVE                             R7 R5
       60 JUMPIF                           R7 ; [+1]
       61 MOVE                             R7 R6
       62 GETTABLEKS                       R8 R0 K6 ["Src"]
       64 GETIMPORT                        R9 K22 [print]
       66 LOADK                            R11 K23 ["----- All "]
       67 GETTABLEKS                       R12 R0 K24 ["Name"]
       69 LOADK                            R13 K25 [" Tests ------"]
       70 CONCAT                           R10 R11 R13
       71 CALL                             R9 1 0
       72 GETIMPORT                        R9 K4 [require]
       74 GETIMPORT                        R12 K1 [script]
       76 GETTABLEKS                       R11 R12 K2 ["Parent"]
       78 GETTABLEKS                       R10 R11 K26 ["defineLuaFlags"]
       80 CALL                             R9 1 0
       81 NEWTABLE                         R11 0 1
       83 MOVE                             R12 R8
       84 SETLIST                          R11 R12 1 [1]
       86 MOVE                             R12 R7
       87 NAMECALL                         R9 R4 K27 ["run"]
       89 CALL                             R9 3 0
       90 GETIMPORT                        R9 K22 [print]
       92 LOADK                            R10 K28 ["----------------------------------"]
       93 CALL                             R9 1 0
       94 GETTABLEKS                       R3 R2 K9 ["RunningUnderCLI"]
       96 CALL                             R3 0 1
       97 JUMPIFNOT                        R3 ; [+4]
       98 GETIMPORT                        R3 K30 [pcall]
      100 DUPCLOSURE                       R4 K31 [PROTO_0]
      101 CALL                             R3 1 0
      102 RETURN                           R0 0
