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
       16 GETIMPORT                        R2 K4 [require]
       18 GETIMPORT                        R3 K1 [script]
       20 GETTABLEKS                       R3 R3 K2 ["Parent"]
       22 GETTABLEKS                       R3 R3 K8 ["defineLuaFlags"]
       24 CALL                             R2 1 0
       25 GETTABLEKS                       R2 R1 K9 ["RunningUnderCLI"]
       27 CALL                             R2 0 1
       28 JUMPIF                           R2 ; [+4]
       29 GETTABLEKS                       R2 R1 K10 ["RunTests"]
       31 CALL                             R2 0 1
       32 JUMPIFNOT                        R2 ; [+75]
       33 GETIMPORT                        R2 K12 [_G]
       35 LOADB                            R3 1
       36 SETTABLEKS                       R3 R2 K13 ["__ROACT_17_COMPAT_LEGACY_ROOT__"]
       38 GETIMPORT                        R2 K4 [require]
       40 GETIMPORT                        R3 K1 [script]
       42 GETTABLEKS                       R3 R3 K2 ["Parent"]
       44 GETTABLEKS                       R3 R3 K14 ["commonInit"]
       46 CALL                             R2 1 1
       47 MOVE                             R3 R2
       48 CALL                             R3 0 0
       49 GETIMPORT                        R3 K4 [require]
       51 GETTABLEKS                       R4 R0 K15 ["Packages"]
       53 GETTABLEKS                       R4 R4 K16 ["Dev"]
       55 GETTABLEKS                       R4 R4 K17 ["TestEZ"]
       57 CALL                             R3 1 1
       58 GETTABLEKS                       R4 R3 K18 ["TestBootstrap"]
       60 GETTABLEKS                       R5 R3 K19 ["Reporters"]
       62 GETTABLEKS                       R5 R5 K20 ["TeamCityReporter"]
       64 GETTABLEKS                       R6 R3 K19 ["Reporters"]
       66 GETTABLEKS                       R6 R6 K21 ["TextReporter"]
       68 GETIMPORT                        R9 K12 [_G]
       70 GETTABLEKS                       R8 R9 K22 ["TEAMCITY"]
       72 JUMPIFNOT                        R8 ; [+2]
       73 MOVE                             R7 R5
       74 JUMPIF                           R7 ; [+1]
       75 MOVE                             R7 R6
       76 GETTABLEKS                       R8 R0 K5 ["Src"]
       78 GETIMPORT                        R9 K24 [print]
       80 LOADK                            R11 K25 ["----- All "]
       81 GETTABLEKS                       R12 R0 K26 ["Name"]
       83 LOADK                            R13 K27 [" Tests ------"]
       84 CONCAT                           R10 R11 R13
       85 CALL                             R9 1 0
       86 GETIMPORT                        R9 K4 [require]
       88 GETIMPORT                        R10 K1 [script]
       90 GETTABLEKS                       R10 R10 K2 ["Parent"]
       92 GETTABLEKS                       R10 R10 K8 ["defineLuaFlags"]
       94 CALL                             R9 1 0
       95 NEWTABLE                         R11 0 1
       97 MOVE                             R12 R8
       98 SETLIST                          R11 R12 1 [1]
      100 MOVE                             R12 R7
      101 NAMECALL                         R9 R4 K28 ["run"]
      103 CALL                             R9 3 0
      104 GETIMPORT                        R9 K24 [print]
      106 LOADK                            R10 K29 ["----------------------------------"]
      107 CALL                             R9 1 0
      108 GETTABLEKS                       R2 R1 K9 ["RunningUnderCLI"]
      110 CALL                             R2 0 1
      111 JUMPIFNOT                        R2 ; [+4]
      112 GETIMPORT                        R2 K31 [pcall]
      114 DUPCLOSURE                       R3 K32 [PROTO_0]
      115 CALL                             R2 1 0
      116 RETURN                           R0 0
