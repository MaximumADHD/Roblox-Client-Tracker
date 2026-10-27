PROTO_0:
        0 NEWTABLE                         R2 4 0
        2 SETTABLEKS                       R0 R2 K0 ["sample"]
        4 JUMPIFNOTEQKNIL                  R1 ; [+3]
        6 LOADB                            R3 0
        7 JUMP                             ; [+1]
        8 MOVE                             R3 R1
        9 SETTABLEKS                       R3 R2 K1 ["inverse"]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K2 ["for_"]
       14 LOADK                            R4 K3 ["jest.asymmetricMatcher"]
       15 CALL                             R3 1 1
       16 SETTABLEKS                       R3 R2 K4 ["$$typeof"]
       18 GETUPVAL                         R5 1
       19 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       21 MOVE                             R4 R2
       22 GETIMPORT                        R3 K6 [setmetatable]
       24 CALL                             R3 2 0
       25 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["assign"]
        3 NEWTABLE                         R2 0 0
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 DUPTABLE                         R4 K4 [{"equals", "isNot", "utils"}]
        8 GETUPVAL                         R5 2
        9 SETTABLEKS                       R5 R4 K1 ["equals"]
       11 GETTABLEKS                       R5 R0 K5 ["inverse"]
       13 SETTABLEKS                       R5 R4 K2 ["isNot"]
       15 GETUPVAL                         R5 3
       16 SETTABLEKS                       R5 R4 K3 ["utils"]
       18 CALL                             R1 3 -1
       19 RETURN                           R1 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [typeof]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["table"] ; [+12]
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K1 [typeof]
       11 CALL                             R1 1 1
       12 JUMPIFEQKS                       R1 K3 ["string"] ; [+5]
       14 GETIMPORT                        R1 K5 [error]
       16 LOADK                            R2 K6 ["any() expects to be passed a typename string or a prototype class. Please pass one or use anything() to match any object."]
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K7 ["new"]
       21 MOVE                             R2 R0
       22 CALL                             R1 1 1
       23 GETUPVAL                         R4 1
       24 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       26 MOVE                             R3 R1
       27 GETIMPORT                        R2 K9 [setmetatable]
       29 CALL                             R2 2 0
       30 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["sample"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R3 0
        5 MOVE                             R4 R1
        6 CALL                             R3 1 1
        7 JUMPIFNOTEQKS                    R2 K1 ["table"] ; [+3]
        9 JUMPIFEQKS                       R3 K1 ["table"] ; [+5]
       11 JUMPIFNOTEQKS                    R2 K2 ["error"] ; [+9]
       13 JUMPIFNOTEQKS                    R3 K2 ["error"] ; [+7]
       15 GETUPVAL                         R4 1
       16 MOVE                             R5 R1
       17 GETTABLEKS                       R6 R0 K0 ["sample"]
       19 CALL                             R4 2 -1
       20 RETURN                           R4 -1
       21 JUMPIFNOTEQKS                    R2 K3 ["string"] ; [+7]
       23 GETTABLEKS                       R4 R0 K0 ["sample"]
       25 JUMPIFNOTEQ                      R4 R3 ; [+3]
       27 LOADB                            R4 1
       28 RETURN                           R4 1
       29 LOADB                            R4 0
       30 RETURN                           R4 1

PROTO_4:
        0 LOADK                            R1 K0 ["Any"]
        1 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["sample"]
        2 FASTCALL1                        TOSTRING R2 ; [+2]
        3 GETIMPORT                        R1 K2 [tostring]
        5 CALL                             R1 1 1
        6 RETURN                           R1 1

PROTO_6:
        0 LOADK                            R2 K0 ["Any<"]
        1 GETTABLEKS                       R6 R0 K1 ["sample"]
        3 FASTCALL1                        TOSTRING R6 ; [+2]
        4 GETIMPORT                        R5 K3 [tostring]
        6 CALL                             R5 1 1
        7 MOVE                             R3 R5
        8 LOADK                            R4 K4 [">"]
        9 CONCAT                           R1 R2 R4
       10 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R4 1
        6 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K2 [setmetatable]
       11 CALL                             R2 2 0
       12 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 NOT                              R2 R3
        4 RETURN                           R2 1

PROTO_9:
        0 LOADK                            R1 K0 ["Anything"]
        1 RETURN                           R1 1

PROTO_10:
        0 LOADK                            R1 K0 ["Anything"]
        1 RETURN                           R1 1

PROTO_11:
        0 JUMPIFEQKNIL                     R1 ; [+2]
        2 JUMP                             ; [+1]
        3 LOADB                            R1 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["new"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 1
       10 GETUPVAL                         R5 1
       11 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K2 [setmetatable]
       16 CALL                             R3 2 0
       17 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["some"]
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isArray"]
        3 GETTABLEKS                       R3 R0 K1 ["sample"]
        5 CALL                             R2 1 1
        6 JUMPIF                           R2 ; [+16]
        7 GETIMPORT                        R2 K3 [error]
        9 GETIMPORT                        R3 K6 [string.format]
       11 LOADK                            R4 K7 ["You must provide an array to %s, not '%s'."]
       12 NAMECALL                         R5 R0 K8 ["toString"]
       14 CALL                             R5 1 1
       15 GETTABLEKS                       R7 R0 K1 ["sample"]
       17 FASTCALL1                        TYPEOF R7 ; [+2]
       18 GETIMPORT                        R6 K10 [typeof]
       20 CALL                             R6 1 1
       21 CALL                             R3 3 -1
       22 CALL                             R2 -1 0
       23 LOADB                            R2 0
       24 GETTABLEKS                       R4 R0 K1 ["sample"]
       26 LENGTH                           R3 R4
       27 JUMPIFNOTEQKN                    R3 K11 [0] ; [+3]
       29 LOADB                            R2 1
       30 JUMP                             ; [+18]
       31 GETUPVAL                         R3 0
       32 GETTABLEKS                       R3 R3 K0 ["isArray"]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 1
       36 JUMPIFNOT                        R3 ; [+12]
       37 GETUPVAL                         R3 0
       38 GETTABLEKS                       R3 R3 K12 ["every"]
       40 GETTABLEKS                       R4 R0 K1 ["sample"]
       42 NEWCLOSURE                       R5 P0
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R1
       45 CAPTURE                          UPVAL U1
       46 CALL                             R3 2 1
       47 JUMPIFNOT                        R3 ; [+1]
       48 LOADB                            R2 1
       49 GETTABLEKS                       R3 R0 K13 ["inverse"]
       51 JUMPIFNOT                        R3 ; [+2]
       52 NOT                              R3 R2
       53 RETURN                           R3 1
       54 RETURN                           R2 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["inverse"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R1 K1 ["ArrayNotContaining"]
        4 RETURN                           R1 1
        5 LOADK                            R1 K2 ["ArrayContaining"]
        6 RETURN                           R1 1

PROTO_16:
        0 LOADK                            R1 K0 ["array"]
        1 RETURN                           R1 1

PROTO_17:
        0 JUMPIFEQKNIL                     R1 ; [+2]
        2 JUMP                             ; [+1]
        3 LOADB                            R1 0
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K0 ["new"]
        7 MOVE                             R3 R0
        8 MOVE                             R4 R1
        9 CALL                             R2 2 1
       10 GETUPVAL                         R5 1
       11 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       13 MOVE                             R4 R2
       14 GETIMPORT                        R3 K2 [setmetatable]
       16 CALL                             R3 2 0
       17 RETURN                           R2 1

PROTO_18:
        0 GETTABLEKS                       R3 R0 K0 ["sample"]
        2 FASTCALL1                        TYPEOF R3 ; [+2]
        3 GETIMPORT                        R2 K2 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K3 ["table"] ; [+17]
        8 GETIMPORT                        R2 K5 [error]
       10 GETIMPORT                        R3 K8 [string.format]
       12 LOADK                            R4 K9 ["You must provide an object to %s, not '%s'."]
       13 NAMECALL                         R5 R0 K10 ["toString"]
       15 CALL                             R5 1 1
       16 GETTABLEKS                       R7 R0 K0 ["sample"]
       18 FASTCALL1                        TYPEOF R7 ; [+2]
       19 GETIMPORT                        R6 K2 [typeof]
       21 CALL                             R6 1 1
       22 CALL                             R3 3 -1
       23 CALL                             R2 -1 0
       24 LOADB                            R2 1
       25 GETIMPORT                        R3 K12 [pairs]
       27 GETTABLEKS                       R4 R0 K0 ["sample"]
       29 CALL                             R3 1 3
       30 FORGPREP_NEXT                    R3
       31 GETUPVAL                         R8 0
       32 MOVE                             R9 R1
       33 MOVE                             R10 R6
       34 CALL                             R8 2 1
       35 JUMPIFNOT                        R8 ; [+5]
       36 GETUPVAL                         R8 1
       37 MOVE                             R9 R7
       38 GETTABLE                         R10 R1 R6
       39 CALL                             R8 2 1
       40 JUMPIF                           R8 ; [+2]
       41 LOADB                            R2 0
       42 JUMP                             ; [+2]
       43 FORGLOOP                         R3 2 ; [-13]
       45 GETTABLEKS                       R4 R0 K13 ["inverse"]
       47 JUMPIFNOT                        R4 ; [+2]
       48 NOT                              R3 R2
       49 RETURN                           R3 1
       50 MOVE                             R3 R2
       51 RETURN                           R3 1

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["inverse"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R1 K1 ["ObjectNotContaining"]
        4 RETURN                           R1 1
        5 LOADK                            R1 K2 ["ObjectContaining"]
        6 RETURN                           R1 1

PROTO_20:
        0 LOADK                            R1 K0 ["object"]
        1 RETURN                           R1 1

PROTO_21:
        0 JUMPIFEQKNIL                     R1 ; [+2]
        2 JUMP                             ; [+1]
        3 LOADB                            R1 0
        4 GETUPVAL                         R2 0
        5 LOADK                            R3 K0 ["string"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+4]
        9 GETIMPORT                        R2 K2 [error]
       11 LOADK                            R3 K3 ["Expected is not a String"]
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K4 ["new"]
       16 MOVE                             R3 R0
       17 MOVE                             R4 R1
       18 CALL                             R2 2 1
       19 GETUPVAL                         R5 2
       20 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       22 MOVE                             R4 R2
       23 GETIMPORT                        R3 K6 [setmetatable]
       25 CALL                             R3 2 0
       26 RETURN                           R2 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["string"]
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+7]
        5 GETTABLEKS                       R4 R0 K1 ["sample"]
        7 LOADN                            R5 1
        8 LOADB                            R6 1
        9 NAMECALL                         R2 R1 K2 ["find"]
       11 CALL                             R2 4 1
       12 GETTABLEKS                       R3 R0 K3 ["inverse"]
       14 JUMPIFNOT                        R3 ; [+2]
       15 NOT                              R3 R2
       16 RETURN                           R3 1
       17 NOT                              R4 R2
       18 NOT                              R3 R4
       19 RETURN                           R3 1

PROTO_23:
        0 GETTABLEKS                       R1 R0 K0 ["inverse"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R1 K1 ["StringNotContaining"]
        4 RETURN                           R1 1
        5 LOADK                            R1 K2 ["StringContaining"]
        6 RETURN                           R1 1

PROTO_24:
        0 LOADK                            R1 K0 ["string"]
        1 RETURN                           R1 1

PROTO_25:
        0 JUMPIFEQKNIL                     R1 ; [+2]
        2 JUMP                             ; [+1]
        3 LOADB                            R1 0
        4 GETUPVAL                         R2 0
        5 LOADK                            R3 K0 ["string"]
        6 MOVE                             R4 R0
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+9]
        9 GETUPVAL                         R2 0
       10 LOADK                            R3 K1 ["regexp"]
       11 MOVE                             R4 R0
       12 CALL                             R2 2 1
       13 JUMPIF                           R2 ; [+4]
       14 GETIMPORT                        R2 K3 [error]
       16 LOADK                            R3 K4 ["Expected is not a String"]
       17 CALL                             R2 1 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K5 ["new"]
       21 MOVE                             R3 R0
       22 MOVE                             R4 R1
       23 CALL                             R2 2 1
       24 GETUPVAL                         R5 2
       25 FASTCALL2                        SETMETATABLE R2 R5 ; [+4]
       27 MOVE                             R4 R2
       28 GETIMPORT                        R3 K7 [setmetatable]
       30 CALL                             R3 2 0
       31 RETURN                           R2 1

PROTO_26:
        0 LOADB                            R2 0
        1 GETUPVAL                         R3 0
        2 LOADK                            R4 K0 ["string"]
        3 MOVE                             R5 R1
        4 CALL                             R3 2 1
        5 JUMPIFNOT                        R3 ; [+29]
        6 GETUPVAL                         R3 0
        7 LOADK                            R4 K0 ["string"]
        8 GETTABLEKS                       R5 R0 K1 ["sample"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+16]
       12 GETIMPORT                        R3 K3 [string.gsub]
       14 GETTABLEKS                       R4 R0 K1 ["sample"]
       16 LOADK                            R5 K4 ["\x%["]
       17 LOADK                            R6 K5 ["\x%%["]
       18 CALL                             R3 3 1
       19 SETTABLEKS                       R3 R0 K1 ["sample"]
       21 GETTABLEKS                       R5 R0 K1 ["sample"]
       23 NAMECALL                         R3 R1 K6 ["find"]
       25 CALL                             R3 2 1
       26 MOVE                             R2 R3
       27 JUMP                             ; [+7]
       28 GETTABLEKS                       R3 R0 K1 ["sample"]
       30 MOVE                             R5 R1
       31 NAMECALL                         R3 R3 K7 ["test"]
       33 CALL                             R3 2 1
       34 MOVE                             R2 R3
       35 GETTABLEKS                       R3 R0 K8 ["inverse"]
       37 JUMPIFNOT                        R3 ; [+2]
       38 NOT                              R3 R2
       39 RETURN                           R3 1
       40 NOT                              R4 R2
       41 NOT                              R3 R4
       42 RETURN                           R3 1

PROTO_27:
        0 GETTABLEKS                       R1 R0 K0 ["inverse"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R1 K1 ["StringNotMatching"]
        4 RETURN                           R1 1
        5 LOADK                            R1 K2 ["StringMatching"]
        6 RETURN                           R1 1

PROTO_28:
        0 LOADK                            R1 K0 ["string"]
        1 RETURN                           R1 1

PROTO_29:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_30:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_31:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_33:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_34:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_35:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Object"]
       16 GETTABLEKS                       R5 R2 K8 ["Symbol"]
       18 GETTABLEKS                       R6 R2 K9 ["instanceof"]
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R1 K10 ["RegExp"]
       24 CALL                             R7 1 1
       25 GETIMPORT                        R8 K4 [require]
       27 GETTABLEKS                       R9 R1 K11 ["JestGetType"]
       29 CALL                             R8 1 1
       30 GETTABLEKS                       R8 R8 K12 ["getType"]
       32 NEWTABLE                         R9 0 0
       34 GETIMPORT                        R10 K4 [require]
       36 GETTABLEKS                       R11 R0 K13 ["jasmineUtils"]
       38 CALL                             R10 1 1
       39 GETTABLEKS                       R11 R10 K14 ["equals"]
       41 GETTABLEKS                       R12 R10 K15 ["hasProperty"]
       43 GETTABLEKS                       R13 R10 K16 ["isA"]
       45 GETTABLEKS                       R14 R10 K17 ["isUndefined"]
       47 GETIMPORT                        R15 K4 [require]
       49 GETTABLEKS                       R16 R0 K18 ["jestMatchersObject_extracted"]
       51 CALL                             R15 1 1
       52 GETTABLEKS                       R15 R15 K19 ["getState"]
       54 GETIMPORT                        R16 K4 [require]
       56 GETTABLEKS                       R17 R0 K20 ["types"]
       58 CALL                             R16 1 1
       59 GETIMPORT                        R17 K4 [require]
       61 GETTABLEKS                       R18 R0 K21 ["utils"]
       63 CALL                             R17 1 1
       64 GETTABLEKS                       R18 R17 K22 ["iterableEquality"]
       66 GETTABLEKS                       R19 R17 K23 ["subsetEquality"]
       68 GETTABLEKS                       R20 R4 K24 ["freeze"]
       70 GETTABLEKS                       R21 R4 K25 ["assign"]
       72 NEWTABLE                         R22 0 0
       74 MOVE                             R23 R9
       75 DUPTABLE                         R24 K26 [{"iterableEquality", "subsetEquality"}]
       76 SETTABLEKS                       R18 R24 K22 ["iterableEquality"]
       78 SETTABLEKS                       R19 R24 K23 ["subsetEquality"]
       80 CALL                             R21 3 -1
       81 CALL                             R20 -1 1
       82 NEWTABLE                         R21 4 0
       84 SETTABLEKS                       R21 R21 K27 ["__index"]
       86 DUPCLOSURE                       R22 K28 [PROTO_0]
       87 CAPTURE                          VAL R5
       88 CAPTURE                          VAL R21
       89 SETTABLEKS                       R22 R21 K29 ["new"]
       91 DUPCLOSURE                       R22 K30 [PROTO_1]
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R20
       96 SETTABLEKS                       R22 R21 K31 ["getMatcherContext"]
       98 NEWTABLE                         R22 8 0
      100 SETTABLEKS                       R22 R22 K27 ["__index"]
      102 FASTCALL2                        SETMETATABLE R22 R21 ; [+5]
      104 MOVE                             R24 R22
      105 MOVE                             R25 R21
      106 GETIMPORT                        R23 K33 [setmetatable]
      108 CALL                             R23 2 0
      109 DUPCLOSURE                       R23 K34 [PROTO_2]
      110 CAPTURE                          VAL R21
      111 CAPTURE                          VAL R22
      112 SETTABLEKS                       R23 R22 K29 ["new"]
      114 DUPCLOSURE                       R23 K35 [PROTO_3]
      115 CAPTURE                          VAL R8
      116 CAPTURE                          VAL R6
      117 SETTABLEKS                       R23 R22 K36 ["asymmetricMatch"]
      119 DUPCLOSURE                       R23 K37 [PROTO_4]
      120 SETTABLEKS                       R23 R22 K38 ["toString"]
      122 DUPCLOSURE                       R23 K39 [PROTO_5]
      123 SETTABLEKS                       R23 R22 K40 ["getExpectedType"]
      125 DUPCLOSURE                       R23 K41 [PROTO_6]
      126 SETTABLEKS                       R23 R22 K42 ["toAsymmetricMatcher"]
      128 NEWTABLE                         R23 8 0
      130 SETTABLEKS                       R23 R23 K27 ["__index"]
      132 FASTCALL2                        SETMETATABLE R23 R21 ; [+5]
      134 MOVE                             R25 R23
      135 MOVE                             R26 R21
      136 GETIMPORT                        R24 K33 [setmetatable]
      138 CALL                             R24 2 0
      139 DUPCLOSURE                       R24 K43 [PROTO_7]
      140 CAPTURE                          VAL R21
      141 CAPTURE                          VAL R23
      142 SETTABLEKS                       R24 R23 K29 ["new"]
      144 DUPCLOSURE                       R24 K44 [PROTO_8]
      145 CAPTURE                          VAL R14
      146 SETTABLEKS                       R24 R23 K36 ["asymmetricMatch"]
      148 DUPCLOSURE                       R24 K45 [PROTO_9]
      149 SETTABLEKS                       R24 R23 K38 ["toString"]
      151 DUPCLOSURE                       R24 K46 [PROTO_10]
      152 SETTABLEKS                       R24 R23 K42 ["toAsymmetricMatcher"]
      154 NEWTABLE                         R24 8 0
      156 SETTABLEKS                       R24 R24 K27 ["__index"]
      158 FASTCALL2                        SETMETATABLE R24 R21 ; [+5]
      160 MOVE                             R26 R24
      161 MOVE                             R27 R21
      162 GETIMPORT                        R25 K33 [setmetatable]
      164 CALL                             R25 2 0
      165 DUPCLOSURE                       R25 K47 [PROTO_11]
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R24
      168 SETTABLEKS                       R25 R24 K29 ["new"]
      170 DUPCLOSURE                       R25 K48 [PROTO_14]
      171 CAPTURE                          VAL R3
      172 CAPTURE                          VAL R11
      173 SETTABLEKS                       R25 R24 K36 ["asymmetricMatch"]
      175 DUPCLOSURE                       R25 K49 [PROTO_15]
      176 SETTABLEKS                       R25 R24 K38 ["toString"]
      178 DUPCLOSURE                       R25 K50 [PROTO_16]
      179 SETTABLEKS                       R25 R24 K40 ["getExpectedType"]
      181 NEWTABLE                         R25 8 0
      183 SETTABLEKS                       R25 R25 K27 ["__index"]
      185 FASTCALL2                        SETMETATABLE R25 R21 ; [+5]
      187 MOVE                             R27 R25
      188 MOVE                             R28 R21
      189 GETIMPORT                        R26 K33 [setmetatable]
      191 CALL                             R26 2 0
      192 DUPCLOSURE                       R26 K51 [PROTO_17]
      193 CAPTURE                          VAL R21
      194 CAPTURE                          VAL R25
      195 SETTABLEKS                       R26 R25 K29 ["new"]
      197 DUPCLOSURE                       R26 K52 [PROTO_18]
      198 CAPTURE                          VAL R12
      199 CAPTURE                          VAL R11
      200 SETTABLEKS                       R26 R25 K36 ["asymmetricMatch"]
      202 DUPCLOSURE                       R26 K53 [PROTO_19]
      203 SETTABLEKS                       R26 R25 K38 ["toString"]
      205 DUPCLOSURE                       R26 K54 [PROTO_20]
      206 SETTABLEKS                       R26 R25 K40 ["getExpectedType"]
      208 NEWTABLE                         R26 8 0
      210 SETTABLEKS                       R26 R26 K27 ["__index"]
      212 FASTCALL2                        SETMETATABLE R26 R21 ; [+5]
      214 MOVE                             R28 R26
      215 MOVE                             R29 R21
      216 GETIMPORT                        R27 K33 [setmetatable]
      218 CALL                             R27 2 0
      219 DUPCLOSURE                       R27 K55 [PROTO_21]
      220 CAPTURE                          VAL R13
      221 CAPTURE                          VAL R21
      222 CAPTURE                          VAL R26
      223 SETTABLEKS                       R27 R26 K29 ["new"]
      225 DUPCLOSURE                       R27 K56 [PROTO_22]
      226 CAPTURE                          VAL R13
      227 SETTABLEKS                       R27 R26 K36 ["asymmetricMatch"]
      229 DUPCLOSURE                       R27 K57 [PROTO_23]
      230 SETTABLEKS                       R27 R26 K38 ["toString"]
      232 DUPCLOSURE                       R27 K58 [PROTO_24]
      233 SETTABLEKS                       R27 R26 K40 ["getExpectedType"]
      235 NEWTABLE                         R27 8 0
      237 SETTABLEKS                       R27 R27 K27 ["__index"]
      239 FASTCALL2                        SETMETATABLE R27 R21 ; [+5]
      241 MOVE                             R29 R27
      242 MOVE                             R30 R21
      243 GETIMPORT                        R28 K33 [setmetatable]
      245 CALL                             R28 2 0
      246 DUPCLOSURE                       R28 K59 [PROTO_25]
      247 CAPTURE                          VAL R13
      248 CAPTURE                          VAL R21
      249 CAPTURE                          VAL R27
      250 SETTABLEKS                       R28 R27 K29 ["new"]
      252 DUPCLOSURE                       R28 K60 [PROTO_26]
      253 CAPTURE                          VAL R13
      254 SETTABLEKS                       R28 R27 K36 ["asymmetricMatch"]
      256 DUPCLOSURE                       R28 K61 [PROTO_27]
      257 SETTABLEKS                       R28 R27 K38 ["toString"]
      259 DUPCLOSURE                       R28 K62 [PROTO_28]
      260 SETTABLEKS                       R28 R27 K40 ["getExpectedType"]
      262 DUPTABLE                         R28 K74 [{"AsymmetricMatcher", "any", "anything", "arrayContaining", "arrayNotContaining", "objectContaining", "objectNotContaining", "stringContaining", "stringNotContaining", "stringMatching", "stringNotMatching"}]
      263 SETTABLEKS                       R21 R28 K63 ["AsymmetricMatcher"]
      265 DUPCLOSURE                       R29 K75 [PROTO_29]
      266 CAPTURE                          VAL R22
      267 SETTABLEKS                       R29 R28 K64 ["any"]
      269 DUPCLOSURE                       R29 K76 [PROTO_30]
      270 CAPTURE                          VAL R23
      271 SETTABLEKS                       R29 R28 K65 ["anything"]
      273 DUPCLOSURE                       R29 K77 [PROTO_31]
      274 CAPTURE                          VAL R24
      275 SETTABLEKS                       R29 R28 K66 ["arrayContaining"]
      277 DUPCLOSURE                       R29 K78 [PROTO_32]
      278 CAPTURE                          VAL R24
      279 SETTABLEKS                       R29 R28 K67 ["arrayNotContaining"]
      281 DUPCLOSURE                       R29 K79 [PROTO_33]
      282 CAPTURE                          VAL R25
      283 SETTABLEKS                       R29 R28 K68 ["objectContaining"]
      285 DUPCLOSURE                       R29 K80 [PROTO_34]
      286 CAPTURE                          VAL R25
      287 SETTABLEKS                       R29 R28 K69 ["objectNotContaining"]
      289 DUPCLOSURE                       R29 K81 [PROTO_35]
      290 CAPTURE                          VAL R26
      291 SETTABLEKS                       R29 R28 K70 ["stringContaining"]
      293 DUPCLOSURE                       R29 K82 [PROTO_36]
      294 CAPTURE                          VAL R26
      295 SETTABLEKS                       R29 R28 K71 ["stringNotContaining"]
      297 DUPCLOSURE                       R29 K83 [PROTO_37]
      298 CAPTURE                          VAL R27
      299 SETTABLEKS                       R29 R28 K72 ["stringMatching"]
      301 DUPCLOSURE                       R29 K84 [PROTO_38]
      302 CAPTURE                          VAL R27
      303 SETTABLEKS                       R29 R28 K73 ["stringNotMatching"]
      305 RETURN                           R28 1
