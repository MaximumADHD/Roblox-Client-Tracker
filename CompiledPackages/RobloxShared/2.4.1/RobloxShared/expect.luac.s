PROTO_0:
        0 FASTCALL2                        RAWGET R0 R1 ; [+5]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 GETIMPORT                        R3 K1 [rawget]
        6 CALL                             R3 2 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

PROTO_1:
        0 FASTCALL2                        RAWGET R0 R1 ; [+5]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 GETIMPORT                        R3 K1 [rawget]
        6 CALL                             R3 2 1
        7 JUMPIFNOTEQKNIL                  R3 ; [+2]
        9 LOADB                            R2 0 +1
       10 LOADB                            R2 1
       11 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K1 [pairs]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP_NEXT                    R3
        7 GETTABLE                         R8 R0 R6
        8 JUMPIFEQKNIL                     R8 ; [+8]
       10 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       12 MOVE                             R9 R2
       13 MOVE                             R10 R6
       14 GETIMPORT                        R8 K4 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 1 ; [-11]
       19 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 JUMPIFEQ                         R3 R0 ; [+2]
        5 LOADB                            R2 0 +1
        6 LOADB                            R2 1
        7 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["asymmetricMatch"]
        3 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+23]
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [typeof]
        8 CALL                             R1 1 1
        9 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+17]
       11 GETIMPORT                        R1 K4 [pcall]
       13 NEWCLOSURE                       R2 P0
       14 CAPTURE                          VAL R0
       15 CALL                             R1 1 2
       16 JUMPIFNOT                        R1 ; [+10]
       17 GETUPVAL                         R4 1
       18 MOVE                             R5 R2
       19 CALL                             R4 1 1
       20 JUMPIFEQKS                       R4 K5 ["function"] ; [+2]
       22 LOADB                            R3 0 +1
       23 LOADB                            R3 1
       24 JUMPIFNOT                        R3 ; [+2]
       25 LOADB                            R3 1
       26 RETURN                           R3 1
       27 LOADB                            R1 0
       28 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 JUMPIFNOT                        R2 ; [+3]
        7 JUMPIFNOT                        R3 ; [+2]
        8 LOADNIL                          R4
        9 RETURN                           R4 1
       10 JUMPIFNOT                        R2 ; [+5]
       11 MOVE                             R6 R1
       12 NAMECALL                         R4 R0 K0 ["asymmetricMatch"]
       14 CALL                             R4 2 -1
       15 RETURN                           R4 -1
       16 JUMPIFNOT                        R3 ; [+5]
       17 MOVE                             R6 R0
       18 NAMECALL                         R4 R1 K0 ["asymmetricMatch"]
       20 CALL                             R4 2 -1
       21 RETURN                           R4 -1
       22 LOADNIL                          R4
       23 RETURN                           R4 1

