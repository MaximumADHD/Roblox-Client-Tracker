PROTO_0:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 MOVE                             R2 R1
        3 JUMP                             ; [+1]
        4 LOADB                            R2 0
        5 NEWTABLE                         R3 4 0
        7 SETTABLEKS                       R0 R3 K0 ["sample"]
        9 JUMPIFNOTEQKNIL                  R2 ; [+3]
       11 LOADB                            R4 0
       12 JUMP                             ; [+1]
       13 MOVE                             R4 R2
       14 SETTABLEKS                       R4 R3 K1 ["inverse"]
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R4 R4 K2 ["for_"]
       19 LOADK                            R5 K3 ["jest.asymmetricMatcher"]
       20 CALL                             R4 1 1
       21 SETTABLEKS                       R4 R3 K4 ["$$typeof"]
       23 GETUPVAL                         R6 1
       24 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       26 MOVE                             R5 R3
       27 GETIMPORT                        R4 K6 [setmetatable]
       29 CALL                             R4 2 0
       30 RETURN                           R3 1

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

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_13:
        0 LOADK                            R1 K0 ["Nothing"]
        1 RETURN                           R1 1

PROTO_14:
        0 LOADK                            R1 K0 ["nil"]
        1 RETURN                           R1 1

PROTO_15:
        0 LOADK                            R1 K0 ["Nothing"]
        1 RETURN                           R1 1

