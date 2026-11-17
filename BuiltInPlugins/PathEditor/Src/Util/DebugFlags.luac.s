PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PathEditorFlags"]
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
       24 NEWTABLE                         R4 8 0
       26 MOVE                             R6 R2
       27 ORK                              R6 R6 K14 [False]
       28 LOADK                            R7 K15 ["RunningUnderCLI"]
       29 NEWCLOSURE                       R5 P2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R7
       32 CAPTURE                          REF R6
       33 CLOSEUPVALS                      R6
       34 SETTABLEKS                       R5 R4 K15 ["RunningUnderCLI"]
       36 LOADNIL                          R6
       37 ORK                              R6 R6 K14 [False]
       38 LOADK                            R7 K16 ["RunTests"]
       39 NEWCLOSURE                       R5 P2
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R7
       42 CAPTURE                          REF R6
       43 CLOSEUPVALS                      R6
       44 SETTABLEKS                       R5 R4 K16 ["RunTests"]
       46 LOADNIL                          R6
       47 ORK                              R6 R6 K14 [False]
       48 LOADK                            R7 K17 ["LogTestsQuiet"]
       49 NEWCLOSURE                       R5 P2
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R7
       52 CAPTURE                          REF R6
       53 CLOSEUPVALS                      R6
       54 SETTABLEKS                       R5 R4 K17 ["LogTestsQuiet"]
       56 LOADNIL                          R6
       57 ORK                              R6 R6 K14 [False]
       58 LOADK                            R7 K18 ["LogAnalytics"]
       59 NEWCLOSURE                       R5 P2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R7
       62 CAPTURE                          REF R6
       63 CLOSEUPVALS                      R6
       64 SETTABLEKS                       R5 R4 K18 ["LogAnalytics"]
       66 LOADNIL                          R6
       67 ORK                              R6 R6 K14 [False]
       68 LOADK                            R7 K19 ["RunDeveloperFrameworkTests"]
       69 NEWCLOSURE                       R5 P2
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R7
       72 CAPTURE                          REF R6
       73 CLOSEUPVALS                      R6
       74 SETTABLEKS                       R5 R4 K19 ["RunDeveloperFrameworkTests"]
       76 GETTABLEKS                       R7 R4 K16 ["RunTests"]
       78 CALL                             R7 0 1
       79 OR                               R6 R7 R1
       80 ORK                              R6 R6 K14 [False]
       81 LOADK                            R7 K20 ["EnableRoactConfigs"]
       82 NEWCLOSURE                       R5 P2
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R7
       85 CAPTURE                          REF R6
       86 CLOSEUPVALS                      R6
       87 SETTABLEKS                       R5 R4 K20 ["EnableRoactConfigs"]
       89 RETURN                           R4 1
