PROTO_0:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 JUMPIFNOTEQKNIL                  R0 ; [+6]
        4 NEWTABLE                         R1 0 0
        6 NEWTABLE                         R2 0 0
        8 JUMP                             ; [+100]
        9 GETUPVAL                         R3 0
       10 MOVE                             R4 R0
       11 CALL                             R3 1 1
       12 JUMPIFNOT                        R3 ; [+61]
       13 GETUPVAL                         R3 1
       14 JUMPIFNOT                        R3 ; [+24]
       15 LENGTH                           R3 R0
       16 LOADN                            R4 0
       17 JUMPIFNOTLT                      R4 R3 ; [+21]
       19 GETTABLEN                        R4 R0 1
       20 FASTCALL1                        TYPEOF R4 ; [+2]
       21 GETIMPORT                        R3 K1 [typeof]
       23 CALL                             R3 1 1
       24 JUMPIFEQKS                       R3 K2 ["table"] ; [+14]
       26 GETIMPORT                        R3 K4 [error]
       28 LOADK                            R5 K5 ["Value `"]
       29 GETTABLEN                        R10 R0 1
       30 FASTCALL1                        TYPEOF R10 ; [+2]
       31 GETIMPORT                        R9 K1 [typeof]
       33 CALL                             R9 1 1
       34 MOVE                             R6 R9
       35 LOADK                            R7 K6 ["` is not an entry object.\n "]
       36 LOADK                            R8 K7 ["Cannot create Map from {K, V} form, it must be { {K, V}... }"]
       37 CONCAT                           R4 R5 R8
       38 CALL                             R3 1 0
       39 GETIMPORT                        R3 K9 [table.create]
       41 LENGTH                           R4 R0
       42 CALL                             R3 1 1
       43 MOVE                             R1 R3
       44 NEWTABLE                         R2 0 0
       46 MOVE                             R3 R0
       47 LOADNIL                          R4
       48 LOADNIL                          R5
       49 FORGPREP                         R3
       50 GETTABLEN                        R8 R7 1
       51 GETUPVAL                         R9 1
       52 JUMPIFNOT                        R9 ; [+6]
       53 JUMPIFNOTEQKNIL                  R8 ; [+5]
       55 GETIMPORT                        R9 K4 [error]
       57 LOADK                            R10 K10 ["cannot create Map from a table that isn't an array."]
       58 CALL                             R9 1 0
       59 GETTABLEN                        R9 R7 2
       60 GETTABLE                         R10 R2 R8
       61 JUMPIFNOTEQKNIL                  R10 ; [+8]
       63 FASTCALL2                        TABLE_INSERT R1 R8 ; [+5]
       65 MOVE                             R11 R1
       66 MOVE                             R12 R8
       67 GETIMPORT                        R10 K12 [table.insert]
       69 CALL                             R10 2 0
       70 SETTABLE                         R9 R2 R8
       71 FORGLOOP                         R3 2 ; [-22]
       73 JUMP                             ; [+35]
       74 GETUPVAL                         R3 2
       75 MOVE                             R4 R0
       76 GETUPVAL                         R5 3
       77 CALL                             R3 2 1
       78 JUMPIFNOT                        R3 ; [+13]
       79 GETIMPORT                        R3 K14 [table.clone]
       81 GETTABLEKS                       R4 R0 K15 ["_array"]
       83 CALL                             R3 1 1
       84 MOVE                             R1 R3
       85 GETIMPORT                        R3 K14 [table.clone]
       87 GETTABLEKS                       R4 R0 K16 ["_map"]
       89 CALL                             R3 1 1
       90 MOVE                             R2 R3
       91 JUMP                             ; [+17]
       92 GETIMPORT                        R3 K4 [error]
       94 LOADK                            R4 K17 ["`%s` `%s` is not iterable, cannot make Map using it"]
       95 FASTCALL1                        TYPEOF R0 ; [+3]
       96 MOVE                             R7 R0
       97 GETIMPORT                        R6 K1 [typeof]
       99 CALL                             R6 1 1
      100 FASTCALL1                        TOSTRING R0 ; [+3]
      101 MOVE                             R8 R0
      102 GETIMPORT                        R7 K19 [tostring]
      104 CALL                             R7 1 1
      105 NAMECALL                         R4 R4 K20 ["format"]
      107 CALL                             R4 3 -1
      108 CALL                             R3 -1 0
      109 DUPTABLE                         R4 K22 [{"size", "_map", "_array"}]
      110 LENGTH                           R5 R1
      111 SETTABLEKS                       R5 R4 K21 ["size"]
      113 SETTABLEKS                       R2 R4 K16 ["_map"]
      115 SETTABLEKS                       R1 R4 K15 ["_array"]
      117 GETUPVAL                         R5 3
      118 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
      120 GETIMPORT                        R3 K24 [setmetatable]
      122 CALL                             R3 2 1
      123 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["_map"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+14]
        5 GETTABLEKS                       R4 R0 K2 ["size"]
        7 ADDK                             R3 R4 K1 [1]
        8 SETTABLEKS                       R3 R0 K2 ["size"]
       10 GETTABLEKS                       R4 R0 K3 ["_array"]
       12 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       14 MOVE                             R5 R1
       15 GETIMPORT                        R3 K6 [table.insert]
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R3 R0 K0 ["_map"]
       20 SETTABLE                         R2 R3 R1
       21 RETURN                           R0 1

