PROTO_0:
        0 JUMPIFNOTEQKS                    R0 K0 [""] ; [+2]
        2 RETURN                           R1 1
        3 JUMPIFNOTEQKS                    R0 K1 ["<blank>"] ; [+3]
        5 LOADK                            R2 K0 [""]
        6 RETURN                           R2 1
        7 GETIMPORT                        R2 K4 [buffer.tostring]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K5 ["encode"]
       12 GETIMPORT                        R4 K7 [buffer.fromstring]
       14 MOVE                             R5 R0
       15 CALL                             R4 1 -1
       16 CALL                             R3 -1 -1
       17 CALL                             R2 -1 -1
       18 RETURN                           R2 -1

PROTO_1:
        0 GETIMPORT                        R3 K2 [string.lower]
        2 GETTABLEKS                       R5 R0 K3 ["row"]
        4 GETTABLEN                        R4 R5 1
        5 CALL                             R3 1 1
        6 GETIMPORT                        R4 K2 [string.lower]
        8 GETTABLEKS                       R6 R1 K3 ["row"]
       10 GETTABLEN                        R5 R6 1
       11 CALL                             R4 1 1
       12 JUMPIFLT                         R3 R4 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R1 K2 [table.sort]
        2 MOVE                             R2 R0
        3 DUPCLOSURE                       R3 K3 [PROTO_1]
        4 CALL                             R1 2 0
        5 MOVE                             R1 R0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 SETTABLEKS                       R4 R5 K4 ["index"]
       11 FORGLOOP                         R1 2 ; [-3]
       13 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 1
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 NEWTABLE                         R8 0 1
        9 MOVE                             R9 R6
       10 SETLIST                          R8 R9 1 [1]
       12 MOVE                             R9 R7
       13 LOADNIL                          R10
       14 LOADNIL                          R11
       15 FORGPREP                         R9
       16 FASTCALL2                        TABLE_INSERT R8 R13 ; [+5]
       18 MOVE                             R15 R8
       19 MOVE                             R16 R13
       20 GETIMPORT                        R14 K2 [table.insert]
       22 CALL                             R14 2 0
       23 FORGLOOP                         R9 2 ; [-8]
       25 DUPTABLE                         R11 K7 [{["index"], ["row"], ["isValueUpdated"] = False}]
       26 SETTABLEKS                       R2 R11 K3 ["index"]
       28 SETTABLEKS                       R8 R11 K4 ["row"]
       30 FASTCALL2                        TABLE_INSERT R1 R11 ; [+4]
       32 MOVE                             R10 R1
       33 GETIMPORT                        R9 K2 [table.insert]
       35 CALL                             R9 2 0
       36 ADDK                             R2 R2 K8 [1]
       37 FORGLOOP                         R3 2 ; [-31]
       39 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 GETTABLEKS                       R9 R8 K0 ["row"]
        8 GETTABLEN                        R10 R9 1
        9 GETTABLEKS                       R12 R8 K1 ["isValueUpdated"]
       11 JUMPIFNOT                        R12 ; [+5]
       12 LOADK                            R12 K2 ["<"]
       13 MOVE                             R13 R2
       14 LOADK                            R14 K3 [">"]
       15 CONCAT                           R11 R12 R14
       16 JUMP                             ; [+4]
       17 LOADK                            R12 K2 ["<"]
       18 MOVE                             R13 R1
       19 LOADK                            R14 K3 [">"]
       20 CONCAT                           R11 R12 R14
       21 GETTABLEN                        R13 R9 3
       22 ORK                              R12 R13 K4 ["*"]
       23 DUPTABLE                         R15 K6 [{"index", "row"}]
       24 GETTABLEKS                       R16 R8 K5 ["index"]
       26 SETTABLEKS                       R16 R15 K5 ["index"]
       28 NEWTABLE                         R16 0 3
       30 MOVE                             R17 R10
       31 MOVE                             R18 R11
       32 MOVE                             R19 R12
       33 SETLIST                          R16 R17 3 [1]
       35 SETTABLEKS                       R16 R15 K0 ["row"]
       37 FASTCALL2                        TABLE_INSERT R3 R15 ; [+4]
       39 MOVE                             R14 R3
       40 GETIMPORT                        R13 K9 [table.insert]
       42 CALL                             R13 2 0
       43 FORGLOOP                         R4 2 ; [-38]
       45 RETURN                           R3 1

