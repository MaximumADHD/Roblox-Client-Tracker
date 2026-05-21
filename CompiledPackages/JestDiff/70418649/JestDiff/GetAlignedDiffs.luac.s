PROTO_0:
        0 GETTABLEN                        R2 R1 1
        1 GETUPVAL                         R3 0
        2 JUMPIFNOTEQ                      R2 R3 ; [+5]
        4 MOVE                             R3 R0
        5 GETTABLEN                        R4 R1 2
        6 CONCAT                           R2 R3 R4
        7 RETURN                           R2 1
        8 GETTABLEN                        R2 R1 1
        9 GETUPVAL                         R3 1
       10 JUMPIFNOTEQ                      R2 R3 ; [+11]
       12 GETTABLEN                        R3 R1 2
       13 LENGTH                           R2 R3
       14 JUMPIFEQKN                       R2 K0 [0] ; [+7]
       16 MOVE                             R3 R0
       17 GETUPVAL                         R4 2
       18 GETTABLEN                        R5 R1 2
       19 CALL                             R4 1 1
       20 CONCAT                           R2 R3 R4
       21 RETURN                           R2 1
       22 MOVE                             R3 R0
       23 LOADK                            R4 K1 [""]
       24 CONCAT                           R2 R3 R4
       25 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["reduce"]
        3 MOVE                             R4 R1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R2
        8 LOADK                            R6 K1 [""]
        9 CALL                             R3 3 -1
       10 RETURN                           R3 -1

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
        5 GETIMPORT                        R2 K1 [setmetatable]
        7 CALL                             R2 2 1
        8 SETTABLEKS                       R0 R2 K2 ["op"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K3 ["line"]
       14 NEWTABLE                         R3 0 0
       16 SETTABLEKS                       R3 R2 K4 ["lines"]
       18 SETTABLEKS                       R1 R2 K5 ["changeColor"]
       20 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 GETTABLEKS                       R5 R0 K1 ["op"]
        5 MOVE                             R6 R1
        6 CALL                             R4 2 -1
        7 NAMECALL                         R2 R0 K2 ["pushDiff"]
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["lines"]
        2 GETTABLEKS                       R5 R0 K1 ["line"]
        4 LENGTH                           R4 R5
        5 JUMPIFEQKN                       R4 K2 [1] ; [+16]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K3 ["new"]
       10 GETTABLEKS                       R4 R0 K4 ["op"]
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R6 R0 K4 ["op"]
       15 GETTABLEKS                       R7 R0 K1 ["line"]
       17 GETTABLEKS                       R8 R0 K5 ["changeColor"]
       19 CALL                             R5 3 -1
       20 CALL                             R3 -1 1
       21 JUMP                             ; [+22]
       22 GETTABLEKS                       R6 R0 K1 ["line"]
       24 GETTABLEN                        R5 R6 1
       25 GETTABLEN                        R4 R5 1
       26 GETTABLEKS                       R5 R0 K4 ["op"]
       28 JUMPIFNOTEQ                      R4 R5 ; [+5]
       30 GETTABLEKS                       R4 R0 K1 ["line"]
       32 GETTABLEN                        R3 R4 1
       33 JUMP                             ; [+10]
       34 GETUPVAL                         R3 0
       35 GETTABLEKS                       R3 R3 K3 ["new"]
       37 GETTABLEKS                       R4 R0 K4 ["op"]
       39 GETTABLEKS                       R7 R0 K1 ["line"]
       41 GETTABLEN                        R6 R7 1
       42 GETTABLEN                        R5 R6 2
       43 CALL                             R3 2 1
       44 FASTCALL2                        TABLE_INSERT R2 R3 ; [+3]
       46 GETIMPORT                        R1 K8 [table.insert]
       48 CALL                             R1 2 0
       49 NEWTABLE                         R1 0 0
       51 SETTABLEKS                       R1 R0 K1 ["line"]
       53 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["line"]
        2 LENGTH                           R2 R3
        3 JUMPIFEQKN                       R2 K1 [0] ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["line"]
        2 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [table.insert]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETTABLEN                        R2 R1 2
        1 LOADK                            R5 K0 ["\n"]
        2 NAMECALL                         R3 R2 K1 ["match"]
        4 CALL                             R3 2 1
        5 JUMPIFNOT                        R3 ; [+30]
        6 LOADK                            R5 K0 ["\n"]
        7 NAMECALL                         R3 R2 K2 ["split"]
        9 CALL                             R3 2 1
       10 LENGTH                           R4 R3
       11 GETIMPORT                        R5 K4 [ipairs]
       13 MOVE                             R6 R3
       14 CALL                             R5 1 3
       15 FORGPREP_INEXT                   R5
       16 JUMPIFNOTLT                      R8 R4 ; [+9]
       18 MOVE                             R12 R9
       19 NAMECALL                         R10 R0 K5 ["pushSubstring"]
       21 CALL                             R10 2 0
       22 NAMECALL                         R10 R0 K6 ["pushLine"]
       24 CALL                             R10 1 0
       25 JUMP                             ; [+7]
       26 LENGTH                           R10 R9
       27 JUMPIFEQKN                       R10 K7 [0] ; [+5]
       29 MOVE                             R12 R9
       30 NAMECALL                         R10 R0 K5 ["pushSubstring"]
       32 CALL                             R10 2 0
       33 FORGLOOP                         R5 2 [inext] ; [-18]
       35 RETURN                           R0 0
       36 MOVE                             R5 R1
       37 NAMECALL                         R3 R0 K8 ["pushDiff"]
       39 CALL                             R3 2 0
       40 RETURN                           R0 0

PROTO_8:
        0 NAMECALL                         R2 R0 K0 ["isLineEmpty"]
        2 CALL                             R2 1 1
        3 JUMPIF                           R2 ; [+3]
        4 NAMECALL                         R2 R0 K1 ["pushLine"]
        6 CALL                             R2 1 0
        7 GETIMPORT                        R2 K3 [ipairs]
        9 GETTABLEKS                       R3 R0 K4 ["lines"]
       11 CALL                             R2 1 3
       12 FORGPREP_INEXT                   R2
       13 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
       15 MOVE                             R8 R1
       16 MOVE                             R9 R6
       17 GETIMPORT                        R7 K7 [table.insert]
       19 CALL                             R7 2 0
       20 FORGLOOP                         R2 2 [inext] ; [-8]
       22 NEWTABLE                         R2 0 0
       24 SETTABLEKS                       R2 R0 K4 ["lines"]
       26 RETURN                           R0 0

PROTO_9:
        0 NEWTABLE                         R2 4 0
        2 SETTABLEKS                       R0 R2 K0 ["deleteBuffer"]
        4 SETTABLEKS                       R1 R2 K1 ["insertBuffer"]
        6 NEWTABLE                         R3 0 0
        8 SETTABLEKS                       R3 R2 K2 ["lines"]
       10 GETUPVAL                         R5 0
       11 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K4 [setmetatable]
       16 CALL                             R3 2 0
       17 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["lines"]
        2 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [table.insert]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_11:
        0 GETTABLEN                        R4 R1 2
        1 LENGTH                           R3 R4
        2 JUMPIFEQKN                       R3 K0 [0] ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETTABLEKS                       R3 R0 K1 ["deleteBuffer"]
        9 NAMECALL                         R3 R3 K2 ["isLineEmpty"]
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+6]
       13 GETTABLEKS                       R3 R0 K1 ["deleteBuffer"]
       15 MOVE                             R5 R1
       16 NAMECALL                         R3 R3 K3 ["pushDiff"]
       18 CALL                             R3 2 0
       19 JUMPIFNOT                        R2 ; [+6]
       20 GETTABLEKS                       R3 R0 K4 ["insertBuffer"]
       22 NAMECALL                         R3 R3 K2 ["isLineEmpty"]
       24 CALL                             R3 1 1
       25 JUMPIFNOT                        R3 ; [+6]
       26 GETTABLEKS                       R3 R0 K4 ["insertBuffer"]
       28 MOVE                             R5 R1
       29 NAMECALL                         R3 R3 K3 ["pushDiff"]
       31 CALL                             R3 2 0
       32 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["deleteBuffer"]
        2 GETTABLEKS                       R3 R0 K1 ["lines"]
        4 NAMECALL                         R1 R1 K2 ["moveLinesTo"]
        6 CALL                             R1 2 0
        7 GETTABLEKS                       R1 R0 K3 ["insertBuffer"]
        9 GETTABLEKS                       R3 R0 K1 ["lines"]
       11 NAMECALL                         R1 R1 K2 ["moveLinesTo"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_13:
        0 GETTABLEN                        R2 R1 1
        1 GETTABLEN                        R3 R1 2
        2 LOADK                            R6 K0 ["\n"]
        3 NAMECALL                         R4 R3 K1 ["match"]
        5 CALL                             R4 2 1
        6 JUMPIFNOT                        R4 ; [+73]
        7 LOADK                            R6 K0 ["\n"]
        8 NAMECALL                         R4 R3 K2 ["split"]
       10 CALL                             R4 2 1
       11 LENGTH                           R5 R4
       12 GETIMPORT                        R6 K4 [ipairs]
       14 MOVE                             R7 R4
       15 CALL                             R6 1 3
       16 FORGPREP_INEXT                   R6
       17 JUMPIFNOTEQKN                    R9 K5 [1] ; [+35]
       19 GETUPVAL                         R11 0
       20 GETTABLEKS                       R11 R11 K6 ["new"]
       22 MOVE                             R12 R2
       23 MOVE                             R13 R10
       24 CALL                             R11 2 1
       25 GETTABLEKS                       R12 R0 K7 ["deleteBuffer"]
       27 NAMECALL                         R12 R12 K8 ["isLineEmpty"]
       29 CALL                             R12 1 1
       30 JUMPIFNOT                        R12 ; [+14]
       31 GETTABLEKS                       R12 R0 K9 ["insertBuffer"]
       33 NAMECALL                         R12 R12 K8 ["isLineEmpty"]
       35 CALL                             R12 1 1
       36 JUMPIFNOT                        R12 ; [+8]
       37 NAMECALL                         R12 R0 K10 ["flushChangeLines"]
       39 CALL                             R12 1 0
       40 MOVE                             R14 R11
       41 NAMECALL                         R12 R0 K11 ["pushDiffCommonLine"]
       43 CALL                             R12 2 0
       44 JUMP                             ; [+32]
       45 MOVE                             R14 R11
       46 NAMECALL                         R12 R0 K12 ["pushDiffChangeLines"]
       48 CALL                             R12 2 0
       49 NAMECALL                         R12 R0 K10 ["flushChangeLines"]
       51 CALL                             R12 1 0
       52 JUMP                             ; [+24]
       53 JUMPIFNOTLT                      R9 R5 ; [+11]
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R13 R13 K6 ["new"]
       58 MOVE                             R14 R2
       59 MOVE                             R15 R10
       60 CALL                             R13 2 -1
       61 NAMECALL                         R11 R0 K11 ["pushDiffCommonLine"]
       63 CALL                             R11 -1 0
       64 JUMP                             ; [+12]
       65 LENGTH                           R11 R10
       66 JUMPIFEQKN                       R11 K13 [0] ; [+10]
       68 GETUPVAL                         R13 0
       69 GETTABLEKS                       R13 R13 K6 ["new"]
       71 MOVE                             R14 R2
       72 MOVE                             R15 R10
       73 CALL                             R13 2 -1
       74 NAMECALL                         R11 R0 K12 ["pushDiffChangeLines"]
       76 CALL                             R11 -1 0
       77 FORGLOOP                         R6 2 [inext] ; [-61]
       79 RETURN                           R0 0
       80 MOVE                             R6 R1
       81 NAMECALL                         R4 R0 K12 ["pushDiffChangeLines"]
       83 CALL                             R4 2 0
       84 RETURN                           R0 0

PROTO_14:
        0 NAMECALL                         R1 R0 K0 ["flushChangeLines"]
        2 CALL                             R1 1 0
        3 GETTABLEKS                       R1 R0 K1 ["lines"]
        5 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["new"]
        9 GETUPVAL                         R4 2
       10 MOVE                             R5 R1
       11 CALL                             R3 2 1
       12 GETUPVAL                         R4 3
       13 GETTABLEKS                       R4 R4 K0 ["new"]
       15 MOVE                             R5 R2
       16 MOVE                             R6 R3
       17 CALL                             R4 2 1
       18 GETIMPORT                        R5 K2 [ipairs]
       20 MOVE                             R6 R0
       21 CALL                             R5 1 3
       22 FORGPREP_INEXT                   R5
       23 GETTABLEN                        R10 R9 1
       24 GETUPVAL                         R11 1
       25 JUMPIFNOTEQ                      R10 R11 ; [+6]
       27 MOVE                             R13 R9
       28 NAMECALL                         R11 R2 K3 ["align"]
       30 CALL                             R11 2 0
       31 JUMP                             ; [+12]
       32 GETUPVAL                         R11 2
       33 JUMPIFNOTEQ                      R10 R11 ; [+6]
       35 MOVE                             R13 R9
       36 NAMECALL                         R11 R3 K3 ["align"]
       38 CALL                             R11 2 0
       39 JUMP                             ; [+4]
       40 MOVE                             R13 R9
       41 NAMECALL                         R11 R4 K3 ["align"]
       43 CALL                             R11 2 0
       44 FORGLOOP                         R5 2 [inext] ; [-22]
       46 NAMECALL                         R5 R4 K4 ["getLines"]
       48 CALL                             R5 1 -1
       49 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K7 ["CleanupSemantic"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K8 ["DIFF_DELETE"]
       21 GETTABLEKS                       R6 R4 K9 ["DIFF_EQUAL"]
       23 GETTABLEKS                       R7 R4 K10 ["DIFF_INSERT"]
       25 GETTABLEKS                       R8 R4 K11 ["Diff"]
       27 GETIMPORT                        R9 K4 [require]
       29 GETTABLEKS                       R10 R0 K12 ["types"]
       31 CALL                             R9 1 1
       32 DUPCLOSURE                       R10 K13 [PROTO_1]
       33 CAPTURE                          VAL R3
       34 CAPTURE                          VAL R6
       35 NEWTABLE                         R11 8 0
       37 SETTABLEKS                       R11 R11 K14 ["__index"]
       39 DUPCLOSURE                       R12 K15 [PROTO_2]
       40 CAPTURE                          VAL R11
       41 SETTABLEKS                       R12 R11 K16 ["new"]
       43 DUPCLOSURE                       R12 K17 [PROTO_3]
       44 CAPTURE                          VAL R8
       45 SETTABLEKS                       R12 R11 K18 ["pushSubstring"]
       47 DUPCLOSURE                       R12 K19 [PROTO_4]
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R10
       50 SETTABLEKS                       R12 R11 K20 ["pushLine"]
       52 DUPCLOSURE                       R12 K21 [PROTO_5]
       53 SETTABLEKS                       R12 R11 K22 ["isLineEmpty"]
       55 DUPCLOSURE                       R12 K23 [PROTO_6]
       56 SETTABLEKS                       R12 R11 K24 ["pushDiff"]
       58 DUPCLOSURE                       R12 K25 [PROTO_7]
       59 SETTABLEKS                       R12 R11 K26 ["align"]
       61 DUPCLOSURE                       R12 K27 [PROTO_8]
       62 SETTABLEKS                       R12 R11 K28 ["moveLinesTo"]
       64 NEWTABLE                         R12 8 0
       66 SETTABLEKS                       R12 R12 K14 ["__index"]
       68 DUPCLOSURE                       R13 K29 [PROTO_9]
       69 CAPTURE                          VAL R12
       70 SETTABLEKS                       R13 R12 K16 ["new"]
       72 DUPCLOSURE                       R13 K30 [PROTO_10]
       73 SETTABLEKS                       R13 R12 K31 ["pushDiffCommonLine"]
       75 DUPCLOSURE                       R13 K32 [PROTO_11]
       76 SETTABLEKS                       R13 R12 K33 ["pushDiffChangeLines"]
       78 DUPCLOSURE                       R13 K34 [PROTO_12]
       79 SETTABLEKS                       R13 R12 K35 ["flushChangeLines"]
       81 DUPCLOSURE                       R13 K36 [PROTO_13]
       82 CAPTURE                          VAL R8
       83 SETTABLEKS                       R13 R12 K26 ["align"]
       85 DUPCLOSURE                       R13 K37 [PROTO_14]
       86 SETTABLEKS                       R13 R12 K38 ["getLines"]
       88 DUPCLOSURE                       R13 K39 [PROTO_15]
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R12
       93 RETURN                           R13 1
