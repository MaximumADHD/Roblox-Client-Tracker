PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AssetManagerFlags"]
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
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K7 [script]
       11 GETTABLEKS                       R2 R2 K8 ["Parent"]
       13 GETTABLEKS                       R2 R2 K9 ["hasInternalPermission"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K11 [pcall]
       19 DUPCLOSURE                       R3 K12 [PROTO_0]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K13 [PROTO_2]
       22 CAPTURE                          VAL R0
       23 DUPTABLE                         R4 K20 [{"RunningUnderCLI", "RunTests", "LogTestsQuiet", "LogAnalytics", "RunDeveloperFrameworkTests", "EnableRoactConfigs"}]
       24 MOVE                             R6 R2
       25 ORK                              R6 R6 K21 [False]
       26 LOADK                            R7 K14 ["RunningUnderCLI"]
       27 NEWCLOSURE                       R5 P2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R7
       30 CAPTURE                          REF R6
       31 CLOSEUPVALS                      R6
       32 SETTABLEKS                       R5 R4 K14 ["RunningUnderCLI"]
       34 LOADB                            R6 0
       35 ORK                              R6 R6 K21 [False]
       36 LOADK                            R7 K15 ["RunTests"]
       37 NEWCLOSURE                       R5 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R7
       40 CAPTURE                          REF R6
       41 CLOSEUPVALS                      R6
       42 SETTABLEKS                       R5 R4 K15 ["RunTests"]
       44 LOADNIL                          R6
       45 ORK                              R6 R6 K21 [False]
       46 LOADK                            R7 K16 ["LogTestsQuiet"]
       47 NEWCLOSURE                       R5 P2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R7
       50 CAPTURE                          REF R6
       51 CLOSEUPVALS                      R6
       52 SETTABLEKS                       R5 R4 K16 ["LogTestsQuiet"]
       54 LOADNIL                          R6
       55 ORK                              R6 R6 K21 [False]
       56 LOADK                            R7 K17 ["LogAnalytics"]
       57 NEWCLOSURE                       R5 P2
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R7
       60 CAPTURE                          REF R6
       61 CLOSEUPVALS                      R6
       62 SETTABLEKS                       R5 R4 K17 ["LogAnalytics"]
       64 LOADNIL                          R6
       65 ORK                              R6 R6 K21 [False]
       66 LOADK                            R7 K18 ["RunDeveloperFrameworkTests"]
       67 NEWCLOSURE                       R5 P2
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R7
       70 CAPTURE                          REF R6
       71 CLOSEUPVALS                      R6
       72 SETTABLEKS                       R5 R4 K18 ["RunDeveloperFrameworkTests"]
       74 OR                               R6 R2 R1
       75 ORK                              R6 R6 K21 [False]
       76 LOADK                            R7 K19 ["EnableRoactConfigs"]
       77 NEWCLOSURE                       R5 P2
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R7
       80 CAPTURE                          REF R6
       81 CLOSEUPVALS                      R6
       82 SETTABLEKS                       R5 R4 K19 ["EnableRoactConfigs"]
       84 RETURN                           R4 1
