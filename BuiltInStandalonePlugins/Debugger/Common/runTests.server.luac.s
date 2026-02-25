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
        9 GETTABLEKS                       R4 R0 K5 ["Src"]
       11 GETTABLEKS                       R3 R4 K6 ["Util"]
       13 GETTABLEKS                       R2 R3 K7 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETIMPORT                        R5 K1 [script]
       20 GETTABLEKS                       R4 R5 K2 ["Parent"]
       22 GETTABLEKS                       R3 R4 K8 ["defineLuaFlags"]
       24 CALL                             R2 1 0
       25 GETTABLEKS                       R2 R1 K9 ["RunningUnderCLI"]
       27 CALL                             R2 0 1
       28 JUMPIF                           R2 ; [+4]
       29 GETTABLEKS                       R2 R1 K10 ["RunTests"]
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+70]
       33 GETIMPORT                        R2 K4 [require]
       35 GETIMPORT                        R5 K1 [script]
       37 GETTABLEKS                       R4 R5 K2 ["Parent"]
       39 GETTABLEKS                       R3 R4 K11 ["commonInit"]
       41 CALL                             R2 1 1
       42 MOVE                             R3 R2
       43 CALL                             R3 0 0
       44 GETIMPORT                        R3 K4 [require]
       46 GETTABLEKS                       R6 R0 K12 ["Packages"]
       48 GETTABLEKS                       R5 R6 K13 ["Dev"]
       50 GETTABLEKS                       R4 R5 K14 ["TestEZ"]
       52 CALL                             R3 1 1
       53 GETTABLEKS                       R4 R3 K15 ["TestBootstrap"]
       55 GETTABLEKS                       R6 R3 K16 ["Reporters"]
       57 GETTABLEKS                       R5 R6 K17 ["TeamCityReporter"]
       59 GETTABLEKS                       R7 R3 K16 ["Reporters"]
       61 GETTABLEKS                       R6 R7 K18 ["TextReporter"]
       63 GETIMPORT                        R9 K21 [_G]
       65 GETTABLEKS                       R8 R9 K19 ["TEAMCITY"]
       67 JUMPIFNOT                        R8 ; [+2]
       68 MOVE                             R7 R5
       69 JUMPIF                           R7 ; [+1]
       70 MOVE                             R7 R6
       71 GETTABLEKS                       R8 R0 K5 ["Src"]
       73 GETIMPORT                        R9 K23 [print]
       75 LOADK                            R11 K24 ["----- All "]
       76 GETTABLEKS                       R12 R0 K25 ["Name"]
       78 LOADK                            R13 K26 [" Tests ------"]
       79 CONCAT                           R10 R11 R13
       80 CALL                             R9 1 0
       81 GETIMPORT                        R9 K4 [require]
       83 GETIMPORT                        R12 K1 [script]
       85 GETTABLEKS                       R11 R12 K2 ["Parent"]
       87 GETTABLEKS                       R10 R11 K8 ["defineLuaFlags"]
       89 CALL                             R9 1 0
       90 NEWTABLE                         R11 0 1
       92 MOVE                             R12 R8
       93 SETLIST                          R11 R12 1 [1]
       95 MOVE                             R12 R7
       96 NAMECALL                         R9 R4 K27 ["run"]
       98 CALL                             R9 3 0
       99 GETIMPORT                        R9 K23 [print]
      101 LOADK                            R10 K28 ["----------------------------------"]
      102 CALL                             R9 1 0
      103 GETTABLEKS                       R2 R1 K9 ["RunningUnderCLI"]
      105 CALL                             R2 0 1
      106 JUMPIFNOT                        R2 ; [+4]
      107 GETIMPORT                        R2 K30 [pcall]
      109 DUPCLOSURE                       R3 K31 [PROTO_0]
      110 CALL                             R2 1 0
      111 RETURN                           R0 0
