PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K1 [script]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["listeners"]
        2 LOADB                            R3 1
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["listeners"]
        2 LOADNIL                          R3
        3 SETTABLE                         R3 R2 R1
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["attemptLoad"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CALL                             R2 1 -1
        5 RETURN                           R2 -1

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["requirers"]
        4 MOVE                             R3 R0
        5 DUPCLOSURE                       R4 K1 [PROTO_6]
        6 CALL                             R1 3 1
        7 GETUPVAL                         R2 2
        8 LOADB                            R3 1
        9 SETTABLE                         R3 R1 R2
       10 GETUPVAL                         R2 1
       11 MOVE                             R4 R0
       12 NAMECALL                         R2 R2 K2 ["_require"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

PROTO_8:
        0 MOVE                             R2 R1
        1 GETUPVAL                         R3 0
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["clear"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["listeners"]
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CALL                             R0 2 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Source"]
        2 NAMECALL                         R0 R0 K1 ["GetPropertyChangedSignal"]
        4 CALL                             R0 2 1
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R0 R0 K2 ["Connect"]
       11 CALL                             R0 2 -1
       12 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["connections"]
        4 GETUPVAL                         R2 2
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U3
        9 CALL                             R0 3 0
       10 RETURN                           R0 0

PROTO_12:
        0 NAMECALL                         R2 R0 K0 ["usingLoadModule"]
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+5]
        4 GETIMPORT                        R2 K2 [require]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 -1
        8 RETURN                           R2 -1
        9 GETUPVAL                         R2 0
       10 MOVE                             R3 R1
       11 CALL                             R2 1 2
       12 FASTCALL2                        ASSERT R2 R3 ; [+5]
       14 MOVE                             R5 R2
       15 MOVE                             R6 R3
       16 GETIMPORT                        R4 K4 [assert]
       18 CALL                             R4 2 0
       19 GETIMPORT                        R4 K6 [getfenv]
       21 MOVE                             R5 R2
       22 CALL                             R4 1 1
       23 NEWCLOSURE                       R5 P0
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R5 R4 K1 ["require"]
       29 NEWCLOSURE                       R5 P1
       30 CAPTURE                          UPVAL U1
       31 CAPTURE                          VAL R0
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U2
       34 FASTPCALL                        pcall 1 ; [+2]
       35 GETIMPORT                        R4 K8 [pcall]
       37 CALL                             R4 1 0
       38 MOVE                             R4 R2
       39 CALL                             R4 0 -1
       40 RETURN                           R4 -1

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["load"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["cache"]
        3 MOVE                             R4 R1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 3 -1
        8 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["clear"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R3 R0 K0 ["cache"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K0 ["cache"]
        7 LOADNIL                          R3
        8 SETTABLE                         R3 R2 R1
        9 GETTABLEKS                       R3 R0 K1 ["requirers"]
       11 GETTABLE                         R2 R3 R1
       12 JUMPIFNOT                        R2 ; [+7]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R4 R0 K1 ["requirers"]
       16 GETTABLE                         R3 R4 R1
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          VAL R0
       19 CALL                             R2 2 0
       20 GETTABLEKS                       R2 R0 K1 ["requirers"]
       22 LOADNIL                          R3
       23 SETTABLE                         R3 R2 R1
       24 RETURN                           R0 0

PROTO_17:
        0 NAMECALL                         R1 R0 K0 ["Disconnect"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["connections"]
        3 DUPCLOSURE                       R3 K1 [PROTO_17]
        4 CALL                             R1 2 0
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K2 ["requirers"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K0 ["connections"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K3 ["cache"]
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K4 ["errors"]
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["NoYield"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R0 K2 ["Parent"]
       12 GETIMPORT                        R3 K4 [require]
       14 GETTABLEKS                       R4 R2 K6 ["Dash"]
       16 CALL                             R3 1 1
       17 GETTABLEKS                       R4 R3 K7 ["forEach"]
       19 GETTABLEKS                       R5 R3 K8 ["getOrSet"]
       21 DUPTABLE                         R6 K14 [{"requirers", "connections", "cache", "errors", "listeners"}]
       22 NEWTABLE                         R7 0 0
       24 SETTABLEKS                       R7 R6 K9 ["requirers"]
       26 NEWTABLE                         R7 0 0
       28 SETTABLEKS                       R7 R6 K10 ["connections"]
       30 NEWTABLE                         R7 0 0
       32 SETTABLEKS                       R7 R6 K11 ["cache"]
       34 NEWTABLE                         R7 0 0
       36 SETTABLEKS                       R7 R6 K12 ["errors"]
       38 NEWTABLE                         R7 0 0
       40 SETTABLEKS                       R7 R6 K13 ["listeners"]
       42 GETIMPORT                        R7 K16 [debug]
       44 GETTABLEKS                       R7 R7 K17 ["loadmodule"]
       46 DUPCLOSURE                       R9 K18 [PROTO_0]
       47 CAPTURE                          VAL R7
       48 FASTPCALL                        pcall 1 ; [+2]
       49 GETIMPORT                        R8 K20 [pcall]
       51 CALL                             R8 1 1
       52 DUPCLOSURE                       R9 K21 [PROTO_1]
       53 CAPTURE                          VAL R8
       54 SETTABLEKS                       R9 R6 K22 ["usingLoadModule"]
       56 DUPCLOSURE                       R9 K23 [PROTO_2]
       57 SETTABLEKS                       R9 R6 K24 ["connect"]
       59 DUPCLOSURE                       R9 K25 [PROTO_3]
       60 SETTABLEKS                       R9 R6 K26 ["disconnect"]
       62 DUPCLOSURE                       R9 K27 [PROTO_5]
       63 CAPTURE                          VAL R1
       64 SETTABLEKS                       R9 R6 K28 ["load"]
       66 DUPCLOSURE                       R9 K29 [PROTO_12]
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R4
       70 SETTABLEKS                       R9 R6 K30 ["attemptLoad"]
       72 DUPCLOSURE                       R9 K31 [PROTO_14]
       73 CAPTURE                          VAL R5
       74 SETTABLEKS                       R9 R6 K32 ["_require"]
       76 DUPCLOSURE                       R9 K33 [PROTO_16]
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R9 R6 K34 ["clear"]
       80 DUPCLOSURE                       R9 K35 [PROTO_18]
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R9 R6 K36 ["reset"]
       84 RETURN                           R6 1