PROTO_5:
        0 MOVE                             R3 R0
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 GETTABLEKS                       R8 R7 K0 ["index"]
        6 JUMPIFEQ                         R8 R2 ; [+8]
        8 GETTABLEKS                       R9 R7 K1 ["row"]
       10 GETTABLEN                        R8 R9 1
       11 JUMPIFNOTEQ                      R8 R1 ; [+3]
       13 LOADB                            R8 1
       14 RETURN                           R8 1
       15 FORGLOOP                         R3 2 ; [-12]
       17 LOADB                            R3 0
       18 RETURN                           R3 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 DUPTABLE                         R9 K2 [{"index", "row"}]
       10 ADDK                             R10 R5 K3 [1]
       11 SETTABLEKS                       R10 R9 K0 ["index"]
       13 NEWTABLE                         R10 0 1
       15 GETTABLEKS                       R12 R6 K1 ["row"]
       17 FASTCALL1                        TABLE_UNPACK R12 ; [+2]
       18 GETIMPORT                        R11 K5 [unpack]
       20 CALL                             R11 1 -1
       21 SETLIST                          R10 R11 -1 [1]
       23 SETTABLEKS                       R10 R9 K1 ["row"]
       25 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       27 MOVE                             R8 R1
       28 GETIMPORT                        R7 K8 [table.insert]
       30 CALL                             R7 2 0
       31 FORGLOOP                         R2 2 ; [-23]
       33 NEWTABLE                         R2 0 0
       35 MOVE                             R3 R1
       36 LOADNIL                          R4
       37 LOADNIL                          R5
       38 FORGPREP                         R3
       39 GETTABLEKS                       R9 R7 K1 ["row"]
       41 GETTABLEN                        R8 R9 1
       42 LOADB                            R9 1
       43 SETTABLE                         R9 R2 R8
       44 FORGLOOP                         R3 2 ; [-6]
       46 LOADN                            R3 1
       47 LOADK                            R6 K9 ["(new secret "]
       48 MOVE                             R7 R3
       49 LOADK                            R8 K10 [")"]
       50 CONCAT                           R5 R6 R8
       51 GETTABLE                         R4 R2 R5
       52 JUMPIFNOT                        R4 ; [+2]
       53 ADDK                             R3 R3 K3 [1]
       54 JUMPBACK                         ; [-8]
       55 LOADK                            R5 K9 ["(new secret "]
       56 MOVE                             R6 R3
       57 LOADK                            R7 K10 [")"]
       58 CONCAT                           R4 R5 R7
       59 LOADN                            R7 1
       60 DUPTABLE                         R8 K11 [{[1] = 1, ["row"]}]
       61 NEWTABLE                         R9 0 3
       63 MOVE                             R10 R4
       64 LOADK                            R11 K12 [""]
       65 LOADK                            R12 K13 ["*"]
       66 SETLIST                          R9 R10 3 [1]
       68 SETTABLEKS                       R9 R8 K1 ["row"]
       70 FASTCALL3                        TABLE_INSERT R1 R7 R8
       72 MOVE                             R6 R1
       73 GETIMPORT                        R5 K8 [table.insert]
       75 CALL                             R5 3 0
       76 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 JUMPIFEQ                         R6 R1 ; [+8]
        8 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       10 MOVE                             R9 R2
       11 MOVE                             R10 R7
       12 GETIMPORT                        R8 K2 [table.insert]
       14 CALL                             R8 2 0
       15 FORGLOOP                         R3 2 ; [-10]
       17 MOVE                             R3 R2
       18 LOADNIL                          R4
       19 LOADNIL                          R5
       20 FORGPREP                         R3
       21 SETTABLEKS                       R6 R7 K3 ["index"]
       23 FORGLOOP                         R3 2 ; [-3]
       25 RETURN                           R2 1

