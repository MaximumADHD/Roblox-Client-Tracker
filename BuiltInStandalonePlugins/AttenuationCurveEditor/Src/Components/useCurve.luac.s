PROTO_0:
        0 DUPTABLE                         R2 K3 [{"CurveType", "Min", "Max"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K4 ["CUSTOM"]
        4 SETTABLEKS                       R3 R2 K0 ["CurveType"]
        6 LOADN                            R3 10
        7 SETTABLEKS                       R3 R2 K1 ["Min"]
        9 LOADN                            R3 232
       10 SETTABLEKS                       R3 R2 K2 ["Max"]
       12 LENGTH                           R3 R0
       13 LOADN                            R4 2
       14 JUMPIFNOTLT                      R3 R4 ; [+2]
       16 RETURN                           R2 1
       17 GETTABLEN                        R4 R0 1
       18 GETTABLEKS                       R4 R4 K5 ["X"]
       20 SETTABLEKS                       R4 R2 K1 ["Min"]
       22 GETTABLE                         R4 R0 R3
       23 GETTABLEKS                       R4 R4 K5 ["X"]
       25 SETTABLEKS                       R4 R2 K2 ["Max"]
       27 GETTABLEN                        R4 R0 1
       28 GETTABLEKS                       R4 R4 K6 ["Y"]
       30 JUMPIFEQKN                       R4 K7 [1] ; [+7]
       32 GETTABLE                         R4 R0 R3
       33 GETTABLEKS                       R4 R4 K6 ["Y"]
       35 JUMPIFEQKN                       R4 K8 [0] ; [+2]
       37 RETURN                           R2 1
       38 JUMPIF                           R1 ; [+149]
       39 GETTABLEKS                       R4 R2 K1 ["Min"]
       41 GETTABLEKS                       R5 R2 K2 ["Max"]
       43 JUMPIFNOTEQ                      R4 R5 ; [+7]
       45 GETUPVAL                         R4 0
       46 GETTABLEKS                       R4 R4 K9 ["LINEAR"]
       48 SETTABLEKS                       R4 R2 K0 ["CurveType"]
       50 RETURN                           R2 1
       51 LOADB                            R4 1
       52 LOADB                            R5 1
       53 LOADB                            R6 1
       54 LOADB                            R7 1
       55 MOVE                             R8 R0
       56 LOADNIL                          R9
       57 LOADNIL                          R10
       58 FORGPREP                         R8
       59 GETTABLEKS                       R13 R12 K5 ["X"]
       61 GETTABLEKS                       R14 R2 K1 ["Min"]
       63 JUMPIFLE                         R13 R14 ; [+95]
       65 GETTABLEKS                       R13 R12 K5 ["X"]
       67 GETTABLEKS                       R14 R2 K2 ["Max"]
       69 JUMPIFLE                         R14 R13 ; [+89]
       71 GETTABLEKS                       R15 R2 K2 ["Max"]
       73 GETTABLEKS                       R16 R12 K5 ["X"]
       75 SUB                              R14 R15 R16
       76 GETTABLEKS                       R16 R2 K2 ["Max"]
       78 GETTABLEKS                       R17 R2 K1 ["Min"]
       80 SUB                              R15 R16 R17
       81 DIV                              R13 R14 R15
       82 MUL                              R14 R13 R13
       83 GETTABLEKS                       R16 R2 K1 ["Min"]
       85 GETTABLEKS                       R17 R12 K5 ["X"]
       87 DIV                              R15 R16 R17
       88 FASTCALL2                        MATH_MIN R14 R15 ; [+5]
       90 MOVE                             R17 R14
       91 MOVE                             R18 R15
       92 GETIMPORT                        R16 K12 [math.min]
       94 CALL                             R16 2 1
       95 MOVE                             R17 R4
       96 JUMPIFNOT                        R17 ; [+12]
       97 GETTABLEKS                       R20 R12 K6 ["Y"]
       99 SUB                              R19 R20 R13
      100 FASTCALL1                        MATH_ABS R19 ; [+2]
      101 GETIMPORT                        R18 K14 [math.abs]
      103 CALL                             R18 1 1
      104 LOADK                            R19 K15 [0.001]
      105 JUMPIFLT                         R18 R19 ; [+2]
      107 LOADB                            R17 0 +1
      108 LOADB                            R17 1
      109 MOVE                             R4 R17
      110 MOVE                             R17 R5
      111 JUMPIFNOT                        R17 ; [+12]
      112 GETTABLEKS                       R20 R12 K6 ["Y"]
      114 SUB                              R19 R20 R14
      115 FASTCALL1                        MATH_ABS R19 ; [+2]
      116 GETIMPORT                        R18 K14 [math.abs]
      118 CALL                             R18 1 1
      119 LOADK                            R19 K15 [0.001]
      120 JUMPIFLT                         R18 R19 ; [+2]
      122 LOADB                            R17 0 +1
      123 LOADB                            R17 1
      124 MOVE                             R5 R17
      125 MOVE                             R17 R6
      126 JUMPIFNOT                        R17 ; [+12]
      127 GETTABLEKS                       R20 R12 K6 ["Y"]
      129 SUB                              R19 R20 R15
      130 FASTCALL1                        MATH_ABS R19 ; [+2]
      131 GETIMPORT                        R18 K14 [math.abs]
      133 CALL                             R18 1 1
      134 LOADK                            R19 K15 [0.001]
      135 JUMPIFLT                         R18 R19 ; [+2]
      137 LOADB                            R17 0 +1
      138 LOADB                            R17 1
      139 MOVE                             R6 R17
      140 MOVE                             R17 R7
      141 JUMPIFNOT                        R17 ; [+12]
      142 GETTABLEKS                       R20 R12 K6 ["Y"]
      144 SUB                              R19 R20 R16
      145 FASTCALL1                        MATH_ABS R19 ; [+2]
      146 GETIMPORT                        R18 K14 [math.abs]
      148 CALL                             R18 1 1
      149 LOADK                            R19 K15 [0.001]
      150 JUMPIFLT                         R18 R19 ; [+2]
      152 LOADB                            R17 0 +1
      153 LOADB                            R17 1
      154 MOVE                             R7 R17
      155 JUMPIF                           R6 ; [+3]
      156 JUMPIF                           R7 ; [+2]
      157 JUMPIF                           R4 ; [+1]
      158 JUMPIFNOT                        R5 ; [+2]
      159 FORGLOOP                         R8 2 ; [-101]
      161 JUMPIFNOT                        R4 ; [+6]
      162 GETUPVAL                         R8 0
      163 GETTABLEKS                       R8 R8 K9 ["LINEAR"]
      165 SETTABLEKS                       R8 R2 K0 ["CurveType"]
      167 RETURN                           R2 1
      168 JUMPIFNOT                        R6 ; [+6]
      169 GETUPVAL                         R8 0
      170 GETTABLEKS                       R8 R8 K16 ["INVERSE"]
      172 SETTABLEKS                       R8 R2 K0 ["CurveType"]
      174 RETURN                           R2 1
      175 JUMPIFNOT                        R5 ; [+6]
      176 GETUPVAL                         R8 0
      177 GETTABLEKS                       R8 R8 K17 ["LINEAR_SQUARED"]
      179 SETTABLEKS                       R8 R2 K0 ["CurveType"]
      181 RETURN                           R2 1
      182 JUMPIFNOT                        R7 ; [+5]
      183 GETUPVAL                         R8 0
      184 GETTABLEKS                       R8 R8 K18 ["INVERSE_TAPERED"]
      186 SETTABLEKS                       R8 R2 K0 ["CurveType"]
      188 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["CurveType"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K1 ["LINEAR"]
        7 JUMPIFEQ                         R2 R3 ; [+7]
        9 GETTABLEKS                       R2 R0 K2 ["Min"]
       11 GETTABLEKS                       R3 R0 K3 ["Max"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+13]
       15 MOVE                             R3 R1
       16 GETIMPORT                        R4 K6 [Vector2.new]
       18 GETTABLEKS                       R5 R0 K2 ["Min"]
       20 LOADN                            R6 1
       21 CALL                             R4 2 -1
       22 FASTCALL                         TABLE_INSERT ; [+2]
       23 GETIMPORT                        R2 K9 [table.insert]
       25 CALL                             R2 -1 0
       26 JUMP                             ; [+205]
       27 GETTABLEKS                       R2 R0 K0 ["CurveType"]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K10 ["LINEAR_SQUARED"]
       32 JUMPIFNOTEQ                      R2 R3 ; [+44]
       34 GETTABLEKS                       R4 R0 K3 ["Max"]
       36 GETTABLEKS                       R5 R0 K2 ["Min"]
       38 SUB                              R3 R4 R5
       39 DIVK                             R2 R3 K11 [20]
       40 FASTCALL2K                       MATH_MAX R2 K12 ; [+5]
       42 MOVE                             R4 R2
       43 LOADK                            R5 K12 [0.1]
       44 GETIMPORT                        R3 K15 [math.max]
       46 CALL                             R3 2 1
       47 MOVE                             R2 R3
       48 GETTABLEKS                       R3 R0 K2 ["Min"]
       50 GETTABLEKS                       R4 R0 K3 ["Max"]
       52 JUMPIFNOTLT                      R3 R4 ; [+179]
       54 GETTABLEKS                       R6 R0 K3 ["Max"]
       56 SUB                              R5 R6 R3
       57 GETTABLEKS                       R7 R0 K3 ["Max"]
       59 GETTABLEKS                       R8 R0 K2 ["Min"]
       61 SUB                              R6 R7 R8
       62 DIV                              R4 R5 R6
       63 MUL                              R4 R4 R4
       64 MOVE                             R6 R1
       65 GETIMPORT                        R7 K6 [Vector2.new]
       67 MOVE                             R8 R3
       68 MOVE                             R9 R4
       69 CALL                             R7 2 -1
       70 FASTCALL                         TABLE_INSERT ; [+2]
       71 GETIMPORT                        R5 K9 [table.insert]
       73 CALL                             R5 -1 0
       74 ADD                              R3 R3 R2
       75 JUMPBACK                         ; [-26]
       76 JUMP                             ; [+155]
       77 GETTABLEKS                       R2 R0 K0 ["CurveType"]
       79 GETUPVAL                         R3 0
       80 GETTABLEKS                       R3 R3 K16 ["INVERSE"]
       82 JUMPIFNOTEQ                      R2 R3 ; [+35]
       84 GETTABLEKS                       R3 R0 K2 ["Min"]
       86 MULK                             R2 R3 K12 [0.1]
       87 FASTCALL2K                       MATH_MAX R2 K12 ; [+5]
       89 MOVE                             R4 R2
       90 LOADK                            R5 K12 [0.1]
       91 GETIMPORT                        R3 K15 [math.max]
       93 CALL                             R3 2 1
       94 MOVE                             R2 R3
       95 GETTABLEKS                       R3 R0 K2 ["Min"]
       97 GETTABLEKS                       R4 R0 K3 ["Max"]
       99 JUMPIFNOTLT                      R3 R4 ; [+132]
      101 GETTABLEKS                       R5 R0 K2 ["Min"]
      103 DIV                              R4 R5 R3
      104 MOVE                             R6 R1
      105 GETIMPORT                        R7 K6 [Vector2.new]
      107 MOVE                             R8 R3
      108 MOVE                             R9 R4
      109 CALL                             R7 2 -1
      110 FASTCALL                         TABLE_INSERT ; [+2]
      111 GETIMPORT                        R5 K9 [table.insert]
      113 CALL                             R5 -1 0
      114 ADD                              R3 R3 R2
      115 MULK                             R2 R2 K17 [1.2]
      116 JUMPBACK                         ; [-20]
      117 JUMP                             ; [+114]
      118 GETTABLEKS                       R2 R0 K0 ["CurveType"]
      120 GETUPVAL                         R3 0
      121 GETTABLEKS                       R3 R3 K18 ["INVERSE_TAPERED"]
      123 JUMPIFNOTEQ                      R2 R3 ; [+108]
      125 LOADK                            R4 K19 [-0.5]
      126 GETTABLEKS                       R8 R0 K2 ["Min"]
      128 LOADN                            R11 4
      129 GETTABLEKS                       R12 R0 K3 ["Max"]
      131 MUL                              R10 R11 R12
      132 LOADN                            R12 3
      133 GETTABLEKS                       R13 R0 K2 ["Min"]
      135 MUL                              R11 R12 R13
      136 SUB                              R9 R10 R11
      137 MUL                              R7 R8 R9
      138 FASTCALL1                        MATH_SQRT R7 ; [+2]
      139 GETIMPORT                        R6 K21 [math.sqrt]
      141 CALL                             R6 1 1
      142 GETTABLEKS                       R7 R0 K2 ["Min"]
      144 ADD                              R5 R6 R7
      145 MUL                              R3 R4 R5
      146 GETTABLEKS                       R4 R0 K3 ["Max"]
      148 ADD                              R2 R3 R4
      149 GETTABLEKS                       R5 R0 K2 ["Min"]
      151 GETTABLEKS                       R6 R0 K3 ["Max"]
      153 FASTCALL3                        MATH_CLAMP R2 R5 R6
      155 MOVE                             R4 R2
      156 GETIMPORT                        R3 K23 [math.clamp]
      158 CALL                             R3 3 1
      159 MOVE                             R2 R3
      160 GETTABLEKS                       R4 R0 K2 ["Min"]
      162 MULK                             R3 R4 K12 [0.1]
      163 FASTCALL2K                       MATH_MAX R3 K12 ; [+5]
      165 MOVE                             R5 R3
      166 LOADK                            R6 K12 [0.1]
      167 GETIMPORT                        R4 K15 [math.max]
      169 CALL                             R4 2 1
      170 MOVE                             R3 R4
      171 GETTABLEKS                       R4 R0 K2 ["Min"]
      173 JUMPIFNOTLT                      R4 R2 ; [+17]
      175 GETTABLEKS                       R6 R0 K2 ["Min"]
      177 DIV                              R5 R6 R4
      178 MOVE                             R7 R1
      179 GETIMPORT                        R8 K6 [Vector2.new]
      181 MOVE                             R9 R4
      182 MOVE                             R10 R5
      183 CALL                             R8 2 -1
      184 FASTCALL                         TABLE_INSERT ; [+2]
      185 GETIMPORT                        R6 K9 [table.insert]
      187 CALL                             R6 -1 0
      188 ADD                              R4 R4 R3
      189 MULK                             R3 R3 K17 [1.2]
      190 JUMPBACK                         ; [-18]
      191 MOVE                             R4 R2
      192 GETTABLEKS                       R6 R0 K3 ["Max"]
      194 GETTABLEKS                       R7 R0 K2 ["Min"]
      196 SUB                              R5 R6 R7
      197 DIVK                             R3 R5 K11 [20]
      198 FASTCALL2K                       MATH_MAX R3 K12 ; [+5]
      200 MOVE                             R6 R3
      201 LOADK                            R7 K12 [0.1]
      202 GETIMPORT                        R5 K15 [math.max]
      204 CALL                             R5 2 1
      205 MOVE                             R3 R5
      206 GETTABLEKS                       R5 R0 K3 ["Max"]
      208 JUMPIFNOTLT                      R4 R5 ; [+23]
      210 GETTABLEKS                       R7 R0 K3 ["Max"]
      212 SUB                              R6 R7 R4
      213 GETTABLEKS                       R8 R0 K3 ["Max"]
      215 GETTABLEKS                       R9 R0 K2 ["Min"]
      217 SUB                              R7 R8 R9
      218 DIV                              R5 R6 R7
      219 MUL                              R5 R5 R5
      220 MOVE                             R7 R1
      221 GETIMPORT                        R8 K6 [Vector2.new]
      223 MOVE                             R9 R4
      224 MOVE                             R10 R5
      225 CALL                             R8 2 -1
      226 FASTCALL                         TABLE_INSERT ; [+2]
      227 GETIMPORT                        R6 K9 [table.insert]
      229 CALL                             R6 -1 0
      230 ADD                              R4 R4 R3
      231 JUMPBACK                         ; [-26]
      232 MOVE                             R3 R1
      233 GETIMPORT                        R4 K6 [Vector2.new]
      235 GETTABLEKS                       R5 R0 K3 ["Max"]
      237 LOADN                            R6 0
      238 CALL                             R4 2 -1
      239 FASTCALL                         TABLE_INSERT ; [+2]
      240 GETIMPORT                        R2 K9 [table.insert]
      242 CALL                             R2 -1 0
      243 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R0 2
        9 DUPTABLE                         R1 K1 [{"Keypoints"}]
       10 GETUPVAL                         R2 3
       11 SETTABLEKS                       R2 R1 K0 ["Keypoints"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Keypoints"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETUPVAL                         R2 2
        6 GETTABLEKS                       R3 R0 K0 ["Keypoints"]
        8 CALL                             R2 1 1
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 0
        2 GETUPVAL                         R5 0
        3 GETTABLE                         R4 R5 R1
        4 GETUPVAL                         R6 0
        5 GETTABLE                         R5 R6 R0
        6 SETTABLE                         R4 R2 R0
        7 SETTABLE                         R5 R3 R1
        8 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R2 1
        1 JUMPIFLT                         R1 R2 ; [+4]
        3 LENGTH                           R2 R0
        4 JUMPIFNOTLT                      R2 R1 ; [+2]
        6 RETURN                           R1 1
        7 NEWCLOSURE                       R2 P0
        8 CAPTURE                          VAL R0
        9 LOADN                            R5 0
       10 GETUPVAL                         R3 0
       11 LOADN                            R4 1
       12 FORNPREP                         R3
       13 GETTABLE                         R6 R0 R1
       14 SUBK                             R8 R1 K0 [1]
       15 GETTABLE                         R7 R0 R8
       16 JUMPIFNOT                        R7 ; [+14]
       17 GETTABLEKS                       R8 R7 K1 ["X"]
       19 GETTABLEKS                       R9 R6 K1 ["X"]
       21 JUMPIFNOTLT                      R9 R8 ; [+9]
       23 SUBK                             R8 R1 K0 [1]
       24 MOVE                             R9 R1
       25 GETTABLE                         R10 R0 R9
       26 GETTABLE                         R11 R0 R8
       27 SETTABLE                         R10 R0 R8
       28 SETTABLE                         R11 R0 R9
       29 SUBK                             R1 R1 K0 [1]
       30 JUMP                             ; [+18]
       31 ADDK                             R9 R1 K0 [1]
       32 GETTABLE                         R8 R0 R9
       33 JUMPIFNOT                        R8 ; [+16]
       34 GETTABLEKS                       R9 R8 K1 ["X"]
       36 GETTABLEKS                       R10 R6 K1 ["X"]
       38 JUMPIFNOTLT                      R9 R10 ; [+11]
       40 MOVE                             R9 R1
       41 ADDK                             R10 R1 K0 [1]
       42 GETTABLE                         R11 R0 R10
       43 GETTABLE                         R12 R0 R9
       44 SETTABLE                         R11 R0 R9
       45 SETTABLE                         R12 R0 R10
       46 ADDK                             R1 R1 K0 [1]
       47 JUMP                             ; [+1]
       48 RETURN                           R1 1
       49 FORNLOOP                         R3
       50 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R3 R0 R1
        2 GETTABLEKS                       R3 R3 K0 ["X"]
        4 LOADN                            R4 3
        5 CALL                             R2 2 1
        6 LOADN                            R3 2
        7 JUMPIFNOTLE                      R3 R1 ; [+17]
        9 GETUPVAL                         R3 0
       10 SUBK                             R5 R1 K1 [1]
       11 GETTABLE                         R4 R0 R5
       12 GETTABLEKS                       R4 R4 K0 ["X"]
       14 LOADN                            R5 3
       15 CALL                             R3 2 1
       16 JUMPIFNOTEQ                      R3 R2 ; [+8]
       18 GETIMPORT                        R4 K4 [table.remove]
       20 MOVE                             R5 R0
       21 SUBK                             R6 R1 K1 [1]
       22 CALL                             R4 2 0
       23 SUBK                             R4 R1 K1 [1]
       24 RETURN                           R4 1
       25 LENGTH                           R4 R0
       26 SUBK                             R3 R4 K1 [1]
       27 JUMPIFNOTLE                      R1 R3 ; [+16]
       29 GETUPVAL                         R3 0
       30 ADDK                             R5 R1 K1 [1]
       31 GETTABLE                         R4 R0 R5
       32 GETTABLEKS                       R4 R4 K0 ["X"]
       34 LOADN                            R5 3
       35 CALL                             R3 2 1
       36 JUMPIFNOTEQ                      R3 R2 ; [+7]
       38 GETIMPORT                        R4 K4 [table.remove]
       40 MOVE                             R5 R0
       41 ADDK                             R6 R1 K1 [1]
       42 CALL                             R4 2 0
       43 RETURN                           R1 1
       44 RETURN                           R1 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 LOADN                            R4 3
        4 CALL                             R2 2 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R4 R0 K1 ["Y"]
        8 LOADN                            R5 3
        9 CALL                             R3 2 1
       10 GETIMPORT                        R4 K4 [Vector2.new]
       12 LOADN                            R7 0
       13 LOADK                            R8 K5 [∞]
       14 FASTCALL3                        MATH_CLAMP R2 R7 R8
       16 MOVE                             R6 R2
       17 GETIMPORT                        R5 K8 [math.clamp]
       19 CALL                             R5 3 1
       20 LOADN                            R8 0
       21 LOADN                            R9 1
       22 FASTCALL3                        MATH_CLAMP R3 R8 R9
       24 MOVE                             R7 R3
       25 GETIMPORT                        R6 K8 [math.clamp]
       27 CALL                             R6 3 1
       28 CALL                             R4 2 1
       29 MOVE                             R0 R4
       30 GETUPVAL                         R4 1
       31 GETUPVAL                         R5 2
       32 NEWTABLE                         R6 1 0
       34 GETUPVAL                         R7 3
       35 SETTABLE                         R0 R6 R7
       36 CALL                             R4 2 1
       37 GETUPVAL                         R5 4
       38 MOVE                             R6 R4
       39 GETUPVAL                         R7 3
       40 CALL                             R5 2 1
       41 JUMPIFNOT                        R1 ; [+5]
       42 GETUPVAL                         R6 5
       43 MOVE                             R7 R4
       44 MOVE                             R8 R5
       45 CALL                             R6 2 1
       46 MOVE                             R5 R6
       47 GETUPVAL                         R6 6
       48 MOVE                             R7 R5
       49 CALL                             R6 1 0
       50 GETUPVAL                         R6 7
       51 MOVE                             R7 R4
       52 CALL                             R6 1 0
       53 GETUPVAL                         R6 8
       54 DUPTABLE                         R8 K12 [{"CurveType", "Min", "Max"}]
       55 GETUPVAL                         R9 9
       56 GETTABLEKS                       R9 R9 K13 ["CUSTOM"]
       58 SETTABLEKS                       R9 R8 K9 ["CurveType"]
       60 LOADN                            R9 10
       61 SETTABLEKS                       R9 R8 K10 ["Min"]
       63 LOADN                            R9 232
       64 SETTABLEKS                       R9 R8 K11 ["Max"]
       66 LENGTH                           R9 R4
       67 LOADN                            R10 2
       68 JUMPIFNOTLT                      R9 R10 ; [+3]
       70 MOVE                             R7 R8
       71 JUMP                             ; [+23]
       72 GETTABLEN                        R10 R4 1
       73 GETTABLEKS                       R10 R10 K0 ["X"]
       75 SETTABLEKS                       R10 R8 K10 ["Min"]
       77 GETTABLE                         R10 R4 R9
       78 GETTABLEKS                       R10 R10 K0 ["X"]
       80 SETTABLEKS                       R10 R8 K11 ["Max"]
       82 GETTABLEN                        R10 R4 1
       83 GETTABLEKS                       R10 R10 K1 ["Y"]
       85 JUMPIFEQKN                       R10 K14 [1] ; [+8]
       87 GETTABLE                         R10 R4 R9
       88 GETTABLEKS                       R10 R10 K1 ["Y"]
       90 JUMPIFEQKN                       R10 K15 [0] ; [+3]
       92 MOVE                             R7 R8
       93 JUMP                             ; [+1]
       94 MOVE                             R7 R8
       95 CALL                             R6 1 0
       96 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R1 1
        1 GETUPVAL                         R3 0
        2 LENGTH                           R2 R3
        3 JUMPIFNOTLE                      R1 R2 ; [+29]
        5 ADD                              R5 R1 R2
        6 DIVK                             R4 R5 K0 [2]
        7 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        8 GETIMPORT                        R3 K3 [math.floor]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLE                         R4 R5 R3
       13 GETTABLEKS                       R4 R4 K4 ["X"]
       15 GETTABLEKS                       R5 R0 K4 ["X"]
       17 JUMPIFNOTEQ                      R4 R5 ; [+3]
       19 MOVE                             R1 R3
       20 RETURN                           R1 1
       21 GETTABLEKS                       R4 R0 K4 ["X"]
       23 GETUPVAL                         R6 0
       24 GETTABLE                         R5 R6 R3
       25 GETTABLEKS                       R5 R5 K4 ["X"]
       27 JUMPIFNOTLT                      R4 R5 ; [+3]
       29 SUBK                             R2 R3 K5 [1]
       30 JUMP                             ; [+1]
       31 ADDK                             R1 R3 K5 [1]
       32 JUMPBACK                         ; [-30]
       33 RETURN                           R1 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 LENGTH                           R1 R2
        2 GETUPVAL                         R2 1
        3 JUMPIFNOTLE                      R2 R1 ; [+3]
        5 LOADB                            R1 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 2
        8 GETUPVAL                         R2 0
        9 CALL                             R1 1 1
       10 GETUPVAL                         R2 3
       11 MOVE                             R3 R0
       12 CALL                             R2 1 1
       13 LENGTH                           R3 R1
       14 JUMPIFNOTLE                      R2 R3 ; [+10]
       16 GETTABLE                         R3 R1 R2
       17 GETTABLEKS                       R3 R3 K0 ["X"]
       19 GETTABLEKS                       R4 R0 K0 ["X"]
       21 JUMPIFNOTEQ                      R3 R4 ; [+3]
       23 SETTABLE                         R0 R1 R2
       24 JUMP                             ; [+8]
       25 FASTCALL3                        TABLE_INSERT R1 R2 R0
       27 MOVE                             R4 R1
       28 MOVE                             R5 R2
       29 MOVE                             R6 R0
       30 GETIMPORT                        R3 K3 [table.insert]
       32 CALL                             R3 3 0
       33 GETUPVAL                         R3 4
       34 MOVE                             R4 R1
       35 CALL                             R3 1 0
       36 GETUPVAL                         R3 5
       37 MOVE                             R4 R2
       38 CALL                             R3 1 0
       39 GETUPVAL                         R3 6
       40 DUPTABLE                         R5 K7 [{"CurveType", "Min", "Max"}]
       41 GETUPVAL                         R6 7
       42 GETTABLEKS                       R6 R6 K8 ["CUSTOM"]
       44 SETTABLEKS                       R6 R5 K4 ["CurveType"]
       46 LOADN                            R6 10
       47 SETTABLEKS                       R6 R5 K5 ["Min"]
       49 LOADN                            R6 232
       50 SETTABLEKS                       R6 R5 K6 ["Max"]
       52 LENGTH                           R6 R1
       53 LOADN                            R7 2
       54 JUMPIFNOTLT                      R6 R7 ; [+3]
       56 MOVE                             R4 R5
       57 JUMP                             ; [+23]
       58 GETTABLEN                        R7 R1 1
       59 GETTABLEKS                       R7 R7 K0 ["X"]
       61 SETTABLEKS                       R7 R5 K5 ["Min"]
       63 GETTABLE                         R7 R1 R6
       64 GETTABLEKS                       R7 R7 K0 ["X"]
       66 SETTABLEKS                       R7 R5 K6 ["Max"]
       68 GETTABLEN                        R7 R1 1
       69 GETTABLEKS                       R7 R7 K9 ["Y"]
       71 JUMPIFEQKN                       R7 K10 [1] ; [+8]
       73 GETTABLE                         R7 R1 R6
       74 GETTABLEKS                       R7 R7 K9 ["Y"]
       76 JUMPIFEQKN                       R7 K11 [0] ; [+3]
       78 MOVE                             R4 R5
       79 JUMP                             ; [+1]
       80 MOVE                             R4 R5
       81 CALL                             R3 1 0
       82 LOADB                            R3 1
       83 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 GETIMPORT                        R1 K2 [table.remove]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 2
        7 CALL                             R1 2 0
        8 GETUPVAL                         R1 3
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 LENGTH                           R1 R0
       12 GETUPVAL                         R2 2
       13 JUMPIFNOTLT                      R1 R2 ; [+4]
       15 GETUPVAL                         R1 4
       16 LENGTH                           R2 R0
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 5
       19 DUPTABLE                         R3 K6 [{"CurveType", "Min", "Max"}]
       20 GETUPVAL                         R4 6
       21 GETTABLEKS                       R4 R4 K7 ["CUSTOM"]
       23 SETTABLEKS                       R4 R3 K3 ["CurveType"]
       25 LOADN                            R4 10
       26 SETTABLEKS                       R4 R3 K4 ["Min"]
       28 LOADN                            R4 232
       29 SETTABLEKS                       R4 R3 K5 ["Max"]
       31 LENGTH                           R4 R0
       32 LOADN                            R5 2
       33 JUMPIFNOTLT                      R4 R5 ; [+3]
       35 MOVE                             R2 R3
       36 JUMP                             ; [+23]
       37 GETTABLEN                        R5 R0 1
       38 GETTABLEKS                       R5 R5 K8 ["X"]
       40 SETTABLEKS                       R5 R3 K4 ["Min"]
       42 GETTABLE                         R5 R0 R4
       43 GETTABLEKS                       R5 R5 K8 ["X"]
       45 SETTABLEKS                       R5 R3 K5 ["Max"]
       47 GETTABLEN                        R5 R0 1
       48 GETTABLEKS                       R5 R5 K9 ["Y"]
       50 JUMPIFEQKN                       R5 K10 [1] ; [+8]
       52 GETTABLE                         R5 R0 R4
       53 GETTABLEKS                       R5 R5 K9 ["Y"]
       55 JUMPIFEQKN                       R5 K11 [0] ; [+3]
       57 MOVE                             R2 R3
       58 JUMP                             ; [+1]
       59 MOVE                             R2 R3
       60 CALL                             R1 1 0
       61 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADN                            R1 0
        2 JUMPIFLE                         R0 R1 ; [+6]
        4 GETUPVAL                         R0 0
        5 GETUPVAL                         R2 1
        6 LENGTH                           R1 R2
        7 JUMPIFNOTLT                      R1 R0 ; [+3]
        9 LOADNIL                          R0
       10 RETURN                           R0 1
       11 GETUPVAL                         R1 1
       12 GETUPVAL                         R2 0
       13 GETTABLE                         R0 R1 R2
       14 RETURN                           R0 1

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["CurveType"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["CUSTOM"]
        5 JUMPIFEQ                         R1 R2 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R2 1 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 3
       13 MOVE                             R2 R0
       14 CALL                             R1 1 0
       15 GETUPVAL                         R1 4
       16 LOADN                            R2 0
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["Keypoints"]
        3 CALL                             R2 1 2
        4 GETUPVAL                         R4 0
        5 LOADN                            R5 1
        6 CALL                             R4 1 2
        7 GETUPVAL                         R6 0
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R8 R0 K0 ["Keypoints"]
       11 CALL                             R7 1 1
       12 CALL                             R6 1 2
       13 GETUPVAL                         R8 0
       14 LOADB                            R9 0
       15 CALL                             R8 1 2
       16 GETUPVAL                         R10 2
       17 NEWCLOSURE                       R11 P0
       18 CAPTURE                          VAL R8
       19 CAPTURE                          VAL R9
       20 CAPTURE                          VAL R1
       21 CAPTURE                          VAL R2
       22 NEWTABLE                         R12 0 1
       24 MOVE                             R13 R2
       25 SETLIST                          R12 R13 1 [1]
       27 CALL                             R10 2 0
       28 GETUPVAL                         R10 3
       29 NEWCLOSURE                       R11 P1
       30 CAPTURE                          VAL R3
       31 CAPTURE                          VAL R7
       32 CAPTURE                          UPVAL U1
       33 NEWTABLE                         R12 0 0
       35 CALL                             R10 2 1
       36 GETUPVAL                         R11 3
       37 DUPCLOSURE                       R12 K1 [PROTO_5]
       38 CAPTURE                          UPVAL U4
       39 NEWTABLE                         R13 0 0
       41 CALL                             R11 2 1
       42 GETUPVAL                         R12 3
       43 DUPCLOSURE                       R13 K2 [PROTO_6]
       44 CAPTURE                          UPVAL U5
       45 NEWTABLE                         R14 0 0
       47 CALL                             R12 2 1
       48 GETUPVAL                         R13 3
       49 NEWCLOSURE                       R14 P4
       50 CAPTURE                          UPVAL U5
       51 CAPTURE                          UPVAL U6
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R11
       55 CAPTURE                          VAL R12
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R7
       59 CAPTURE                          UPVAL U7
       60 NEWTABLE                         R15 0 2
       62 MOVE                             R16 R2
       63 MOVE                             R17 R4
       64 SETLIST                          R15 R16 2 [1]
       66 CALL                             R13 2 1
       67 GETUPVAL                         R14 3
       68 NEWCLOSURE                       R15 P5
       69 CAPTURE                          VAL R2
       70 NEWTABLE                         R16 0 1
       72 MOVE                             R17 R2
       73 SETLIST                          R16 R17 1 [1]
       75 CALL                             R14 2 1
       76 GETUPVAL                         R15 3
       77 NEWCLOSURE                       R16 P6
       78 CAPTURE                          VAL R2
       79 CAPTURE                          UPVAL U4
       80 CAPTURE                          UPVAL U8
       81 CAPTURE                          VAL R14
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R7
       85 CAPTURE                          UPVAL U7
       86 NEWTABLE                         R17 0 3
       88 MOVE                             R18 R2
       89 MOVE                             R19 R4
       90 MOVE                             R20 R14
       91 SETLIST                          R17 R18 3 [1]
       93 CALL                             R15 2 1
       94 GETUPVAL                         R16 3
       95 NEWCLOSURE                       R17 P7
       96 CAPTURE                          UPVAL U8
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R4
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R7
      102 CAPTURE                          UPVAL U7
      103 NEWTABLE                         R18 0 2
      105 MOVE                             R19 R2
      106 MOVE                             R20 R4
      107 SETLIST                          R18 R19 2 [1]
      109 CALL                             R16 2 1
      110 GETUPVAL                         R17 3
      111 NEWCLOSURE                       R18 P8
      112 CAPTURE                          VAL R5
      113 NEWTABLE                         R19 0 0
      115 CALL                             R17 2 1
      116 GETUPVAL                         R18 3
      117 NEWCLOSURE                       R19 P9
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R2
      120 NEWTABLE                         R20 0 2
      122 MOVE                             R21 R2
      123 MOVE                             R22 R4
      124 SETLIST                          R20 R21 2 [1]
      126 CALL                             R18 2 1
      127 GETUPVAL                         R19 3
      128 NEWCLOSURE                       R20 P10
      129 CAPTURE                          UPVAL U7
      130 CAPTURE                          VAL R3
      131 CAPTURE                          UPVAL U9
      132 CAPTURE                          VAL R7
      133 CAPTURE                          VAL R5
      134 NEWTABLE                         R21 0 1
      136 MOVE                             R22 R2
      137 SETLIST                          R21 R22 1 [1]
      139 CALL                             R19 2 1
      140 DUPTABLE                         R20 K14 [{"keypoints", "selectedIndex", "preset", "reset", "update", "add", "remove", "select", "getSelectedKeypoint", "updatePreset", "getIndexForPoint"}]
      141 SETTABLEKS                       R2 R20 K3 ["keypoints"]
      143 SETTABLEKS                       R4 R20 K4 ["selectedIndex"]
      145 SETTABLEKS                       R6 R20 K5 ["preset"]
      147 SETTABLEKS                       R10 R20 K6 ["reset"]
      149 SETTABLEKS                       R13 R20 K7 ["update"]
      151 SETTABLEKS                       R15 R20 K8 ["add"]
      153 SETTABLEKS                       R16 R20 K9 ["remove"]
      155 SETTABLEKS                       R17 R20 K10 ["select"]
      157 SETTABLEKS                       R18 R20 K11 ["getSelectedKeypoint"]
      159 SETTABLEKS                       R19 R20 K12 ["updatePreset"]
      161 SETTABLEKS                       R14 R20 K13 ["getIndexForPoint"]
      163 RETURN                           R20 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AttenuationCurveEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["join"]
       16 GETTABLEKS                       R3 R1 K9 ["copy"]
       18 GETIMPORT                        R4 K5 [require]
       20 GETTABLEKS                       R5 R0 K6 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["React"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["useCallback"]
       27 GETTABLEKS                       R6 R4 K12 ["useEffect"]
       29 GETTABLEKS                       R7 R4 K13 ["useState"]
       31 GETIMPORT                        R8 K5 [require]
       33 GETTABLEKS                       R9 R0 K14 ["Src"]
       35 GETTABLEKS                       R9 R9 K15 ["Util"]
       37 GETTABLEKS                       R9 R9 K16 ["roundDecimal"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R10 R0 K14 ["Src"]
       44 GETTABLEKS                       R10 R10 K17 ["Types"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R0 K18 ["Bin"]
       51 GETTABLEKS                       R11 R11 K19 ["Common"]
       53 GETTABLEKS                       R11 R11 K20 ["defineLuaFlags"]
       55 CALL                             R10 1 1
       56 GETTABLEKS                       R11 R10 K21 ["getFIntDistanceAttenuationMaxPoints"]
       58 CALL                             R11 0 1
       59 DUPCLOSURE                       R12 K22 [PROTO_0]
       60 CAPTURE                          VAL R9
       61 DUPCLOSURE                       R13 K23 [PROTO_1]
       62 CAPTURE                          VAL R9
       63 DUPCLOSURE                       R14 K24 [PROTO_14]
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R13
       74 RETURN                           R14 1
