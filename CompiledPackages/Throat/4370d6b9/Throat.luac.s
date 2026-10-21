PROTO_0:
        0 LOADB                            R1 1
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K2 ["function"] ; [+36]
        8 LOADB                            R1 0
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R2 K1 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+28]
       16 LOADB                            R1 0
       17 FASTCALL1                        GETMETATABLE R0 ; [+3]
       18 MOVE                             R4 R0
       19 GETIMPORT                        R3 K5 [getmetatable]
       21 CALL                             R3 1 1
       22 FASTCALL1                        TYPEOF R3 ; [+2]
       23 GETIMPORT                        R2 K1 [typeof]
       25 CALL                             R2 1 1
       26 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+16]
       28 FASTCALL1                        GETMETATABLE R0 ; [+3]
       29 MOVE                             R4 R0
       30 GETIMPORT                        R3 K5 [getmetatable]
       32 CALL                             R3 1 1
       33 GETTABLEKS                       R3 R3 K6 ["__call"]
       35 FASTCALL1                        TYPEOF R3 ; [+2]
       36 GETIMPORT                        R2 K1 [typeof]
       38 CALL                             R2 1 1
       39 JUMPIFEQKS                       R2 K2 ["function"] ; [+2]
       41 LOADB                            R1 0 +1
       42 LOADB                            R1 1
       43 RETURN                           R1 1