PROTO_7:
        0 LOADB                            R6 1
        1 GETUPVAL                         R8 0
        2 MOVE                             R9 R0
        3 CALL                             R8 1 1
        4 GETUPVAL                         R9 0
        5 MOVE                             R10 R1
        6 CALL                             R9 1 1
        7 JUMPIFNOT                        R8 ; [+3]
        8 JUMPIFNOT                        R9 ; [+2]
        9 LOADNIL                          R7
       10 JUMP                             ; [+15]
       11 JUMPIFNOT                        R8 ; [+6]
       12 MOVE                             R12 R1
       13 NAMECALL                         R10 R0 K0 ["asymmetricMatch"]
       15 CALL                             R10 2 1
       16 MOVE                             R7 R10
       17 JUMP                             ; [+8]
       18 JUMPIFNOT                        R9 ; [+6]
       19 MOVE                             R12 R0
       20 NAMECALL                         R10 R1 K0 ["asymmetricMatch"]
       22 CALL                             R10 2 1
       23 MOVE                             R7 R10
       24 JUMP                             ; [+1]
       25 LOADNIL                          R7
       26 JUMPIFEQKNIL                     R7 ; [+2]
       28 RETURN                           R7 1
       29 GETIMPORT                        R8 K2 [ipairs]
       31 MOVE                             R9 R4
       32 CALL                             R8 1 3
       33 FORGPREP_INEXT                   R8
       34 MOVE                             R13 R12
       35 MOVE                             R14 R0
       36 MOVE                             R15 R1
       37 CALL                             R13 2 1
       38 JUMPIFEQKNIL                     R13 ; [+2]
       40 RETURN                           R13 1
       41 FORGLOOP                         R8 2 [inext] ; [-8]
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R8 R9 K3 ["is"]
       46 MOVE                             R9 R0
       47 MOVE                             R10 R1
       48 CALL                             R8 2 1
       49 JUMPIFNOT                        R8 ; [+2]
       50 LOADB                            R8 1
       51 RETURN                           R8 1
       52 GETUPVAL                         R8 2
       53 MOVE                             R9 R0
       54 CALL                             R8 1 1
       55 GETUPVAL                         R9 2
       56 MOVE                             R10 R1
       57 CALL                             R9 1 1
       58 JUMPIFEQ                         R8 R9 ; [+3]
       60 LOADB                            R9 0
       61 RETURN                           R9 1
       62 GETUPVAL                         R10 3
       63 GETTABLEKS                       R9 R10 K4 ["isArray"]
       65 MOVE                             R10 R0
       66 CALL                             R9 1 1
       67 GETUPVAL                         R11 3
       68 GETTABLEKS                       R10 R11 K4 ["isArray"]
       70 MOVE                             R11 R1
       71 CALL                             R10 1 1
       72 JUMPIFEQ                         R9 R10 ; [+3]
       74 LOADB                            R9 0
       75 RETURN                           R9 1
       76 JUMPIFEQKS                       R8 K5 ["boolean"] ; [+7]
       78 JUMPIFEQKS                       R8 K6 ["string"] ; [+5]
       80 JUMPIFEQKS                       R8 K7 ["number"] ; [+3]
       82 JUMPIFNOTEQKS                    R8 K8 ["userdata"] ; [+8]
       84 GETUPVAL                         R10 1
       85 GETTABLEKS                       R9 R10 K3 ["is"]
       87 MOVE                             R10 R0
       88 MOVE                             R11 R1
       89 CALL                             R9 2 -1
       90 RETURN                           R9 -1
       91 JUMPIFNOTEQKS                    R8 K9 ["DateTime"] ; [+6]
       93 JUMPIFEQ                         R0 R1 ; [+2]
       95 LOADB                            R9 0 +1
       96 LOADB                            R9 1
       97 RETURN                           R9 1
       98 JUMPIFNOTEQKS                    R8 K10 ["regexp"] ; [+16]
      100 FASTCALL1                        TOSTRING R0 ; [+3]
      101 MOVE                             R11 R0
      102 GETIMPORT                        R10 K12 [tostring]
      104 CALL                             R10 1 1
      105 FASTCALL1                        TOSTRING R1 ; [+3]
      106 MOVE                             R12 R1
      107 GETIMPORT                        R11 K12 [tostring]
      109 CALL                             R11 1 1
      110 JUMPIFEQ                         R10 R11 ; [+2]
      112 LOADB                            R9 0 +1
      113 LOADB                            R9 1
      114 RETURN                           R9 1
      115 FASTCALL1                        TYPEOF R0 ; [+3]
      116 MOVE                             R10 R0
      117 GETIMPORT                        R9 K14 [typeof]
      119 CALL                             R9 1 1
      120 JUMPIFNOTEQKS                    R9 K15 ["table"] ; [+8]
      122 FASTCALL1                        TYPEOF R1 ; [+3]
      123 MOVE                             R10 R1
      124 GETIMPORT                        R9 K14 [typeof]
      126 CALL                             R9 1 1
      127 JUMPIFEQKS                       R9 K15 ["table"] ; [+3]
      129 LOADB                            R9 0
      130 RETURN                           R9 1
      131 LENGTH                           R9 R2
      132 LOADN                            R10 0
      133 JUMPIFNOTLT                      R10 R9 ; [+17]
      135 GETTABLE                         R10 R2 R9
      136 JUMPIFNOTEQ                      R10 R0 ; [+7]
      138 GETTABLE                         R11 R3 R9
      139 JUMPIFEQ                         R11 R1 ; [+2]
      141 LOADB                            R10 0 +1
      142 LOADB                            R10 1
      143 RETURN                           R10 1
      144 GETTABLE                         R10 R3 R9
      145 JUMPIFNOTEQ                      R10 R1 ; [+3]
      147 LOADB                            R10 0
      148 RETURN                           R10 1
      149 SUBK                             R9 R9 K16 [1]
      150 JUMPBACK                         ; [-19]
      151 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
      153 MOVE                             R11 R2
      154 MOVE                             R12 R0
      155 GETIMPORT                        R10 K18 [table.insert]
      157 CALL                             R10 2 0
      158 FASTCALL2                        TABLE_INSERT R3 R1 ; [+5]
      160 MOVE                             R11 R3
      161 MOVE                             R12 R1
      162 GETIMPORT                        R10 K18 [table.insert]
      164 CALL                             R10 2 0
      165 GETUPVAL                         R11 3
      166 GETTABLEKS                       R10 R11 K4 ["isArray"]
      168 MOVE                             R11 R0
      169 CALL                             R10 1 1
      170 JUMPIFNOT                        R10 ; [+6]
      171 LENGTH                           R10 R0
      172 LENGTH                           R11 R1
      173 JUMPIFEQ                         R10 R11 ; [+3]
      175 LOADB                            R10 0
      176 RETURN                           R10 1
      177 GETUPVAL                         R10 4
      178 MOVE                             R11 R0
      179 MOVE                             R12 R5
      180 CALL                             R10 2 1
      181 LENGTH                           R11 R10
      182 GETUPVAL                         R13 4
      183 MOVE                             R14 R1
      184 MOVE                             R15 R5
      185 CALL                             R13 2 1
      186 LENGTH                           R12 R13
      187 JUMPIFEQ                         R12 R11 ; [+3]
      189 LOADB                            R12 0
      190 RETURN                           R12 1
      191 LOADN                            R12 0
      192 JUMPIFNOTLT                      R12 R11 ; [+28]
      194 GETTABLE                         R12 R10 R11
      195 FASTCALL2                        RAWGET R1 R12 ; [+5]
      197 MOVE                             R15 R1
      198 MOVE                             R16 R12
      199 GETIMPORT                        R14 K20 [rawget]
      201 CALL                             R14 2 1
      202 JUMPIFNOTEQKNIL                  R14 ; [+2]
      204 LOADB                            R13 0 +1
      205 LOADB                            R13 1
      206 JUMPIFNOT                        R13 ; [+8]
      207 GETUPVAL                         R13 5
      208 GETTABLE                         R14 R0 R12
      209 GETTABLE                         R15 R1 R12
      210 MOVE                             R16 R2
      211 MOVE                             R17 R3
      212 MOVE                             R18 R4
      213 MOVE                             R19 R5
      214 CALL                             R13 6 1
      215 MOVE                             R6 R13
      216 JUMPIF                           R6 ; [+2]
      217 LOADB                            R13 0
      218 RETURN                           R13 1
      219 SUBK                             R11 R11 K16 [1]
      220 JUMPBACK                         ; [-30]
      221 GETIMPORT                        R12 K22 [table.remove]
      223 MOVE                             R13 R2
      224 CALL                             R12 1 0
      225 GETIMPORT                        R12 K22 [table.remove]
      227 MOVE                             R13 R3
      228 CALL                             R12 1 0
      229 RETURN                           R6 1

