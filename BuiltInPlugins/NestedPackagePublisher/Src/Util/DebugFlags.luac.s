PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["NestedPackagePublisherFlags"]
        2 NAMECALL                         R0 R0 K1 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R3 1
        7 NAMECALL                         R1 R0 K1 ["FindFirstChild"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+2]
       11 GETUPVAL                         R1 2
       12 RETURN                           R1 1
       13 GETUPVAL                         R3 1
       14 GETTABLE                         R2 R0 R3
       15 GETTABLEKS                       R1 R2 K2 ["Value"]
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
        9 GETIMPORT                        R4 K7 [script]
       11 GETTABLEKS                       R3 R4 K8 ["Parent"]
       13 GETTABLEKS                       R2 R3 K9 ["hasInternalPermission"]
       15 CALL                             R1 1 1
       16 CALL                             R1 0 1
       17 GETIMPORT                        R2 K11 [pcall]
       19 DUPCLOSURE                       R3 K12 [PROTO_0]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K13 [PROTO_2]
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R4 8 0
       25 MOVE                             R6 R2
       26 ORK                              R6 R6 K14 [False]
       27 LOADK                            R7 K15 ["RunningUnderCLI"]
       28 NEWCLOSURE                       R5 P2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R7
       31 CAPTURE                          REF R6
       32 CLOSEUPVALS                      R6
       33 SETTABLEKS                       R5 R4 K15 ["RunningUnderCLI"]
       35 LOADNIL                          R6
       36 ORK                              R6 R6 K14 [False]
       37 LOADK                            R7 K16 ["RunTests"]
       38 NEWCLOSURE                       R5 P2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R7
       41 CAPTURE                          REF R6
       42 CLOSEUPVALS                      R6
       43 SETTABLEKS                       R5 R4 K16 ["RunTests"]
       45 LOADNIL                          R6
       46 ORK                              R6 R6 K14 [False]
       47 LOADK                            R7 K17 ["LogTestsQuiet"]
       48 NEWCLOSURE                       R5 P2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R7
       51 CAPTURE                          REF R6
       52 CLOSEUPVALS                      R6
       53 SETTABLEKS                       R5 R4 K17 ["LogTestsQuiet"]
       55 LOADNIL                          R6
       56 ORK                              R6 R6 K14 [False]
       57 LOADK                            R7 K18 ["LogAnalytics"]
       58 NEWCLOSURE                       R5 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R7
       61 CAPTURE                          REF R6
       62 CLOSEUPVALS                      R6
       63 SETTABLEKS                       R5 R4 K18 ["LogAnalytics"]
       65 LOADNIL                          R6
       66 ORK                              R6 R6 K14 [False]
       67 LOADK                            R7 K19 ["RunDeveloperFrameworkTests"]
       68 NEWCLOSURE                       R5 P2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R7
       71 CAPTURE                          REF R6
       72 CLOSEUPVALS                      R6
       73 SETTABLEKS                       R5 R4 K19 ["RunDeveloperFrameworkTests"]
       75 GETTABLEKS                       R7 R4 K16 ["RunTests"]
       77 CALL                             R7 0 1
       78 OR                               R6 R7 R1
       79 ORK                              R6 R6 K14 [False]
       80 LOADK                            R7 K20 ["EnableRoactConfigs"]
       81 NEWCLOSURE                       R5 P2
       82 CAPTURE                          VAL R0
       83 CAPTURE                          VAL R7
       84 CAPTURE                          REF R6
       85 CLOSEUPVALS                      R6
       86 SETTABLEKS                       R5 R4 K20 ["EnableRoactConfigs"]
       88 RETURN                           R4 1
