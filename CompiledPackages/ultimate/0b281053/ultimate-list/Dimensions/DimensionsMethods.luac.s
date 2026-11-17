PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["back"]
        3 MOVE                             R5 R1
        4 CALL                             R4 1 1
        5 JUMPIFNOTEQKNIL                  R4 ; [+5]
        7 GETIMPORT                        R5 K3 [UDim2.new]
        9 CALL                             R5 0 -1
       10 RETURN                           R5 -1
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K4 ["getUDimRect"]
       14 MOVE                             R6 R0
       15 MOVE                             R7 R4
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R8 R8 K5 ["length"]
       19 MOVE                             R9 R1
       20 CALL                             R8 1 1
       21 MOVE                             R9 R2
       22 MOVE                             R10 R3
       23 CALL                             R5 5 1
       24 JUMPIFNOTEQKS                    R3 K6 ["x"] ; [+19]
       26 GETIMPORT                        R6 K8 [UDim2.fromOffset]
       28 GETTABLEKS                       R8 R5 K9 ["position"]
       30 GETTABLEKS                       R8 R8 K10 ["X"]
       32 GETTABLEKS                       R8 R8 K11 ["Offset"]
       34 GETTABLEKS                       R9 R5 K12 ["size"]
       36 GETTABLEKS                       R9 R9 K10 ["X"]
       38 GETTABLEKS                       R9 R9 K11 ["Offset"]
       40 ADD                              R7 R8 R9
       41 LOADN                            R8 0
       42 CALL                             R6 2 1
       43 RETURN                           R6 1
       44 JUMPIFNOTEQKS                    R3 K13 ["y"] ; [+19]
       46 GETIMPORT                        R6 K8 [UDim2.fromOffset]
       48 LOADN                            R7 0
       49 GETTABLEKS                       R9 R5 K9 ["position"]
       51 GETTABLEKS                       R9 R9 K14 ["Y"]
       53 GETTABLEKS                       R9 R9 K11 ["Offset"]
       55 GETTABLEKS                       R10 R5 K12 ["size"]
       57 GETTABLEKS                       R10 R10 K14 ["Y"]
       59 GETTABLEKS                       R10 R10 K11 ["Offset"]
       61 ADD                              R8 R9 R10
       62 CALL                             R6 2 1
       63 RETURN                           R6 1
       64 GETUPVAL                         R6 2
       65 MOVE                             R7 R3
       66 CALL                             R6 1 1
       67 RETURN                           R6 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R1 K0 ["x"] ; [+9]
        2 GETIMPORT                        R2 K3 [UDim2.new]
        4 LOADN                            R3 0
        5 MOVE                             R4 R0
        6 LOADN                            R5 1
        7 LOADN                            R6 0
        8 CALL                             R2 4 -1
        9 RETURN                           R2 -1
       10 JUMPIFNOTEQKS                    R1 K4 ["y"] ; [+9]
       12 GETIMPORT                        R2 K3 [UDim2.new]
       14 LOADN                            R3 1
       15 LOADN                            R4 0
       16 LOADN                            R5 0
       17 MOVE                             R6 R0
       18 CALL                             R2 4 -1
       19 RETURN                           R2 -1
       20 GETUPVAL                         R2 0
       21 MOVE                             R3 R1
       22 CALL                             R2 1 -1
       23 RETURN                           R2 -1