PROTO_8:
        0 MOVE                             R4 R2
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R2 R4
        5 ORK                              R3 R3 K0 [False]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R0
        8 MOVE                             R6 R1
        9 NEWTABLE                         R7 0 0
       11 NEWTABLE                         R8 0 0
       13 MOVE                             R9 R2
       14 JUMPIFNOT                        R3 ; [+2]
       15 GETUPVAL                         R10 1
       16 JUMPIF                           R10 ; [+1]
       17 GETUPVAL                         R10 2
       18 CALL                             R4 6 -1
       19 RETURN                           R4 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 CALL                             R3 1 1
        3 NOT                              R2 R3
        4 JUMPIF                           R2 ; [+9]
        5 FASTCALL1                        TYPEOF R0 ; [+3]
        6 MOVE                             R4 R0
        7 GETIMPORT                        R3 K1 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFNOTEQKS                    R3 K2 ["table"] ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 JUMPIFNOT                        R2 ; [+2]
       15 LOADB                            R3 0
       16 RETURN                           R3 1
       17 GETTABLE                         R4 R0 R1
       18 JUMPIFNOTEQKNIL                  R4 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 RETURN                           R3 1

PROTO_10:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K1 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_11:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+10]
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K1 [typeof]
        7 CALL                             R2 1 1
        8 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 JUMPIFNOT                        R1 ; [+13]
       13 LOADB                            R1 1
       14 GETIMPORT                        R2 K4 [next]
       16 MOVE                             R3 R0
       17 CALL                             R2 1 1
       18 JUMPIFEQKNIL                     R2 ; [+7]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K5 ["isArray"]
       23 MOVE                             R3 R0
       24 CALL                             R2 1 1
       25 NOT                              R1 R2
       26 RETURN                           R1 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 NEWTABLE                         R5 0 1
        5 GETUPVAL                         R7 1
        6 FASTCALL1                        TABLE_UNPACK R7 ; [+2]
        7 GETIMPORT                        R6 K1 [unpack]
        9 CALL                             R6 1 -1
       10 SETLIST                          R5 R6 -1 [1]
       12 NEWTABLE                         R6 0 1
       14 GETUPVAL                         R8 2
       15 FASTCALL1                        TABLE_UNPACK R8 ; [+2]
       16 GETIMPORT                        R7 K1 [unpack]
       18 CALL                             R7 1 -1
       19 SETLIST                          R6 R7 -1 [1]
       21 CALL                             R2 4 -1
       22 RETURN                           R2 -1