PROTO_1:
        0 MOVE                             R1 R0
        1 GETUPVAL                         R2 0
        2 GETUPVAL                         R4 1
        3 FASTCALL1                        TABLE_UNPACK R4 ; [+2]
        4 GETIMPORT                        R3 K2 [table.unpack]
        6 CALL                             R3 1 -1
        7 CALL                             R2 -1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["new"]
        4 MOVE                             R4 R0
        5 GETUPVAL                         R5 2
        6 GETUPVAL                         R6 3
        7 CALL                             R3 3 -1
        8 NAMECALL                         R1 R1 K1 ["push"]
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       BIT32_BOR R3 K0 ; [+4]
        3 LOADK                            R4 K0 [0]
        4 GETIMPORT                        R2 K3 [bit32.bor]
        6 CALL                             R2 2 1
        7 JUMPIFEQKN                       R2 K0 [0] ; [+23]
        9 GETUPVAL                         R4 0
       10 FASTCALL2K                       BIT32_BOR R4 K0 ; [+4]
       12 LOADK                            R5 K0 [0]
       13 GETIMPORT                        R3 K3 [bit32.bor]
       15 CALL                             R3 2 1
       16 SUBK                             R2 R3 K4 [1]
       17 SETUPVAL                         R2 0
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K5 ["new"]
       21 NEWCLOSURE                       R3 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 CALL                             R2 1 1
       25 GETUPVAL                         R4 2
       26 GETUPVAL                         R5 3
       27 NAMECALL                         R2 R2 K6 ["andThen"]
       29 CALL                             R2 3 -1
       30 RETURN                           R2 -1
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R2 R2 K5 ["new"]
       34 NEWCLOSURE                       R3 P1
       35 CAPTURE                          UPVAL U4
       36 CAPTURE                          UPVAL U5
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R1
       39 CALL                             R2 1 1
       40 GETUPVAL                         R4 6
       41 NAMECALL                         R2 R2 K6 ["andThen"]
       43 CALL                             R2 2 -1
       44 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["resolve"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["fn"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["args"]
        9 FASTCALL1                        TABLE_UNPACK R3 ; [+2]
       10 GETIMPORT                        R2 K5 [table.unpack]
       12 CALL                             R2 1 -1
       13 CALL                             R1 -1 -1
       14 CALL                             R0 -1 1
       15 GETUPVAL                         R2 2
       16 GETUPVAL                         R3 3
       17 NAMECALL                         R0 R0 K6 ["andThen"]
       19 CALL                             R0 3 1
       20 LOADB                            R1 1
       21 RETURN                           R0 2

PROTO_5:
        0 GETIMPORT                        R1 K1 [pcall]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CALL                             R1 1 3
        8 JUMPIF                           R1 ; [+3]
        9 GETUPVAL                         R4 2
       10 MOVE                             R5 R2
       11 CALL                             R4 1 0
       12 JUMPIFNOT                        R3 ; [+1]
       13 RETURN                           R2 1
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 0
        2 GETIMPORT                        R1 K1 [error]
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["shift"]
        3 CALL                             R0 1 1
        4 JUMPIFEQKNIL                     R0 ; [+6]
        6 MOVE                             R3 R0
        7 NAMECALL                         R1 R0 K1 ["resolve"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R3 1
       12 FASTCALL2K                       BIT32_BOR R3 K3 ; [+4]
       14 LOADK                            R4 K3 [0]
       15 GETIMPORT                        R2 K6 [bit32.bor]
       17 CALL                             R2 2 1
       18 ADDK                             R1 R2 K2 [1]
       19 SETUPVAL                         R1 1
       20 RETURN                           R0 0

PROTO_9:
        0 LOADNIL                          R1
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K0 ["new"]
        7 CALL                             R5 0 1
        8 FASTCALL2K                       BIT32_BOR R0 K1 ; [+5]
       10 MOVE                             R7 R0
       11 LOADK                            R8 K1 [0]
       12 GETIMPORT                        R6 K4 [bit32.bor]
       14 CALL                             R6 2 1
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          REF R6
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          REF R2
       19 CAPTURE                          REF R3
       20 CAPTURE                          VAL R5
       21 CAPTURE                          UPVAL U2
       22 CAPTURE                          REF R1
       23 NEWCLOSURE                       R1 P1
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          REF R2
       26 CAPTURE                          REF R3
       27 NEWCLOSURE                       R2 P2
       28 CAPTURE                          REF R4
       29 NEWCLOSURE                       R3 P3
       30 CAPTURE                          REF R4
       31 NEWCLOSURE                       R4 P4
       32 CAPTURE                          VAL R5
       33 CAPTURE                          REF R6
       34 CLOSEUPVALS                      R1
       35 RETURN                           R7 1

PROTO_10:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 NEWTABLE                         R1 0 0
        8 LOADN                            R4 0
        9 LENGTH                           R5 R0
       10 SUBK                             R2 R5 K0 [1]
       11 LOADN                            R3 1
       12 FORNPREP                         R2
       13 ADDK                             R5 R4 K0 [1]
       14 ADDK                             R7 R4 K0 [1]
       15 GETTABLE                         R6 R0 R7
       16 SETTABLE                         R6 R1 R5
       17 FORNLOOP                         R2
       18 GETUPVAL                         R2 0
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R1
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 FASTCALL2K                       BIT32_BOR R0 K0 ; [+5]
        3 MOVE                             R4 R0
        4 LOADK                            R5 K0 [0]
        5 GETIMPORT                        R3 K3 [bit32.bor]
        7 CALL                             R3 2 1
        8 CALL                             R2 1 1
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R2
       11 CAPTURE                          VAL R1
       12 RETURN                           R3 1

PROTO_12:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 1
        3 MOVE                             R2 R0
        4 GETVARARGS                       R3 -1
        5 SETLIST                          R1 R2 -1 [1]
        7 LOADB                            R2 1
        8 FASTCALL1                        TYPEOF R0 ; [+3]
        9 MOVE                             R4 R0
       10 GETIMPORT                        R3 K1 [typeof]
       12 CALL                             R3 1 1
       13 JUMPIFEQKS                       R3 K2 ["function"] ; [+36]
       15 LOADB                            R2 0
       16 FASTCALL1                        TYPEOF R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K1 [typeof]
       20 CALL                             R3 1 1
       21 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+28]
       23 LOADB                            R2 0
       24 FASTCALL1                        GETMETATABLE R0 ; [+3]
       25 MOVE                             R5 R0
       26 GETIMPORT                        R4 K5 [getmetatable]
       28 CALL                             R4 1 1
       29 FASTCALL1                        TYPEOF R4 ; [+2]
       30 GETIMPORT                        R3 K1 [typeof]
       32 CALL                             R3 1 1
       33 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+16]
       35 FASTCALL1                        GETMETATABLE R0 ; [+3]
       36 MOVE                             R5 R0
       37 GETIMPORT                        R4 K5 [getmetatable]
       39 CALL                             R4 1 1
       40 GETTABLEKS                       R4 R4 K6 ["__call"]
       42 FASTCALL1                        TYPEOF R4 ; [+2]
       43 GETIMPORT                        R3 K1 [typeof]
       45 CALL                             R3 1 1
       46 JUMPIFEQKS                       R3 K2 ["function"] ; [+2]
       48 LOADB                            R2 0 +1
       49 LOADB                            R2 1
       50 JUMPIF                           R2 ; [+18]
       51 GETIMPORT                        R2 K8 [error]
       53 GETUPVAL                         R3 0
       54 GETTABLEKS                       R3 R3 K9 ["new"]
       56 LOADK                            R5 K10 ["Expected throat fn to be a function but got "]
       57 FASTCALL1                        TYPEOF R0 ; [+3]
       58 MOVE                             R8 R0
       59 GETIMPORT                        R7 K1 [typeof]
       61 CALL                             R7 1 1
       62 FASTCALL1                        TOSTRING R7 ; [+2]
       63 GETIMPORT                        R6 K12 [tostring]
       65 CALL                             R6 1 1
       66 CONCAT                           R4 R5 R6
       67 CALL                             R3 1 -1
       68 CALL                             R2 -1 0
       69 NEWTABLE                         R2 0 0
       71 LOADN                            R5 1
       72 LENGTH                           R6 R1
       73 SUBK                             R3 R6 K13 [1]
       74 LOADN                            R4 1
       75 FORNPREP                         R3
       76 ADDK                             R7 R5 K13 [1]
       77 GETTABLE                         R6 R1 R7
       78 SETTABLE                         R6 R2 R5
       79 FORNLOOP                         R3
       80 GETUPVAL                         R3 1
       81 MOVE                             R4 R0
       82 MOVE                             R5 R2
       83 CALL                             R3 2 -1
       84 RETURN                           R3 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       BIT32_BOR R0 K0 ; [+5]
        3 MOVE                             R3 R0
        4 LOADK                            R4 K0 [0]
        5 GETIMPORT                        R2 K3 [bit32.bor]
        7 CALL                             R2 2 1
        8 CALL                             R1 1 1
        9 NEWCLOSURE                       R2 P0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1

PROTO_14:
        0 MOVE                             R3 R0
        1 LOADB                            R2 1
        2 FASTCALL1                        TYPEOF R3 ; [+3]
        3 MOVE                             R5 R3
        4 GETIMPORT                        R4 K1 [typeof]
        6 CALL                             R4 1 1
        7 JUMPIFEQKS                       R4 K2 ["function"] ; [+36]
        9 LOADB                            R2 0
       10 FASTCALL1                        TYPEOF R3 ; [+3]
       11 MOVE                             R5 R3
       12 GETIMPORT                        R4 K1 [typeof]
       14 CALL                             R4 1 1
       15 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+28]
       17 LOADB                            R2 0
       18 FASTCALL1                        GETMETATABLE R3 ; [+3]
       19 MOVE                             R6 R3
       20 GETIMPORT                        R5 K5 [getmetatable]
       22 CALL                             R5 1 1
       23 FASTCALL1                        TYPEOF R5 ; [+2]
       24 GETIMPORT                        R4 K1 [typeof]
       26 CALL                             R4 1 1
       27 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+16]
       29 FASTCALL1                        GETMETATABLE R3 ; [+3]
       30 MOVE                             R6 R3
       31 GETIMPORT                        R5 K5 [getmetatable]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R5 R5 K6 ["__call"]
       36 FASTCALL1                        TYPEOF R5 ; [+2]
       37 GETIMPORT                        R4 K1 [typeof]
       39 CALL                             R4 1 1
       40 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
       42 LOADB                            R2 0 +1
       43 LOADB                            R2 1
       44 JUMPIFNOT                        R2 ; [+3]
       45 MOVE                             R2 R1
       46 MOVE                             R1 R0
       47 MOVE                             R0 R2
       48 FASTCALL1                        TYPEOF R0 ; [+3]
       49 MOVE                             R3 R0
       50 GETIMPORT                        R2 K1 [typeof]
       52 CALL                             R2 1 1
       53 JUMPIFEQKS                       R2 K7 ["number"] ; [+19]
       55 GETIMPORT                        R2 K9 [error]
       57 GETUPVAL                         R3 0
       58 GETTABLEKS                       R3 R3 K10 ["new"]
       60 LOADK                            R5 K11 ["Expected throat size to be a number but got "]
       61 FASTCALL1                        TYPEOF R0 ; [+3]
       62 MOVE                             R8 R0
       63 GETIMPORT                        R7 K1 [typeof]
       65 CALL                             R7 1 1
       66 FASTCALL1                        TOSTRING R7 ; [+2]
       67 GETIMPORT                        R6 K13 [tostring]
       69 CALL                             R6 1 1
       70 CONCAT                           R4 R5 R6
       71 CALL                             R3 1 -1
       72 CALL                             R2 -1 0
       73 JUMPIFEQKNIL                     R1 ; [+64]
       75 MOVE                             R3 R1
       76 LOADB                            R2 1
       77 FASTCALL1                        TYPEOF R3 ; [+3]
       78 MOVE                             R5 R3
       79 GETIMPORT                        R4 K1 [typeof]
       81 CALL                             R4 1 1
       82 JUMPIFEQKS                       R4 K2 ["function"] ; [+36]
       84 LOADB                            R2 0
       85 FASTCALL1                        TYPEOF R3 ; [+3]
       86 MOVE                             R5 R3
       87 GETIMPORT                        R4 K1 [typeof]
       89 CALL                             R4 1 1
       90 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+28]
       92 LOADB                            R2 0
       93 FASTCALL1                        GETMETATABLE R3 ; [+3]
       94 MOVE                             R6 R3
       95 GETIMPORT                        R5 K5 [getmetatable]
       97 CALL                             R5 1 1
       98 FASTCALL1                        TYPEOF R5 ; [+2]
       99 GETIMPORT                        R4 K1 [typeof]
      101 CALL                             R4 1 1
      102 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+16]
      104 FASTCALL1                        GETMETATABLE R3 ; [+3]
      105 MOVE                             R6 R3
      106 GETIMPORT                        R5 K5 [getmetatable]
      108 CALL                             R5 1 1
      109 GETTABLEKS                       R5 R5 K6 ["__call"]
      111 FASTCALL1                        TYPEOF R5 ; [+2]
      112 GETIMPORT                        R4 K1 [typeof]
      114 CALL                             R4 1 1
      115 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
      117 LOADB                            R2 0 +1
      118 LOADB                            R2 1
      119 JUMPIF                           R2 ; [+18]
      120 GETIMPORT                        R2 K9 [error]
      122 GETUPVAL                         R3 0
      123 GETTABLEKS                       R3 R3 K10 ["new"]
      125 LOADK                            R5 K14 ["Expected throat fn to be a function but got "]
      126 FASTCALL1                        TYPEOF R1 ; [+3]
      127 MOVE                             R8 R1
      128 GETIMPORT                        R7 K1 [typeof]
      130 CALL                             R7 1 1
      131 FASTCALL1                        TOSTRING R7 ; [+2]
      132 GETIMPORT                        R6 K13 [tostring]
      134 CALL                             R6 1 1
      135 CONCAT                           R4 R5 R6
      136 CALL                             R3 1 -1
      137 CALL                             R2 -1 0
      138 JUMPIFEQKNIL                     R1 ; [+67]
      140 MOVE                             R3 R1
      141 LOADB                            R2 1
      142 FASTCALL1                        TYPEOF R3 ; [+3]
      143 MOVE                             R5 R3
      144 GETIMPORT                        R4 K1 [typeof]
      146 CALL                             R4 1 1
      147 JUMPIFEQKS                       R4 K2 ["function"] ; [+36]
      149 LOADB                            R2 0
      150 FASTCALL1                        TYPEOF R3 ; [+3]
      151 MOVE                             R5 R3
      152 GETIMPORT                        R4 K1 [typeof]
      154 CALL                             R4 1 1
      155 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+28]
      157 LOADB                            R2 0
      158 FASTCALL1                        GETMETATABLE R3 ; [+3]
      159 MOVE                             R6 R3
      160 GETIMPORT                        R5 K5 [getmetatable]
      162 CALL                             R5 1 1
      163 FASTCALL1                        TYPEOF R5 ; [+2]
      164 GETIMPORT                        R4 K1 [typeof]
      166 CALL                             R4 1 1
      167 JUMPIFNOTEQKS                    R4 K3 ["table"] ; [+16]
      169 FASTCALL1                        GETMETATABLE R3 ; [+3]
      170 MOVE                             R6 R3
      171 GETIMPORT                        R5 K5 [getmetatable]
      173 CALL                             R5 1 1
      174 GETTABLEKS                       R5 R5 K6 ["__call"]
      176 FASTCALL1                        TYPEOF R5 ; [+2]
      177 GETIMPORT                        R4 K1 [typeof]
      179 CALL                             R4 1 1
      180 JUMPIFEQKS                       R4 K2 ["function"] ; [+2]
      182 LOADB                            R2 0 +1
      183 LOADB                            R2 1
      184 JUMPIFNOT                        R2 ; [+21]
      185 FASTCALL2K                       BIT32_BOR R0 K15 ; [+5]
      187 MOVE                             R4 R0
      188 LOADK                            R5 K15 [0]
      189 GETIMPORT                        R3 K18 [bit32.bor]
      191 CALL                             R3 2 1
      192 MOVE                             R4 R1
      193 GETUPVAL                         R5 1
      194 FASTCALL2K                       BIT32_BOR R3 K15 ; [+5]
      196 MOVE                             R7 R3
      197 LOADK                            R8 K15 [0]
      198 GETIMPORT                        R6 K18 [bit32.bor]
      200 CALL                             R6 2 1
      201 CALL                             R5 1 1
      202 NEWCLOSURE                       R2 P0
      203 CAPTURE                          VAL R5
      204 CAPTURE                          VAL R4
      205 RETURN                           R2 1
      206 FASTCALL2K                       BIT32_BOR R0 K15 ; [+5]
      208 MOVE                             R4 R0
      209 LOADK                            R5 K15 [0]
      210 GETIMPORT                        R3 K18 [bit32.bor]
      212 CALL                             R3 2 1
      213 GETUPVAL                         R4 1
      214 FASTCALL2K                       BIT32_BOR R3 K15 ; [+5]
      216 MOVE                             R6 R3
      217 LOADK                            R7 K15 [0]
      218 GETIMPORT                        R5 K18 [bit32.bor]
      220 CALL                             R5 2 1
      221 CALL                             R4 1 1
      222 NEWCLOSURE                       R2 P1
      223 CAPTURE                          UPVAL U0
      224 CAPTURE                          VAL R4
      225 RETURN                           R2 1

