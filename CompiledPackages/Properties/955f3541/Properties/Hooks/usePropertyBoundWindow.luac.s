PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["openPropertyBoundWindowAsync"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K3 [{"id", "info"}]
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K1 ["id"]
        9 SETTABLEKS                       R4 R3 K1 ["id"]
       11 GETUPVAL                         R4 3
       12 GETTABLEKS                       R4 R4 K2 ["info"]
       14 CALL                             R4 0 1
       15 SETTABLEKS                       R4 R3 K2 ["info"]
       17 CALL                             R0 3 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["closePropertyBoundWindow"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K2 ["id"]
        9 GETTABLEKS                       R2 R2 K3 ["name"]
       11 GETTABLEKS                       R3 R0 K4 ["info"]
       13 CALL                             R3 0 1
       14 GETTABLEKS                       R3 R3 K5 ["type"]
       16 GETTABLEKS                       R4 R1 K6 ["getIsPropertyBoundWindowOpenSignal"]
       18 MOVE                             R5 R3
       19 MOVE                             R6 R2
       20 CALL                             R4 2 1
       21 GETTABLEKS                       R5 R1 K7 ["getLocalPropertySignal"]
       23 MOVE                             R6 R3
       24 MOVE                             R7 R2
       25 CALL                             R5 2 1
       26 DUPTABLE                         R6 K12 [{"openAsync", "close", "isOpenSignal", "localPropertySignal"}]
       27 NEWCLOSURE                       R7 P0
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R7 R6 K8 ["openAsync"]
       34 NEWCLOSURE                       R7 P1
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R2
       38 SETTABLEKS                       R7 R6 K9 ["close"]
       40 SETTABLEKS                       R4 R6 K10 ["isOpenSignal"]
       42 SETTABLEKS                       R5 R6 K11 ["localPropertySignal"]
       44 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["PropertyEditorTypes"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["PropertyTypes"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["React"]
       23 CALL                             R4 1 1
       24 GETIMPORT                        R5 K6 [require]
       26 GETTABLEKS                       R6 R1 K10 ["Signals"]
       28 CALL                             R5 1 1
       29 GETIMPORT                        R6 K6 [require]
       31 GETTABLEKS                       R7 R0 K11 ["Components"]
       33 GETTABLEKS                       R7 R7 K12 ["Contexts"]
       35 GETTABLEKS                       R7 R7 K13 ["WindowManagerContext"]
       37 CALL                             R6 1 1
       38 DUPCLOSURE                       R7 K14 [PROTO_2]
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R6
       41 RETURN                           R7 1