PROTO_2:
        0 JUMPIFNOTEQKS                    R2 K0 ["x"] ; [+8]
        2 GETIMPORT                        R3 K3 [UDim2.fromOffset]
        4 SUBK                             R5 R1 K4 [1]
        5 MUL                              R4 R0 R5
        6 LOADN                            R5 0
        7 CALL                             R3 2 -1
        8 RETURN                           R3 -1
        9 JUMPIFNOTEQKS                    R2 K5 ["y"] ; [+8]
       11 GETIMPORT                        R3 K3 [UDim2.fromOffset]
       13 LOADN                            R4 0
       14 SUBK                             R6 R1 K4 [1]
       15 MUL                              R5 R0 R6
       16 CALL                             R3 2 -1
       17 RETURN                           R3 -1
       18 GETUPVAL                         R3 0
       19 MOVE                             R4 R2
       20 CALL                             R3 1 -1
       21 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["getAmountPerNonDominantInGrid"]
        3 MOVE                             R5 R0
        4 MOVE                             R6 R2
        5 MOVE                             R7 R3
        6 CALL                             R4 3 1
        7 JUMPIFNOTEQKS                    R3 K1 ["x"] ; [+31]
        9 GETIMPORT                        R5 K4 [UDim2.new]
       11 LOADN                            R6 0
       12 DIV                              R10 R1 R4
       13 FASTCALL1                        MATH_CEIL R10 ; [+2]
       14 GETIMPORT                        R9 K8 [math.ceil]
       16 CALL                             R9 1 1
       17 SUBK                             R8 R9 K5 [1]
       18 GETTABLEKS                       R9 R0 K9 ["X"]
       20 GETTABLEKS                       R9 R9 K10 ["Offset"]
       22 MUL                              R7 R8 R9
       23 GETTABLEKS                       R9 R0 K11 ["Y"]
       25 GETTABLEKS                       R9 R9 K12 ["Scale"]
       27 SUBK                             R11 R1 K5 [1]
       28 MOD                              R10 R11 R4
       29 MUL                              R8 R9 R10
       30 GETTABLEKS                       R10 R0 K11 ["Y"]
       32 GETTABLEKS                       R10 R10 K10 ["Offset"]
       34 SUBK                             R12 R1 K5 [1]
       35 MOD                              R11 R12 R4
       36 MUL                              R9 R10 R11
       37 CALL                             R5 4 -1
       38 RETURN                           R5 -1
       39 JUMPIFNOTEQKS                    R3 K13 ["y"] ; [+31]
       41 GETIMPORT                        R5 K4 [UDim2.new]
       43 GETTABLEKS                       R7 R0 K9 ["X"]
       45 GETTABLEKS                       R7 R7 K12 ["Scale"]
       47 SUBK                             R9 R1 K5 [1]
       48 MOD                              R8 R9 R4
       49 MUL                              R6 R7 R8
       50 GETTABLEKS                       R8 R0 K9 ["X"]
       52 GETTABLEKS                       R8 R8 K10 ["Offset"]
       54 SUBK                             R10 R1 K5 [1]
       55 MOD                              R9 R10 R4
       56 MUL                              R7 R8 R9
       57 LOADN                            R8 0
       58 DIV                              R12 R1 R4
       59 FASTCALL1                        MATH_CEIL R12 ; [+2]
       60 GETIMPORT                        R11 K8 [math.ceil]
       62 CALL                             R11 1 1
       63 SUBK                             R10 R11 K5 [1]
       64 GETTABLEKS                       R11 R0 K11 ["Y"]
       66 GETTABLEKS                       R11 R11 K10 ["Offset"]
       68 MUL                              R9 R10 R11
       69 CALL                             R5 4 -1
       70 RETURN                           R5 -1
       71 GETUPVAL                         R5 1
       72 MOVE                             R6 R3
       73 CALL                             R5 1 -1
       74 RETURN                           R5 -1

PROTO_4:
        0 JUMPIFNOTEQKS                    R2 K0 ["x"] ; [+17]
        2 GETTABLEKS                       R4 R1 K1 ["Y"]
        4 GETTABLEKS                       R6 R0 K1 ["Y"]
        6 GETTABLEKS                       R6 R6 K2 ["Offset"]
        8 GETTABLEKS                       R8 R0 K1 ["Y"]
       10 GETTABLEKS                       R8 R8 K3 ["Scale"]
       12 GETTABLEKS                       R9 R1 K1 ["Y"]
       14 MUL                              R7 R8 R9
       15 ADD                              R5 R6 R7
       16 IDIV                             R3 R4 R5
       17 RETURN                           R3 1
       18 JUMPIFNOTEQKS                    R2 K4 ["y"] ; [+17]
       20 GETTABLEKS                       R4 R1 K5 ["X"]
       22 GETTABLEKS                       R6 R0 K5 ["X"]
       24 GETTABLEKS                       R6 R6 K2 ["Offset"]
       26 GETTABLEKS                       R8 R0 K5 ["X"]
       28 GETTABLEKS                       R8 R8 K3 ["Scale"]
       30 GETTABLEKS                       R9 R1 K5 ["X"]
       32 MUL                              R7 R8 R9
       33 ADD                              R5 R6 R7
       34 IDIV                             R3 R4 R5
       35 RETURN                           R3 1
       36 GETUPVAL                         R3 0
       37 MOVE                             R4 R2
       38 CALL                             R3 1 -1
       39 RETURN                           R3 -1

