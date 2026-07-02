PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 GETIMPORT                        R3 K2 [_G]
        5 GETUPVAL                         R4 1
        6 GETTABLE                         R2 R3 R4
        7 GETTABLEKS                       R2 R2 K3 ["state"]
        9 MOVE                             R3 R0
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K1 [_G]
        2 GETUPVAL                         R2 0
        3 GETTABLE                         R0 R1 R2
        4 GETTABLEKS                       R0 R0 K2 ["matchers"]
        6 RETURN                           R0 1

PROTO_2:
        0 PREPVARARGS                      1
        1 JUMPIFEQKNIL                     R0 ; [+2]
        3 JUMP                             ; [+1]
        4 LOADB                            R0 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["new"]
        8 NEWTABLE                         R2 0 0
       10 GETVARARGS                       R3 -1
       11 SETLIST                          R2 R3 -1 [1]
       13 MOVE                             R3 R0
       14 CALL                             R1 2 1
       15 GETUPVAL                         R4 1
       16 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       18 MOVE                             R3 R1
       19 GETIMPORT                        R2 K2 [setmetatable]
       21 CALL                             R2 2 0
       22 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R3 R0 K0 ["getMatcherContext"]
        3 CALL                             R3 1 1
        4 MOVE                             R4 R1
        5 GETTABLEKS                       R6 R0 K1 ["sample"]
        7 FASTCALL1                        TABLE_UNPACK R6 ; [+2]
        8 GETIMPORT                        R5 K3 [unpack]
       10 CALL                             R5 1 -1
       11 CALL                             R2 -1 1
       12 GETTABLEKS                       R2 R2 K4 ["pass"]
       14 GETTABLEKS                       R4 R0 K5 ["inverse"]
       16 JUMPIFNOT                        R4 ; [+2]
       17 NOT                              R3 R2
       18 RETURN                           R3 1
       19 MOVE                             R3 R2
       20 RETURN                           R3 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["inverse"]
        2 JUMPIFNOT                        R1 ; [+6]
        3 GETIMPORT                        R1 K3 [string.format]
        5 LOADK                            R2 K4 ["never.%s"]
        6 GETUPVAL                         R3 0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1
        9 GETUPVAL                         R2 0
       10 FASTCALL1                        TOSTRING R2 ; [+2]
       11 GETIMPORT                        R1 K6 [tostring]
       13 CALL                             R1 1 1
       14 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R1 K0 ["any"]
        1 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["sample"]
        2 LOADN                            R2 1
        3 LOADK                            R3 K1 [""]
        4 LENGTH                           R4 R1
        5 JUMPIFNOTLT                      R2 R4 ; [+12]
        7 MOVE                             R4 R3
        8 GETTABLE                         R8 R1 R2
        9 FASTCALL1                        TOSTRING R8 ; [+2]
       10 GETIMPORT                        R7 K3 [tostring]
       12 CALL                             R7 1 1
       13 MOVE                             R5 R7
       14 LOADK                            R6 K4 [", "]
       15 CONCAT                           R3 R4 R6
       16 ADDK                             R2 R2 K5 [1]
       17 JUMPBACK                         ; [-14]
       18 MOVE                             R4 R3
       19 GETTABLE                         R6 R1 R2
       20 FASTCALL1                        TOSTRING R6 ; [+2]
       21 GETIMPORT                        R5 K3 [tostring]
       23 CALL                             R5 1 1
       24 CONCAT                           R3 R4 R5
       25 GETIMPORT                        R4 K8 [string.format]
       27 LOADK                            R5 K9 ["%s<%s>"]
       28 NAMECALL                         R6 R0 K10 ["toString"]
       30 CALL                             R6 1 1
       31 MOVE                             R7 R3
       32 CALL                             R4 3 -1
       33 RETURN                           R4 -1

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["new"]
        4 LOADB                            R1 0
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_8:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETTABLEKS                       R0 R0 K0 ["new"]
        4 LOADB                            R1 1
        5 GETVARARGS                       R2 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_9:
        0 GETIMPORT                        R3 K1 [pairs]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 3
        4 FORGPREP_NEXT                    R3
        5 JUMPIF                           R1 ; [+75]
        6 FASTCALL1                        TYPEOF R7 ; [+3]
        7 MOVE                             R9 R7
        8 GETIMPORT                        R8 K3 [typeof]
       10 CALL                             R8 1 1
       11 JUMPIFEQKS                       R8 K4 ["function"] ; [+24]
       13 GETIMPORT                        R8 K6 [error]
       15 GETUPVAL                         R9 0
       16 GETTABLEKS                       R9 R9 K7 ["new"]
       18 LOADK                            R10 K8 ["expect.extend: `%s` is not a valid matcher. Must be a function, is \"%s\""]
       19 FASTCALL1                        TOSTRING R6 ; [+3]
       20 MOVE                             R13 R6
       21 GETIMPORT                        R12 K10 [tostring]
       23 CALL                             R12 1 1
       24 GETUPVAL                         R14 1
       25 MOVE                             R15 R7
       26 CALL                             R14 1 -1
       27 FASTCALL                         TOSTRING ; [+2]
       28 GETIMPORT                        R13 K10 [tostring]
       30 CALL                             R13 -1 1
       31 NAMECALL                         R10 R10 K11 ["format"]
       33 CALL                             R10 3 -1
       34 CALL                             R9 -1 -1
       35 CALL                             R8 -1 0
       36 NEWTABLE                         R8 8 0
       38 SETTABLEKS                       R8 R8 K12 ["__index"]
       40 GETUPVAL                         R11 2
       41 FASTCALL2                        SETMETATABLE R8 R11 ; [+4]
       43 MOVE                             R10 R8
       44 GETIMPORT                        R9 K14 [setmetatable]
       46 CALL                             R9 2 0
       47 NEWCLOSURE                       R9 P0
       48 CAPTURE                          UPVAL U2
       49 CAPTURE                          VAL R8
       50 SETTABLEKS                       R9 R8 K7 ["new"]
       52 NEWCLOSURE                       R9 P1
       53 CAPTURE                          VAL R7
       54 SETTABLEKS                       R9 R8 K15 ["asymmetricMatch"]
       56 NEWCLOSURE                       R9 P2
       57 CAPTURE                          VAL R6
       58 SETTABLEKS                       R9 R8 K16 ["toString"]
       60 DUPCLOSURE                       R9 K17 [PROTO_5]
       61 SETTABLEKS                       R9 R8 K18 ["getExpectedType"]
       63 DUPCLOSURE                       R9 K19 [PROTO_6]
       64 SETTABLEKS                       R9 R8 K20 ["toAsymmetricMatcher"]
       66 NEWCLOSURE                       R9 P5
       67 CAPTURE                          VAL R8
       68 SETTABLE                         R9 R2 R6
       69 GETTABLEKS                       R9 R2 K21 ["never"]
       71 JUMPIF                           R9 ; [+4]
       72 NEWTABLE                         R9 0 0
       74 SETTABLEKS                       R9 R2 K21 ["never"]
       76 GETTABLEKS                       R9 R2 K21 ["never"]
       78 NEWCLOSURE                       R10 P6
       79 CAPTURE                          VAL R8
       80 SETTABLE                         R10 R9 R6
       81 FORGLOOP                         R3 2 ; [-77]
       83 GETUPVAL                         R3 3
       84 GETTABLEKS                       R3 R3 K22 ["assign"]
       86 GETIMPORT                        R5 K24 [_G]
       88 GETUPVAL                         R6 4
       89 GETTABLE                         R4 R5 R6
       90 GETTABLEKS                       R4 R4 K25 ["matchers"]
       92 MOVE                             R5 R0
       93 CALL                             R3 2 0
       94 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Symbol"]
       14 GETTABLEKS                       R4 R2 K7 ["Object"]
       16 GETTABLEKS                       R5 R2 K8 ["Error"]
       18 GETIMPORT                        R6 K4 [require]
       20 GETTABLEKS                       R7 R1 K9 ["JestGetType"]
       22 CALL                             R6 1 1
       23 GETTABLEKS                       R6 R6 K10 ["getType"]
       25 GETIMPORT                        R7 K4 [require]
       27 GETTABLEKS                       R8 R0 K11 ["asymmetricMatchers"]
       29 CALL                             R7 1 1
       30 GETTABLEKS                       R7 R7 K12 ["AsymmetricMatcher"]
       32 GETIMPORT                        R8 K4 [require]
       34 GETTABLEKS                       R9 R0 K13 ["types"]
       36 CALL                             R8 1 1
       37 GETIMPORT                        R9 K4 [require]
       39 GETTABLEKS                       R10 R0 K14 ["jestMatchersObject_extracted"]
       41 CALL                             R9 1 1
       42 GETTABLEKS                       R10 R9 K15 ["JEST_MATCHERS_OBJECT"]
       44 GETTABLEKS                       R11 R3 K16 ["for_"]
       46 LOADK                            R12 K17 ["$$jest-internal-matcher"]
       47 CALL                             R11 1 1
       48 GETIMPORT                        R13 K19 [_G]
       50 GETTABLE                         R12 R13 R10
       51 JUMPIF                           R12 ; [+15]
       52 DUPTABLE                         R12 K27 [{["assertionCalls"] = 0, ["expectedAssertionsNumber"] = , ["isExpectingAssertions"] = False, ["suppressedErrors"]}]
       53 NEWTABLE                         R13 0 0
       55 SETTABLEKS                       R13 R12 K26 ["suppressedErrors"]
       57 GETIMPORT                        R13 K19 [_G]
       59 DUPTABLE                         R14 K30 [{"matchers", "state"}]
       60 NEWTABLE                         R15 0 0
       62 SETTABLEKS                       R15 R14 K28 ["matchers"]
       64 SETTABLEKS                       R12 R14 K29 ["state"]
       66 SETTABLE                         R14 R13 R10
       67 GETTABLEKS                       R12 R9 K31 ["getState"]
       69 DUPCLOSURE                       R13 K32 [PROTO_0]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R10
       72 DUPCLOSURE                       R14 K33 [PROTO_1]
       73 CAPTURE                          VAL R10
       74 DUPCLOSURE                       R15 K34 [PROTO_9]
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R10
       80 DUPTABLE                         R16 K39 [{"INTERNAL_MATCHER_FLAG", "getState", "setState", "getMatchers", "setMatchers"}]
       81 SETTABLEKS                       R11 R16 K35 ["INTERNAL_MATCHER_FLAG"]
       83 SETTABLEKS                       R12 R16 K31 ["getState"]
       85 SETTABLEKS                       R13 R16 K36 ["setState"]
       87 SETTABLEKS                       R14 R16 K37 ["getMatchers"]
       89 SETTABLEKS                       R15 R16 K38 ["setMatchers"]
       91 RETURN                           R16 1
