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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [pcall]
        9 DUPCLOSURE                       R2 K5 [PROTO_0]
       10 CALL                             R1 1 2
       11 JUMPIFNOT                        R1 ; [+2]
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R3 K7 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R4 K9 ["Util"]
       20 GETTABLEKS                       R4 R4 K10 ["DebugFlags"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R3 K11 ["RunningUnderCLI"]
       25 CALL                             R4 0 1
       26 JUMPIF                           R4 ; [+4]
       27 GETTABLEKS                       R4 R3 K12 ["RunTests"]
       29 CALL                             R4 0 1
       30 JUMPIFNOT                        R4 ; [+73]
       31 GETIMPORT                        R4 K7 [require]
       33 GETIMPORT                        R5 K1 [script]
       35 GETTABLEKS                       R5 R5 K2 ["Parent"]
       37 GETTABLEKS                       R5 R5 K13 ["commonInit"]
       39 CALL                             R4 1 1
       40 MOVE                             R5 R4
       41 CALL                             R5 0 0
       42 GETIMPORT                        R5 K7 [require]
       44 GETTABLEKS                       R6 R0 K14 ["Packages"]
       46 GETTABLEKS                       R6 R6 K15 ["Dev"]
       48 GETTABLEKS                       R6 R6 K16 ["TestEZ"]
       50 CALL                             R5 1 1
       51 GETTABLEKS                       R6 R5 K17 ["TestBootstrap"]
       53 GETTABLEKS                       R7 R5 K18 ["Reporters"]
       55 GETTABLEKS                       R7 R7 K19 ["TeamCityReporter"]
       57 GETTABLEKS                       R8 R5 K18 ["Reporters"]
       59 GETTABLEKS                       R8 R8 K20 ["TextReporter"]
       61 GETIMPORT                        R11 K23 [_G]
       63 GETTABLEKS                       R10 R11 K21 ["TEAMCITY"]
       65 JUMPIFNOT                        R10 ; [+2]
       66 MOVE                             R9 R7
       67 JUMPIF                           R9 ; [+1]
       68 MOVE                             R9 R8
       69 GETTABLEKS                       R10 R0 K8 ["Src"]
       71 DUPTABLE                         R11 K27 [{"showTimingInfo", "testNamePattern", "extraEnvironment"}]
       72 LOADB                            R12 0
       73 SETTABLEKS                       R12 R11 K24 ["showTimingInfo"]
       75 LOADNIL                          R12
       76 SETTABLEKS                       R12 R11 K25 ["testNamePattern"]
       78 NEWTABLE                         R12 0 0
       80 SETTABLEKS                       R12 R11 K26 ["extraEnvironment"]
       82 GETIMPORT                        R12 K29 [print]
       84 LOADK                            R14 K30 ["----- All "]
       85 GETTABLEKS                       R15 R0 K31 ["Name"]
       87 LOADK                            R16 K32 [" Tests ------"]
       88 CONCAT                           R13 R14 R16
       89 CALL                             R12 1 0
       90 NEWTABLE                         R14 0 1
       92 MOVE                             R15 R10
       93 SETLIST                          R14 R15 1 [1]
       95 MOVE                             R15 R9
       96 MOVE                             R16 R11
       97 NAMECALL                         R12 R6 K33 ["run"]
       99 CALL                             R12 4 0
      100 GETIMPORT                        R12 K29 [print]
      102 LOADK                            R13 K34 ["----------------------------------"]
      103 CALL                             R12 1 0
      104 GETTABLEKS                       R4 R3 K11 ["RunningUnderCLI"]
      106 CALL                             R4 0 1
      107 JUMPIFNOT                        R4 ; [+4]
      108 GETIMPORT                        R4 K4 [pcall]
      110 DUPCLOSURE                       R5 K35 [PROTO_1]
      111 CALL                             R4 1 0
      112 RETURN                           R0 0
