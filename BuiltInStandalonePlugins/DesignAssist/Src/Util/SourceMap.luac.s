PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clear]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 GETIMPORT                        R1 K2 [table.clear]
        6 GETUPVAL                         R2 1
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K2 [table.clear]
       10 GETUPVAL                         R2 2
       11 CALL                             R1 1 0
       12 GETIMPORT                        R1 K2 [table.clear]
       14 GETUPVAL                         R2 3
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K2 [table.clear]
       18 GETUPVAL                         R2 4
       19 CALL                             R1 1 0
       20 GETIMPORT                        R1 K2 [table.clear]
       22 GETUPVAL                         R2 5
       23 CALL                             R1 1 0
       24 GETIMPORT                        R1 K2 [table.clear]
       26 GETUPVAL                         R2 6
       27 CALL                             R1 1 0
       28 LOADK                            R1 K3 ["__default"]
       29 SETUPVAL                         R1 7
       30 LOADN                            R1 0
       31 SETUPVAL                         R1 8
       32 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R2 K0 ["__default"]
        1 SETUPVAL                         R2 0
        2 GETUPVAL                         R2 1
        3 DUPTABLE                         R3 K6 [{["id"] = "__default", ["code"], ["moduleScript"] = , ["name"] = }]
        4 SETTABLEKS                       R1 R3 K2 ["code"]
        6 SETTABLEKS                       R3 R2 K0 ["__default"]
        8 RETURN                           R0 0

PROTO_2:
        0 SETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+2]
        2 LOADNIL                          R3
        3 JUMP                             ; [+1]
        4 MOVE                             R3 R2
        5 SETUPVAL                         R3 1
        6 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R5 R4
        1 JUMPIF                           R5 ; [+3]
        2 NAMECALL                         R5 R1 K0 ["GetFullName"]
        4 CALL                             R5 1 1
        5 JUMPIFNOT                        R3 ; [+1]
        6 SETUPVAL                         R5 0
        7 GETUPVAL                         R6 1
        8 DUPTABLE                         R7 K5 [{"id", "code", "moduleScript", "name"}]
        9 SETTABLEKS                       R5 R7 K1 ["id"]
       11 SETTABLEKS                       R2 R7 K2 ["code"]
       13 SETTABLEKS                       R1 R7 K3 ["moduleScript"]
       15 GETTABLEKS                       R8 R1 K6 ["Name"]
       17 SETTABLEKS                       R8 R7 K4 ["name"]
       19 SETTABLE                         R7 R6 R5
       20 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 JUMPIF                           R4 ; [+1]
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R3 R2 K0 ["code"]
        8 RETURN                           R3 1
        9 LOADK                            R3 K1 [""]
       10 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 JUMPIF                           R4 ; [+1]
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R2 R3 R4
        5 JUMPIFNOT                        R2 ; [+3]
        6 GETTABLEKS                       R3 R2 K0 ["moduleScript"]
        8 RETURN                           R3 1
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_6:
        0 MOVE                             R3 R0
        1 LOADK                            R4 K0 ["\0"]
        2 MOVE                             R5 R1
        3 CONCAT                           R2 R3 R5
        4 RETURN                           R2 1

