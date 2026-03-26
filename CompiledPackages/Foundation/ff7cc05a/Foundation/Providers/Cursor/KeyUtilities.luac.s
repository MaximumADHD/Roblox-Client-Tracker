PROTO_0:
        0 MOVE                             R5 R1
        1 JUMPIF                           R5 ; [+5]
        2 GETIMPORT                        R5 K2 [UDim.new]
        4 LOADN                            R6 0
        5 LOADN                            R7 0
        6 CALL                             R5 2 1
        7 GETTABLEKS                       R7 R0 K3 ["Stroke"]
        9 GETTABLEKS                       R6 R7 K4 ["Thicker"]
       11 OR                               R7 R3 R6
       12 MOVE                             R9 R2
       13 JUMPIF                           R9 ; [+4]
       14 GETTABLEKS                       R10 R0 K5 ["Size"]
       16 GETTABLEKS                       R9 R10 K6 ["Size_150"]
       18 SUB                              R8 R9 R7
       19 MOVE                             R9 R4
       20 JUMPIF                           R9 ; [+3]
       21 GETUPVAL                         R10 0
       22 GETTABLEKS                       R9 R10 K7 ["Color"]
       24 GETUPVAL                         R12 1
       25 GETTABLEKS                       R11 R12 K8 ["FoundationSupportPresentationContextInSelectionCursor"]
       27 JUMPIFNOT                        R11 ; [+13]
       28 GETTABLEKS                       R11 R5 K9 ["Scale"]
       30 LOADK                            R12 K10 [" "]
       31 GETTABLEKS                       R13 R5 K11 ["Offset"]
       33 LOADK                            R14 K10 [" "]
       34 MOVE                             R15 R8
       35 LOADK                            R16 K10 [" "]
       36 MOVE                             R17 R7
       37 LOADK                            R18 K10 [" "]
       38 MOVE                             R19 R9
       39 CONCAT                           R10 R11 R19
       40 RETURN                           R10 1
       41 GETTABLEKS                       R11 R5 K9 ["Scale"]
       43 LOADK                            R12 K10 [" "]
       44 GETTABLEKS                       R13 R5 K11 ["Offset"]
       46 LOADK                            R14 K10 [" "]
       47 MOVE                             R15 R8
       48 LOADK                            R16 K10 [" "]
       49 MOVE                             R17 R7
       50 CONCAT                           R10 R11 R17
       51 RETURN                           R10 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+7]
        7 GETIMPORT                        R1 K4 [string.split]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 [" "]
       11 CALL                             R1 2 1
       12 JUMP                             ; [+1]
       13 MOVE                             R1 R0
       14 GETTABLEN                        R3 R1 1
       15 FASTCALL1                        TONUMBER R3 ; [+2]
       16 GETIMPORT                        R2 K7 [tonumber]
       18 CALL                             R2 1 1
       19 GETTABLEN                        R4 R1 2
       20 FASTCALL1                        TONUMBER R4 ; [+2]
       21 GETIMPORT                        R3 K7 [tonumber]
       23 CALL                             R3 1 1
       24 GETTABLEN                        R5 R1 3
       25 FASTCALL1                        TONUMBER R5 ; [+2]
       26 GETIMPORT                        R4 K7 [tonumber]
       28 CALL                             R4 1 1
       29 GETTABLEN                        R6 R1 4
       30 FASTCALL1                        TONUMBER R6 ; [+2]
       31 GETIMPORT                        R5 K7 [tonumber]
       33 CALL                             R5 1 1
       34 GETTABLEN                        R6 R1 5
       35 GETIMPORT                        R7 K10 [UDim.new]
       37 MOVE                             R8 R2
       38 LOADN                            R10 0
       39 ADD                              R11 R3 R4
       40 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       42 GETIMPORT                        R9 K13 [math.max]
       44 CALL                             R9 2 1
       45 CALL                             R7 2 1
       46 MOVE                             R8 R7
       47 MOVE                             R9 R4
       48 MOVE                             R10 R5
       49 MOVE                             R11 R6
       50 RETURN                           R8 4

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+3]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["Color"]
        5 MOVE                             R4 R0
        6 LOADK                            R5 K1 [" "]
        7 MOVE                             R6 R2
        8 CONCAT                           R3 R4 R6
        9 RETURN                           R3 1

PROTO_3:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["string"] ; [+7]
        7 GETIMPORT                        R1 K4 [string.split]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K5 [" "]
       11 CALL                             R1 2 1
       12 JUMP                             ; [+1]
       13 MOVE                             R1 R0
       14 GETTABLEN                        R2 R1 1
       15 GETTABLEN                        R3 R1 2
       16 RETURN                           R2 2

PROTO_4:
        0 FASTCALL1                        TOSTRING R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [tostring]
        4 CALL                             R1 1 1
        5 GETIMPORT                        R2 K4 [string.gsub]
        7 MOVE                             R3 R1
        8 LOADK                            R7 K5 ["Kind"]
        9 NAMECALL                         R5 R1 K6 ["find"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+2]
       13 LOADK                            R4 K7 ["CursorKind%."]
       14 JUMP                             ; [+1]
       15 LOADK                            R4 K8 ["CursorType%."]
       16 LOADK                            R5 K9 [""]
       17 CALL                             R2 3 1
       18 GETUPVAL                         R4 0
       19 GETTABLE                         R3 R4 R2
       20 RETURN                           R3 1