PROTO_8:
        0 NEWTABLE                         R5 0 0
        2 LOADB                            R6 0
        3 MOVE                             R7 R0
        4 LOADNIL                          R8
        5 LOADNIL                          R9
        6 FORGPREP                         R7
        7 JUMPIFNOTEQ                      R10 R1 ; [+46]
        9 GETTABLEKS                       R12 R11 K0 ["row"]
       11 GETUPVAL                         R13 0
       12 GETTABLEKS                       R13 R13 K1 ["transformToStorableFormat"]
       14 MOVE                             R14 R3
       15 GETTABLEN                        R15 R12 2
       16 CALL                             R13 2 1
       17 GETTABLEN                        R14 R12 1
       18 JUMPIFNOTEQ                      R14 R2 ; [+7]
       20 GETTABLEN                        R14 R12 2
       21 JUMPIFNOTEQ                      R14 R13 ; [+4]
       23 GETTABLEN                        R14 R12 3
       24 JUMPIFEQ                         R14 R4 ; [+2]
       26 LOADB                            R6 1
       27 DUPTABLE                         R16 K4 [{"index", "row", "isValueUpdated"}]
       28 SETTABLEKS                       R10 R16 K2 ["index"]
       30 NEWTABLE                         R17 0 3
       32 MOVE                             R18 R2
       33 MOVE                             R19 R13
       34 MOVE                             R20 R4
       35 SETLIST                          R17 R18 3 [1]
       37 SETTABLEKS                       R17 R16 K0 ["row"]
       39 LOADB                            R17 1
       40 GETTABLEN                        R18 R12 2
       41 JUMPIFNOTEQ                      R18 R13 ; [+3]
       43 GETTABLEKS                       R17 R11 K3 ["isValueUpdated"]
       45 SETTABLEKS                       R17 R16 K3 ["isValueUpdated"]
       47 FASTCALL2                        TABLE_INSERT R5 R16 ; [+4]
       49 MOVE                             R15 R5
       50 GETIMPORT                        R14 K7 [table.insert]
       52 CALL                             R14 2 0
       53 JUMP                             ; [+7]
       54 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       56 MOVE                             R13 R5
       57 MOVE                             R14 R11
       58 GETIMPORT                        R12 K7 [table.insert]
       60 CALL                             R12 2 0
       61 FORGLOOP                         R7 2 ; [-55]
       63 RETURN                           R5 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Util"]
       15 GETTABLEKS                       R2 R2 K7 ["Base64Utils"]
       17 CALL                             R1 1 1
       18 NEWTABLE                         R2 8 0
       20 DUPCLOSURE                       R3 K8 [PROTO_0]
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R3 R2 K9 ["transformToStorableFormat"]
       24 DUPCLOSURE                       R3 K10 [PROTO_2]
       25 SETTABLEKS                       R3 R2 K11 ["sortAndReindexSecretsTableRows"]
       27 DUPCLOSURE                       R3 K12 [PROTO_3]
       28 SETTABLEKS                       R3 R2 K13 ["convertSecretsToTableRows"]
       30 DUPCLOSURE                       R3 K14 [PROTO_4]
       31 SETTABLEKS                       R3 R2 K15 ["maskValueColumn"]
       33 DUPCLOSURE                       R3 K16 [PROTO_5]
       34 SETTABLEKS                       R3 R2 K17 ["secretNameExists"]
       36 DUPCLOSURE                       R3 K18 [PROTO_6]
       37 SETTABLEKS                       R3 R2 K19 ["insertBlankSecretRow"]
       39 DUPCLOSURE                       R3 K20 [PROTO_7]
       40 SETTABLEKS                       R3 R2 K21 ["deleteSecretRow"]
       42 DUPCLOSURE                       R3 K22 [PROTO_8]
       43 CAPTURE                          VAL R2
       44 SETTABLEKS                       R3 R2 K23 ["getUpdateSecretRowAtIndex"]
       46 RETURN                           R2 1
