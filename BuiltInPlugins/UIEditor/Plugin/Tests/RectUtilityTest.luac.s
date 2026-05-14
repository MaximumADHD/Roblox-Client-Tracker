PROTO_0:
        0 GETIMPORT                        R0 K2 [Rect.new]
        2 GETIMPORT                        R1 K4 [Vector2.new]
        4 LOADN                            R2 1
        5 LOADN                            R3 1
        6 CALL                             R1 2 1
        7 GETIMPORT                        R2 K4 [Vector2.new]
        9 LOADN                            R3 3
       10 LOADN                            R4 3
       11 CALL                             R2 2 -1
       12 CALL                             R0 -1 1
       13 GETIMPORT                        R1 K4 [Vector2.new]
       15 LOADN                            R2 2
       16 LOADN                            R3 2
       17 CALL                             R1 2 1
       18 GETUPVAL                         R4 0
       19 MOVE                             R6 R0
       20 MOVE                             R7 R1
       21 NAMECALL                         R4 R4 K5 ["containsPoint"]
       23 CALL                             R4 3 1
       24 JUMPIFEQKB                       R4 TRUE ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       30 LOADK                            R4 K6 ["Point was not inside rectangle"]
       31 GETIMPORT                        R2 K8 [assert]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [Rect.new]
        2 GETIMPORT                        R1 K4 [Vector2.new]
        4 LOADN                            R2 1
        5 LOADN                            R3 1
        6 CALL                             R1 2 1
        7 GETIMPORT                        R2 K4 [Vector2.new]
        9 LOADN                            R3 3
       10 LOADN                            R4 3
       11 CALL                             R2 2 -1
       12 CALL                             R0 -1 1
       13 GETIMPORT                        R1 K4 [Vector2.new]
       15 LOADN                            R2 2
       16 LOADN                            R3 1
       17 CALL                             R1 2 1
       18 GETUPVAL                         R4 0
       19 MOVE                             R6 R0
       20 MOVE                             R7 R1
       21 NAMECALL                         R4 R4 K5 ["containsPoint"]
       23 CALL                             R4 3 1
       24 JUMPIFEQKB                       R4 TRUE ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       30 LOADK                            R4 K6 ["Point was not inside rectangle"]
       31 GETIMPORT                        R2 K8 [assert]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [Rect.new]
        2 GETIMPORT                        R1 K4 [Vector2.new]
        4 LOADN                            R2 1
        5 LOADN                            R3 1
        6 CALL                             R1 2 1
        7 GETIMPORT                        R2 K4 [Vector2.new]
        9 LOADN                            R3 3
       10 LOADN                            R4 3
       11 CALL                             R2 2 -1
       12 CALL                             R0 -1 1
       13 GETIMPORT                        R1 K4 [Vector2.new]
       15 LOADN                            R2 0
       16 LOADN                            R3 0
       17 CALL                             R1 2 1
       18 GETUPVAL                         R4 0
       19 MOVE                             R6 R0
       20 MOVE                             R7 R1
       21 NAMECALL                         R4 R4 K5 ["containsPoint"]
       23 CALL                             R4 3 1
       24 JUMPIFEQKB                       R4 FALSE ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K6 ; [+4]
       30 LOADK                            R4 K6 ["Point was not outside rectangle"]
       31 GETIMPORT                        R2 K8 [assert]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R0 K2 [Rect.new]
        2 GETIMPORT                        R1 K4 [Vector2.new]
        4 LOADN                            R2 1
        5 LOADN                            R3 1
        6 CALL                             R1 2 1
        7 GETIMPORT                        R2 K4 [Vector2.new]
        9 LOADN                            R3 3
       10 LOADN                            R4 3
       11 CALL                             R2 2 -1
       12 CALL                             R0 -1 1
       13 GETIMPORT                        R1 K4 [Vector2.new]
       15 LOADN                            R2 2
       16 LOADK                            R3 K5 [0.5]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R4 0
       19 MOVE                             R6 R0
       20 MOVE                             R7 R1
       21 NAMECALL                         R4 R4 K6 ["containsPoint"]
       23 CALL                             R4 3 1
       24 JUMPIFEQKB                       R4 FALSE ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       30 LOADK                            R4 K7 ["Point was not outside rectangle"]
       31 GETIMPORT                        R2 K9 [assert]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R0 K2 [Rect.new]
        2 GETIMPORT                        R1 K4 [Vector2.new]
        4 LOADN                            R2 1
        5 LOADN                            R3 1
        6 CALL                             R1 2 1
        7 GETIMPORT                        R2 K4 [Vector2.new]
        9 LOADN                            R3 3
       10 LOADN                            R4 3
       11 CALL                             R2 2 -1
       12 CALL                             R0 -1 1
       13 GETIMPORT                        R1 K4 [Vector2.new]
       15 LOADN                            R2 2
       16 LOADK                            R3 K5 [3.5]
       17 CALL                             R1 2 1
       18 GETUPVAL                         R4 0
       19 MOVE                             R6 R0
       20 MOVE                             R7 R1
       21 NAMECALL                         R4 R4 K6 ["containsPoint"]
       23 CALL                             R4 3 1
       24 JUMPIFEQKB                       R4 FALSE ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       30 LOADK                            R4 K7 ["Point was not outside rectangle"]
       31 GETIMPORT                        R2 K9 [assert]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [Rect.new]
        2 GETIMPORT                        R1 K4 [Vector2.new]
        4 LOADN                            R2 1
        5 LOADN                            R3 1
        6 CALL                             R1 2 1
        7 GETIMPORT                        R2 K4 [Vector2.new]
        9 LOADN                            R3 3
       10 LOADN                            R4 3
       11 CALL                             R2 2 -1
       12 CALL                             R0 -1 1
       13 GETIMPORT                        R1 K4 [Vector2.new]
       15 LOADK                            R2 K5 [0.5]
       16 LOADN                            R3 2
       17 CALL                             R1 2 1
       18 GETUPVAL                         R4 0
       19 MOVE                             R6 R0
       20 MOVE                             R7 R1
       21 NAMECALL                         R4 R4 K6 ["containsPoint"]
       23 CALL                             R4 3 1
       24 JUMPIFEQKB                       R4 FALSE ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       30 LOADK                            R4 K7 ["Point was not outside rectangle"]
       31 GETIMPORT                        R2 K9 [assert]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [Rect.new]
        2 GETIMPORT                        R1 K4 [Vector2.new]
        4 LOADN                            R2 1
        5 LOADN                            R3 1
        6 CALL                             R1 2 1
        7 GETIMPORT                        R2 K4 [Vector2.new]
        9 LOADN                            R3 3
       10 LOADN                            R4 3
       11 CALL                             R2 2 -1
       12 CALL                             R0 -1 1
       13 GETIMPORT                        R1 K4 [Vector2.new]
       15 LOADK                            R2 K5 [0.5]
       16 LOADN                            R3 2
       17 CALL                             R1 2 1
       18 GETUPVAL                         R4 0
       19 MOVE                             R6 R0
       20 MOVE                             R7 R1
       21 NAMECALL                         R4 R4 K6 ["containsPoint"]
       23 CALL                             R4 3 1
       24 JUMPIFEQKB                       R4 FALSE ; [+2]
       26 LOADB                            R3 0 +1
       27 LOADB                            R3 1
       28 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       30 LOADK                            R4 K7 ["Point was not outside rectangle"]
       31 GETIMPORT                        R2 K9 [assert]
       33 CALL                             R2 2 0
       34 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Running RectUtilityTest"]
        2 NAMECALL                         R0 R0 K1 ["log"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 2
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 3
       10 CALL                             R0 0 0
       11 GETUPVAL                         R0 4
       12 CALL                             R0 0 0
       13 GETUPVAL                         R0 5
       14 CALL                             R0 0 0
       15 GETUPVAL                         R0 6
       16 CALL                             R0 0 0
       17 GETUPVAL                         R0 7
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Log"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K6 ["RectUtility"]
       22 CALL                             R1 1 1
       23 DUPCLOSURE                       R2 K7 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 DUPCLOSURE                       R3 K8 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 DUPCLOSURE                       R4 K9 [PROTO_2]
       28 CAPTURE                          VAL R1
       29 DUPCLOSURE                       R5 K10 [PROTO_3]
       30 CAPTURE                          VAL R1
       31 DUPCLOSURE                       R6 K11 [PROTO_4]
       32 CAPTURE                          VAL R1
       33 DUPCLOSURE                       R7 K12 [PROTO_5]
       34 CAPTURE                          VAL R1
       35 DUPCLOSURE                       R8 K13 [PROTO_6]
       36 CAPTURE                          VAL R1
       37 DUPCLOSURE                       R9 K14 [PROTO_7]
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R4
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R7
       45 CAPTURE                          VAL R8
       46 LOADK                            R12 K15 ["Running RectUtilityTest"]
       47 NAMECALL                         R10 R0 K16 ["log"]
       49 CALL                             R10 2 0
       50 MOVE                             R10 R2
       51 CALL                             R10 0 0
       52 MOVE                             R10 R3
       53 CALL                             R10 0 0
       54 MOVE                             R10 R4
       55 CALL                             R10 0 0
       56 MOVE                             R10 R5
       57 CALL                             R10 0 0
       58 MOVE                             R10 R6
       59 CALL                             R10 0 0
       60 MOVE                             R10 R7
       61 CALL                             R10 0 0
       62 MOVE                             R10 R8
       63 CALL                             R10 0 0
       64 RETURN                           R0 0
