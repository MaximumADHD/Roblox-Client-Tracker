PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+15]
        3 LOADB                            R1 0
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+7]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K3 ["isArray"]
       14 MOVE                             R3 R0
       15 CALL                             R2 1 1
       16 NOT                              R1 R2
       17 RETURN                           R1 1

PROTO_1:
        0 GETIMPORT                        R2 K2 [string.match]
        2 MOVE                             R3 R0
        3 GETUPVAL                         R4 0
        4 CALL                             R2 2 1
        5 JUMPIFNOTEQKNIL                  R2 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_2:
        0 LOADB                            R1 0
        1 LENGTH                           R2 R0
        2 JUMPIFNOTEQKN                    R2 K0 [1] ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["hasRegexChars"]
        7 MOVE                             R2 R0
        8 CALL                             R1 1 1
        9 RETURN                           R1 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["escapeRegex not implemented"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["toPosixSlashes not implemented"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [error]
        2 LOADK                            R2 K2 ["removeBackslashes not implemented"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 LOADB                            R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+12]
        7 GETTABLEKS                       R2 R0 K3 ["windows"]
        9 FASTCALL1                        TYPEOF R2 ; [+2]
       10 GETIMPORT                        R1 K1 [typeof]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["boolean"] ; [+4]
       15 GETTABLEKS                       R1 R0 K3 ["windows"]
       17 RETURN                           R1 1
       18 LOADB                            R1 0
       19 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["lastIndexOf"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 1
        7 JUMPIFNOTEQKN                    R3 K1 [-1] ; [+2]
        9 RETURN                           R0 1
       10 SUBK                             R6 R3 K2 [1]
       11 SUBK                             R7 R3 K2 [1]
       12 NAMECALL                         R4 R0 K3 ["sub"]
       14 CALL                             R4 3 1
       15 JUMPIFNOTEQKS                    R4 K4 ["\\"] ; [+9]
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R4 R4 K5 ["escapeLast"]
       20 MOVE                             R5 R0
       21 MOVE                             R6 R1
       22 SUBK                             R7 R3 K2 [1]
       23 CALL                             R4 3 -1
       24 RETURN                           R4 -1
       25 LOADK                            R4 K6 ["%s%s"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K7 ["slice"]
       29 MOVE                             R7 R0
       30 LOADN                            R8 1
       31 MOVE                             R9 R3
       32 CALL                             R6 3 1
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R7 R7 K7 ["slice"]
       36 MOVE                             R8 R0
       37 MOVE                             R9 R3
       38 CALL                             R7 2 -1
       39 NAMECALL                         R4 R4 K8 ["format"]
       41 CALL                             R4 -1 -1
       42 RETURN                           R4 -1

PROTO_9:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["startsWith"]
        8 MOVE                             R5 R3
        9 LOADK                            R6 K1 ["./"]
       10 CALL                             R4 2 1
       11 JUMPIFNOT                        R4 ; [+10]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K2 ["slice"]
       15 MOVE                             R5 R3
       16 LOADN                            R6 3
       17 CALL                             R4 2 1
       18 MOVE                             R3 R4
       19 LOADK                            R4 K1 ["./"]
       20 SETTABLEKS                       R4 R2 K3 ["prefix"]
       22 RETURN                           R3 1

PROTO_10:
        0 MOVE                             R3 R1
        1 JUMPIF                           R3 ; [+2]
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R2
        5 JUMPIF                           R4 ; [+2]
        6 NEWTABLE                         R4 0 0
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R6 R6 K0 ["toJSBoolean"]
       11 GETTABLEKS                       R7 R4 K1 ["contains"]
       13 CALL                             R6 1 1
       14 JUMPIFNOT                        R6 ; [+2]
       15 LOADK                            R5 K2 [""]
       16 JUMP                             ; [+1]
       17 LOADK                            R5 K3 ["^"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R7 R7 K0 ["toJSBoolean"]
       21 GETTABLEKS                       R8 R4 K1 ["contains"]
       23 CALL                             R7 1 1
       24 JUMPIFNOT                        R7 ; [+2]
       25 LOADK                            R6 K2 [""]
       26 JUMP                             ; [+1]
       27 LOADK                            R6 K4 ["$"]
       28 LOADK                            R7 K5 ["%s(?:%s)%s"]
       29 MOVE                             R9 R5
       30 MOVE                             R10 R0
       31 MOVE                             R11 R6
       32 NAMECALL                         R7 R7 K6 ["format"]
       34 CALL                             R7 4 1
       35 GETTABLEKS                       R8 R3 K7 ["negated"]
       37 JUMPIFNOTEQKB                    R8 TRUE ; [+7]
       39 LOADK                            R8 K8 ["(?:^(?!%s).*$)"]
       40 MOVE                             R10 R7
       41 NAMECALL                         R8 R8 K6 ["format"]
       43 CALL                             R8 2 1
       44 MOVE                             R7 R8
       45 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       16 GETTABLEKS                       R5 R2 K8 ["String"]
       18 NEWTABLE                         R6 16 0
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R0 K9 ["constants"]
       24 CALL                             R7 1 1
       25 GETTABLEKS                       R8 R7 K10 ["REGEX_SPECIAL_CHARS"]
       27 DUPCLOSURE                       R9 K11 [PROTO_0]
       28 CAPTURE                          VAL R3
       29 SETTABLEKS                       R9 R6 K12 ["isObject"]
       31 DUPCLOSURE                       R9 K13 [PROTO_1]
       32 CAPTURE                          VAL R8
       33 SETTABLEKS                       R9 R6 K14 ["hasRegexChars"]
       35 DUPCLOSURE                       R9 K15 [PROTO_2]
       36 CAPTURE                          VAL R6
       37 SETTABLEKS                       R9 R6 K16 ["isRegexChar"]
       39 DUPCLOSURE                       R9 K17 [PROTO_3]
       40 SETTABLEKS                       R9 R6 K18 ["escapeRegex"]
       42 DUPCLOSURE                       R9 K19 [PROTO_4]
       43 SETTABLEKS                       R9 R6 K20 ["toPosixSlashes"]
       45 DUPCLOSURE                       R9 K21 [PROTO_5]
       46 SETTABLEKS                       R9 R6 K22 ["removeBackslashes"]
       48 DUPCLOSURE                       R9 K23 [PROTO_6]
       49 SETTABLEKS                       R9 R6 K24 ["supportsLookbehinds"]
       51 DUPCLOSURE                       R9 K25 [PROTO_7]
       52 SETTABLEKS                       R9 R6 K26 ["isWindows"]
       54 DUPCLOSURE                       R9 K27 [PROTO_8]
       55 CAPTURE                          VAL R5
       56 CAPTURE                          VAL R6
       57 SETTABLEKS                       R9 R6 K28 ["escapeLast"]
       59 DUPCLOSURE                       R9 K29 [PROTO_9]
       60 CAPTURE                          VAL R5
       61 SETTABLEKS                       R9 R6 K30 ["removePrefix"]
       63 DUPCLOSURE                       R9 K31 [PROTO_10]
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R9 R6 K32 ["wrapOutput"]
       67 RETURN                           R6 1
