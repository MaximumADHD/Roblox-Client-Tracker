PROTO_0:
        0 JUMPIFNOTEQKB                    R0 FALSE ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_2:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADK                            R1 K1 ["called with 0 arguments"]
        4 RETURN                           R1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K2 ["join"]
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["map"]
       11 MOVE                             R3 R0
       12 DUPCLOSURE                       R4 K4 [PROTO_1]
       13 CAPTURE                          UPVAL U1
       14 CALL                             R2 2 1
       15 LOADK                            R3 K5 [", "]
       16 CALL                             R1 2 -1
       17 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isArray"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 1
        5 JUMPIFNOT                        R2 ; [+14]
        6 GETUPVAL                         R3 1
        7 LENGTH                           R2 R3
        8 JUMPIFNOTLE                      R1 R2 ; [+11]
       10 GETUPVAL                         R2 2
       11 GETUPVAL                         R4 1
       12 GETTABLE                         R3 R4 R1
       13 MOVE                             R4 R0
       14 CALL                             R2 2 1
       15 JUMPIFNOT                        R2 ; [+4]
       16 GETUPVAL                         R2 3
       17 MOVE                             R3 R0
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R2 4
       21 MOVE                             R3 R0
       22 CALL                             R2 1 -1
       23 RETURN                           R2 -1

