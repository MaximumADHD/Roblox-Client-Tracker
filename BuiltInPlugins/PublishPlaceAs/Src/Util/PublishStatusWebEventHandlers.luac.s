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
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R2 R0 K3 ["actionUri"]
        9 FASTCALL1                        TYPE R2 ; [+2]
       10 GETIMPORT                        R1 K1 [type]
       12 CALL                             R1 1 1
       13 JUMPIFEQKS                       R1 K2 ["table"] ; [+3]
       15 LOADNIL                          R1
       16 RETURN                           R1 1
       17 GETTABLEKS                       R1 R0 K3 ["actionUri"]
       19 MOVE                             R2 R1
       20 LOADNIL                          R3
       21 LOADNIL                          R4
       22 FORGPREP                         R2
       23 GETUPVAL                         R8 0
       24 GETTABLE                         R7 R8 R5
       25 JUMPIF                           R7 ; [+2]
       26 LOADNIL                          R7
       27 RETURN                           R7 1
       28 FORGLOOP                         R2 1 ; [-6]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R2 R2 K4 ["AllowedStudioActionUris"]
       33 LOADNIL                          R3
       34 LOADNIL                          R4
       35 FORGPREP                         R2
       36 LOADB                            R7 1
       37 GETUPVAL                         R8 0
       38 LOADNIL                          R9
       39 LOADNIL                          R10
       40 FORGPREP                         R8
       41 GETTABLE                         R13 R1 R11
       42 GETTABLE                         R14 R6 R11
       43 JUMPIFEQ                         R13 R14 ; [+3]
       45 LOADB                            R7 0
       46 JUMP                             ; [+2]
       47 FORGLOOP                         R8 1 ; [-7]
       49 JUMPIFNOT                        R7 ; [+1]
       50 RETURN                           R6 1
       51 FORGLOOP                         R2 2 ; [-16]
       53 LOADNIL                          R2
       54 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+5]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["onStudioActionRequested"]
        7 MOVE                             R3 R1
        8 CALL                             R2 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onCloseRequested"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["WebEvents"]
        5 GETTABLEKS                       R2 R2 K1 ["ActivateAction"]
        7 NEWCLOSURE                       R3 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 SETTABLE                         R3 R1 R2
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K0 ["WebEvents"]
       14 GETTABLEKS                       R2 R2 K2 ["Close"]
       16 NEWCLOSURE                       R3 P1
       17 CAPTURE                          VAL R0
       18 SETTABLE                         R3 R1 R2
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["WebEvents"]
       22 GETTABLEKS                       R2 R2 K3 ["Resize"]
       24 NEWCLOSURE                       R3 P2
       25 CAPTURE                          VAL R0
       26 SETTABLE                         R3 R1 R2
       27 RETURN                           R1 1

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
       18 DUPTABLE                         R2 K14 [{["Category"] = True, ["DataModel"] = True, ["ItemId"] = True, ["PluginId"] = True, ["PluginType"] = True}]
       19 DUPCLOSURE                       R3 K15 [PROTO_0]
       20 DUPCLOSURE                       R4 K16 [PROTO_1]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 NEWTABLE                         R5 1 0
       25 DUPCLOSURE                       R6 K17 [PROTO_5]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R4
       28 SETTABLEKS                       R6 R5 K18 ["create"]
       30 RETURN                           R5 1
