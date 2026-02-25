PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+4]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["createTestStore"]
        5 CALL                             R1 0 1
        6 MOVE                             R0 R1
        7 NEWTABLE                         R1 0 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K1 ["Store"]
       12 GETTABLEKS                       R2 R3 K2 ["new"]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 GETUPVAL                         R4 2
       17 GETTABLEKS                       R3 R4 K2 ["new"]
       19 GETUPVAL                         R5 3
       20 GETTABLEKS                       R4 R5 K2 ["new"]
       22 CALL                             R4 0 -1
       23 CALL                             R3 -1 -1
       24 SETLIST                          R1 R2 -1 [1]
       26 MOVE                             R2 R0
       27 RETURN                           R1 2

PROTO_1:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["mount"]
        3 GETUPVAL                         R1 2
        4 GETUPVAL                         R2 3
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 CALL                             R0 2 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["getTempScreenGui"]
        3 CALL                             R3 0 1
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R2
        6 CALL                             R4 1 2
        7 GETUPVAL                         R6 2
        8 MOVE                             R7 R4
        9 DUPTABLE                         R8 K2 [{"test"}]
       10 SETTABLEKS                       R0 R8 K1 ["test"]
       12 CALL                             R6 2 1
       13 LOADNIL                          R7
       14 GETUPVAL                         R9 3
       15 GETTABLEKS                       R8 R9 K3 ["act"]
       17 NEWCLOSURE                       R9 P0
       18 CAPTURE                          REF R7
       19 CAPTURE                          UPVAL U3
       20 CAPTURE                          VAL R6
       21 CAPTURE                          VAL R3
       22 CALL                             R8 1 0
       23 GETIMPORT                        R8 K5 [pcall]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 CAPTURE                          VAL R5
       29 CALL                             R8 1 2
       30 GETUPVAL                         R11 3
       31 GETTABLEKS                       R10 R11 K6 ["unmount"]
       33 MOVE                             R11 R7
       34 CALL                             R10 1 0
       35 JUMPIF                           R2 ; [+3]
       36 NAMECALL                         R10 R5 K7 ["destruct"]
       38 CALL                             R10 1 0
       39 GETIMPORT                        R10 K9 [ipairs]
       41 MOVE                             R11 R4
       42 CALL                             R10 1 3
       43 FORGPREP_INEXT                   R10
       44 NAMECALL                         R15 R14 K10 ["destroy"]
       46 CALL                             R15 1 0
       47 FORGLOOP                         R10 2 [inext] ; [-4]
       49 JUMPIF                           R8 ; [+4]
       50 GETIMPORT                        R10 K12 [error]
       52 MOVE                             R11 R9
       53 CALL                             R10 1 0
       54 CLOSEUPVALS                      R7
       55 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["TestHelpers"]
       27 GETTABLEKS                       R6 R4 K10 ["Instances"]
       29 GETTABLEKS                       R5 R6 K11 ["MockToastNotificationService"]
       31 GETTABLEKS                       R6 R4 K12 ["provideMockContext"]
       33 GETIMPORT                        R7 K4 [require]
       35 GETTABLEKS                       R10 R0 K13 ["Src"]
       37 GETTABLEKS                       R9 R10 K14 ["Utility"]
       39 GETTABLEKS                       R8 R9 K15 ["TestHelper"]
       41 CALL                             R7 1 1
       42 GETIMPORT                        R8 K4 [require]
       44 GETTABLEKS                       R11 R0 K13 ["Src"]
       46 GETTABLEKS                       R10 R11 K14 ["Utility"]
       48 GETTABLEKS                       R9 R10 K16 ["ToastNotification"]
       50 CALL                             R8 1 1
       51 NEWTABLE                         R9 1 0
       53 DUPCLOSURE                       R10 K17 [PROTO_0]
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R5
       58 DUPCLOSURE                       R11 K18 [PROTO_3]
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R1
       63 SETTABLEKS                       R11 R9 K19 ["runComponentTest"]
       65 RETURN                           R9 1
