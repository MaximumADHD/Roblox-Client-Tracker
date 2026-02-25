PROTO_0:
        0 GETUPVAL                         R3 0
        1 NAMECALL                         R3 R3 K3 ["getValue"]
        3 CALL                             R3 1 1
        4 MULK                             R2 R3 K2 [270]
        5 MODK                             R1 R2 K1 [360]
        6 SUBK                             R0 R1 K0 [180]
        7 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R0 K2 [task.wait]
        2 LOADK                            R1 K3 [0.0333333333333333]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 -1
        7 CALL                             R0 -1 0
        8 JUMPBACK                         ; [-9]
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 1
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          VAL R0
        8 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R1
        7 NEWTABLE                         R4 0 0
        9 CALL                             R2 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K1 ["useBinding"]
       13 MOVE                             R4 R2
       14 CALL                             R4 0 -1
       15 CALL                             R3 -1 2
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K2 ["useEffect"]
       19 NEWCLOSURE                       R6 P1
       20 CAPTURE                          VAL R4
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R7 0 1
       24 MOVE                             R8 R2
       25 SETLIST                          R7 R8 1 [1]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R5 2
       29 LOADK                            R6 K3 ["Frame"]
       30 NEWTABLE                         R7 2 0
       32 GETTABLEKS                       R8 R0 K4 ["layoutOrder"]
       34 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       36 GETUPVAL                         R9 1
       37 GETTABLEKS                       R8 R9 K6 ["Tag"]
       39 LOADK                            R9 K7 ["Explorer-Icon"]
       40 SETTABLE                         R9 R7 R8
       41 DUPTABLE                         R8 K9 [{"LoadingSpinner"}]
       42 GETUPVAL                         R9 2
       43 LOADK                            R10 K10 ["ImageLabel"]
       44 NEWTABLE                         R11 4 0
       46 GETUPVAL                         R13 3
       47 GETTABLEKS                       R12 R13 K11 ["standard"]
       49 LOADK                            R13 K12 ["loadingSpinner"]
       50 CALL                             R12 1 1
       51 SETTABLEKS                       R12 R11 K13 ["Image"]
       53 SETTABLEKS                       R3 R11 K14 ["Rotation"]
       55 GETUPVAL                         R13 1
       56 GETTABLEKS                       R12 R13 K6 ["Tag"]
       58 LOADK                            R13 K15 ["Explorer-View Explorer-Content-Standard data-testid=LoadingSpinner"]
       59 SETTABLE                         R13 R11 R12
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K8 ["LoadingSpinner"]
       63 CALL                             R5 3 -1
       64 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["ImageUrl"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Hooks"]
       25 GETTABLEKS                       R4 R5 K11 ["useGlobalClock"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K12 ["createElement"]
       30 DUPCLOSURE                       R5 K13 [PROTO_4]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R1
       35 RETURN                           R5 1