PROTO_7:
        0 MOVE                             R3 R0
        1 LOADK                            R4 K0 ["\0"]
        2 FASTCALL1                        TOSTRING R1 ; [+3]
        3 MOVE                             R6 R1
        4 GETIMPORT                        R5 K2 [tostring]
        6 CALL                             R5 1 1
        7 CONCAT                           R2 R3 R5
        8 RETURN                           R2 1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R1
        2 NAMECALL                         R2 R2 K0 ["getSource"]
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKS                    R2 K1 [""] ; [+2]
        7 RETURN                           R0 1
        8 GETIMPORT                        R3 K4 [string.split]
       10 MOVE                             R4 R2
       11 LOADK                            R5 K5 ["\n"]
       12 CALL                             R3 2 1
       13 LOADN                            R4 1
       14 JUMPIFLT                         R0 R4 ; [+4]
       16 LENGTH                           R4 R3
       17 JUMPIFNOTLT                      R4 R0 ; [+2]
       19 RETURN                           R0 1
       20 MOVE                             R6 R0
       21 LOADN                            R8 1
       22 SUBK                             R9 R0 K6 [20]
       23 FASTCALL2                        MATH_MAX R8 R9 ; [+3]
       25 GETIMPORT                        R7 K9 [math.max]
       27 CALL                             R7 2 1
       28 MOVE                             R4 R7
       29 LOADN                            R5 -1
       30 FORNPREP                         R4
       31 GETTABLE                         R7 R3 R6
       32 GETIMPORT                        R8 K11 [string.find]
       34 MOVE                             R9 R7
       35 LOADK                            R10 K12 ["%f[%w_]e%s*%("]
       36 CALL                             R8 2 1
       37 JUMPIF                           R8 ; [+6]
       38 GETIMPORT                        R8 K11 [string.find]
       40 MOVE                             R9 R7
       41 LOADK                            R10 K13 ["React%.createElement%s*%("]
       42 CALL                             R8 2 1
       43 JUMPIFNOT                        R8 ; [+1]
       44 RETURN                           R6 1
       45 FORNLOOP                         R4
       46 RETURN                           R0 1

