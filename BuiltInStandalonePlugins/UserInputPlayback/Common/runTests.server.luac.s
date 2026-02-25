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
       13 GETTABLEKS                       R2 R3 K5 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K7 [pcall]
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 CALL                             R1 1 2
       20 JUMPIFNOT                        R1 ; [+2]
       21 JUMPIF                           R2 ; [+1]
       22 RETURN                           R0 0
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R6 R0 K9 ["Src"]
       27 GETTABLEKS                       R5 R6 K10 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["DebugFlags"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R4 R3 K12 ["RunningUnderCLI"]
       34 CALL                             R4 0 1
       35 JUMPIF                           R4 ; [+4]
       36 GETTABLEKS                       R4 R3 K13 ["RunTests"]
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+82]
       40 GETIMPORT                        R4 K4 [require]
       42 GETIMPORT                        R7 K1 [script]
       44 GETTABLEKS                       R6 R7 K2 ["Parent"]
       46 GETTABLEKS                       R5 R6 K14 ["commonInit"]
       48 CALL                             R4 1 1
       49 MOVE                             R5 R4
       50 CALL                             R5 0 0
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
       78 GETTABLEKS                       R10 R0 K9 ["Src"]
       80 DUPTABLE                         R11 K28 [{"showTimingInfo", "testNamePattern", "extraEnvironment"}]
       81 LOADB                            R12 0
       82 SETTABLEKS                       R12 R11 K25 ["showTimingInfo"]
       84 LOADNIL                          R12
       85 SETTABLEKS                       R12 R11 K26 ["testNamePattern"]
       87 NEWTABLE                         R12 0 0
       89 SETTABLEKS                       R12 R11 K27 ["extraEnvironment"]
       91 GETIMPORT                        R12 K30 [print]
       93 LOADK                            R14 K31 ["----- All "]
       94 GETTABLEKS                       R15 R0 K32 ["Name"]
       96 LOADK                            R16 K33 [" Tests ------"]
       97 CONCAT                           R13 R14 R16
       98 CALL                             R12 1 0
       99 GETIMPORT                        R12 K4 [require]
      101 GETIMPORT                        R15 K1 [script]
      103 GETTABLEKS                       R14 R15 K2 ["Parent"]
      105 GETTABLEKS                       R13 R14 K5 ["defineLuaFlags"]
      107 CALL                             R12 1 0
      108 NEWTABLE                         R14 0 1
      110 MOVE                             R15 R10
      111 SETLIST                          R14 R15 1 [1]
      113 MOVE                             R15 R9
      114 MOVE                             R16 R11
      115 NAMECALL                         R12 R6 K34 ["run"]
      117 CALL                             R12 4 0
      118 GETIMPORT                        R12 K30 [print]
      120 LOADK                            R13 K35 ["----------------------------------"]
      121 CALL                             R12 1 0
      122 GETTABLEKS                       R4 R3 K12 ["RunningUnderCLI"]
      124 CALL                             R4 0 1
      125 JUMPIFNOT                        R4 ; [+4]
      126 GETIMPORT                        R4 K7 [pcall]
      128 DUPCLOSURE                       R5 K36 [PROTO_1]
      129 CALL                             R4 1 0
      130 RETURN                           R0 0
