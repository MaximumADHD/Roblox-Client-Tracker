PROTO_0:
        0 LOADB                            R2 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["FIRST"]
        4 JUMPIFNOTLE                      R3 R1 ; [+8]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["LAST"]
        9 JUMPIFLE                         R1 R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["isValid"]
        4 CALL                             R2 2 1
        5 JUMPIF                           R2 ; [+12]
        6 GETIMPORT                        R2 K2 [error]
        8 LOADK                            R3 K3 ["Direction %s is not valid. Cannot convert to short name."]
        9 FASTCALL1                        TOSTRING R1 ; [+3]
       10 MOVE                             R6 R1
       11 GETIMPORT                        R5 K5 [tostring]
       13 CALL                             R5 1 1
       14 NAMECALL                         R3 R3 K6 ["format"]
       16 CALL                             R3 2 -1
       17 CALL                             R2 -1 0
       18 GETUPVAL                         R3 1
       19 GETTABLE                         R2 R3 R1
       20 RETURN                           R2 1

PROTO_2:
        0 MINUS                            R5 R0
        1 MULK                             R4 R5 K1 [0.00277777777777778]
        2 FASTCALL1                        MATH_CEIL R4 ; [+2]
        3 GETIMPORT                        R3 K4 [math.ceil]
        5 CALL                             R3 1 1
        6 MULK                             R2 R3 K0 [360]
        7 ADD                              R1 R0 R2
        8 RETURN                           R1 1

PROTO_3:
        0 GETGLOBAL                        R2 K0 ["normalizeAngle"]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 1
        4 ADDK                             R7 R2 K4 [22.5]
        5 MULK                             R6 R7 K3 [0.0222222222222222]
        6 FASTCALL1                        MATH_FLOOR R6 ; [+2]
        7 GETIMPORT                        R5 K7 [math.floor]
        9 CALL                             R5 1 1
       10 MODK                             R4 R5 K2 [8]
       11 ADDK                             R3 R4 K1 [1]
       12 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["E"]
        3 JUMPIFEQKN                       R4 K1 [1] ; [+2]
        5 LOADB                            R3 0 +1
        6 LOADB                            R3 1
        7 FASTCALL2K                       ASSERT R3 K2 ; [+4]
        9 LOADK                            R4 K2 ["Direction.E was not the first direction."]
       10 GETIMPORT                        R2 K4 [assert]
       12 CALL                             R2 2 0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K5 ["NE"]
       16 JUMPIFEQKN                       R4 K6 [8] ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 FASTCALL2K                       ASSERT R3 K7 ; [+4]
       22 LOADK                            R4 K7 ["Direction.NE was not the last direction."]
       23 GETIMPORT                        R2 K4 [assert]
       25 CALL                             R2 2 0
       26 GETUPVAL                         R3 0
       27 MOVE                             R5 R1
       28 NAMECALL                         R3 R3 K8 ["isValid"]
       30 CALL                             R3 2 -1
       31 FASTCALL                         ASSERT ; [+2]
       32 GETIMPORT                        R2 K4 [assert]
       34 CALL                             R2 -1 0
       35 SUBK                             R3 R1 K1 [1]
       36 MULK                             R2 R3 K9 [45]
       37 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 LOADN                            R1 0
        4 SETTABLEKS                       R1 R0 K0 ["NOT_SET"]
        6 LOADN                            R1 1
        7 SETTABLEKS                       R1 R0 K1 ["E"]
        9 LOADN                            R1 2
       10 SETTABLEKS                       R1 R0 K2 ["SE"]
       12 LOADN                            R1 3
       13 SETTABLEKS                       R1 R0 K3 ["S"]
       15 LOADN                            R1 4
       16 SETTABLEKS                       R1 R0 K4 ["SW"]
       18 LOADN                            R1 5
       19 SETTABLEKS                       R1 R0 K5 ["W"]
       21 LOADN                            R1 6
       22 SETTABLEKS                       R1 R0 K6 ["NW"]
       24 LOADN                            R1 7
       25 SETTABLEKS                       R1 R0 K7 ["N"]
       27 LOADN                            R1 8
       28 SETTABLEKS                       R1 R0 K8 ["NE"]
       30 GETTABLEKS                       R1 R0 K1 ["E"]
       32 SETTABLEKS                       R1 R0 K9 ["FIRST"]
       34 GETTABLEKS                       R1 R0 K8 ["NE"]
       36 SETTABLEKS                       R1 R0 K10 ["LAST"]
       38 NEWTABLE                         R1 8 0
       40 GETTABLEKS                       R2 R0 K1 ["E"]
       42 LOADK                            R3 K1 ["E"]
       43 SETTABLE                         R3 R1 R2
       44 GETTABLEKS                       R2 R0 K2 ["SE"]
       46 LOADK                            R3 K2 ["SE"]
       47 SETTABLE                         R3 R1 R2
       48 GETTABLEKS                       R2 R0 K3 ["S"]
       50 LOADK                            R3 K3 ["S"]
       51 SETTABLE                         R3 R1 R2
       52 GETTABLEKS                       R2 R0 K4 ["SW"]
       54 LOADK                            R3 K4 ["SW"]
       55 SETTABLE                         R3 R1 R2
       56 GETTABLEKS                       R2 R0 K5 ["W"]
       58 LOADK                            R3 K5 ["W"]
       59 SETTABLE                         R3 R1 R2
       60 GETTABLEKS                       R2 R0 K6 ["NW"]
       62 LOADK                            R3 K6 ["NW"]
       63 SETTABLE                         R3 R1 R2
       64 GETTABLEKS                       R2 R0 K7 ["N"]
       66 LOADK                            R3 K7 ["N"]
       67 SETTABLE                         R3 R1 R2
       68 GETTABLEKS                       R2 R0 K8 ["NE"]
       70 LOADK                            R3 K8 ["NE"]
       71 SETTABLE                         R3 R1 R2
       72 DUPCLOSURE                       R2 K11 [PROTO_0]
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R2 R0 K12 ["isValid"]
       76 DUPCLOSURE                       R2 K13 [PROTO_1]
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R1
       79 SETTABLEKS                       R2 R0 K14 ["toShortName"]
       81 DUPCLOSURE                       R2 K15 [PROTO_2]
       82 SETGLOBAL                        R2 K16 ["normalizeAngle"]
       84 DUPCLOSURE                       R2 K17 [PROTO_3]
       85 SETTABLEKS                       R2 R0 K18 ["angleToDirection"]
       87 DUPCLOSURE                       R2 K19 [PROTO_4]
       88 CAPTURE                          VAL R0
       89 SETTABLEKS                       R2 R0 K20 ["directionToAngle"]
       91 RETURN                           R0 1