PROTO_5:
        0 JUMPIFNOTEQKS                    R1 K0 ["x"] ; [+4]
        2 GETTABLEKS                       R2 R0 K1 ["X"]
        4 RETURN                           R2 1
        5 JUMPIFNOTEQKS                    R1 K2 ["y"] ; [+4]
        7 GETTABLEKS                       R2 R0 K3 ["Y"]
        9 RETURN                           R2 1
       10 GETUPVAL                         R2 0
       11 MOVE                             R3 R1
       12 CALL                             R2 1 -1
       13 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R5 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R5 K1 ["consistentSize"] ; [+61]
        4 DUPTABLE                         R5 K4 [{"size", "position"}]
        5 GETTABLEKS                       R7 R0 K2 ["size"]
        7 JUMPIFNOTEQKS                    R4 K5 ["x"] ; [+10]
        9 GETIMPORT                        R8 K8 [UDim2.new]
       11 LOADN                            R9 0
       12 MOVE                             R10 R7
       13 LOADN                            R11 1
       14 LOADN                            R12 0
       15 CALL                             R8 4 1
       16 MOVE                             R6 R8
       17 JUMP                             ; [+15]
       18 JUMPIFNOTEQKS                    R4 K9 ["y"] ; [+10]
       20 GETIMPORT                        R8 K8 [UDim2.new]
       22 LOADN                            R9 1
       23 LOADN                            R10 0
       24 LOADN                            R11 0
       25 MOVE                             R12 R7
       26 CALL                             R8 4 1
       27 MOVE                             R6 R8
       28 JUMP                             ; [+4]
       29 GETUPVAL                         R8 0
       30 MOVE                             R9 R4
       31 CALL                             R8 1 1
       32 MOVE                             R6 R8
       33 SETTABLEKS                       R6 R5 K2 ["size"]
       35 GETTABLEKS                       R7 R0 K2 ["size"]
       37 JUMPIFNOTEQKS                    R4 K5 ["x"] ; [+9]
       39 GETIMPORT                        R8 K11 [UDim2.fromOffset]
       41 SUBK                             R10 R2 K12 [1]
       42 MUL                              R9 R7 R10
       43 LOADN                            R10 0
       44 CALL                             R8 2 1
       45 MOVE                             R6 R8
       46 JUMP                             ; [+14]
       47 JUMPIFNOTEQKS                    R4 K9 ["y"] ; [+9]
       49 GETIMPORT                        R8 K11 [UDim2.fromOffset]
       51 LOADN                            R9 0
       52 SUBK                             R11 R2 K12 [1]
       53 MUL                              R10 R7 R11
       54 CALL                             R8 2 1
       55 MOVE                             R6 R8
       56 JUMP                             ; [+4]
       57 GETUPVAL                         R8 0
       58 MOVE                             R9 R4
       59 CALL                             R8 1 1
       60 MOVE                             R6 R8
       61 SETTABLEKS                       R6 R5 K3 ["position"]
       63 RETURN                           R5 1
       64 GETTABLEKS                       R5 R0 K0 ["type"]
       66 JUMPIFNOTEQKS                    R5 K13 ["consistentUDim2"] ; [+16]
       68 DUPTABLE                         R5 K4 [{"size", "position"}]
       69 GETTABLEKS                       R6 R0 K14 ["udim2"]
       71 SETTABLEKS                       R6 R5 K2 ["size"]
       73 GETUPVAL                         R6 1
       74 GETTABLEKS                       R7 R0 K14 ["udim2"]
       76 MOVE                             R8 R2
       77 MOVE                             R9 R3
       78 MOVE                             R10 R4
       79 CALL                             R6 4 1
       80 SETTABLEKS                       R6 R5 K3 ["position"]
       82 RETURN                           R5 1
       83 GETTABLEKS                       R5 R0 K0 ["type"]
       85 JUMPIFNOTEQKS                    R5 K15 ["getter"] ; [+7]
       87 GETTABLEKS                       R5 R0 K16 ["callback"]
       89 MOVE                             R6 R1
       90 MOVE                             R7 R2
       91 CALL                             R5 2 -1
       92 RETURN                           R5 -1
       93 GETTABLEKS                       R5 R0 K0 ["type"]
       95 JUMPIFNOTEQKS                    R5 K17 ["spaced"] ; [+140]
       97 GETTABLEKS                       R5 R0 K18 ["inner"]
       99 GETTABLEKS                       R5 R5 K0 ["type"]
      101 JUMPIFNOTEQKS                    R5 K1 ["consistentSize"] ; [+68]
      103 DUPTABLE                         R5 K4 [{"size", "position"}]
      104 GETTABLEKS                       R7 R0 K18 ["inner"]
      106 GETTABLEKS                       R7 R7 K2 ["size"]
      108 JUMPIFNOTEQKS                    R4 K5 ["x"] ; [+10]
      110 GETIMPORT                        R8 K8 [UDim2.new]
      112 LOADN                            R9 0
      113 MOVE                             R10 R7
      114 LOADN                            R11 1
      115 LOADN                            R12 0
      116 CALL                             R8 4 1
      117 MOVE                             R6 R8
      118 JUMP                             ; [+15]
      119 JUMPIFNOTEQKS                    R4 K9 ["y"] ; [+10]
      121 GETIMPORT                        R8 K8 [UDim2.new]
      123 LOADN                            R9 1
      124 LOADN                            R10 0
      125 LOADN                            R11 0
      126 MOVE                             R12 R7
      127 CALL                             R8 4 1
      128 MOVE                             R6 R8
      129 JUMP                             ; [+4]
      130 GETUPVAL                         R8 0
      131 MOVE                             R9 R4
      132 CALL                             R8 1 1
      133 MOVE                             R6 R8
      134 SETTABLEKS                       R6 R5 K2 ["size"]
      136 GETTABLEKS                       R8 R0 K18 ["inner"]
      138 GETTABLEKS                       R8 R8 K2 ["size"]
      140 GETTABLEKS                       R9 R0 K19 ["spacing"]
      142 ADD                              R7 R8 R9
      143 JUMPIFNOTEQKS                    R4 K5 ["x"] ; [+9]
      145 GETIMPORT                        R8 K11 [UDim2.fromOffset]
      147 SUBK                             R10 R2 K12 [1]
      148 MUL                              R9 R7 R10
      149 LOADN                            R10 0
      150 CALL                             R8 2 1
      151 MOVE                             R6 R8
      152 JUMP                             ; [+14]
      153 JUMPIFNOTEQKS                    R4 K9 ["y"] ; [+9]
      155 GETIMPORT                        R8 K11 [UDim2.fromOffset]
      157 LOADN                            R9 0
      158 SUBK                             R11 R2 K12 [1]
      159 MUL                              R10 R7 R11
      160 CALL                             R8 2 1
      161 MOVE                             R6 R8
      162 JUMP                             ; [+4]
      163 GETUPVAL                         R8 0
      164 MOVE                             R9 R4
      165 CALL                             R8 1 1
      166 MOVE                             R6 R8
      167 SETTABLEKS                       R6 R5 K3 ["position"]
      169 RETURN                           R5 1
      170 GETTABLEKS                       R5 R0 K18 ["inner"]
      172 GETTABLEKS                       R5 R5 K0 ["type"]
      174 JUMPIFNOTEQKS                    R5 K13 ["consistentUDim2"] ; [+36]
      176 DUPTABLE                         R5 K4 [{"size", "position"}]
      177 GETTABLEKS                       R6 R0 K18 ["inner"]
      179 GETTABLEKS                       R6 R6 K14 ["udim2"]
      181 SETTABLEKS                       R6 R5 K2 ["size"]
      183 GETUPVAL                         R6 1
      184 GETTABLEKS                       R8 R0 K18 ["inner"]
      186 GETTABLEKS                       R8 R8 K14 ["udim2"]
      188 GETIMPORT                        R9 K11 [UDim2.fromOffset]
      190 JUMPIFNOTEQKS                    R4 K5 ["x"] ; [+4]
      192 GETTABLEKS                       R10 R0 K19 ["spacing"]
      194 JUMP                             ; [+1]
      195 LOADN                            R10 0
      196 JUMPIFNOTEQKS                    R4 K9 ["y"] ; [+4]
      198 GETTABLEKS                       R11 R0 K19 ["spacing"]
      200 JUMP                             ; [+1]
      201 LOADN                            R11 0
      202 CALL                             R9 2 1
      203 ADD                              R7 R8 R9
      204 MOVE                             R8 R2
      205 MOVE                             R9 R3
      206 MOVE                             R10 R4
      207 CALL                             R6 4 1
      208 SETTABLEKS                       R6 R5 K3 ["position"]
      210 RETURN                           R5 1
      211 GETTABLEKS                       R5 R0 K18 ["inner"]
      213 GETTABLEKS                       R5 R5 K0 ["type"]
      215 JUMPIFEQKS                       R5 K15 ["getter"] ; [+7]
      217 GETTABLEKS                       R5 R0 K18 ["inner"]
      219 GETTABLEKS                       R5 R5 K0 ["type"]
      221 JUMPIFNOTEQKS                    R5 K17 ["spaced"] ; [+6]
      223 GETIMPORT                        R5 K21 [error]
      225 LOADK                            R6 K22 ["Unsupported spaced dimensions"]
      226 CALL                             R5 1 0
      227 RETURN                           R0 0
      228 GETUPVAL                         R5 0
      229 GETTABLEKS                       R6 R0 K18 ["inner"]
      231 GETTABLEKS                       R6 R6 K0 ["type"]
      233 CALL                             R5 1 -1
      234 RETURN                           R5 -1
      235 RETURN                           R0 0
      236 GETUPVAL                         R5 0
      237 GETTABLEKS                       R6 R0 K0 ["type"]
      239 CALL                             R5 1 -1
      240 RETURN                           R5 -1
      241 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["getAmountPerNonDominantInGrid"]
        3 MOVE                             R4 R0
        4 MOVE                             R5 R1
        5 MOVE                             R6 R2
        6 CALL                             R3 3 1
        7 JUMPIFNOTEQKS                    R2 K1 ["x"] ; [+11]
        9 GETTABLEKS                       R6 R1 K3 ["X"]
       11 GETTABLEKS                       R7 R0 K4 ["Y"]
       13 GETTABLEKS                       R7 R7 K5 ["Offset"]
       15 IDIV                             R5 R6 R7
       16 ADDK                             R4 R5 K2 [2]
       17 MUL                              R5 R3 R4
       18 RETURN                           R5 1
       19 JUMPIFNOTEQKS                    R2 K6 ["y"] ; [+11]
       21 GETTABLEKS                       R6 R1 K4 ["Y"]
       23 GETTABLEKS                       R7 R0 K3 ["X"]
       25 GETTABLEKS                       R7 R7 K5 ["Offset"]
       27 IDIV                             R5 R6 R7
       28 ADDK                             R4 R5 K2 [2]
       29 MUL                              R5 R3 R4
       30 RETURN                           R5 1
       31 GETUPVAL                         R4 1
       32 MOVE                             R5 R2
       33 CALL                             R4 1 -1
       34 RETURN                           R4 -1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["type"]
        2 JUMPIFNOTEQKS                    R3 K1 ["consistentSize"] ; [+12]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K3 ["getDominantAxis"]
        7 MOVE                             R6 R1
        8 MOVE                             R7 R2
        9 CALL                             R5 2 1
       10 GETTABLEKS                       R6 R0 K4 ["size"]
       12 IDIV                             R4 R5 R6
       13 ADDK                             R3 R4 K2 [2]
       14 RETURN                           R3 1
       15 GETTABLEKS                       R3 R0 K0 ["type"]
       17 JUMPIFNOTEQKS                    R3 K5 ["consistentUDim2"] ; [+8]
       19 GETUPVAL                         R3 1
       20 GETTABLEKS                       R4 R0 K6 ["udim2"]
       22 MOVE                             R5 R1
       23 MOVE                             R6 R2
       24 CALL                             R3 3 -1
       25 RETURN                           R3 -1
       26 GETTABLEKS                       R3 R0 K0 ["type"]
       28 JUMPIFNOTEQKS                    R3 K7 ["getter"] ; [+3]
       30 LOADNIL                          R3
       31 RETURN                           R3 1
       32 GETTABLEKS                       R3 R0 K0 ["type"]
       34 JUMPIFNOTEQKS                    R3 K8 ["spaced"] ; [+79]
       36 GETTABLEKS                       R3 R0 K9 ["inner"]
       38 GETTABLEKS                       R3 R3 K0 ["type"]
       40 JUMPIFNOTEQKS                    R3 K1 ["consistentSize"] ; [+17]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K3 ["getDominantAxis"]
       45 MOVE                             R6 R1
       46 MOVE                             R7 R2
       47 CALL                             R5 2 1
       48 GETTABLEKS                       R7 R0 K9 ["inner"]
       50 GETTABLEKS                       R7 R7 K4 ["size"]
       52 GETTABLEKS                       R8 R0 K10 ["spacing"]
       54 ADD                              R6 R7 R8
       55 IDIV                             R4 R5 R6
       56 ADDK                             R3 R4 K2 [2]
       57 RETURN                           R3 1
       58 GETTABLEKS                       R3 R0 K9 ["inner"]
       60 GETTABLEKS                       R3 R3 K0 ["type"]
       62 JUMPIFNOTEQKS                    R3 K5 ["consistentUDim2"] ; [+26]
       64 GETUPVAL                         R3 1
       65 GETTABLEKS                       R5 R0 K9 ["inner"]
       67 GETTABLEKS                       R5 R5 K6 ["udim2"]
       69 GETIMPORT                        R6 K13 [UDim2.fromOffset]
       71 JUMPIFNOTEQKS                    R2 K14 ["x"] ; [+4]
       73 GETTABLEKS                       R7 R0 K10 ["spacing"]
       75 JUMP                             ; [+1]
       76 LOADN                            R7 0
       77 JUMPIFNOTEQKS                    R2 K15 ["y"] ; [+4]
       79 GETTABLEKS                       R8 R0 K10 ["spacing"]
       81 JUMP                             ; [+1]
       82 LOADN                            R8 0
       83 CALL                             R6 2 1
       84 ADD                              R4 R5 R6
       85 MOVE                             R5 R1
       86 MOVE                             R6 R2
       87 CALL                             R3 3 -1
       88 RETURN                           R3 -1
       89 GETTABLEKS                       R3 R0 K9 ["inner"]
       91 GETTABLEKS                       R3 R3 K0 ["type"]
       93 JUMPIFEQKS                       R3 K8 ["spaced"] ; [+7]
       95 GETTABLEKS                       R3 R0 K9 ["inner"]
       97 GETTABLEKS                       R3 R3 K0 ["type"]
       99 JUMPIFNOTEQKS                    R3 K7 ["getter"] ; [+6]
      101 GETIMPORT                        R3 K17 [error]
      103 LOADK                            R4 K18 ["Unsupported spaced dimensions"]
      104 CALL                             R3 1 0
      105 RETURN                           R0 0
      106 GETUPVAL                         R3 2
      107 GETTABLEKS                       R4 R0 K9 ["inner"]
      109 GETTABLEKS                       R4 R4 K0 ["type"]
      111 CALL                             R3 1 -1
      112 RETURN                           R3 -1
      113 RETURN                           R0 0
      114 GETUPVAL                         R3 2
      115 GETTABLEKS                       R4 R0 K0 ["type"]
      117 CALL                             R3 1 -1
      118 RETURN                           R3 -1
      119 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["type"]
        2 GETTABLEKS                       R3 R1 K0 ["type"]
        4 JUMPIFEQ                         R2 R3 ; [+3]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 GETTABLEKS                       R2 R0 K0 ["type"]
       10 JUMPIFNOTEQKS                    R2 K1 ["getter"] ; [+22]
       12 GETTABLEKS                       R4 R1 K0 ["type"]
       14 JUMPIFEQKS                       R4 K1 ["getter"] ; [+2]
       16 LOADB                            R3 0 +1
       17 LOADB                            R3 1
       18 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       20 LOADK                            R4 K2 ["Luau"]
       21 GETIMPORT                        R2 K4 [assert]
       23 CALL                             R2 2 0
       24 GETTABLEKS                       R3 R0 K5 ["callback"]
       26 GETTABLEKS                       R4 R1 K5 ["callback"]
       28 JUMPIFEQ                         R3 R4 ; [+2]
       30 LOADB                            R2 0 +1
       31 LOADB                            R2 1
       32 RETURN                           R2 1
       33 GETTABLEKS                       R2 R0 K0 ["type"]
       35 JUMPIFNOTEQKS                    R2 K6 ["consistentSize"] ; [+22]
       37 GETTABLEKS                       R4 R1 K0 ["type"]
       39 JUMPIFEQKS                       R4 K6 ["consistentSize"] ; [+2]
       41 LOADB                            R3 0 +1
       42 LOADB                            R3 1
       43 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       45 LOADK                            R4 K2 ["Luau"]
       46 GETIMPORT                        R2 K4 [assert]
       48 CALL                             R2 2 0
       49 GETTABLEKS                       R3 R0 K7 ["size"]
       51 GETTABLEKS                       R4 R1 K7 ["size"]
       53 JUMPIFEQ                         R3 R4 ; [+2]
       55 LOADB                            R2 0 +1
       56 LOADB                            R2 1
       57 RETURN                           R2 1
       58 GETTABLEKS                       R2 R0 K0 ["type"]
       60 JUMPIFNOTEQKS                    R2 K8 ["consistentUDim2"] ; [+22]
       62 GETTABLEKS                       R4 R1 K0 ["type"]
       64 JUMPIFEQKS                       R4 K8 ["consistentUDim2"] ; [+2]
       66 LOADB                            R3 0 +1
       67 LOADB                            R3 1
       68 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       70 LOADK                            R4 K2 ["Luau"]
       71 GETIMPORT                        R2 K4 [assert]
       73 CALL                             R2 2 0
       74 GETTABLEKS                       R3 R0 K9 ["udim2"]
       76 GETTABLEKS                       R4 R1 K9 ["udim2"]
       78 JUMPIFEQ                         R3 R4 ; [+2]
       80 LOADB                            R2 0 +1
       81 LOADB                            R2 1
       82 RETURN                           R2 1
       83 GETTABLEKS                       R2 R0 K0 ["type"]
       85 JUMPIFNOTEQKS                    R2 K10 ["spaced"] ; [+22]
       87 GETTABLEKS                       R4 R1 K0 ["type"]
       89 JUMPIFEQKS                       R4 K10 ["spaced"] ; [+2]
       91 LOADB                            R3 0 +1
       92 LOADB                            R3 1
       93 FASTCALL2K                       ASSERT R3 K2 ; [+4]
       95 LOADK                            R4 K2 ["Luau"]
       96 GETIMPORT                        R2 K4 [assert]
       98 CALL                             R2 2 0
       99 GETTABLEKS                       R3 R0 K11 ["spacing"]
      101 GETTABLEKS                       R4 R1 K11 ["spacing"]
      103 JUMPIFEQ                         R3 R4 ; [+2]
      105 LOADB                            R2 0 +1
      106 LOADB                            R2 1
      107 RETURN                           R2 1
      108 GETUPVAL                         R2 0
      109 GETTABLEKS                       R3 R0 K0 ["type"]
      111 CALL                             R2 1 -1
      112 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ultimate-list"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["DataSources"]
       11 GETTABLEKS                       R2 R2 K7 ["DataSourceMethods"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["DataSources"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETIMPORT                        R4 K1 [script]
       23 GETTABLEKS                       R4 R4 K8 ["Parent"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Util"]
       30 GETTABLEKS                       R5 R5 K10 ["exhaustiveMatch"]
       32 CALL                             R4 1 1
       33 NEWTABLE                         R5 8 0
       35 DUPCLOSURE                       R6 K11 [PROTO_0]
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R4
       39 SETTABLEKS                       R6 R5 K12 ["getCanvasSize"]
       41 DUPCLOSURE                       R6 K13 [PROTO_1]
       42 CAPTURE                          VAL R4
       43 DUPCLOSURE                       R7 K14 [PROTO_2]
       44 CAPTURE                          VAL R4
       45 DUPCLOSURE                       R8 K15 [PROTO_3]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 DUPCLOSURE                       R9 K16 [PROTO_4]
       49 CAPTURE                          VAL R4
       50 SETTABLEKS                       R9 R5 K17 ["getAmountPerNonDominantInGrid"]
       52 DUPCLOSURE                       R9 K18 [PROTO_5]
       53 CAPTURE                          VAL R4
       54 SETTABLEKS                       R9 R5 K19 ["getDominantAxis"]
       56 DUPCLOSURE                       R9 K20 [PROTO_6]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R8
       59 SETTABLEKS                       R9 R5 K21 ["getUDimRect"]
       61 DUPCLOSURE                       R9 K22 [PROTO_7]
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R4
       64 DUPCLOSURE                       R10 K23 [PROTO_8]
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R4
       68 SETTABLEKS                       R10 R5 K24 ["elementsDisplayedHint"]
       70 DUPCLOSURE                       R10 K25 [PROTO_9]
       71 CAPTURE                          VAL R4
       72 SETTABLEKS                       R10 R5 K26 ["equals"]
       74 RETURN                           R5 1
