PROTO_0:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [type]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["number"] ; [+10]
        8 FASTCALL1                        MATH_FLOOR R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K5 [math.floor]
       12 CALL                             R3 1 1
       13 JUMPIFEQ                         R3 R0 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 NOT                              R1 R2
       18 RETURN                           R1 1

PROTO_1:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 MOVE                             R3 R1
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 GETTABLEKS                       R7 R6 K2 ["uniqueId"]
        9 JUMPIFNOTEQ                      R7 R0 ; [+7]
       11 GETTABLEKS                       R7 R6 K3 ["instance"]
       13 NAMECALL                         R7 R7 K4 ["Clone"]
       15 CALL                             R7 1 -1
       16 RETURN                           R7 -1
       17 FORGLOOP                         R2 2 [inext] ; [-11]
       19 RETURN                           R0 0

PROTO_2:
        0 LOADB                            R5 0
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R7 R0
        3 GETIMPORT                        R6 K1 [type]
        5 CALL                             R6 1 1
        6 JUMPIFNOTEQKS                    R6 K2 ["number"] ; [+10]
        8 FASTCALL1                        MATH_FLOOR R0 ; [+3]
        9 MOVE                             R7 R0
       10 GETIMPORT                        R6 K5 [math.floor]
       12 CALL                             R6 1 1
       13 JUMPIFEQ                         R6 R0 ; [+2]
       15 LOADB                            R5 0 +1
       16 LOADB                            R5 1
       17 NOT                              R4 R5
       18 JUMPIFNOT                        R4 ; [+5]
       19 GETUPVAL                         R4 0
       20 MOVE                             R5 R0
       21 MOVE                             R6 R1
       22 CALL                             R4 2 -1
       23 RETURN                           R4 -1
       24 GETUPVAL                         R4 1
       25 MOVE                             R5 R2
       26 MOVE                             R6 R0
       27 MOVE                             R7 R3
       28 CALL                             R4 3 -1
       29 RETURN                           R4 -1

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"instance", "uniqueId"}]
        1 SETTABLEKS                       R0 R1 K0 ["instance"]
        3 GETUPVAL                         R2 0
        4 NAMECALL                         R2 R2 K3 ["GenerateGUID"]
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["uniqueId"]
        9 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R4 0 0
        2 GETIMPORT                        R5 K1 [ipairs]
        4 MOVE                             R6 R0
        5 CALL                             R5 1 3
        6 FORGPREP_INEXT                   R5
        7 LOADB                            R12 0
        8 FASTCALL1                        TYPE R9 ; [+3]
        9 MOVE                             R14 R9
       10 GETIMPORT                        R13 K3 [type]
       12 CALL                             R13 1 1
       13 JUMPIFNOTEQKS                    R13 K4 ["number"] ; [+10]
       15 FASTCALL1                        MATH_FLOOR R9 ; [+3]
       16 MOVE                             R14 R9
       17 GETIMPORT                        R13 K7 [math.floor]
       19 CALL                             R13 1 1
       20 JUMPIFEQ                         R13 R9 ; [+2]
       22 LOADB                            R12 0 +1
       23 LOADB                            R12 1
       24 NOT                              R11 R12
       25 JUMPIFNOT                        R11 ; [+5]
       26 GETUPVAL                         R10 0
       27 MOVE                             R11 R9
       28 MOVE                             R12 R1
       29 CALL                             R10 2 1
       30 JUMP                             ; [+6]
       31 GETUPVAL                         R10 1
       32 MOVE                             R11 R3
       33 MOVE                             R12 R9
       34 LOADB                            R13 1
       35 CALL                             R10 3 1
       36 JUMP                             ; [0]
       37 MOVE                             R12 R4
       38 GETUPVAL                         R14 2
       39 GETTABLEKS                       R13 R14 K8 ["new"]
       41 MOVE                             R14 R10
       42 MOVE                             R15 R2
       43 MOVE                             R16 R9
       44 CALL                             R13 3 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R11 K11 [table.insert]
       48 CALL                             R11 -1 0
       49 FORGLOOP                         R5 2 [inext] ; [-43]
       51 RETURN                           R4 1

