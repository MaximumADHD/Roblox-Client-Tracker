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
       23 JUMPIFNOT                        R2 ; [+76]
       24 GETIMPORT                        R2 K4 [require]
       26 GETIMPORT                        R3 K1 [script]
       28 GETTABLEKS                       R3 R3 K2 ["Parent"]
       30 GETTABLEKS                       R3 R3 K10 ["commonInit"]
       32 CALL                             R2 1 1
       33 MOVE                             R3 R2
       34 CALL                             R3 0 0
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
       62 GETTABLEKS                       R8 R0 K5 ["Src"]
       64 DUPTABLE                         R9 K26 [{["showTimingInfo"] = False, ["testNamePattern"] = , ["extraEnvironment"]}]
       65 NEWTABLE                         R10 0 0
       67 SETTABLEKS                       R10 R9 K25 ["extraEnvironment"]
       69 GETIMPORT                        R10 K28 [print]
       71 LOADK                            R12 K29 ["----- All "]
       72 GETTABLEKS                       R13 R0 K30 ["Name"]
       74 LOADK                            R14 K31 [" Tests ------"]
       75 CONCAT                           R11 R12 R14
       76 CALL                             R10 1 0
       77 GETIMPORT                        R10 K4 [require]
       79 GETIMPORT                        R11 K1 [script]
       81 GETTABLEKS                       R11 R11 K2 ["Parent"]
       83 GETTABLEKS                       R11 R11 K32 ["defineLuaFlags"]
       85 CALL                             R10 1 0
       86 NEWTABLE                         R12 0 1
       88 MOVE                             R13 R8
       89 SETLIST                          R12 R13 1 [1]
       91 MOVE                             R13 R7
       92 MOVE                             R14 R9
       93 NAMECALL                         R10 R4 K33 ["run"]
       95 CALL                             R10 4 0
       96 GETIMPORT                        R10 K28 [print]
       98 LOADK                            R11 K34 ["----------------------------------"]
       99 CALL                             R10 1 0
      100 GETTABLEKS                       R2 R1 K8 ["RunningUnderCLI"]
      102 CALL                             R2 0 1
      103 JUMPIFNOT                        R2 ; [+4]
      104 GETIMPORT                        R2 K36 [pcall]
      106 DUPCLOSURE                       R3 K37 [PROTO_0]
      107 CALL                             R2 1 0
      108 RETURN                           R0 0
