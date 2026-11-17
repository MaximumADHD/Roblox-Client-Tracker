PROTO_0:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["LayeredClothingEditorFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+9]
        6 MOVE                             R4 R0
        7 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 JUMPIFNOT                        R2 ; [+3]
       11 GETTABLE                         R2 R1 R0
       12 GETTABLEKS                       R2 R2 K2 ["Value"]
       14 RETURN                           R2 1
       15 LOADB                            R2 0
       16 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["LayeredClothingEditorFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 LOADK                            R4 K2 ["RunTests"]
        7 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 MOVE                             R0 R2
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETTABLEKS                       R0 R1 K2 ["RunTests"]
       14 GETTABLEKS                       R0 R0 K3 ["Value"]
       16 RETURN                           R0 1
       17 LOADB                            R0 0
       18 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["LayeredClothingEditorFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 LOADK                            R4 K2 ["RunRhodiumTests"]
        7 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 MOVE                             R0 R2
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETTABLEKS                       R0 R1 K2 ["RunRhodiumTests"]
       14 GETTABLEKS                       R0 R0 K3 ["Value"]
       16 RETURN                           R0 1
       17 LOADB                            R0 0
       18 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["LayeredClothingEditorFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 LOADK                            R4 K2 ["LogRoduxEvents"]
        7 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 MOVE                             R0 R2
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETTABLEKS                       R0 R1 K2 ["LogRoduxEvents"]
       14 GETTABLEKS                       R0 R0 K3 ["Value"]
       16 RETURN                           R0 1
       17 LOADB                            R0 0
       18 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["LayeredClothingEditorFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 LOADK                            R4 K2 ["LogAnalytics"]
        7 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 MOVE                             R0 R2
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETTABLEKS                       R0 R1 K2 ["LogAnalytics"]
       14 GETTABLEKS                       R0 R0 K3 ["Value"]
       16 RETURN                           R0 1
       17 LOADB                            R0 0
       18 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["LayeredClothingEditorFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 LOADK                            R4 K2 ["MockItemHasFullCage"]
        7 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 MOVE                             R0 R2
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETTABLEKS                       R0 R1 K2 ["MockItemHasFullCage"]
       14 GETTABLEKS                       R0 R0 K3 ["Value"]
       16 RETURN                           R0 1
       17 LOADB                            R0 0
       18 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["LayeredClothingEditorFlags"]
        2 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
        4 CALL                             R1 2 1
        5 JUMPIFNOT                        R1 ; [+11]
        6 LOADK                            R4 K2 ["UseMockCages"]
        7 NAMECALL                         R2 R1 K1 ["FindFirstChild"]
        9 CALL                             R2 2 1
       10 MOVE                             R0 R2
       11 JUMPIFNOT                        R0 ; [+6]
       12 GETTABLEKS                       R0 R1 K2 ["UseMockCages"]
       14 GETTABLEKS                       R0 R0 K3 ["Value"]
       16 RETURN                           R0 1
       17 LOADB                            R0 0
       18 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["Workspace"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 NEWTABLE                         R1 8 0
        9 DUPCLOSURE                       R2 K4 [PROTO_0]
       10 CAPTURE                          VAL R0
       11 DUPCLOSURE                       R3 K5 [PROTO_1]
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R3 R1 K6 ["RunTests"]
       15 DUPCLOSURE                       R3 K7 [PROTO_2]
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R3 R1 K8 ["RunRhodiumTests"]
       19 DUPCLOSURE                       R3 K9 [PROTO_3]
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R3 R1 K10 ["LogRoduxEvents"]
       23 DUPCLOSURE                       R3 K11 [PROTO_4]
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R3 R1 K12 ["LogAnalytics"]
       27 DUPCLOSURE                       R3 K13 [PROTO_5]
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R3 R1 K14 ["MockItemHasFullCage"]
       31 DUPCLOSURE                       R3 K15 [PROTO_6]
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R3 R1 K16 ["UseMockCages"]
       35 RETURN                           R1 1
