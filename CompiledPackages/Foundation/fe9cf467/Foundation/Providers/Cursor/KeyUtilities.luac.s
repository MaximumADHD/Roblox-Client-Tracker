PROTO_0:
        0 MOVE                             R4 R1
        1 JUMPIF                           R4 ; [+5]
        2 GETIMPORT                        R4 K2 [UDim.new]
        4 LOADN                            R5 0
        5 LOADN                            R6 0
        6 CALL                             R4 2 1
        7 GETTABLEKS                       R6 R0 K3 ["Stroke"]
        9 GETTABLEKS                       R5 R6 K4 ["Thicker"]
       11 OR                               R6 R3 R5
       12 MOVE                             R8 R2
       13 JUMPIF                           R8 ; [+4]
       14 GETTABLEKS                       R9 R0 K5 ["Size"]
       16 GETTABLEKS                       R8 R9 K6 ["Size_150"]
       18 SUB                              R7 R8 R6
       19 GETTABLEKS                       R9 R4 K7 ["Scale"]
       21 LOADK                            R10 K8 [" "]
       22 GETTABLEKS                       R11 R4 K9 ["Offset"]
       24 LOADK                            R12 K8 [" "]
       25 MOVE                             R13 R7
       26 LOADK                            R14 K8 [" "]
       27 MOVE                             R15 R6
       28 CONCAT                           R8 R9 R15
       29 RETURN                           R8 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.split]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 [" "]
        4 CALL                             R1 2 1
        5 GETTABLEN                        R3 R1 1
        6 FASTCALL1                        TONUMBER R3 ; [+2]
        7 GETIMPORT                        R2 K5 [tonumber]
        9 CALL                             R2 1 1
       10 GETTABLEN                        R4 R1 2
       11 FASTCALL1                        TONUMBER R4 ; [+2]
       12 GETIMPORT                        R3 K5 [tonumber]
       14 CALL                             R3 1 1
       15 GETTABLEN                        R5 R1 3
       16 FASTCALL1                        TONUMBER R5 ; [+2]
       17 GETIMPORT                        R4 K5 [tonumber]
       19 CALL                             R4 1 1
       20 GETTABLEN                        R6 R1 4
       21 FASTCALL1                        TONUMBER R6 ; [+2]
       22 GETIMPORT                        R5 K5 [tonumber]
       24 CALL                             R5 1 1
       25 GETIMPORT                        R6 K8 [UDim.new]
       27 MOVE                             R7 R2
       28 LOADN                            R9 0
       29 ADD                              R10 R3 R4
       30 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       32 GETIMPORT                        R8 K11 [math.max]
       34 CALL                             R8 2 1
       35 CALL                             R6 2 1
       36 MOVE                             R7 R6
       37 MOVE                             R8 R4
       38 MOVE                             R9 R5
       39 RETURN                           R7 3

PROTO_2:
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

