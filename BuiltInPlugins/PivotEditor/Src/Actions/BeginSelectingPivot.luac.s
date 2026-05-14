PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isEnumValue"]
        3 MOVE                             R4 R0
        4 CALL                             R3 1 -1
        5 FASTCALL                         ASSERT ; [+2]
        6 GETIMPORT                        R2 K2 [assert]
        8 CALL                             R2 -1 0
        9 GETUPVAL                         R4 1
       10 GETTABLE                         R3 R4 R0
       11 FASTCALL1                        ASSERT R3 ; [+2]
       12 GETIMPORT                        R2 K2 [assert]
       14 CALL                             R2 1 0
       15 FASTCALL1                        TYPE R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K4 [type]
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K5 ["string"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 FASTCALL1                        ASSERT R3 ; [+2]
       25 GETIMPORT                        R2 K2 [assert]
       27 CALL                             R2 1 0
       28 DUPTABLE                         R2 K8 [{"editingMode", "statusMessage"}]
       29 SETTABLEKS                       R0 R2 K6 ["editingMode"]
       31 SETTABLEKS                       R1 R2 K7 ["statusMessage"]
       33 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Utility"]
       15 GETTABLEKS                       R2 R2 K7 ["EditingMode"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R0 K8 ["Packages"]
       20 GETTABLEKS                       R2 R2 K9 ["Framework"]
       22 GETIMPORT                        R3 K4 [require]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 1
       26 GETTABLEKS                       R3 R3 K10 ["Util"]
       28 GETTABLEKS                       R3 R3 K11 ["Action"]
       30 NEWTABLE                         R4 4 0
       32 GETTABLEKS                       R5 R1 K12 ["SelectGeometry"]
       34 LOADB                            R6 1
       35 SETTABLE                         R6 R4 R5
       36 GETTABLEKS                       R5 R1 K13 ["SelectSurface"]
       38 LOADB                            R6 1
       39 SETTABLE                         R6 R4 R5
       40 GETTABLEKS                       R5 R1 K14 ["SelectPart"]
       42 LOADB                            R6 1
       43 SETTABLE                         R6 R4 R5
       44 MOVE                             R5 R3
       45 GETIMPORT                        R6 K1 [script]
       47 GETTABLEKS                       R6 R6 K15 ["Name"]
       49 DUPCLOSURE                       R7 K16 [PROTO_0]
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CALL                             R5 2 -1
       53 RETURN                           R5 -1
