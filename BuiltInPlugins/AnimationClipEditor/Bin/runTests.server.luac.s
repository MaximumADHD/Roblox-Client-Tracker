PROTO_0:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["TestEZ"]
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K5 ["Reporters"]
       12 GETTABLEKS                       R1 R1 K6 ["TeamCityReporter"]
       14 GETTABLEKS                       R2 R0 K5 ["Reporters"]
       16 GETTABLEKS                       R2 R2 K7 ["TextReporter"]
       18 GETIMPORT                        R5 K10 [_G]
       20 GETTABLEKS                       R4 R5 K8 ["TEAMCITY"]
       22 JUMPIFNOT                        R4 ; [+2]
       23 MOVE                             R3 R1
       24 JUMPIF                           R3 ; [+1]
       25 MOVE                             R3 R2
       26 RETURN                           R3 1

PROTO_1:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["TestEZ"]
        9 CALL                             R0 1 1
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K5 ["Src"]
       13 GETTABLEKS                       R2 R0 K6 ["TestBootstrap"]
       15 GETIMPORT                        R4 K1 [require]
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K2 ["Packages"]
       20 GETTABLEKS                       R5 R5 K3 ["Dev"]
       22 GETTABLEKS                       R5 R5 K4 ["TestEZ"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K7 ["Reporters"]
       27 GETTABLEKS                       R5 R5 K8 ["TeamCityReporter"]
       29 GETTABLEKS                       R6 R4 K7 ["Reporters"]
       31 GETTABLEKS                       R6 R6 K9 ["TextReporter"]
       33 GETIMPORT                        R8 K12 [_G]
       35 GETTABLEKS                       R7 R8 K10 ["TEAMCITY"]
       37 JUMPIFNOT                        R7 ; [+2]
       38 MOVE                             R3 R5
       39 JUMPIF                           R3 ; [+1]
       40 MOVE                             R3 R6
       41 NEWTABLE                         R6 0 1
       43 MOVE                             R7 R1
       44 SETLIST                          R6 R7 1 [1]
       46 MOVE                             R7 R3
       47 NAMECALL                         R4 R2 K13 ["run"]
       49 CALL                             R4 3 0
       50 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K1 [require]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Packages"]
        5 GETTABLEKS                       R1 R1 K3 ["Dev"]
        7 GETTABLEKS                       R1 R1 K4 ["TestEZ"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K5 ["RhodiumTests"]
       15 GETTABLEKS                       R2 R2 K6 ["TestHelpers"]
       17 CALL                             R1 1 1
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K5 ["RhodiumTests"]
       21 GETTABLEKS                       R3 R0 K7 ["TestBootstrap"]
       23 GETIMPORT                        R4 K1 [require]
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K8 ["Src"]
       28 GETTABLEKS                       R5 R5 K9 ["test"]
       30 GETTABLEKS                       R5 R5 K10 ["RigCreator"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K12 [workspace]
       35 LOADK                            R7 K13 ["Dummy"]
       36 NAMECALL                         R5 R5 K14 ["FindFirstChild"]
       38 CALL                             R5 2 1
       39 JUMPIFEQKNIL                     R5 ; [+12]
       41 NAMECALL                         R6 R5 K15 ["Destroy"]
       43 CALL                             R6 1 0
       44 GETIMPORT                        R6 K12 [workspace]
       46 LOADK                            R8 K13 ["Dummy"]
       47 NAMECALL                         R6 R6 K14 ["FindFirstChild"]
       49 CALL                             R6 2 1
       50 MOVE                             R5 R6
       51 JUMPBACK                         ; [-13]
       52 GETTABLEKS                       R6 R4 K16 ["BuildAnthroRig"]
       54 LOADK                            R7 K17 ["AnthroNormal"]
       55 CALL                             R6 1 1
       56 LOADK                            R7 K13 ["Dummy"]
       57 SETTABLEKS                       R7 R6 K18 ["Name"]
       59 GETTABLEKS                       R7 R6 K19 ["HumanoidRootPart"]
       61 LOADB                            R8 1
       62 SETTABLEKS                       R8 R7 K20 ["Anchored"]
       64 GETIMPORT                        R8 K1 [require]
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K2 ["Packages"]
       69 GETTABLEKS                       R9 R9 K3 ["Dev"]
       71 GETTABLEKS                       R9 R9 K4 ["TestEZ"]
       73 CALL                             R8 1 1
       74 GETTABLEKS                       R9 R8 K21 ["Reporters"]
       76 GETTABLEKS                       R9 R9 K22 ["TeamCityReporter"]
       78 GETTABLEKS                       R10 R8 K21 ["Reporters"]
       80 GETTABLEKS                       R10 R10 K23 ["TextReporter"]
       82 GETIMPORT                        R12 K26 [_G]
       84 GETTABLEKS                       R11 R12 K24 ["TEAMCITY"]
       86 JUMPIFNOT                        R11 ; [+2]
       87 MOVE                             R7 R9
       88 JUMPIF                           R7 ; [+1]
       89 MOVE                             R7 R10
       90 GETTABLEKS                       R8 R1 K27 ["init"]
       92 GETIMPORT                        R9 K29 [plugin]
       94 CALL                             R8 1 0
       95 NEWTABLE                         R10 0 1
       97 MOVE                             R11 R2
       98 SETLIST                          R10 R11 1 [1]
      100 MOVE                             R11 R7
      101 LOADB                            R12 0
      102 LOADB                            R13 1
      103 NAMECALL                         R8 R3 K30 ["run"]
      105 CALL                             R8 5 0
      106 NAMECALL                         R8 R6 K15 ["Destroy"]
      108 CALL                             R8 1 0
      109 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 LOADK                            R2 K6 ["AnimationClipEditor"]
       13 NAMECALL                         R0 R0 K7 ["FindFirstAncestor"]
       15 CALL                             R0 2 1
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R2 R0 K8 ["Src"]
       20 GETTABLEKS                       R2 R2 K9 ["Util"]
       22 GETTABLEKS                       R2 R2 K10 ["DebugFlags"]
       24 CALL                             R1 1 1
       25 DUPCLOSURE                       R2 K11 [PROTO_0]
       26 CAPTURE                          VAL R0
       27 DUPCLOSURE                       R3 K12 [PROTO_1]
       28 CAPTURE                          VAL R0
       29 DUPCLOSURE                       R4 K13 [PROTO_2]
       30 CAPTURE                          VAL R0
       31 GETTABLEKS                       R5 R1 K14 ["RunTests"]
       33 CALL                             R5 0 1
       34 GETTABLEKS                       R6 R1 K15 ["RunRhodiumTests"]
       36 CALL                             R6 0 1
       37 JUMPIFNOT                        R5 ; [+20]
       38 GETIMPORT                        R7 K17 [print]
       40 LOADK                            R9 K18 ["----- All "]
       41 GETIMPORT                        R10 K3 [script]
       43 GETTABLEKS                       R10 R10 K4 ["Parent"]
       45 GETTABLEKS                       R10 R10 K4 ["Parent"]
       47 GETTABLEKS                       R10 R10 K19 ["Name"]
       49 LOADK                            R11 K20 [" Tests ------"]
       50 CONCAT                           R8 R9 R11
       51 CALL                             R7 1 0
       52 MOVE                             R7 R3
       53 CALL                             R7 0 0
       54 GETIMPORT                        R7 K17 [print]
       56 LOADK                            R8 K21 ["----------------------------------"]
       57 CALL                             R7 1 0
       58 JUMPIFNOT                        R6 ; [+34]
       59 GETIMPORT                        R7 K17 [print]
       61 LOADK                            R9 K18 ["----- All "]
       62 GETIMPORT                        R10 K3 [script]
       64 GETTABLEKS                       R10 R10 K4 ["Parent"]
       66 GETTABLEKS                       R10 R10 K4 ["Parent"]
       68 GETTABLEKS                       R10 R10 K19 ["Name"]
       70 LOADK                            R11 K22 [" Rhodium Tests ------"]
       71 CONCAT                           R8 R9 R11
       72 CALL                             R7 1 0
       73 MOVE                             R7 R4
       74 CALL                             R7 0 0
       75 GETIMPORT                        R7 K17 [print]
       77 LOADK                            R8 K21 ["----------------------------------"]
       78 CALL                             R7 1 0
       79 GETTABLEKS                       R7 R1 K23 ["RunningUnderCLI"]
       81 CALL                             R7 0 1
       82 JUMPIFNOT                        R7 ; [+10]
       83 GETIMPORT                        R7 K25 [game]
       85 LOADK                            R9 K26 ["ProcessService"]
       86 NAMECALL                         R7 R7 K27 ["GetService"]
       88 CALL                             R7 2 1
       89 LOADN                            R9 0
       90 NAMECALL                         R7 R7 K28 ["ExitAsync"]
       92 CALL                             R7 2 0
       93 RETURN                           R0 0
