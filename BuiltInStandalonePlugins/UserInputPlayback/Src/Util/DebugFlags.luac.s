PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["StudioService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 1
        6 NAMECALL                         R0 R0 K4 ["HasInternalPermission"]
        8 CALL                             R0 1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["UserInputPlaybackFlags"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R3 1
        7 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+2]
       11 GETUPVAL                         R1 2
       12 RETURN                           R1 1
       13 GETUPVAL                         R2 1
       14 GETTABLE                         R1 R0 R2
       15 GETTABLEKS                       R1 R1 K2 ["Value"]
       17 RETURN                           R1 1

PROTO_2:
        0 ORK                              R1 R1 K0 [False]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          REF R1
        5 CLOSEUPVALS                      R1
        6 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [pcall]
        9 DUPCLOSURE                       R2 K6 [PROTO_0]
       10 CALL                             R1 1 2
       11 DUPCLOSURE                       R3 K7 [PROTO_2]
       12 CAPTURE                          VAL R0
       13 NEWTABLE                         R4 8 0
       15 LOADNIL                          R6
       16 ORK                              R6 R6 K8 [False]
       17 LOADK                            R7 K9 ["RunningUnderCLI"]
       18 NEWCLOSURE                       R5 P2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R7
       21 CAPTURE                          REF R6
       22 CLOSEUPVALS                      R6
       23 SETTABLEKS                       R5 R4 K9 ["RunningUnderCLI"]
       25 LOADB                            R6 0
       26 ORK                              R6 R6 K8 [False]
       27 LOADK                            R7 K10 ["RunTests"]
       28 NEWCLOSURE                       R5 P2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R7
       31 CAPTURE                          REF R6
       32 CLOSEUPVALS                      R6
       33 SETTABLEKS                       R5 R4 K10 ["RunTests"]
       35 LOADNIL                          R6
       36 ORK                              R6 R6 K8 [False]
       37 LOADK                            R7 K11 ["LogTestsQuiet"]
       38 NEWCLOSURE                       R5 P2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R7
       41 CAPTURE                          REF R6
       42 CLOSEUPVALS                      R6
       43 SETTABLEKS                       R5 R4 K11 ["LogTestsQuiet"]
       45 LOADNIL                          R6
       46 ORK                              R6 R6 K8 [False]
       47 LOADK                            R7 K12 ["LogAnalytics"]
       48 NEWCLOSURE                       R5 P2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R7
       51 CAPTURE                          REF R6
       52 CLOSEUPVALS                      R6
       53 SETTABLEKS                       R5 R4 K12 ["LogAnalytics"]
       55 LOADNIL                          R6
       56 ORK                              R6 R6 K8 [False]
       57 LOADK                            R7 K13 ["RunDeveloperFrameworkTests"]
       58 NEWCLOSURE                       R5 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R7
       61 CAPTURE                          REF R6
       62 CLOSEUPVALS                      R6
       63 SETTABLEKS                       R5 R4 K13 ["RunDeveloperFrameworkTests"]
       65 LOADNIL                          R6
       66 ORK                              R6 R6 K8 [False]
       67 LOADK                            R7 K14 ["EnableRoactConfigs"]
       68 NEWCLOSURE                       R5 P2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R7
       71 CAPTURE                          REF R6
       72 CLOSEUPVALS                      R6
       73 SETTABLEKS                       R5 R4 K14 ["EnableRoactConfigs"]
       75 LOADNIL                          R6
       76 ORK                              R6 R6 K8 [False]
       77 LOADK                            R7 K15 ["EnableDeveloperTools"]
       78 NEWCLOSURE                       R5 P2
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R7
       81 CAPTURE                          REF R6
       82 CLOSEUPVALS                      R6
       83 SETTABLEKS                       R5 R4 K15 ["EnableDeveloperTools"]
       85 RETURN                           R4 1
