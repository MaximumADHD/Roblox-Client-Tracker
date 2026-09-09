PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+22]
        2 GETIMPORT                        R1 K1 [error]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["new"]
        7 LOADK                            R3 K3 ["It looks like %s was passed instead of a matcher. Did you do something like getByText(%s)?"]
        8 FASTCALL1                        TOSTRING R0 ; [+3]
        9 MOVE                             R6 R0
       10 GETIMPORT                        R5 K5 [tostring]
       12 CALL                             R5 1 1
       13 FASTCALL1                        TOSTRING R0 ; [+3]
       14 MOVE                             R7 R0
       15 GETIMPORT                        R6 K5 [tostring]
       17 CALL                             R6 1 1
       18 NAMECALL                         R3 R3 K6 ["format"]
       20 CALL                             R3 3 -1
       21 CALL                             R2 -1 -1
       22 CALL                             R1 -1 0
       23 LOADB                            R1 1
       24 RETURN                           R1 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+3]
        7 LOADB                            R4 0
        8 RETURN                           R4 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+22]
       11 GETIMPORT                        R4 K4 [error]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K5 ["new"]
       16 LOADK                            R6 K6 ["It looks like %s was passed instead of a matcher. Did you do something like getByText(%s)?"]
       17 FASTCALL1                        TOSTRING R2 ; [+3]
       18 MOVE                             R9 R2
       19 GETIMPORT                        R8 K8 [tostring]
       21 CALL                             R8 1 1
       22 FASTCALL1                        TOSTRING R2 ; [+3]
       23 MOVE                             R10 R2
       24 GETIMPORT                        R9 K8 [tostring]
       26 CALL                             R9 1 1
       27 NAMECALL                         R6 R6 K9 ["format"]
       29 CALL                             R6 3 -1
       30 CALL                             R5 -1 -1
       31 CALL                             R4 -1 0
       32 MOVE                             R4 R3
       33 MOVE                             R5 R0
       34 CALL                             R4 1 1
       35 FASTCALL1                        TYPEOF R2 ; [+3]
       36 MOVE                             R6 R2
       37 GETIMPORT                        R5 K1 [typeof]
       39 CALL                             R5 1 1
       40 JUMPIFEQKS                       R5 K2 ["string"] ; [+8]
       42 FASTCALL1                        TYPEOF R2 ; [+3]
       43 MOVE                             R6 R2
       44 GETIMPORT                        R5 K1 [typeof]
       46 CALL                             R5 1 1
       47 JUMPIFNOTEQKS                    R5 K10 ["number"] ; [+20]
       49 NAMECALL                         R6 R4 K11 ["lower"]
       51 CALL                             R6 1 1
       52 FASTCALL1                        TOSTRING R2 ; [+3]
       53 MOVE                             R9 R2
       54 GETIMPORT                        R8 K8 [tostring]
       56 CALL                             R8 1 1
       57 NAMECALL                         R8 R8 K11 ["lower"]
       59 CALL                             R8 1 -1
       60 NAMECALL                         R6 R6 K12 ["find"]
       62 CALL                             R6 -1 1
       63 JUMPIFNOTEQKNIL                  R6 ; [+2]
       65 LOADB                            R5 0 +1
       66 LOADB                            R5 1
       67 RETURN                           R5 1
       68 FASTCALL1                        TYPEOF R2 ; [+3]
       69 MOVE                             R6 R2
       70 GETIMPORT                        R5 K1 [typeof]
       72 CALL                             R5 1 1
       73 JUMPIFNOTEQKS                    R5 K13 ["function"] ; [+6]
       75 MOVE                             R5 R2
       76 MOVE                             R6 R4
       77 MOVE                             R7 R1
       78 CALL                             R5 2 -1
       79 RETURN                           R5 -1
       80 GETUPVAL                         R5 1
       81 MOVE                             R6 R2
       82 MOVE                             R7 R4
       83 CALL                             R5 2 -1
       84 RETURN                           R5 -1

PROTO_2:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R5 R0
        2 GETIMPORT                        R4 K1 [typeof]
        4 CALL                             R4 1 1
        5 JUMPIFEQKS                       R4 K2 ["string"] ; [+3]
        7 LOADB                            R4 0
        8 RETURN                           R4 1
        9 JUMPIFNOTEQKNIL                  R2 ; [+22]
       11 GETIMPORT                        R4 K4 [error]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K5 ["new"]
       16 LOADK                            R6 K6 ["It looks like %s was passed instead of a matcher. Did you do something like getByText(%s)?"]
       17 FASTCALL1                        TOSTRING R2 ; [+3]
       18 MOVE                             R9 R2
       19 GETIMPORT                        R8 K8 [tostring]
       21 CALL                             R8 1 1
       22 FASTCALL1                        TOSTRING R2 ; [+3]
       23 MOVE                             R10 R2
       24 GETIMPORT                        R9 K8 [tostring]
       26 CALL                             R9 1 1
       27 NAMECALL                         R6 R6 K9 ["format"]
       29 CALL                             R6 3 -1
       30 CALL                             R5 -1 -1
       31 CALL                             R4 -1 0
       32 MOVE                             R4 R3
       33 MOVE                             R5 R0
       34 CALL                             R4 1 1
       35 FASTCALL1                        TYPEOF R2 ; [+3]
       36 MOVE                             R6 R2
       37 GETIMPORT                        R5 K1 [typeof]
       39 CALL                             R5 1 1
       40 JUMPIFNOTEQKS                    R5 K10 ["function"] ; [+6]
       42 MOVE                             R5 R2
       43 MOVE                             R6 R4
       44 MOVE                             R7 R1
       45 CALL                             R5 2 -1
       46 RETURN                           R5 -1
       47 GETUPVAL                         R5 1
       48 MOVE                             R6 R2
       49 GETUPVAL                         R7 2
       50 CALL                             R5 2 1
       51 JUMPIFNOT                        R5 ; [+5]
       52 GETUPVAL                         R5 3
       53 MOVE                             R6 R2
       54 MOVE                             R7 R4
       55 CALL                             R5 2 -1
       56 RETURN                           R5 -1
       57 FASTCALL1                        TOSTRING R2 ; [+3]
       58 MOVE                             R7 R2
       59 GETIMPORT                        R6 K8 [tostring]
       61 CALL                             R6 1 1
       62 JUMPIFEQ                         R4 R6 ; [+2]
       64 LOADB                            R5 0 +1
       65 LOADB                            R5 1
       66 RETURN                           R5 1

