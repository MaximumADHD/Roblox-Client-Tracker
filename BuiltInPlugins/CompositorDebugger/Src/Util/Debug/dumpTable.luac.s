PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+13]
        7 FASTCALL1                        TYPE R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K1 [type]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+6]
       14 JUMPIFLT                         R0 R1 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 FASTCALL1                        TOSTRING R0 ; [+3]
       20 MOVE                             R4 R0
       21 GETIMPORT                        R3 K4 [tostring]
       23 CALL                             R3 1 1
       24 FASTCALL1                        TOSTRING R1 ; [+3]
       25 MOVE                             R5 R1
       26 GETIMPORT                        R4 K4 [tostring]
       28 CALL                             R4 1 1
       29 JUMPIFLT                         R3 R4 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 RETURN                           R2 1

PROTO_1:
        0 JUMPIFNOTEQKNIL                  R0 ; [+3]
        2 LOADK                            R4 K0 ["nil"]
        3 RETURN                           R4 1
        4 ORK                              R1 R1 K1 [0]
        5 MOVE                             R4 R3
        6 JUMPIF                           R4 ; [+2]
        7 NEWTABLE                         R4 0 0
        9 MOVE                             R3 R4
       10 FASTCALL1                        ASSERT R0 ; [+3]
       11 MOVE                             R5 R0
       12 GETIMPORT                        R4 K3 [assert]
       14 CALL                             R4 1 0
       15 FASTCALL1                        ASSERT R1 ; [+3]
       16 MOVE                             R5 R1
       17 GETIMPORT                        R4 K3 [assert]
       19 CALL                             R4 1 0
       20 FASTCALL1                        ASSERT R3 ; [+3]
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K3 [assert]
       24 CALL                             R4 1 0
       25 JUMPIFNOT                        R2 ; [+4]
       26 JUMPIFNOTLT                      R2 R1 ; [+3]
       28 LOADK                            R4 K4 ["..."]
       29 RETURN                           R4 1
       30 GETTABLE                         R4 R3 R0
       31 JUMPIFNOT                        R4 ; [+2]
       32 LOADK                            R4 K5 ["<cycle detected>"]
       33 RETURN                           R4 1
       34 LOADB                            R4 1
       35 SETTABLE                         R4 R3 R0
       36 GETIMPORT                        R4 K8 [string.rep]
       38 LOADK                            R5 K9 ["  "]
       39 MOVE                             R6 R1
       40 CALL                             R4 2 1
       41 LOADK                            R5 K10 ["{\n"]
       42 NEWTABLE                         R6 0 0
       44 MOVE                             R7 R0
       45 LOADNIL                          R8
       46 LOADNIL                          R9
       47 FORGPREP                         R7
       48 FASTCALL2                        TABLE_INSERT R6 R10 ; [+5]
       50 MOVE                             R13 R6
       51 MOVE                             R14 R10
       52 GETIMPORT                        R12 K13 [table.insert]
       54 CALL                             R12 2 0
       55 FORGLOOP                         R7 2 ; [-8]
       57 GETIMPORT                        R7 K15 [table.sort]
       59 MOVE                             R8 R6
       60 DUPCLOSURE                       R9 K16 [PROTO_0]
       61 CALL                             R7 2 0
       62 GETIMPORT                        R7 K18 [ipairs]
       64 MOVE                             R8 R6
       65 CALL                             R7 1 3
       66 FORGPREP_INEXT                   R7
       67 GETTABLE                         R12 R0 R11
       68 LOADNIL                          R13
       69 FASTCALL1                        TYPE R11 ; [+3]
       70 MOVE                             R15 R11
       71 GETIMPORT                        R14 K20 [type]
       73 CALL                             R14 1 1
       74 JUMPIFNOTEQKS                    R14 K21 ["number"] ; [+11]
       76 LOADK                            R14 K22 ["["]
       77 FASTCALL1                        TOSTRING R11 ; [+3]
       78 MOVE                             R18 R11
       79 GETIMPORT                        R17 K24 [tostring]
       81 CALL                             R17 1 1
       82 MOVE                             R15 R17
       83 LOADK                            R16 K25 ["]"]
       84 CONCAT                           R13 R14 R16
       85 JUMP                             ; [+18]
       86 FASTCALL1                        TYPE R11 ; [+3]
       87 MOVE                             R15 R11
       88 GETIMPORT                        R14 K20 [type]
       90 CALL                             R14 1 1
       91 JUMPIFNOTEQKS                    R14 K6 ["string"] ; [+3]
       93 MOVE                             R13 R11
       94 JUMP                             ; [+9]
       95 LOADK                            R14 K26 ["`"]
       96 FASTCALL1                        TOSTRING R11 ; [+3]
       97 MOVE                             R18 R11
       98 GETIMPORT                        R17 K24 [tostring]
      100 CALL                             R17 1 1
      101 MOVE                             R15 R17
      102 LOADK                            R16 K26 ["`"]
      103 CONCAT                           R13 R14 R16
      104 MOVE                             R14 R5
      105 MOVE                             R15 R4
      106 LOADK                            R16 K9 ["  "]
      107 MOVE                             R17 R13
      108 LOADK                            R18 K27 [" = "]
      109 CONCAT                           R5 R14 R18
      110 FASTCALL1                        TYPE R12 ; [+3]
      111 MOVE                             R15 R12
      112 GETIMPORT                        R14 K20 [type]
      114 CALL                             R14 1 1
      115 JUMPIFNOTEQKS                    R14 K11 ["table"] ; [+10]
      117 MOVE                             R14 R5
      118 GETUPVAL                         R15 0
      119 MOVE                             R16 R12
      120 ADDK                             R17 R1 K28 [1]
      121 MOVE                             R18 R2
      122 MOVE                             R19 R3
      123 CALL                             R15 4 1
      124 CONCAT                           R5 R14 R15
      125 JUMP                             ; [+82]
      126 FASTCALL1                        TYPE R12 ; [+3]
      127 MOVE                             R15 R12
      128 GETIMPORT                        R14 K20 [type]
      130 CALL                             R14 1 1
      131 JUMPIFNOTEQKS                    R14 K29 ["userdata"] ; [+18]
      133 MOVE                             R14 R5
      134 FASTCALL1                        TYPEOF R12 ; [+3]
      135 MOVE                             R20 R12
      136 GETIMPORT                        R19 K31 [typeof]
      138 CALL                             R19 1 1
      139 MOVE                             R15 R19
      140 LOADK                            R16 K32 [".new("]
      141 FASTCALL1                        TOSTRING R12 ; [+3]
      142 MOVE                             R20 R12
      143 GETIMPORT                        R19 K24 [tostring]
      145 CALL                             R19 1 1
      146 MOVE                             R17 R19
      147 LOADK                            R18 K33 [")"]
      148 CONCAT                           R5 R14 R18
      149 JUMP                             ; [+58]
      150 FASTCALL1                        TYPE R12 ; [+3]
      151 MOVE                             R15 R12
      152 GETIMPORT                        R14 K20 [type]
      154 CALL                             R14 1 1
      155 JUMPIFNOTEQKS                    R14 K34 ["function"] ; [+5]
      157 MOVE                             R14 R5
      158 LOADK                            R15 K35 ["function() end"]
      159 CONCAT                           R5 R14 R15
      160 JUMP                             ; [+47]
      161 FASTCALL1                        TYPE R12 ; [+3]
      162 MOVE                             R15 R12
      163 GETIMPORT                        R14 K20 [type]
      165 CALL                             R14 1 1
      166 JUMPIFNOTEQKS                    R14 K6 ["string"] ; [+7]
      168 MOVE                             R14 R5
      169 LOADK                            R15 K36 ["\""]
      170 MOVE                             R16 R12
      171 LOADK                            R17 K36 ["\""]
      172 CONCAT                           R5 R14 R17
      173 JUMP                             ; [+34]
      174 FASTCALL1                        TYPE R12 ; [+3]
      175 MOVE                             R15 R12
      176 GETIMPORT                        R14 K20 [type]
      178 CALL                             R14 1 1
      179 JUMPIFNOTEQKS                    R14 K21 ["number"] ; [+21]
      181 JUMPIFNOTEQKN                    R12 K37 [∞] ; [+5]
      183 MOVE                             R14 R5
      184 LOADK                            R15 K38 ["math.huge"]
      185 CONCAT                           R5 R14 R15
      186 JUMP                             ; [+21]
      187 JUMPIFNOTEQKN                    R12 K39 [-∞] ; [+5]
      189 MOVE                             R14 R5
      190 LOADK                            R15 K40 ["-math.huge"]
      191 CONCAT                           R5 R14 R15
      192 JUMP                             ; [+15]
      193 MOVE                             R14 R5
      194 FASTCALL1                        TOSTRING R12 ; [+3]
      195 MOVE                             R16 R12
      196 GETIMPORT                        R15 K24 [tostring]
      198 CALL                             R15 1 1
      199 CONCAT                           R5 R14 R15
      200 JUMP                             ; [+7]
      201 MOVE                             R14 R5
      202 FASTCALL1                        TOSTRING R12 ; [+3]
      203 MOVE                             R16 R12
      204 GETIMPORT                        R15 K24 [tostring]
      206 CALL                             R15 1 1
      207 CONCAT                           R5 R14 R15
      208 MOVE                             R14 R5
      209 LOADK                            R15 K41 [",\n"]
      210 CONCAT                           R5 R14 R15
      211 FORGLOOP                         R7 2 [inext] ; [-145]
      213 LOADNIL                          R7
      214 SETTABLE                         R7 R3 R0
      215 MOVE                             R8 R5
      216 MOVE                             R9 R4
      217 LOADK                            R10 K42 ["}"]
      218 CONCAT                           R7 R8 R10
      219 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 LOADN                            R5 0
        3 MOVE                             R6 R1
        4 CALL                             R3 3 1
        5 JUMPIFNOT                        R2 ; [+4]
        6 MOVE                             R4 R2
        7 MOVE                             R5 R3
        8 CALL                             R4 1 0
        9 RETURN                           R0 0
       10 GETIMPORT                        R4 K1 [print]
       12 MOVE                             R5 R3
       13 CALL                             R4 1 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 CAPTURE                          VAL R0
        3 DUPCLOSURE                       R1 K1 [PROTO_2]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
