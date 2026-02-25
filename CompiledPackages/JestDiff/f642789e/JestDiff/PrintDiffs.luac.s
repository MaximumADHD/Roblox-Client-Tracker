PROTO_0:
        0 LOADB                            R2 0
        1 GETTABLEN                        R3 R0 1
        2 GETUPVAL                         R4 0
        3 JUMPIFNOTEQ                      R3 R4 ; [+10]
        5 LOADB                            R2 1
        6 GETUPVAL                         R3 1
        7 JUMPIFNOTEQ                      R1 R3 ; [+6]
        9 GETTABLEN                        R3 R0 2
       10 JUMPIFNOTEQKS                    R3 K0 ["\n"] ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1

PROTO_1:
        0 GETTABLEN                        R2 R0 1
        1 GETUPVAL                         R3 0
        2 JUMPIFEQ                         R2 R3 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_2:
        0 JUMPIFNOT                        R1 ; [+10]
        1 LENGTH                           R2 R0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K0 ["some"]
        5 MOVE                             R4 R0
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R2
        9 CALL                             R3 2 -1
       10 RETURN                           R3 -1
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K0 ["some"]
       14 MOVE                             R3 R0
       15 DUPCLOSURE                       R4 K1 [PROTO_1]
       16 CAPTURE                          UPVAL U1
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_3:
        0 JUMPIFEQ                         R0 R1 ; [+55]
        2 LENGTH                           R3 R0
        3 JUMPIFEQKN                       R3 K0 [0] ; [+52]
        5 LENGTH                           R3 R1
        6 JUMPIFEQKN                       R3 K0 [0] ; [+49]
        8 LOADB                            R3 1
        9 LOADK                            R6 K1 ["\n"]
       10 NAMECALL                         R4 R0 K2 ["find"]
       12 CALL                             R4 2 1
       13 JUMPIFNOTEQKNIL                  R4 ; [+9]
       15 LOADK                            R6 K1 ["\n"]
       16 NAMECALL                         R4 R1 K2 ["find"]
       18 CALL                             R4 2 1
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 LOADB                            R3 0 +1
       22 LOADB                            R3 1
       23 GETUPVAL                         R4 0
       24 JUMPIFNOT                        R3 ; [+4]
       25 MOVE                             R6 R0
       26 LOADK                            R7 K1 ["\n"]
       27 CONCAT                           R5 R6 R7
       28 JUMPIF                           R5 ; [+1]
       29 MOVE                             R5 R0
       30 JUMPIFNOT                        R3 ; [+4]
       31 MOVE                             R7 R1
       32 LOADK                            R8 K1 ["\n"]
       33 CONCAT                           R6 R7 R8
       34 JUMPIF                           R6 ; [+1]
       35 MOVE                             R6 R1
       36 LOADB                            R7 1
       37 CALL                             R4 3 1
       38 GETUPVAL                         R5 1
       39 MOVE                             R6 R4
       40 MOVE                             R7 R3
       41 CALL                             R5 2 1
       42 JUMPIFNOT                        R5 ; [+13]
       43 GETUPVAL                         R5 2
       44 MOVE                             R6 R2
       45 CALL                             R5 1 1
       46 GETUPVAL                         R6 3
       47 MOVE                             R7 R4
       48 GETTABLEKS                       R8 R5 K3 ["changeColor"]
       50 CALL                             R6 2 1
       51 GETUPVAL                         R7 4
       52 MOVE                             R8 R6
       53 MOVE                             R9 R5
       54 CALL                             R7 2 -1
       55 RETURN                           R7 -1
       56 GETUPVAL                         R3 5
       57 LOADK                            R6 K1 ["\n"]
       58 NAMECALL                         R4 R0 K4 ["split"]
       60 CALL                             R4 2 1
       61 LOADK                            R7 K1 ["\n"]
       62 NAMECALL                         R5 R1 K4 ["split"]
       64 CALL                             R5 2 1
       65 MOVE                             R6 R2
       66 CALL                             R3 3 -1
       67 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R2 ; [+3]
        5 GETUPVAL                         R4 1
        6 MOVE                             R5 R3
        7 CALL                             R4 1 0
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K7 ["CleanupSemantic"]
       18 CALL                             R4 1 1
       19 GETTABLEKS                       R5 R4 K8 ["DIFF_EQUAL"]
       21 GETTABLEKS                       R6 R4 K9 ["cleanupSemantic"]
       23 GETIMPORT                        R7 K4 [require]
       25 GETTABLEKS                       R8 R0 K10 ["DiffLines"]
       27 CALL                             R7 1 1
       28 GETTABLEKS                       R8 R7 K11 ["diffLinesUnified"]
       30 GETTABLEKS                       R9 R7 K12 ["printDiffLines"]
       32 GETIMPORT                        R10 K4 [require]
       34 GETTABLEKS                       R11 R0 K13 ["DiffStrings"]
       36 CALL                             R10 1 1
       37 GETIMPORT                        R11 K4 [require]
       39 GETTABLEKS                       R12 R0 K14 ["GetAlignedDiffs"]
       41 CALL                             R11 1 1
       42 GETIMPORT                        R13 K4 [require]
       44 GETTABLEKS                       R14 R0 K15 ["NormalizeDiffOptions"]
       46 CALL                             R13 1 1
       47 GETTABLEKS                       R12 R13 K16 ["normalizeDiffOptions"]
       49 GETIMPORT                        R13 K4 [require]
       51 GETTABLEKS                       R14 R0 K17 ["types"]
       53 CALL                             R13 1 1
       54 LOADNIL                          R14
       55 DUPCLOSURE                       R15 K18 [PROTO_2]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R5
       58 NEWCLOSURE                       R16 P1
       59 CAPTURE                          REF R14
       60 CAPTURE                          VAL R15
       61 CAPTURE                          VAL R12
       62 CAPTURE                          VAL R11
       63 CAPTURE                          VAL R9
       64 CAPTURE                          VAL R8
       65 DUPCLOSURE                       R14 K19 [PROTO_4]
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R6
       68 DUPTABLE                         R17 K22 [{"diffStringsUnified", "diffStringsRaw"}]
       69 SETTABLEKS                       R16 R17 K20 ["diffStringsUnified"]
       71 SETTABLEKS                       R14 R17 K21 ["diffStringsRaw"]
       73 CLOSEUPVALS                      R14
       74 RETURN                           R17 1
