PROTO_0:
        0 LOADK                            R1 K0 ["Set "]
        1 GETTABLEKS                       R3 R0 K1 ["_array"]
        3 LENGTH                           R2 R3
        4 LOADN                            R3 0
        5 JUMPIFNOTLT                      R3 R2 ; [+13]
        7 MOVE                             R2 R1
        8 LOADK                            R3 K2 ["("]
        9 GETTABLEKS                       R8 R0 K1 ["_array"]
       11 LENGTH                           R7 R8
       12 FASTCALL1                        TOSTRING R7 ; [+2]
       13 GETIMPORT                        R6 K4 [tostring]
       15 CALL                             R6 1 1
       16 MOVE                             R4 R6
       17 LOADK                            R5 K5 [") "]
       18 CONCAT                           R1 R2 R5
       19 MOVE                             R2 R1
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R4 R0 K1 ["_array"]
       23 CALL                             R3 1 1
       24 CONCAT                           R1 R2 R3
       25 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 JUMPIFEQKNIL                     R0 ; [+119]
        6 LOADNIL                          R3
        7 FASTCALL1                        TYPEOF R0 ; [+3]
        8 MOVE                             R5 R0
        9 GETIMPORT                        R4 K1 [typeof]
       11 CALL                             R4 1 1
       12 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+33]
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R4 R5 K3 ["isArray"]
       17 MOVE                             R5 R0
       18 CALL                             R4 1 1
       19 JUMPIFNOT                        R4 ; [+7]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R4 R5 K4 ["from"]
       23 MOVE                             R5 R0
       24 CALL                             R4 1 1
       25 MOVE                             R3 R4
       26 JUMP                             ; [+45]
       27 GETTABLEKS                       R5 R0 K5 ["ipairs"]
       29 FASTCALL1                        TYPEOF R5 ; [+2]
       30 GETIMPORT                        R4 K1 [typeof]
       32 CALL                             R4 1 1
       33 JUMPIFNOTEQKS                    R4 K6 ["function"] ; [+2]
       35 JUMP                             ; [+36]
       36 GETIMPORT                        R5 K8 [_G]
       38 GETTABLEKS                       R4 R5 K9 ["__DEV__"]
       40 JUMPIFNOT                        R4 ; [+31]
       41 GETIMPORT                        R4 K11 [error]
       43 LOADK                            R5 K12 ["cannot create array from an object-like table"]
       44 CALL                             R4 1 0
       45 JUMP                             ; [+26]
       46 FASTCALL1                        TYPEOF R0 ; [+3]
       47 MOVE                             R5 R0
       48 GETIMPORT                        R4 K1 [typeof]
       50 CALL                             R4 1 1
       51 JUMPIFNOTEQKS                    R4 K13 ["string"] ; [+8]
       53 GETUPVAL                         R5 0
       54 GETTABLEKS                       R4 R5 K4 ["from"]
       56 MOVE                             R5 R0
       57 CALL                             R4 1 1
       58 MOVE                             R3 R4
       59 JUMP                             ; [+12]
       60 GETIMPORT                        R4 K11 [error]
       62 LOADK                            R5 K14 ["cannot create array from value of type `%s`"]
       63 FASTCALL1                        TYPEOF R0 ; [+3]
       64 MOVE                             R8 R0
       65 GETIMPORT                        R7 K1 [typeof]
       67 CALL                             R7 1 1
       68 NAMECALL                         R5 R5 K15 ["format"]
       70 CALL                             R5 2 -1
       71 CALL                             R4 -1 0
       72 JUMPIFNOT                        R3 ; [+19]
       73 GETIMPORT                        R4 K16 [ipairs]
       75 MOVE                             R5 R3
       76 CALL                             R4 1 3
       77 FORGPREP_INEXT                   R4
       78 GETTABLE                         R9 R2 R8
       79 JUMPIF                           R9 ; [+9]
       80 LOADB                            R9 1
       81 SETTABLE                         R9 R2 R8
       82 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       84 MOVE                             R10 R1
       85 MOVE                             R11 R8
       86 GETIMPORT                        R9 K18 [table.insert]
       88 CALL                             R9 2 0
       89 FORGLOOP                         R4 2 [inext] ; [-12]
       91 JUMP                             ; [+32]
       92 FASTCALL1                        TYPEOF R0 ; [+3]
       93 MOVE                             R5 R0
       94 GETIMPORT                        R4 K1 [typeof]
       96 CALL                             R4 1 1
       97 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+26]
       99 GETTABLEKS                       R5 R0 K5 ["ipairs"]
      101 FASTCALL1                        TYPEOF R5 ; [+2]
      102 GETIMPORT                        R4 K1 [typeof]
      104 CALL                             R4 1 1
      105 JUMPIFNOTEQKS                    R4 K6 ["function"] ; [+18]
      107 NAMECALL                         R4 R0 K5 ["ipairs"]
      109 CALL                             R4 1 3
      110 FORGPREP                         R4
      111 GETTABLE                         R9 R2 R8
      112 JUMPIF                           R9 ; [+9]
      113 LOADB                            R9 1
      114 SETTABLE                         R9 R2 R8
      115 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
      117 MOVE                             R10 R1
      118 MOVE                             R11 R8
      119 GETIMPORT                        R9 K18 [table.insert]
      121 CALL                             R9 2 0
      122 FORGLOOP                         R4 2 ; [-12]
      124 DUPTABLE                         R4 K22 [{"size", "_map", "_array"}]
      125 LENGTH                           R5 R1
      126 SETTABLEKS                       R5 R4 K19 ["size"]
      128 SETTABLEKS                       R2 R4 K20 ["_map"]
      130 SETTABLEKS                       R1 R4 K21 ["_array"]
      132 GETUPVAL                         R5 1
      133 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
      135 GETIMPORT                        R3 K24 [setmetatable]
      137 CALL                             R3 2 1
      138 RETURN                           R3 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_map"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+17]
        4 GETTABLEKS                       R3 R0 K2 ["size"]
        6 ADDK                             R2 R3 K1 [1]
        7 SETTABLEKS                       R2 R0 K2 ["size"]
        9 GETTABLEKS                       R2 R0 K0 ["_map"]
       11 LOADB                            R3 1
       12 SETTABLE                         R3 R2 R1
       13 GETTABLEKS                       R3 R0 K3 ["_array"]
       15 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
       17 MOVE                             R4 R1
       18 GETIMPORT                        R2 K6 [table.insert]
       20 CALL                             R2 2 0
       21 RETURN                           R0 1

