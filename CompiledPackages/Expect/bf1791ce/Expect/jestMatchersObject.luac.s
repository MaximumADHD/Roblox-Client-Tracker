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
        5 JUMPIF                           R1 ; [+45]
        6 NEWTABLE                         R8 8 0
        8 SETTABLEKS                       R8 R8 K2 ["__index"]
       10 GETUPVAL                         R11 0
       11 FASTCALL2                        SETMETATABLE R8 R11 ; [+4]
       13 MOVE                             R10 R8
       14 GETIMPORT                        R9 K4 [setmetatable]
       16 CALL                             R9 2 0
       17 NEWCLOSURE                       R9 P0
       18 CAPTURE                          UPVAL U0
       19 CAPTURE                          VAL R8
       20 SETTABLEKS                       R9 R8 K5 ["new"]
       22 NEWCLOSURE                       R9 P1
       23 CAPTURE                          VAL R7
       24 SETTABLEKS                       R9 R8 K6 ["asymmetricMatch"]
       26 NEWCLOSURE                       R9 P2
       27 CAPTURE                          VAL R6
       28 SETTABLEKS                       R9 R8 K7 ["toString"]
       30 DUPCLOSURE                       R9 K8 [PROTO_5]
       31 SETTABLEKS                       R9 R8 K9 ["getExpectedType"]
       33 DUPCLOSURE                       R9 K10 [PROTO_6]
       34 SETTABLEKS                       R9 R8 K11 ["toAsymmetricMatcher"]
       36 NEWCLOSURE                       R9 P5
       37 CAPTURE                          VAL R8
       38 SETTABLE                         R9 R2 R6
       39 GETTABLEKS                       R9 R2 K12 ["never"]
       41 JUMPIF                           R9 ; [+4]
       42 NEWTABLE                         R9 0 0
       44 SETTABLEKS                       R9 R2 K12 ["never"]
       46 GETTABLEKS                       R9 R2 K12 ["never"]
       48 NEWCLOSURE                       R10 P6
       49 CAPTURE                          VAL R8
       50 SETTABLE                         R10 R9 R6
       51 FORGLOOP                         R3 2 ; [-47]
       53 GETUPVAL                         R3 1
       54 GETTABLEKS                       R3 R3 K13 ["assign"]
       56 GETIMPORT                        R5 K15 [_G]
       58 GETUPVAL                         R6 2
       59 GETTABLE                         R4 R5 R6
       60 GETTABLEKS                       R4 R4 K16 ["matchers"]
       62 MOVE                             R5 R0
       63 CALL                             R3 2 0
       64 RETURN                           R0 0

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
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R0 K8 ["asymmetricMatchers"]
       20 CALL                             R5 1 1
       21 GETTABLEKS                       R5 R5 K9 ["AsymmetricMatcher"]
       23 GETIMPORT                        R6 K4 [require]
       25 GETTABLEKS                       R7 R0 K10 ["types"]
       27 CALL                             R6 1 1
       28 GETIMPORT                        R7 K4 [require]
       30 GETTABLEKS                       R8 R0 K11 ["jestMatchersObject_extracted"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R8 R7 K12 ["JEST_MATCHERS_OBJECT"]
       35 GETTABLEKS                       R9 R3 K13 ["for_"]
       37 LOADK                            R10 K14 ["$$jest-internal-matcher"]
       38 CALL                             R9 1 1
       39 GETIMPORT                        R11 K16 [_G]
       41 GETTABLE                         R10 R11 R8
       42 JUMPIF                           R10 ; [+15]
       43 DUPTABLE                         R10 K24 [{["assertionCalls"] = 0, ["expectedAssertionsNumber"] = , ["isExpectingAssertions"] = False, ["suppressedErrors"]}]
       44 NEWTABLE                         R11 0 0
       46 SETTABLEKS                       R11 R10 K23 ["suppressedErrors"]
       48 GETIMPORT                        R11 K16 [_G]
       50 DUPTABLE                         R12 K27 [{"matchers", "state"}]
       51 NEWTABLE                         R13 0 0
       53 SETTABLEKS                       R13 R12 K25 ["matchers"]
       55 SETTABLEKS                       R10 R12 K26 ["state"]
       57 SETTABLE                         R12 R11 R8
       58 GETTABLEKS                       R10 R7 K28 ["getState"]
       60 DUPCLOSURE                       R11 K29 [PROTO_0]
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R8
       63 DUPCLOSURE                       R12 K30 [PROTO_1]
       64 CAPTURE                          VAL R8
       65 DUPCLOSURE                       R13 K31 [PROTO_9]
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R4
       68 CAPTURE                          VAL R8
       69 DUPTABLE                         R14 K36 [{"INTERNAL_MATCHER_FLAG", "getState", "setState", "getMatchers", "setMatchers"}]
       70 SETTABLEKS                       R9 R14 K32 ["INTERNAL_MATCHER_FLAG"]
       72 SETTABLEKS                       R10 R14 K28 ["getState"]
       74 SETTABLEKS                       R11 R14 K33 ["setState"]
       76 SETTABLEKS                       R12 R14 K34 ["getMatchers"]
       78 SETTABLEKS                       R13 R14 K35 ["setMatchers"]
       80 RETURN                           R14 1
