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
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["commonInit"]
       15 CALL                             R1 1 1
       16 MOVE                             R2 R1
       17 CALL                             R2 0 0
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Src"]
       22 GETTABLEKS                       R3 R3 K9 ["Util"]
       24 GETTABLEKS                       R3 R3 K10 ["DebugFlags"]
       26 CALL                             R2 1 1
       27 GETTABLEKS                       R3 R2 K11 ["RunningUnderCLI"]
       29 CALL                             R3 0 1
       30 JUMPIF                           R3 ; [+4]
       31 GETTABLEKS                       R3 R2 K12 ["RunTests"]
       33 CALL                             R3 0 1
       34 JUMPIFNOT                        R3 ; [+65]
       35 GETIMPORT                        R3 K5 [require]
       37 GETTABLEKS                       R4 R0 K13 ["Packages"]
       39 GETTABLEKS                       R4 R4 K14 ["Dev"]
       41 GETTABLEKS                       R4 R4 K15 ["TestEZ"]
       43 CALL                             R3 1 1
       44 GETTABLEKS                       R4 R3 K16 ["TestBootstrap"]
       46 GETTABLEKS                       R5 R3 K17 ["Reporters"]
       48 GETTABLEKS                       R5 R5 K18 ["TeamCityReporter"]
       50 GETTABLEKS                       R6 R3 K17 ["Reporters"]
       52 GETTABLEKS                       R6 R6 K19 ["TextReporter"]
       54 GETIMPORT                        R9 K22 [_G]
       56 GETTABLEKS                       R8 R9 K20 ["TEAMCITY"]
       58 JUMPIFNOT                        R8 ; [+2]
       59 MOVE                             R7 R5
       60 JUMPIF                           R7 ; [+1]
       61 MOVE                             R7 R6
       62 GETTABLEKS                       R8 R0 K8 ["Src"]
       64 DUPTABLE                         R9 K28 [{["showTimingInfo"] = False, ["testNamePattern"] = , ["extraEnvironment"]}]
       65 NEWTABLE                         R10 0 0
       67 SETTABLEKS                       R10 R9 K27 ["extraEnvironment"]
       69 GETIMPORT                        R10 K30 [print]
       71 LOADK                            R12 K31 ["----- All "]
       72 GETTABLEKS                       R13 R0 K32 ["Name"]
       74 LOADK                            R14 K33 [" Tests ------"]
       75 CONCAT                           R11 R12 R14
       76 CALL                             R10 1 0
       77 GETIMPORT                        R10 K5 [require]
       79 GETIMPORT                        R11 K1 [script]
       81 GETTABLEKS                       R11 R11 K6 ["Parent"]
       83 GETTABLEKS                       R11 R11 K34 ["defineLuaFlags"]
       85 CALL                             R10 1 0
       86 NEWTABLE                         R12 0 1
       88 MOVE                             R13 R8
       89 SETLIST                          R12 R13 1 [1]
       91 MOVE                             R13 R7
       92 MOVE                             R14 R9
       93 NAMECALL                         R10 R4 K35 ["run"]
       95 CALL                             R10 4 0
       96 GETIMPORT                        R10 K30 [print]
       98 LOADK                            R11 K36 ["----------------------------------"]
       99 CALL                             R10 1 0
      100 GETTABLEKS                       R3 R2 K11 ["RunningUnderCLI"]
      102 CALL                             R3 0 1
      103 JUMPIFNOT                        R3 ; [+4]
      104 GETIMPORT                        R3 K38 [pcall]
      106 DUPCLOSURE                       R4 K39 [PROTO_0]
      107 CALL                             R3 1 0
      108 RETURN                           R0 0
