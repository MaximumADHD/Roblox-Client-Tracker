PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AlignTool"]
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
       17 DUPCLOSURE                       R3 K10 [PROTO_0]
       18 FASTPCALL                        pcall 1 ; [+2]
       19 GETIMPORT                        R2 K12 [pcall]
       21 CALL                             R2 1 1
       22 DUPCLOSURE                       R3 K13 [PROTO_2]
       23 CAPTURE                          VAL R0
       24 DUPTABLE                         R4 K20 [{"RunningUnderCLI", "RunTests", "LogTestsQuiet", "LogAnalytics", "RunDeveloperFrameworkTests", "EnableRoactConfigs"}]
       25 MOVE                             R6 R2
       26 ORK                              R6 R6 K21 [False]
       27 LOADK                            R7 K14 ["RunningUnderCLI"]
       28 NEWCLOSURE                       R5 P2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R7
       31 CAPTURE                          REF R6
       32 CLOSEUPVALS                      R6
       33 SETTABLEKS                       R5 R4 K14 ["RunningUnderCLI"]
       35 LOADB                            R6 0
       36 ORK                              R6 R6 K21 [False]
       37 LOADK                            R7 K15 ["RunTests"]
       38 NEWCLOSURE                       R5 P2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R7
       41 CAPTURE                          REF R6
       42 CLOSEUPVALS                      R6
       43 SETTABLEKS                       R5 R4 K15 ["RunTests"]
       45 LOADNIL                          R6
       46 ORK                              R6 R6 K21 [False]
       47 LOADK                            R7 K16 ["LogTestsQuiet"]
       48 NEWCLOSURE                       R5 P2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R7
       51 CAPTURE                          REF R6
       52 CLOSEUPVALS                      R6
       53 SETTABLEKS                       R5 R4 K16 ["LogTestsQuiet"]
       55 LOADNIL                          R6
       56 ORK                              R6 R6 K21 [False]
       57 LOADK                            R7 K17 ["LogAnalytics"]
       58 NEWCLOSURE                       R5 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R7
       61 CAPTURE                          REF R6
       62 CLOSEUPVALS                      R6
       63 SETTABLEKS                       R5 R4 K17 ["LogAnalytics"]
       65 LOADNIL                          R6
       66 ORK                              R6 R6 K21 [False]
       67 LOADK                            R7 K18 ["RunDeveloperFrameworkTests"]
       68 NEWCLOSURE                       R5 P2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R7
       71 CAPTURE                          REF R6
       72 CLOSEUPVALS                      R6
       73 SETTABLEKS                       R5 R4 K18 ["RunDeveloperFrameworkTests"]
       75 OR                               R6 R2 R1
       76 ORK                              R6 R6 K21 [False]
       77 LOADK                            R7 K19 ["EnableRoactConfigs"]
       78 NEWCLOSURE                       R5 P2
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R7
       81 CAPTURE                          REF R6
       82 CLOSEUPVALS                      R6
       83 SETTABLEKS                       R5 R4 K19 ["EnableRoactConfigs"]
       85 RETURN                           R4 1
