PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isArray"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIF                           R1 ; [+23]
        6 GETIMPORT                        R1 K2 [error]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["new"]
       11 LOADK                            R4 K4 ["`.each` must be called with an Array or Tagged Template Literal.\n\n"]
       12 LOADK                            R5 K5 ["Instead was called with: %s\n"]
       13 GETUPVAL                         R7 2
       14 MOVE                             R8 R0
       15 DUPTABLE                         R9 K8 [{"maxDepth", "min"}]
       16 LOADN                            R10 1
       17 SETTABLEKS                       R10 R9 K6 ["maxDepth"]
       19 LOADB                            R10 1
       20 SETTABLEKS                       R10 R9 K7 ["min"]
       22 CALL                             R7 2 -1
       23 NAMECALL                         R5 R5 K9 ["format"]
       25 CALL                             R5 -1 1
       26 CONCAT                           R3 R4 R5
       27 CALL                             R2 1 -1
       28 CALL                             R1 -1 0
       29 GETUPVAL                         R1 3
       30 MOVE                             R2 R0
       31 CALL                             R1 1 1
       32 JUMPIFNOT                        R1 ; [+20]
       33 GETUPVAL                         R1 4
       34 GETTABLEN                        R2 R0 1
       35 CALL                             R1 1 1
       36 JUMPIFNOT                        R1 ; [+8]
       37 GETIMPORT                        R1 K2 [error]
       39 GETUPVAL                         R2 1
       40 GETTABLEKS                       R2 R2 K3 ["new"]
       42 LOADK                            R3 K10 ["Error: `.each` called with an empty Tagged Template Literal of table data.\n"]
       43 CALL                             R2 1 -1
       44 CALL                             R1 -1 0
       45 GETIMPORT                        R1 K2 [error]
       47 GETUPVAL                         R2 1
       48 GETTABLEKS                       R2 R2 K3 ["new"]
       50 LOADK                            R3 K11 ["Error: `.each` called with a Tagged Template Literal with no data, remember to interpolate with ${expression} syntax.\n"]
       51 CALL                             R2 1 -1
       52 CALL                             R1 -1 0
       53 GETUPVAL                         R1 5
       54 MOVE                             R2 R0
       55 CALL                             R1 1 1
       56 JUMPIFNOT                        R1 ; [+8]
       57 GETIMPORT                        R1 K2 [error]
       59 GETUPVAL                         R2 1
       60 GETTABLEKS                       R2 R2 K3 ["new"]
       62 LOADK                            R3 K12 ["Error: `.each` called with an empty Array of table data.\n"]
       63 CALL                             R2 1 -1
       64 CALL                             R1 -1 0
       65 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["raw"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 LOADB                            R1 0 +1
        5 LOADB                            R1 1
        6 RETURN                           R1 1

PROTO_2:
        0 LENGTH                           R2 R0
        1 JUMPIFEQKN                       R2 K0 [0] ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+10]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["trim"]
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 JUMPIFEQKS                       R2 K4 [""] ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 LENGTH                           R3 R4
        2 LENGTH                           R4 R0
        3 SUB                              R2 R3 R4
        4 LOADN                            R4 0
        5 JUMPIFNOTLE                      R4 R2 ; [+3]
        7 MOVE                             R3 R2
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R5 0
       10 LENGTH                           R4 R5
       11 SUB                              R3 R2 R4
       12 JUMPIFEQKN                       R3 K0 [0] ; [+68]
       14 GETIMPORT                        R4 K2 [error]
       16 GETUPVAL                         R5 1
       17 GETTABLEKS                       R5 R5 K3 ["new"]
       19 LOADK                            R14 K4 ["%s arguments supplied for given headings:\n"]
       20 LOADN                            R17 0
       21 JUMPIFNOTLT                      R17 R2 ; [+3]
       23 LOADK                            R16 K5 ["Not enough"]
       24 JUMP                             ; [+1]
       25 LOADK                            R16 K6 ["Too many"]
       26 NAMECALL                         R14 R14 K7 ["format"]
       28 CALL                             R14 2 1
       29 MOVE                             R7 R14
       30 GETUPVAL                         R15 2
       31 GETUPVAL                         R16 3
       32 GETTABLEKS                       R16 R16 K8 ["join"]
       34 GETUPVAL                         R17 0
       35 LOADK                            R18 K9 [" | "]
       36 CALL                             R16 2 -1
       37 CALL                             R15 -1 -1
       38 FASTCALL                         TOSTRING ; [+2]
       39 GETIMPORT                        R14 K11 [tostring]
       41 CALL                             R14 -1 1
       42 MOVE                             R8 R14
       43 LOADK                            R9 K12 ["\n\n"]
       44 LOADK                            R10 K13 ["Received:\n"]
       45 GETUPVAL                         R15 4
       46 GETUPVAL                         R16 5
       47 GETUPVAL                         R17 6
       48 CALL                             R16 1 -1
       49 CALL                             R15 -1 -1
       50 FASTCALL                         TOSTRING ; [+2]
       51 GETIMPORT                        R14 K11 [tostring]
       53 CALL                             R14 -1 1
       54 MOVE                             R11 R14
       55 LOADK                            R12 K12 ["\n\n"]
       56 LOADK                            R13 K14 ["%s %s %s in row %d"]
       57 LOADN                            R16 0
       58 JUMPIFNOTLT                      R16 R2 ; [+3]
       60 LOADK                            R15 K15 ["Missing"]
       61 JUMP                             ; [+1]
       62 LOADK                            R15 K16 ["Remove"]
       63 GETUPVAL                         R16 4
       64 FASTCALL1                        TOSTRING R3 ; [+3]
       65 MOVE                             R18 R3
       66 GETIMPORT                        R17 K11 [tostring]
       68 CALL                             R17 1 1
       69 CALL                             R16 1 1
       70 GETUPVAL                         R17 7
       71 LOADK                            R18 K17 ["argument"]
       72 MOVE                             R19 R3
       73 CALL                             R17 2 1
       74 MOVE                             R18 R1
       75 NAMECALL                         R13 R13 K7 ["format"]
       77 CALL                             R13 5 1
       78 CONCAT                           R6 R7 R13
       79 CALL                             R5 1 -1
       80 CALL                             R4 -1 0
       81 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["forEach"]
        3 MOVE                             R3 R1
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U5
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R3 R0
        1 JUMPIFNOTEQKN                    R1 K0 [1] ; [+3]
        3 LOADK                            R4 K1 [""]
        4 JUMP                             ; [+1]
        5 LOADK                            R4 K2 ["s"]
        6 CONCAT                           R2 R3 R4
        7 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["trim"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K1 [""] ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["trim"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 LOADK                            R4 K0 ["%s"]
        1 NAMECALL                         R2 R0 K1 ["match"]
        3 CALL                             R2 2 1
        4 JUMPIFNOTEQKNIL                  R2 ; [+2]
        6 LOADB                            R1 0 +1
        7 LOADB                            R1 1
        8 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R3 K0 ["^s*[^%.*]+s*$"]
        1 NAMECALL                         R1 R0 K1 ["match"]
        3 CALL                             R1 2 1
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 JUMPIFNOT                        R1 ; [+13]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R4 R4 K2 ["filter"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K3 ["split"]
       13 MOVE                             R6 R1
       14 LOADK                            R7 K4 ["\n"]
       15 CALL                             R5 2 1
       16 DUPCLOSURE                       R6 K5 [PROTO_7]
       17 CAPTURE                          UPVAL U1
       18 CALL                             R4 2 1
       19 MOVE                             R2 R4
       20 JUMPIFNOT                        R2 ; [+23]
       21 LENGTH                           R4 R2
       22 LOADN                            R5 0
       23 JUMPIFNOTLT                      R5 R4 ; [+20]
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R4 R4 K6 ["map"]
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K3 ["split"]
       31 GETTABLEN                        R6 R2 1
       32 LOADK                            R7 K7 ["|"]
       33 CALL                             R5 2 1
       34 DUPCLOSURE                       R6 K8 [PROTO_8]
       35 CAPTURE                          UPVAL U1
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R5 R5 K9 ["some"]
       40 MOVE                             R6 R4
       41 DUPCLOSURE                       R7 K10 [PROTO_9]
       42 CALL                             R5 2 1
       43 MOVE                             R3 R5
       44 JUMPIFEQKNIL                     R1 ; [+2]
       46 JUMPIFNOT                        R3 ; [+20]
       47 GETIMPORT                        R4 K12 [error]
       49 GETUPVAL                         R5 2
       50 GETTABLEKS                       R5 R5 K13 ["new"]
       52 LOADK                            R7 K14 ["Table headings do not conform to expected format:\n\n"]
       53 GETUPVAL                         R12 3
       54 LOADK                            R13 K15 ["heading1 | headingN"]
       55 CALL                             R12 1 1
       56 MOVE                             R8 R12
       57 LOADK                            R9 K16 ["\n\n"]
       58 LOADK                            R10 K17 ["Received:\n\n"]
       59 GETUPVAL                         R11 4
       60 GETUPVAL                         R12 5
       61 MOVE                             R13 R0
       62 CALL                             R12 1 -1
       63 CALL                             R11 -1 1
       64 CONCAT                           R6 R7 R11
       65 CALL                             R5 1 -1
       66 CALL                             R4 -1 0
       67 GETTABLEN                        R4 R2 1
       68 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Array"]
       14 GETTABLEKS                       R3 R1 K7 ["Error"]
       16 GETTABLEKS                       R4 R1 K8 ["String"]
       18 NEWTABLE                         R5 4 0
       20 GETIMPORT                        R6 K4 [require]
       22 GETTABLEKS                       R7 R0 K9 ["ChalkLua"]
       24 CALL                             R6 1 1
       25 GETIMPORT                        R7 K4 [require]
       27 GETTABLEKS                       R8 R0 K10 ["JestTypes"]
       29 CALL                             R7 1 1
       30 GETIMPORT                        R8 K4 [require]
       32 GETTABLEKS                       R9 R0 K11 ["PrettyFormat"]
       34 CALL                             R8 1 1
       35 GETTABLEKS                       R8 R8 K12 ["format"]
       37 LOADNIL                          R9
       38 LOADNIL                          R10
       39 LOADNIL                          R11
       40 LOADNIL                          R12
       41 GETTABLEKS                       R13 R6 K13 ["green"]
       43 GETTABLEKS                       R14 R6 K14 ["red"]
       45 NEWCLOSURE                       R15 P0
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R8
       49 CAPTURE                          REF R9
       50 CAPTURE                          REF R10
       51 CAPTURE                          REF R11
       52 SETTABLEKS                       R15 R5 K15 ["validateArrayTable"]
       54 DUPCLOSURE                       R9 K16 [PROTO_1]
       55 DUPCLOSURE                       R11 K17 [PROTO_2]
       56 DUPCLOSURE                       R10 K18 [PROTO_3]
       57 CAPTURE                          VAL R4
       58 NEWCLOSURE                       R16 P4
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R13
       62 CAPTURE                          VAL R14
       63 CAPTURE                          VAL R8
       64 CAPTURE                          REF R12
       65 SETTABLEKS                       R16 R5 K19 ["validateTemplateTableArguments"]
       67 DUPCLOSURE                       R12 K20 [PROTO_6]
       68 DUPCLOSURE                       R17 K21 [PROTO_10]
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R14
       74 CAPTURE                          VAL R8
       75 SETTABLEKS                       R17 R5 K22 ["extractValidTemplateHeadings"]
       77 CLOSEUPVALS                      R9
       78 RETURN                           R5 1
