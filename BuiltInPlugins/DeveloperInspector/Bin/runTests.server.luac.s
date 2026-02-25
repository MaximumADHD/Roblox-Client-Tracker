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
       13 GETTABLEKS                       R2 R3 K7 ["commonInit"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 CALL                             R2 0 0
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K6 ["Util"]
       24 GETTABLEKS                       R3 R4 K8 ["DebugFlags"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K9 ["RunningUnderCLI"]
       29 CALL                             R3 0 1
       30 JUMPIF                           R3 ; [+4]
       31 GETTABLEKS                       R3 R2 K10 ["RunTests"]
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+88]
       35 GETIMPORT                        R3 K12 [_G]
       37 LOADB                            R4 1
       38 SETTABLEKS                       R4 R3 K13 ["__DEV__"]
       40 GETIMPORT                        R3 K12 [_G]
       42 LOADB                            R4 1
       43 SETTABLEKS                       R4 R3 K14 ["__ROACT_17_MOCK_SCHEDULER__"]
       45 GETIMPORT                        R3 K12 [_G]
       47 LOADB                            R4 1
       48 SETTABLEKS                       R4 R3 K15 ["__ROACT_17_INLINE_ACT__"]
       50 GETIMPORT                        R3 K4 [require]
       52 GETTABLEKS                       R6 R0 K16 ["Packages"]
       54 GETTABLEKS                       R5 R6 K17 ["Dev"]
       56 GETTABLEKS                       R4 R5 K18 ["TestEZ"]
       58 CALL                             R3 1 1
       59 GETTABLEKS                       R4 R3 K19 ["TestBootstrap"]
       61 GETTABLEKS                       R6 R3 K20 ["Reporters"]
       63 GETTABLEKS                       R5 R6 K21 ["TeamCityReporter"]
       65 GETTABLEKS                       R7 R3 K20 ["Reporters"]
       67 GETTABLEKS                       R6 R7 K22 ["TextReporter"]
       69 GETTABLEKS                       R7 R2 K23 ["LogTestsQuiet"]
       71 CALL                             R7 0 1
       72 JUMPIFNOT                        R7 ; [+4]
       73 GETTABLEKS                       R7 R3 K20 ["Reporters"]
       75 GETTABLEKS                       R6 R7 K24 ["TextReporterQuiet"]
       77 GETIMPORT                        R9 K12 [_G]
       79 GETTABLEKS                       R8 R9 K25 ["TEAMCITY"]
       81 JUMPIFNOT                        R8 ; [+2]
       82 MOVE                             R7 R5
       83 JUMPIF                           R7 ; [+1]
       84 MOVE                             R7 R6
       85 MOVE                             R6 R7
       86 GETIMPORT                        R7 K27 [print]
       88 LOADK                            R9 K28 ["----- All "]
       89 GETIMPORT                        R14 K1 [script]
       91 GETTABLEKS                       R13 R14 K2 ["Parent"]
       93 GETTABLEKS                       R12 R13 K2 ["Parent"]
       95 GETTABLEKS                       R10 R12 K29 ["Name"]
       97 LOADK                            R11 K30 [" Tests ------"]
       98 CONCAT                           R8 R9 R11
       99 CALL                             R7 1 0
      100 GETIMPORT                        R7 K4 [require]
      102 GETIMPORT                        R10 K1 [script]
      104 GETTABLEKS                       R9 R10 K2 ["Parent"]
      106 GETTABLEKS                       R8 R9 K31 ["defineLuaFlags"]
      108 CALL                             R7 1 0
      109 NEWTABLE                         R9 0 1
      111 GETTABLEKS                       R10 R0 K5 ["Src"]
      113 SETLIST                          R9 R10 1 [1]
      115 MOVE                             R10 R6
      116 NAMECALL                         R7 R4 K32 ["run"]
      118 CALL                             R7 3 0
      119 GETIMPORT                        R7 K27 [print]
      121 LOADK                            R8 K33 ["----------------------------------"]
      122 CALL                             R7 1 0
      123 GETTABLEKS                       R3 R2 K9 ["RunningUnderCLI"]
      125 CALL                             R3 0 1
      126 JUMPIFNOT                        R3 ; [+4]
      127 GETIMPORT                        R3 K35 [pcall]
      129 DUPCLOSURE                       R4 K36 [PROTO_0]
      130 CALL                             R3 1 0
      131 RETURN                           R0 0
