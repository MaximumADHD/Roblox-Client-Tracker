PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DebuggerFlags"]
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
        7 DUPCLOSURE                       R1 K4 [PROTO_1]
        8 CAPTURE                          VAL R0
        9 NEWTABLE                         R2 8 0
       11 LOADNIL                          R4
       12 ORK                              R4 R4 K5 [False]
       13 LOADK                            R5 K6 ["RunningUnderCLI"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R5
       17 CAPTURE                          REF R4
       18 CLOSEUPVALS                      R4
       19 SETTABLEKS                       R3 R2 K6 ["RunningUnderCLI"]
       21 LOADB                            R4 0
       22 ORK                              R4 R4 K5 [False]
       23 LOADK                            R5 K7 ["RunTests"]
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R5
       27 CAPTURE                          REF R4
       28 CLOSEUPVALS                      R4
       29 SETTABLEKS                       R3 R2 K7 ["RunTests"]
       31 LOADNIL                          R4
       32 ORK                              R4 R4 K5 [False]
       33 LOADK                            R5 K8 ["LogTestsQuiet"]
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R5
       37 CAPTURE                          REF R4
       38 CLOSEUPVALS                      R4
       39 SETTABLEKS                       R3 R2 K8 ["LogTestsQuiet"]
       41 LOADNIL                          R4
       42 ORK                              R4 R4 K5 [False]
       43 LOADK                            R5 K9 ["LogAnalytics"]
       44 NEWCLOSURE                       R3 P1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R5
       47 CAPTURE                          REF R4
       48 CLOSEUPVALS                      R4
       49 SETTABLEKS                       R3 R2 K9 ["LogAnalytics"]
       51 LOADNIL                          R4
       52 ORK                              R4 R4 K5 [False]
       53 LOADK                            R5 K10 ["RunDeveloperFrameworkTests"]
       54 NEWCLOSURE                       R3 P1
       55 CAPTURE                          VAL R0
       56 CAPTURE                          VAL R5
       57 CAPTURE                          REF R4
       58 CLOSEUPVALS                      R4
       59 SETTABLEKS                       R3 R2 K10 ["RunDeveloperFrameworkTests"]
       61 LOADB                            R4 0
       62 ORK                              R4 R4 K5 [False]
       63 LOADK                            R5 K11 ["EnableRoactConfigs"]
       64 NEWCLOSURE                       R3 P1
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R5
       67 CAPTURE                          REF R4
       68 CLOSEUPVALS                      R4
       69 SETTABLEKS                       R3 R2 K11 ["EnableRoactConfigs"]
       71 RETURN                           R2 1
