PROTO_0:
        0 ORK                              R1 R1 K0 [False]
        1 LOADK                            R2 K1 [" "]
        2 GETTABLEKS                       R4 R0 K2 ["children"]
        4 LENGTH                           R3 R4
        5 LOADN                            R4 0
        6 JUMPIFNOTLT                      R4 R3 ; [+7]
        8 GETTABLEKS                       R3 R0 K3 ["isCollapsed"]
       10 JUMPIFNOT                        R3 ; [+2]
       11 LOADK                            R2 K4 ["▸"]
       12 JUMP                             ; [+1]
       13 LOADK                            R2 K5 ["▾"]
       14 LOADK                            R3 K6 [""]
       15 GETTABLEKS                       R4 R0 K7 ["key"]
       17 JUMPIFEQKNIL                     R4 ; [+16]
       19 GETTABLEKS                       R4 R0 K7 ["key"]
       21 JUMPIFEQKS                       R4 K6 [""] ; [+12]
       23 GETIMPORT                        R4 K10 [string.format]
       25 LOADK                            R5 K11 [" key=\"%s\""]
       26 GETTABLEKS                       R7 R0 K7 ["key"]
       28 FASTCALL1                        TOSTRING R7 ; [+2]
       29 GETIMPORT                        R6 K13 [tostring]
       31 CALL                             R6 1 1
       32 CALL                             R4 2 1
       33 MOVE                             R3 R4
       34 LOADNIL                          R4
       35 GETTABLEKS                       R5 R0 K14 ["hocDisplayNames"]
       37 JUMPIFEQKNIL                     R5 ; [+7]
       39 GETIMPORT                        R5 K17 [table.clone]
       41 GETTABLEKS                       R6 R0 K14 ["hocDisplayNames"]
       43 CALL                             R5 1 1
       44 MOVE                             R4 R5
       45 JUMPIFNOTEQKNIL                  R4 ; [+3]
       47 LOADK                            R5 K6 [""]
       48 JUMP                             ; [+9]
       49 GETIMPORT                        R5 K10 [string.format]
       51 LOADK                            R6 K18 [" [%s]"]
       52 GETIMPORT                        R7 K20 [table.concat]
       54 MOVE                             R8 R4
       55 LOADK                            R9 K21 ["]["]
       56 CALL                             R7 2 -1
       57 CALL                             R5 -1 1
       58 LOADK                            R6 K6 [""]
       59 JUMPIFNOT                        R1 ; [+16]
       60 GETIMPORT                        R7 K10 [string.format]
       62 LOADK                            R8 K22 [" (%s)"]
       63 GETTABLEKS                       R10 R0 K3 ["isCollapsed"]
       65 JUMPIFNOT                        R10 ; [+2]
       66 LOADK                            R9 K23 ["1"]
       67 JUMP                             ; [+6]
       68 GETTABLEKS                       R10 R0 K24 ["weight"]
       70 FASTCALL1                        TOSTRING R10 ; [+2]
       71 GETIMPORT                        R9 K13 [tostring]
       73 CALL                             R9 1 1
       74 CALL                             R7 2 1
       75 MOVE                             R6 R7
       76 GETIMPORT                        R7 K10 [string.format]
       78 LOADK                            R8 K25 ["%s%s <%s%s>%s%s"]
       79 LOADK                            R9 K26 ["  "]
       80 GETTABLEKS                       R12 R0 K28 ["depth"]
       82 ADDK                             R11 R12 K27 [1]
       83 NAMECALL                         R9 R9 K29 ["rep"]
       85 CALL                             R9 2 1
       86 MOVE                             R10 R2
       87 GETTABLEKS                       R12 R0 K31 ["displayName"]
       89 ORK                              R11 R12 K30 ["null"]
       90 MOVE                             R12 R3
       91 MOVE                             R13 R5
       92 MOVE                             R14 R6
       93 CALL                             R7 7 -1
       94 RETURN                           R7 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["printElement"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_2:
        0 ORK                              R1 R1 K0 [False]
        1 GETIMPORT                        R2 K3 [table.concat]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K4 ["map"]
        6 MOVE                             R4 R0
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          REF R1
       10 CALL                             R3 2 1
       11 LOADK                            R4 K5 ["\n"]
       12 CALL                             R2 2 -1
       13 CLOSEUPVALS                      R1
       14 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["getElementByID"]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R1 R2 K1 ["weight"]
        7 GETUPVAL                         R3 1
        8 LOADK                            R5 K2 ["[root]"]
        9 GETUPVAL                         R7 2
       10 JUMPIFNOT                        R7 ; [+6]
       11 GETIMPORT                        R6 K5 [string.format]
       13 LOADK                            R7 K6 [" (%d)"]
       14 MOVE                             R8 R1
       15 CALL                             R6 2 1
       16 JUMP                             ; [+1]
       17 LOADK                            R6 K7 [""]
       18 CONCAT                           R4 R5 R6
       19 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       21 GETIMPORT                        R2 K10 [table.insert]
       23 CALL                             R2 2 0
       24 GETUPVAL                         R4 3
       25 GETUPVAL                         R6 3
       26 ADD                              R5 R6 R1
       27 SUBK                             R2 R5 K11 [1]
       28 LOADN                            R3 1
       29 FORNPREP                         R2
       30 GETUPVAL                         R5 0
       31 MOVE                             R7 R4
       32 NAMECALL                         R5 R5 K12 ["getElementAtIndex"]
       34 CALL                             R5 2 1
       35 JUMPIFNOTEQKNIL                  R5 ; [+9]
       37 GETIMPORT                        R6 K14 [error]
       39 GETIMPORT                        R7 K5 [string.format]
       41 LOADK                            R8 K15 ["Could not find element at index %d"]
       42 MOVE                             R9 R4
       43 CALL                             R7 2 -1
       44 CALL                             R6 -1 0
       45 GETUPVAL                         R7 1
       46 GETUPVAL                         R9 4
       47 GETTABLEKS                       R8 R9 K16 ["printElement"]
       49 MOVE                             R9 R5
       50 GETUPVAL                         R10 2
       51 CALL                             R8 2 -1
       52 FASTCALL                         TABLE_INSERT ; [+2]
       53 GETIMPORT                        R6 K10 [table.insert]
       55 CALL                             R6 -1 0
       56 FORNLOOP                         R2
       57 GETUPVAL                         R2 3
       58 ADD                              R2 R2 R1
       59 SETUPVAL                         R2 3
       60 RETURN                           R0 0

PROTO_4:
        0 ORK                              R1 R1 K0 [False]
        1 NEWTABLE                         R2 0 0
        3 LOADN                            R3 0
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["forEach"]
        7 NAMECALL                         R5 R0 K2 ["getRoots"]
        9 CALL                             R5 1 1
       10 NEWCLOSURE                       R6 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          REF R1
       14 CAPTURE                          REF R3
       15 CAPTURE                          UPVAL U1
       16 CALL                             R4 2 0
       17 NAMECALL                         R4 R0 K3 ["getNumElements"]
       19 CALL                             R4 1 1
       20 JUMPIFEQ                         R3 R4 ; [+20]
       22 GETIMPORT                        R4 K5 [error]
       24 LOADK                            R5 K6 ["Inconsistent Store state. Individual root weights (%s) do not match total weight (%s)"]
       25 FASTCALL1                        TOSTRING R3 ; [+3]
       26 MOVE                             R8 R3
       27 GETIMPORT                        R7 K8 [tostring]
       29 CALL                             R7 1 1
       30 NAMECALL                         R9 R0 K3 ["getNumElements"]
       32 CALL                             R9 1 -1
       33 FASTCALL                         TOSTRING ; [+2]
       34 GETIMPORT                        R8 K8 [tostring]
       36 CALL                             R8 -1 1
       37 NAMECALL                         R5 R5 K9 ["format"]
       39 CALL                             R5 3 -1
       40 CALL                             R4 -1 0
       41 NAMECALL                         R4 R0 K10 ["assertExpectedRootMapSizes"]
       43 CALL                             R4 1 0
       44 GETIMPORT                        R4 K13 [table.concat]
       46 MOVE                             R5 R2
       47 LOADK                            R6 K14 ["\n"]
       48 CALL                             R4 2 -1
       49 CLOSEUPVALS                      R1
       50 RETURN                           R4 -1

PROTO_5:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["string"] ; [+38]
        7 LENGTH                           R1 R0
        8 LOADN                            R2 2
        9 JUMPIFNOTLE                      R2 R1 ; [+34]
       11 LOADN                            R3 1
       12 LOADN                            R4 1
       13 FASTCALL3                        STRING_SUB R0 R3 R4
       15 MOVE                             R2 R0
       16 GETIMPORT                        R1 K4 [string.sub]
       18 CALL                             R1 3 1
       19 JUMPIFNOTEQKS                    R1 K5 ["'"] ; [+24]
       21 LENGTH                           R3 R0
       22 FASTCALL2                        STRING_SUB R0 R3 ; [+4]
       24 MOVE                             R2 R0
       25 GETIMPORT                        R1 K4 [string.sub]
       27 CALL                             R1 2 1
       28 JUMPIFNOTEQKS                    R1 K5 ["'"] ; [+15]
       30 LOADK                            R2 K6 ["\""]
       31 LOADN                            R7 1
       32 LENGTH                           R9 R0
       33 SUBK                             R8 R9 K7 [2]
       34 FASTCALL3                        STRING_SUB R0 R7 R8
       36 MOVE                             R6 R0
       37 GETIMPORT                        R5 K4 [string.sub]
       39 CALL                             R5 3 1
       40 MOVE                             R3 R5
       41 LOADK                            R4 K6 ["\""]
       42 CONCAT                           R1 R2 R4
       43 RETURN                           R1 1
       44 RETURN                           R0 1

PROTO_6:
        0 JUMPIFNOTEQKS                    R0 K0 ["Infinity"] ; [+3]
        2 LOADK                            R1 K1 [∞]
        3 RETURN                           R1 1
        4 JUMPIFNOTEQKS                    R0 K2 ["NaN"] ; [+3]
        6 LOADN                            R1 0
        7 RETURN                           R1 1
        8 JUMPIFNOTEQKS                    R0 K3 ["undefined"] ; [+3]
       10 LOADNIL                          R1
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 0
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K4 ["sanitizeForParse"]
       16 MOVE                             R4 R0
       17 CALL                             R3 1 -1
       18 NAMECALL                         R1 R1 K5 ["JSONDecode"]
       20 CALL                             R1 -1 -1
       21 RETURN                           R1 -1

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["number"] ; [+2]
        7 JUMP                             ; [+4]
        8 JUMPIFNOTEQKNIL                  R0 ; [+3]
       10 LOADK                            R1 K3 ["undefined"]
       11 RETURN                           R1 1
       12 GETUPVAL                         R1 0
       13 MOVE                             R3 R0
       14 NAMECALL                         R1 R1 K4 ["JSONEncode"]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 GETIMPORT                        R3 K8 [game]
       18 LOADK                            R5 K9 ["HttpService"]
       19 NAMECALL                         R3 R3 K10 ["GetService"]
       21 CALL                             R3 2 1
       22 NEWTABLE                         R4 8 0
       24 GETIMPORT                        R5 K4 [require]
       26 GETIMPORT                        R10 K1 [script]
       28 GETTABLEKS                       R9 R10 K2 ["Parent"]
       30 GETTABLEKS                       R8 R9 K11 ["views"]
       32 GETTABLEKS                       R7 R8 K12 ["Components"]
       34 GETTABLEKS                       R6 R7 K13 ["types"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K4 [require]
       39 GETIMPORT                        R9 K1 [script]
       41 GETTABLEKS                       R8 R9 K2 ["Parent"]
       43 GETTABLEKS                       R7 R8 K13 ["types"]
       45 CALL                             R6 1 1
       46 DUPCLOSURE                       R7 K14 [PROTO_0]
       47 SETTABLEKS                       R7 R4 K15 ["printElement"]
       49 DUPCLOSURE                       R7 K16 [PROTO_2]
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R7 R4 K17 ["printOwnersList"]
       54 DUPCLOSURE                       R7 K18 [PROTO_4]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R4
       57 SETTABLEKS                       R7 R4 K19 ["printStore"]
       59 DUPCLOSURE                       R7 K20 [PROTO_5]
       60 SETTABLEKS                       R7 R4 K21 ["sanitizeForParse"]
       62 DUPCLOSURE                       R7 K22 [PROTO_6]
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R7 R4 K23 ["smartParse"]
       67 DUPCLOSURE                       R7 K24 [PROTO_7]
       68 CAPTURE                          VAL R3
       69 SETTABLEKS                       R7 R4 K25 ["smartStringify"]
       71 RETURN                           R4 1