PROTO_4:
        0 LENGTH                           R2 R0
        1 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        3 LOADK                            R2 K1 ["called with 0 arguments"]
        4 RETURN                           R2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["join"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["map"]
       11 MOVE                             R4 R0
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R1
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          UPVAL U2
       17 CAPTURE                          UPVAL U3
       18 CALL                             R3 2 1
       19 LOADK                            R4 K4 [", "]
       20 CALL                             R2 2 -1
       21 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 -1
        5 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 NEWTABLE                         R5 0 1
        5 GETUPVAL                         R6 1
        6 SETLIST                          R5 R6 1 [1]
        8 CALL                             R2 3 -1
        9 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 -1
        4 RETURN                           R2 -1

PROTO_8:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R1 K0 ["type"]
        3 JUMPIFNOTEQKS                    R3 K1 ["return"] ; [+6]
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R0
        7 GETTABLEKS                       R4 R1 K2 ["value"]
        9 CALL                             R2 2 1
       10 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["return"] ; [+3]
        4 ADDK                             R2 R0 K2 [1]
        5 RETURN                           R2 1
        6 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["reduce"]
        3 MOVE                             R2 R0
        4 DUPCLOSURE                       R3 K1 [PROTO_9]
        5 LOADN                            R4 0
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_11:
        0 GETIMPORT                        R2 K2 [string.format]
        2 LOADK                            R3 K3 ["\nNumber of returns: %s"]
        3 GETUPVAL                         R4 0
        4 MOVE                             R5 R0
        5 CALL                             R4 1 -1
        6 CALL                             R2 -1 1
        7 JUMPIFEQ                         R1 R0 ; [+10]
        9 MOVE                             R3 R2
       10 GETIMPORT                        R4 K2 [string.format]
       12 LOADK                            R5 K4 ["\nNumber of calls:   %s"]
       13 GETUPVAL                         R6 0
       14 MOVE                             R7 R1
       15 CALL                             R6 1 -1
       16 CALL                             R4 -1 1
       17 CONCAT                           R2 R3 R4
       18 RETURN                           R2 1

PROTO_12:
        0 LOADNIL                          R2
        1 JUMPIFNOT                        R1 ; [+17]
        2 LOADK                            R3 K0 ["->"]
        3 GETIMPORT                        R4 K3 [string.rep]
        5 LOADK                            R5 K4 [" "]
        6 LOADN                            R7 0
        7 GETUPVAL                         R10 0
        8 SUBK                             R9 R10 K5 [3]
        9 LENGTH                           R10 R0
       10 SUB                              R8 R9 R10
       11 FASTCALL2                        MATH_MAX R7 R8 ; [+3]
       13 GETIMPORT                        R6 K8 [math.max]
       15 CALL                             R6 2 1
       16 CALL                             R4 2 1
       17 CONCAT                           R2 R3 R4
       18 JUMP                             ; [+15]
       19 GETIMPORT                        R3 K3 [string.rep]
       21 LOADK                            R4 K4 [" "]
       22 LOADN                            R6 0
       23 GETUPVAL                         R9 0
       24 SUBK                             R8 R9 K9 [1]
       25 LENGTH                           R9 R0
       26 SUB                              R7 R8 R9
       27 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       29 GETIMPORT                        R5 K8 [math.max]
       31 CALL                             R5 2 1
       32 CALL                             R3 2 1
       33 MOVE                             R2 R3
       34 MOVE                             R4 R2
       35 MOVE                             R5 R0
       36 GETUPVAL                         R6 1
       37 CONCAT                           R3 R4 R6
       38 RETURN                           R3 1

PROTO_13:
        0 LOADK                            R3 K0 [":"]
        1 NAMECALL                         R1 R0 K1 ["find"]
        3 CALL                             R1 2 1
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R0 K2 ["sub"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R2
       11 RETURN                           R3 1

PROTO_14:
        0 GETTABLEN                        R2 R1 1
        1 GETTABLEN                        R3 R1 2
        2 MOVE                             R5 R0
        3 GETUPVAL                         R9 0
        4 FASTCALL1                        TOSTRING R2 ; [+3]
        5 MOVE                             R11 R2
        6 GETIMPORT                        R10 K1 [tostring]
        8 CALL                             R10 1 1
        9 GETUPVAL                         R12 1
       10 JUMPIFEQ                         R2 R12 ; [+2]
       12 LOADB                            R11 0 +1
       13 LOADB                            R11 1
       14 CALL                             R9 2 1
       15 MOVE                             R6 R9
       16 GETUPVAL                         R9 2
       17 MOVE                             R10 R3
       18 GETUPVAL                         R11 3
       19 CALL                             R9 2 1
       20 MOVE                             R7 R9
       21 LOADK                            R8 K2 ["\n"]
       22 CONCAT                           R4 R5 R8
       23 RETURN                           R4 1

PROTO_15:
        0 LENGTH                           R4 R1
        1 JUMPIFNOTEQKN                    R4 K0 [0] ; [+3]
        3 LOADK                            R4 K1 [""]
        4 RETURN                           R4 1
        5 JUMPIFNOT                        R2 ; [+9]
        6 LOADK                            R5 K2 ["Received:       "]
        7 GETUPVAL                         R8 0
        8 GETTABLEN                        R9 R1 1
        9 MOVE                             R10 R0
       10 CALL                             R8 2 1
       11 MOVE                             R6 R8
       12 LOADK                            R7 K3 ["\n"]
       13 CONCAT                           R4 R5 R7
       14 RETURN                           R4 1
       15 GETUPVAL                         R4 1
       16 LOADK                            R5 K2 ["Received:       "]
       17 CALL                             R4 1 1
       18 LOADK                            R6 K4 ["Received\n"]
       19 GETUPVAL                         R8 2
       20 GETTABLEKS                       R7 R8 K5 ["reduce"]
       22 MOVE                             R8 R1
       23 NEWCLOSURE                       R9 P0
       24 CAPTURE                          VAL R4
       25 CAPTURE                          VAL R3
       26 CAPTURE                          UPVAL U0
       27 CAPTURE                          VAL R0
       28 LOADK                            R10 K1 [""]
       29 CALL                             R7 3 1
       30 CONCAT                           R5 R6 R7
       31 RETURN                           R5 1

PROTO_16:
        0 GETTABLEN                        R2 R1 1
        1 GETTABLEN                        R3 R1 2
        2 GETUPVAL                         R4 0
        3 FASTCALL1                        TOSTRING R2 ; [+3]
        4 MOVE                             R6 R2
        5 GETIMPORT                        R5 K1 [tostring]
        7 CALL                             R5 1 1
        8 GETUPVAL                         R7 1
        9 JUMPIFEQ                         R2 R7 ; [+2]
       11 LOADB                            R6 0 +1
       12 LOADB                            R6 1
       13 CALL                             R4 2 1
       14 GETUPVAL                         R5 1
       15 JUMPIFEQ                         R2 R5 ; [+4]
       17 GETUPVAL                         R5 1
       18 JUMPIFNOTEQKNIL                  R5 ; [+37]
       20 GETUPVAL                         R5 2
       21 GETUPVAL                         R6 3
       22 MOVE                             R7 R3
       23 CALL                             R5 2 1
       24 JUMPIFNOT                        R5 ; [+31]
       25 MOVE                             R6 R0
       26 LOADN                            R14 1
       27 LOADK                            R18 K3 [":"]
       28 NAMECALL                         R16 R4 K4 ["find"]
       30 CALL                             R16 2 1
       31 SUBK                             R15 R16 K2 [1]
       32 NAMECALL                         R12 R4 K5 ["sub"]
       34 CALL                             R12 3 1
       35 MOVE                             R7 R12
       36 LOADK                            R8 K6 ["\n"]
       37 LOADK                            R17 K3 [":"]
       38 NAMECALL                         R15 R4 K4 ["find"]
       40 CALL                             R15 2 1
       41 ADDK                             R14 R15 K2 [1]
       42 LENGTH                           R15 R4
       43 NAMECALL                         R12 R4 K5 ["sub"]
       45 CALL                             R12 3 1
       46 MOVE                             R9 R12
       47 GETUPVAL                         R12 4
       48 GETUPVAL                         R13 3
       49 MOVE                             R14 R3
       50 GETUPVAL                         R15 5
       51 CALL                             R12 3 1
       52 MOVE                             R10 R12
       53 LOADK                            R11 K6 ["\n"]
       54 CONCAT                           R5 R6 R11
       55 RETURN                           R5 1
       56 MOVE                             R6 R0
       57 MOVE                             R7 R4
       58 GETUPVAL                         R10 6
       59 MOVE                             R11 R3
       60 GETUPVAL                         R12 3
       61 CALL                             R10 2 1
       62 MOVE                             R8 R10
       63 LOADK                            R9 K6 ["\n"]
       64 CONCAT                           R5 R6 R9
       65 RETURN                           R5 1

PROTO_17:
        0 GETIMPORT                        R5 K2 [string.format]
        2 LOADK                            R6 K3 ["Expected: %s\n"]
        3 GETUPVAL                         R7 0
        4 MOVE                             R8 R0
        5 CALL                             R7 1 -1
        6 CALL                             R5 -1 1
        7 LENGTH                           R6 R1
        8 JUMPIFNOTEQKN                    R6 K4 [0] ; [+2]
       10 RETURN                           R5 1
       11 JUMPIFNOT                        R3 ; [+191]
       12 JUMPIFEQKN                       R4 K5 [1] ; [+3]
       14 JUMPIFNOTEQKNIL                  R4 ; [+188]
       16 GETTABLEN                        R7 R1 1
       17 GETTABLEN                        R6 R7 2
       18 GETUPVAL                         R7 1
       19 MOVE                             R8 R0
       20 MOVE                             R9 R6
       21 CALL                             R7 2 1
       22 JUMPIFNOT                        R7 ; [+170]
       23 NEWTABLE                         R7 0 3
       25 GETUPVAL                         R8 2
       26 LOADK                            R9 K6 ["- Expected"]
       27 CALL                             R8 1 1
       28 GETUPVAL                         R9 3
       29 LOADK                            R10 K7 ["+ Received"]
       30 CALL                             R9 1 1
       31 LOADK                            R10 K8 [""]
       32 SETLIST                          R7 R8 3 [1]
       34 LENGTH                           R9 R0
       35 LENGTH                           R10 R6
       36 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       38 GETIMPORT                        R8 K11 [math.max]
       40 CALL                             R8 2 1
       41 LOADN                            R11 1
       42 MOVE                             R9 R8
       43 LOADN                            R10 1
       44 FORNPREP                         R9
       45 MOVE                             R12 R11
       46 LOADB                            R13 0
       47 LENGTH                           R14 R0
       48 JUMPIFNOTLE                      R12 R14 ; [+94]
       50 LENGTH                           R14 R6
       51 JUMPIFNOTLE                      R12 R14 ; [+91]
       53 GETUPVAL                         R14 4
       54 GETTABLE                         R15 R0 R12
       55 GETTABLE                         R16 R6 R12
       56 CALL                             R14 2 1
       57 JUMPIFNOT                        R14 ; [+14]
       58 LOADK                            R17 K12 ["  "]
       59 GETUPVAL                         R20 5
       60 GETTABLE                         R21 R6 R12
       61 CALL                             R20 1 1
       62 MOVE                             R18 R20
       63 LOADK                            R19 K13 [","]
       64 CONCAT                           R16 R17 R19
       65 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
       67 MOVE                             R15 R7
       68 GETIMPORT                        R14 K16 [table.insert]
       70 CALL                             R14 2 0
       71 LOADB                            R13 1
       72 JUMPIF                           R13 ; [+70]
       73 GETUPVAL                         R14 6
       74 GETTABLE                         R15 R0 R12
       75 GETTABLE                         R16 R6 R12
       76 CALL                             R14 2 1
       77 JUMPIFNOT                        R14 ; [+65]
       78 GETUPVAL                         R14 7
       79 GETTABLE                         R15 R0 R12
       80 GETTABLE                         R16 R6 R12
       81 NEWTABLE                         R17 0 1
       83 MOVE                             R18 R2
       84 SETLIST                          R17 R18 1 [1]
       86 CALL                             R14 3 1
       87 FASTCALL1                        TYPEOF R14 ; [+3]
       88 MOVE                             R16 R14
       89 GETIMPORT                        R15 K18 [typeof]
       91 CALL                             R15 1 1
       92 JUMPIFNOTEQKS                    R15 K0 ["string"] ; [+50]
       94 LOADK                            R17 K19 ["%- Expected"]
       95 NAMECALL                         R15 R14 K20 ["find"]
       97 CALL                             R15 2 1
       98 JUMPIFNOT                        R15 ; [+44]
       99 LOADK                            R17 K21 ["%+ Received"]
      100 NAMECALL                         R15 R14 K20 ["find"]
      102 CALL                             R15 2 1
      103 JUMPIFNOT                        R15 ; [+39]
      104 NEWTABLE                         R15 0 0
      106 LOADK                            R18 K22 ["[^\n]+"]
      107 NAMECALL                         R16 R14 K23 ["gmatch"]
      109 CALL                             R16 2 3
      110 FORGPREP                         R16
      111 FASTCALL2                        TABLE_INSERT R15 R19 ; [+5]
      113 MOVE                             R22 R15
      114 MOVE                             R23 R19
      115 GETIMPORT                        R21 K16 [table.insert]
      117 CALL                             R21 2 0
      118 FORGLOOP                         R16 1 ; [-8]
      120 GETUPVAL                         R17 8
      121 GETTABLEKS                       R16 R17 K24 ["slice"]
      123 MOVE                             R17 R15
      124 LOADN                            R18 3
      125 CALL                             R16 2 1
      126 MOVE                             R15 R16
      127 GETUPVAL                         R22 8
      128 GETTABLEKS                       R21 R22 K25 ["join"]
      130 MOVE                             R22 R15
      131 LOADK                            R23 K26 ["\n"]
      132 CALL                             R21 2 1
      133 MOVE                             R19 R21
      134 LOADK                            R20 K13 [","]
      135 CONCAT                           R18 R19 R20
      136 FASTCALL2                        TABLE_INSERT R7 R18 ; [+4]
      138 MOVE                             R17 R7
      139 GETIMPORT                        R16 K16 [table.insert]
      141 CALL                             R16 2 0
      142 LOADB                            R13 1
      143 JUMPIF                           R13 ; [+38]
      144 LENGTH                           R14 R0
      145 JUMPIFNOTLE                      R12 R14 ; [+17]
      147 GETUPVAL                         R19 2
      148 LOADK                            R21 K27 ["- "]
      149 GETUPVAL                         R22 9
      150 GETTABLE                         R23 R0 R12
      151 CALL                             R22 1 1
      152 CONCAT                           R20 R21 R22
      153 CALL                             R19 1 1
      154 MOVE                             R17 R19
      155 LOADK                            R18 K13 [","]
      156 CONCAT                           R16 R17 R18
      157 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
      159 MOVE                             R15 R7
      160 GETIMPORT                        R14 K16 [table.insert]
      162 CALL                             R14 2 0
      163 LENGTH                           R14 R6
      164 JUMPIFNOTLE                      R12 R14 ; [+17]
      166 GETUPVAL                         R19 3
      167 LOADK                            R21 K28 ["+ "]
      168 GETUPVAL                         R22 9
      169 GETTABLE                         R23 R6 R12
      170 CALL                             R22 1 1
      171 CONCAT                           R20 R21 R22
      172 CALL                             R19 1 1
      173 MOVE                             R17 R19
      174 LOADK                            R18 K13 [","]
      175 CONCAT                           R16 R17 R18
      176 FASTCALL2                        TABLE_INSERT R7 R16 ; [+4]
      178 MOVE                             R15 R7
      179 GETIMPORT                        R14 K16 [table.insert]
      181 CALL                             R14 2 0
      182 ADDK                             R12 R12 K5 [1]
      183 FORNLOOP                         R9
      184 GETIMPORT                        R12 K30 [table.concat]
      186 MOVE                             R13 R7
      187 LOADK                            R14 K26 ["\n"]
      188 CALL                             R12 2 1
      189 MOVE                             R10 R12
      190 LOADK                            R11 K26 ["\n"]
      191 CONCAT                           R9 R10 R11
      192 RETURN                           R9 1
      193 MOVE                             R8 R5
      194 LOADK                            R9 K31 ["Received: "]
      195 GETUPVAL                         R12 10
      196 MOVE                             R13 R6
      197 MOVE                             R14 R0
      198 CALL                             R12 2 1
      199 MOVE                             R10 R12
      200 LOADK                            R11 K26 ["\n"]
      201 CONCAT                           R7 R8 R11
      202 RETURN                           R7 1
      203 GETUPVAL                         R6 11
      204 LOADK                            R7 K31 ["Received: "]
      205 CALL                             R6 1 1
      206 MOVE                             R8 R5
      207 LOADK                            R9 K32 ["Received\n"]
      208 GETUPVAL                         R11 8
      209 GETTABLEKS                       R10 R11 K33 ["reduce"]
      211 MOVE                             R11 R1
      212 NEWCLOSURE                       R12 P0
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R4
      215 CAPTURE                          UPVAL U1
      216 CAPTURE                          VAL R0
      217 CAPTURE                          UPVAL U12
      218 CAPTURE                          VAL R2
      219 CAPTURE                          UPVAL U10
      220 LOADK                            R13 K8 [""]
      221 CALL                             R10 3 1
      222 CONCAT                           R7 R8 R10
      223 RETURN                           R7 1

PROTO_18:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CONCAT                           R1 R2 R3
        3 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LENGTH                           R1 R2
        3 JUMPIFNOTLE                      R0 R1 ; [+7]
        5 LOADK                            R1 K0 ["  "]
        6 GETUPVAL                         R2 2
        7 GETUPVAL                         R3 3
        8 CALL                             R2 1 1
        9 CONCAT                           R0 R1 R2
       10 RETURN                           R0 1
       11 GETUPVAL                         R0 4
       12 LOADK                            R2 K1 ["+ "]
       13 GETUPVAL                         R3 5
       14 GETUPVAL                         R4 3
       15 CALL                             R3 1 1
       16 CONCAT                           R1 R2 R3
       17 CALL                             R0 1 -1
       18 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R3 0
        1 LENGTH                           R2 R3
        2 JUMPIFNOTLE                      R1 R2 ; [+85]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R4 0
        6 GETTABLE                         R3 R4 R1
        7 MOVE                             R4 R0
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+9]
       10 GETUPVAL                         R3 2
       11 LOADK                            R4 K0 ["  "]
       12 GETUPVAL                         R7 3
       13 MOVE                             R8 R0
       14 CALL                             R7 1 1
       15 MOVE                             R5 R7
       16 LOADK                            R6 K1 [","]
       17 CONCAT                           R2 R3 R6
       18 RETURN                           R2 1
       19 GETUPVAL                         R2 4
       20 GETUPVAL                         R4 0
       21 GETTABLE                         R3 R4 R1
       22 MOVE                             R4 R0
       23 CALL                             R2 2 1
       24 JUMPIFNOT                        R2 ; [+63]
       25 GETUPVAL                         R2 5
       26 GETUPVAL                         R4 0
       27 GETTABLE                         R3 R4 R1
       28 MOVE                             R4 R0
       29 DUPTABLE                         R5 K3 [{"expand"}]
       30 GETUPVAL                         R6 6
       31 SETTABLEKS                       R6 R5 K2 ["expand"]
       33 CALL                             R2 3 1
       34 FASTCALL1                        TYPEOF R2 ; [+3]
       35 MOVE                             R4 R2
       36 GETIMPORT                        R3 K5 [typeof]
       38 CALL                             R3 1 1
       39 JUMPIFNOTEQKS                    R3 K6 ["string"] ; [+48]
       41 LOADK                            R5 K7 ["%- Expected"]
       42 NAMECALL                         R3 R2 K8 ["find"]
       44 CALL                             R3 2 1
       45 JUMPIFNOT                        R3 ; [+42]
       46 LOADK                            R5 K9 ["%+ Received"]
       47 NAMECALL                         R3 R2 K8 ["find"]
       49 CALL                             R3 2 1
       50 JUMPIFNOT                        R3 ; [+37]
       51 NEWTABLE                         R3 0 0
       53 LOADK                            R6 K10 ["[^\n]+"]
       54 NAMECALL                         R4 R2 K11 ["gmatch"]
       56 CALL                             R4 2 3
       57 FORGPREP                         R4
       58 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       60 MOVE                             R10 R3
       61 MOVE                             R11 R7
       62 GETIMPORT                        R9 K14 [table.insert]
       64 CALL                             R9 2 0
       65 FORGLOOP                         R4 1 ; [-8]
       67 GETUPVAL                         R8 7
       68 GETTABLEKS                       R7 R8 K15 ["join"]
       70 GETUPVAL                         R9 7
       71 GETTABLEKS                       R8 R9 K16 ["map"]
       73 GETUPVAL                         R10 7
       74 GETTABLEKS                       R9 R10 K17 ["slice"]
       76 MOVE                             R10 R3
       77 LOADN                            R11 3
       78 CALL                             R9 2 1
       79 DUPCLOSURE                       R10 K18 [PROTO_18]
       80 CAPTURE                          UPVAL U2
       81 CALL                             R8 2 1
       82 LOADK                            R9 K19 ["\n"]
       83 CALL                             R7 2 1
       84 MOVE                             R5 R7
       85 LOADK                            R6 K1 [","]
       86 CONCAT                           R4 R5 R6
       87 RETURN                           R4 1
       88 GETUPVAL                         R3 2
       89 GETUPVAL                         R7 0
       90 LENGTH                           R6 R7
       91 JUMPIFNOTLE                      R1 R6 ; [+7]
       93 LOADK                            R6 K0 ["  "]
       94 GETUPVAL                         R7 8
       95 MOVE                             R8 R0
       96 CALL                             R7 1 1
       97 CONCAT                           R4 R6 R7
       98 JUMP                             ; [+8]
       99 GETUPVAL                         R6 9
      100 LOADK                            R8 K20 ["+ "]
      101 GETUPVAL                         R9 10
      102 MOVE                             R10 R0
      103 CALL                             R9 1 1
      104 CONCAT                           R7 R8 R9
      105 CALL                             R6 1 1
      106 MOVE                             R4 R6
      107 LOADK                            R5 K1 [","]
      108 CONCAT                           R2 R3 R5
      109 RETURN                           R2 1

PROTO_21:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["join"]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K1 ["map"]
        6 MOVE                             R5 R1
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 CAPTURE                          UPVAL U5
       14 CAPTURE                          VAL R2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          UPVAL U6
       17 CAPTURE                          UPVAL U7
       18 CAPTURE                          UPVAL U8
       19 CALL                             R4 2 1
       20 LOADK                            R5 K2 ["\n"]
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

PROTO_22:
        0 LOADB                            R2 0
        1 GETUPVAL                         R4 0
        2 LENGTH                           R3 R4
        3 JUMPIFNOTLE                      R1 R3 ; [+6]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R0
        7 GETUPVAL                         R5 0
        8 GETTABLE                         R4 R5 R1
        9 CALL                             R2 2 1
       10 RETURN                           R2 1

PROTO_23:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["some"]
        3 MOVE                             R3 R0
        4 NEWCLOSURE                       R4 P0
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U1
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 JUMPIFEQ                         R2 R3 ; [+3]
        8 LOADB                            R4 0
        9 RETURN                           R4 1
       10 GETUPVAL                         R4 1
       11 MOVE                             R5 R0
       12 CALL                             R4 1 1
       13 JUMPIFNOT                        R4 ; [+2]
       14 LOADB                            R4 0
       15 RETURN                           R4 1
       16 JUMPIFEQKS                       R2 K0 ["date"] ; [+7]
       18 JUMPIFEQKS                       R2 K1 ["function"] ; [+5]
       20 JUMPIFEQKS                       R2 K2 ["regexp"] ; [+3]
       22 JUMPIFNOTEQKS                    R2 K3 ["error"] ; [+3]
       24 LOADB                            R4 0
       25 RETURN                           R4 1
       26 JUMPIFNOTEQKS                    R2 K4 ["table"] ; [+11]
       28 GETTABLEKS                       R5 R0 K5 ["asymmetricMatch"]
       30 FASTCALL1                        TYPEOF R5 ; [+2]
       31 GETIMPORT                        R4 K7 [typeof]
       33 CALL                             R4 1 1
       34 JUMPIFNOTEQKS                    R4 K1 ["function"] ; [+3]
       36 LOADB                            R4 0
       37 RETURN                           R4 1
       38 JUMPIFNOTEQKS                    R3 K4 ["table"] ; [+11]
       40 GETTABLEKS                       R5 R1 K5 ["asymmetricMatch"]
       42 FASTCALL1                        TYPEOF R5 ; [+2]
       43 GETIMPORT                        R4 K7 [typeof]
       45 CALL                             R4 1 1
       46 JUMPIFNOTEQKS                    R4 K1 ["function"] ; [+3]
       48 LOADB                            R4 0
       49 RETURN                           R4 1
       50 LOADB                            R4 1
       51 RETURN                           R4 1

PROTO_25:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["throw"] ; [+3]
        4 LOADK                            R2 K2 ["function call threw an error"]
        5 RETURN                           R2 1
        6 GETTABLEKS                       R2 R0 K0 ["type"]
        8 JUMPIFNOTEQKS                    R2 K3 ["incomplete"] ; [+3]
       10 LOADK                            R2 K4 ["function call has not returned yet"]
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 0
       13 MOVE                             R3 R1
       14 GETTABLEKS                       R4 R0 K5 ["value"]
       16 CALL                             R2 2 1
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R3 R0 K5 ["value"]
       21 CALL                             R2 1 -1
       22 RETURN                           R2 -1
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R3 R0 K5 ["value"]
       26 CALL                             R2 1 -1
       27 RETURN                           R2 -1

PROTO_26:
        0 GETTABLEN                        R2 R1 1
        1 GETTABLEN                        R3 R1 2
        2 MOVE                             R5 R0
        3 GETUPVAL                         R9 0
        4 FASTCALL1                        TOSTRING R2 ; [+3]
        5 MOVE                             R11 R2
        6 GETIMPORT                        R10 K1 [tostring]
        8 CALL                             R10 1 1
        9 GETUPVAL                         R12 1
       10 JUMPIFEQ                         R2 R12 ; [+2]
       12 LOADB                            R11 0 +1
       13 LOADB                            R11 1
       14 CALL                             R9 2 1
       15 MOVE                             R6 R9
       16 GETUPVAL                         R9 2
       17 MOVE                             R10 R3
       18 GETUPVAL                         R11 3
       19 CALL                             R9 2 1
       20 MOVE                             R7 R9
       21 LOADK                            R8 K2 ["\n"]
       22 CONCAT                           R4 R5 R8
       23 RETURN                           R4 1

PROTO_27:
        0 LENGTH                           R5 R2
        1 JUMPIFNOTEQKN                    R5 K0 [0] ; [+3]
        3 LOADK                            R5 K1 [""]
        4 RETURN                           R5 1
        5 JUMPIFNOT                        R3 ; [+14]
        6 JUMPIFEQKN                       R4 K2 [1] ; [+3]
        8 JUMPIFNOTEQKNIL                  R4 ; [+11]
       10 MOVE                             R6 R0
       11 GETUPVAL                         R9 0
       12 GETTABLEN                        R11 R2 1
       13 GETTABLEN                        R10 R11 2
       14 MOVE                             R11 R1
       15 CALL                             R9 2 1
       16 MOVE                             R7 R9
       17 LOADK                            R8 K3 ["\n"]
       18 CONCAT                           R5 R6 R8
       19 RETURN                           R5 1
       20 GETUPVAL                         R5 1
       21 MOVE                             R6 R0
       22 CALL                             R5 1 1
       23 LOADK                            R9 K4 [":"]
       24 NAMECALL                         R7 R0 K5 ["find"]
       26 CALL                             R7 2 1
       27 ORK                              R6 R7 K2 [1]
       28 GETUPVAL                         R12 2
       29 GETTABLEKS                       R11 R12 K6 ["trim"]
       31 LOADN                            R17 1
       32 SUBK                             R18 R6 K2 [1]
       33 NAMECALL                         R15 R0 K7 ["sub"]
       35 CALL                             R15 3 1
       36 MOVE                             R13 R15
       37 ADDK                             R16 R6 K2 [1]
       38 LENGTH                           R17 R0
       39 NAMECALL                         R14 R0 K7 ["sub"]
       41 CALL                             R14 3 1
       42 CONCAT                           R12 R13 R14
       43 CALL                             R11 1 1
       44 MOVE                             R8 R11
       45 LOADK                            R9 K3 ["\n"]
       46 GETUPVAL                         R11 3
       47 GETTABLEKS                       R10 R11 K8 ["reduce"]
       49 MOVE                             R11 R2
       50 NEWCLOSURE                       R12 P0
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          UPVAL U0
       54 CAPTURE                          VAL R1
       55 LOADK                            R13 K1 [""]
       56 CALL                             R10 3 1
       57 CONCAT                           R7 R8 R10
       58 RETURN                           R7 1

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["args"]
        2 RETURN                           R1 1

PROTO_29:
        0 LENGTH                           R3 R0
        1 LOADN                            R4 3
        2 JUMPIFNOTLT                      R3 R4 ; [+18]
        4 MOVE                             R4 R0
        5 LOADK                            R5 K0 ["%s: %s"]
        6 FASTCALL1                        TOSTRING R2 ; [+3]
        7 MOVE                             R8 R2
        8 GETIMPORT                        R7 K2 [tostring]
       10 CALL                             R7 1 1
       11 GETUPVAL                         R8 0
       12 MOVE                             R9 R1
       13 CALL                             R8 1 -1
       14 NAMECALL                         R5 R5 K3 ["format"]
       16 CALL                             R5 -1 -1
       17 FASTCALL                         TABLE_INSERT ; [+2]
       18 GETIMPORT                        R3 K6 [table.insert]
       20 CALL                             R3 -1 0
       21 RETURN                           R0 1

PROTO_30:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 GETUPVAL                         R8 2
        3 LOADK                            R9 K0 [""]
        4 GETUPVAL                         R10 3
        5 CALL                             R6 4 1
        6 MOVE                             R1 R6
        7 LOADK                            R2 K1 ["\n\n"]
        8 LOADK                            R6 K2 ["Expected number of calls: %s\n"]
        9 GETUPVAL                         R8 4
       10 LOADN                            R9 0
       11 CALL                             R8 1 -1
       12 NAMECALL                         R6 R6 K3 ["format"]
       14 CALL                             R6 -1 1
       15 MOVE                             R3 R6
       16 LOADK                            R6 K4 ["Received number of calls: %s\n\n"]
       17 GETUPVAL                         R8 5
       18 GETUPVAL                         R9 6
       19 CALL                             R8 1 -1
       20 NAMECALL                         R6 R6 K3 ["format"]
       22 CALL                             R6 -1 1
       23 MOVE                             R4 R6
       24 GETUPVAL                         R6 7
       25 GETTABLEKS                       R5 R6 K5 ["join"]
       27 GETUPVAL                         R7 7
       28 GETTABLEKS                       R6 R7 K6 ["reduce"]
       30 GETUPVAL                         R7 8
       31 NEWCLOSURE                       R8 P0
       32 CAPTURE                          UPVAL U9
       33 NEWTABLE                         R9 0 0
       35 CALL                             R6 3 1
       36 LOADK                            R7 K7 ["\n"]
       37 CALL                             R5 2 1
       38 CONCAT                           R0 R1 R5
       39 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 GETUPVAL                         R7 2
        3 LOADK                            R8 K0 [""]
        4 GETUPVAL                         R9 3
        5 CALL                             R5 4 1
        6 MOVE                             R1 R5
        7 LOADK                            R2 K1 ["\n\n"]
        8 LOADK                            R5 K2 ["Expected number of calls: >= %s\n"]
        9 GETUPVAL                         R7 4
       10 LOADN                            R8 1
       11 CALL                             R7 1 -1
       12 NAMECALL                         R5 R5 K3 ["format"]
       14 CALL                             R5 -1 1
       15 MOVE                             R3 R5
       16 LOADK                            R4 K4 ["Received number of calls:    %s"]
       17 GETUPVAL                         R6 5
       18 GETUPVAL                         R7 6
       19 CALL                             R6 1 -1
       20 NAMECALL                         R4 R4 K3 ["format"]
       22 CALL                             R4 -1 1
       23 CONCAT                           R0 R1 R4
       24 RETURN                           R0 1

PROTO_32:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 GETUPVAL                         R6 1
       12 MOVE                             R7 R3
       13 CALL                             R4 3 0
       14 GETUPVAL                         R4 2
       15 MOVE                             R5 R1
       16 GETUPVAL                         R6 1
       17 LOADK                            R7 K3 [""]
       18 MOVE                             R8 R3
       19 CALL                             R4 4 0
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R1
       22 CALL                             R4 1 1
       23 LOADNIL                          R5
       24 JUMPIFNOT                        R4 ; [+2]
       25 LOADK                            R5 K4 ["spy"]
       26 JUMP                             ; [+4]
       27 GETTABLEKS                       R6 R1 K5 ["getMockName"]
       29 CALL                             R6 0 1
       30 MOVE                             R5 R6
       31 LOADNIL                          R6
       32 JUMPIFNOT                        R4 ; [+7]
       33 GETTABLEKS                       R8 R1 K6 ["calls"]
       35 GETTABLEKS                       R7 R8 K7 ["count"]
       37 CALL                             R7 0 1
       38 MOVE                             R6 R7
       39 JUMP                             ; [+5]
       40 GETTABLEKS                       R8 R1 K8 ["mock"]
       42 GETTABLEKS                       R7 R8 K6 ["calls"]
       44 LENGTH                           R6 R7
       45 LOADNIL                          R7
       46 JUMPIFNOT                        R4 ; [+12]
       47 GETUPVAL                         R9 4
       48 GETTABLEKS                       R8 R9 K9 ["map"]
       50 GETTABLEKS                       R10 R1 K6 ["calls"]
       52 GETTABLEKS                       R9 R10 K10 ["all"]
       54 CALL                             R9 0 1
       55 DUPCLOSURE                       R10 K11 [PROTO_28]
       56 CALL                             R8 2 1
       57 MOVE                             R7 R8
       58 JUMP                             ; [+4]
       59 GETTABLEKS                       R8 R1 K8 ["mock"]
       61 GETTABLEKS                       R7 R8 K6 ["calls"]
       63 LOADN                            R9 0
       64 JUMPIFLT                         R9 R6 ; [+2]
       66 LOADB                            R8 0 +1
       67 LOADB                            R8 1
       68 LOADNIL                          R9
       69 JUMPIFNOT                        R8 ; [+12]
       70 NEWCLOSURE                       R9 P1
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          UPVAL U1
       73 CAPTURE                          REF R5
       74 CAPTURE                          VAL R3
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          UPVAL U7
       77 CAPTURE                          REF R6
       78 CAPTURE                          UPVAL U4
       79 CAPTURE                          REF R7
       80 CAPTURE                          UPVAL U8
       81 JUMP                             ; [+8]
       82 NEWCLOSURE                       R9 P2
       83 CAPTURE                          UPVAL U5
       84 CAPTURE                          UPVAL U1
       85 CAPTURE                          REF R5
       86 CAPTURE                          VAL R3
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          REF R6
       90 DUPTABLE                         R10 K14 [{"message", "pass"}]
       91 SETTABLEKS                       R9 R10 K12 ["message"]
       93 SETTABLEKS                       R8 R10 K13 ["pass"]
       95 CLOSEUPVALS                      R5
       96 RETURN                           R10 1

PROTO_33:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 RETURN                           R1 1

PROTO_34:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["return"] ; [+3]
        4 ADDK                             R2 R0 K2 [1]
        5 RETURN                           R2 1
        6 RETURN                           R0 1

PROTO_35:
        0 GETTABLEKS                       R3 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R3 K1 ["return"] ; [+23]
        4 LENGTH                           R3 R0
        5 LOADN                            R4 3
        6 JUMPIFNOTLT                      R3 R4 ; [+19]
        8 MOVE                             R4 R0
        9 LOADK                            R5 K2 ["%s: %s"]
       10 FASTCALL1                        TOSTRING R2 ; [+3]
       11 MOVE                             R8 R2
       12 GETIMPORT                        R7 K4 [tostring]
       14 CALL                             R7 1 1
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R9 R1 K5 ["value"]
       18 CALL                             R8 1 -1
       19 NAMECALL                         R5 R5 K6 ["format"]
       21 CALL                             R5 -1 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R3 K9 [table.insert]
       25 CALL                             R3 -1 0
       26 RETURN                           R0 1

PROTO_36:
        0 GETUPVAL                         R6 0
        1 GETUPVAL                         R7 1
        2 GETUPVAL                         R8 2
        3 LOADK                            R9 K0 [""]
        4 GETUPVAL                         R10 3
        5 CALL                             R6 4 1
        6 MOVE                             R1 R6
        7 LOADK                            R2 K1 ["\n\n"]
        8 LOADK                            R6 K2 ["Expected number of returns: %s\n"]
        9 GETUPVAL                         R8 4
       10 LOADN                            R9 0
       11 CALL                             R8 1 -1
       12 NAMECALL                         R6 R6 K3 ["format"]
       14 CALL                             R6 -1 1
       15 MOVE                             R3 R6
       16 LOADK                            R6 K4 ["Received number of returns: %s\n\n"]
       17 GETUPVAL                         R8 5
       18 GETUPVAL                         R9 6
       19 CALL                             R8 1 -1
       20 NAMECALL                         R6 R6 K3 ["format"]
       22 CALL                             R6 -1 1
       23 MOVE                             R4 R6
       24 GETUPVAL                         R6 7
       25 GETTABLEKS                       R5 R6 K5 ["join"]
       27 GETUPVAL                         R7 7
       28 GETTABLEKS                       R6 R7 K6 ["reduce"]
       30 GETUPVAL                         R9 8
       31 GETTABLEKS                       R8 R9 K7 ["mock"]
       33 GETTABLEKS                       R7 R8 K8 ["results"]
       35 DUPCLOSURE                       R8 K9 [PROTO_35]
       36 CAPTURE                          UPVAL U5
       37 NEWTABLE                         R9 0 0
       39 CALL                             R6 3 1
       40 LOADK                            R7 K10 ["\n"]
       41 CALL                             R5 2 1
       42 CONCAT                           R0 R1 R5
       43 GETUPVAL                         R4 8
       44 GETTABLEKS                       R3 R4 K7 ["mock"]
       46 GETTABLEKS                       R2 R3 K11 ["calls"]
       48 LENGTH                           R1 R2
       49 GETUPVAL                         R2 6
       50 JUMPIFEQ                         R1 R2 ; [+12]
       52 MOVE                             R1 R0
       53 LOADK                            R2 K12 ["\n\nReceived number of calls:   "]
       54 GETUPVAL                         R3 5
       55 GETUPVAL                         R7 8
       56 GETTABLEKS                       R6 R7 K7 ["mock"]
       58 GETTABLEKS                       R5 R6 K11 ["calls"]
       60 LENGTH                           R4 R5
       61 CALL                             R3 1 1
       62 CONCAT                           R0 R1 R3
       63 RETURN                           R0 1

PROTO_37:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 GETUPVAL                         R7 2
        3 LOADK                            R8 K0 [""]
        4 GETUPVAL                         R9 3
        5 CALL                             R5 4 1
        6 MOVE                             R1 R5
        7 LOADK                            R2 K1 ["\n\n"]
        8 LOADK                            R5 K2 ["Expected number of returns: >= %s\n"]
        9 GETUPVAL                         R7 4
       10 LOADN                            R8 1
       11 CALL                             R7 1 -1
       12 NAMECALL                         R5 R5 K3 ["format"]
       14 CALL                             R5 -1 1
       15 MOVE                             R3 R5
       16 LOADK                            R4 K4 ["Received number of returns:    %s"]
       17 GETUPVAL                         R6 5
       18 GETUPVAL                         R7 6
       19 CALL                             R6 1 -1
       20 NAMECALL                         R4 R4 K3 ["format"]
       22 CALL                             R4 -1 1
       23 CONCAT                           R0 R1 R4
       24 GETUPVAL                         R4 7
       25 GETTABLEKS                       R3 R4 K5 ["mock"]
       27 GETTABLEKS                       R2 R3 K6 ["calls"]
       29 LENGTH                           R1 R2
       30 GETUPVAL                         R2 6
       31 JUMPIFEQ                         R1 R2 ; [+15]
       33 MOVE                             R1 R0
       34 LOADK                            R2 K7 ["\nReceived number of calls:      %s"]
       35 GETUPVAL                         R4 5
       36 GETUPVAL                         R8 7
       37 GETTABLEKS                       R7 R8 K5 ["mock"]
       39 GETTABLEKS                       R6 R7 K6 ["calls"]
       41 LENGTH                           R5 R6
       42 CALL                             R4 1 -1
       43 NAMECALL                         R2 R2 K3 ["format"]
       45 CALL                             R2 -1 1
       46 CONCAT                           R0 R1 R2
       47 RETURN                           R0 1

PROTO_38:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 GETUPVAL                         R6 1
       12 MOVE                             R7 R3
       13 CALL                             R4 3 0
       14 GETUPVAL                         R4 2
       15 MOVE                             R5 R1
       16 GETUPVAL                         R6 1
       17 LOADK                            R7 K3 [""]
       18 MOVE                             R8 R3
       19 CALL                             R4 4 0
       20 GETTABLEKS                       R4 R1 K4 ["getMockName"]
       22 CALL                             R4 0 1
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R5 R6 K5 ["reduce"]
       26 GETTABLEKS                       R7 R1 K6 ["mock"]
       28 GETTABLEKS                       R6 R7 K7 ["results"]
       30 DUPCLOSURE                       R7 K8 [PROTO_34]
       31 LOADN                            R8 0
       32 CALL                             R5 3 1
       33 LOADN                            R7 0
       34 JUMPIFLT                         R7 R5 ; [+2]
       36 LOADB                            R6 0 +1
       37 LOADB                            R6 1
       38 LOADNIL                          R7
       39 JUMPIFNOT                        R6 ; [+11]
       40 NEWCLOSURE                       R7 P1
       41 CAPTURE                          UPVAL U4
       42 CAPTURE                          UPVAL U1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U6
       47 CAPTURE                          VAL R5
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R1
       50 JUMP                             ; [+9]
       51 NEWCLOSURE                       R7 P2
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R3
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R1
       60 DUPTABLE                         R8 K11 [{"message", "pass"}]
       61 SETTABLEKS                       R7 R8 K9 ["message"]
       63 SETTABLEKS                       R6 R8 K10 ["pass"]
       65 RETURN                           R8 1

PROTO_39:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

PROTO_40:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETUPVAL                         R6 2
        3 LOADK                            R7 K0 ["expected"]
        4 GETUPVAL                         R8 3
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 LOADK                            R3 K2 ["Expected number of calls: never %s"]
        9 GETUPVAL                         R5 4
       10 GETUPVAL                         R6 5
       11 CALL                             R5 1 -1
       12 NAMECALL                         R3 R3 K3 ["format"]
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 RETURN                           R0 1

PROTO_41:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 GETUPVAL                         R7 2
        3 LOADK                            R8 K0 ["expected"]
        4 GETUPVAL                         R9 3
        5 CALL                             R5 4 1
        6 MOVE                             R1 R5
        7 LOADK                            R2 K1 ["\n\n"]
        8 LOADK                            R5 K2 ["Expected number of calls: %s\n"]
        9 GETUPVAL                         R7 4
       10 GETUPVAL                         R8 5
       11 CALL                             R7 1 -1
       12 NAMECALL                         R5 R5 K3 ["format"]
       14 CALL                             R5 -1 1
       15 MOVE                             R3 R5
       16 LOADK                            R4 K4 ["Received number of calls: %s"]
       17 GETUPVAL                         R6 6
       18 GETUPVAL                         R7 7
       19 CALL                             R6 1 -1
       20 NAMECALL                         R4 R4 K3 ["format"]
       22 CALL                             R4 -1 1
       23 CONCAT                           R0 R1 R4
       24 RETURN                           R0 1

PROTO_42:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 GETUPVAL                         R6 1
       12 MOVE                             R7 R3
       13 CALL                             R4 3 0
       14 GETUPVAL                         R4 2
       15 MOVE                             R5 R1
       16 GETUPVAL                         R6 1
       17 LOADK                            R7 K3 ["expected"]
       18 MOVE                             R8 R3
       19 CALL                             R4 4 0
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R1
       22 CALL                             R4 1 1
       23 LOADNIL                          R5
       24 JUMPIFNOT                        R4 ; [+2]
       25 LOADK                            R5 K4 ["spy"]
       26 JUMP                             ; [+4]
       27 GETTABLEKS                       R6 R1 K5 ["getMockName"]
       29 CALL                             R6 0 1
       30 MOVE                             R5 R6
       31 LOADNIL                          R6
       32 JUMPIFNOT                        R4 ; [+7]
       33 GETTABLEKS                       R8 R1 K6 ["calls"]
       35 GETTABLEKS                       R7 R8 K7 ["count"]
       37 CALL                             R7 0 1
       38 MOVE                             R6 R7
       39 JUMP                             ; [+5]
       40 GETTABLEKS                       R8 R1 K8 ["mock"]
       42 GETTABLEKS                       R7 R8 K6 ["calls"]
       44 LENGTH                           R6 R7
       45 JUMPIFEQ                         R6 R2 ; [+2]
       47 LOADB                            R7 0 +1
       48 LOADB                            R7 1
       49 LOADNIL                          R8
       50 JUMPIFNOT                        R7 ; [+8]
       51 NEWCLOSURE                       R8 P0
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          REF R5
       55 CAPTURE                          VAL R3
       56 CAPTURE                          UPVAL U5
       57 CAPTURE                          VAL R2
       58 JUMP                             ; [+9]
       59 NEWCLOSURE                       R8 P1
       60 CAPTURE                          UPVAL U4
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          REF R5
       63 CAPTURE                          VAL R3
       64 CAPTURE                          UPVAL U5
       65 CAPTURE                          VAL R2
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          REF R6
       68 DUPTABLE                         R9 K11 [{"message", "pass"}]
       69 SETTABLEKS                       R8 R9 K9 ["message"]
       71 SETTABLEKS                       R7 R9 K10 ["pass"]
       73 CLOSEUPVALS                      R5
       74 RETURN                           R9 1

PROTO_43:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

PROTO_44:
        0 GETTABLEKS                       R2 R1 K0 ["type"]
        2 JUMPIFNOTEQKS                    R2 K1 ["return"] ; [+3]
        4 ADDK                             R2 R0 K2 [1]
        5 RETURN                           R2 1
        6 RETURN                           R0 1

PROTO_45:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETUPVAL                         R6 2
        3 LOADK                            R7 K0 ["expected"]
        4 GETUPVAL                         R8 3
        5 CALL                             R4 4 1
        6 MOVE                             R1 R4
        7 LOADK                            R2 K1 ["\n\n"]
        8 LOADK                            R3 K2 ["Expected number of returns: never %s"]
        9 GETUPVAL                         R5 4
       10 GETUPVAL                         R6 5
       11 CALL                             R5 1 -1
       12 NAMECALL                         R3 R3 K3 ["format"]
       14 CALL                             R3 -1 1
       15 CONCAT                           R0 R1 R3
       16 GETUPVAL                         R4 6
       17 GETTABLEKS                       R3 R4 K4 ["mock"]
       19 GETTABLEKS                       R2 R3 K5 ["calls"]
       21 LENGTH                           R1 R2
       22 GETUPVAL                         R2 7
       23 JUMPIFEQ                         R1 R2 ; [+15]
       25 MOVE                             R1 R0
       26 LOADK                            R2 K6 ["\n\nReceived number of calls:         %s"]
       27 GETUPVAL                         R4 8
       28 GETUPVAL                         R8 6
       29 GETTABLEKS                       R7 R8 K4 ["mock"]
       31 GETTABLEKS                       R6 R7 K5 ["calls"]
       33 LENGTH                           R5 R6
       34 CALL                             R4 1 -1
       35 NAMECALL                         R2 R2 K3 ["format"]
       37 CALL                             R2 -1 1
       38 CONCAT                           R0 R1 R2
       39 RETURN                           R0 1

PROTO_46:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 GETUPVAL                         R7 2
        3 LOADK                            R8 K0 ["expected"]
        4 GETUPVAL                         R9 3
        5 CALL                             R5 4 1
        6 MOVE                             R1 R5
        7 LOADK                            R2 K1 ["\n\n"]
        8 LOADK                            R5 K2 ["Expected number of returns: %s\n"]
        9 GETUPVAL                         R7 4
       10 GETUPVAL                         R8 5
       11 CALL                             R7 1 -1
       12 NAMECALL                         R5 R5 K3 ["format"]
       14 CALL                             R5 -1 1
       15 MOVE                             R3 R5
       16 LOADK                            R4 K4 ["Received number of returns: %s"]
       17 GETUPVAL                         R6 6
       18 GETUPVAL                         R7 7
       19 CALL                             R6 1 -1
       20 NAMECALL                         R4 R4 K3 ["format"]
       22 CALL                             R4 -1 1
       23 CONCAT                           R0 R1 R4
       24 GETUPVAL                         R4 8
       25 GETTABLEKS                       R3 R4 K5 ["mock"]
       27 GETTABLEKS                       R2 R3 K6 ["calls"]
       29 LENGTH                           R1 R2
       30 GETUPVAL                         R2 7
       31 JUMPIFEQ                         R1 R2 ; [+15]
       33 MOVE                             R1 R0
       34 LOADK                            R2 K7 ["\nReceived number of calls:   %s"]
       35 GETUPVAL                         R4 6
       36 GETUPVAL                         R8 8
       37 GETTABLEKS                       R7 R8 K5 ["mock"]
       39 GETTABLEKS                       R6 R7 K6 ["calls"]
       41 LENGTH                           R5 R6
       42 CALL                             R4 1 -1
       43 NAMECALL                         R2 R2 K3 ["format"]
       45 CALL                             R2 -1 1
       46 CONCAT                           R0 R1 R2
       47 RETURN                           R0 1

PROTO_47:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R2
       11 GETUPVAL                         R6 1
       12 MOVE                             R7 R3
       13 CALL                             R4 3 0
       14 GETUPVAL                         R4 2
       15 MOVE                             R5 R1
       16 GETUPVAL                         R6 1
       17 LOADK                            R7 K3 ["expected"]
       18 MOVE                             R8 R3
       19 CALL                             R4 4 0
       20 GETTABLEKS                       R4 R1 K4 ["getMockName"]
       22 CALL                             R4 0 1
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R5 R6 K5 ["reduce"]
       26 GETTABLEKS                       R7 R1 K6 ["mock"]
       28 GETTABLEKS                       R6 R7 K7 ["results"]
       30 DUPCLOSURE                       R7 K8 [PROTO_44]
       31 LOADN                            R8 0
       32 CALL                             R5 3 1
       33 JUMPIFEQ                         R5 R2 ; [+2]
       35 LOADB                            R6 0 +1
       36 LOADB                            R6 1
       37 LOADNIL                          R7
       38 JUMPIFNOT                        R6 ; [+11]
       39 NEWCLOSURE                       R7 P1
       40 CAPTURE                          UPVAL U4
       41 CAPTURE                          UPVAL U1
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 CAPTURE                          UPVAL U6
       49 JUMP                             ; [+10]
       50 NEWCLOSURE                       R7 P2
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R2
       57 CAPTURE                          UPVAL U6
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R1
       60 DUPTABLE                         R8 K11 [{"message", "pass"}]
       61 SETTABLEKS                       R7 R8 K9 ["message"]
       63 SETTABLEKS                       R6 R8 K10 ["pass"]
       65 RETURN                           R8 1

PROTO_48:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 RETURN                           R1 1

PROTO_49:
        0 GETTABLEKS                       R1 R0 K0 ["args"]
        2 RETURN                           R1 1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_51:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 1
        3 GETUPVAL                         R3 0
        4 LENGTH                           R2 R3
        5 JUMPIFNOTLE                      R1 R2 ; [+26]
        7 LENGTH                           R2 R0
        8 LOADN                            R3 3
        9 JUMPIFNOTLT                      R2 R3 ; [+22]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R5 0
       14 GETTABLE                         R4 R5 R1
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+13]
       17 NEWTABLE                         R4 0 2
       19 MOVE                             R5 R1
       20 GETUPVAL                         R7 0
       21 GETTABLE                         R6 R7 R1
       22 SETLIST                          R4 R5 2 [1]
       24 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       26 MOVE                             R3 R0
       27 GETIMPORT                        R2 K2 [table.insert]
       29 CALL                             R2 2 0
       30 ADDK                             R1 R1 K3 [1]
       31 JUMPBACK                         ; [-29]
       32 GETUPVAL                         R6 3
       33 GETUPVAL                         R7 4
       34 GETUPVAL                         R8 5
       35 LOADK                            R9 K4 ["...expected"]
       36 GETUPVAL                         R10 6
       37 CALL                             R6 4 1
       38 MOVE                             R3 R6
       39 LOADK                            R4 K5 ["\n\n"]
       40 LOADK                            R5 K6 ["Expected: never %s\n"]
       41 GETUPVAL                         R7 7
       42 GETUPVAL                         R8 2
       43 CALL                             R7 1 -1
       44 NAMECALL                         R5 R5 K7 ["format"]
       46 CALL                             R5 -1 1
       47 CONCAT                           R2 R3 R5
       48 GETUPVAL                         R4 0
       49 LENGTH                           R3 R4
       50 JUMPIFNOTEQKN                    R3 K3 [1] ; [+10]
       52 GETUPVAL                         R3 8
       53 GETUPVAL                         R5 0
       54 GETTABLEN                        R4 R5 1
       55 CALL                             R3 1 1
       56 GETUPVAL                         R4 8
       57 GETUPVAL                         R5 2
       58 CALL                             R4 1 1
       59 JUMPIFEQ                         R3 R4 ; [+13]
       61 MOVE                             R3 R2
       62 GETUPVAL                         R4 9
       63 GETUPVAL                         R5 2
       64 MOVE                             R6 R0
       65 GETUPVAL                         R9 0
       66 LENGTH                           R8 R9
       67 JUMPIFEQKN                       R8 K3 [1] ; [+2]
       69 LOADB                            R7 0 +1
       70 LOADB                            R7 1
       71 CALL                             R4 3 1
       72 CONCAT                           R2 R3 R4
       73 MOVE                             R3 R2
       74 LOADK                            R4 K8 ["\nNumber of calls: %s"]
       75 GETUPVAL                         R6 10
       76 GETUPVAL                         R8 0
       77 LENGTH                           R7 R8
       78 CALL                             R6 1 -1
       79 NAMECALL                         R4 R4 K7 ["format"]
       81 CALL                             R4 -1 1
       82 CONCAT                           R2 R3 R4
       83 RETURN                           R2 1