PROTO_3:
        0 LOADN                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["size"]
        3 GETIMPORT                        R1 K3 [table.clear]
        5 GETTABLEKS                       R2 R0 K4 ["_map"]
        7 CALL                             R1 1 0
        8 GETIMPORT                        R1 K3 [table.clear]
       10 GETTABLEKS                       R2 R0 K5 ["_array"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_map"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+2]
        4 LOADB                            R2 0
        5 RETURN                           R2 1
        6 GETTABLEKS                       R3 R0 K2 ["size"]
        8 SUBK                             R2 R3 K1 [1]
        9 SETTABLEKS                       R2 R0 K2 ["size"]
       11 GETTABLEKS                       R2 R0 K0 ["_map"]
       13 LOADNIL                          R3
       14 SETTABLE                         R3 R2 R1
       15 GETIMPORT                        R2 K5 [table.find]
       17 GETTABLEKS                       R3 R0 K6 ["_array"]
       19 MOVE                             R4 R1
       20 CALL                             R2 2 1
       21 JUMPIFNOT                        R2 ; [+6]
       22 GETIMPORT                        R3 K8 [table.remove]
       24 GETTABLEKS                       R4 R0 K6 ["_array"]
       26 MOVE                             R5 R2
       27 CALL                             R3 2 0
       28 LOADB                            R3 1
       29 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIFEQKNIL                     R1 ; [+8]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 MOVE                             R4 R0
        7 GETUPVAL                         R5 2
        8 CALL                             R1 4 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R1 1
       11 MOVE                             R2 R0
       12 MOVE                             R3 R0
       13 GETUPVAL                         R4 2
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_6:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R4 R1
        2 GETIMPORT                        R3 K1 [typeof]
        4 CALL                             R3 1 1
        5 JUMPIFEQKS                       R3 K2 ["function"] ; [+5]
        7 GETIMPORT                        R3 K4 [error]
        9 LOADK                            R4 K5 ["callback is not a function"]
       10 CALL                             R3 1 0
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R3 R4 K6 ["forEach"]
       14 GETTABLEKS                       R4 R0 K7 ["_array"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R1
       19 CAPTURE                          VAL R0
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["_map"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_8:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["_array"]
        4 CALL                             R1 1 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Array"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R4 R0 K6 ["util"]
       14 GETTABLEKS                       R3 R4 K7 ["inspect"]
       16 CALL                             R2 1 1
       17 NEWTABLE                         R3 16 0
       19 SETTABLEKS                       R3 R3 K8 ["__index"]
       21 DUPCLOSURE                       R4 K9 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 SETTABLEKS                       R4 R3 K10 ["__tostring"]
       25 DUPCLOSURE                       R4 K11 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 SETTABLEKS                       R4 R3 K12 ["new"]
       30 DUPCLOSURE                       R4 K13 [PROTO_2]
       31 SETTABLEKS                       R4 R3 K14 ["add"]
       33 DUPCLOSURE                       R4 K15 [PROTO_3]
       34 SETTABLEKS                       R4 R3 K16 ["clear"]
       36 DUPCLOSURE                       R4 K17 [PROTO_4]
       37 SETTABLEKS                       R4 R3 K18 ["delete"]
       39 DUPCLOSURE                       R4 K19 [PROTO_6]
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R4 R3 K20 ["forEach"]
       43 DUPCLOSURE                       R4 K21 [PROTO_7]
       44 SETTABLEKS                       R4 R3 K22 ["has"]
       46 DUPCLOSURE                       R4 K23 [PROTO_8]
       47 SETTABLEKS                       R4 R3 K24 ["ipairs"]
       49 RETURN                           R3 1
