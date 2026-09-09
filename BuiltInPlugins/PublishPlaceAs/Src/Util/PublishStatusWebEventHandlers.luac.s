PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+4]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 RETURN                           R1 2
       10 GETTABLEKS                       R2 R0 K3 ["width"]
       12 FASTCALL1                        TONUMBER R2 ; [+2]
       13 GETIMPORT                        R1 K5 [tonumber]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R0 K6 ["height"]
       18 FASTCALL1                        TONUMBER R3 ; [+2]
       19 GETIMPORT                        R2 K5 [tonumber]
       21 CALL                             R2 1 1
       22 JUMPIFNOT                        R1 ; [+7]
       23 JUMPIFNOT                        R2 ; [+6]
       24 LOADN                            R3 0
       25 JUMPIFLE                         R1 R3 ; [+4]
       27 LOADN                            R3 0
       28 JUMPIFNOTLE                      R2 R3 ; [+4]
       30 LOADNIL                          R3
       31 LOADNIL                          R4
       32 RETURN                           R3 2
       33 FASTCALL1                        MATH_FLOOR R1 ; [+3]
       34 MOVE                             R4 R1
       35 GETIMPORT                        R3 K9 [math.floor]
       37 CALL                             R3 1 1
       38 FASTCALL1                        MATH_FLOOR R2 ; [+3]
       39 MOVE                             R5 R2
       40 GETIMPORT                        R4 K9 [math.floor]
       42 CALL                             R4 1 1
       43 RETURN                           R3 2

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onCloseRequested"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R4 R0
        2 GETIMPORT                        R3 K1 [type]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["table"] ; [+4]
        7 LOADNIL                          R1
        8 LOADNIL                          R2
        9 JUMP                             ; [+35]
       10 GETTABLEKS                       R4 R0 K3 ["width"]
       12 FASTCALL1                        TONUMBER R4 ; [+2]
       13 GETIMPORT                        R3 K5 [tonumber]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R5 R0 K6 ["height"]
       18 FASTCALL1                        TONUMBER R5 ; [+2]
       19 GETIMPORT                        R4 K5 [tonumber]
       21 CALL                             R4 1 1
       22 JUMPIFNOT                        R3 ; [+7]
       23 JUMPIFNOT                        R4 ; [+6]
       24 LOADN                            R5 0
       25 JUMPIFLE                         R3 R5 ; [+4]
       27 LOADN                            R5 0
       28 JUMPIFNOTLE                      R4 R5 ; [+4]
       30 LOADNIL                          R1
       31 LOADNIL                          R2
       32 JUMP                             ; [+12]
       33 FASTCALL1                        MATH_FLOOR R3 ; [+3]
       34 MOVE                             R6 R3
       35 GETIMPORT                        R5 K9 [math.floor]
       37 CALL                             R5 1 1
       38 MOVE                             R1 R5
       39 FASTCALL1                        MATH_FLOOR R4 ; [+3]
       40 MOVE                             R6 R4
       41 GETIMPORT                        R5 K9 [math.floor]
       43 CALL                             R5 1 1
       44 MOVE                             R2 R5
       45 JUMPIFNOT                        R1 ; [+7]
       46 JUMPIFNOT                        R2 ; [+6]
       47 GETUPVAL                         R3 0
       48 GETTABLEKS                       R3 R3 K10 ["onContentSizeRequested"]
       50 MOVE                             R4 R1
       51 MOVE                             R5 R2
       52 CALL                             R3 2 0
       53 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["WebEvents"]
        5 GETTABLEKS                       R2 R2 K1 ["Close"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          VAL R0
        9 SETTABLE                         R3 R1 R2
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["WebEvents"]
       13 GETTABLEKS                       R2 R2 K2 ["Resize"]
       15 NEWCLOSURE                       R3 P1
       16 CAPTURE                          VAL R0
       17 SETTABLE                         R3 R1 R2
       18 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["PublishStatusInfo"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_0]
       19 NEWTABLE                         R3 1 0
       21 DUPCLOSURE                       R4 K9 [PROTO_3]
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R4 R3 K10 ["create"]
       25 RETURN                           R3 1
