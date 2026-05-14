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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Src"]
       11 GETTABLEKS                       R2 R2 K6 ["Util"]
       13 GETTABLEKS                       R2 R2 K7 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["RunningUnderCLI"]
       18 CALL                             R2 0 1
       19 JUMPIF                           R2 ; [+4]
       20 GETTABLEKS                       R2 R1 K9 ["RunTests"]
       22 CALL                             R2 0 1
       23 JUMPIFNOT                        R2 ; [+107]
       24 GETIMPORT                        R2 K4 [require]
       26 GETTABLEKS                       R3 R0 K10 ["Packages"]
       28 GETTABLEKS                       R3 R3 K11 ["_Index"]
       30 GETTABLEKS                       R3 R3 K12 ["TestEZ"]
       32 GETTABLEKS                       R3 R3 K12 ["TestEZ"]
       34 CALL                             R2 1 1
       35 GETTABLEKS                       R3 R2 K13 ["TestBootstrap"]
       37 GETTABLEKS                       R4 R2 K14 ["Reporters"]
       39 GETTABLEKS                       R4 R4 K15 ["TeamCityReporter"]
       41 GETTABLEKS                       R5 R2 K14 ["Reporters"]
       43 GETTABLEKS                       R5 R5 K16 ["TextReporter"]
       45 GETTABLEKS                       R6 R1 K17 ["LogTestsQuiet"]
       47 CALL                             R6 0 1
       48 JUMPIFNOT                        R6 ; [+4]
       49 GETTABLEKS                       R6 R2 K14 ["Reporters"]
       51 GETTABLEKS                       R5 R6 K18 ["TextReporterQuiet"]
       53 GETIMPORT                        R8 K21 [_G]
       55 GETTABLEKS                       R7 R8 K19 ["TEAMCITY"]
       57 JUMPIFNOT                        R7 ; [+2]
       58 MOVE                             R6 R4
       59 JUMPIF                           R6 ; [+1]
       60 MOVE                             R6 R5
       61 MOVE                             R5 R6
       62 GETIMPORT                        R6 K23 [print]
       64 LOADK                            R8 K24 ["----- All "]
       65 GETIMPORT                        R9 K1 [script]
       67 GETTABLEKS                       R9 R9 K2 ["Parent"]
       69 GETTABLEKS                       R9 R9 K2 ["Parent"]
       71 GETTABLEKS                       R9 R9 K25 ["Name"]
       73 LOADK                            R10 K26 [" Tests ------"]
       74 CONCAT                           R7 R8 R10
       75 CALL                             R6 1 0
       76 GETIMPORT                        R6 K4 [require]
       78 GETIMPORT                        R7 K1 [script]
       80 GETTABLEKS                       R7 R7 K2 ["Parent"]
       82 GETTABLEKS                       R7 R7 K27 ["defineLuaFlags"]
       84 CALL                             R6 1 0
       85 NEWTABLE                         R8 0 1
       87 GETTABLEKS                       R9 R0 K5 ["Src"]
       89 SETLIST                          R8 R9 1 [1]
       91 MOVE                             R9 R5
       92 NAMECALL                         R6 R3 K28 ["run"]
       94 CALL                             R6 3 0
       95 GETIMPORT                        R6 K23 [print]
       97 LOADK                            R7 K29 ["----------------------------------"]
       98 CALL                             R6 1 0
       99 GETTABLEKS                       R6 R1 K30 ["RunDeveloperFrameworkTests"]
      101 CALL                             R6 0 1
      102 JUMPIFNOT                        R6 ; [+28]
      103 GETIMPORT                        R6 K23 [print]
      105 LOADK                            R7 K31 [""]
      106 CALL                             R6 1 0
      107 GETIMPORT                        R6 K23 [print]
      109 LOADK                            R7 K32 ["----- All Developer Framework Tests ------"]
      110 CALL                             R6 1 0
      111 NEWTABLE                         R8 0 1
      113 GETTABLEKS                       R9 R0 K10 ["Packages"]
      115 GETTABLEKS                       R9 R9 K11 ["_Index"]
      117 GETTABLEKS                       R9 R9 K33 ["DeveloperFramework"]
      119 GETTABLEKS                       R9 R9 K33 ["DeveloperFramework"]
      121 SETLIST                          R8 R9 1 [1]
      123 MOVE                             R9 R5
      124 NAMECALL                         R6 R3 K28 ["run"]
      126 CALL                             R6 3 0
      127 GETIMPORT                        R6 K23 [print]
      129 LOADK                            R7 K29 ["----------------------------------"]
      130 CALL                             R6 1 0
      131 GETTABLEKS                       R2 R1 K8 ["RunningUnderCLI"]
      133 CALL                             R2 0 1
      134 JUMPIFNOT                        R2 ; [+4]
      135 GETIMPORT                        R2 K35 [pcall]
      137 DUPCLOSURE                       R3 K36 [PROTO_0]
      138 CALL                             R2 1 0
      139 RETURN                           R0 0
