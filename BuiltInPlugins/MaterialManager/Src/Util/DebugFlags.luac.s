PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["FindFirstChild"]
        4 CALL                             R0 2 1
        5 JUMPIFNOT                        R0 ; [+5]
        6 GETUPVAL                         R3 2
        7 NAMECALL                         R1 R0 K0 ["FindFirstChild"]
        9 CALL                             R1 2 1
       10 JUMPIF                           R1 ; [+2]
       11 GETUPVAL                         R1 3
       12 RETURN                           R1 1
       13 GETUPVAL                         R2 2
       14 GETTABLE                         R1 R0 R2
       15 GETTABLEKS                       R1 R1 K1 ["Value"]
       17 RETURN                           R1 1

PROTO_1:
        0 ORK                              R1 R1 K0 [False]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          REF R1
        6 CLOSEUPVALS                      R1
        7 RETURN                           R2 1

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
       15 GETTABLEKS                       R3 R1 K7 ["Name"]
       17 LOADK                            R4 K8 ["Flags"]
       18 CONCAT                           R2 R3 R4
       19 DUPCLOSURE                       R3 K9 [PROTO_1]
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R4 4 0
       24 LOADNIL                          R6
       25 ORK                              R6 R6 K10 [False]
       26 LOADK                            R7 K11 ["RunningUnderCLI"]
       27 NEWCLOSURE                       R5 P1
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R7
       31 CAPTURE                          REF R6
       32 CLOSEUPVALS                      R6
       33 SETTABLEKS                       R5 R4 K11 ["RunningUnderCLI"]
       35 LOADB                            R6 0
       36 ORK                              R6 R6 K10 [False]
       37 LOADK                            R7 K12 ["RunTests"]
       38 NEWCLOSURE                       R5 P1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R7
       42 CAPTURE                          REF R6
       43 CLOSEUPVALS                      R6
       44 SETTABLEKS                       R5 R4 K12 ["RunTests"]
       46 LOADNIL                          R6
       47 ORK                              R6 R6 K10 [False]
       48 LOADK                            R7 K13 ["LogTestsQuiet"]
       49 NEWCLOSURE                       R5 P1
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R7
       53 CAPTURE                          REF R6
       54 CLOSEUPVALS                      R6
       55 SETTABLEKS                       R5 R4 K13 ["LogTestsQuiet"]
       57 LOADNIL                          R6
       58 ORK                              R6 R6 K10 [False]
       59 LOADK                            R7 K14 ["LogAnalytics"]
       60 NEWCLOSURE                       R5 P1
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R7
       64 CAPTURE                          REF R6
       65 CLOSEUPVALS                      R6
       66 SETTABLEKS                       R5 R4 K14 ["LogAnalytics"]
       68 RETURN                           R4 1