PROTO_52:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 1
        3 GETUPVAL                         R3 0
        4 LENGTH                           R2 R3
        5 JUMPIFNOTLE                      R1 R2 ; [+20]
        7 LENGTH                           R2 R0
        8 LOADN                            R3 3
        9 JUMPIFNOTLT                      R2 R3 ; [+16]
       11 NEWTABLE                         R4 0 2
       13 MOVE                             R5 R1
       14 GETUPVAL                         R7 0
       15 GETTABLE                         R6 R7 R1
       16 SETLIST                          R4 R5 2 [1]
       18 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       20 MOVE                             R3 R0
       21 GETIMPORT                        R2 K2 [table.insert]
       23 CALL                             R2 2 0
       24 ADDK                             R1 R1 K3 [1]
       25 JUMPBACK                         ; [-23]
       26 GETUPVAL                         R7 1
       27 GETUPVAL                         R8 2
       28 GETUPVAL                         R9 3
       29 LOADK                            R10 K4 ["...expected"]
       30 GETUPVAL                         R11 4
       31 CALL                             R7 4 1
       32 MOVE                             R3 R7
       33 LOADK                            R4 K5 ["\n\n"]
       34 GETUPVAL                         R7 5
       35 GETUPVAL                         R8 6
       36 MOVE                             R9 R0
       37 GETUPVAL                         R10 7
       38 GETUPVAL                         R12 8
       39 GETTABLEKS                       R11 R12 K6 ["expand"]
       41 CALL                             R10 1 1
       42 GETUPVAL                         R13 0
       43 LENGTH                           R12 R13
       44 JUMPIFEQKN                       R12 K3 [1] ; [+2]
       46 LOADB                            R11 0 +1
       47 LOADB                            R11 1
       48 CALL                             R7 4 1
       49 MOVE                             R5 R7
       50 LOADK                            R6 K7 ["\nNumber of calls: %s"]
       51 GETUPVAL                         R8 9
       52 GETUPVAL                         R10 0
       53 LENGTH                           R9 R10
       54 CALL                             R8 1 -1
       55 NAMECALL                         R6 R6 K8 ["format"]
       57 CALL                             R6 -1 1
       58 CONCAT                           R2 R3 R6
       59 RETURN                           R2 1

