PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["trim"]
        3 ORK                              R2 R0 K1 [""]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 LOADK                            R3 K0 ["%s*at.*%(?:%d*:%d*%)?"]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+5]
        5 LOADK                            R3 K2 ["%s*at.*%(?native%)?"]
        6 NAMECALL                         R1 R0 K1 ["find"]
        8 CALL                             R1 2 1
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 0
       11 MOVE                             R2 R0
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R3 K0 ["^%s+at <anonymous>.*$"]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+2]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 LOADK                            R3 K2 ["^%s+at Promise %(<anonymous>%).*$"]
        8 NAMECALL                         R1 R0 K1 ["find"]
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+5]
       12 LOADK                            R3 K3 ["^%s+at new Promise %(<anonymous>%).*$"]
       13 NAMECALL                         R1 R0 K1 ["find"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+2]
       17 LOADB                            R1 0
       18 RETURN                           R1 1
       19 LOADK                            R3 K4 ["^%s+at Generator.next %(<anonymous>%).*$"]
       20 NAMECALL                         R1 R0 K1 ["find"]
       22 CALL                             R1 2 1
       23 JUMPIFNOT                        R1 ; [+2]
       24 LOADB                            R1 0
       25 RETURN                           R1 1
       26 LOADK                            R3 K5 ["^%s+at next %(native%).*$"]
       27 NAMECALL                         R1 R0 K1 ["find"]
       29 CALL                             R1 2 1
       30 JUMPIFNOT                        R1 ; [+2]
       31 LOADB                            R1 0
       32 RETURN                           R1 1
       33 LOADK                            R3 K6 ["%s*at.*%(?:%d*:%d*%)?"]
       34 NAMECALL                         R1 R0 K1 ["find"]
       36 CALL                             R1 2 1
       37 JUMPIFNOT                        R1 ; [+5]
       38 LOADK                            R3 K7 ["%s*at.*%(?native%)?"]
       39 NAMECALL                         R1 R0 K1 ["find"]
       41 CALL                             R1 2 1
       42 JUMPIF                           R1 ; [+2]
       43 LOADB                            R1 1
       44 RETURN                           R1 1
       45 LOADK                            R3 K8 ["%s+at(.jasmine%-)"]
       46 NAMECALL                         R1 R0 K1 ["find"]
       48 CALL                             R1 2 1
       49 JUMPIF                           R1 ; [+5]
       50 LOADK                            R3 K9 ["%s+at(%s+jasmine%.buildExpectationResult)"]
       51 NAMECALL                         R1 R0 K1 ["find"]
       53 CALL                             R1 2 1
       54 JUMPIFNOT                        R1 ; [+2]
       55 LOADB                            R1 0
       56 RETURN                           R1 1
       57 GETUPVAL                         R1 0
       58 ADDK                             R1 R1 K10 [1]
       59 SETUPVAL                         R1 0
       60 GETUPVAL                         R1 0
       61 JUMPIFNOTEQKN                    R1 K10 [1] ; [+3]
       63 LOADB                            R1 1
       64 RETURN                           R1 1
       65 GETUPVAL                         R2 1
       66 GETTABLEKS                       R1 R2 K11 ["noStackTrace"]
       68 JUMPIFNOT                        R1 ; [+2]
       69 LOADB                            R1 0
       70 RETURN                           R1 1
       71 LOADB                            R1 1
       72 RETURN                           R1 1

PROTO_3:
        0 LOADN                            R2 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["filter"]
        4 MOVE                             R4 R0
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          REF R2
        7 CAPTURE                          VAL R1
        8 CALL                             R3 2 -1
        9 CLOSEUPVALS                      R2
       10 RETURN                           R3 -1

PROTO_4:
        0 RETURN                           R2 1

