PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["TerrainEditorFlags"]
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

PROTO_1:
        0 ORK                              R2 R1 K0 [False]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R2
        5 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["TestLoader"]
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R3 R2 K11 ["hasInternalPermission"]
       24 CALL                             R3 0 1
       25 GETTABLEKS                       R4 R2 K12 ["isCli"]
       27 CALL                             R4 0 1
       28 DUPCLOSURE                       R5 K13 [PROTO_1]
       29 CAPTURE                          VAL R0
       30 DUPTABLE                         R6 K21 [{"RunningUnderCLI", "RunTests", "LogTestsQuiet", "LogAnalytics", "ProfileTools", "RunDeveloperFrameworkTests", "EnableRoactConfigs"}]
       31 ORK                              R8 R4 K22 [False]
       32 LOADK                            R9 K14 ["RunningUnderCLI"]
       33 NEWCLOSURE                       R7 P1
       34 CAPTURE                          VAL R0
       35 CAPTURE                          VAL R9
       36 CAPTURE                          VAL R8
       37 SETTABLEKS                       R7 R6 K14 ["RunningUnderCLI"]
       39 LOADK                            R8 K15 ["RunTests"]
       40 LOADB                            R9 0
       41 NEWCLOSURE                       R7 P1
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R8
       44 CAPTURE                          VAL R9
       45 SETTABLEKS                       R7 R6 K15 ["RunTests"]
       47 LOADK                            R8 K16 ["LogTestsQuiet"]
       48 LOADB                            R9 0
       49 NEWCLOSURE                       R7 P1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R9
       53 SETTABLEKS                       R7 R6 K16 ["LogTestsQuiet"]
       55 LOADK                            R8 K17 ["LogAnalytics"]
       56 LOADB                            R9 0
       57 NEWCLOSURE                       R7 P1
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R9
       61 SETTABLEKS                       R7 R6 K17 ["LogAnalytics"]
       63 LOADK                            R8 K18 ["ProfileTools"]
       64 LOADB                            R9 1
       65 NEWCLOSURE                       R7 P1
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R9
       69 SETTABLEKS                       R7 R6 K18 ["ProfileTools"]
       71 LOADK                            R8 K19 ["RunDeveloperFrameworkTests"]
       72 LOADB                            R9 0
       73 NEWCLOSURE                       R7 P1
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R9
       77 SETTABLEKS                       R7 R6 K19 ["RunDeveloperFrameworkTests"]
       79 OR                               R8 R4 R3
       80 ORK                              R9 R8 K22 [False]
       81 LOADK                            R10 K20 ["EnableRoactConfigs"]
       82 NEWCLOSURE                       R7 P1
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R9
       86 SETTABLEKS                       R7 R6 K20 ["EnableRoactConfigs"]
       88 RETURN                           R6 1
