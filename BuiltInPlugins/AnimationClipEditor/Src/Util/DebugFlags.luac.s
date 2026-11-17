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
        7 DUPCLOSURE                       R2 K4 [PROTO_0]
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R1 K6 [pcall]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K7 [PROTO_2]
       13 CAPTURE                          VAL R0
       14 DUPTABLE                         R3 K13 [{"RunTests", "RunRhodiumTests", "LogRoduxEvents", "LogAnalytics", "RunningUnderCLI"}]
       15 LOADNIL                          R5
       16 ORK                              R5 R5 K14 [False]
       17 LOADK                            R6 K8 ["RunTests"]
       18 NEWCLOSURE                       R4 P2
       19 CAPTURE                          VAL R0
       20 CAPTURE                          VAL R6
       21 CAPTURE                          REF R5
       22 CLOSEUPVALS                      R5
       23 SETTABLEKS                       R4 R3 K8 ["RunTests"]
       25 LOADNIL                          R5
       26 ORK                              R5 R5 K14 [False]
       27 LOADK                            R6 K9 ["RunRhodiumTests"]
       28 NEWCLOSURE                       R4 P2
       29 CAPTURE                          VAL R0
       30 CAPTURE                          VAL R6
       31 CAPTURE                          REF R5
       32 CLOSEUPVALS                      R5
       33 SETTABLEKS                       R4 R3 K9 ["RunRhodiumTests"]
       35 LOADNIL                          R5
       36 ORK                              R5 R5 K14 [False]
       37 LOADK                            R6 K10 ["LogRoduxEvents"]
       38 NEWCLOSURE                       R4 P2
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R6
       41 CAPTURE                          REF R5
       42 CLOSEUPVALS                      R5
       43 SETTABLEKS                       R4 R3 K10 ["LogRoduxEvents"]
       45 LOADNIL                          R5
       46 ORK                              R5 R5 K14 [False]
       47 LOADK                            R6 K11 ["LogAnalytics"]
       48 NEWCLOSURE                       R4 P2
       49 CAPTURE                          VAL R0
       50 CAPTURE                          VAL R6
       51 CAPTURE                          REF R5
       52 CLOSEUPVALS                      R5
       53 SETTABLEKS                       R4 R3 K11 ["LogAnalytics"]
       55 MOVE                             R5 R1
       56 ORK                              R5 R5 K14 [False]
       57 LOADK                            R6 K12 ["RunningUnderCLI"]
       58 NEWCLOSURE                       R4 P2
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R6
       61 CAPTURE                          REF R5
       62 CLOSEUPVALS                      R5
       63 SETTABLEKS                       R4 R3 K12 ["RunningUnderCLI"]
       65 RETURN                           R3 1
