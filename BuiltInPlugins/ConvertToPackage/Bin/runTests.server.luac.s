PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K2 ["Packages"]
        5 GETTABLEKS                       R2 R3 K3 ["Dev"]
        7 GETTABLEKS                       R1 R2 K4 ["TestEZ"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R2 R0 K5 ["Reporters"]
       12 GETTABLEKS                       R1 R2 K6 ["TeamCityReporter"]
       14 GETTABLEKS                       R3 R0 K5 ["Reporters"]
       16 GETTABLEKS                       R2 R3 K7 ["TextReporter"]
       18 GETIMPORT                        R5 K10 [_G]
       20 GETTABLEKS                       R4 R5 K8 ["TEAMCITY"]
       22 JUMPIFNOT                        R4 ; [+2]
       23 MOVE                             R3 R1
       24 JUMPIF                           R3 ; [+1]
       25 MOVE                             R3 R2
       26 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R2 K3 [script]
       12 GETTABLEKS                       R1 R2 K4 ["Parent"]
       14 GETTABLEKS                       R0 R1 K4 ["Parent"]
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R4 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R4 K7 ["Util"]
       22 GETTABLEKS                       R2 R3 K8 ["DebugFlags"]
       24 CALL                             R1 1 1
       25 GETTABLEKS                       R2 R0 K6 ["Src"]
       27 DUPCLOSURE                       R3 K9 [PROTO_0]
       28 CAPTURE                          VAL R0
       29 GETTABLEKS                       R4 R1 K10 ["RunTests"]
       31 CALL                             R4 0 1
       32 JUMPIFNOT                        R4 ; [+75]
       33 GETIMPORT                        R5 K1 [require]
       35 GETTABLEKS                       R8 R0 K11 ["Packages"]
       37 GETTABLEKS                       R7 R8 K12 ["Dev"]
       39 GETTABLEKS                       R6 R7 K13 ["TestEZ"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K14 ["TestBootstrap"]
       44 GETIMPORT                        R8 K1 [require]
       46 GETTABLEKS                       R11 R0 K11 ["Packages"]
       48 GETTABLEKS                       R10 R11 K12 ["Dev"]
       50 GETTABLEKS                       R9 R10 K13 ["TestEZ"]
       52 CALL                             R8 1 1
       53 GETTABLEKS                       R10 R8 K15 ["Reporters"]
       55 GETTABLEKS                       R9 R10 K16 ["TeamCityReporter"]
       57 GETTABLEKS                       R11 R8 K15 ["Reporters"]
       59 GETTABLEKS                       R10 R11 K17 ["TextReporter"]
       61 GETIMPORT                        R12 K20 [_G]
       63 GETTABLEKS                       R11 R12 K18 ["TEAMCITY"]
       65 JUMPIFNOT                        R11 ; [+2]
       66 MOVE                             R7 R9
       67 JUMPIF                           R7 ; [+1]
       68 MOVE                             R7 R10
       69 GETIMPORT                        R8 K22 [print]
       71 LOADK                            R10 K23 ["----- All "]
       72 GETIMPORT                        R15 K3 [script]
       74 GETTABLEKS                       R14 R15 K4 ["Parent"]
       76 GETTABLEKS                       R13 R14 K4 ["Parent"]
       78 GETTABLEKS                       R11 R13 K24 ["Name"]
       80 LOADK                            R12 K25 [" Tests ------"]
       81 CONCAT                           R9 R10 R12
       82 CALL                             R8 1 0
       83 NEWTABLE                         R10 0 1
       85 MOVE                             R11 R2
       86 SETLIST                          R10 R11 1 [1]
       88 MOVE                             R11 R7
       89 NAMECALL                         R8 R6 K26 ["run"]
       91 CALL                             R8 3 0
       92 GETIMPORT                        R8 K22 [print]
       94 LOADK                            R9 K27 ["----------------------------------"]
       95 CALL                             R8 1 0
       96 GETIMPORT                        R8 K29 [game]
       98 JUMPIFNOT                        R8 ; [+9]
       99 GETIMPORT                        R8 K29 [game]
      101 LOADK                            R10 K30 ["RunService"]
      102 NAMECALL                         R8 R8 K31 ["GetService"]
      104 CALL                             R8 2 1
      105 NAMECALL                         R8 R8 K32 ["Stop"]
      107 CALL                             R8 1 0
      108 RETURN                           R0 0