PROTO_9:
        0 MOVE                             R7 R6
        1 JUMPIF                           R7 ; [+1]
        2 GETUPVAL                         R7 0
        3 GETUPVAL                         R8 1
        4 MOVE                             R9 R1
        5 MOVE                             R10 R7
        6 CALL                             R8 2 1
        7 MOVE                             R1 R8
        8 GETUPVAL                         R8 2
        9 ADDK                             R8 R8 K0 [1]
       10 SETUPVAL                         R8 2
       11 DUPTABLE                         R8 K11 [{"id", "designAssistId", "sourceId", "sourceModule", "sourceLine", "type", "key", "typeName", "isEditable", "readOnlyReason"}]
       12 GETUPVAL                         R9 2
       13 SETTABLEKS                       R9 R8 K1 ["id"]
       15 SETTABLEKS                       R5 R8 K2 ["designAssistId"]
       17 SETTABLEKS                       R7 R8 K3 ["sourceId"]
       19 GETUPVAL                         R9 3
       20 MOVE                             R11 R7
       21 NAMECALL                         R9 R9 K12 ["getSourceModule"]
       23 CALL                             R9 2 1
       24 SETTABLEKS                       R9 R8 K4 ["sourceModule"]
       26 SETTABLEKS                       R1 R8 K5 ["sourceLine"]
       28 SETTABLEKS                       R2 R8 K6 ["type"]
       30 SETTABLEKS                       R3 R8 K7 ["key"]
       32 SETTABLEKS                       R4 R8 K8 ["typeName"]
       34 GETUPVAL                         R9 4
       35 SETTABLEKS                       R9 R8 K9 ["isEditable"]
       37 GETUPVAL                         R9 5
       38 SETTABLEKS                       R9 R8 K10 ["readOnlyReason"]
       40 GETUPVAL                         R10 6
       41 FASTCALL2                        TABLE_INSERT R10 R8 ; [+4]
       43 MOVE                             R11 R8
       44 GETIMPORT                        R9 K15 [table.insert]
       46 CALL                             R9 2 0
       47 JUMPIFNOT                        R5 ; [+2]
       48 GETUPVAL                         R9 7
       49 SETTABLE                         R8 R9 R5
       50 JUMPIFNOT                        R3 ; [+8]
       51 GETUPVAL                         R9 8
       52 SETTABLE                         R8 R9 R3
       53 GETUPVAL                         R9 9
       54 MOVE                             R11 R7
       55 LOADK                            R12 K16 ["\0"]
       56 MOVE                             R13 R3
       57 CONCAT                           R10 R11 R13
       58 SETTABLE                         R8 R9 R10
       59 GETUPVAL                         R10 10
       60 GETTABLE                         R9 R10 R1
       61 JUMPIF                           R9 ; [+2]
       62 GETUPVAL                         R9 10
       63 SETTABLE                         R8 R9 R1
       64 MOVE                             R10 R1
       65 MOVE                             R11 R7
       66 LOADK                            R12 K16 ["\0"]
       67 FASTCALL1                        TOSTRING R10 ; [+3]
       68 MOVE                             R14 R10
       69 GETIMPORT                        R13 K18 [tostring]
       71 CALL                             R13 1 1
       72 CONCAT                           R9 R11 R13
       73 GETUPVAL                         R11 11
       74 GETTABLE                         R10 R11 R9
       75 JUMPIF                           R10 ; [+2]
       76 GETUPVAL                         R10 11
       77 SETTABLE                         R8 R10 R9
       78 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R8 R5 K0 ["sourceId"]
        7 NAMECALL                         R6 R6 K1 ["getSource"]
        9 CALL                             R6 2 1
       10 GETIMPORT                        R7 K4 [string.split]
       12 MOVE                             R8 R6
       13 LOADK                            R9 K5 ["\n"]
       14 CALL                             R7 2 1
       15 GETTABLEKS                       R8 R5 K6 ["key"]
       17 JUMPIF                           R8 ; [+31]
       18 GETTABLEKS                       R8 R5 K7 ["sourceLine"]
       20 LOADN                            R9 1
       21 JUMPIFNOTLE                      R9 R8 ; [+27]
       23 GETTABLEKS                       R8 R5 K7 ["sourceLine"]
       25 LENGTH                           R9 R7
       26 JUMPIFNOTLE                      R8 R9 ; [+22]
       28 GETTABLEKS                       R9 R5 K7 ["sourceLine"]
       30 GETTABLE                         R8 R7 R9
       31 GETIMPORT                        R9 K9 [string.match]
       33 MOVE                             R10 R8
       34 LOADK                            R11 K10 ["(%w+)%s*=%s*e%("]
       35 CALL                             R9 2 1
       36 JUMPIFNOT                        R9 ; [+12]
       37 SETTABLEKS                       R9 R5 K6 ["key"]
       39 GETUPVAL                         R10 2
       40 SETTABLE                         R5 R10 R9
       41 GETUPVAL                         R10 3
       42 GETTABLEKS                       R12 R5 K0 ["sourceId"]
       44 MOVE                             R13 R12
       45 LOADK                            R14 K11 ["\0"]
       46 MOVE                             R15 R9
       47 CONCAT                           R11 R13 R15
       48 SETTABLE                         R5 R10 R11
       49 FORGLOOP                         R1 2 ; [-46]
       51 RETURN                           R0 0

PROTO_11:
        0 JUMPIFNOT                        R2 ; [+7]
        1 GETUPVAL                         R4 0
        2 MOVE                             R6 R2
        3 LOADK                            R7 K0 ["\0"]
        4 MOVE                             R8 R1
        5 CONCAT                           R5 R6 R8
        6 GETTABLE                         R3 R4 R5
        7 RETURN                           R3 1
        8 GETUPVAL                         R4 1
        9 GETTABLE                         R3 R4 R1
       10 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 RETURN                           R2 1

PROTO_13:
        0 JUMPIFNOT                        R2 ; [+11]
        1 GETUPVAL                         R4 0
        2 MOVE                             R6 R2
        3 LOADK                            R7 K0 ["\0"]
        4 FASTCALL1                        TOSTRING R1 ; [+3]
        5 MOVE                             R9 R1
        6 GETIMPORT                        R8 K2 [tostring]
        8 CALL                             R8 1 1
        9 CONCAT                           R5 R6 R8
       10 GETTABLE                         R3 R4 R5
       11 RETURN                           R3 1
       12 GETUPVAL                         R4 1
       13 GETTABLE                         R3 R4 R1
       14 RETURN                           R3 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 RETURN                           R1 1

