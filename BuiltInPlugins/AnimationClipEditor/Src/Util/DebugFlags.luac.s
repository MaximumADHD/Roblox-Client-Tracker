PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["ProcessService"]
        3 NAMECALL                         R0 R0 K3 ["GetService"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["AnimationClipEditorFlags"]
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
       10 CALL                             R1 1 1
       11 DUPCLOSURE                       R2 K7 [PROTO_2]
       12 CAPTURE                          VAL R0
       13 DUPTABLE                         R3 K13 [{"RunTests", "RunRhodiumTests", "LogRoduxEvents", "LogAnalytics", "RunningUnderCLI"}]
       14 LOADNIL                          R5
       15 ORK                              R5 R5 K14 [False]
       16 LOADK                            R6 K8 ["RunTests"]
       17 NEWCLOSURE                       R4 P2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R6
       20 CAPTURE                          REF R5
       21 CLOSEUPVALS                      R5
       22 SETTABLEKS                       R4 R3 K8 ["RunTests"]
       24 LOADNIL                          R5
       25 ORK                              R5 R5 K14 [False]
       26 LOADK                            R6 K9 ["RunRhodiumTests"]
       27 NEWCLOSURE                       R4 P2
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R6
       30 CAPTURE                          REF R5
       31 CLOSEUPVALS                      R5
       32 SETTABLEKS                       R4 R3 K9 ["RunRhodiumTests"]
       34 LOADNIL                          R5
       35 ORK                              R5 R5 K14 [False]
       36 LOADK                            R6 K10 ["LogRoduxEvents"]
       37 NEWCLOSURE                       R4 P2
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R6
       40 CAPTURE                          REF R5
       41 CLOSEUPVALS                      R5
       42 SETTABLEKS                       R4 R3 K10 ["LogRoduxEvents"]
       44 LOADNIL                          R5
       45 ORK                              R5 R5 K14 [False]
       46 LOADK                            R6 K11 ["LogAnalytics"]
       47 NEWCLOSURE                       R4 P2
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R6
       50 CAPTURE                          REF R5
       51 CLOSEUPVALS                      R5
       52 SETTABLEKS                       R4 R3 K11 ["LogAnalytics"]
       54 MOVE                             R5 R1
       55 ORK                              R5 R5 K14 [False]
       56 LOADK                            R6 K12 ["RunningUnderCLI"]
       57 NEWCLOSURE                       R4 P2
       58 CAPTURE                          VAL R0
       59 CAPTURE                          VAL R6
       60 CAPTURE                          REF R5
       61 CLOSEUPVALS                      R5
       62 SETTABLEKS                       R4 R3 K12 ["RunningUnderCLI"]
       64 RETURN                           R3 1