PROTO_15:
        0 NEWTABLE                         R4 4 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 SETTABLEKS                       R0 R3 K2 ["resolve"]
       10 SETTABLEKS                       R1 R3 K3 ["fn"]
       12 SETTABLEKS                       R2 R3 K4 ["args"]
       14 RETURN                           R3 1

PROTO_16:
        0 NEWTABLE                         R1 8 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 NEWTABLE                         R1 0 0
       10 SETTABLEKS                       R1 R0 K2 ["_s1"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K3 ["_s2"]
       16 NEWTABLE                         R1 0 0
       18 SETTABLEKS                       R1 R0 K4 ["_pushBlock"]
       20 GETTABLEKS                       R1 R0 K4 ["_pushBlock"]
       22 SETTABLEKS                       R1 R0 K5 ["_shiftBlock"]
       24 LOADN                            R1 0
       25 SETTABLEKS                       R1 R0 K6 ["_pushIndex"]
       27 LOADN                            R1 0
       28 SETTABLEKS                       R1 R0 K7 ["_shiftIndex"]
       30 RETURN                           R0 1

PROTO_17:
        0 GETTABLEKS                       R2 R0 K0 ["_pushIndex"]
        2 JUMPIFNOTEQKN                    R2 K1 [64] ; [+17]
        4 LOADN                            R2 0
        5 SETTABLEKS                       R2 R0 K0 ["_pushIndex"]
        7 NEWTABLE                         R2 0 0
        9 SETTABLEKS                       R2 R0 K2 ["_pushBlock"]
       11 GETTABLEKS                       R2 R0 K3 ["_s1"]
       13 GETTABLEKS                       R5 R0 K3 ["_s1"]
       15 LENGTH                           R4 R5
       16 ADDK                             R3 R4 K4 [1]
       17 GETTABLEKS                       R4 R0 K2 ["_pushBlock"]
       19 SETTABLE                         R4 R2 R3
       20 GETTABLEKS                       R2 R0 K2 ["_pushBlock"]
       22 GETTABLEKS                       R4 R0 K0 ["_pushIndex"]
       24 ADDK                             R3 R4 K4 [1]
       25 SETTABLE                         R1 R2 R3
       26 GETTABLEKS                       R2 R0 K0 ["_pushIndex"]
       28 ADDK                             R2 R2 K4 [1]
       29 SETTABLEKS                       R2 R0 K0 ["_pushIndex"]
       31 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R1 R0 K0 ["_shiftIndex"]
        2 JUMPIFNOTEQKN                    R1 K1 [64] ; [+33]
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K0 ["_shiftIndex"]
        7 GETTABLEKS                       R1 R0 K2 ["_s2"]
        9 LENGTH                           R2 R1
       10 JUMPIFNOTEQKN                    R2 K3 [0] ; [+19]
       12 GETTABLEKS                       R2 R0 K4 ["_s1"]
       14 LENGTH                           R3 R2
       15 JUMPIFNOTEQKN                    R3 K3 [0] ; [+3]
       17 LOADNIL                          R3
       18 RETURN                           R3 1
       19 SETTABLEKS                       R1 R0 K4 ["_s1"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K5 ["reverse"]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 1
       26 SETTABLEKS                       R3 R0 K2 ["_s2"]
       28 GETTABLEKS                       R1 R0 K2 ["_s2"]
       30 GETIMPORT                        R2 K8 [table.remove]
       32 MOVE                             R3 R1
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R0 K9 ["_shiftBlock"]
       36 GETTABLEKS                       R1 R0 K10 ["_pushBlock"]
       38 GETTABLEKS                       R2 R0 K9 ["_shiftBlock"]
       40 JUMPIFNOTEQ                      R1 R2 ; [+9]
       42 GETTABLEKS                       R1 R0 K11 ["_pushIndex"]
       44 GETTABLEKS                       R2 R0 K0 ["_shiftIndex"]
       46 JUMPIFNOTEQ                      R1 R2 ; [+3]
       48 LOADNIL                          R1
       49 RETURN                           R1 1
       50 GETTABLEKS                       R2 R0 K9 ["_shiftBlock"]
       52 GETTABLEKS                       R4 R0 K0 ["_shiftIndex"]
       54 ADDK                             R3 R4 K12 [1]
       55 GETTABLE                         R1 R2 R3
       56 GETTABLEKS                       R2 R0 K9 ["_shiftBlock"]
       58 GETTABLEKS                       R4 R0 K0 ["_shiftIndex"]
       60 ADDK                             R3 R4 K12 [1]
       61 LOADNIL                          R4
       62 SETTABLE                         R4 R2 R3
       63 GETTABLEKS                       R2 R0 K0 ["_shiftIndex"]
       65 ADDK                             R2 R2 K12 [1]
       66 SETTABLEKS                       R2 R0 K0 ["_shiftIndex"]
       68 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["Array"]
       12 GETTABLEKS                       R3 R1 K7 ["Error"]
       14 GETIMPORT                        R4 K4 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Promise"]
       18 CALL                             R4 1 1
       19 NEWTABLE                         R5 1 0
       21 NEWTABLE                         R6 0 0
       23 LOADNIL                          R7
       24 DUPCLOSURE                       R8 K9 [PROTO_0]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          REF R7
       27 CAPTURE                          VAL R4
       28 CAPTURE                          VAL R6
       29 DUPCLOSURE                       R10 K10 [PROTO_11]
       30 CAPTURE                          VAL R9
       31 DUPCLOSURE                       R11 K11 [PROTO_13]
       32 CAPTURE                          VAL R9
       33 CAPTURE                          VAL R3
       34 DUPCLOSURE                       R12 K12 [PROTO_14]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R9
       37 SETTABLEKS                       R12 R5 K13 ["default"]
       39 SETTABLEKS                       R6 R6 K14 ["__index"]
       41 DUPCLOSURE                       R12 K15 [PROTO_15]
       42 CAPTURE                          VAL R6
       43 SETTABLEKS                       R12 R6 K16 ["new"]
       45 NEWTABLE                         R12 0 0
       47 SETTABLEKS                       R12 R12 K14 ["__index"]
       49 DUPCLOSURE                       R13 K17 [PROTO_16]
       50 CAPTURE                          VAL R12
       51 SETTABLEKS                       R13 R12 K16 ["new"]
       53 DUPCLOSURE                       R13 K18 [PROTO_17]
       54 SETTABLEKS                       R13 R12 K19 ["push"]
       56 DUPCLOSURE                       R13 K20 [PROTO_18]
       57 CAPTURE                          VAL R2
       58 SETTABLEKS                       R13 R12 K21 ["shift"]
       60 MOVE                             R7 R12
       61 CLOSEUPVALS                      R7
       62 RETURN                           R5 1