PROTO_5:
        0 LOADNIL                          R2
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+12]
        8 GETUPVAL                         R3 0
        9 MOVE                             R4 R1
       10 GETTABLEKS                       R5 R0 K3 ["radius"]
       12 GETTABLEKS                       R6 R0 K4 ["offset"]
       14 GETTABLEKS                       R7 R0 K5 ["borderWidth"]
       16 CALL                             R3 4 1
       17 MOVE                             R2 R3
       18 RETURN                           R2 1
       19 JUMPIFNOTEQKNIL                  R0 ; [+6]
       21 GETUPVAL                         R3 0
       22 MOVE                             R4 R1
       23 CALL                             R3 1 1
       24 MOVE                             R2 R3
       25 RETURN                           R2 1
       26 FASTCALL1                        TYPEOF R0 ; [+3]
       27 MOVE                             R4 R0
       28 GETIMPORT                        R3 K1 [typeof]
       30 CALL                             R3 1 1
       31 JUMPIFNOTEQKS                    R3 K6 ["userdata"] ; [+54]
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R3 R4 K7 ["FoundationSupportPresentationContextInSelectionCursor"]
       36 JUMPIFNOT                        R3 ; [+28]
       37 FASTCALL1                        TOSTRING R0 ; [+3]
       38 MOVE                             R5 R0
       39 GETIMPORT                        R4 K9 [tostring]
       41 CALL                             R4 1 1
       42 GETIMPORT                        R5 K12 [string.gsub]
       44 MOVE                             R6 R4
       45 LOADK                            R10 K13 ["Kind"]
       46 NAMECALL                         R8 R4 K14 ["find"]
       48 CALL                             R8 2 1
       49 JUMPIFNOT                        R8 ; [+2]
       50 LOADK                            R7 K15 ["CursorKind%."]
       51 JUMP                             ; [+1]
       52 LOADK                            R7 K16 ["CursorType%."]
       53 LOADK                            R8 K17 [""]
       54 CALL                             R5 3 1
       55 GETUPVAL                         R6 2
       56 GETTABLE                         R3 R6 R5
       57 GETUPVAL                         R5 3
       58 GETTABLEKS                       R4 R5 K18 ["Color"]
       60 MOVE                             R5 R3
       61 LOADK                            R6 K19 [" "]
       62 MOVE                             R7 R4
       63 CONCAT                           R2 R5 R7
       64 RETURN                           R2 1
       65 FASTCALL1                        TOSTRING R0 ; [+3]
       66 MOVE                             R4 R0
       67 GETIMPORT                        R3 K9 [tostring]
       69 CALL                             R3 1 1
       70 GETIMPORT                        R4 K12 [string.gsub]
       72 MOVE                             R5 R3
       73 LOADK                            R9 K13 ["Kind"]
       74 NAMECALL                         R7 R3 K14 ["find"]
       76 CALL                             R7 2 1
       77 JUMPIFNOT                        R7 ; [+2]
       78 LOADK                            R6 K15 ["CursorKind%."]
       79 JUMP                             ; [+1]
       80 LOADK                            R6 K16 ["CursorType%."]
       81 LOADK                            R7 K17 [""]
       82 CALL                             R4 3 1
       83 GETUPVAL                         R5 2
       84 GETTABLE                         R2 R5 R4
       85 RETURN                           R2 1
       86 GETUPVAL                         R4 1
       87 GETTABLEKS                       R3 R4 K7 ["FoundationSupportPresentationContextInSelectionCursor"]
       89 JUMPIFNOT                        R3 ; [+8]
       90 GETUPVAL                         R4 3
       91 GETTABLEKS                       R3 R4 K18 ["Color"]
       93 MOVE                             R4 R0
       94 LOADK                            R5 K19 [" "]
       95 MOVE                             R6 R3
       96 CONCAT                           R2 R4 R6
       97 RETURN                           R2 1
       98 MOVE                             R2 R0
       99 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["ColorMode"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["CursorType"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K9 ["Utility"]
       25 GETTABLEKS                       R4 R5 K10 ["Flags"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K11 ["Providers"]
       32 GETTABLEKS                       R6 R7 K12 ["Style"]
       34 GETTABLEKS                       R5 R6 K13 ["Tokens"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R7 R0 K14 ["Components"]
       41 GETTABLEKS                       R6 R7 K15 ["Types"]
       43 CALL                             R5 1 1
       44 DUPCLOSURE                       R6 K16 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R3
       47 DUPCLOSURE                       R7 K17 [PROTO_1]
       48 DUPCLOSURE                       R8 K18 [PROTO_2]
       49 CAPTURE                          VAL R1
       50 DUPCLOSURE                       R9 K19 [PROTO_3]
       51 DUPCLOSURE                       R10 K20 [PROTO_4]
       52 CAPTURE                          VAL R2
       53 DUPCLOSURE                       R11 K21 [PROTO_5]
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R1
       58 DUPTABLE                         R12 K28 [{"encodeKey", "decodeKey", "encodeCursorTypeKey", "decodeCursorTypeKey", "migrateCursorType", "mapCursorToKey"}]
       59 SETTABLEKS                       R6 R12 K22 ["encodeKey"]
       61 SETTABLEKS                       R7 R12 K23 ["decodeKey"]
       63 SETTABLEKS                       R8 R12 K24 ["encodeCursorTypeKey"]
       65 SETTABLEKS                       R9 R12 K25 ["decodeCursorTypeKey"]
       67 SETTABLEKS                       R10 R12 K26 ["migrateCursorType"]
       69 SETTABLEKS                       R11 R12 K27 ["mapCursorToKey"]
       71 RETURN                           R12 1
