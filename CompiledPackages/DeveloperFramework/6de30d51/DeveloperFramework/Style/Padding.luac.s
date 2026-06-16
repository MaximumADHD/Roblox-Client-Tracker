PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 JUMPIFNOTEQKNIL                  R2 ; [+3]
        4 LOADNIL                          R2
        5 RETURN                           R2 1
        6 RETURN                           R0 2

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+7]
        7 GETUPVAL                         R1 0
        8 GETUPVAL                         R2 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R0
       11 CALL                             R1 2 -1
       12 RETURN                           R1 -1
       13 FASTCALL1                        TYPE R0 ; [+3]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K1 [type]
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKS                    R1 K3 ["table"] ; [+10]
       20 GETUPVAL                         R1 2
       21 GETUPVAL                         R2 1
       22 GETUPVAL                         R3 3
       23 MOVE                             R4 R0
       24 DUPCLOSURE                       R5 K4 [PROTO_1]
       25 CAPTURE                          UPVAL U1
       26 CALL                             R3 2 -1
       27 CALL                             R1 -1 -1
       28 RETURN                           R1 -1
       29 JUMPIFNOTEQKNIL                  R0 ; [+7]
       31 GETUPVAL                         R1 2
       32 GETUPVAL                         R2 1
       33 NEWTABLE                         R3 0 0
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1
       37 LOADNIL                          R1
       38 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R2 1
        1 JUMPIFEQKNIL                     R0 ; [+18]
        3 LOADB                            R2 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K1 [type]
        8 CALL                             R3 1 1
        9 JUMPIFEQKS                       R3 K2 ["number"] ; [+10]
       11 FASTCALL1                        TYPE R0 ; [+3]
       12 MOVE                             R4 R0
       13 GETIMPORT                        R3 K1 [type]
       15 CALL                             R3 1 1
       16 JUMPIFEQKS                       R3 K3 ["table"] ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 FASTCALL2K                       ASSERT R2 K4 ; [+4]
       22 LOADK                            R3 K4 ["Padding must be nil, a number or a table"]
       23 GETIMPORT                        R1 K6 [assert]
       25 CALL                             R1 2 0
       26 GETUPVAL                         R1 0
       27 MOVE                             R2 R0
       28 CALL                             R1 1 1
       29 GETUPVAL                         R2 1
       30 GETUPVAL                         R3 2
       31 MOVE                             R4 R1
       32 DUPTABLE                         R5 K9 [{"Horizontal", "Vertical"}]
       33 GETTABLEKS                       R7 R1 K10 ["Left"]
       35 GETTABLEKS                       R8 R1 K11 ["Right"]
       37 ADD                              R6 R7 R8
       38 SETTABLEKS                       R6 R5 K7 ["Horizontal"]
       40 GETTABLEKS                       R7 R1 K12 ["Top"]
       42 GETTABLEKS                       R8 R1 K13 ["Bottom"]
       44 ADD                              R6 R7 R8
       45 SETTABLEKS                       R6 R5 K8 ["Vertical"]
       47 CALL                             R3 2 -1
       48 CALL                             R2 -1 -1
       49 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R2 K6 ["strict"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K2 ["Parent"]
       18 GETTABLEKS                       R3 R3 K7 ["Dash"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K8 ["collect"]
       23 GETTABLEKS                       R4 R2 K9 ["join"]
       25 GETTABLEKS                       R5 R2 K10 ["map"]
       27 DUPTABLE                         R6 K15 [{"Left", "Top", "Right", "Bottom"}]
       28 LOADN                            R7 0
       29 SETTABLEKS                       R7 R6 K11 ["Left"]
       31 LOADN                            R7 0
       32 SETTABLEKS                       R7 R6 K12 ["Top"]
       34 LOADN                            R7 0
       35 SETTABLEKS                       R7 R6 K13 ["Right"]
       37 LOADN                            R7 0
       38 SETTABLEKS                       R7 R6 K14 ["Bottom"]
       40 DUPCLOSURE                       R7 K16 [PROTO_2]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R6
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R8 K17 [PROTO_3]
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R4
       49 RETURN                           R8 1