PROTO_53:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 0
        3 GETVARARGS                       R3 -1
        4 SETLIST                          R2 R3 -1 [1]
        6 LOADK                            R4 K0 ["#"]
        7 FASTCALL1                        SELECT_VARARG R4 ; [+3]
        8 GETIMPORT                        R3 K2 [select]
       10 GETVARARGS                       R5 -1
       11 CALL                             R3 -1 1
       12 LOADN                            R6 1
       13 MOVE                             R4 R3
       14 LOADN                            R5 1
       15 FORNPREP                         R4
       16 GETTABLE                         R7 R2 R6
       17 JUMPIFNOTEQKNIL                  R7 ; [+7]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K3 ["for_"]
       22 LOADK                            R8 K4 ["$$nil"]
       23 CALL                             R7 1 1
       24 SETTABLE                         R7 R2 R6
       25 FORNLOOP                         R4
       26 DUPTABLE                         R4 K7 [{"isNot", "promise"}]
       27 GETTABLEKS                       R5 R0 K5 ["isNot"]
       29 SETTABLEKS                       R5 R4 K5 ["isNot"]
       31 GETTABLEKS                       R5 R0 K6 ["promise"]
       33 SETTABLEKS                       R5 R4 K6 ["promise"]
       35 GETUPVAL                         R5 1
       36 MOVE                             R6 R1
       37 GETUPVAL                         R7 2
       38 LOADK                            R8 K8 ["...expected"]
       39 MOVE                             R9 R4
       40 CALL                             R5 4 0
       41 GETUPVAL                         R5 3
       42 MOVE                             R6 R1
       43 CALL                             R5 1 1
       44 LOADNIL                          R6
       45 JUMPIFNOT                        R5 ; [+2]
       46 LOADK                            R6 K9 ["spy"]
       47 JUMP                             ; [+4]
       48 GETTABLEKS                       R7 R1 K10 ["getMockName"]
       50 CALL                             R7 0 1
       51 MOVE                             R6 R7
       52 LOADNIL                          R7
       53 JUMPIFNOT                        R5 ; [+12]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R8 R9 K11 ["map"]
       57 GETTABLEKS                       R10 R1 K12 ["calls"]
       59 GETTABLEKS                       R9 R10 K13 ["all"]
       61 CALL                             R9 0 1
       62 DUPCLOSURE                       R10 K14 [PROTO_49]
       63 CALL                             R8 2 1
       64 MOVE                             R7 R8
       65 JUMP                             ; [+4]
       66 GETTABLEKS                       R8 R1 K15 ["mock"]
       68 GETTABLEKS                       R7 R8 K12 ["calls"]
       70 GETUPVAL                         R9 4
       71 GETTABLEKS                       R8 R9 K16 ["some"]
       73 MOVE                             R9 R7
       74 NEWCLOSURE                       R10 P1
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R2
       77 CALL                             R8 2 1
       78 LOADNIL                          R9
       79 JUMPIFNOT                        R8 ; [+13]
       80 NEWCLOSURE                       R9 P2
       81 CAPTURE                          REF R7
       82 CAPTURE                          UPVAL U5
       83 CAPTURE                          VAL R2
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          REF R6
       87 CAPTURE                          VAL R4
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          UPVAL U8
       90 CAPTURE                          UPVAL U9
       91 CAPTURE                          UPVAL U10
       92 JUMP                             ; [+11]
       93 NEWCLOSURE                       R9 P3
       94 CAPTURE                          REF R7
       95 CAPTURE                          UPVAL U6
       96 CAPTURE                          UPVAL U2
       97 CAPTURE                          REF R6
       98 CAPTURE                          VAL R4
       99 CAPTURE                          UPVAL U11
      100 CAPTURE                          VAL R2
      101 CAPTURE                          UPVAL U12
      102 CAPTURE                          VAL R0
      103 CAPTURE                          UPVAL U10
      104 DUPTABLE                         R10 K19 [{"message", "pass"}]
      105 SETTABLEKS                       R9 R10 K17 ["message"]
      107 SETTABLEKS                       R8 R10 K18 ["pass"]
      109 CLOSEUPVALS                      R6
      110 RETURN                           R10 1

PROTO_54:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 RETURN                           R1 1

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_56:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 1
        3 GETUPVAL                         R3 0
        4 LENGTH                           R2 R3
        5 JUMPIFNOTLE                      R1 R2 ; [+26]
        7 LENGTH                           R2 R0
        8 LOADN                            R3 3
        9 JUMPIFNOTLT                      R2 R3 ; [+22]
       11 GETUPVAL                         R2 1
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R5 0
       14 GETTABLE                         R4 R5 R1
       15 CALL                             R2 2 1
       16 JUMPIFNOT                        R2 ; [+13]
       17 NEWTABLE                         R4 0 2
       19 MOVE                             R5 R1
       20 GETUPVAL                         R7 0
       21 GETTABLE                         R6 R7 R1
       22 SETLIST                          R4 R5 2 [1]
       24 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       26 MOVE                             R3 R0
       27 GETIMPORT                        R2 K2 [table.insert]
       29 CALL                             R2 2 0
       30 ADDK                             R1 R1 K3 [1]
       31 JUMPBACK                         ; [-29]
       32 GETUPVAL                         R6 3
       33 GETUPVAL                         R7 4
       34 GETUPVAL                         R8 5
       35 LOADK                            R9 K4 ["expected"]
       36 GETUPVAL                         R10 6
       37 CALL                             R6 4 1
       38 MOVE                             R3 R6
       39 LOADK                            R4 K5 ["\n\n"]
       40 LOADK                            R5 K6 ["Expected: never %s\n"]
       41 GETUPVAL                         R7 7
       42 GETUPVAL                         R8 2
       43 CALL                             R7 1 -1
       44 NAMECALL                         R5 R5 K7 ["format"]
       46 CALL                             R5 -1 1
       47 CONCAT                           R2 R3 R5
       48 GETUPVAL                         R4 0
       49 LENGTH                           R3 R4
       50 JUMPIFNOTEQKN                    R3 K3 [1] ; [+18]
       52 GETUPVAL                         R5 0
       53 GETTABLEN                        R4 R5 1
       54 GETTABLEKS                       R3 R4 K8 ["type"]
       56 JUMPIFNOTEQKS                    R3 K9 ["return"] ; [+12]
       58 GETUPVAL                         R3 8
       59 GETUPVAL                         R6 0
       60 GETTABLEN                        R5 R6 1
       61 GETTABLEKS                       R4 R5 K10 ["value"]
       63 CALL                             R3 1 1
       64 GETUPVAL                         R4 8
       65 GETUPVAL                         R5 2
       66 CALL                             R4 1 1
       67 JUMPIFEQ                         R3 R4 ; [+14]
       69 MOVE                             R3 R2
       70 GETUPVAL                         R4 9
       71 LOADK                            R5 K11 ["Received:       "]
       72 GETUPVAL                         R6 2
       73 MOVE                             R7 R0
       74 GETUPVAL                         R10 0
       75 LENGTH                           R9 R10
       76 JUMPIFEQKN                       R9 K3 [1] ; [+2]
       78 LOADB                            R8 0 +1
       79 LOADB                            R8 1
       80 CALL                             R4 4 1
       81 CONCAT                           R2 R3 R4
       82 MOVE                             R3 R2
       83 GETUPVAL                         R4 10
       84 GETUPVAL                         R5 11
       85 GETUPVAL                         R6 0
       86 CALL                             R5 1 1
       87 GETUPVAL                         R7 12
       88 LENGTH                           R6 R7
       89 CALL                             R4 2 1
       90 CONCAT                           R2 R3 R4
       91 RETURN                           R2 1

PROTO_57:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 1
        3 GETUPVAL                         R3 0
        4 LENGTH                           R2 R3
        5 JUMPIFNOTLE                      R1 R2 ; [+20]
        7 LENGTH                           R2 R0
        8 LOADN                            R3 3
        9 JUMPIFNOTLT                      R2 R3 ; [+16]
       11 NEWTABLE                         R4 0 2
       13 MOVE                             R5 R1
       14 GETUPVAL                         R7 0
       15 GETTABLE                         R6 R7 R1
       16 SETLIST                          R4 R5 2 [1]
       18 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       20 MOVE                             R3 R0
       21 GETIMPORT                        R2 K2 [table.insert]
       23 CALL                             R2 2 0
       24 ADDK                             R1 R1 K3 [1]
       25 JUMPBACK                         ; [-23]
       26 GETUPVAL                         R8 1
       27 GETUPVAL                         R9 2
       28 GETUPVAL                         R10 3
       29 LOADK                            R11 K4 ["expected"]
       30 GETUPVAL                         R12 4
       31 CALL                             R8 4 1
       32 MOVE                             R3 R8
       33 LOADK                            R4 K5 ["\n\n"]
       34 LOADK                            R8 K6 ["Expected: %s\n"]
       35 GETUPVAL                         R10 5
       36 GETUPVAL                         R11 6
       37 CALL                             R10 1 -1
       38 NAMECALL                         R8 R8 K7 ["format"]
       40 CALL                             R8 -1 1
       41 MOVE                             R5 R8
       42 GETUPVAL                         R8 7
       43 LOADK                            R9 K8 ["Received: "]
       44 GETUPVAL                         R10 6
       45 MOVE                             R11 R0
       46 GETUPVAL                         R14 0
       47 LENGTH                           R13 R14
       48 JUMPIFEQKN                       R13 K3 [1] ; [+2]
       50 LOADB                            R12 0 +1
       51 LOADB                            R12 1
       52 CALL                             R8 4 1
       53 MOVE                             R6 R8
       54 GETUPVAL                         R7 8
       55 GETUPVAL                         R8 9
       56 GETUPVAL                         R9 0
       57 CALL                             R8 1 1
       58 GETUPVAL                         R10 10
       59 LENGTH                           R9 R10
       60 CALL                             R7 2 1
       61 CONCAT                           R2 R3 R7
       62 RETURN                           R2 1

PROTO_58:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R1
       11 GETUPVAL                         R6 1
       12 LOADK                            R7 K3 ["expected"]
       13 MOVE                             R8 R3
       14 CALL                             R4 4 0
       15 GETTABLEKS                       R4 R1 K4 ["getMockName"]
       17 CALL                             R4 0 1
       18 GETTABLEKS                       R5 R1 K5 ["mock"]
       20 GETTABLEKS                       R6 R5 K6 ["calls"]
       22 GETTABLEKS                       R7 R5 K7 ["results"]
       24 GETUPVAL                         R9 2
       25 GETTABLEKS                       R8 R9 K8 ["some"]
       27 MOVE                             R9 R7
       28 NEWCLOSURE                       R10 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R2
       31 CALL                             R8 2 1
       32 LOADNIL                          R9
       33 JUMPIFNOT                        R8 ; [+15]
       34 NEWCLOSURE                       R9 P1
       35 CAPTURE                          VAL R7
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          VAL R2
       38 CAPTURE                          UPVAL U4
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U5
       43 CAPTURE                          UPVAL U6
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          UPVAL U8
       46 CAPTURE                          UPVAL U9
       47 CAPTURE                          VAL R6
       48 JUMP                             ; [+12]
       49 NEWCLOSURE                       R9 P2
       50 CAPTURE                          VAL R7
       51 CAPTURE                          UPVAL U4
       52 CAPTURE                          UPVAL U1
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          VAL R2
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          UPVAL U8
       59 CAPTURE                          UPVAL U9
       60 CAPTURE                          VAL R6
       61 DUPTABLE                         R10 K11 [{"message", "pass"}]
       62 SETTABLEKS                       R9 R10 K9 ["message"]
       64 SETTABLEKS                       R8 R10 K10 ["pass"]
       66 RETURN                           R10 1

PROTO_59:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 RETURN                           R1 1

PROTO_60:
        0 GETTABLEKS                       R1 R0 K0 ["args"]
        2 RETURN                           R1 1

PROTO_61:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADN                            R2 1
        4 JUMPIFNOTLT                      R2 R1 ; [+17]
        6 NEWTABLE                         R3 0 2
        8 GETUPVAL                         R5 0
        9 SUBK                             R4 R5 K0 [1]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R8 0
       12 SUBK                             R7 R8 K0 [1]
       13 GETTABLE                         R5 R6 R7
       14 SETLIST                          R3 R4 2 [1]
       16 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K3 [table.insert]
       21 CALL                             R1 2 0
       22 NEWTABLE                         R3 0 2
       24 GETUPVAL                         R4 0
       25 GETUPVAL                         R6 1
       26 GETUPVAL                         R7 0
       27 GETTABLE                         R5 R6 R7
       28 SETLIST                          R3 R4 2 [1]
       30 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       32 MOVE                             R2 R0
       33 GETIMPORT                        R1 K3 [table.insert]
       35 CALL                             R1 2 0
       36 GETUPVAL                         R5 2
       37 GETUPVAL                         R6 3
       38 GETUPVAL                         R7 4
       39 LOADK                            R8 K4 ["...expected"]
       40 GETUPVAL                         R9 5
       41 CALL                             R5 4 1
       42 MOVE                             R2 R5
       43 LOADK                            R3 K5 ["\n\n"]
       44 LOADK                            R4 K6 ["Expected: never %s\n"]
       45 GETUPVAL                         R6 6
       46 GETUPVAL                         R7 7
       47 CALL                             R6 1 -1
       48 NAMECALL                         R4 R4 K7 ["format"]
       50 CALL                             R4 -1 1
       51 CONCAT                           R1 R2 R4
       52 GETUPVAL                         R3 1
       53 LENGTH                           R2 R3
       54 JUMPIFNOTEQKN                    R2 K0 [1] ; [+10]
       56 GETUPVAL                         R2 8
       57 GETUPVAL                         R4 1
       58 GETTABLEN                        R3 R4 1
       59 CALL                             R2 1 1
       60 GETUPVAL                         R3 8
       61 GETUPVAL                         R4 7
       62 CALL                             R3 1 1
       63 JUMPIFEQ                         R2 R3 ; [+14]
       65 MOVE                             R2 R1
       66 GETUPVAL                         R3 9
       67 GETUPVAL                         R4 7
       68 MOVE                             R5 R0
       69 GETUPVAL                         R8 1
       70 LENGTH                           R7 R8
       71 JUMPIFEQKN                       R7 K0 [1] ; [+2]
       73 LOADB                            R6 0 +1
       74 LOADB                            R6 1
       75 GETUPVAL                         R7 0
       76 CALL                             R3 4 1
       77 CONCAT                           R1 R2 R3
       78 MOVE                             R2 R1
       79 LOADK                            R3 K8 ["\nNumber of calls: %s"]
       80 GETUPVAL                         R5 10
       81 GETUPVAL                         R7 1
       82 LENGTH                           R6 R7
       83 CALL                             R5 1 -1
       84 NAMECALL                         R3 R3 K7 ["format"]
       86 CALL                             R3 -1 1
       87 CONCAT                           R1 R2 R3
       88 RETURN                           R1 1

PROTO_62:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADN                            R2 1
        4 JUMPIFNOTLE                      R2 R1 ; [+50]
        6 GETUPVAL                         R1 0
        7 LOADN                            R2 1
        8 JUMPIFNOTLT                      R2 R1 ; [+32]
       10 GETUPVAL                         R2 0
       11 SUBK                             R1 R2 K0 [1]
       12 LOADN                            R2 1
       13 JUMPIFNOTLE                      R2 R1 ; [+9]
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R3 2
       17 GETUPVAL                         R5 3
       18 GETTABLE                         R4 R5 R1
       19 CALL                             R2 2 1
       20 JUMPIF                           R2 ; [+2]
       21 SUBK                             R1 R1 K0 [1]
       22 JUMPBACK                         ; [-11]
       23 LOADN                            R2 1
       24 JUMPIFNOTLT                      R1 R2 ; [+3]
       26 GETUPVAL                         R2 0
       27 SUBK                             R1 R2 K0 [1]
       28 NEWTABLE                         R4 0 2
       30 MOVE                             R5 R1
       31 GETUPVAL                         R7 3
       32 GETTABLE                         R6 R7 R1
       33 SETLIST                          R4 R5 2 [1]
       35 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       37 MOVE                             R3 R0
       38 GETIMPORT                        R2 K3 [table.insert]
       40 CALL                             R2 2 0
       41 NEWTABLE                         R3 0 2
       43 GETUPVAL                         R4 0
       44 GETUPVAL                         R6 3
       45 GETUPVAL                         R7 0
       46 GETTABLE                         R5 R6 R7
       47 SETLIST                          R3 R4 2 [1]
       49 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       51 MOVE                             R2 R0
       52 GETIMPORT                        R1 K3 [table.insert]
       54 CALL                             R1 2 0
       55 GETUPVAL                         R6 4
       56 GETUPVAL                         R7 5
       57 GETUPVAL                         R8 6
       58 LOADK                            R9 K4 ["...expected"]
       59 GETUPVAL                         R10 7
       60 CALL                             R6 4 1
       61 MOVE                             R2 R6
       62 LOADK                            R3 K5 ["\n\n"]
       63 GETUPVAL                         R6 8
       64 GETUPVAL                         R7 2
       65 MOVE                             R8 R0
       66 GETUPVAL                         R9 9
       67 GETUPVAL                         R11 10
       68 GETTABLEKS                       R10 R11 K6 ["expand"]
       70 CALL                             R9 1 1
       71 GETUPVAL                         R12 3
       72 LENGTH                           R11 R12
       73 JUMPIFEQKN                       R11 K0 [1] ; [+2]
       75 LOADB                            R10 0 +1
       76 LOADB                            R10 1
       77 GETUPVAL                         R11 0
       78 CALL                             R6 5 1
       79 MOVE                             R4 R6
       80 LOADK                            R5 K7 ["\nNumber of calls: %s"]
       81 GETUPVAL                         R7 11
       82 GETUPVAL                         R9 3
       83 LENGTH                           R8 R9
       84 CALL                             R7 1 -1
       85 NAMECALL                         R5 R5 K8 ["format"]
       87 CALL                             R5 -1 1
       88 CONCAT                           R1 R2 R5
       89 RETURN                           R1 1