PROTO_15:
        0 NEWTABLE                         R0 0 0
        2 NEWTABLE                         R1 0 0
        4 NEWTABLE                         R2 0 0
        6 NEWTABLE                         R3 0 0
        8 NEWTABLE                         R4 0 0
       10 NEWTABLE                         R5 0 0
       12 NEWTABLE                         R6 0 0
       14 LOADK                            R7 K0 ["__default"]
       15 LOADN                            R8 0
       16 LOADB                            R9 1
       17 LOADNIL                          R10
       18 NEWTABLE                         R11 0 0
       20 NEWCLOSURE                       R12 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R3
       25 CAPTURE                          VAL R4
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R6
       28 CAPTURE                          REF R7
       29 CAPTURE                          REF R8
       30 SETTABLEKS                       R12 R11 K1 ["clear"]
       32 NEWCLOSURE                       R12 P1
       33 CAPTURE                          REF R7
       34 CAPTURE                          VAL R6
       35 SETTABLEKS                       R12 R11 K2 ["setSource"]
       37 NEWCLOSURE                       R12 P2
       38 CAPTURE                          REF R9
       39 CAPTURE                          REF R10
       40 SETTABLEKS                       R12 R11 K3 ["setSessionEditability"]
       42 NEWCLOSURE                       R12 P3
       43 CAPTURE                          REF R7
       44 CAPTURE                          VAL R6
       45 SETTABLEKS                       R12 R11 K4 ["setSourceForModule"]
       47 NEWCLOSURE                       R12 P4
       48 CAPTURE                          VAL R6
       49 CAPTURE                          REF R7
       50 SETTABLEKS                       R12 R11 K5 ["getSource"]
       52 NEWCLOSURE                       R12 P5
       53 CAPTURE                          VAL R6
       54 CAPTURE                          REF R7
       55 SETTABLEKS                       R12 R11 K6 ["getSourceModule"]
       57 DUPCLOSURE                       R12 K7 [PROTO_6]
       58 DUPCLOSURE                       R13 K8 [PROTO_7]
       59 NEWCLOSURE                       R14 P8
       60 CAPTURE                          VAL R11
       61 NEWCLOSURE                       R15 P9
       62 CAPTURE                          REF R7
       63 CAPTURE                          VAL R14
       64 CAPTURE                          REF R8
       65 CAPTURE                          VAL R11
       66 CAPTURE                          REF R9
       67 CAPTURE                          REF R10
       68 CAPTURE                          VAL R0
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R5
       74 SETTABLEKS                       R15 R11 K9 ["addEntry"]
       76 NEWCLOSURE                       R15 P10
       77 CAPTURE                          VAL R0
       78 CAPTURE                          VAL R11
       79 CAPTURE                          VAL R2
       80 CAPTURE                          VAL R4
       81 SETTABLEKS                       R15 R11 K10 ["resolveKeysFromSource"]
       83 NEWCLOSURE                       R15 P11
       84 CAPTURE                          VAL R4
       85 CAPTURE                          VAL R2
       86 SETTABLEKS                       R15 R11 K11 ["getByKey"]
       88 NEWCLOSURE                       R15 P12
       89 CAPTURE                          VAL R1
       90 SETTABLEKS                       R15 R11 K12 ["getByDesignAssistId"]
       92 NEWCLOSURE                       R15 P13
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R3
       95 SETTABLEKS                       R15 R11 K13 ["getByLine"]
       97 NEWCLOSURE                       R15 P14
       98 CAPTURE                          VAL R0
       99 SETTABLEKS                       R15 R11 K14 ["getAll"]
      101 CLOSEUPVALS                      R7
      102 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_15]
        2 DUPTABLE                         R1 K2 [{"create"}]
        3 SETTABLEKS                       R0 R1 K1 ["create"]
        5 RETURN                           R1 1
