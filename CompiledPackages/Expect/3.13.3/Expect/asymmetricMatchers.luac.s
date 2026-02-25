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
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K2 ["for_"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assign"]
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
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R1 R2 K7 ["new"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["new"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["some"]
        3 GETUPVAL                         R2 1
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isArray"]
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
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R3 R4 K0 ["isArray"]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 1
       36 JUMPIFNOT                        R3 ; [+12]
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R3 R4 K12 ["every"]
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
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R2 R3 K0 ["new"]
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
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K4 ["new"]
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
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R2 R3 K5 ["new"]
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
        5 JUMPIFNOT                        R3 ; [+43]
        6 GETUPVAL                         R3 0
        7 LOADK                            R4 K0 ["string"]
        8 GETTABLEKS                       R5 R0 K1 ["sample"]
       10 CALL                             R3 2 1
       11 JUMPIFNOT                        R3 ; [+30]
       12 GETIMPORT                        R3 K3 [string.gsub]
       14 GETTABLEKS                       R4 R0 K1 ["sample"]
       16 LOADN                            R9 27
       17 FASTCALL1                        STRING_CHAR R9 ; [+2]
       18 GETIMPORT                        R8 K5 [string.char]
       20 CALL                             R8 1 1
       21 MOVE                             R6 R8
       22 LOADK                            R7 K6 ["%["]
       23 CONCAT                           R5 R6 R7
       24 LOADN                            R10 27
       25 FASTCALL1                        STRING_CHAR R10 ; [+2]
       26 GETIMPORT                        R9 K5 [string.char]
       28 CALL                             R9 1 1
       29 MOVE                             R7 R9
       30 LOADK                            R8 K7 ["%%["]
       31 CONCAT                           R6 R7 R8
       32 CALL                             R3 3 1
       33 SETTABLEKS                       R3 R0 K1 ["sample"]
       35 GETTABLEKS                       R5 R0 K1 ["sample"]
       37 NAMECALL                         R3 R1 K8 ["find"]
       39 CALL                             R3 2 1
       40 MOVE                             R2 R3
       41 JUMP                             ; [+7]
       42 GETTABLEKS                       R3 R0 K1 ["sample"]
       44 MOVE                             R5 R1
       45 NAMECALL                         R3 R3 K9 ["test"]
       47 CALL                             R3 2 1
       48 MOVE                             R2 R3
       49 GETTABLEKS                       R3 R0 K10 ["inverse"]
       51 JUMPIFNOT                        R3 ; [+2]
       52 NOT                              R3 R2
       53 RETURN                           R3 1
       54 NOT                              R4 R2
       55 NOT                              R3 R4
       56 RETURN                           R3 1

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
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R5 R6 K0 ["toJSBoolean"]
       13 GETUPVAL                         R6 1
       14 LOADK                            R7 K1 ["number"]
       15 MOVE                             R8 R0
       16 CALL                             R6 2 -1
       17 CALL                             R5 -1 1
       18 JUMPIF                           R5 ; [+8]
       19 GETIMPORT                        R5 K3 [error]
       21 GETUPVAL                         R7 2
       22 GETTABLEKS                       R6 R7 K4 ["new"]
       24 LOADK                            R7 K5 ["Expected is not a Number"]
       25 CALL                             R6 1 -1
       26 CALL                             R5 -1 0
       27 GETUPVAL                         R6 0
       28 GETTABLEKS                       R5 R6 K0 ["toJSBoolean"]
       30 GETUPVAL                         R6 1
       31 LOADK                            R7 K1 ["number"]
       32 MOVE                             R8 R3
       33 CALL                             R6 2 -1
       34 CALL                             R5 -1 1
       35 JUMPIF                           R5 ; [+8]
       36 GETIMPORT                        R5 K3 [error]
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K4 ["new"]
       41 LOADK                            R7 K6 ["Precision is not a Number"]
       42 CALL                             R6 1 -1
       43 CALL                             R5 -1 0
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R5 R6 K4 ["new"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["toJSBoolean"]
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
       49 GETUPVAL                         R5 0
       50 GETTABLEKS                       R4 R5 K0 ["toJSBoolean"]
       52 GETTABLEKS                       R5 R0 K12 ["inverse"]
       54 CALL                             R4 1 1
       55 JUMPIFNOT                        R4 ; [+7]
       56 GETUPVAL                         R5 0
       57 GETTABLEKS                       R4 R5 K0 ["toJSBoolean"]
       59 MOVE                             R5 R2
       60 CALL                             R4 1 1
       61 NOT                              R3 R4
       62 RETURN                           R3 1
       63 MOVE                             R3 R2
       64 RETURN                           R3 1

PROTO_36:
        0 LOADK                            R1 K0 ["Number%sCloseTo"]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K1 ["toJSBoolean"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["join"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_45:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_47:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_48:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_49:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_50:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_52:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_53:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

PROTO_54:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_55:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_56:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["new"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 LOADB                            R5 1
        6 CALL                             R2 3 -1
        7 RETURN                           R2 -1

PROTO_57:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["new"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Boolean"]
       16 GETTABLEKS                       R5 R2 K8 ["Error"]
       18 GETTABLEKS                       R6 R2 K9 ["Object"]
       20 GETTABLEKS                       R7 R2 K10 ["Symbol"]
       22 GETTABLEKS                       R8 R2 K11 ["instanceof"]
       24 GETIMPORT                        R9 K4 [require]
       26 GETTABLEKS                       R10 R1 K12 ["RegExp"]
       28 CALL                             R9 1 1
       29 GETIMPORT                        R11 K4 [require]
       31 GETTABLEKS                       R12 R1 K13 ["JestGetType"]
       33 CALL                             R11 1 1
       34 GETTABLEKS                       R10 R11 K14 ["getType"]
       36 NEWTABLE                         R11 0 0
       38 GETIMPORT                        R13 K4 [require]
       40 GETTABLEKS                       R14 R1 K15 ["JestUtil"]
       42 CALL                             R13 1 1
       43 GETTABLEKS                       R12 R13 K16 ["pluralize"]
       45 GETIMPORT                        R13 K4 [require]
       47 GETTABLEKS                       R14 R0 K17 ["jasmineUtils"]
       49 CALL                             R13 1 1
       50 GETTABLEKS                       R14 R13 K18 ["equals"]
       52 GETTABLEKS                       R15 R13 K19 ["hasProperty"]
       54 GETTABLEKS                       R16 R13 K20 ["isA"]
       56 GETTABLEKS                       R17 R13 K21 ["isUndefined"]
       58 GETIMPORT                        R19 K4 [require]
       60 GETTABLEKS                       R20 R0 K22 ["jestMatchersObject_extracted"]
       62 CALL                             R19 1 1
       63 GETTABLEKS                       R18 R19 K23 ["getState"]
       65 GETIMPORT                        R19 K4 [require]
       67 GETTABLEKS                       R20 R0 K24 ["types"]
       69 CALL                             R19 1 1
       70 GETIMPORT                        R20 K4 [require]
       72 GETTABLEKS                       R21 R0 K25 ["utils"]
       74 CALL                             R20 1 1
       75 GETTABLEKS                       R21 R20 K26 ["iterableEquality"]
       77 GETTABLEKS                       R22 R20 K27 ["subsetEquality"]
       79 GETTABLEKS                       R23 R6 K28 ["freeze"]
       81 GETTABLEKS                       R24 R6 K29 ["assign"]
       83 NEWTABLE                         R25 0 0
       85 MOVE                             R26 R11
       86 DUPTABLE                         R27 K30 [{"iterableEquality", "subsetEquality"}]
       87 SETTABLEKS                       R21 R27 K26 ["iterableEquality"]
       89 SETTABLEKS                       R22 R27 K27 ["subsetEquality"]
       91 CALL                             R24 3 -1
       92 CALL                             R23 -1 1
       93 NEWTABLE                         R24 0 0
       95 SETTABLEKS                       R24 R24 K31 ["__index"]
       97 DUPCLOSURE                       R25 K32 [PROTO_0]
       98 CAPTURE                          VAL R7
       99 CAPTURE                          VAL R24
      100 SETTABLEKS                       R25 R24 K33 ["new"]
      102 DUPCLOSURE                       R25 K34 [PROTO_1]
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R14
      106 CAPTURE                          VAL R23
      107 SETTABLEKS                       R25 R24 K35 ["getMatcherContext"]
      109 NEWTABLE                         R25 8 0
      111 SETTABLEKS                       R25 R25 K31 ["__index"]
      113 FASTCALL2                        SETMETATABLE R25 R24 ; [+5]
      115 MOVE                             R27 R25
      116 MOVE                             R28 R24
      117 GETIMPORT                        R26 K37 [setmetatable]
      119 CALL                             R26 2 0
      120 DUPCLOSURE                       R26 K38 [PROTO_2]
      121 CAPTURE                          VAL R24
      122 CAPTURE                          VAL R25
      123 SETTABLEKS                       R26 R25 K33 ["new"]
      125 DUPCLOSURE                       R26 K39 [PROTO_3]
      126 CAPTURE                          VAL R10
      127 CAPTURE                          VAL R8
      128 SETTABLEKS                       R26 R25 K40 ["asymmetricMatch"]
      130 DUPCLOSURE                       R26 K41 [PROTO_4]
      131 SETTABLEKS                       R26 R25 K42 ["toString"]
      133 DUPCLOSURE                       R26 K43 [PROTO_5]
      134 SETTABLEKS                       R26 R25 K44 ["getExpectedType"]
      136 DUPCLOSURE                       R26 K45 [PROTO_6]
      137 SETTABLEKS                       R26 R25 K46 ["toAsymmetricMatcher"]
      139 NEWTABLE                         R26 8 0
      141 SETTABLEKS                       R26 R26 K31 ["__index"]
      143 FASTCALL2                        SETMETATABLE R26 R24 ; [+5]
      145 MOVE                             R28 R26
      146 MOVE                             R29 R24
      147 GETIMPORT                        R27 K37 [setmetatable]
      149 CALL                             R27 2 0
      150 DUPCLOSURE                       R27 K47 [PROTO_7]
      151 CAPTURE                          VAL R24
      152 CAPTURE                          VAL R26
      153 SETTABLEKS                       R27 R26 K33 ["new"]
      155 DUPCLOSURE                       R27 K48 [PROTO_8]
      156 CAPTURE                          VAL R17
      157 SETTABLEKS                       R27 R26 K40 ["asymmetricMatch"]
      159 DUPCLOSURE                       R27 K49 [PROTO_9]
      160 SETTABLEKS                       R27 R26 K42 ["toString"]
      162 DUPCLOSURE                       R27 K50 [PROTO_10]
      163 SETTABLEKS                       R27 R26 K46 ["toAsymmetricMatcher"]
      165 NEWTABLE                         R27 8 0
      167 SETTABLEKS                       R27 R27 K31 ["__index"]
      169 FASTCALL2                        SETMETATABLE R27 R24 ; [+5]
      171 MOVE                             R29 R27
      172 MOVE                             R30 R24
      173 GETIMPORT                        R28 K37 [setmetatable]
      175 CALL                             R28 2 0
      176 DUPCLOSURE                       R28 K51 [PROTO_11]
      177 CAPTURE                          VAL R24
      178 CAPTURE                          VAL R27
      179 SETTABLEKS                       R28 R27 K33 ["new"]
      181 DUPCLOSURE                       R28 K52 [PROTO_12]
      182 CAPTURE                          VAL R17
      183 SETTABLEKS                       R28 R27 K40 ["asymmetricMatch"]
      185 DUPCLOSURE                       R28 K53 [PROTO_13]
      186 SETTABLEKS                       R28 R27 K42 ["toString"]
      188 DUPCLOSURE                       R28 K54 [PROTO_14]
      189 SETTABLEKS                       R28 R27 K44 ["getExpectedType"]
      191 DUPCLOSURE                       R28 K55 [PROTO_15]
      192 SETTABLEKS                       R28 R27 K46 ["toAsymmetricMatcher"]
      194 NEWTABLE                         R28 8 0
      196 SETTABLEKS                       R28 R28 K31 ["__index"]
      198 FASTCALL2                        SETMETATABLE R28 R24 ; [+5]
      200 MOVE                             R30 R28
      201 MOVE                             R31 R24
      202 GETIMPORT                        R29 K37 [setmetatable]
      204 CALL                             R29 2 0
      205 DUPCLOSURE                       R29 K56 [PROTO_16]
      206 CAPTURE                          VAL R24
      207 CAPTURE                          VAL R28
      208 SETTABLEKS                       R29 R28 K33 ["new"]
      210 DUPCLOSURE                       R29 K57 [PROTO_19]
      211 CAPTURE                          VAL R3
      212 CAPTURE                          VAL R14
      213 SETTABLEKS                       R29 R28 K40 ["asymmetricMatch"]
      215 DUPCLOSURE                       R29 K58 [PROTO_20]
      216 SETTABLEKS                       R29 R28 K42 ["toString"]
      218 DUPCLOSURE                       R29 K59 [PROTO_21]
      219 SETTABLEKS                       R29 R28 K44 ["getExpectedType"]
      221 NEWTABLE                         R29 8 0
      223 SETTABLEKS                       R29 R29 K31 ["__index"]
      225 FASTCALL2                        SETMETATABLE R29 R24 ; [+5]
      227 MOVE                             R31 R29
      228 MOVE                             R32 R24
      229 GETIMPORT                        R30 K37 [setmetatable]
      231 CALL                             R30 2 0
      232 DUPCLOSURE                       R30 K60 [PROTO_22]
      233 CAPTURE                          VAL R24
      234 CAPTURE                          VAL R29
      235 SETTABLEKS                       R30 R29 K33 ["new"]
      237 DUPCLOSURE                       R30 K61 [PROTO_23]
      238 CAPTURE                          VAL R15
      239 CAPTURE                          VAL R14
      240 SETTABLEKS                       R30 R29 K40 ["asymmetricMatch"]
      242 DUPCLOSURE                       R30 K62 [PROTO_24]
      243 SETTABLEKS                       R30 R29 K42 ["toString"]
      245 DUPCLOSURE                       R30 K63 [PROTO_25]
      246 SETTABLEKS                       R30 R29 K44 ["getExpectedType"]
      248 NEWTABLE                         R30 8 0
      250 SETTABLEKS                       R30 R30 K31 ["__index"]
      252 FASTCALL2                        SETMETATABLE R30 R24 ; [+5]
      254 MOVE                             R32 R30
      255 MOVE                             R33 R24
      256 GETIMPORT                        R31 K37 [setmetatable]
      258 CALL                             R31 2 0
      259 DUPCLOSURE                       R31 K64 [PROTO_26]
      260 CAPTURE                          VAL R16
      261 CAPTURE                          VAL R24
      262 CAPTURE                          VAL R30
      263 SETTABLEKS                       R31 R30 K33 ["new"]
      265 DUPCLOSURE                       R31 K65 [PROTO_27]
      266 CAPTURE                          VAL R16
      267 SETTABLEKS                       R31 R30 K40 ["asymmetricMatch"]
      269 DUPCLOSURE                       R31 K66 [PROTO_28]
      270 SETTABLEKS                       R31 R30 K42 ["toString"]
      272 DUPCLOSURE                       R31 K67 [PROTO_29]
      273 SETTABLEKS                       R31 R30 K44 ["getExpectedType"]
      275 NEWTABLE                         R31 8 0
      277 SETTABLEKS                       R31 R31 K31 ["__index"]
      279 FASTCALL2                        SETMETATABLE R31 R24 ; [+5]
      281 MOVE                             R33 R31
      282 MOVE                             R34 R24
      283 GETIMPORT                        R32 K37 [setmetatable]
      285 CALL                             R32 2 0
      286 DUPCLOSURE                       R32 K68 [PROTO_30]
      287 CAPTURE                          VAL R16
      288 CAPTURE                          VAL R24
      289 CAPTURE                          VAL R31
      290 SETTABLEKS                       R32 R31 K33 ["new"]
      292 DUPCLOSURE                       R32 K69 [PROTO_31]
      293 CAPTURE                          VAL R16
      294 SETTABLEKS                       R32 R31 K40 ["asymmetricMatch"]
      296 DUPCLOSURE                       R32 K70 [PROTO_32]
      297 SETTABLEKS                       R32 R31 K42 ["toString"]
      299 DUPCLOSURE                       R32 K71 [PROTO_33]
      300 SETTABLEKS                       R32 R31 K44 ["getExpectedType"]
      302 NEWTABLE                         R33 0 0
      304 DUPTABLE                         R34 K72 [{"__index"}]
      305 SETTABLEKS                       R24 R34 K31 ["__index"]
      307 FASTCALL2                        SETMETATABLE R33 R34 ; [+3]
      309 GETIMPORT                        R32 K37 [setmetatable]
      311 CALL                             R32 2 1
      312 SETTABLEKS                       R32 R32 K31 ["__index"]
      314 DUPCLOSURE                       R33 K73 [PROTO_34]
      315 CAPTURE                          VAL R4
      316 CAPTURE                          VAL R16
      317 CAPTURE                          VAL R5
      318 CAPTURE                          VAL R24
      319 CAPTURE                          VAL R32
      320 SETTABLEKS                       R33 R32 K33 ["new"]
      322 DUPCLOSURE                       R33 K74 [PROTO_35]
      323 CAPTURE                          VAL R4
      324 CAPTURE                          VAL R16
      325 SETTABLEKS                       R33 R32 K40 ["asymmetricMatch"]
      327 DUPCLOSURE                       R33 K75 [PROTO_36]
      328 CAPTURE                          VAL R4
      329 SETTABLEKS                       R33 R32 K42 ["toString"]
      331 DUPCLOSURE                       R33 K76 [PROTO_37]
      332 SETTABLEKS                       R33 R32 K44 ["getExpectedType"]
      334 DUPCLOSURE                       R33 K77 [PROTO_38]
      335 CAPTURE                          VAL R3
      336 CAPTURE                          VAL R12
      337 SETTABLEKS                       R33 R32 K46 ["toAsymmetricMatcher"]
      339 NEWTABLE                         R33 8 0
      341 SETTABLEKS                       R33 R33 K31 ["__index"]
      343 FASTCALL2                        SETMETATABLE R33 R24 ; [+5]
      345 MOVE                             R35 R33
      346 MOVE                             R36 R24
      347 GETIMPORT                        R34 K37 [setmetatable]
      349 CALL                             R34 2 0
      350 DUPCLOSURE                       R34 K78 [PROTO_39]
      351 CAPTURE                          VAL R24
      352 CAPTURE                          VAL R33
      353 SETTABLEKS                       R34 R33 K33 ["new"]
      355 DUPCLOSURE                       R34 K79 [PROTO_40]
      356 SETTABLEKS                       R34 R33 K40 ["asymmetricMatch"]
      358 DUPCLOSURE                       R34 K80 [PROTO_41]
      359 SETTABLEKS                       R34 R33 K42 ["toString"]
      361 DUPCLOSURE                       R34 K81 [PROTO_42]
      362 SETTABLEKS                       R34 R33 K44 ["getExpectedType"]
      364 DUPCLOSURE                       R34 K82 [PROTO_43]
      365 SETTABLEKS                       R34 R33 K46 ["toAsymmetricMatcher"]
      367 DUPTABLE                         R34 K99 [{"AsymmetricMatcher", "any", "anything", "nothing", "arrayContaining", "arrayNotContaining", "objectContaining", "objectNotContaining", "stringContaining", "stringNotContaining", "stringMatching", "stringNotMatching", "closeTo", "notCloseTo", "callable", "notCallable"}]
      368 SETTABLEKS                       R24 R34 K83 ["AsymmetricMatcher"]
      370 DUPCLOSURE                       R35 K100 [PROTO_44]
      371 CAPTURE                          VAL R25
      372 SETTABLEKS                       R35 R34 K84 ["any"]
      374 DUPCLOSURE                       R35 K101 [PROTO_45]
      375 CAPTURE                          VAL R26
      376 SETTABLEKS                       R35 R34 K85 ["anything"]
      378 DUPCLOSURE                       R35 K102 [PROTO_46]
      379 CAPTURE                          VAL R27
      380 SETTABLEKS                       R35 R34 K86 ["nothing"]
      382 DUPCLOSURE                       R35 K103 [PROTO_47]
      383 CAPTURE                          VAL R28
      384 SETTABLEKS                       R35 R34 K87 ["arrayContaining"]
      386 DUPCLOSURE                       R35 K104 [PROTO_48]
      387 CAPTURE                          VAL R28
      388 SETTABLEKS                       R35 R34 K88 ["arrayNotContaining"]
      390 DUPCLOSURE                       R35 K105 [PROTO_49]
      391 CAPTURE                          VAL R29
      392 SETTABLEKS                       R35 R34 K89 ["objectContaining"]
      394 DUPCLOSURE                       R35 K106 [PROTO_50]
      395 CAPTURE                          VAL R29
      396 SETTABLEKS                       R35 R34 K90 ["objectNotContaining"]
      398 DUPCLOSURE                       R35 K107 [PROTO_51]
      399 CAPTURE                          VAL R30
      400 SETTABLEKS                       R35 R34 K91 ["stringContaining"]
      402 DUPCLOSURE                       R35 K108 [PROTO_52]
      403 CAPTURE                          VAL R30
      404 SETTABLEKS                       R35 R34 K92 ["stringNotContaining"]
      406 DUPCLOSURE                       R35 K109 [PROTO_53]
      407 CAPTURE                          VAL R31
      408 SETTABLEKS                       R35 R34 K93 ["stringMatching"]
      410 DUPCLOSURE                       R35 K110 [PROTO_54]
      411 CAPTURE                          VAL R31
      412 SETTABLEKS                       R35 R34 K94 ["stringNotMatching"]
      414 DUPCLOSURE                       R35 K111 [PROTO_55]
      415 CAPTURE                          VAL R32
      416 SETTABLEKS                       R35 R34 K95 ["closeTo"]
      418 DUPCLOSURE                       R35 K112 [PROTO_56]
      419 CAPTURE                          VAL R32
      420 SETTABLEKS                       R35 R34 K96 ["notCloseTo"]
      422 DUPCLOSURE                       R35 K113 [PROTO_57]
      423 CAPTURE                          VAL R33
      424 SETTABLEKS                       R35 R34 K97 ["callable"]
      426 DUPCLOSURE                       R35 K114 [PROTO_58]
      427 CAPTURE                          VAL R33
      428 SETTABLEKS                       R35 R34 K98 ["notCallable"]
      430 RETURN                           R34 1