PROTO_63:
        0 PREPVARARGS                      2
        1 NEWTABLE                         R2 0 0
        3 GETVARARGS                       R3 -1
        4 SETLIST                          R2 R3 -1 [1]
        6 LOADK                            R4 K0 ["#"]
        7 FASTCALL1                        SELECT_VARARG R4 ; [+3]
        8 GETIMPORT                        R3 K2 [select]
       10 GETVARARGS                       R5 -1
       11 CALL                             R3 -1 1
       12 LOADN                            R6 1
       13 MOVE                             R4 R3
       14 LOADN                            R5 1
       15 FORNPREP                         R4
       16 GETTABLE                         R7 R2 R6
       17 JUMPIFNOTEQKNIL                  R7 ; [+7]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R7 R8 K3 ["for_"]
       22 LOADK                            R8 K4 ["$$nil"]
       23 CALL                             R7 1 1
       24 SETTABLE                         R7 R2 R6
       25 FORNLOOP                         R4
       26 DUPTABLE                         R4 K7 [{"isNot", "promise"}]
       27 GETTABLEKS                       R5 R0 K5 ["isNot"]
       29 SETTABLEKS                       R5 R4 K5 ["isNot"]
       31 GETTABLEKS                       R5 R0 K6 ["promise"]
       33 SETTABLEKS                       R5 R4 K6 ["promise"]
       35 GETUPVAL                         R5 1
       36 MOVE                             R6 R1
       37 GETUPVAL                         R7 2
       38 LOADK                            R8 K8 ["...expected"]
       39 MOVE                             R9 R4
       40 CALL                             R5 4 0
       41 GETUPVAL                         R5 3
       42 MOVE                             R6 R1
       43 CALL                             R5 1 1
       44 LOADNIL                          R6
       45 JUMPIFNOT                        R5 ; [+2]
       46 LOADK                            R6 K9 ["spy"]
       47 JUMP                             ; [+4]
       48 GETTABLEKS                       R7 R1 K10 ["getMockName"]
       50 CALL                             R7 0 1
       51 MOVE                             R6 R7
       52 LOADNIL                          R7
       53 JUMPIFNOT                        R5 ; [+12]
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R8 R9 K11 ["map"]
       57 GETTABLEKS                       R10 R1 K12 ["calls"]
       59 GETTABLEKS                       R9 R10 K13 ["all"]
       61 CALL                             R9 0 1
       62 DUPCLOSURE                       R10 K14 [PROTO_60]
       63 CALL                             R8 2 1
       64 MOVE                             R7 R8
       65 JUMP                             ; [+4]
       66 GETTABLEKS                       R8 R1 K15 ["mock"]
       68 GETTABLEKS                       R7 R8 K12 ["calls"]
       70 LENGTH                           R8 R7
       71 LOADB                            R9 0
       72 LOADN                            R10 1
       73 JUMPIFNOTLE                      R10 R8 ; [+5]
       75 GETUPVAL                         R9 5
       76 MOVE                             R10 R2
       77 GETTABLE                         R11 R7 R8
       78 CALL                             R9 2 1
       79 LOADNIL                          R10
       80 JUMPIFNOT                        R9 ; [+13]
       81 NEWCLOSURE                       R10 P1
       82 CAPTURE                          VAL R8
       83 CAPTURE                          REF R7
       84 CAPTURE                          UPVAL U6
       85 CAPTURE                          UPVAL U2
       86 CAPTURE                          REF R6
       87 CAPTURE                          VAL R4
       88 CAPTURE                          UPVAL U7
       89 CAPTURE                          VAL R2
       90 CAPTURE                          UPVAL U8
       91 CAPTURE                          UPVAL U9
       92 CAPTURE                          UPVAL U10
       93 JUMP                             ; [+13]
       94 NEWCLOSURE                       R10 P2
       95 CAPTURE                          VAL R8
       96 CAPTURE                          UPVAL U5
       97 CAPTURE                          VAL R2
       98 CAPTURE                          REF R7
       99 CAPTURE                          UPVAL U6
      100 CAPTURE                          UPVAL U2
      101 CAPTURE                          REF R6
      102 CAPTURE                          VAL R4
      103 CAPTURE                          UPVAL U11
      104 CAPTURE                          UPVAL U12
      105 CAPTURE                          VAL R0
      106 CAPTURE                          UPVAL U10
      107 DUPTABLE                         R11 K18 [{"message", "pass"}]
      108 SETTABLEKS                       R10 R11 K16 ["message"]
      110 SETTABLEKS                       R9 R11 K17 ["pass"]
      112 CLOSEUPVALS                      R6
      113 RETURN                           R11 1

PROTO_64:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 RETURN                           R1 1

PROTO_65:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADN                            R2 1
        4 JUMPIFNOTLT                      R2 R1 ; [+17]
        6 NEWTABLE                         R3 0 2
        8 GETUPVAL                         R5 0
        9 SUBK                             R4 R5 K0 [1]
       10 GETUPVAL                         R6 1
       11 GETUPVAL                         R8 0
       12 SUBK                             R7 R8 K0 [1]
       13 GETTABLE                         R5 R6 R7
       14 SETLIST                          R3 R4 2 [1]
       16 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       18 MOVE                             R2 R0
       19 GETIMPORT                        R1 K3 [table.insert]
       21 CALL                             R1 2 0
       22 NEWTABLE                         R3 0 2
       24 GETUPVAL                         R4 0
       25 GETUPVAL                         R6 1
       26 GETUPVAL                         R7 0
       27 GETTABLE                         R5 R6 R7
       28 SETLIST                          R3 R4 2 [1]
       30 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       32 MOVE                             R2 R0
       33 GETIMPORT                        R1 K3 [table.insert]
       35 CALL                             R1 2 0
       36 GETUPVAL                         R5 2
       37 GETUPVAL                         R6 3
       38 GETUPVAL                         R7 4
       39 LOADK                            R8 K4 ["expected"]
       40 GETUPVAL                         R9 5
       41 CALL                             R5 4 1
       42 MOVE                             R2 R5
       43 LOADK                            R3 K5 ["\n\n"]
       44 LOADK                            R4 K6 ["Expected: never %s\n"]
       45 GETUPVAL                         R6 6
       46 GETUPVAL                         R7 7
       47 CALL                             R6 1 -1
       48 NAMECALL                         R4 R4 K7 ["format"]
       50 CALL                             R4 -1 1
       51 CONCAT                           R1 R2 R4
       52 GETUPVAL                         R3 1
       53 LENGTH                           R2 R3
       54 JUMPIFNOTEQKN                    R2 K0 [1] ; [+18]
       56 GETUPVAL                         R4 1
       57 GETTABLEN                        R3 R4 1
       58 GETTABLEKS                       R2 R3 K8 ["type"]
       60 JUMPIFNOTEQKS                    R2 K9 ["return"] ; [+12]
       62 GETUPVAL                         R2 8
       63 GETUPVAL                         R5 1
       64 GETTABLEN                        R4 R5 1
       65 GETTABLEKS                       R3 R4 K10 ["value"]
       67 CALL                             R2 1 1
       68 GETUPVAL                         R3 8
       69 GETUPVAL                         R4 7
       70 CALL                             R3 1 1
       71 JUMPIFEQ                         R2 R3 ; [+15]
       73 MOVE                             R2 R1
       74 GETUPVAL                         R3 9
       75 LOADK                            R4 K11 ["Received:       "]
       76 GETUPVAL                         R5 7
       77 MOVE                             R6 R0
       78 GETUPVAL                         R9 1
       79 LENGTH                           R8 R9
       80 JUMPIFEQKN                       R8 K0 [1] ; [+2]
       82 LOADB                            R7 0 +1
       83 LOADB                            R7 1
       84 GETUPVAL                         R8 0
       85 CALL                             R3 5 1
       86 CONCAT                           R1 R2 R3
       87 MOVE                             R2 R1
       88 GETUPVAL                         R3 10
       89 GETUPVAL                         R4 11
       90 GETUPVAL                         R5 1
       91 CALL                             R4 1 1
       92 GETUPVAL                         R6 12
       93 LENGTH                           R5 R6
       94 CALL                             R3 2 1
       95 CONCAT                           R1 R2 R3
       96 RETURN                           R1 1

PROTO_66:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 LOADN                            R2 1
        4 JUMPIFNOTLE                      R2 R1 ; [+50]
        6 GETUPVAL                         R1 0
        7 LOADN                            R2 1
        8 JUMPIFNOTLT                      R2 R1 ; [+32]
       10 GETUPVAL                         R2 0
       11 SUBK                             R1 R2 K0 [1]
       12 LOADN                            R2 1
       13 JUMPIFNOTLE                      R2 R1 ; [+9]
       15 GETUPVAL                         R2 1
       16 GETUPVAL                         R3 2
       17 GETUPVAL                         R5 3
       18 GETTABLE                         R4 R5 R1
       19 CALL                             R2 2 1
       20 JUMPIF                           R2 ; [+2]
       21 SUBK                             R1 R1 K0 [1]
       22 JUMPBACK                         ; [-11]
       23 LOADN                            R2 1
       24 JUMPIFNOTLT                      R1 R2 ; [+3]
       26 GETUPVAL                         R2 0
       27 SUBK                             R1 R2 K0 [1]
       28 NEWTABLE                         R4 0 2
       30 MOVE                             R5 R1
       31 GETUPVAL                         R7 3
       32 GETTABLE                         R6 R7 R1
       33 SETLIST                          R4 R5 2 [1]
       35 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       37 MOVE                             R3 R0
       38 GETIMPORT                        R2 K3 [table.insert]
       40 CALL                             R2 2 0
       41 NEWTABLE                         R3 0 2
       43 GETUPVAL                         R4 0
       44 GETUPVAL                         R6 3
       45 GETUPVAL                         R7 0
       46 GETTABLE                         R5 R6 R7
       47 SETLIST                          R3 R4 2 [1]
       49 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       51 MOVE                             R2 R0
       52 GETIMPORT                        R1 K3 [table.insert]
       54 CALL                             R1 2 0
       55 GETUPVAL                         R7 4
       56 GETUPVAL                         R8 5
       57 GETUPVAL                         R9 6
       58 LOADK                            R10 K4 ["expected"]
       59 GETUPVAL                         R11 7
       60 CALL                             R7 4 1
       61 MOVE                             R2 R7
       62 LOADK                            R3 K5 ["\n\n"]
       63 LOADK                            R7 K6 ["Expected: %s\n"]
       64 GETUPVAL                         R9 8
       65 GETUPVAL                         R10 2
       66 CALL                             R9 1 -1
       67 NAMECALL                         R7 R7 K7 ["format"]
       69 CALL                             R7 -1 1
       70 MOVE                             R4 R7
       71 GETUPVAL                         R7 9
       72 LOADK                            R8 K8 ["Received: "]
       73 GETUPVAL                         R9 2
       74 MOVE                             R10 R0
       75 GETUPVAL                         R13 3
       76 LENGTH                           R12 R13
       77 JUMPIFEQKN                       R12 K0 [1] ; [+2]
       79 LOADB                            R11 0 +1
       80 LOADB                            R11 1
       81 GETUPVAL                         R12 0
       82 CALL                             R7 5 1
       83 MOVE                             R5 R7
       84 GETUPVAL                         R6 10
       85 GETUPVAL                         R7 11
       86 GETUPVAL                         R8 3
       87 CALL                             R7 1 1
       88 GETUPVAL                         R9 12
       89 LENGTH                           R8 R9
       90 CALL                             R6 2 1
       91 CONCAT                           R1 R2 R6
       92 RETURN                           R1 1

PROTO_67:
        0 DUPTABLE                         R3 K2 [{"isNot", "promise"}]
        1 GETTABLEKS                       R4 R0 K0 ["isNot"]
        3 SETTABLEKS                       R4 R3 K0 ["isNot"]
        5 GETTABLEKS                       R4 R0 K1 ["promise"]
        7 SETTABLEKS                       R4 R3 K1 ["promise"]
        9 GETUPVAL                         R4 0
       10 MOVE                             R5 R1
       11 GETUPVAL                         R6 1
       12 LOADK                            R7 K3 ["expected"]
       13 MOVE                             R8 R3
       14 CALL                             R4 4 0
       15 GETTABLEKS                       R4 R1 K4 ["getMockName"]
       17 CALL                             R4 0 1
       18 GETTABLEKS                       R5 R1 K5 ["mock"]
       20 GETTABLEKS                       R6 R5 K6 ["calls"]
       22 GETTABLEKS                       R7 R5 K7 ["results"]
       24 LENGTH                           R8 R7
       25 LOADB                            R9 0
       26 LOADN                            R10 1
       27 JUMPIFNOTLE                      R10 R8 ; [+5]
       29 GETUPVAL                         R9 2
       30 MOVE                             R10 R2
       31 GETTABLE                         R11 R7 R8
       32 CALL                             R9 2 1
       33 LOADNIL                          R10
       34 JUMPIFNOT                        R9 ; [+15]
       35 NEWCLOSURE                       R10 P0
       36 CAPTURE                          VAL R8
       37 CAPTURE                          VAL R7
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          UPVAL U1
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          VAL R2
       44 CAPTURE                          UPVAL U5
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          UPVAL U8
       48 CAPTURE                          VAL R6
       49 JUMP                             ; [+14]
       50 NEWCLOSURE                       R10 P1
       51 CAPTURE                          VAL R8
       52 CAPTURE                          UPVAL U2
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R7
       55 CAPTURE                          UPVAL U3
       56 CAPTURE                          UPVAL U1
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R3
       59 CAPTURE                          UPVAL U4
       60 CAPTURE                          UPVAL U6
       61 CAPTURE                          UPVAL U7
       62 CAPTURE                          UPVAL U8
       63 CAPTURE                          VAL R6
       64 DUPTABLE                         R11 K10 [{"message", "pass"}]
       65 SETTABLEKS                       R10 R11 K8 ["message"]
       67 SETTABLEKS                       R9 R11 K9 ["pass"]
       69 RETURN                           R11 1

PROTO_68:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 RETURN                           R1 1

PROTO_69:
        0 RETURN                           R0 1

PROTO_70:
        0 GETTABLEKS                       R1 R0 K0 ["args"]
        2 RETURN                           R1 1

PROTO_71:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 SUBK                             R1 R2 K0 [1]
        4 LOADN                            R2 1
        5 JUMPIFNOTLE                      R2 R1 ; [+17]
        7 NEWTABLE                         R3 0 2
        9 GETUPVAL                         R5 0
       10 SUBK                             R4 R5 K0 [1]
       11 GETUPVAL                         R6 1
       12 GETUPVAL                         R8 0
       13 SUBK                             R7 R8 K0 [1]
       14 GETTABLE                         R5 R6 R7
       15 SETLIST                          R3 R4 2 [1]
       17 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K3 [table.insert]
       22 CALL                             R1 2 0
       23 NEWTABLE                         R3 0 2
       25 GETUPVAL                         R4 0
       26 GETUPVAL                         R6 1
       27 GETUPVAL                         R7 0
       28 GETTABLE                         R5 R6 R7
       29 SETLIST                          R3 R4 2 [1]
       31 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       33 MOVE                             R2 R0
       34 GETIMPORT                        R1 K3 [table.insert]
       36 CALL                             R1 2 0
       37 GETUPVAL                         R2 0
       38 ADDK                             R1 R2 K0 [1]
       39 GETUPVAL                         R2 2
       40 JUMPIFNOTLE                      R1 R2 ; [+17]
       42 NEWTABLE                         R3 0 2
       44 GETUPVAL                         R5 0
       45 ADDK                             R4 R5 K0 [1]
       46 GETUPVAL                         R6 1
       47 GETUPVAL                         R8 0
       48 ADDK                             R7 R8 K0 [1]
       49 GETTABLE                         R5 R6 R7
       50 SETLIST                          R3 R4 2 [1]
       52 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       54 MOVE                             R2 R0
       55 GETIMPORT                        R1 K3 [table.insert]
       57 CALL                             R1 2 0
       58 GETUPVAL                         R6 3
       59 GETUPVAL                         R7 4
       60 GETUPVAL                         R8 5
       61 LOADK                            R9 K4 ["n"]
       62 GETUPVAL                         R10 6
       63 CALL                             R6 4 1
       64 MOVE                             R2 R6
       65 LOADK                            R3 K5 ["\n\n"]
       66 LOADK                            R6 K6 ["n: %s\n"]
       67 GETUPVAL                         R9 7
       68 FASTCALL1                        TOSTRING R9 ; [+2]
       69 GETIMPORT                        R8 K8 [tostring]
       71 CALL                             R8 1 1
       72 NAMECALL                         R6 R6 K9 ["format"]
       74 CALL                             R6 2 1
       75 MOVE                             R4 R6
       76 LOADK                            R5 K10 ["Expected: never %s\n"]
       77 GETUPVAL                         R7 8
       78 GETUPVAL                         R8 9
       79 CALL                             R7 1 -1
       80 NAMECALL                         R5 R5 K9 ["format"]
       82 CALL                             R5 -1 1
       83 CONCAT                           R1 R2 R5
       84 GETUPVAL                         R3 1
       85 LENGTH                           R2 R3
       86 JUMPIFNOTEQKN                    R2 K0 [1] ; [+10]
       88 GETUPVAL                         R2 10
       89 GETUPVAL                         R4 1
       90 GETTABLEN                        R3 R4 1
       91 CALL                             R2 1 1
       92 GETUPVAL                         R3 10
       93 GETUPVAL                         R4 9
       94 CALL                             R3 1 1
       95 JUMPIFEQ                         R2 R3 ; [+14]
       97 MOVE                             R2 R1
       98 GETUPVAL                         R3 11
       99 GETUPVAL                         R4 9
      100 MOVE                             R5 R0
      101 GETUPVAL                         R8 1
      102 LENGTH                           R7 R8
      103 JUMPIFEQKN                       R7 K0 [1] ; [+2]
      105 LOADB                            R6 0 +1
      106 LOADB                            R6 1
      107 GETUPVAL                         R7 0
      108 CALL                             R3 4 1
      109 CONCAT                           R1 R2 R3
      110 MOVE                             R2 R1
      111 LOADK                            R3 K11 ["\nNumber of calls: %s"]
      112 GETUPVAL                         R5 12
      113 GETUPVAL                         R7 1
      114 LENGTH                           R6 R7
      115 CALL                             R5 1 -1
      116 NAMECALL                         R3 R3 K9 ["format"]
      118 CALL                             R3 -1 1
      119 CONCAT                           R1 R2 R3
      120 RETURN                           R1 1