PROTO_3:
        0 LOADNIL                          R2
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+37]
        8 GETTABLEKS                       R3 R0 K3 ["radius"]
       10 GETTABLEKS                       R4 R0 K4 ["offset"]
       12 GETTABLEKS                       R5 R0 K5 ["borderWidth"]
       14 MOVE                             R6 R3
       15 JUMPIF                           R6 ; [+5]
       16 GETIMPORT                        R6 K8 [UDim.new]
       18 LOADN                            R7 0
       19 LOADN                            R8 0
       20 CALL                             R6 2 1
       21 GETTABLEKS                       R8 R1 K9 ["Stroke"]
       23 GETTABLEKS                       R7 R8 K10 ["Thicker"]
       25 OR                               R8 R5 R7
       26 MOVE                             R10 R4
       27 JUMPIF                           R10 ; [+4]
       28 GETTABLEKS                       R11 R1 K11 ["Size"]
       30 GETTABLEKS                       R10 R11 K12 ["Size_150"]
       32 SUB                              R9 R10 R8
       33 GETTABLEKS                       R10 R6 K13 ["Scale"]
       35 LOADK                            R11 K14 [" "]
       36 GETTABLEKS                       R12 R6 K15 ["Offset"]
       38 LOADK                            R13 K14 [" "]
       39 MOVE                             R14 R9
       40 LOADK                            R15 K14 [" "]
       41 MOVE                             R16 R8
       42 CONCAT                           R2 R10 R16
       43 RETURN                           R2 1
       44 JUMPIFNOTEQKNIL                  R0 ; [+27]
       46 GETIMPORT                        R3 K8 [UDim.new]
       48 LOADN                            R4 0
       49 LOADN                            R5 0
       50 CALL                             R3 2 1
       51 GETTABLEKS                       R5 R1 K9 ["Stroke"]
       53 GETTABLEKS                       R4 R5 K10 ["Thicker"]
       55 MOVE                             R5 R4
       56 GETTABLEKS                       R8 R1 K11 ["Size"]
       58 GETTABLEKS                       R7 R8 K12 ["Size_150"]
       60 SUB                              R6 R7 R5
       61 GETTABLEKS                       R7 R3 K13 ["Scale"]
       63 LOADK                            R8 K14 [" "]
       64 GETTABLEKS                       R9 R3 K15 ["Offset"]
       66 LOADK                            R10 K14 [" "]
       67 MOVE                             R11 R6
       68 LOADK                            R12 K14 [" "]
       69 MOVE                             R13 R5
       70 CONCAT                           R2 R7 R13
       71 RETURN                           R2 1
       72 FASTCALL1                        TYPEOF R0 ; [+3]
       73 MOVE                             R4 R0
       74 GETIMPORT                        R3 K1 [typeof]
       76 CALL                             R3 1 1
       77 JUMPIFNOTEQKS                    R3 K16 ["userdata"] ; [+22]
       79 FASTCALL1                        TOSTRING R0 ; [+3]
       80 MOVE                             R4 R0
       81 GETIMPORT                        R3 K18 [tostring]
       83 CALL                             R3 1 1
       84 GETIMPORT                        R4 K21 [string.gsub]
       86 MOVE                             R5 R3
       87 LOADK                            R9 K22 ["Kind"]
       88 NAMECALL                         R7 R3 K23 ["find"]
       90 CALL                             R7 2 1
       91 JUMPIFNOT                        R7 ; [+2]
       92 LOADK                            R6 K24 ["CursorKind%."]
       93 JUMP                             ; [+1]
       94 LOADK                            R6 K25 ["CursorType%."]
       95 LOADK                            R7 K26 [""]
       96 CALL                             R4 3 1
       97 GETUPVAL                         R5 0
       98 GETTABLE                         R2 R5 R4
       99 RETURN                           R2 1
      100 MOVE                             R2 R0
      101 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["CursorType"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Providers"]
       18 GETTABLEKS                       R4 R5 K9 ["Style"]
       20 GETTABLEKS                       R3 R4 K10 ["Tokens"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Components"]
       27 GETTABLEKS                       R4 R5 K12 ["Types"]
       29 CALL                             R3 1 1
       30 DUPCLOSURE                       R4 K13 [PROTO_0]
       31 DUPCLOSURE                       R5 K14 [PROTO_1]
       32 DUPCLOSURE                       R6 K15 [PROTO_2]
       33 CAPTURE                          VAL R1
       34 DUPCLOSURE                       R7 K16 [PROTO_3]
       35 CAPTURE                          VAL R1
       36 DUPTABLE                         R8 K21 [{"encodeKey", "decodeKey", "migrateCursorType", "mapCursorToKey"}]
       37 SETTABLEKS                       R4 R8 K17 ["encodeKey"]
       39 SETTABLEKS                       R5 R8 K18 ["decodeKey"]
       41 SETTABLEKS                       R6 R8 K19 ["migrateCursorType"]
       43 SETTABLEKS                       R7 R8 K20 ["mapCursorToKey"]
       45 RETURN                           R8 1