PROTO_13:
        0 MOVE                             R4 R2
        1 JUMPIF                           R4 ; [+2]
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R2 R4
        5 MOVE                             R4 R3
        6 JUMPIF                           R4 ; [+2]
        7 NEWTABLE                         R4 0 0
        9 MOVE                             R3 R4
       10 GETUPVAL                         R4 0
       11 MOVE                             R5 R0
       12 CALL                             R4 1 1
       13 JUMPIFNOTEQKS                    R4 K0 ["set"] ; [+6]
       15 GETUPVAL                         R4 0
       16 MOVE                             R5 R1
       17 CALL                             R4 1 1
       18 JUMPIFEQKS                       R4 K0 ["set"] ; [+4]
       20 LOADNIL                          R4
       21 CLOSEUPVALS                      R2
       22 RETURN                           R4 1
       23 LENGTH                           R4 R2
       24 LOADN                            R5 0
       25 JUMPIFNOTLT                      R5 R4 ; [+13]
       27 GETTABLE                         R5 R2 R4
       28 JUMPIFNOTEQ                      R5 R0 ; [+8]
       30 GETTABLE                         R6 R3 R4
       31 JUMPIFEQ                         R6 R1 ; [+2]
       33 LOADB                            R5 0 +1
       34 LOADB                            R5 1
       35 CLOSEUPVALS                      R2
       36 RETURN                           R5 1
       37 SUBK                             R4 R4 K1 [1]
       38 JUMPBACK                         ; [-15]
       39 FASTCALL2                        TABLE_INSERT R2 R0 ; [+5]
       41 MOVE                             R6 R2
       42 MOVE                             R7 R0
       43 GETIMPORT                        R5 K4 [table.insert]
       45 CALL                             R5 2 0
       46 FASTCALL2                        TABLE_INSERT R3 R1 ; [+5]
       48 MOVE                             R6 R3
       49 MOVE                             R7 R1
       50 GETIMPORT                        R5 K4 [table.insert]
       52 CALL                             R5 2 0
       53 NEWCLOSURE                       R5 P0
       54 CAPTURE                          UPVAL U1
       55 CAPTURE                          REF R2
       56 CAPTURE                          REF R3
       57 GETTABLEKS                       R6 R0 K5 ["size"]
       59 JUMPIFEQKNIL                     R6 ; [+63]
       61 GETTABLEKS                       R6 R0 K5 ["size"]
       63 GETTABLEKS                       R7 R1 K5 ["size"]
       65 JUMPIFEQ                         R6 R7 ; [+4]
       67 LOADB                            R6 0
       68 CLOSEUPVALS                      R2
       69 RETURN                           R6 1
       70 GETUPVAL                         R7 0
       71 MOVE                             R8 R0
       72 CALL                             R7 1 1
       73 JUMPIFEQKS                       R7 K0 ["set"] ; [+2]
       75 LOADB                            R6 0 +1
       76 LOADB                            R6 1
       77 JUMPIFNOT                        R6 ; [+45]
       78 LOADB                            R6 1
       79 NAMECALL                         R7 R0 K6 ["ipairs"]
       81 CALL                             R7 1 3
       82 FORGPREP                         R7
       83 MOVE                             R14 R11
       84 NAMECALL                         R12 R1 K7 ["has"]
       86 CALL                             R12 2 1
       87 JUMPIF                           R12 ; [+23]
       88 LOADB                            R12 0
       89 NAMECALL                         R13 R1 K6 ["ipairs"]
       91 CALL                             R13 1 3
       92 FORGPREP                         R13
       93 GETUPVAL                         R18 2
       94 MOVE                             R19 R11
       95 MOVE                             R20 R17
       96 NEWTABLE                         R21 0 1
       98 MOVE                             R22 R5
       99 SETLIST                          R21 R22 1 [1]
      101 CALL                             R18 3 1
      102 JUMPIFNOTEQKB                    R18 TRUE ; [+2]
      104 LOADB                            R12 1
      105 FORGLOOP                         R13 2 ; [-13]
      107 JUMPIFNOTEQKB                    R12 FALSE ; [+3]
      109 LOADB                            R6 0
      110 JUMP                             ; [+2]
      111 FORGLOOP                         R7 2 ; [-29]
      113 GETIMPORT                        R7 K9 [table.remove]
      115 MOVE                             R8 R2
      116 CALL                             R7 1 0
      117 GETIMPORT                        R7 K9 [table.remove]
      119 MOVE                             R8 R3
      120 CALL                             R7 1 0
      121 CLOSEUPVALS                      R2
      122 RETURN                           R6 1
      123 LOADNIL                          R6
      124 CLOSEUPVALS                      R2
      125 RETURN                           R6 1