PROTO_72:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTLE                      R1 R2 ; [+88]
        6 GETUPVAL                         R2 0
        7 SUBK                             R1 R2 K0 [1]
        8 LOADN                            R2 1
        9 JUMPIFNOTLE                      R2 R1 ; [+32]
       11 GETUPVAL                         R2 0
       12 SUBK                             R1 R2 K0 [1]
       13 LOADN                            R2 1
       14 JUMPIFNOTLE                      R2 R1 ; [+9]
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 GETUPVAL                         R5 4
       19 GETTABLE                         R4 R5 R1
       20 CALL                             R2 2 1
       21 JUMPIF                           R2 ; [+2]
       22 SUBK                             R1 R1 K0 [1]
       23 JUMPBACK                         ; [-11]
       24 LOADN                            R2 1
       25 JUMPIFNOTLT                      R1 R2 ; [+3]
       27 GETUPVAL                         R2 0
       28 SUBK                             R1 R2 K0 [1]
       29 NEWTABLE                         R4 0 2
       31 MOVE                             R5 R1
       32 GETUPVAL                         R7 4
       33 GETTABLE                         R6 R7 R1
       34 SETLIST                          R4 R5 2 [1]
       36 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       38 MOVE                             R3 R0
       39 GETIMPORT                        R2 K3 [table.insert]
       41 CALL                             R2 2 0
       42 NEWTABLE                         R3 0 2
       44 GETUPVAL                         R4 0
       45 GETUPVAL                         R6 4
       46 GETUPVAL                         R7 0
       47 GETTABLE                         R5 R6 R7
       48 SETLIST                          R3 R4 2 [1]
       50 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       52 MOVE                             R2 R0
       53 GETIMPORT                        R1 K3 [table.insert]
       55 CALL                             R1 2 0
       56 GETUPVAL                         R2 0
       57 ADDK                             R1 R2 K0 [1]
       58 GETUPVAL                         R2 1
       59 JUMPIFNOTLE                      R1 R2 ; [+68]
       61 GETUPVAL                         R2 0
       62 ADDK                             R1 R2 K0 [1]
       63 GETUPVAL                         R2 1
       64 JUMPIFNOTLE                      R1 R2 ; [+9]
       66 GETUPVAL                         R2 2
       67 GETUPVAL                         R3 3
       68 GETUPVAL                         R5 4
       69 GETTABLE                         R4 R5 R1
       70 CALL                             R2 2 1
       71 JUMPIF                           R2 ; [+2]
       72 ADDK                             R1 R1 K0 [1]
       73 JUMPBACK                         ; [-11]
       74 GETUPVAL                         R2 1
       75 JUMPIFNOTLE                      R2 R1 ; [+3]
       77 GETUPVAL                         R2 0
       78 ADDK                             R1 R2 K0 [1]
       79 NEWTABLE                         R4 0 2
       81 MOVE                             R5 R1
       82 GETUPVAL                         R7 4
       83 GETTABLE                         R6 R7 R1
       84 SETLIST                          R4 R5 2 [1]
       86 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       88 MOVE                             R3 R0
       89 GETIMPORT                        R2 K3 [table.insert]
       91 CALL                             R2 2 0
       92 JUMP                             ; [+35]
       93 GETUPVAL                         R1 1
       94 LOADN                            R2 1
       95 JUMPIFNOTLT                      R2 R1 ; [+32]
       97 GETUPVAL                         R2 1
       98 SUBK                             R1 R2 K0 [1]
       99 LOADN                            R2 1
      100 JUMPIFNOTLE                      R2 R1 ; [+9]
      102 GETUPVAL                         R2 2
      103 GETUPVAL                         R3 3
      104 GETUPVAL                         R5 4
      105 GETTABLE                         R4 R5 R1
      106 CALL                             R2 2 1
      107 JUMPIF                           R2 ; [+2]
      108 SUBK                             R1 R1 K0 [1]
      109 JUMPBACK                         ; [-11]
      110 LOADN                            R2 1
      111 JUMPIFNOTLT                      R1 R2 ; [+3]
      113 GETUPVAL                         R2 1
      114 SUBK                             R1 R2 K0 [1]
      115 NEWTABLE                         R4 0 2
      117 MOVE                             R5 R1
      118 GETUPVAL                         R7 4
      119 GETTABLE                         R6 R7 R1
      120 SETLIST                          R4 R5 2 [1]
      122 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
      124 MOVE                             R3 R0
      125 GETIMPORT                        R2 K3 [table.insert]
      127 CALL                             R2 2 0
      128 GETUPVAL                         R7 5
      129 GETUPVAL                         R8 6
      130 GETUPVAL                         R9 7
      131 LOADK                            R10 K4 ["n"]
      132 GETUPVAL                         R11 8
      133 CALL                             R7 4 1
      134 MOVE                             R2 R7
      135 LOADK                            R3 K5 ["\n\n"]
      136 LOADK                            R7 K6 ["n: %s\n"]
      137 GETUPVAL                         R10 9
      138 FASTCALL1                        TOSTRING R10 ; [+2]
      139 GETIMPORT                        R9 K8 [tostring]
      141 CALL                             R9 1 1
      142 NAMECALL                         R7 R7 K9 ["format"]
      144 CALL                             R7 2 1
      145 MOVE                             R4 R7
      146 GETUPVAL                         R7 10
      147 GETUPVAL                         R8 3
      148 MOVE                             R9 R0
      149 GETUPVAL                         R10 11
      150 GETUPVAL                         R12 12
      151 GETTABLEKS                       R11 R12 K10 ["expand"]
      153 CALL                             R10 1 1
      154 GETUPVAL                         R13 4
      155 LENGTH                           R12 R13
      156 JUMPIFEQKN                       R12 K0 [1] ; [+2]
      158 LOADB                            R11 0 +1
      159 LOADB                            R11 1
      160 GETUPVAL                         R12 0
      161 CALL                             R7 5 1
      162 MOVE                             R5 R7
      163 LOADK                            R6 K11 ["\nNumber of calls: %s"]
      164 GETUPVAL                         R8 13
      165 GETUPVAL                         R10 4
      166 LENGTH                           R9 R10
      167 CALL                             R8 1 -1
      168 NAMECALL                         R6 R6 K9 ["format"]
      170 CALL                             R6 -1 1
      171 CONCAT                           R1 R2 R6
      172 RETURN                           R1 1

PROTO_73:
        0 PREPVARARGS                      3
        1 NEWTABLE                         R3 0 0
        3 GETVARARGS                       R4 -1
        4 SETLIST                          R3 R4 -1 [1]
        6 LOADK                            R5 K0 ["#"]
        7 FASTCALL1                        SELECT_VARARG R5 ; [+3]
        8 GETIMPORT                        R4 K2 [select]
       10 GETVARARGS                       R6 -1
       11 CALL                             R4 -1 1
       12 LOADN                            R7 1
       13 MOVE                             R5 R4
       14 LOADN                            R6 1
       15 FORNPREP                         R5
       16 GETTABLE                         R8 R3 R7
       17 JUMPIFNOTEQKNIL                  R8 ; [+7]
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R8 R9 K3 ["for_"]
       22 LOADK                            R9 K4 ["$$nil"]
       23 CALL                             R8 1 1
       24 SETTABLE                         R8 R3 R7
       25 FORNLOOP                         R5
       26 DUPTABLE                         R5 K9 [{"expectedColor", "isNot", "promise", "secondArgument"}]
       27 DUPCLOSURE                       R6 K10 [PROTO_69]
       28 SETTABLEKS                       R6 R5 K5 ["expectedColor"]
       30 GETTABLEKS                       R6 R0 K6 ["isNot"]
       32 SETTABLEKS                       R6 R5 K6 ["isNot"]
       34 GETTABLEKS                       R6 R0 K7 ["promise"]
       36 SETTABLEKS                       R6 R5 K7 ["promise"]
       38 LOADK                            R6 K11 ["...expected"]
       39 SETTABLEKS                       R6 R5 K8 ["secondArgument"]
       41 GETUPVAL                         R6 1
       42 MOVE                             R7 R1
       43 GETUPVAL                         R8 2
       44 LOADK                            R9 K12 ["n"]
       45 MOVE                             R10 R5
       46 CALL                             R6 4 0
       47 GETUPVAL                         R7 3
       48 GETTABLEKS                       R6 R7 K13 ["isSafeInteger"]
       50 MOVE                             R7 R2
       51 CALL                             R6 1 1
       52 JUMPIFNOT                        R6 ; [+3]
       53 LOADN                            R6 1
       54 JUMPIFNOTLT                      R2 R6 ; [+24]
       56 GETIMPORT                        R6 K15 [error]
       58 GETUPVAL                         R7 4
       59 GETUPVAL                         R8 5
       60 GETUPVAL                         R9 6
       61 GETUPVAL                         R10 2
       62 LOADNIL                          R11
       63 LOADK                            R12 K12 ["n"]
       64 MOVE                             R13 R5
       65 CALL                             R9 4 1
       66 LOADK                            R10 K16 ["%s must be a positive integer"]
       67 LOADK                            R12 K12 ["n"]
       68 NAMECALL                         R10 R10 K17 ["format"]
       70 CALL                             R10 2 1
       71 GETUPVAL                         R11 7
       72 LOADK                            R12 K12 ["n"]
       73 MOVE                             R13 R2
       74 GETUPVAL                         R14 8
       75 CALL                             R11 3 -1
       76 CALL                             R8 -1 -1
       77 CALL                             R7 -1 -1
       78 CALL                             R6 -1 0
       79 GETUPVAL                         R6 9
       80 MOVE                             R7 R1
       81 CALL                             R6 1 1
       82 LOADNIL                          R7
       83 JUMPIFNOT                        R6 ; [+2]
       84 LOADK                            R7 K18 ["spy"]
       85 JUMP                             ; [+4]
       86 GETTABLEKS                       R8 R1 K19 ["getMockName"]
       88 CALL                             R8 0 1
       89 MOVE                             R7 R8
       90 LOADNIL                          R8
       91 JUMPIFNOT                        R6 ; [+12]
       92 GETUPVAL                         R10 10
       93 GETTABLEKS                       R9 R10 K20 ["map"]
       95 GETTABLEKS                       R11 R1 K21 ["calls"]
       97 GETTABLEKS                       R10 R11 K22 ["all"]
       99 CALL                             R10 0 1
      100 DUPCLOSURE                       R11 K23 [PROTO_70]
      101 CALL                             R9 2 1
      102 MOVE                             R8 R9
      103 JUMP                             ; [+4]
      104 GETTABLEKS                       R9 R1 K24 ["mock"]
      106 GETTABLEKS                       R8 R9 K21 ["calls"]
      108 LENGTH                           R9 R8
      109 LOADB                            R10 0
      110 JUMPIFNOTLE                      R2 R9 ; [+5]
      112 GETUPVAL                         R10 11
      113 MOVE                             R11 R3
      114 GETTABLE                         R12 R8 R2
      115 CALL                             R10 2 1
      116 LOADNIL                          R11
      117 JUMPIFNOT                        R10 ; [+15]
      118 NEWCLOSURE                       R11 P2
      119 CAPTURE                          VAL R2
      120 CAPTURE                          REF R8
      121 CAPTURE                          VAL R9
      122 CAPTURE                          UPVAL U6
      123 CAPTURE                          UPVAL U2
      124 CAPTURE                          REF R7
      125 CAPTURE                          VAL R5
      126 CAPTURE                          VAL R2
      127 CAPTURE                          UPVAL U12
      128 CAPTURE                          VAL R3
      129 CAPTURE                          UPVAL U8
      130 CAPTURE                          UPVAL U13
      131 CAPTURE                          UPVAL U14
      132 JUMP                             ; [+15]
      133 NEWCLOSURE                       R11 P3
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R9
      136 CAPTURE                          UPVAL U11
      137 CAPTURE                          VAL R3
      138 CAPTURE                          REF R8
      139 CAPTURE                          UPVAL U6
      140 CAPTURE                          UPVAL U2
      141 CAPTURE                          REF R7
      142 CAPTURE                          VAL R5
      143 CAPTURE                          VAL R2
      144 CAPTURE                          UPVAL U15
      145 CAPTURE                          UPVAL U16
      146 CAPTURE                          VAL R0
      147 CAPTURE                          UPVAL U14
      148 DUPTABLE                         R12 K27 [{"message", "pass"}]
      149 SETTABLEKS                       R11 R12 K25 ["message"]
      151 SETTABLEKS                       R10 R12 K26 ["pass"]
      153 CLOSEUPVALS                      R7
      154 RETURN                           R12 1

PROTO_74:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 CAPTURE                          UPVAL U12
       15 CAPTURE                          UPVAL U13
       16 CAPTURE                          UPVAL U14
       17 CAPTURE                          UPVAL U15
       18 RETURN                           R1 1

PROTO_75:
        0 RETURN                           R0 1

PROTO_76:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 SUBK                             R1 R2 K0 [1]
        4 LOADN                            R2 1
        5 JUMPIFNOTLE                      R2 R1 ; [+17]
        7 NEWTABLE                         R3 0 2
        9 GETUPVAL                         R5 0
       10 SUBK                             R4 R5 K0 [1]
       11 GETUPVAL                         R6 1
       12 GETUPVAL                         R8 0
       13 SUBK                             R7 R8 K0 [1]
       14 GETTABLE                         R5 R6 R7
       15 SETLIST                          R3 R4 2 [1]
       17 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       19 MOVE                             R2 R0
       20 GETIMPORT                        R1 K3 [table.insert]
       22 CALL                             R1 2 0
       23 NEWTABLE                         R3 0 2
       25 GETUPVAL                         R4 0
       26 GETUPVAL                         R6 1
       27 GETUPVAL                         R7 0
       28 GETTABLE                         R5 R6 R7
       29 SETLIST                          R3 R4 2 [1]
       31 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       33 MOVE                             R2 R0
       34 GETIMPORT                        R1 K3 [table.insert]
       36 CALL                             R1 2 0
       37 GETUPVAL                         R2 0
       38 ADDK                             R1 R2 K0 [1]
       39 GETUPVAL                         R2 2
       40 JUMPIFNOTLE                      R1 R2 ; [+17]
       42 NEWTABLE                         R3 0 2
       44 GETUPVAL                         R5 0
       45 ADDK                             R4 R5 K0 [1]
       46 GETUPVAL                         R6 1
       47 GETUPVAL                         R8 0
       48 ADDK                             R7 R8 K0 [1]
       49 GETTABLE                         R5 R6 R7
       50 SETLIST                          R3 R4 2 [1]
       52 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       54 MOVE                             R2 R0
       55 GETIMPORT                        R1 K3 [table.insert]
       57 CALL                             R1 2 0
       58 GETUPVAL                         R6 3
       59 GETUPVAL                         R7 4
       60 GETUPVAL                         R8 5
       61 LOADK                            R9 K4 ["n"]
       62 GETUPVAL                         R10 6
       63 CALL                             R6 4 1
       64 MOVE                             R2 R6
       65 LOADK                            R3 K5 ["\n\n"]
       66 LOADK                            R6 K6 ["n: %s\n"]
       67 GETUPVAL                         R9 7
       68 FASTCALL1                        TOSTRING R9 ; [+2]
       69 GETIMPORT                        R8 K8 [tostring]
       71 CALL                             R8 1 1
       72 NAMECALL                         R6 R6 K9 ["format"]
       74 CALL                             R6 2 1
       75 MOVE                             R4 R6
       76 LOADK                            R5 K10 ["Expected: never %s\n"]
       77 GETUPVAL                         R7 8
       78 GETUPVAL                         R8 9
       79 CALL                             R7 1 -1
       80 NAMECALL                         R5 R5 K9 ["format"]
       82 CALL                             R5 -1 1
       83 CONCAT                           R1 R2 R5
       84 GETUPVAL                         R3 1
       85 LENGTH                           R2 R3
       86 JUMPIFNOTEQKN                    R2 K0 [1] ; [+18]
       88 GETUPVAL                         R4 1
       89 GETTABLEN                        R3 R4 1
       90 GETTABLEKS                       R2 R3 K11 ["type"]
       92 JUMPIFNOTEQKS                    R2 K12 ["return"] ; [+12]
       94 GETUPVAL                         R2 10
       95 GETUPVAL                         R5 1
       96 GETTABLEN                        R4 R5 1
       97 GETTABLEKS                       R3 R4 K13 ["value"]
       99 CALL                             R2 1 1
      100 GETUPVAL                         R3 10
      101 GETUPVAL                         R4 9
      102 CALL                             R3 1 1
      103 JUMPIFEQ                         R2 R3 ; [+15]
      105 MOVE                             R2 R1
      106 GETUPVAL                         R3 11
      107 LOADK                            R4 K14 ["Received:       "]
      108 GETUPVAL                         R5 9
      109 MOVE                             R6 R0
      110 GETUPVAL                         R9 1
      111 LENGTH                           R8 R9
      112 JUMPIFEQKN                       R8 K0 [1] ; [+2]
      114 LOADB                            R7 0 +1
      115 LOADB                            R7 1
      116 GETUPVAL                         R8 0
      117 CALL                             R3 5 1
      118 CONCAT                           R1 R2 R3
      119 MOVE                             R2 R1
      120 GETUPVAL                         R3 12
      121 GETUPVAL                         R4 13
      122 GETUPVAL                         R5 1
      123 CALL                             R4 1 1
      124 GETUPVAL                         R6 14
      125 LENGTH                           R5 R6
      126 CALL                             R3 2 1
      127 CONCAT                           R1 R2 R3
      128 RETURN                           R1 1

