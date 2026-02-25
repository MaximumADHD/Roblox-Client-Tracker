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
       16 GETTABLEKS                       R2 R1 K8 ["RunningUnderCLI"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+4]
       20 GETTABLEKS                       R2 R1 K9 ["RunTests"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+105]
       24 GETIMPORT                        R2 K4 [require]
       26 GETTABLEKS                       R5 R0 K10 ["Packages"]
       28 GETTABLEKS                       R4 R5 K11 ["Dev"]
       30 GETTABLEKS                       R3 R4 K12 ["TestEZ"]
       32 CALL                             R2 1 1
       33 GETTABLEKS                       R3 R2 K13 ["TestBootstrap"]
       35 GETTABLEKS                       R5 R2 K14 ["Reporters"]
       37 GETTABLEKS                       R4 R5 K15 ["TeamCityReporter"]
       39 GETTABLEKS                       R6 R2 K14 ["Reporters"]
       41 GETTABLEKS                       R5 R6 K16 ["TextReporter"]
       43 GETTABLEKS                       R6 R1 K17 ["LogTestsQuiet"]
       45 CALL                             R6 0 1
       46 JUMPIFNOT                        R6 ; [+4]
       47 GETTABLEKS                       R6 R2 K14 ["Reporters"]
       49 GETTABLEKS                       R5 R6 K18 ["TextReporterQuiet"]
       51 GETIMPORT                        R8 K21 [_G]
       53 GETTABLEKS                       R7 R8 K19 ["TEAMCITY"]
       55 JUMPIFNOT                        R7 ; [+2]
       56 MOVE                             R6 R4
       57 JUMPIF                           R6 ; [+1]
       58 MOVE                             R6 R5
       59 MOVE                             R5 R6
       60 GETIMPORT                        R6 K23 [print]
       62 LOADK                            R8 K24 ["----- All "]
       63 GETIMPORT                        R13 K1 [script]
       65 GETTABLEKS                       R12 R13 K2 ["Parent"]
       67 GETTABLEKS                       R11 R12 K2 ["Parent"]
       69 GETTABLEKS                       R9 R11 K25 ["Name"]
       71 LOADK                            R10 K26 [" Tests ------"]
       72 CONCAT                           R7 R8 R10
       73 CALL                             R6 1 0
       74 GETIMPORT                        R6 K4 [require]
       76 GETIMPORT                        R9 K1 [script]
       78 GETTABLEKS                       R8 R9 K2 ["Parent"]
       80 GETTABLEKS                       R7 R8 K27 ["defineLuaFlags"]
       82 CALL                             R6 1 0
       83 NEWTABLE                         R8 0 1
       85 GETTABLEKS                       R9 R0 K5 ["Src"]
       87 SETLIST                          R8 R9 1 [1]
       89 MOVE                             R9 R5
       90 NAMECALL                         R6 R3 K28 ["run"]
       92 CALL                             R6 3 0
       93 GETIMPORT                        R6 K23 [print]
       95 LOADK                            R7 K29 ["----------------------------------"]
       96 CALL                             R6 1 0
       97 GETTABLEKS                       R6 R1 K30 ["RunDeveloperFrameworkTests"]
       99 CALL                             R6 0 1
      100 JUMPIFNOT                        R6 ; [+28]
      101 GETIMPORT                        R6 K23 [print]
      103 LOADK                            R7 K31 [""]
      104 CALL                             R6 1 0
      105 GETIMPORT                        R6 K23 [print]
      107 LOADK                            R7 K32 ["----- All Developer Framework Tests ------"]
      108 CALL                             R6 1 0
      109 NEWTABLE                         R8 0 1
      111 GETTABLEKS                       R12 R0 K10 ["Packages"]
      113 GETTABLEKS                       R11 R12 K33 ["_Index"]
      115 GETTABLEKS                       R10 R11 K34 ["DeveloperFramework"]
      117 GETTABLEKS                       R9 R10 K34 ["DeveloperFramework"]
      119 SETLIST                          R8 R9 1 [1]
      121 MOVE                             R9 R5
      122 NAMECALL                         R6 R3 K28 ["run"]
      124 CALL                             R6 3 0
      125 GETIMPORT                        R6 K23 [print]
      127 LOADK                            R7 K29 ["----------------------------------"]
      128 CALL                             R6 1 0
      129 GETTABLEKS                       R2 R1 K8 ["RunningUnderCLI"]
      131 CALL                             R2 0 1
      132 JUMPIFNOT                        R2 ; [+4]
      133 GETIMPORT                        R2 K36 [pcall]
      135 DUPCLOSURE                       R3 K37 [PROTO_0]
      136 CALL                             R2 1 0
      137 RETURN                           R0 0