PROTO_14:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADB                            R1 0
        3 JUMPIFEQKNIL                     R2 ; [+10]
        5 FASTCALL1                        TYPEOF R2 ; [+3]
        6 MOVE                             R4 R2
        7 GETIMPORT                        R3 K1 [typeof]
        9 CALL                             R3 1 1
       10 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
       12 LOADB                            R1 0 +1
       13 LOADB                            R1 1
       14 JUMPIFNOT                        R1 ; [+13]
       15 LOADB                            R1 1
       16 GETIMPORT                        R3 K4 [next]
       18 MOVE                             R4 R2
       19 CALL                             R3 1 1
       20 JUMPIFEQKNIL                     R3 ; [+7]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R3 R4 K5 ["isArray"]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 1
       27 NOT                              R1 R3
       28 JUMPIFNOT                        R1 ; [+22]
       29 GETUPVAL                         R2 2
       30 GETUPVAL                         R4 0
       31 GETTABLE                         R3 R4 R0
       32 GETTABLE                         R1 R2 R3
       33 JUMPIFNOT                        R1 ; [+12]
       34 GETUPVAL                         R1 3
       35 GETUPVAL                         R3 4
       36 GETTABLE                         R2 R3 R0
       37 GETUPVAL                         R4 0
       38 GETTABLE                         R3 R4 R0
       39 NEWTABLE                         R4 0 1
       41 GETUPVAL                         R5 5
       42 SETLIST                          R4 R5 1 [1]
       44 CALL                             R1 3 -1
       45 RETURN                           R1 -1
       46 GETUPVAL                         R1 2
       47 GETUPVAL                         R3 0
       48 GETTABLE                         R2 R3 R0
       49 LOADB                            R3 1
       50 SETTABLE                         R3 R1 R2
       51 LOADB                            R1 0
       52 GETUPVAL                         R2 4
       53 JUMPIFEQKNIL                     R2 ; [+38]
       55 GETUPVAL                         R2 4
       56 GETUPVAL                         R4 6
       57 MOVE                             R5 R2
       58 CALL                             R4 1 1
       59 NOT                              R3 R4
       60 JUMPIF                           R3 ; [+9]
       61 FASTCALL1                        TYPEOF R2 ; [+3]
       62 MOVE                             R5 R2
       63 GETIMPORT                        R4 K1 [typeof]
       65 CALL                             R4 1 1
       66 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+2]
       68 LOADB                            R3 0 +1
       69 LOADB                            R3 1
       70 JUMPIFNOT                        R3 ; [+2]
       71 LOADB                            R1 0
       72 JUMP                             ; [+5]
       73 GETTABLE                         R4 R2 R0
       74 JUMPIFNOTEQKNIL                  R4 ; [+2]
       76 LOADB                            R1 0 +1
       77 LOADB                            R1 1
       78 JUMPIFNOT                        R1 ; [+13]
       79 GETUPVAL                         R1 3
       80 GETUPVAL                         R3 4
       81 GETTABLE                         R2 R3 R0
       82 GETUPVAL                         R4 0
       83 GETTABLE                         R3 R4 R0
       84 NEWTABLE                         R4 0 1
       86 GETUPVAL                         R5 7
       87 GETUPVAL                         R6 2
       88 CALL                             R5 1 -1
       89 SETLIST                          R4 R5 -1 [1]
       91 CALL                             R1 3 1
       92 GETUPVAL                         R2 2
       93 GETUPVAL                         R4 0
       94 GETTABLE                         R3 R4 R0
       95 LOADNIL                          R4
       96 SETTABLE                         R4 R2 R3
       97 RETURN                           R1 1