PROTO_77:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETUPVAL                         R2 1
        4 JUMPIFNOTLE                      R1 R2 ; [+88]
        6 GETUPVAL                         R2 0
        7 SUBK                             R1 R2 K0 [1]
        8 LOADN                            R2 1
        9 JUMPIFNOTLE                      R2 R1 ; [+32]
       11 GETUPVAL                         R2 0
       12 SUBK                             R1 R2 K0 [1]
       13 LOADN                            R2 1
       14 JUMPIFNOTLE                      R2 R1 ; [+9]
       16 GETUPVAL                         R2 2
       17 GETUPVAL                         R3 3
       18 GETUPVAL                         R5 4
       19 GETTABLE                         R4 R5 R1
       20 CALL                             R2 2 1
       21 JUMPIF                           R2 ; [+2]
       22 SUBK                             R1 R1 K0 [1]
       23 JUMPBACK                         ; [-11]
       24 LOADN                            R2 1
       25 JUMPIFNOTLT                      R1 R2 ; [+3]
       27 GETUPVAL                         R2 0
       28 SUBK                             R1 R2 K0 [1]
       29 NEWTABLE                         R4 0 2
       31 MOVE                             R5 R1
       32 GETUPVAL                         R7 4
       33 GETTABLE                         R6 R7 R1
       34 SETLIST                          R4 R5 2 [1]
       36 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       38 MOVE                             R3 R0
       39 GETIMPORT                        R2 K3 [table.insert]
       41 CALL                             R2 2 0
       42 NEWTABLE                         R3 0 2
       44 GETUPVAL                         R4 0
       45 GETUPVAL                         R6 4
       46 GETUPVAL                         R7 0
       47 GETTABLE                         R5 R6 R7
       48 SETLIST                          R3 R4 2 [1]
       50 FASTCALL2                        TABLE_INSERT R0 R3 ; [+4]
       52 MOVE                             R2 R0
       53 GETIMPORT                        R1 K3 [table.insert]
       55 CALL                             R1 2 0
       56 GETUPVAL                         R2 0
       57 ADDK                             R1 R2 K0 [1]
       58 GETUPVAL                         R2 1
       59 JUMPIFNOTLE                      R1 R2 ; [+67]
       61 GETUPVAL                         R2 0
       62 ADDK                             R1 R2 K0 [1]
       63 GETUPVAL                         R2 1
       64 JUMPIFNOTLE                      R1 R2 ; [+9]
       66 GETUPVAL                         R2 2
       67 GETUPVAL                         R3 3
       68 GETUPVAL                         R5 4
       69 GETTABLE                         R4 R5 R1
       70 CALL                             R2 2 1
       71 JUMPIF                           R2 ; [+2]
       72 ADDK                             R1 R1 K0 [1]
       73 JUMPBACK                         ; [-11]
       74 GETUPVAL                         R2 1
       75 JUMPIFNOTLT                      R2 R1 ; [+3]
       77 GETUPVAL                         R2 0
       78 ADDK                             R1 R2 K0 [1]
       79 NEWTABLE                         R4 0 2
       81 MOVE                             R5 R1
       82 GETUPVAL                         R7 4
       83 GETTABLE                         R6 R7 R1
       84 SETLIST                          R4 R5 2 [1]
       86 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
       88 MOVE                             R3 R0
       89 GETIMPORT                        R2 K3 [table.insert]
       91 CALL                             R2 2 0
       92 JUMP                             ; [+34]
       93 GETUPVAL                         R1 1
       94 LOADN                            R2 0
       95 JUMPIFNOTLT                      R2 R1 ; [+31]
       97 GETUPVAL                         R1 1
       98 LOADN                            R2 1
       99 JUMPIFNOTLE                      R2 R1 ; [+9]
      101 GETUPVAL                         R2 2
      102 GETUPVAL                         R3 3
      103 GETUPVAL                         R5 4
      104 GETTABLE                         R4 R5 R1
      105 CALL                             R2 2 1
      106 JUMPIF                           R2 ; [+2]
      107 SUBK                             R1 R1 K0 [1]
      108 JUMPBACK                         ; [-11]
      109 LOADN                            R2 1
      110 JUMPIFNOTLT                      R1 R2 ; [+3]
      112 GETUPVAL                         R2 1
      113 SUBK                             R1 R2 K0 [1]
      114 NEWTABLE                         R4 0 2
      116 MOVE                             R5 R1
      117 GETUPVAL                         R7 4
      118 GETTABLE                         R6 R7 R1
      119 SETLIST                          R4 R5 2 [1]
      121 FASTCALL2                        TABLE_INSERT R0 R4 ; [+4]
      123 MOVE                             R3 R0
      124 GETIMPORT                        R2 K3 [table.insert]
      126 CALL                             R2 2 0
      127 GETUPVAL                         R8 5
      128 GETUPVAL                         R9 6
      129 GETUPVAL                         R10 7
      130 LOADK                            R11 K4 ["n"]
      131 GETUPVAL                         R12 8
      132 CALL                             R8 4 1
      133 MOVE                             R2 R8
      134 LOADK                            R3 K5 ["\n\n"]
      135 LOADK                            R8 K6 ["n: %s\n"]
      136 GETUPVAL                         R11 9
      137 FASTCALL1                        TOSTRING R11 ; [+2]
      138 GETIMPORT                        R10 K8 [tostring]
      140 CALL                             R10 1 1
      141 NAMECALL                         R8 R8 K9 ["format"]
      143 CALL                             R8 2 1
      144 MOVE                             R4 R8
      145 LOADK                            R8 K10 ["Expected: %s\n"]
      146 GETUPVAL                         R10 10
      147 GETUPVAL                         R11 3
      148 CALL                             R10 1 -1
      149 NAMECALL                         R8 R8 K9 ["format"]
      151 CALL                             R8 -1 1
      152 MOVE                             R5 R8
      153 GETUPVAL                         R8 11
      154 LOADK                            R9 K11 ["Received: "]
      155 GETUPVAL                         R10 3
      156 MOVE                             R11 R0
      157 GETUPVAL                         R14 4
      158 LENGTH                           R13 R14
      159 JUMPIFEQKN                       R13 K0 [1] ; [+2]
      161 LOADB                            R12 0 +1
      162 LOADB                            R12 1
      163 GETUPVAL                         R13 0
      164 CALL                             R8 5 1
      165 MOVE                             R6 R8
      166 GETUPVAL                         R7 12
      167 GETUPVAL                         R8 13
      168 GETUPVAL                         R9 4
      169 CALL                             R8 1 1
      170 GETUPVAL                         R10 14
      171 LENGTH                           R9 R10
      172 CALL                             R7 2 1
      173 CONCAT                           R1 R2 R7
      174 RETURN                           R1 1

PROTO_78:
        0 DUPTABLE                         R4 K4 [{"expectedColor", "isNot", "promise", "secondArgument"}]
        1 DUPCLOSURE                       R5 K5 [PROTO_75]
        2 SETTABLEKS                       R5 R4 K0 ["expectedColor"]
        4 GETTABLEKS                       R5 R0 K1 ["isNot"]
        6 SETTABLEKS                       R5 R4 K1 ["isNot"]
        8 GETTABLEKS                       R5 R0 K2 ["promise"]
       10 SETTABLEKS                       R5 R4 K2 ["promise"]
       12 LOADK                            R5 K6 ["expected"]
       13 SETTABLEKS                       R5 R4 K3 ["secondArgument"]
       15 GETUPVAL                         R5 0
       16 MOVE                             R6 R1
       17 GETUPVAL                         R7 1
       18 LOADK                            R8 K7 ["n"]
       19 MOVE                             R9 R4
       20 CALL                             R5 4 0
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R5 R6 K8 ["isSafeInteger"]
       24 MOVE                             R6 R2
       25 CALL                             R5 1 1
       26 JUMPIFNOT                        R5 ; [+3]
       27 LOADN                            R5 1
       28 JUMPIFNOTLT                      R2 R5 ; [+24]
       30 GETIMPORT                        R5 K10 [error]
       32 GETUPVAL                         R6 3
       33 GETUPVAL                         R7 4
       34 GETUPVAL                         R8 5
       35 GETUPVAL                         R9 1
       36 LOADNIL                          R10
       37 LOADK                            R11 K7 ["n"]
       38 MOVE                             R12 R4
       39 CALL                             R8 4 1
       40 LOADK                            R9 K11 ["%s must be a positive integer"]
       41 LOADK                            R11 K7 ["n"]
       42 NAMECALL                         R9 R9 K12 ["format"]
       44 CALL                             R9 2 1
       45 GETUPVAL                         R10 6
       46 LOADK                            R11 K7 ["n"]
       47 MOVE                             R12 R2
       48 GETUPVAL                         R13 7
       49 CALL                             R10 3 -1
       50 CALL                             R7 -1 -1
       51 CALL                             R6 -1 -1
       52 CALL                             R5 -1 0
       53 GETTABLEKS                       R5 R1 K13 ["getMockName"]
       55 CALL                             R5 0 1
       56 GETTABLEKS                       R6 R1 K14 ["mock"]
       58 GETTABLEKS                       R7 R6 K15 ["calls"]
       60 GETTABLEKS                       R8 R6 K16 ["results"]
       62 LENGTH                           R9 R8
       63 LOADB                            R10 0
       64 JUMPIFNOTLE                      R2 R9 ; [+5]
       66 GETUPVAL                         R10 8
       67 MOVE                             R11 R3
       68 GETTABLE                         R12 R8 R2
       69 CALL                             R10 2 1
       70 LOADNIL                          R11
       71 JUMPIFNOT                        R10 ; [+17]
       72 NEWCLOSURE                       R11 P1
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R9
       76 CAPTURE                          UPVAL U5
       77 CAPTURE                          UPVAL U1
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R2
       81 CAPTURE                          UPVAL U9
       82 CAPTURE                          VAL R3
       83 CAPTURE                          UPVAL U7
       84 CAPTURE                          UPVAL U10
       85 CAPTURE                          UPVAL U11
       86 CAPTURE                          UPVAL U12
       87 CAPTURE                          VAL R7
       88 JUMP                             ; [+16]
       89 NEWCLOSURE                       R11 P2
       90 CAPTURE                          VAL R2
       91 CAPTURE                          VAL R9
       92 CAPTURE                          UPVAL U8
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R8
       95 CAPTURE                          UPVAL U5
       96 CAPTURE                          UPVAL U1
       97 CAPTURE                          VAL R5
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R2
      100 CAPTURE                          UPVAL U9
      101 CAPTURE                          UPVAL U10
      102 CAPTURE                          UPVAL U11
      103 CAPTURE                          UPVAL U12
      104 CAPTURE                          VAL R7
      105 DUPTABLE                         R12 K19 [{"message", "pass"}]
      106 SETTABLEKS                       R11 R12 K17 ["message"]
      108 SETTABLEKS                       R10 R12 K18 ["pass"]
      110 RETURN                           R12 1

PROTO_79:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          UPVAL U9
       12 CAPTURE                          UPVAL U10
       13 CAPTURE                          UPVAL U11
       14 RETURN                           R1 1

PROTO_80:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+15]
        3 LOADB                            R1 0
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+7]
       11 GETTABLEKS                       R2 R0 K3 ["_isMockFunction"]
       13 JUMPIFEQKB                       R2 TRUE ; [+2]
       15 LOADB                            R1 0 +1
       16 LOADB                            R1 1
       17 RETURN                           R1 1

PROTO_81:
        0 LOADB                            R1 0
        1 JUMPIFEQKNIL                     R0 ; [+37]
        3 LOADB                            R1 0
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+29]
       11 LOADB                            R1 0
       12 GETTABLEKS                       R2 R0 K3 ["calls"]
       14 JUMPIFEQKNIL                     R2 ; [+24]
       16 LOADB                            R1 0
       17 GETTABLEKS                       R4 R0 K3 ["calls"]
       19 GETTABLEKS                       R3 R4 K4 ["all"]
       21 FASTCALL1                        TYPEOF R3 ; [+2]
       22 GETIMPORT                        R2 K1 [typeof]
       24 CALL                             R2 1 1
       25 JUMPIFNOTEQKS                    R2 K5 ["function"] ; [+13]
       27 GETTABLEKS                       R4 R0 K3 ["calls"]
       29 GETTABLEKS                       R3 R4 K6 ["count"]
       31 FASTCALL1                        TYPEOF R3 ; [+2]
       32 GETIMPORT                        R2 K1 [typeof]
       34 CALL                             R2 1 1
       35 JUMPIFEQKS                       R2 K5 ["function"] ; [+2]
       37 LOADB                            R1 0 +1
       38 LOADB                            R1 1
       39 RETURN                           R1 1

PROTO_82:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 JUMPIF                           R4 ; [+29]
        4 GETUPVAL                         R4 1
        5 MOVE                             R5 R0
        6 CALL                             R4 1 1
        7 JUMPIF                           R4 ; [+25]
        8 GETIMPORT                        R4 K1 [error]
       10 GETUPVAL                         R5 2
       11 GETUPVAL                         R6 3
       12 GETUPVAL                         R7 4
       13 MOVE                             R8 R1
       14 LOADNIL                          R9
       15 MOVE                             R10 R2
       16 MOVE                             R11 R3
       17 CALL                             R7 4 1
       18 LOADK                            R8 K2 ["%s value must be a mock or spy function"]
       19 GETUPVAL                         R10 5
       20 LOADK                            R11 K3 ["received"]
       21 CALL                             R10 1 -1
       22 NAMECALL                         R8 R8 K4 ["format"]
       24 CALL                             R8 -1 1
       25 GETUPVAL                         R9 6
       26 LOADK                            R10 K5 ["Received"]
       27 MOVE                             R11 R0
       28 GETUPVAL                         R12 7
       29 CALL                             R9 3 -1
       30 CALL                             R6 -1 -1
       31 CALL                             R5 -1 -1
       32 CALL                             R4 -1 0
       33 RETURN                           R0 0

