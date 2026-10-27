PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["getUserSettingsAsync"]
        2 LOADK                            R2 K1 ["approvedUploadDirectories"]
        3 CALL                             R1 1 1
        4 NEWTABLE                         R2 0 0
        6 FASTCALL1                        TYPE R1 ; [+3]
        7 MOVE                             R4 R1
        8 GETIMPORT                        R3 K3 [type]
       10 CALL                             R3 1 1
       11 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+24]
       13 GETIMPORT                        R3 K6 [ipairs]
       15 MOVE                             R4 R1
       16 CALL                             R3 1 3
       17 FORGPREP_INEXT                   R3
       18 FASTCALL1                        TYPE R7 ; [+3]
       19 MOVE                             R9 R7
       20 GETIMPORT                        R8 K3 [type]
       22 CALL                             R8 1 1
       23 JUMPIFNOTEQKS                    R8 K7 ["string"] ; [+10]
       25 JUMPIFEQKS                       R7 K8 [""] ; [+8]
       27 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       29 MOVE                             R9 R2
       30 MOVE                             R10 R7
       31 GETIMPORT                        R8 K10 [table.insert]
       33 CALL                             R8 2 0
       34 FORGLOOP                         R3 2 [inext] ; [-17]
       36 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["setUserSettingsAsync"]
        2 LOADK                            R3 K1 ["approvedUploadDirectories"]
        3 GETIMPORT                        R4 K4 [table.clone]
        5 MOVE                             R5 R1
        6 CALL                             R4 1 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 MOVE                             R3 R0
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 GETUPVAL                         R8 0
        8 MOVE                             R9 R7
        9 CALL                             R8 1 1
       10 JUMPIFNOTEQ                      R8 R2 ; [+2]
       12 RETURN                           R6 1
       13 FORGLOOP                         R3 2 ; [-7]
       15 LOADNIL                          R3
       16 RETURN                           R3 1

PROTO_3:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 JUMPIFEQKS                       R1 K3 [""] ; [+26]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R1
        8 CALL                             R4 1 1
        9 MOVE                             R5 R2
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 FORGPREP                         R5
       13 GETUPVAL                         R10 0
       14 MOVE                             R11 R9
       15 CALL                             R10 1 1
       16 JUMPIFNOTEQ                      R10 R4 ; [+3]
       18 MOVE                             R3 R8
       19 JUMP                             ; [+3]
       20 FORGLOOP                         R5 2 ; [-8]
       22 LOADNIL                          R3
       23 JUMPIF                           R3 ; [+7]
       24 FASTCALL2                        TABLE_INSERT R2 R1 ; [+5]
       26 MOVE                             R4 R2
       27 MOVE                             R5 R1
       28 GETIMPORT                        R3 K5 [table.insert]
       30 CALL                             R3 2 0
       31 RETURN                           R2 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 GETUPVAL                         R4 0
        5 MOVE                             R5 R1
        6 CALL                             R4 1 1
        7 MOVE                             R5 R2
        8 LOADNIL                          R6
        9 LOADNIL                          R7
       10 FORGPREP                         R5
       11 GETUPVAL                         R10 0
       12 MOVE                             R11 R9
       13 CALL                             R10 1 1
       14 JUMPIFNOTEQ                      R10 R4 ; [+3]
       16 MOVE                             R3 R8
       17 JUMP                             ; [+3]
       18 FORGLOOP                         R5 2 ; [-8]
       20 LOADNIL                          R3
       21 JUMPIFNOT                        R3 ; [+5]
       22 GETIMPORT                        R4 K4 [table.remove]
       24 MOVE                             R5 R2
       25 MOVE                             R6 R3
       26 CALL                             R4 2 0
       27 RETURN                           R2 1

PROTO_5:
        0 LENGTH                           R2 R0
        1 LENGTH                           R3 R1
        2 JUMPIFEQ                         R2 R3 ; [+3]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 MOVE                             R2 R0
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 GETTABLE                         R7 R1 R5
       11 JUMPIFEQ                         R6 R7 ; [+3]
       13 LOADB                            R7 0
       14 RETURN                           R7 1
       15 FORGLOOP                         R2 2 ; [-6]
       17 LOADB                            R2 1
       18 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETUPVAL                         R2 1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 1
        9 MOVE                             R3 R1
       10 LOADNIL                          R4
       11 LOADNIL                          R5
       12 FORGPREP                         R3
       13 GETUPVAL                         R8 0
       14 MOVE                             R9 R7
       15 CALL                             R8 1 1
       16 JUMPIF                           R8 ; [+22]
       17 GETUPVAL                         R11 1
       18 MOVE                             R12 R7
       19 CALL                             R11 1 1
       20 MOVE                             R9 R11
       21 LOADK                            R10 K0 ["/"]
       22 CONCAT                           R8 R9 R10
       23 LENGTH                           R9 R2
       24 LENGTH                           R10 R8
       25 JUMPIFNOTLT                      R10 R9 ; [+13]
       27 LOADN                            R11 1
       28 LENGTH                           R12 R8
       29 FASTCALL3                        STRING_SUB R2 R11 R12
       31 MOVE                             R10 R2
       32 GETIMPORT                        R9 K3 [string.sub]
       34 CALL                             R9 3 1
       35 JUMPIFNOTEQ                      R9 R8 ; [+3]
       37 LOADB                            R9 1
       38 RETURN                           R9 1
       39 FORGLOOP                         R3 2 ; [-27]
       41 LOADB                            R3 0
       42 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Guest"]
       11 GETTABLEKS                       R2 R2 K7 ["Environment"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R3 K9 ["LocalFilePath"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["hasRelativeSegment"]
       23 GETTABLEKS                       R4 R2 K11 ["normalize"]
       25 NEWTABLE                         R5 8 0
       27 LOADK                            R6 K12 ["approvedUploadDirectories"]
       28 SETTABLEKS                       R6 R5 K13 ["SETTINGS_KEY"]
       30 DUPCLOSURE                       R6 K14 [PROTO_0]
       31 SETTABLEKS                       R6 R5 K15 ["getAsync"]
       33 DUPCLOSURE                       R6 K16 [PROTO_1]
       34 SETTABLEKS                       R6 R5 K17 ["setAsync"]
       36 DUPCLOSURE                       R6 K18 [PROTO_2]
       37 CAPTURE                          VAL R4
       38 DUPCLOSURE                       R7 K19 [PROTO_3]
       39 CAPTURE                          VAL R4
       40 SETTABLEKS                       R7 R5 K20 ["withDirectory"]
       42 DUPCLOSURE                       R7 K21 [PROTO_4]
       43 CAPTURE                          VAL R4
       44 SETTABLEKS                       R7 R5 K22 ["withoutDirectory"]
       46 DUPCLOSURE                       R7 K23 [PROTO_5]
       47 SETTABLEKS                       R7 R5 K24 ["areEqual"]
       49 DUPCLOSURE                       R7 K25 [PROTO_6]
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R7 R5 K26 ["isPathAllowed"]
       54 RETURN                           R5 1