PROTO_2:
        0 GETTABLEKS                       R3 R0 K0 ["_map"]
        2 GETTABLE                         R2 R3 R1
        3 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R1 K1 [table]
        2 LOADN                            R2 0
        3 SETTABLEKS                       R2 R0 K2 ["size"]
        5 GETTABLEKS                       R2 R1 K3 ["clear"]
        7 GETTABLEKS                       R3 R0 K4 ["_map"]
        9 CALL                             R2 1 0
       10 GETTABLEKS                       R2 R1 K3 ["clear"]
       12 GETTABLEKS                       R3 R0 K5 ["_array"]
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_map"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOTEQKNIL                  R2 ; [+3]
        5 LOADB                            R2 0
        6 RETURN                           R2 1
        7 GETTABLEKS                       R3 R0 K2 ["size"]
        9 SUBK                             R2 R3 K1 [1]
       10 SETTABLEKS                       R2 R0 K2 ["size"]
       12 GETTABLEKS                       R2 R0 K0 ["_map"]
       14 LOADNIL                          R3
       15 SETTABLE                         R3 R2 R1
       16 GETIMPORT                        R2 K5 [table.find]
       18 GETTABLEKS                       R3 R0 K6 ["_array"]
       20 MOVE                             R4 R1
       21 CALL                             R2 2 1
       22 JUMPIFNOT                        R2 ; [+6]
       23 GETIMPORT                        R3 K8 [table.remove]
       25 GETTABLEKS                       R4 R0 K6 ["_array"]
       27 MOVE                             R5 R2
       28 CALL                             R3 2 0
       29 LOADB                            R3 1
       30 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_map"]
        3 GETTABLE                         R1 R2 R0
        4 GETUPVAL                         R2 1
        5 JUMPIFEQKNIL                     R2 ; [+8]
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 1
        9 MOVE                             R4 R1
       10 MOVE                             R5 R0
       11 GETUPVAL                         R6 0
       12 CALL                             R2 4 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 2
       15 MOVE                             R3 R1
       16 MOVE                             R4 R0
       17 GETUPVAL                         R5 0
       18 CALL                             R2 3 0
       19 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 JUMPIFNOT                        R3 ; [+11]
        2 FASTCALL1                        TYPEOF R1 ; [+3]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R3 K1 [typeof]
        6 CALL                             R3 1 1
        7 JUMPIFEQKS                       R3 K2 ["function"] ; [+5]
        9 GETIMPORT                        R3 K4 [error]
       11 LOADK                            R4 K5 ["callback is not a function"]
       12 CALL                             R3 1 0
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R4 R0 K6 ["_array"]
       16 NEWCLOSURE                       R5 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 CALL                             R3 2 0
       21 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R4 R0 K0 ["_map"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFNOTEQKNIL                  R3 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["_array"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["_map"]
        3 GETTABLE                         R1 R2 R0
        4 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_array"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_11:
        0 NEWTABLE                         R1 0 2
        2 MOVE                             R2 R0
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K0 ["_map"]
        6 GETTABLE                         R3 R4 R0
        7 SETLIST                          R1 R2 2 [1]
        9 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_array"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+8]
        2 GETIMPORT                        R1 K1 [warn]
        4 GETIMPORT                        R2 K4 [debug.traceback]
        6 LOADK                            R3 K5 ["`for _,_ in myMap:ipairs() do` is deprecated and will be removed in a future release, please use `for _,_ in myMap do` instead\n"]
        7 LOADN                            R4 2
        8 CALL                             R2 2 -1
        9 CALL                             R1 -1 0
       10 GETIMPORT                        R1 K7 [ipairs]
       12 NAMECALL                         R2 R0 K8 ["entries"]
       14 CALL                             R2 1 -1
       15 CALL                             R1 -1 -1
       16 RETURN                           R1 -1

PROTO_14:
        0 GETIMPORT                        R1 K1 [next]
        2 NAMECALL                         R2 R0 K2 ["entries"]
        4 CALL                             R2 1 -1
        5 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        RAWGET R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K1 [rawget]
        6 CALL                             R2 2 1
        7 JUMPIFEQKNIL                     R2 ; [+2]
        9 RETURN                           R2 1
       10 GETUPVAL                         R3 1
       11 JUMPIFNOT                        R3 ; [+13]
       12 FASTCALL2K                       RAWGET R0 K2 ; [+5]
       14 MOVE                             R5 R0
       15 LOADK                            R6 K2 ["_map"]
       16 GETIMPORT                        R4 K1 [rawget]
       18 CALL                             R4 2 1
       19 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       21 LOADK                            R5 K3 ["Map has been corrupted, and is missing private state! Did you accidentally call table.clear() instead of map:clear()?"]
       22 GETIMPORT                        R3 K5 [assert]
       24 CALL                             R3 2 0
       25 GETUPVAL                         R4 0
       26 GETTABLEKS                       R3 R4 K6 ["get"]
       28 MOVE                             R4 R0
       29 MOVE                             R5 R1
       30 CALL                             R3 2 -1
       31 RETURN                           R3 -1

PROTO_16:
        0 MOVE                             R5 R1
        1 MOVE                             R6 R2
        2 NAMECALL                         R3 R0 K0 ["set"]
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [_G]
        3 GETTABLEKS                       R0 R1 K2 ["__DEV__"]
        5 GETIMPORT                        R3 K4 [script]
        7 GETTABLEKS                       R2 R3 K5 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["Parent"]
       11 GETTABLEKS                       R2 R1 K5 ["Parent"]
       13 GETIMPORT                        R3 K7 [require]
       15 GETTABLEKS                       R5 R1 K8 ["Array"]
       17 GETTABLEKS                       R4 R5 K9 ["forEach"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K7 [require]
       22 GETTABLEKS                       R6 R1 K8 ["Array"]
       24 GETTABLEKS                       R5 R6 K10 ["map"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K7 [require]
       29 GETTABLEKS                       R7 R1 K8 ["Array"]
       31 GETTABLEKS                       R6 R7 K11 ["isArray"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K7 [require]
       36 GETTABLEKS                       R7 R2 K12 ["InstanceOf"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K7 [require]
       41 GETTABLEKS                       R8 R2 K13 ["ES7Types"]
       43 CALL                             R7 1 1
       44 NEWTABLE                         R8 0 0
       46 DUPCLOSURE                       R9 K14 [PROTO_0]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R8
       51 SETTABLEKS                       R9 R8 K15 ["new"]
       53 DUPCLOSURE                       R9 K16 [PROTO_1]
       54 SETTABLEKS                       R9 R8 K17 ["set"]
       56 DUPCLOSURE                       R9 K18 [PROTO_2]
       57 SETTABLEKS                       R9 R8 K19 ["get"]
       59 DUPCLOSURE                       R9 K20 [PROTO_3]
       60 SETTABLEKS                       R9 R8 K21 ["clear"]
       62 DUPCLOSURE                       R9 K22 [PROTO_4]
       63 SETTABLEKS                       R9 R8 K23 ["delete"]
       65 DUPCLOSURE                       R9 K24 [PROTO_6]
       66 CAPTURE                          VAL R0
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R9 R8 K9 ["forEach"]
       70 DUPCLOSURE                       R9 K25 [PROTO_7]
       71 SETTABLEKS                       R9 R8 K26 ["has"]
       73 DUPCLOSURE                       R9 K27 [PROTO_8]
       74 SETTABLEKS                       R9 R8 K28 ["keys"]
       76 DUPCLOSURE                       R9 K29 [PROTO_10]
       77 CAPTURE                          VAL R4
       78 SETTABLEKS                       R9 R8 K30 ["values"]
       80 DUPCLOSURE                       R9 K31 [PROTO_12]
       81 CAPTURE                          VAL R4
       82 SETTABLEKS                       R9 R8 K32 ["entries"]
       84 DUPCLOSURE                       R9 K33 [PROTO_13]
       85 CAPTURE                          VAL R0
       86 SETTABLEKS                       R9 R8 K34 ["ipairs"]
       88 DUPCLOSURE                       R9 K35 [PROTO_14]
       89 SETTABLEKS                       R9 R8 K36 ["__iter"]
       91 DUPCLOSURE                       R9 K37 [PROTO_15]
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R9 R8 K38 ["__index"]
       96 DUPCLOSURE                       R9 K39 [PROTO_16]
       97 SETTABLEKS                       R9 R8 K40 ["__newindex"]
       99 RETURN                           R8 1