PROTO_83:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 CALL                             R4 1 1
        3 JUMPIF                           R4 ; [+25]
        4 GETIMPORT                        R4 K1 [error]
        6 GETUPVAL                         R5 1
        7 GETUPVAL                         R6 2
        8 GETUPVAL                         R7 3
        9 MOVE                             R8 R1
       10 LOADNIL                          R9
       11 MOVE                             R10 R2
       12 MOVE                             R11 R3
       13 CALL                             R7 4 1
       14 LOADK                            R8 K2 ["%s value must be a mock function"]
       15 GETUPVAL                         R10 4
       16 LOADK                            R11 K3 ["received"]
       17 CALL                             R10 1 -1
       18 NAMECALL                         R8 R8 K4 ["format"]
       20 CALL                             R8 -1 1
       21 GETUPVAL                         R9 5
       22 LOADK                            R10 K5 ["Received"]
       23 MOVE                             R11 R0
       24 GETUPVAL                         R12 6
       25 CALL                             R9 3 -1
       26 CALL                             R6 -1 -1
       27 CALL                             R5 -1 -1
       28 CALL                             R4 -1 0
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETIMPORT                        R2 K4 [require]
        9 GETTABLEKS                       R3 R1 K5 ["LuauPolyfill"]
       11 CALL                             R2 1 1
       12 GETTABLEKS                       R3 R2 K6 ["Array"]
       14 GETTABLEKS                       R4 R2 K7 ["Error"]
       16 GETTABLEKS                       R5 R2 K8 ["Number"]
       18 GETTABLEKS                       R6 R2 K9 ["String"]
       20 GETTABLEKS                       R7 R2 K10 ["Symbol"]
       22 GETIMPORT                        R9 K4 [require]
       24 GETTABLEKS                       R10 R1 K11 ["JestGetType"]
       26 CALL                             R9 1 1
       27 GETTABLEKS                       R8 R9 K12 ["getType"]
       29 GETIMPORT                        R10 K4 [require]
       31 GETTABLEKS                       R11 R1 K11 ["JestGetType"]
       33 CALL                             R10 1 1
       34 GETTABLEKS                       R9 R10 K13 ["isPrimitive"]
       36 GETIMPORT                        R10 K4 [require]
       38 GETTABLEKS                       R11 R1 K14 ["JestMatcherUtils"]
       40 CALL                             R10 1 1
       41 GETTABLEKS                       R11 R10 K15 ["DIM_COLOR"]
       43 GETTABLEKS                       R12 R10 K16 ["EXPECTED_COLOR"]
       45 GETTABLEKS                       R13 R10 K17 ["RECEIVED_COLOR"]
       47 GETTABLEKS                       R14 R10 K18 ["diff"]
       49 GETTABLEKS                       R15 R10 K19 ["ensureExpectedIsNonNegativeInteger"]
       51 GETTABLEKS                       R16 R10 K20 ["ensureNoExpected"]
       53 GETTABLEKS                       R17 R10 K21 ["matcherErrorMessage"]
       55 GETTABLEKS                       R18 R10 K22 ["matcherHint"]
       57 GETTABLEKS                       R19 R10 K23 ["printExpected"]
       59 GETTABLEKS                       R20 R10 K24 ["printReceived"]
       61 GETTABLEKS                       R21 R10 K25 ["printWithType"]
       63 GETTABLEKS                       R22 R10 K26 ["stringify"]
       65 GETIMPORT                        R23 K4 [require]
       67 GETTABLEKS                       R24 R0 K27 ["jasmineUtils"]
       69 CALL                             R23 1 1
       70 GETTABLEKS                       R24 R23 K28 ["equals"]
       72 GETIMPORT                        R25 K4 [require]
       74 GETTABLEKS                       R26 R0 K29 ["utils"]
       76 CALL                             R25 1 1
       77 GETTABLEKS                       R26 R25 K30 ["iterableEquality"]
       79 LOADNIL                          R27
       80 LOADNIL                          R28
       81 LOADNIL                          R29
       82 LOADNIL                          R30
       83 LOADNIL                          R31
       84 LOADNIL                          R32
       85 LOADNIL                          R33
       86 LOADNIL                          R34
       87 LOADNIL                          R35
       88 LOADNIL                          R36
       89 LOADNIL                          R37
       90 LOADNIL                          R38
       91 LOADNIL                          R39
       92 LOADNIL                          R40
       93 LOADNIL                          R41
       94 LOADNIL                          R42
       95 LOADNIL                          R43
       96 LOADNIL                          R44
       97 LOADNIL                          R45
       98 LOADNIL                          R46
       99 LOADNIL                          R47
      100 DUPCLOSURE                       R27 K31 [PROTO_0]
      101 DUPCLOSURE                       R28 K32 [PROTO_2]
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R19
      104 NEWCLOSURE                       R29 P2
      105 CAPTURE                          VAL R3
      106 CAPTURE                          REF R31
      107 CAPTURE                          REF R30
      108 CAPTURE                          VAL R20
      109 DUPCLOSURE                       R30 K33 [PROTO_5]
      110 CAPTURE                          VAL R11
      111 CAPTURE                          VAL R22
      112 DUPCLOSURE                       R31 K34 [PROTO_6]
      113 CAPTURE                          VAL R24
      114 CAPTURE                          VAL R26
      115 NEWCLOSURE                       R32 P5
      116 CAPTURE                          REF R31
      117 NEWCLOSURE                       R33 P6
      118 CAPTURE                          REF R31
      119 DUPCLOSURE                       R34 K35 [PROTO_10]
      120 CAPTURE                          VAL R3
      121 DUPCLOSURE                       R35 K36 [PROTO_11]
      122 CAPTURE                          VAL R20
      123 DUPCLOSURE                       R36 K37 [PROTO_13]
      124 NEWCLOSURE                       R37 P10
      125 CAPTURE                          REF R29
      126 CAPTURE                          REF R36
      127 CAPTURE                          VAL R3
      128 NEWCLOSURE                       R38 P11
      129 CAPTURE                          REF R28
      130 CAPTURE                          REF R40
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R13
      133 CAPTURE                          REF R31
      134 CAPTURE                          REF R30
      135 CAPTURE                          REF R41
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R3
      138 CAPTURE                          VAL R22
      139 CAPTURE                          REF R29
      140 CAPTURE                          REF R36
      141 CAPTURE                          REF R39
      142 GETIMPORT                        R48 K40 [string.gsub]
      144 LOADK                            R49 K41 ["Received"]
      145 LOADK                            R50 K42 ["[a-zA-Z0-9_]"]
      146 LOADK                            R51 K43 [" "]
      147 CALL                             R48 3 1
      148 NEWCLOSURE                       R39 P12
      149 CAPTURE                          VAL R3
      150 CAPTURE                          REF R31
      151 CAPTURE                          VAL R48
      152 CAPTURE                          REF R30
      153 CAPTURE                          REF R41
      154 CAPTURE                          VAL R14
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R13
      157 CAPTURE                          VAL R22
      158 NEWCLOSURE                       R40 P13
      159 CAPTURE                          VAL R3
      160 CAPTURE                          REF R41
      161 DUPCLOSURE                       R41 K44 [PROTO_24]
      162 CAPTURE                          VAL R8
      163 CAPTURE                          VAL R9
      164 NEWCLOSURE                       R42 P15
      165 CAPTURE                          REF R31
      166 CAPTURE                          REF R30
      167 CAPTURE                          VAL R20
      168 NEWCLOSURE                       R43 P16
      169 CAPTURE                          REF R42
      170 CAPTURE                          REF R36
      171 CAPTURE                          VAL R6
      172 CAPTURE                          VAL R3
      173 NEWCLOSURE                       R49 P17
      174 CAPTURE                          VAL R16
      175 CAPTURE                          REF R46
      176 CAPTURE                          REF R45
      177 CAPTURE                          VAL R3
      178 CAPTURE                          VAL R18
      179 CAPTURE                          VAL R19
      180 CAPTURE                          VAL R20
      181 CAPTURE                          REF R29
      182 NEWCLOSURE                       R50 P18
      183 CAPTURE                          VAL R16
      184 CAPTURE                          REF R47
      185 CAPTURE                          VAL R3
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R19
      188 CAPTURE                          VAL R20
      189 NEWCLOSURE                       R51 P19
      190 CAPTURE                          VAL R15
      191 CAPTURE                          REF R46
      192 CAPTURE                          REF R45
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R19
      195 CAPTURE                          VAL R20
      196 NEWCLOSURE                       R52 P20
      197 CAPTURE                          VAL R15
      198 CAPTURE                          REF R47
      199 CAPTURE                          VAL R3
      200 CAPTURE                          VAL R18
      201 CAPTURE                          VAL R19
      202 CAPTURE                          VAL R20
      203 NEWCLOSURE                       R53 P21
      204 CAPTURE                          VAL R7
      205 CAPTURE                          REF R46
      206 CAPTURE                          REF R45
      207 CAPTURE                          VAL R3
      208 CAPTURE                          REF R32
      209 CAPTURE                          VAL R18
      210 CAPTURE                          REF R28
      211 CAPTURE                          VAL R22
      212 CAPTURE                          REF R37
      213 CAPTURE                          VAL R20
      214 CAPTURE                          REF R38
      215 CAPTURE                          REF R27
      216 NEWCLOSURE                       R54 P22
      217 CAPTURE                          REF R47
      218 CAPTURE                          VAL R3
      219 CAPTURE                          REF R33
      220 CAPTURE                          VAL R18
      221 CAPTURE                          VAL R19
      222 CAPTURE                          VAL R22
      223 CAPTURE                          REF R43
      224 CAPTURE                          REF R35
      225 CAPTURE                          REF R34
      226 NEWCLOSURE                       R55 P23
      227 CAPTURE                          VAL R7
      228 CAPTURE                          REF R46
      229 CAPTURE                          REF R45
      230 CAPTURE                          VAL R3
      231 CAPTURE                          REF R32
      232 CAPTURE                          VAL R18
      233 CAPTURE                          REF R28
      234 CAPTURE                          VAL R22
      235 CAPTURE                          REF R37
      236 CAPTURE                          VAL R20
      237 CAPTURE                          REF R38
      238 CAPTURE                          REF R27
      239 NEWCLOSURE                       R56 P24
      240 CAPTURE                          REF R47
      241 CAPTURE                          REF R33
      242 CAPTURE                          VAL R18
      243 CAPTURE                          VAL R19
      244 CAPTURE                          VAL R22
      245 CAPTURE                          REF R43
      246 CAPTURE                          REF R35
      247 CAPTURE                          REF R34
      248 NEWCLOSURE                       R57 P25
      249 CAPTURE                          VAL R7
      250 CAPTURE                          REF R46
      251 CAPTURE                          VAL R5
      252 CAPTURE                          VAL R4
      253 CAPTURE                          VAL R17
      254 CAPTURE                          VAL R18
      255 CAPTURE                          VAL R21
      256 CAPTURE                          VAL R22
      257 CAPTURE                          REF R45
      258 CAPTURE                          VAL R3
      259 CAPTURE                          REF R32
      260 CAPTURE                          REF R28
      261 CAPTURE                          REF R37
      262 CAPTURE                          VAL R20
      263 CAPTURE                          REF R38
      264 CAPTURE                          REF R27
      265 NEWCLOSURE                       R58 P26
      266 CAPTURE                          REF R47
      267 CAPTURE                          VAL R5
      268 CAPTURE                          VAL R4
      269 CAPTURE                          VAL R17
      270 CAPTURE                          VAL R18
      271 CAPTURE                          VAL R21
      272 CAPTURE                          VAL R22
      273 CAPTURE                          REF R33
      274 CAPTURE                          VAL R19
      275 CAPTURE                          REF R43
      276 CAPTURE                          REF R35
      277 CAPTURE                          REF R34
      278 DUPTABLE                         R59 K65 [{"lastCalledWith", "lastReturnedWith", "nthCalledWith", "nthReturnedWith", "toBeCalled", "toBeCalledTimes", "toBeCalledWith", "toHaveBeenCalled", "toHaveBeenCalledTimes", "toHaveBeenCalledWith", "toHaveBeenLastCalledWith", "toHaveBeenNthCalledWith", "toHaveLastReturnedWith", "toHaveNthReturnedWith", "toHaveReturned", "toHaveReturnedTimes", "toHaveReturnedWith", "toReturn", "toReturnTimes", "toReturnWith"}]
      279 LOADK                            R61 K45 ["lastCalledWith"]
      280 NEWCLOSURE                       R60 P27
      281 CAPTURE                          VAL R7
      282 CAPTURE                          REF R46
      283 CAPTURE                          VAL R61
      284 CAPTURE                          REF R45
      285 CAPTURE                          VAL R3
      286 CAPTURE                          REF R32
      287 CAPTURE                          VAL R18
      288 CAPTURE                          REF R28
      289 CAPTURE                          VAL R22
      290 CAPTURE                          REF R37
      291 CAPTURE                          VAL R20
      292 CAPTURE                          REF R38
      293 CAPTURE                          REF R27
      294 SETTABLEKS                       R60 R59 K45 ["lastCalledWith"]
      296 LOADK                            R61 K46 ["lastReturnedWith"]
      297 NEWCLOSURE                       R60 P28
      298 CAPTURE                          REF R47
      299 CAPTURE                          VAL R61
      300 CAPTURE                          REF R33
      301 CAPTURE                          VAL R18
      302 CAPTURE                          VAL R19
      303 CAPTURE                          VAL R22
      304 CAPTURE                          REF R43
      305 CAPTURE                          REF R35
      306 CAPTURE                          REF R34
      307 SETTABLEKS                       R60 R59 K46 ["lastReturnedWith"]
      309 LOADK                            R61 K47 ["nthCalledWith"]
      310 NEWCLOSURE                       R60 P29
      311 CAPTURE                          VAL R7
      312 CAPTURE                          REF R46
      313 CAPTURE                          VAL R61
      314 CAPTURE                          VAL R5
      315 CAPTURE                          VAL R4
      316 CAPTURE                          VAL R17
      317 CAPTURE                          VAL R18
      318 CAPTURE                          VAL R21
      319 CAPTURE                          VAL R22
      320 CAPTURE                          REF R45
      321 CAPTURE                          VAL R3
      322 CAPTURE                          REF R32
      323 CAPTURE                          REF R28
      324 CAPTURE                          REF R37
      325 CAPTURE                          VAL R20
      326 CAPTURE                          REF R38
      327 CAPTURE                          REF R27
      328 SETTABLEKS                       R60 R59 K47 ["nthCalledWith"]
      330 LOADK                            R61 K48 ["nthReturnedWith"]
      331 NEWCLOSURE                       R60 P30
      332 CAPTURE                          REF R47
      333 CAPTURE                          VAL R61
      334 CAPTURE                          VAL R5
      335 CAPTURE                          VAL R4
      336 CAPTURE                          VAL R17
      337 CAPTURE                          VAL R18
      338 CAPTURE                          VAL R21
      339 CAPTURE                          VAL R22
      340 CAPTURE                          REF R33
      341 CAPTURE                          VAL R19
      342 CAPTURE                          REF R43
      343 CAPTURE                          REF R35
      344 CAPTURE                          REF R34
      345 SETTABLEKS                       R60 R59 K48 ["nthReturnedWith"]
      347 LOADK                            R61 K49 ["toBeCalled"]
      348 NEWCLOSURE                       R60 P31
      349 CAPTURE                          VAL R16
      350 CAPTURE                          VAL R61
      351 CAPTURE                          REF R46
      352 CAPTURE                          REF R45
      353 CAPTURE                          VAL R3
      354 CAPTURE                          VAL R18
      355 CAPTURE                          VAL R19
      356 CAPTURE                          VAL R20
      357 CAPTURE                          REF R29
      358 SETTABLEKS                       R60 R59 K49 ["toBeCalled"]
      360 LOADK                            R61 K50 ["toBeCalledTimes"]
      361 NEWCLOSURE                       R60 P32
      362 CAPTURE                          VAL R15
      363 CAPTURE                          VAL R61
      364 CAPTURE                          REF R46
      365 CAPTURE                          REF R45
      366 CAPTURE                          VAL R18
      367 CAPTURE                          VAL R19
      368 CAPTURE                          VAL R20
      369 SETTABLEKS                       R60 R59 K50 ["toBeCalledTimes"]
      371 LOADK                            R61 K51 ["toBeCalledWith"]
      372 NEWCLOSURE                       R60 P33
      373 CAPTURE                          VAL R7
      374 CAPTURE                          REF R46
      375 CAPTURE                          VAL R61
      376 CAPTURE                          REF R45
      377 CAPTURE                          VAL R3
      378 CAPTURE                          REF R32
      379 CAPTURE                          VAL R18
      380 CAPTURE                          REF R28
      381 CAPTURE                          VAL R22
      382 CAPTURE                          REF R37
      383 CAPTURE                          VAL R20
      384 CAPTURE                          REF R38
      385 CAPTURE                          REF R27
      386 SETTABLEKS                       R60 R59 K51 ["toBeCalledWith"]
      388 LOADK                            R61 K52 ["toHaveBeenCalled"]
      389 NEWCLOSURE                       R60 P31
      390 CAPTURE                          VAL R16
      391 CAPTURE                          VAL R61
      392 CAPTURE                          REF R46
      393 CAPTURE                          REF R45
      394 CAPTURE                          VAL R3
      395 CAPTURE                          VAL R18
      396 CAPTURE                          VAL R19
      397 CAPTURE                          VAL R20
      398 CAPTURE                          REF R29
      399 SETTABLEKS                       R60 R59 K52 ["toHaveBeenCalled"]
      401 LOADK                            R61 K53 ["toHaveBeenCalledTimes"]
      402 NEWCLOSURE                       R60 P32
      403 CAPTURE                          VAL R15
      404 CAPTURE                          VAL R61
      405 CAPTURE                          REF R46
      406 CAPTURE                          REF R45
      407 CAPTURE                          VAL R18
      408 CAPTURE                          VAL R19
      409 CAPTURE                          VAL R20
      410 SETTABLEKS                       R60 R59 K53 ["toHaveBeenCalledTimes"]
      412 LOADK                            R61 K54 ["toHaveBeenCalledWith"]
      413 NEWCLOSURE                       R60 P33
      414 CAPTURE                          VAL R7
      415 CAPTURE                          REF R46
      416 CAPTURE                          VAL R61
      417 CAPTURE                          REF R45
      418 CAPTURE                          VAL R3
      419 CAPTURE                          REF R32
      420 CAPTURE                          VAL R18
      421 CAPTURE                          REF R28
      422 CAPTURE                          VAL R22
      423 CAPTURE                          REF R37
      424 CAPTURE                          VAL R20
      425 CAPTURE                          REF R38
      426 CAPTURE                          REF R27
      427 SETTABLEKS                       R60 R59 K54 ["toHaveBeenCalledWith"]
      429 LOADK                            R61 K55 ["toHaveBeenLastCalledWith"]
      430 NEWCLOSURE                       R60 P27
      431 CAPTURE                          VAL R7
      432 CAPTURE                          REF R46
      433 CAPTURE                          VAL R61
      434 CAPTURE                          REF R45
      435 CAPTURE                          VAL R3
      436 CAPTURE                          REF R32
      437 CAPTURE                          VAL R18
      438 CAPTURE                          REF R28
      439 CAPTURE                          VAL R22
      440 CAPTURE                          REF R37
      441 CAPTURE                          VAL R20
      442 CAPTURE                          REF R38
      443 CAPTURE                          REF R27
      444 SETTABLEKS                       R60 R59 K55 ["toHaveBeenLastCalledWith"]
      446 LOADK                            R61 K56 ["toHaveBeenNthCalledWith"]
      447 NEWCLOSURE                       R60 P29
      448 CAPTURE                          VAL R7
      449 CAPTURE                          REF R46
      450 CAPTURE                          VAL R61
      451 CAPTURE                          VAL R5
      452 CAPTURE                          VAL R4
      453 CAPTURE                          VAL R17
      454 CAPTURE                          VAL R18
      455 CAPTURE                          VAL R21
      456 CAPTURE                          VAL R22
      457 CAPTURE                          REF R45
      458 CAPTURE                          VAL R3
      459 CAPTURE                          REF R32
      460 CAPTURE                          REF R28
      461 CAPTURE                          REF R37
      462 CAPTURE                          VAL R20
      463 CAPTURE                          REF R38
      464 CAPTURE                          REF R27
      465 SETTABLEKS                       R60 R59 K56 ["toHaveBeenNthCalledWith"]
      467 LOADK                            R61 K57 ["toHaveLastReturnedWith"]
      468 NEWCLOSURE                       R60 P28
      469 CAPTURE                          REF R47
      470 CAPTURE                          VAL R61
      471 CAPTURE                          REF R33
      472 CAPTURE                          VAL R18
      473 CAPTURE                          VAL R19
      474 CAPTURE                          VAL R22
      475 CAPTURE                          REF R43
      476 CAPTURE                          REF R35
      477 CAPTURE                          REF R34
      478 SETTABLEKS                       R60 R59 K57 ["toHaveLastReturnedWith"]
      480 LOADK                            R61 K58 ["toHaveNthReturnedWith"]
      481 NEWCLOSURE                       R60 P30
      482 CAPTURE                          REF R47
      483 CAPTURE                          VAL R61
      484 CAPTURE                          VAL R5
      485 CAPTURE                          VAL R4
      486 CAPTURE                          VAL R17
      487 CAPTURE                          VAL R18
      488 CAPTURE                          VAL R21
      489 CAPTURE                          VAL R22
      490 CAPTURE                          REF R33
      491 CAPTURE                          VAL R19
      492 CAPTURE                          REF R43
      493 CAPTURE                          REF R35
      494 CAPTURE                          REF R34
      495 SETTABLEKS                       R60 R59 K58 ["toHaveNthReturnedWith"]
      497 LOADK                            R61 K59 ["toHaveReturned"]
      498 NEWCLOSURE                       R60 P34
      499 CAPTURE                          VAL R16
      500 CAPTURE                          VAL R61
      501 CAPTURE                          REF R47
      502 CAPTURE                          VAL R3
      503 CAPTURE                          VAL R18
      504 CAPTURE                          VAL R19
      505 CAPTURE                          VAL R20
      506 SETTABLEKS                       R60 R59 K59 ["toHaveReturned"]
      508 LOADK                            R61 K60 ["toHaveReturnedTimes"]
      509 NEWCLOSURE                       R60 P35
      510 CAPTURE                          VAL R15
      511 CAPTURE                          VAL R61
      512 CAPTURE                          REF R47
      513 CAPTURE                          VAL R3
      514 CAPTURE                          VAL R18
      515 CAPTURE                          VAL R19
      516 CAPTURE                          VAL R20
      517 SETTABLEKS                       R60 R59 K60 ["toHaveReturnedTimes"]
      519 LOADK                            R61 K61 ["toHaveReturnedWith"]
      520 NEWCLOSURE                       R60 P36
      521 CAPTURE                          REF R47
      522 CAPTURE                          VAL R61
      523 CAPTURE                          VAL R3
      524 CAPTURE                          REF R33
      525 CAPTURE                          VAL R18
      526 CAPTURE                          VAL R19
      527 CAPTURE                          VAL R22
      528 CAPTURE                          REF R43
      529 CAPTURE                          REF R35
      530 CAPTURE                          REF R34
      531 SETTABLEKS                       R60 R59 K61 ["toHaveReturnedWith"]
      533 LOADK                            R61 K62 ["toReturn"]
      534 NEWCLOSURE                       R60 P34
      535 CAPTURE                          VAL R16
      536 CAPTURE                          VAL R61
      537 CAPTURE                          REF R47
      538 CAPTURE                          VAL R3
      539 CAPTURE                          VAL R18
      540 CAPTURE                          VAL R19
      541 CAPTURE                          VAL R20
      542 SETTABLEKS                       R60 R59 K62 ["toReturn"]
      544 LOADK                            R61 K63 ["toReturnTimes"]
      545 NEWCLOSURE                       R60 P35
      546 CAPTURE                          VAL R15
      547 CAPTURE                          VAL R61
      548 CAPTURE                          REF R47
      549 CAPTURE                          VAL R3
      550 CAPTURE                          VAL R18
      551 CAPTURE                          VAL R19
      552 CAPTURE                          VAL R20
      553 SETTABLEKS                       R60 R59 K63 ["toReturnTimes"]
      555 LOADK                            R61 K64 ["toReturnWith"]
      556 NEWCLOSURE                       R60 P36
      557 CAPTURE                          REF R47
      558 CAPTURE                          VAL R61
      559 CAPTURE                          VAL R3
      560 CAPTURE                          REF R33
      561 CAPTURE                          VAL R18
      562 CAPTURE                          VAL R19
      563 CAPTURE                          VAL R22
      564 CAPTURE                          REF R43
      565 CAPTURE                          REF R35
      566 CAPTURE                          REF R34
      567 SETTABLEKS                       R60 R59 K64 ["toReturnWith"]
      569 DUPCLOSURE                       R44 K66 [PROTO_80]
      570 DUPCLOSURE                       R45 K67 [PROTO_81]
      571 NEWCLOSURE                       R46 P39
      572 CAPTURE                          REF R44
      573 CAPTURE                          REF R45
      574 CAPTURE                          VAL R4
      575 CAPTURE                          VAL R17
      576 CAPTURE                          VAL R18
      577 CAPTURE                          VAL R13
      578 CAPTURE                          VAL R21
      579 CAPTURE                          VAL R20
      580 NEWCLOSURE                       R47 P40
      581 CAPTURE                          REF R44
      582 CAPTURE                          VAL R4
      583 CAPTURE                          VAL R17
      584 CAPTURE                          VAL R18
      585 CAPTURE                          VAL R13
      586 CAPTURE                          VAL R21
      587 CAPTURE                          VAL R20
      588 CLOSEUPVALS                      R27
      589 RETURN                           R59 1
