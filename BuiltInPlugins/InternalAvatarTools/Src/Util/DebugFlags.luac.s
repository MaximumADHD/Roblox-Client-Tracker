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
        1 LOADK                            R2 K0 ["InternalAvatarTools"]
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
        7 DUPCLOSURE                       R2 K4 [PROTO_0]
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K6 [pcall]
       11 CALL                             R1 1 2
       12 DUPCLOSURE                       R3 K7 [PROTO_2]
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R4 8 0
       16 LOADNIL                          R6
       17 ORK                              R6 R6 K8 [False]
       18 LOADK                            R7 K9 ["RunningUnderCLI"]
       19 NEWCLOSURE                       R5 P2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R7
       22 CAPTURE                          REF R6
       23 CLOSEUPVALS                      R6
       24 SETTABLEKS                       R5 R4 K9 ["RunningUnderCLI"]
       26 LOADB                            R6 0
       27 ORK                              R6 R6 K8 [False]
       28 LOADK                            R7 K10 ["RunTests"]
       29 NEWCLOSURE                       R5 P2
       30 CAPTURE                          VAL R0
       31 CAPTURE                          VAL R7
       32 CAPTURE                          REF R6
       33 CLOSEUPVALS                      R6
       34 SETTABLEKS                       R5 R4 K10 ["RunTests"]
       36 LOADNIL                          R6
       37 ORK                              R6 R6 K8 [False]
       38 LOADK                            R7 K11 ["LogTestsQuiet"]
       39 NEWCLOSURE                       R5 P2
       40 CAPTURE                          VAL R0
       41 CAPTURE                          VAL R7
       42 CAPTURE                          REF R6
       43 CLOSEUPVALS                      R6
       44 SETTABLEKS                       R5 R4 K11 ["LogTestsQuiet"]
       46 LOADNIL                          R6
       47 ORK                              R6 R6 K8 [False]
       48 LOADK                            R7 K12 ["LogAnalytics"]
       49 NEWCLOSURE                       R5 P2
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R7
       52 CAPTURE                          REF R6
       53 CLOSEUPVALS                      R6
       54 SETTABLEKS                       R5 R4 K12 ["LogAnalytics"]
       56 LOADB                            R6 0
       57 ORK                              R6 R6 K8 [False]
       58 LOADK                            R7 K13 ["RunDeveloperFrameworkTests"]
       59 NEWCLOSURE                       R5 P2
       60 CAPTURE                          VAL R0
       61 CAPTURE                          VAL R7
       62 CAPTURE                          REF R6
       63 CLOSEUPVALS                      R6
       64 SETTABLEKS                       R5 R4 K13 ["RunDeveloperFrameworkTests"]
       66 AND                              R6 R1 R2
       67 ORK                              R6 R6 K8 [False]
       68 LOADK                            R7 K14 ["EnableRoactConfigs"]
       69 NEWCLOSURE                       R5 P2
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R7
       72 CAPTURE                          REF R6
       73 CLOSEUPVALS                      R6
       74 SETTABLEKS                       R5 R4 K14 ["EnableRoactConfigs"]
       76 RETURN                           R4 1