PROTO_15:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R1 ; [+10]
        3 FASTCALL1                        TYPEOF R1 ; [+3]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R3 K1 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFEQKS                       R3 K2 ["table"] ; [+2]
       10 LOADB                            R2 0 +1
       11 LOADB                            R2 1
       12 JUMPIFNOT                        R2 ; [+13]
       13 LOADB                            R2 1
       14 GETIMPORT                        R3 K4 [next]
       16 MOVE                             R4 R1
       17 CALL                             R3 1 1
       18 JUMPIFEQKNIL                     R3 ; [+7]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K5 ["isArray"]
       23 MOVE                             R4 R1
       24 CALL                             R3 1 1
       25 NOT                              R2 R3
       26 JUMPIF                           R2 ; [+2]
       27 LOADNIL                          R2
       28 RETURN                           R2 1
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R2 R3 K6 ["every"]
       32 GETUPVAL                         R4 1
       33 GETTABLEKS                       R3 R4 K7 ["keys"]
       35 MOVE                             R4 R1
       36 CALL                             R3 1 1
       37 NEWCLOSURE                       R4 P0
       38 CAPTURE                          VAL R1
       39 CAPTURE                          UPVAL U0
       40 CAPTURE                          UPVAL U2
       41 CAPTURE                          UPVAL U3
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U4
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U6
       46 CALL                             R2 2 -1
       47 RETURN                           R2 -1

PROTO_16:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          UPVAL U5
       12 RETURN                           R2 1

PROTO_17:
        0 DUPCLOSURE                       R2 K0 [PROTO_16]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 CAPTURE                          VAL R2
        7 NEWTABLE                         R4 0 0
        9 NEWCLOSURE                       R3 P1
       10 CAPTURE                          UPVAL U0
       11 CAPTURE                          UPVAL U1
       12 CAPTURE                          VAL R4
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          VAL R2
       17 MOVE                             R4 R0
       18 MOVE                             R5 R1
       19 CALL                             R3 2 -1
       20 RETURN                           R3 -1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R2
        3 CALL                             R4 1 1
        4 NOT                              R3 R4
        5 JUMPIF                           R3 ; [+9]
        6 FASTCALL1                        TYPEOF R2 ; [+3]
        7 MOVE                             R5 R2
        8 GETIMPORT                        R4 K1 [typeof]
       10 CALL                             R4 1 1
       11 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 JUMPIFNOT                        R3 ; [+2]
       16 LOADB                            R1 0
       17 RETURN                           R1 1
       18 GETTABLE                         R4 R2 R0
       19 JUMPIFNOTEQKNIL                  R4 ; [+2]
       21 LOADB                            R1 0 +1
       22 LOADB                            R1 1
       23 RETURN                           R1 1

