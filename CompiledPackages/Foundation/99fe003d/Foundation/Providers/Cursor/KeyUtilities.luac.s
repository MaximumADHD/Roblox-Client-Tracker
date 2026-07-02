PROTO_0:
        0 MOVE                             R5 R1
        1 JUMPIF                           R5 ; [+5]
        2 GETIMPORT                        R5 K2 [UDim.new]
        4 LOADN                            R6 0
        5 LOADN                            R7 0
        6 CALL                             R5 2 1
        7 GETTABLEKS                       R6 R0 K3 ["Stroke"]
        9 GETTABLEKS                       R6 R6 K4 ["Thicker"]
       11 OR                               R7 R3 R6
       12 MOVE                             R9 R2
       13 JUMPIF                           R9 ; [+4]
       14 GETTABLEKS                       R9 R0 K5 ["Size"]
       16 GETTABLEKS                       R9 R9 K6 ["Size_150"]
       18 SUB                              R8 R9 R7
       19 MOVE                             R9 R4
       20 JUMPIF                           R9 ; [+3]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K7 ["Color"]
       24 GETTABLEKS                       R11 R5 K8 ["Scale"]
       26 LOADK                            R12 K9 [" "]
       27 GETTABLEKS                       R13 R5 K10 ["Offset"]
       29 LOADK                            R14 K9 [" "]
       30 MOVE                             R15 R8
       31 LOADK                            R16 K9 [" "]
       32 MOVE                             R17 R7
       33 LOADK                            R18 K9 [" "]
       34 MOVE                             R19 R9
       35 CONCAT                           R10 R11 R19
       36 RETURN                           R10 1

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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["Color"]
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
        6 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+42]
        8 GETTABLEKS                       R3 R0 K3 ["radius"]
       10 GETTABLEKS                       R4 R0 K4 ["offset"]
       12 GETTABLEKS                       R5 R0 K5 ["borderWidth"]
       14 MOVE                             R6 R3
       15 JUMPIF                           R6 ; [+5]
       16 GETIMPORT                        R6 K8 [UDim.new]
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 CALL                             R6 2 1
       21 GETTABLEKS                       R7 R1 K9 ["Stroke"]
       23 GETTABLEKS                       R7 R7 K10 ["Thicker"]
       25 OR                               R8 R5 R7
       26 MOVE                             R10 R4
       27 JUMPIF                           R10 ; [+4]
       28 GETTABLEKS                       R10 R1 K11 ["Size"]
       30 GETTABLEKS                       R10 R10 K12 ["Size_150"]
       32 SUB                              R9 R10 R8
       33 GETUPVAL                         R10 0
       34 GETTABLEKS                       R10 R10 K13 ["Color"]
       36 GETTABLEKS                       R11 R6 K14 ["Scale"]
       38 LOADK                            R12 K15 [" "]
       39 GETTABLEKS                       R13 R6 K16 ["Offset"]
       41 LOADK                            R14 K15 [" "]
       42 MOVE                             R15 R9
       43 LOADK                            R16 K15 [" "]
       44 MOVE                             R17 R8
       45 LOADK                            R18 K15 [" "]
       46 MOVE                             R19 R10
       47 CONCAT                           R2 R11 R19
       48 RETURN                           R2 1
       49 JUMPIFNOTEQKNIL                  R0 ; [+32]
       51 GETIMPORT                        R3 K8 [UDim.new]
       53 LOADN                            R4 0
       54 LOADN                            R5 0
       55 CALL                             R3 2 1
       56 GETTABLEKS                       R4 R1 K9 ["Stroke"]
       58 GETTABLEKS                       R4 R4 K10 ["Thicker"]
       60 MOVE                             R5 R4
       61 GETTABLEKS                       R7 R1 K11 ["Size"]
       63 GETTABLEKS                       R7 R7 K12 ["Size_150"]
       65 SUB                              R6 R7 R5
       66 GETUPVAL                         R7 0
       67 GETTABLEKS                       R7 R7 K13 ["Color"]
       69 GETTABLEKS                       R8 R3 K14 ["Scale"]
       71 LOADK                            R9 K15 [" "]
       72 GETTABLEKS                       R10 R3 K16 ["Offset"]
       74 LOADK                            R11 K15 [" "]
       75 MOVE                             R12 R6
       76 LOADK                            R13 K15 [" "]
       77 MOVE                             R14 R5
       78 LOADK                            R15 K15 [" "]
       79 MOVE                             R16 R7
       80 CONCAT                           R2 R8 R16
       81 RETURN                           R2 1
       82 FASTCALL1                        TYPEOF R0 ; [+3]
       83 MOVE                             R4 R0
       84 GETIMPORT                        R3 K1 [typeof]
       86 CALL                             R3 1 1
       87 JUMPIFNOTEQKS                    R3 K17 ["userdata"] ; [+29]
       89 FASTCALL1                        TOSTRING R0 ; [+3]
       90 MOVE                             R5 R0
       91 GETIMPORT                        R4 K19 [tostring]
       93 CALL                             R4 1 1
       94 GETIMPORT                        R5 K22 [string.gsub]
       96 MOVE                             R6 R4
       97 LOADK                            R10 K23 ["Kind"]
       98 NAMECALL                         R8 R4 K24 ["find"]
      100 CALL                             R8 2 1
      101 JUMPIFNOT                        R8 ; [+2]
      102 LOADK                            R7 K25 ["CursorKind%."]
      103 JUMP                             ; [+1]
      104 LOADK                            R7 K26 ["CursorType%."]
      105 LOADK                            R8 K27 [""]
      106 CALL                             R5 3 1
      107 GETUPVAL                         R6 1
      108 GETTABLE                         R3 R6 R5
      109 GETUPVAL                         R4 0
      110 GETTABLEKS                       R4 R4 K13 ["Color"]
      112 MOVE                             R5 R3
      113 LOADK                            R6 K15 [" "]
      114 MOVE                             R7 R4
      115 CONCAT                           R2 R5 R7
      116 RETURN                           R2 1
      117 GETUPVAL                         R3 0
      118 GETTABLEKS                       R3 R3 K13 ["Color"]
      120 MOVE                             R4 R0
      121 LOADK                            R5 K15 [" "]
      122 MOVE                             R6 R3
      123 CONCAT                           R2 R4 R6
      124 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R2 K7 ["ColorMode"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R3 K8 ["CursorType"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Providers"]
       25 GETTABLEKS                       R4 R4 K10 ["Style"]
       27 GETTABLEKS                       R4 R4 K11 ["Tokens"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K12 ["Components"]
       34 GETTABLEKS                       R5 R5 K13 ["Types"]
       36 CALL                             R4 1 1
       37 DUPCLOSURE                       R5 K14 [PROTO_0]
       38 CAPTURE                          VAL R1
       39 DUPCLOSURE                       R6 K15 [PROTO_1]
       40 DUPCLOSURE                       R7 K16 [PROTO_2]
       41 CAPTURE                          VAL R1
       42 DUPCLOSURE                       R8 K17 [PROTO_3]
       43 DUPCLOSURE                       R9 K18 [PROTO_4]
       44 CAPTURE                          VAL R2
       45 DUPCLOSURE                       R10 K19 [PROTO_5]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R2
       48 DUPTABLE                         R11 K26 [{"encodeKey", "decodeKey", "encodeCursorTypeKey", "decodeCursorTypeKey", "migrateCursorType", "mapCursorToKey"}]
       49 SETTABLEKS                       R5 R11 K20 ["encodeKey"]
       51 SETTABLEKS                       R6 R11 K21 ["decodeKey"]
       53 SETTABLEKS                       R7 R11 K22 ["encodeCursorTypeKey"]
       55 SETTABLEKS                       R8 R11 K23 ["decodeCursorTypeKey"]
       57 SETTABLEKS                       R9 R11 K24 ["migrateCursorType"]
       59 SETTABLEKS                       R10 R11 K25 ["mapCursorToKey"]
       61 RETURN                           R11 1