PROTO_16:
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

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["some"]
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_19:
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

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["inverse"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R1 K1 ["ArrayNotContaining"]
        4 RETURN                           R1 1
        5 LOADK                            R1 K2 ["ArrayContaining"]
        6 RETURN                           R1 1

PROTO_21:
        0 LOADK                            R1 K0 ["array"]
        1 RETURN                           R1 1

PROTO_22:
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

PROTO_23:
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

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["inverse"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R1 K1 ["ObjectNotContaining"]
        4 RETURN                           R1 1
        5 LOADK                            R1 K2 ["ObjectContaining"]
        6 RETURN                           R1 1

PROTO_25:
        0 LOADK                            R1 K0 ["object"]
        1 RETURN                           R1 1

PROTO_26:
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

PROTO_27:
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

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["inverse"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R1 K1 ["StringNotContaining"]
        4 RETURN                           R1 1
        5 LOADK                            R1 K2 ["StringContaining"]
        6 RETURN                           R1 1

PROTO_29:
        0 LOADK                            R1 K0 ["string"]
        1 RETURN                           R1 1

PROTO_30:
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

PROTO_31:
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

PROTO_32:
        0 GETTABLEKS                       R1 R0 K0 ["inverse"]
        2 JUMPIFNOT                        R1 ; [+2]
        3 LOADK                            R1 K1 ["StringNotMatching"]
        4 RETURN                           R1 1
        5 LOADK                            R1 K2 ["StringMatching"]
        6 RETURN                           R1 1

PROTO_33:
        0 LOADK                            R1 K0 ["string"]
        1 RETURN                           R1 1

PROTO_34:
        0 JUMPIFEQKNIL                     R1 ; [+3]
        2 MOVE                             R3 R1
        3 JUMP                             ; [+1]
        4 LOADN                            R3 2
        5 JUMPIFEQKNIL                     R2 ; [+3]
        7 MOVE                             R4 R2
        8 JUMP                             ; [+1]
        9 LOADB                            R4 0
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["toJSBoolean"]
       13 GETUPVAL                         R6 1
       14 LOADK                            R7 K1 ["number"]
       15 MOVE                             R8 R0
       16 CALL                             R6 2 -1
       17 CALL                             R5 -1 1
       18 JUMPIF                           R5 ; [+8]
       19 GETIMPORT                        R5 K3 [error]
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K4 ["new"]
       24 LOADK                            R7 K5 ["Expected is not a Number"]
       25 CALL                             R6 1 -1
       26 CALL                             R5 -1 0
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K0 ["toJSBoolean"]
       30 GETUPVAL                         R6 1
       31 LOADK                            R7 K1 ["number"]
       32 MOVE                             R8 R3
       33 CALL                             R6 2 -1
       34 CALL                             R5 -1 1
       35 JUMPIF                           R5 ; [+8]
       36 GETIMPORT                        R5 K3 [error]
       38 GETUPVAL                         R6 2
       39 GETTABLEKS                       R6 R6 K4 ["new"]
       41 LOADK                            R7 K6 ["Precision is not a Number"]
       42 CALL                             R6 1 -1
       43 CALL                             R5 -1 0
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K4 ["new"]
       47 MOVE                             R6 R0
       48 CALL                             R5 1 1
       49 GETUPVAL                         R8 4
       50 FASTCALL2                        SETMETATABLE R5 R8 ; [+4]
       52 MOVE                             R7 R5
       53 GETIMPORT                        R6 K8 [setmetatable]
       55 CALL                             R6 2 0
       56 SETTABLEKS                       R4 R5 K9 ["inverse"]
       58 SETTABLEKS                       R3 R5 K10 ["precision"]
       60 RETURN                           R5 1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toJSBoolean"]
        3 GETUPVAL                         R3 1
        4 LOADK                            R4 K1 ["number"]
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 1
        8 JUMPIF                           R2 ; [+2]
        9 LOADB                            R2 0
       10 RETURN                           R2 1
       11 LOADB                            R2 0
       12 JUMPIFNOTEQKN                    R1 K2 [∞] ; [+7]
       14 GETTABLEKS                       R3 R0 K3 ["sample"]
       16 JUMPIFNOTEQKN                    R3 K2 [∞] ; [+3]
       18 LOADB                            R2 1
       19 JUMP                             ; [+29]
       20 JUMPIFNOTEQKN                    R1 K4 [-∞] ; [+7]
       22 GETTABLEKS                       R3 R0 K3 ["sample"]
       24 JUMPIFNOTEQKN                    R3 K4 [-∞] ; [+3]
       26 LOADB                            R2 1
       27 JUMP                             ; [+21]
       28 GETTABLEKS                       R5 R0 K3 ["sample"]
       30 SUB                              R4 R5 R1
       31 FASTCALL1                        MATH_ABS R4 ; [+2]
       32 GETIMPORT                        R3 K7 [math.abs]
       34 CALL                             R3 1 1
       35 LOADN                            R6 10
       36 GETTABLEKS                       R8 R0 K9 ["precision"]
       38 MINUS                            R7 R8
       39 FASTCALL2                        MATH_POW R6 R7 ; [+3]
       41 GETIMPORT                        R5 K11 [math.pow]
       43 CALL                             R5 2 1
       44 DIVK                             R4 R5 K8 [2]
       45 JUMPIFLT                         R3 R4 ; [+2]
       47 LOADB                            R2 0 +1
       48 LOADB                            R2 1
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
       52 GETTABLEKS                       R5 R0 K12 ["inverse"]
       54 CALL                             R4 1 1
       55 JUMPIFNOT                        R4 ; [+7]
       56 GETUPVAL                         R4 0
       57 GETTABLEKS                       R4 R4 K0 ["toJSBoolean"]
       59 MOVE                             R5 R2
       60 CALL                             R4 1 1
       61 NOT                              R3 R4
       62 RETURN                           R3 1
       63 MOVE                             R3 R2
       64 RETURN                           R3 1

PROTO_36:
        0 LOADK                            R1 K0 ["Number%sCloseTo"]
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K1 ["toJSBoolean"]
        4 GETTABLEKS                       R5 R0 K2 ["inverse"]
        6 CALL                             R4 1 1
        7 JUMPIFNOT                        R4 ; [+2]
        8 LOADK                            R3 K3 ["Not"]
        9 JUMP                             ; [+1]
       10 LOADK                            R3 K4 [""]
       11 NAMECALL                         R1 R1 K5 ["format"]
       13 CALL                             R1 2 -1
       14 RETURN                           R1 -1

PROTO_37:
        0 LOADK                            R1 K0 ["number"]
        1 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["join"]
        3 NEWTABLE                         R2 0 3
        5 NAMECALL                         R3 R0 K1 ["toString"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R4 R0 K2 ["sample"]
       10 LOADK                            R5 K3 ["(%s)"]
       11 GETUPVAL                         R8 1
       12 LOADK                            R9 K4 ["digit"]
       13 GETTABLEKS                       R10 R0 K5 ["precision"]
       15 CALL                             R8 2 -1
       16 FASTCALL                         TOSTRING ; [+2]
       17 GETIMPORT                        R7 K7 [tostring]
       19 CALL                             R7 -1 1
       20 NAMECALL                         R5 R5 K8 ["format"]
       22 CALL                             R5 2 -1
       23 SETLIST                          R2 R3 -1 [1]
       25 LOADK                            R3 K9 [" "]
       26 CALL                             R1 2 -1
       27 RETURN                           R1 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 LOADNIL                          R2
        4 MOVE                             R3 R0
        5 CALL                             R1 2 1
        6 GETUPVAL                         R4 1
        7 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
        9 MOVE                             R3 R1
       10 GETIMPORT                        R2 K2 [setmetatable]
       12 CALL                             R2 2 0
       13 RETURN                           R1 1

PROTO_40:
        0 LOADNIL                          R2
        1 FASTCALL1                        TYPEOF R1 ; [+3]
        2 MOVE                             R4 R1
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["function"] ; [+3]
        8 LOADB                            R2 1
        9 JUMP                             ; [+40]
       10 FASTCALL1                        TYPEOF R1 ; [+3]
       11 MOVE                             R4 R1
       12 GETIMPORT                        R3 K1 [typeof]
       14 CALL                             R3 1 1
       15 JUMPIFEQKS                       R3 K3 ["table"] ; [+8]
       17 FASTCALL1                        TYPEOF R1 ; [+3]
       18 MOVE                             R4 R1
       19 GETIMPORT                        R3 K1 [typeof]
       21 CALL                             R3 1 1
       22 JUMPIFNOTEQKS                    R3 K4 ["userdata"] ; [+26]
       24 FASTCALL1                        GETMETATABLE R1 ; [+3]
       25 MOVE                             R4 R1
       26 GETIMPORT                        R3 K6 [getmetatable]
       28 CALL                             R3 1 1
       29 LOADB                            R4 0
       30 FASTCALL1                        TYPEOF R3 ; [+3]
       31 MOVE                             R6 R3
       32 GETIMPORT                        R5 K1 [typeof]
       34 CALL                             R5 1 1
       35 JUMPIFNOTEQKS                    R5 K3 ["table"] ; [+11]
       37 GETTABLEKS                       R6 R3 K7 ["__call"]
       39 FASTCALL1                        TYPEOF R6 ; [+2]
       40 GETIMPORT                        R5 K1 [typeof]
       42 CALL                             R5 1 1
       43 JUMPIFEQKS                       R5 K2 ["function"] ; [+2]
       45 LOADB                            R4 0 +1
       46 LOADB                            R4 1
       47 MOVE                             R2 R4
       48 JUMP                             ; [+1]
       49 LOADB                            R2 0
       50 GETTABLEKS                       R4 R0 K8 ["inverse"]
       52 JUMPIFNOT                        R4 ; [+2]
       53 NOT                              R3 R2
       54 RETURN                           R3 1
       55 MOVE                             R3 R2
       56 RETURN                           R3 1

PROTO_41:
        0 GETTABLEKS                       R4 R0 K0 ["inverse"]
        2 JUMPIFNOT                        R4 ; [+2]
        3 LOADK                            R2 K1 ["Not "]
        4 JUMP                             ; [+1]
        5 LOADK                            R2 K2 [""]
        6 LOADK                            R3 K3 ["Callable"]
        7 CONCAT                           R1 R2 R3
        8 RETURN                           R1 1

PROTO_42:
        0 LOADK                            R1 K0 ["function"]
        1 RETURN                           R1 1

PROTO_43:
        0 NAMECALL                         R1 R0 K0 ["toString"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_55:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_56:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 LOADB                            R5 1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_57:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_58:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

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
       16 GETTABLEKS                       R5 R2 K8 ["Error"]
       18 GETTABLEKS                       R6 R2 K9 ["Object"]
       20 GETIMPORT                        R7 K4 [require]
       22 GETTABLEKS                       R8 R1 K10 ["Symbol"]
       24 CALL                             R7 1 1
       25 GETTABLEKS                       R8 R2 K11 ["instanceof"]
       27 GETIMPORT                        R9 K4 [require]
       29 GETTABLEKS                       R10 R1 K12 ["RegExp"]
       31 CALL                             R9 1 1
       32 GETIMPORT                        R10 K4 [require]
       34 GETTABLEKS                       R11 R1 K13 ["JestGetType"]
       36 CALL                             R10 1 1
       37 GETTABLEKS                       R10 R10 K14 ["getType"]
       39 NEWTABLE                         R11 0 0
       41 GETIMPORT                        R12 K4 [require]
       43 GETTABLEKS                       R13 R1 K15 ["JestUtil"]
       45 CALL                             R12 1 1
       46 GETTABLEKS                       R12 R12 K16 ["pluralize"]
       48 GETIMPORT                        R13 K4 [require]
       50 GETTABLEKS                       R14 R0 K17 ["jasmineUtils"]
       52 CALL                             R13 1 1
       53 GETTABLEKS                       R14 R13 K18 ["equals"]
       55 GETTABLEKS                       R15 R13 K19 ["hasProperty"]
       57 GETTABLEKS                       R16 R13 K20 ["isA"]
       59 GETTABLEKS                       R17 R13 K21 ["isUndefined"]
       61 GETIMPORT                        R18 K4 [require]
       63 GETTABLEKS                       R19 R0 K22 ["jestMatchersObject_extracted"]
       65 CALL                             R18 1 1
       66 GETTABLEKS                       R18 R18 K23 ["getState"]
       68 GETIMPORT                        R19 K4 [require]
       70 GETTABLEKS                       R20 R0 K24 ["types"]
       72 CALL                             R19 1 1
       73 GETIMPORT                        R20 K4 [require]
       75 GETTABLEKS                       R21 R0 K25 ["utils"]
       77 CALL                             R20 1 1
       78 GETTABLEKS                       R21 R20 K26 ["iterableEquality"]
       80 GETTABLEKS                       R22 R20 K27 ["subsetEquality"]
       82 GETTABLEKS                       R23 R6 K28 ["freeze"]
       84 GETTABLEKS                       R24 R6 K29 ["assign"]
       86 NEWTABLE                         R25 0 0
       88 MOVE                             R26 R11
       89 DUPTABLE                         R27 K30 [{"iterableEquality", "subsetEquality"}]
       90 SETTABLEKS                       R21 R27 K26 ["iterableEquality"]
       92 SETTABLEKS                       R22 R27 K27 ["subsetEquality"]
       94 CALL                             R24 3 -1
       95 CALL                             R23 -1 1
       96 NEWTABLE                         R24 0 0
       98 SETTABLEKS                       R24 R24 K31 ["__index"]
      100 DUPCLOSURE                       R25 K32 [PROTO_0]
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R24
      103 SETTABLEKS                       R25 R24 K33 ["new"]
      105 DUPCLOSURE                       R25 K34 [PROTO_1]
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R18
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R23
      110 SETTABLEKS                       R25 R24 K35 ["getMatcherContext"]
      112 NEWTABLE                         R25 8 0
      114 SETTABLEKS                       R25 R25 K31 ["__index"]
      116 FASTCALL2                        SETMETATABLE R25 R24 ; [+5]
      118 MOVE                             R27 R25
      119 MOVE                             R28 R24
      120 GETIMPORT                        R26 K37 [setmetatable]
      122 CALL                             R26 2 0
      123 DUPCLOSURE                       R26 K38 [PROTO_2]
      124 CAPTURE                          VAL R24
      125 CAPTURE                          VAL R25
      126 SETTABLEKS                       R26 R25 K33 ["new"]
      128 DUPCLOSURE                       R26 K39 [PROTO_3]
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R8
      131 SETTABLEKS                       R26 R25 K40 ["asymmetricMatch"]
      133 DUPCLOSURE                       R26 K41 [PROTO_4]
      134 SETTABLEKS                       R26 R25 K42 ["toString"]
      136 DUPCLOSURE                       R26 K43 [PROTO_5]
      137 SETTABLEKS                       R26 R25 K44 ["getExpectedType"]
      139 DUPCLOSURE                       R26 K45 [PROTO_6]
      140 SETTABLEKS                       R26 R25 K46 ["toAsymmetricMatcher"]
      142 NEWTABLE                         R26 8 0
      144 SETTABLEKS                       R26 R26 K31 ["__index"]
      146 FASTCALL2                        SETMETATABLE R26 R24 ; [+5]
      148 MOVE                             R28 R26
      149 MOVE                             R29 R24
      150 GETIMPORT                        R27 K37 [setmetatable]
      152 CALL                             R27 2 0
      153 DUPCLOSURE                       R27 K47 [PROTO_7]
      154 CAPTURE                          VAL R24
      155 CAPTURE                          VAL R26
      156 SETTABLEKS                       R27 R26 K33 ["new"]
      158 DUPCLOSURE                       R27 K48 [PROTO_8]
      159 CAPTURE                          VAL R17
      160 SETTABLEKS                       R27 R26 K40 ["asymmetricMatch"]
      162 DUPCLOSURE                       R27 K49 [PROTO_9]
      163 SETTABLEKS                       R27 R26 K42 ["toString"]
      165 DUPCLOSURE                       R27 K50 [PROTO_10]
      166 SETTABLEKS                       R27 R26 K46 ["toAsymmetricMatcher"]
      168 NEWTABLE                         R27 8 0
      170 SETTABLEKS                       R27 R27 K31 ["__index"]
      172 FASTCALL2                        SETMETATABLE R27 R24 ; [+5]
      174 MOVE                             R29 R27
      175 MOVE                             R30 R24
      176 GETIMPORT                        R28 K37 [setmetatable]
      178 CALL                             R28 2 0
      179 DUPCLOSURE                       R28 K51 [PROTO_11]
      180 CAPTURE                          VAL R24
      181 CAPTURE                          VAL R27
      182 SETTABLEKS                       R28 R27 K33 ["new"]
      184 DUPCLOSURE                       R28 K52 [PROTO_12]
      185 CAPTURE                          VAL R17
      186 SETTABLEKS                       R28 R27 K40 ["asymmetricMatch"]
      188 DUPCLOSURE                       R28 K53 [PROTO_13]
      189 SETTABLEKS                       R28 R27 K42 ["toString"]
      191 DUPCLOSURE                       R28 K54 [PROTO_14]
      192 SETTABLEKS                       R28 R27 K44 ["getExpectedType"]
      194 DUPCLOSURE                       R28 K55 [PROTO_15]
      195 SETTABLEKS                       R28 R27 K46 ["toAsymmetricMatcher"]
      197 NEWTABLE                         R28 8 0
      199 SETTABLEKS                       R28 R28 K31 ["__index"]
      201 FASTCALL2                        SETMETATABLE R28 R24 ; [+5]
      203 MOVE                             R30 R28
      204 MOVE                             R31 R24
      205 GETIMPORT                        R29 K37 [setmetatable]
      207 CALL                             R29 2 0
      208 DUPCLOSURE                       R29 K56 [PROTO_16]
      209 CAPTURE                          VAL R24
      210 CAPTURE                          VAL R28
      211 SETTABLEKS                       R29 R28 K33 ["new"]
      213 DUPCLOSURE                       R29 K57 [PROTO_19]
      214 CAPTURE                          VAL R3
      215 CAPTURE                          VAL R14
      216 SETTABLEKS                       R29 R28 K40 ["asymmetricMatch"]
      218 DUPCLOSURE                       R29 K58 [PROTO_20]
      219 SETTABLEKS                       R29 R28 K42 ["toString"]
      221 DUPCLOSURE                       R29 K59 [PROTO_21]
      222 SETTABLEKS                       R29 R28 K44 ["getExpectedType"]
      224 NEWTABLE                         R29 8 0
      226 SETTABLEKS                       R29 R29 K31 ["__index"]
      228 FASTCALL2                        SETMETATABLE R29 R24 ; [+5]
      230 MOVE                             R31 R29
      231 MOVE                             R32 R24
      232 GETIMPORT                        R30 K37 [setmetatable]
      234 CALL                             R30 2 0
      235 DUPCLOSURE                       R30 K60 [PROTO_22]
      236 CAPTURE                          VAL R24
      237 CAPTURE                          VAL R29
      238 SETTABLEKS                       R30 R29 K33 ["new"]
      240 DUPCLOSURE                       R30 K61 [PROTO_23]
      241 CAPTURE                          VAL R15
      242 CAPTURE                          VAL R14
      243 SETTABLEKS                       R30 R29 K40 ["asymmetricMatch"]
      245 DUPCLOSURE                       R30 K62 [PROTO_24]
      246 SETTABLEKS                       R30 R29 K42 ["toString"]
      248 DUPCLOSURE                       R30 K63 [PROTO_25]
      249 SETTABLEKS                       R30 R29 K44 ["getExpectedType"]
      251 NEWTABLE                         R30 8 0
      253 SETTABLEKS                       R30 R30 K31 ["__index"]
      255 FASTCALL2                        SETMETATABLE R30 R24 ; [+5]
      257 MOVE                             R32 R30
      258 MOVE                             R33 R24
      259 GETIMPORT                        R31 K37 [setmetatable]
      261 CALL                             R31 2 0
      262 DUPCLOSURE                       R31 K64 [PROTO_26]
      263 CAPTURE                          VAL R16
      264 CAPTURE                          VAL R24
      265 CAPTURE                          VAL R30
      266 SETTABLEKS                       R31 R30 K33 ["new"]
      268 DUPCLOSURE                       R31 K65 [PROTO_27]
      269 CAPTURE                          VAL R16
      270 SETTABLEKS                       R31 R30 K40 ["asymmetricMatch"]
      272 DUPCLOSURE                       R31 K66 [PROTO_28]
      273 SETTABLEKS                       R31 R30 K42 ["toString"]
      275 DUPCLOSURE                       R31 K67 [PROTO_29]
      276 SETTABLEKS                       R31 R30 K44 ["getExpectedType"]
      278 NEWTABLE                         R31 8 0
      280 SETTABLEKS                       R31 R31 K31 ["__index"]
      282 FASTCALL2                        SETMETATABLE R31 R24 ; [+5]
      284 MOVE                             R33 R31
      285 MOVE                             R34 R24
      286 GETIMPORT                        R32 K37 [setmetatable]
      288 CALL                             R32 2 0
      289 DUPCLOSURE                       R32 K68 [PROTO_30]
      290 CAPTURE                          VAL R16
      291 CAPTURE                          VAL R24
      292 CAPTURE                          VAL R31
      293 SETTABLEKS                       R32 R31 K33 ["new"]
      295 DUPCLOSURE                       R32 K69 [PROTO_31]
      296 CAPTURE                          VAL R16
      297 SETTABLEKS                       R32 R31 K40 ["asymmetricMatch"]
      299 DUPCLOSURE                       R32 K70 [PROTO_32]
      300 SETTABLEKS                       R32 R31 K42 ["toString"]
      302 DUPCLOSURE                       R32 K71 [PROTO_33]
      303 SETTABLEKS                       R32 R31 K44 ["getExpectedType"]
      305 NEWTABLE                         R33 0 0
      307 DUPTABLE                         R34 K72 [{"__index"}]
      308 SETTABLEKS                       R24 R34 K31 ["__index"]
      310 FASTCALL2                        SETMETATABLE R33 R34 ; [+3]
      312 GETIMPORT                        R32 K37 [setmetatable]
      314 CALL                             R32 2 1
      315 SETTABLEKS                       R32 R32 K31 ["__index"]
      317 DUPCLOSURE                       R33 K73 [PROTO_34]
      318 CAPTURE                          VAL R4
      319 CAPTURE                          VAL R16
      320 CAPTURE                          VAL R5
      321 CAPTURE                          VAL R24
      322 CAPTURE                          VAL R32
      323 SETTABLEKS                       R33 R32 K33 ["new"]
      325 DUPCLOSURE                       R33 K74 [PROTO_35]
      326 CAPTURE                          VAL R4
      327 CAPTURE                          VAL R16
      328 SETTABLEKS                       R33 R32 K40 ["asymmetricMatch"]
      330 DUPCLOSURE                       R33 K75 [PROTO_36]
      331 CAPTURE                          VAL R4
      332 SETTABLEKS                       R33 R32 K42 ["toString"]
      334 DUPCLOSURE                       R33 K76 [PROTO_37]
      335 SETTABLEKS                       R33 R32 K44 ["getExpectedType"]
      337 DUPCLOSURE                       R33 K77 [PROTO_38]
      338 CAPTURE                          VAL R3
      339 CAPTURE                          VAL R12
      340 SETTABLEKS                       R33 R32 K46 ["toAsymmetricMatcher"]
      342 NEWTABLE                         R33 8 0
      344 SETTABLEKS                       R33 R33 K31 ["__index"]
      346 FASTCALL2                        SETMETATABLE R33 R24 ; [+5]
      348 MOVE                             R35 R33
      349 MOVE                             R36 R24
      350 GETIMPORT                        R34 K37 [setmetatable]
      352 CALL                             R34 2 0
      353 DUPCLOSURE                       R34 K78 [PROTO_39]
      354 CAPTURE                          VAL R24
      355 CAPTURE                          VAL R33
      356 SETTABLEKS                       R34 R33 K33 ["new"]
      358 DUPCLOSURE                       R34 K79 [PROTO_40]
      359 SETTABLEKS                       R34 R33 K40 ["asymmetricMatch"]
      361 DUPCLOSURE                       R34 K80 [PROTO_41]
      362 SETTABLEKS                       R34 R33 K42 ["toString"]
      364 DUPCLOSURE                       R34 K81 [PROTO_42]
      365 SETTABLEKS                       R34 R33 K44 ["getExpectedType"]
      367 DUPCLOSURE                       R34 K82 [PROTO_43]
      368 SETTABLEKS                       R34 R33 K46 ["toAsymmetricMatcher"]
      370 DUPTABLE                         R34 K99 [{"AsymmetricMatcher", "any", "anything", "nothing", "arrayContaining", "arrayNotContaining", "objectContaining", "objectNotContaining", "stringContaining", "stringNotContaining", "stringMatching", "stringNotMatching", "closeTo", "notCloseTo", "callable", "notCallable"}]
      371 SETTABLEKS                       R24 R34 K83 ["AsymmetricMatcher"]
      373 DUPCLOSURE                       R35 K100 [PROTO_44]
      374 CAPTURE                          VAL R25
      375 SETTABLEKS                       R35 R34 K84 ["any"]
      377 DUPCLOSURE                       R35 K101 [PROTO_45]
      378 CAPTURE                          VAL R26
      379 SETTABLEKS                       R35 R34 K85 ["anything"]
      381 DUPCLOSURE                       R35 K102 [PROTO_46]
      382 CAPTURE                          VAL R27
      383 SETTABLEKS                       R35 R34 K86 ["nothing"]
      385 DUPCLOSURE                       R35 K103 [PROTO_47]
      386 CAPTURE                          VAL R28
      387 SETTABLEKS                       R35 R34 K87 ["arrayContaining"]
      389 DUPCLOSURE                       R35 K104 [PROTO_48]
      390 CAPTURE                          VAL R28
      391 SETTABLEKS                       R35 R34 K88 ["arrayNotContaining"]
      393 DUPCLOSURE                       R35 K105 [PROTO_49]
      394 CAPTURE                          VAL R29
      395 SETTABLEKS                       R35 R34 K89 ["objectContaining"]
      397 DUPCLOSURE                       R35 K106 [PROTO_50]
      398 CAPTURE                          VAL R29
      399 SETTABLEKS                       R35 R34 K90 ["objectNotContaining"]
      401 DUPCLOSURE                       R35 K107 [PROTO_51]
      402 CAPTURE                          VAL R30
      403 SETTABLEKS                       R35 R34 K91 ["stringContaining"]
      405 DUPCLOSURE                       R35 K108 [PROTO_52]
      406 CAPTURE                          VAL R30
      407 SETTABLEKS                       R35 R34 K92 ["stringNotContaining"]
      409 DUPCLOSURE                       R35 K109 [PROTO_53]
      410 CAPTURE                          VAL R31
      411 SETTABLEKS                       R35 R34 K93 ["stringMatching"]
      413 DUPCLOSURE                       R35 K110 [PROTO_54]
      414 CAPTURE                          VAL R31
      415 SETTABLEKS                       R35 R34 K94 ["stringNotMatching"]
      417 DUPCLOSURE                       R35 K111 [PROTO_55]
      418 CAPTURE                          VAL R32
      419 SETTABLEKS                       R35 R34 K95 ["closeTo"]
      421 DUPCLOSURE                       R35 K112 [PROTO_56]
      422 CAPTURE                          VAL R32
      423 SETTABLEKS                       R35 R34 K96 ["notCloseTo"]
      425 DUPCLOSURE                       R35 K113 [PROTO_57]
      426 CAPTURE                          VAL R33
      427 SETTABLEKS                       R35 R34 K97 ["callable"]
      429 DUPCLOSURE                       R35 K114 [PROTO_58]
      430 CAPTURE                          VAL R33
      431 SETTABLEKS                       R35 R34 K98 ["notCallable"]
      433 RETURN                           R34 1