PROTO_19:
        0 JUMPIFNOT                        R2 ; [+2]
        1 MOVE                             R3 R2
        2 JUMP                             ; [+2]
        3 NEWTABLE                         R3 0 0
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R4 R5 K0 ["isArray"]
        8 MOVE                             R5 R0
        9 CALL                             R4 1 1
       10 JUMPIFNOT                        R4 ; [+30]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K0 ["isArray"]
       14 MOVE                             R5 R1
       15 CALL                             R4 1 1
       16 JUMPIFNOT                        R4 ; [+113]
       17 LENGTH                           R4 R1
       18 LENGTH                           R5 R0
       19 JUMPIFNOTEQ                      R4 R5 ; [+110]
       21 NEWTABLE                         R4 0 0
       23 GETIMPORT                        R5 K2 [ipairs]
       25 MOVE                             R6 R1
       26 CALL                             R5 1 3
       27 FORGPREP_INEXT                   R5
       28 MOVE                             R11 R4
       29 GETUPVAL                         R12 1
       30 GETTABLE                         R13 R0 R8
       31 MOVE                             R14 R9
       32 CALL                             R12 2 -1
       33 FASTCALL                         TABLE_INSERT ; [+2]
       34 GETIMPORT                        R10 K5 [table.insert]
       36 CALL                             R10 -1 0
       37 FORGLOOP                         R5 2 [inext] ; [-10]
       39 RETURN                           R4 1
       40 RETURN                           R0 1
       41 GETUPVAL                         R4 2
       42 MOVE                             R5 R0
       43 CALL                             R4 1 1
       44 JUMPIFNOTEQKS                    R4 K6 ["DateTime"] ; [+2]
       46 RETURN                           R0 1
       47 LOADB                            R4 0
       48 JUMPIFEQKNIL                     R0 ; [+10]
       50 FASTCALL1                        TYPEOF R0 ; [+3]
       51 MOVE                             R6 R0
       52 GETIMPORT                        R5 K8 [typeof]
       54 CALL                             R5 1 1
       55 JUMPIFEQKS                       R5 K3 ["table"] ; [+2]
       57 LOADB                            R4 0 +1
       58 LOADB                            R4 1
       59 JUMPIFNOT                        R4 ; [+70]
       60 LOADB                            R4 0
       61 JUMPIFEQKNIL                     R1 ; [+10]
       63 FASTCALL1                        TYPEOF R1 ; [+3]
       64 MOVE                             R6 R1
       65 GETIMPORT                        R5 K8 [typeof]
       67 CALL                             R5 1 1
       68 JUMPIFEQKS                       R5 K3 ["table"] ; [+2]
       70 LOADB                            R4 0 +1
       71 LOADB                            R4 1
       72 JUMPIFNOT                        R4 ; [+57]
       73 GETUPVAL                         R4 3
       74 MOVE                             R5 R0
       75 MOVE                             R6 R1
       76 NEWTABLE                         R7 0 2
       78 GETUPVAL                         R8 4
       79 GETUPVAL                         R9 5
       80 SETLIST                          R7 R8 2 [1]
       82 CALL                             R4 3 1
       83 JUMPIFNOT                        R4 ; [+1]
       84 RETURN                           R1 1
       85 NEWTABLE                         R4 0 0
       87 SETTABLE                         R4 R3 R0
       88 GETIMPORT                        R5 K2 [ipairs]
       90 GETUPVAL                         R7 0
       91 GETTABLEKS                       R6 R7 K9 ["filter"]
       93 GETUPVAL                         R8 6
       94 GETTABLEKS                       R7 R8 K10 ["keys"]
       96 MOVE                             R8 R0
       97 CALL                             R7 1 1
       98 NEWCLOSURE                       R8 P0
       99 CAPTURE                          VAL R1
      100 CAPTURE                          UPVAL U7
      101 CALL                             R6 2 -1
      102 CALL                             R5 -1 3
      103 FORGPREP_INEXT                   R5
      104 GETTABLE                         R11 R0 R9
      105 GETTABLE                         R10 R3 R11
      106 JUMPIFEQKNIL                     R10 ; [+5]
      108 GETTABLE                         R11 R0 R9
      109 GETTABLE                         R10 R3 R11
      110 SETTABLE                         R10 R4 R9
      111 JUMP                             ; [+6]
      112 GETUPVAL                         R10 1
      113 GETTABLE                         R11 R0 R9
      114 GETTABLE                         R12 R1 R9
      115 MOVE                             R13 R3
      116 CALL                             R10 3 1
      117 SETTABLE                         R10 R4 R9
      118 FORGLOOP                         R5 2 [inext] ; [-15]
      120 GETUPVAL                         R7 6
      121 GETTABLEKS                       R6 R7 K10 ["keys"]
      123 MOVE                             R7 R4
      124 CALL                             R6 1 1
      125 LENGTH                           R5 R6
      126 LOADN                            R6 0
      127 JUMPIFNOTLT                      R6 R5 ; [+2]
      129 RETURN                           R4 1
      130 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R3 K4 [require]
        9 GETTABLEKS                       R4 R1 K5 ["JestGetType"]
       11 CALL                             R3 1 1
       12 GETTABLEKS                       R2 R3 K6 ["getType"]
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K7 ["LuauPolyfill"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R5 R3 K8 ["Boolean"]
       21 GETTABLEKS                       R4 R5 K9 ["toJSBoolean"]
       23 GETTABLEKS                       R5 R3 K10 ["Array"]
       25 GETTABLEKS                       R6 R3 K11 ["Object"]
       27 DUPCLOSURE                       R7 K12 [PROTO_0]
       28 DUPCLOSURE                       R8 K13 [PROTO_1]
       29 DUPCLOSURE                       R9 K14 [PROTO_2]
       30 DUPCLOSURE                       R10 K15 [PROTO_3]
       31 CAPTURE                          VAL R2
       32 DUPCLOSURE                       R11 K16 [PROTO_5]
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R2
       35 DUPCLOSURE                       R12 K17 [PROTO_6]
       36 CAPTURE                          VAL R11
       37 DUPCLOSURE                       R13 K18 [PROTO_7]
       38 CAPTURE                          VAL R11
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R2
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R9
       43 CAPTURE                          VAL R13
       44 DUPCLOSURE                       R14 K19 [PROTO_8]
       45 CAPTURE                          VAL R13
       46 CAPTURE                          VAL R7
       47 CAPTURE                          VAL R8
       48 DUPCLOSURE                       R15 K20 [PROTO_9]
       49 CAPTURE                          VAL R4
       50 DUPCLOSURE                       R16 K21 [PROTO_10]
       51 DUPCLOSURE                       R17 K22 [PROTO_11]
       52 CAPTURE                          VAL R5
       53 DUPCLOSURE                       R18 K23 [PROTO_13]
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R18
       56 CAPTURE                          VAL R14
       57 DUPCLOSURE                       R19 K24 [PROTO_17]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R14
       61 CAPTURE                          VAL R18
       62 CAPTURE                          VAL R4
       63 DUPCLOSURE                       R20 K25 [PROTO_19]
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R20
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R14
       68 CAPTURE                          VAL R18
       69 CAPTURE                          VAL R19
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R4
       72 DUPTABLE                         R21 K34 [{"equals", "isA", "isAsymmetric", "getObjectSubset", "iterableEquality", "subsetEquality", "isObjectWithKeys", "hasPropertyInObject"}]
       73 SETTABLEKS                       R14 R21 K26 ["equals"]
       75 SETTABLEKS                       R10 R21 K27 ["isA"]
       77 SETTABLEKS                       R11 R21 K28 ["isAsymmetric"]
       79 SETTABLEKS                       R20 R21 K29 ["getObjectSubset"]
       81 SETTABLEKS                       R18 R21 K30 ["iterableEquality"]
       83 SETTABLEKS                       R19 R21 K31 ["subsetEquality"]
       85 SETTABLEKS                       R17 R21 K32 ["isObjectWithKeys"]
       87 SETTABLEKS                       R15 R21 K33 ["hasPropertyInObject"]
       89 RETURN                           R21 1
