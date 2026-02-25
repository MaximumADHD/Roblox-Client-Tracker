PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["PivotEditorFlags"]
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
        9 NEWTABLE                         R2 4 0
       11 LOADNIL                          R4
       12 ORK                              R4 R4 K5 [False]
       13 LOADK                            R5 K6 ["RunDeveloperFrameworkTests"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R5
       17 CAPTURE                          REF R4
       18 CLOSEUPVALS                      R4
       19 SETTABLEKS                       R3 R2 K6 ["RunDeveloperFrameworkTests"]
       21 LOADNIL                          R4
       22 ORK                              R4 R4 K5 [False]
       23 LOADK                            R5 K7 ["RunningUnderCLI"]
       24 NEWCLOSURE                       R3 P1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R5
       27 CAPTURE                          REF R4
       28 CLOSEUPVALS                      R4
       29 SETTABLEKS                       R3 R2 K7 ["RunningUnderCLI"]
       31 LOADNIL                          R4
       32 ORK                              R4 R4 K5 [False]
       33 LOADK                            R5 K8 ["RunTests"]
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R5
       37 CAPTURE                          REF R4
       38 CLOSEUPVALS                      R4
       39 SETTABLEKS                       R3 R2 K8 ["RunTests"]
       41 RETURN                           R2 1