PROTO_3:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 JUMPIFNOT                        R2 ; [+7]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["trim"]
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 MOVE                             R1 R2
        9 JUMP                             ; [0]
       10 GETUPVAL                         R2 2
       11 JUMPIFNOT                        R2 ; [+7]
       12 LOADK                            R4 K1 ["%s+"]
       13 LOADK                            R5 K2 [" "]
       14 NAMECALL                         R2 R1 K3 ["gsub"]
       16 CALL                             R2 3 1
       17 MOVE                             R1 R2
       18 RETURN                           R1 1
       19 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOTEQKNIL                  R0 ; [+4]
        2 NEWTABLE                         R1 0 0
        4 JUMP                             ; [+1]
        5 MOVE                             R1 R0
        6 GETTABLEKS                       R4 R1 K0 ["trim"]
        8 JUMPIFNOTEQKNIL                  R4 ; [+3]
       10 LOADB                            R2 1
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R2 R1 K0 ["trim"]
       14 GETTABLEKS                       R4 R1 K1 ["collapseWhitespace"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+3]
       18 LOADB                            R3 1
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R3 R1 K1 ["collapseWhitespace"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          UPVAL U0
       25 CAPTURE                          VAL R3
       26 RETURN                           R4 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["trim"]
        2 GETTABLEKS                       R2 R0 K1 ["collapseWhitespace"]
        4 GETTABLEKS                       R3 R0 K2 ["normalizer"]
        6 JUMPIF                           R3 ; [+8]
        7 GETUPVAL                         R4 0
        8 DUPTABLE                         R5 K3 [{"trim", "collapseWhitespace"}]
        9 SETTABLEKS                       R1 R5 K0 ["trim"]
       11 SETTABLEKS                       R2 R5 K1 ["collapseWhitespace"]
       13 CALL                             R4 1 1
       14 RETURN                           R4 1
       15 JUMPIFNOTEQKNIL                  R1 ; [+3]
       17 JUMPIFEQKNIL                     R2 ; [+9]
       19 GETIMPORT                        R4 K5 [error]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K6 ["new"]
       24 LOADK                            R6 K7 ["trim and collapseWhitespace are not supported with a normalizer. If you want to use the default trim and collapseWhitespace logic in your normalizer, use \"getDefaultNormalizer({trim, collapseWhitespace})\" and compose that into your normalizer"]
       25 CALL                             R5 1 -1
       26 CALL                             R4 -1 0
       27 RETURN                           R3 1

PROTO_6:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["test"]
        3 CALL                             R2 2 1
        4 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K6 ["Error"]
       14 GETTABLEKS                       R3 R1 K7 ["String"]
       16 GETTABLEKS                       R4 R1 K8 ["instanceof"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R0 K9 ["LuauRegExp"]
       22 CALL                             R5 1 1
       23 NEWTABLE                         R6 4 0
       25 LOADNIL                          R7
       26 GETIMPORT                        R8 K4 [require]
       28 GETIMPORT                        R9 K1 [script]
       30 GETTABLEKS                       R9 R9 K2 ["Parent"]
       32 GETTABLEKS                       R9 R9 K10 ["types"]
       34 CALL                             R8 1 1
       35 DUPCLOSURE                       R9 K11 [PROTO_0]
       36 CAPTURE                          VAL R2
       37 NEWCLOSURE                       R10 P1
       38 CAPTURE                          VAL R2
       39 CAPTURE                          REF R7
       40 NEWCLOSURE                       R11 P2
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R5
       44 CAPTURE                          REF R7
       45 DUPCLOSURE                       R12 K12 [PROTO_4]
       46 CAPTURE                          VAL R3
       47 DUPCLOSURE                       R13 K13 [PROTO_5]
       48 CAPTURE                          VAL R12
       49 CAPTURE                          VAL R2
       50 DUPCLOSURE                       R7 K14 [PROTO_6]
       51 SETTABLEKS                       R10 R6 K15 ["fuzzyMatches"]
       53 SETTABLEKS                       R11 R6 K16 ["matches"]
       55 SETTABLEKS                       R12 R6 K17 ["getDefaultNormalizer"]
       57 SETTABLEKS                       R13 R6 K18 ["makeNormalizer"]
       59 CLOSEUPVALS                      R7
       60 RETURN                           R6 1
