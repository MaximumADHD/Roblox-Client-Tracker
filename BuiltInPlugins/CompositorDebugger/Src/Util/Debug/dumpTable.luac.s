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
       74 JUMPIFNOTEQKS                    R14 K21 ["number"] ; [+10]
       76 LOADK                            R14 K22 ["["]
       77 FASTCALL1                        TOSTRING R11 ; [+3]
       78 MOVE                             R16 R11
       79 GETIMPORT                        R15 K24 [tostring]
       81 CALL                             R15 1 1
       82 LOADK                            R16 K25 ["]"]
       83 CONCAT                           R13 R14 R16
       84 JUMP                             ; [+17]
       85 FASTCALL1                        TYPE R11 ; [+3]
       86 MOVE                             R15 R11
       87 GETIMPORT                        R14 K20 [type]
       89 CALL                             R14 1 1
       90 JUMPIFNOTEQKS                    R14 K6 ["string"] ; [+3]
       92 MOVE                             R13 R11
       93 JUMP                             ; [+8]
       94 LOADK                            R14 K26 ["`"]
       95 FASTCALL1                        TOSTRING R11 ; [+3]
       96 MOVE                             R16 R11
       97 GETIMPORT                        R15 K24 [tostring]
       99 CALL                             R15 1 1
      100 LOADK                            R16 K26 ["`"]
      101 CONCAT                           R13 R14 R16
      102 MOVE                             R14 R5
      103 MOVE                             R15 R4
      104 LOADK                            R16 K9 ["  "]
      105 MOVE                             R17 R13
      106 LOADK                            R18 K27 [" = "]
      107 CONCAT                           R5 R14 R18
      108 FASTCALL1                        TYPE R12 ; [+3]
      109 MOVE                             R15 R12
      110 GETIMPORT                        R14 K20 [type]
      112 CALL                             R14 1 1
      113 JUMPIFNOTEQKS                    R14 K11 ["table"] ; [+10]
      115 MOVE                             R14 R5
      116 GETUPVAL                         R15 0
      117 MOVE                             R16 R12
      118 ADDK                             R17 R1 K28 [1]
      119 MOVE                             R18 R2
      120 MOVE                             R19 R3
      121 CALL                             R15 4 1
      122 CONCAT                           R5 R14 R15
      123 JUMP                             ; [+80]
      124 FASTCALL1                        TYPE R12 ; [+3]
      125 MOVE                             R15 R12
      126 GETIMPORT                        R14 K20 [type]
      128 CALL                             R14 1 1
      129 JUMPIFNOTEQKS                    R14 K29 ["userdata"] ; [+16]
      131 MOVE                             R14 R5
      132 FASTCALL1                        TYPEOF R12 ; [+3]
      133 MOVE                             R16 R12
      134 GETIMPORT                        R15 K31 [typeof]
      136 CALL                             R15 1 1
      137 LOADK                            R16 K32 [".new("]
      138 FASTCALL1                        TOSTRING R12 ; [+3]
      139 MOVE                             R18 R12
      140 GETIMPORT                        R17 K24 [tostring]
      142 CALL                             R17 1 1
      143 LOADK                            R18 K33 [")"]
      144 CONCAT                           R5 R14 R18
      145 JUMP                             ; [+58]
      146 FASTCALL1                        TYPE R12 ; [+3]
      147 MOVE                             R15 R12
      148 GETIMPORT                        R14 K20 [type]
      150 CALL                             R14 1 1
      151 JUMPIFNOTEQKS                    R14 K34 ["function"] ; [+5]
      153 MOVE                             R14 R5
      154 LOADK                            R15 K35 ["function() end"]
      155 CONCAT                           R5 R14 R15
      156 JUMP                             ; [+47]
      157 FASTCALL1                        TYPE R12 ; [+3]
      158 MOVE                             R15 R12
      159 GETIMPORT                        R14 K20 [type]
      161 CALL                             R14 1 1
      162 JUMPIFNOTEQKS                    R14 K6 ["string"] ; [+7]
      164 MOVE                             R14 R5
      165 LOADK                            R15 K36 ["\""]
      166 MOVE                             R16 R12
      167 LOADK                            R17 K36 ["\""]
      168 CONCAT                           R5 R14 R17
      169 JUMP                             ; [+34]
      170 FASTCALL1                        TYPE R12 ; [+3]
      171 MOVE                             R15 R12
      172 GETIMPORT                        R14 K20 [type]
      174 CALL                             R14 1 1
      175 JUMPIFNOTEQKS                    R14 K21 ["number"] ; [+21]
      177 JUMPIFNOTEQKN                    R12 K37 [Infinity] ; [+5]
      179 MOVE                             R14 R5
      180 LOADK                            R15 K38 ["math.huge"]
      181 CONCAT                           R5 R14 R15
      182 JUMP                             ; [+21]
      183 JUMPIFNOTEQKN                    R12 K39 [-Infinity] ; [+5]
      185 MOVE                             R14 R5
      186 LOADK                            R15 K40 ["-math.huge"]
      187 CONCAT                           R5 R14 R15
      188 JUMP                             ; [+15]
      189 MOVE                             R14 R5
      190 FASTCALL1                        TOSTRING R12 ; [+3]
      191 MOVE                             R16 R12
      192 GETIMPORT                        R15 K24 [tostring]
      194 CALL                             R15 1 1
      195 CONCAT                           R5 R14 R15
      196 JUMP                             ; [+7]
      197 MOVE                             R14 R5
      198 FASTCALL1                        TOSTRING R12 ; [+3]
      199 MOVE                             R16 R12
      200 GETIMPORT                        R15 K24 [tostring]
      202 CALL                             R15 1 1
      203 CONCAT                           R5 R14 R15
      204 MOVE                             R14 R5
      205 LOADK                            R15 K41 [",\n"]
      206 CONCAT                           R5 R14 R15
      207 FORGLOOP                         R7 2 [inext] ; [-141]
      209 LOADNIL                          R7
      210 SETTABLE                         R7 R3 R0
      211 MOVE                             R8 R5
      212 MOVE                             R9 R4
      213 LOADK                            R10 K42 ["}"]
      214 CONCAT                           R7 R8 R10
      215 RETURN                           R7 1

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
