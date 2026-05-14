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
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["commonInit"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 CALL                             R2 0 0
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K6 ["Src"]
       22 GETTABLEKS                       R3 R3 K7 ["Util"]
       24 GETTABLEKS                       R3 R3 K8 ["DebugFlags"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K9 ["RunningUnderCLI"]
       29 CALL                             R3 0 1
       30 JUMPIF                           R3 ; [+4]
       31 GETTABLEKS                       R3 R2 K10 ["RunTests"]
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+71]
       35 GETIMPORT                        R3 K4 [require]
       37 GETTABLEKS                       R4 R0 K11 ["Packages"]
       39 GETTABLEKS                       R4 R4 K12 ["Dev"]
       41 GETTABLEKS                       R4 R4 K13 ["TestEZ"]
       43 CALL                             R3 1 1
       44 GETTABLEKS                       R4 R3 K14 ["TestBootstrap"]
       46 GETTABLEKS                       R5 R3 K15 ["Reporters"]
       48 GETTABLEKS                       R5 R5 K16 ["TeamCityReporter"]
       50 GETTABLEKS                       R6 R3 K15 ["Reporters"]
       52 GETTABLEKS                       R6 R6 K17 ["TextReporter"]
       54 GETIMPORT                        R9 K20 [_G]
       56 GETTABLEKS                       R8 R9 K18 ["TEAMCITY"]
       58 JUMPIFNOT                        R8 ; [+2]
       59 MOVE                             R7 R5
       60 JUMPIF                           R7 ; [+1]
       61 MOVE                             R7 R6
       62 GETTABLEKS                       R8 R0 K6 ["Src"]
       64 DUPTABLE                         R9 K24 [{"showTimingInfo", "testNamePattern", "extraEnvironment"}]
       65 LOADB                            R10 0
       66 SETTABLEKS                       R10 R9 K21 ["showTimingInfo"]
       68 LOADNIL                          R10
       69 SETTABLEKS                       R10 R9 K22 ["testNamePattern"]
       71 NEWTABLE                         R10 0 0
       73 SETTABLEKS                       R10 R9 K23 ["extraEnvironment"]
       75 GETIMPORT                        R10 K26 [print]
       77 LOADK                            R12 K27 ["----- All "]
       78 GETTABLEKS                       R13 R0 K28 ["Name"]
       80 LOADK                            R14 K29 [" Tests ------"]
       81 CONCAT                           R11 R12 R14
       82 CALL                             R10 1 0
       83 GETIMPORT                        R10 K4 [require]
       85 GETIMPORT                        R11 K1 [script]
       87 GETTABLEKS                       R11 R11 K2 ["Parent"]
       89 GETTABLEKS                       R11 R11 K30 ["defineLuaFlags"]
       91 CALL                             R10 1 0
       92 NEWTABLE                         R12 0 1
       94 MOVE                             R13 R8
       95 SETLIST                          R12 R13 1 [1]
       97 MOVE                             R13 R7
       98 MOVE                             R14 R9
       99 NAMECALL                         R10 R4 K31 ["run"]
      101 CALL                             R10 4 0
      102 GETIMPORT                        R10 K26 [print]
      104 LOADK                            R11 K32 ["----------------------------------"]
      105 CALL                             R10 1 0
      106 GETTABLEKS                       R3 R2 K9 ["RunningUnderCLI"]
      108 CALL                             R3 0 1
      109 JUMPIFNOT                        R3 ; [+4]
      110 GETIMPORT                        R3 K34 [pcall]
      112 DUPCLOSURE                       R4 K35 [PROTO_0]
      113 CALL                             R3 1 0
      114 RETURN                           R0 0