PROTO_5:
        0 GETIMPORT                        R4 K1 [ipairs]
        2 MOVE                             R5 R0
        3 CALL                             R4 1 3
        4 FORGPREP_INEXT                   R4
        5 GETIMPORT                        R9 K1 [ipairs]
        7 MOVE                             R10 R1
        8 CALL                             R9 1 3
        9 FORGPREP_INEXT                   R9
       10 LOADB                            R16 0
       11 FASTCALL1                        TYPE R13 ; [+3]
       12 MOVE                             R18 R13
       13 GETIMPORT                        R17 K3 [type]
       15 CALL                             R17 1 1
       16 JUMPIFNOTEQKS                    R17 K4 ["number"] ; [+10]
       18 FASTCALL1                        MATH_FLOOR R13 ; [+3]
       19 MOVE                             R18 R13
       20 GETIMPORT                        R17 K7 [math.floor]
       22 CALL                             R17 1 1
       23 JUMPIFEQ                         R17 R13 ; [+2]
       25 LOADB                            R16 0 +1
       26 LOADB                            R16 1
       27 NOT                              R15 R16
       28 JUMPIFNOT                        R15 ; [+5]
       29 GETUPVAL                         R14 0
       30 MOVE                             R15 R13
       31 MOVE                             R16 R2
       32 CALL                             R14 2 1
       33 JUMP                             ; [+6]
       34 GETUPVAL                         R14 1
       35 MOVE                             R15 R3
       36 MOVE                             R16 R13
       37 LOADB                            R17 0
       38 CALL                             R14 3 1
       39 JUMP                             ; [0]
       40 GETUPVAL                         R18 2
       41 GETTABLEKS                       R17 R18 K8 ["new"]
       43 MOVE                             R18 R14
       44 LOADB                            R19 1
       45 MOVE                             R20 R13
       46 CALL                             R17 3 -1
       47 NAMECALL                         R15 R8 K9 ["addLayer"]
       49 CALL                             R15 -1 0
       50 FORGLOOP                         R9 2 [inext] ; [-41]
       52 FORGLOOP                         R4 2 [inext] ; [-48]
       54 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["new"]
        3 MOVE                             R4 R1
        4 MOVE                             R5 R2
        5 GETTABLEKS                       R6 R1 K1 ["Name"]
        7 CALL                             R3 3 1
        8 MOVE                             R6 R3
        9 NAMECALL                         R4 R0 K2 ["addLayer"]
       11 CALL                             R4 2 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 3
        4 FORGPREP_INEXT                   R3
        5 GETIMPORT                        R8 K1 [ipairs]
        7 MOVE                             R9 R1
        8 CALL                             R8 1 3
        9 FORGPREP_INEXT                   R8
       10 GETUPVAL                         R14 0
       11 GETTABLEKS                       R13 R14 K2 ["addPreviewClothingFromInstance"]
       13 MOVE                             R14 R7
       14 NAMECALL                         R15 R12 K3 ["Clone"]
       16 CALL                             R15 1 1
       17 MOVE                             R16 R2
       18 CALL                             R13 3 0
       19 FORGLOOP                         R8 2 [inext] ; [-10]
       21 FORGLOOP                         R3 2 [inext] ; [-17]
       23 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R2 K5 [script]
        9 GETTABLEKS                       R1 R2 K6 ["Parent"]
       11 GETIMPORT                        R5 K5 [script]
       13 GETTABLEKS                       R4 R5 K6 ["Parent"]
       15 GETTABLEKS                       R3 R4 K6 ["Parent"]
       17 GETTABLEKS                       R2 R3 K6 ["Parent"]
       19 GETIMPORT                        R3 K8 [require]
       21 GETTABLEKS                       R4 R1 K9 ["getModelFromBackend"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K8 [require]
       26 GETTABLEKS                       R5 R1 K10 ["PreviewClothing"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K8 [require]
       31 GETTABLEKS                       R6 R1 K11 ["PreviewAvatar"]
       33 CALL                             R5 1 1
       34 NEWTABLE                         R6 8 0
       36 DUPCLOSURE                       R7 K12 [PROTO_0]
       37 DUPCLOSURE                       R8 K13 [PROTO_1]
       38 DUPCLOSURE                       R9 K14 [PROTO_2]
       39 CAPTURE                          VAL R8
       40 CAPTURE                          VAL R3
       41 DUPCLOSURE                       R10 K15 [PROTO_3]
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R10 R6 K16 ["createUserAddedAsset"]
       45 DUPCLOSURE                       R10 K17 [PROTO_4]
       46 CAPTURE                          VAL R8
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R5
       49 SETTABLEKS                       R10 R6 K18 ["createPreviewAvatars"]
       51 DUPCLOSURE                       R10 K19 [PROTO_5]
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R10 R6 K20 ["addPreviewClothingFromIds"]
       57 DUPCLOSURE                       R10 K21 [PROTO_6]
       58 CAPTURE                          VAL R4
       59 SETTABLEKS                       R10 R6 K22 ["addPreviewClothingFromInstance"]
       61 DUPCLOSURE                       R10 K23 [PROTO_7]
       62 CAPTURE                          VAL R6
       63 SETTABLEKS                       R10 R6 K24 ["addPreviewClothingFromInstances"]
       65 RETURN                           R6 1