PROTO_5:
        0 JUMPIFNOTEQKNIL                  R1 ; [+9]
        2 DUPTABLE                         R2 K2 [{"noCodeFrame", "noStackTrace"}]
        3 LOADB                            R3 0
        4 SETTABLEKS                       R3 R2 K0 ["noCodeFrame"]
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K1 ["noStackTrace"]
        9 MOVE                             R1 R2
       10 GETUPVAL                         R2 0
       11 GETIMPORT                        R3 K5 [string.split]
       13 MOVE                             R4 R0
       14 LOADK                            R5 K6 ["\n"]
       15 CALL                             R3 2 1
       16 MOVE                             R4 R1
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_6:
        0 LOADK                            R2 K0 ["      "]
        1 GETUPVAL                         R4 0
        2 GETUPVAL                         R5 1
        3 LOADK                            R9 K1 ["%s*at.*%(?:%d*:%d*%)?"]
        4 NAMECALL                         R7 R0 K2 ["find"]
        6 CALL                             R7 2 1
        7 JUMPIF                           R7 ; [+5]
        8 LOADK                            R9 K3 ["%s*at.*%(?native%)?"]
        9 NAMECALL                         R7 R0 K2 ["find"]
       11 CALL                             R7 2 1
       12 JUMPIFNOT                        R7 ; [+6]
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R6 R7 K4 ["trim"]
       16 ORK                              R7 R0 K5 [""]
       17 CALL                             R6 1 1
       18 JUMP                             ; [+1]
       19 MOVE                             R6 R0
       20 MOVE                             R3 R6
       21 CONCAT                           R1 R2 R3
       22 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R2
        3 CALL                             R4 2 1
        4 LOADNIL                          R5
        5 JUMPIFNOT                        R3 ; [+1]
        6 LOADK                            R5 K0 ["unsupported"]
        7 GETIMPORT                        R6 K3 [table.concat]
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R7 R8 K4 ["map"]
       12 GETUPVAL                         R9 1
       13 GETTABLEKS                       R8 R9 K5 ["filter"]
       15 MOVE                             R9 R4
       16 GETUPVAL                         R10 2
       17 CALL                             R8 2 1
       18 NEWCLOSURE                       R9 P0
       19 CAPTURE                          VAL R1
       20 CAPTURE                          REF R5
       21 CAPTURE                          UPVAL U3
       22 CALL                             R7 2 1
       23 LOADK                            R8 K6 ["\n"]
       24 CALL                             R6 2 1
       25 GETIMPORT                        R7 K9 [string.format]
       27 LOADK                            R8 K10 ["\n%s"]
       28 MOVE                             R9 R6
       29 CALL                             R7 2 -1
       30 CLOSEUPVALS                      R5
       31 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R1 R0 K2 ["Parent"]
        5 GETIMPORT                        R2 K4 [require]
        7 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R2 K6 ["Array"]
       12 GETTABLEKS                       R4 R2 K7 ["String"]
       14 GETTABLEKS                       R6 R2 K8 ["Boolean"]
       16 GETTABLEKS                       R5 R6 K9 ["toJSBoolean"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 DUPCLOSURE                       R8 K10 [PROTO_0]
       21 CAPTURE                          VAL R4
       22 DUPCLOSURE                       R9 K11 [PROTO_1]
       23 CAPTURE                          VAL R8
       24 DUPCLOSURE                       R10 K12 [PROTO_3]
       25 CAPTURE                          VAL R3
       26 DUPCLOSURE                       R11 K13 [PROTO_4]
       27 DUPCLOSURE                       R7 K14 [PROTO_5]
       28 CAPTURE                          VAL R10
       29 NEWCLOSURE                       R6 P5
       30 CAPTURE                          REF R7
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R4
       34 DUPTABLE                         R12 K17 [{"formatStackTrace", "getStackTraceLines"}]
       35 SETTABLEKS                       R6 R12 K15 ["formatStackTrace"]
       37 SETTABLEKS                       R7 R12 K16 ["getStackTraceLines"]
       39 CLOSEUPVALS                      R7
       40 RETURN                           R12 1
