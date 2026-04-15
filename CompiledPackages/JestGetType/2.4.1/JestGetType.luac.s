PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K3 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQ                      R2 R3 ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 RETURN                           R1 1

PROTO_1:
        0 LOADB                            R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["test"]
        4 FASTCALL1                        TYPEOF R2 ; [+2]
        5 GETIMPORT                        R1 K2 [typeof]
        7 CALL                             R1 1 1
        8 JUMPIFNOTEQKS                    R1 K3 ["function"] ; [+12]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K4 ["exec"]
       13 FASTCALL1                        TYPEOF R2 ; [+2]
       14 GETIMPORT                        R1 K2 [typeof]
       16 CALL                             R1 1 1
       17 JUMPIFEQKS                       R1 K3 ["function"] ; [+2]
       19 LOADB                            R0 0 +1
       20 LOADB                            R0 1
       21 RETURN                           R0 1

PROTO_2:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R1 K0 ["nil"]
        3 RETURN                           R1 1
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K2 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K3 ["boolean"] ; [+3]
       11 LOADK                            R1 K3 ["boolean"]
       12 RETURN                           R1 1
       13 FASTCALL1                        TYPEOF R0 ; [+3]
       14 MOVE                             R2 R0
       15 GETIMPORT                        R1 K2 [typeof]
       17 CALL                             R1 1 1
       18 JUMPIFNOTEQKS                    R1 K4 ["function"] ; [+3]
       20 LOADK                            R1 K4 ["function"]
       21 RETURN                           R1 1
       22 FASTCALL1                        TYPEOF R0 ; [+3]
       23 MOVE                             R2 R0
       24 GETIMPORT                        R1 K2 [typeof]
       26 CALL                             R1 1 1
       27 JUMPIFNOTEQKS                    R1 K5 ["number"] ; [+3]
       29 LOADK                            R1 K5 ["number"]
       30 RETURN                           R1 1
       31 FASTCALL1                        TYPEOF R0 ; [+3]
       32 MOVE                             R2 R0
       33 GETIMPORT                        R1 K2 [typeof]
       35 CALL                             R1 1 1
       36 JUMPIFNOTEQKS                    R1 K6 ["string"] ; [+3]
       38 LOADK                            R1 K6 ["string"]
       39 RETURN                           R1 1
       40 FASTCALL1                        TYPEOF R0 ; [+3]
       41 MOVE                             R2 R0
       42 GETIMPORT                        R1 K2 [typeof]
       44 CALL                             R1 1 1
       45 JUMPIFNOTEQKS                    R1 K7 ["DateTime"] ; [+3]
       47 LOADK                            R1 K7 ["DateTime"]
       48 RETURN                           R1 1
       49 FASTCALL1                        TYPEOF R0 ; [+3]
       50 MOVE                             R2 R0
       51 GETIMPORT                        R1 K2 [typeof]
       53 CALL                             R1 1 1
       54 JUMPIFNOTEQKS                    R1 K8 ["userdata"] ; [+13]
       56 FASTCALL1                        TOSTRING R0 ; [+3]
       57 MOVE                             R2 R0
       58 GETIMPORT                        R1 K10 [tostring]
       60 CALL                             R1 1 1
       61 LOADK                            R3 K11 ["Symbol%(.*%)"]
       62 NAMECALL                         R1 R1 K12 ["match"]
       64 CALL                             R1 2 1
       65 JUMPIFNOT                        R1 ; [+2]
       66 LOADK                            R1 K13 ["symbol"]
       67 RETURN                           R1 1
       68 FASTCALL1                        TYPEOF R0 ; [+3]
       69 MOVE                             R2 R0
       70 GETIMPORT                        R1 K2 [typeof]
       72 CALL                             R1 1 1
       73 JUMPIFNOTEQKS                    R1 K14 ["table"] ; [+22]
       75 GETIMPORT                        R1 K16 [pcall]
       77 NEWCLOSURE                       R2 P0
       78 CAPTURE                          VAL R0
       79 CALL                             R1 1 2
       80 JUMPIFNOT                        R1 ; [+15]
       81 JUMPIFNOT                        R2 ; [+14]
       82 GETIMPORT                        R3 K18 [require]
       84 GETUPVAL                         R5 1
       85 GETTABLEKS                       R4 R5 K19 ["RegExp"]
       87 CALL                             R3 1 1
       88 SETUPVAL                         R3 0
       89 GETUPVAL                         R3 2
       90 MOVE                             R4 R0
       91 GETUPVAL                         R5 0
       92 CALL                             R3 2 1
       93 JUMPIFNOT                        R3 ; [+2]
       94 LOADK                            R3 K20 ["regexp"]
       95 RETURN                           R3 1
       96 GETUPVAL                         R1 2
       97 MOVE                             R2 R0
       98 GETUPVAL                         R3 3
       99 CALL                             R1 2 1
      100 JUMPIFNOT                        R1 ; [+2]
      101 LOADK                            R1 K21 ["error"]
      102 RETURN                           R1 1
      103 GETUPVAL                         R1 2
      104 MOVE                             R2 R0
      105 GETUPVAL                         R3 4
      106 CALL                             R1 2 1
      107 JUMPIFNOT                        R1 ; [+2]
      108 LOADK                            R1 K22 ["map"]
      109 RETURN                           R1 1
      110 GETUPVAL                         R1 2
      111 MOVE                             R2 R0
      112 GETUPVAL                         R3 5
      113 CALL                             R1 2 1
      114 JUMPIFNOT                        R1 ; [+2]
      115 LOADK                            R1 K23 ["set"]
      116 RETURN                           R1 1
      117 FASTCALL1                        TYPEOF R0 ; [+3]
      118 MOVE                             R2 R0
      119 GETIMPORT                        R1 K2 [typeof]
      121 CALL                             R1 1 1
      122 JUMPIFNOTEQKS                    R1 K14 ["table"] ; [+3]
      124 LOADK                            R1 K14 ["table"]
      125 RETURN                           R1 1
      126 FASTCALL1                        TYPE R0 ; [+3]
      127 MOVE                             R3 R0
      128 GETIMPORT                        R2 K25 [type]
      130 CALL                             R2 1 1
      131 FASTCALL1                        TYPEOF R0 ; [+3]
      132 MOVE                             R4 R0
      133 GETIMPORT                        R3 K2 [typeof]
      135 CALL                             R3 1 1
      136 JUMPIFNOTEQ                      R2 R3 ; [+2]
      138 LOADB                            R1 0 +1
      139 LOADB                            R1 1
      140 JUMPIFNOT                        R1 ; [+6]
      141 FASTCALL1                        TYPEOF R0 ; [+3]
      142 MOVE                             R2 R0
      143 GETIMPORT                        R1 K2 [typeof]
      145 CALL                             R1 1 1
      146 RETURN                           R1 1
      147 FASTCALL1                        TYPE R0 ; [+3]
      148 MOVE                             R2 R0
      149 GETIMPORT                        R1 K25 [type]
      151 CALL                             R1 1 1
      152 JUMPIFNOTEQKS                    R1 K8 ["userdata"] ; [+3]
      154 LOADK                            R1 K8 ["userdata"]
      155 RETURN                           R1 1
      156 FASTCALL1                        TYPEOF R0 ; [+3]
      157 MOVE                             R2 R0
      158 GETIMPORT                        R1 K2 [typeof]
      160 CALL                             R1 1 1
      161 JUMPIFNOTEQKS                    R1 K26 ["thread"] ; [+3]
      163 LOADK                            R1 K26 ["thread"]
      164 RETURN                           R1 1
      165 GETIMPORT                        R1 K27 [error]
      167 GETIMPORT                        R2 K29 [string.format]
      169 LOADK                            R3 K30 ["value of unknown type: %s (%s)"]
      170 FASTCALL1                        TYPEOF R0 ; [+3]
      171 MOVE                             R5 R0
      172 GETIMPORT                        R4 K2 [typeof]
      174 CALL                             R4 1 1
      175 FASTCALL1                        TOSTRING R0 ; [+3]
      176 MOVE                             R6 R0
      177 GETIMPORT                        R5 K10 [tostring]
      179 CALL                             R5 1 1
      180 CALL                             R2 3 -1
      181 CALL                             R1 -1 0
      182 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [typeof]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K2 ["table"] ; [+24]
        8 LOADB                            R1 0
        9 FASTCALL1                        TYPEOF R0 ; [+3]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R2 K1 [typeof]
       13 CALL                             R2 1 1
       14 JUMPIFEQKS                       R2 K3 ["function"] ; [+16]
       16 FASTCALL1                        TYPE R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K5 [type]
       20 CALL                             R3 1 1
       21 FASTCALL1                        TYPEOF R0 ; [+3]
       22 MOVE                             R5 R0
       23 GETIMPORT                        R4 K1 [typeof]
       25 CALL                             R4 1 1
       26 JUMPIFNOTEQ                      R3 R4 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 NOT                              R1 R2
       31 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
        9 CALL                             R1 1 1
       10 GETTABLEKS                       R2 R1 K6 ["Error"]
       12 GETTABLEKS                       R3 R1 K7 ["instanceof"]
       14 LOADNIL                          R4
       15 GETTABLEKS                       R5 R1 K8 ["Set"]
       17 GETTABLEKS                       R6 R1 K9 ["Map"]
       19 DUPCLOSURE                       R7 K10 [PROTO_0]
       20 NEWCLOSURE                       R8 P1
       21 CAPTURE                          REF R4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R6
       26 CAPTURE                          VAL R5
       27 DUPCLOSURE                       R9 K11 [PROTO_3]
       28 DUPTABLE                         R10 K15 [{"getType", "isPrimitive", "isRobloxBuiltin"}]
       29 SETTABLEKS                       R8 R10 K12 ["getType"]
       31 SETTABLEKS                       R9 R10 K13 ["isPrimitive"]
       33 SETTABLEKS                       R7 R10 K14 ["isRobloxBuiltin"]
       35 CLOSEUPVALS                      R4
       36 RETURN                           R10 1
