PROTO_0:
        0 GETIMPORT                        R1 K2 [CFrame.new]
        2 CALL                             R1 0 1
        3 MOVE                             R2 R0
        4 JUMPIFEQKNIL                     R2 ; [+15]
        6 LOADK                            R5 K3 ["Bone"]
        7 NAMECALL                         R3 R2 K4 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+9]
       11 GETTABLEKS                       R4 R2 K0 ["CFrame"]
       13 GETTABLEKS                       R5 R2 K5 ["Transform"]
       15 MUL                              R3 R4 R5
       16 MUL                              R1 R3 R1
       17 GETTABLEKS                       R2 R2 K6 ["Parent"]
       19 JUMPBACK                         ; [-16]
       20 JUMPIFNOT                        R2 ; [+8]
       21 LOADK                            R5 K7 ["BasePart"]
       22 NAMECALL                         R3 R2 K4 ["IsA"]
       24 CALL                             R3 2 1
       25 JUMPIFNOT                        R3 ; [+3]
       26 GETTABLEKS                       R3 R2 K0 ["CFrame"]
       28 MUL                              R1 R3 R1
       29 RETURN                           R1 1

PROTO_1:
        0 LOADK                            R3 K0 ["Bone"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 RETURN                           R1 1
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["getGlobalCoordinateFrame"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 -1
       14 RETURN                           R1 -1

PROTO_2:
        0 SUB                              R5 R1 R0
        1 SUB                              R7 R2 R0
        2 NAMECALL                         R5 R5 K0 ["Cross"]
        4 CALL                             R5 2 1
        5 ADD                              R8 R0 R1
        6 ADD                              R7 R8 R2
        7 DIVK                             R6 R7 K1 [3]
        8 SUB                              R9 R6 R3
        9 NAMECALL                         R7 R5 K2 ["Dot"]
       11 CALL                             R7 2 1
       12 LOADN                            R8 0
       13 JUMPIFNOTLT                      R7 R8 ; [+2]
       15 MINUS                            R5 R5
       16 SUB                              R10 R4 R6
       17 NAMECALL                         R8 R5 K2 ["Dot"]
       19 CALL                             R8 2 1
       20 LOADN                            R9 0
       21 JUMPIFLT                         R9 R8 ; [+2]
       23 LOADB                            R7 0 +1
       24 LOADB                            R7 1
       25 RETURN                           R7 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getParentGlobalCf"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["childInst"]
        7 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K2 ["Incorrect inner logic, should have child instance"]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 LOADK                            R5 K5 ["Bone"]
       15 NAMECALL                         R3 R1 K6 ["IsA"]
       17 CALL                             R3 2 1
       18 JUMPIFNOT                        R3 ; [+4]
       19 GETUPVAL                         R2 1
       20 MOVE                             R3 R1
       21 CALL                             R2 1 1
       22 JUMP                             ; [+5]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K7 ["getGlobalCoordinateFrame"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R4 R2 K8 ["Position"]
       30 GETTABLEKS                       R5 R0 K8 ["Position"]
       32 SUB                              R3 R4 R5
       33 GETTABLEKS                       R4 R3 K9 ["Magnitude"]
       35 LOADN                            R5 0
       36 JUMPIFNOTLT                      R5 R4 ; [+56]
       38 GETTABLEKS                       R5 R3 K10 ["Unit"]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K11 ["standardRadius"]
       43 JUMPIFNOTLE                      R4 R6 ; [+11]
       45 MULK                             R8 R4 K12 [0.5]
       46 GETUPVAL                         R9 0
       47 GETTABLEKS                       R9 R9 K11 ["standardRadius"]
       49 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       51 GETIMPORT                        R7 K15 [math.min]
       53 CALL                             R7 2 1
       54 MOVE                             R6 R7
       55 GETTABLEKS                       R8 R0 K8 ["Position"]
       57 MUL                              R9 R5 R6
       58 ADD                              R7 R8 R9
       59 LOADNIL                          R8
       60 GETTABLEKS                       R11 R5 K16 ["Y"]
       62 FASTCALL1                        MATH_ABS R11 ; [+2]
       63 GETIMPORT                        R10 K18 [math.abs]
       65 CALL                             R10 1 1
       66 LOADK                            R11 K19 [0.9]
       67 JUMPIFNOTLT                      R11 R10 ; [+3]
       69 LOADK                            R9 K20 [{1, 0, 0}]
       70 JUMP                             ; [+1]
       71 LOADK                            R9 K21 [{0, 1, 0}]
       72 GETIMPORT                        R10 K24 [CFrame.lookAt]
       74 MOVE                             R11 R7
       75 ADD                              R12 R7 R5
       76 MOVE                             R13 R9
       77 CALL                             R10 3 1
       78 MOVE                             R8 R10
       79 GETUPVAL                         R10 0
       80 GETTABLEKS                       R10 R10 K25 ["connectionAdorneePart"]
       82 JUMPIFNOT                        R10 ; [+10]
       83 GETUPVAL                         R11 0
       84 GETTABLEKS                       R11 R11 K25 ["connectionAdorneePart"]
       86 GETTABLEKS                       R11 R11 K22 ["CFrame"]
       88 NAMECALL                         R11 R11 K26 ["Inverse"]
       90 CALL                             R11 1 1
       91 MUL                              R10 R11 R8
       92 RETURN                           R10 1
       93 GETIMPORT                        R5 K28 [CFrame.new]
       95 CALL                             R5 0 -1
       96 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getParentGlobalCf"]
        3 CALL                             R0 0 1
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K1 ["childInst"]
        7 FASTCALL2K                       ASSERT R1 K2 ; [+5]
        9 MOVE                             R3 R1
       10 LOADK                            R4 K2 ["Incorrect inner logic, should have child instance"]
       11 GETIMPORT                        R2 K4 [assert]
       13 CALL                             R2 2 0
       14 LOADK                            R5 K5 ["Bone"]
       15 NAMECALL                         R3 R1 K6 ["IsA"]
       17 CALL                             R3 2 1
       18 JUMPIFNOT                        R3 ; [+4]
       19 GETUPVAL                         R2 1
       20 MOVE                             R3 R1
       21 CALL                             R2 1 1
       22 JUMP                             ; [+5]
       23 GETUPVAL                         R2 2
       24 GETTABLEKS                       R2 R2 K7 ["getGlobalCoordinateFrame"]
       26 MOVE                             R3 R1
       27 CALL                             R2 1 1
       28 GETTABLEKS                       R4 R2 K8 ["Position"]
       30 GETTABLEKS                       R5 R0 K8 ["Position"]
       32 SUB                              R3 R4 R5
       33 GETTABLEKS                       R4 R3 K9 ["Magnitude"]
       35 LOADK                            R5 K10 [0.01]
       36 LOADN                            R6 0
       37 JUMPIFNOTLT                      R6 R4 ; [+24]
       39 GETUPVAL                         R6 0
       40 GETTABLEKS                       R6 R6 K11 ["standardRadius"]
       42 JUMPIFNOTLE                      R4 R6 ; [+11]
       44 MULK                             R8 R4 K12 [0.5]
       45 GETUPVAL                         R9 0
       46 GETTABLEKS                       R9 R9 K11 ["standardRadius"]
       48 FASTCALL2                        MATH_MIN R8 R9 ; [+3]
       50 GETIMPORT                        R7 K15 [math.min]
       52 CALL                             R7 2 1
       53 MOVE                             R6 R7
       54 SUB                              R8 R4 R6
       55 FASTCALL2K                       MATH_MAX R8 K10 ; [+4]
       57 LOADK                            R9 K10 [0.01]
       58 GETIMPORT                        R7 K17 [math.max]
       60 CALL                             R7 2 1
       61 MOVE                             R5 R7
       62 GETUPVAL                         R6 3
       63 GETTABLEKS                       R6 R6 K18 ["current"]
       65 JUMPIFNOT                        R6 ; [+3]
       66 MOVE                             R7 R6
       67 MOVE                             R8 R5
       68 CALL                             R7 1 0
       69 RETURN                           R5 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["Clear"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K1 ["standardRadius"]
        7 DIVK                             R3 R1 K3 [2]
        8 MULK                             R2 R3 K2 [1.5]
        9 MINUS                            R4 R2
       10 MINUS                            R5 R2
       11 LOADN                            R6 0
       12 FASTCALL                         VECTOR ; [+2]
       13 GETIMPORT                        R3 K6 [Vector3.new]
       15 CALL                             R3 3 1
       16 MINUS                            R6 R2
       17 LOADN                            R7 0
       18 FASTCALL3                        VECTOR R2 R6 R7
       20 MOVE                             R5 R2
       21 GETIMPORT                        R4 K6 [Vector3.new]
       23 CALL                             R4 3 1
       24 LOADN                            R8 0
       25 FASTCALL3                        VECTOR R2 R2 R8
       27 MOVE                             R6 R2
       28 MOVE                             R7 R2
       29 GETIMPORT                        R5 K6 [Vector3.new]
       31 CALL                             R5 3 1
       32 MINUS                            R7 R2
       33 LOADN                            R9 0
       34 FASTCALL3                        VECTOR R7 R2 R9
       36 MOVE                             R8 R2
       37 GETIMPORT                        R6 K6 [Vector3.new]
       39 CALL                             R6 3 1
       40 LOADN                            R8 0
       41 LOADN                            R9 0
       42 MINUS                            R10 R0
       43 FASTCALL                         VECTOR ; [+2]
       44 GETIMPORT                        R7 K6 [Vector3.new]
       46 CALL                             R7 3 1
       47 GETUPVAL                         R8 0
       48 NEWTABLE                         R10 0 4
       50 MOVE                             R11 R3
       51 MOVE                             R12 R4
       52 MOVE                             R13 R5
       53 MOVE                             R14 R6
       54 SETLIST                          R10 R11 4 [1]
       56 LOADB                            R11 1
       57 NAMECALL                         R8 R8 K7 ["AddPath"]
       59 CALL                             R8 3 0
       60 GETUPVAL                         R8 0
       61 NEWTABLE                         R10 0 2
       63 MOVE                             R11 R3
       64 MOVE                             R12 R7
       65 SETLIST                          R10 R11 2 [1]
       67 LOADB                            R11 0
       68 NAMECALL                         R8 R8 K7 ["AddPath"]
       70 CALL                             R8 3 0
       71 GETUPVAL                         R8 0
       72 NEWTABLE                         R10 0 2
       74 MOVE                             R11 R4
       75 MOVE                             R12 R7
       76 SETLIST                          R10 R11 2 [1]
       78 LOADB                            R11 0
       79 NAMECALL                         R8 R8 K7 ["AddPath"]
       81 CALL                             R8 3 0
       82 GETUPVAL                         R8 0
       83 NEWTABLE                         R10 0 2
       85 MOVE                             R11 R5
       86 MOVE                             R12 R7
       87 SETLIST                          R10 R11 2 [1]
       89 LOADB                            R11 0
       90 NAMECALL                         R8 R8 K7 ["AddPath"]
       92 CALL                             R8 3 0
       93 GETUPVAL                         R8 0
       94 NEWTABLE                         R10 0 2
       96 MOVE                             R11 R6
       97 MOVE                             R12 R7
       98 SETLIST                          R10 R11 2 [1]
      100 LOADB                            R11 0
      101 NAMECALL                         R8 R8 K7 ["AddPath"]
      103 CALL                             R8 3 0
      104 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Clear"]
        3 CALL                             R2 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["standardRadius"]
        7 DIVK                             R4 R2 K3 [2]
        8 MULK                             R3 R4 K2 [1.5]
        9 MINUS                            R5 R3
       10 MINUS                            R6 R3
       11 LOADN                            R7 0
       12 FASTCALL                         VECTOR ; [+2]
       13 GETIMPORT                        R4 K6 [Vector3.new]
       15 CALL                             R4 3 1
       16 MINUS                            R7 R3
       17 LOADN                            R8 0
       18 FASTCALL3                        VECTOR R3 R7 R8
       20 MOVE                             R6 R3
       21 GETIMPORT                        R5 K6 [Vector3.new]
       23 CALL                             R5 3 1
       24 LOADN                            R9 0
       25 FASTCALL3                        VECTOR R3 R3 R9
       27 MOVE                             R7 R3
       28 MOVE                             R8 R3
       29 GETIMPORT                        R6 K6 [Vector3.new]
       31 CALL                             R6 3 1
       32 MINUS                            R8 R3
       33 LOADN                            R10 0
       34 FASTCALL3                        VECTOR R8 R3 R10
       36 MOVE                             R9 R3
       37 GETIMPORT                        R7 K6 [Vector3.new]
       39 CALL                             R7 3 1
       40 LOADN                            R9 0
       41 LOADN                            R10 0
       42 MINUS                            R11 R0
       43 FASTCALL                         VECTOR ; [+2]
       44 GETIMPORT                        R8 K6 [Vector3.new]
       46 CALL                             R8 3 1
       47 ADD                              R13 R4 R5
       48 ADD                              R12 R13 R6
       49 ADD                              R11 R12 R7
       50 ADD                              R10 R11 R8
       51 DIVK                             R9 R10 K7 [5]
       52 SUB                              R11 R5 R4
       53 SUB                              R13 R6 R4
       54 NAMECALL                         R11 R11 K8 ["Cross"]
       56 CALL                             R11 2 1
       57 ADD                              R14 R4 R5
       58 ADD                              R13 R14 R6
       59 DIVK                             R12 R13 K9 [3]
       60 SUB                              R15 R12 R9
       61 NAMECALL                         R13 R11 K10 ["Dot"]
       63 CALL                             R13 2 1
       64 LOADN                            R14 0
       65 JUMPIFNOTLT                      R13 R14 ; [+2]
       67 MINUS                            R11 R11
       68 SUB                              R15 R1 R12
       69 NAMECALL                         R13 R11 K10 ["Dot"]
       71 CALL                             R13 2 1
       72 LOADN                            R14 0
       73 JUMPIFLT                         R14 R13 ; [+2]
       75 LOADB                            R10 0 +1
       76 LOADB                            R10 1
       77 SUB                              R12 R5 R4
       78 SUB                              R14 R8 R4
       79 NAMECALL                         R12 R12 K8 ["Cross"]
       81 CALL                             R12 2 1
       82 ADD                              R15 R4 R5
       83 ADD                              R14 R15 R8
       84 DIVK                             R13 R14 K9 [3]
       85 SUB                              R16 R13 R9
       86 NAMECALL                         R14 R12 K10 ["Dot"]
       88 CALL                             R14 2 1
       89 LOADN                            R15 0
       90 JUMPIFNOTLT                      R14 R15 ; [+2]
       92 MINUS                            R12 R12
       93 SUB                              R16 R1 R13
       94 NAMECALL                         R14 R12 K10 ["Dot"]
       96 CALL                             R14 2 1
       97 LOADN                            R15 0
       98 JUMPIFLT                         R15 R14 ; [+2]
      100 LOADB                            R11 0 +1
      101 LOADB                            R11 1
      102 SUB                              R13 R6 R5
      103 SUB                              R15 R8 R5
      104 NAMECALL                         R13 R13 K8 ["Cross"]
      106 CALL                             R13 2 1
      107 ADD                              R16 R5 R6
      108 ADD                              R15 R16 R8
      109 DIVK                             R14 R15 K9 [3]
      110 SUB                              R17 R14 R9
      111 NAMECALL                         R15 R13 K10 ["Dot"]
      113 CALL                             R15 2 1
      114 LOADN                            R16 0
      115 JUMPIFNOTLT                      R15 R16 ; [+2]
      117 MINUS                            R13 R13
      118 SUB                              R17 R1 R14
      119 NAMECALL                         R15 R13 K10 ["Dot"]
      121 CALL                             R15 2 1
      122 LOADN                            R16 0
      123 JUMPIFLT                         R16 R15 ; [+2]
      125 LOADB                            R12 0 +1
      126 LOADB                            R12 1
      127 SUB                              R14 R7 R6
      128 SUB                              R16 R8 R6
      129 NAMECALL                         R14 R14 K8 ["Cross"]
      131 CALL                             R14 2 1
      132 ADD                              R17 R6 R7
      133 ADD                              R16 R17 R8
      134 DIVK                             R15 R16 K9 [3]
      135 SUB                              R18 R15 R9
      136 NAMECALL                         R16 R14 K10 ["Dot"]
      138 CALL                             R16 2 1
      139 LOADN                            R17 0
      140 JUMPIFNOTLT                      R16 R17 ; [+2]
      142 MINUS                            R14 R14
      143 SUB                              R18 R1 R15
      144 NAMECALL                         R16 R14 K10 ["Dot"]
      146 CALL                             R16 2 1
      147 LOADN                            R17 0
      148 JUMPIFLT                         R17 R16 ; [+2]
      150 LOADB                            R13 0 +1
      151 LOADB                            R13 1
      152 SUB                              R15 R4 R7
      153 SUB                              R17 R8 R7
      154 NAMECALL                         R15 R15 K8 ["Cross"]
      156 CALL                             R15 2 1
      157 ADD                              R18 R7 R4
      158 ADD                              R17 R18 R8
      159 DIVK                             R16 R17 K9 [3]
      160 SUB                              R19 R16 R9
      161 NAMECALL                         R17 R15 K10 ["Dot"]
      163 CALL                             R17 2 1
      164 LOADN                            R18 0
      165 JUMPIFNOTLT                      R17 R18 ; [+2]
      167 MINUS                            R15 R15
      168 SUB                              R19 R1 R16
      169 NAMECALL                         R17 R15 K10 ["Dot"]
      171 CALL                             R17 2 1
      172 LOADN                            R18 0
      173 JUMPIFLT                         R18 R17 ; [+2]
      175 LOADB                            R14 0 +1
      176 LOADB                            R14 1
      177 JUMPIF                           R10 ; [+1]
      178 JUMPIFNOT                        R11 ; [+11]
      179 GETUPVAL                         R15 0
      180 NEWTABLE                         R17 0 2
      182 MOVE                             R18 R4
      183 MOVE                             R19 R5
      184 SETLIST                          R17 R18 2 [1]
      186 LOADB                            R18 0
      187 NAMECALL                         R15 R15 K11 ["AddPath"]
      189 CALL                             R15 3 0
      190 JUMPIF                           R10 ; [+1]
      191 JUMPIFNOT                        R12 ; [+11]
      192 GETUPVAL                         R15 0
      193 NEWTABLE                         R17 0 2
      195 MOVE                             R18 R5
      196 MOVE                             R19 R6
      197 SETLIST                          R17 R18 2 [1]
      199 LOADB                            R18 0
      200 NAMECALL                         R15 R15 K11 ["AddPath"]
      202 CALL                             R15 3 0
      203 JUMPIF                           R10 ; [+1]
      204 JUMPIFNOT                        R13 ; [+11]
      205 GETUPVAL                         R15 0
      206 NEWTABLE                         R17 0 2
      208 MOVE                             R18 R6
      209 MOVE                             R19 R7
      210 SETLIST                          R17 R18 2 [1]
      212 LOADB                            R18 0
      213 NAMECALL                         R15 R15 K11 ["AddPath"]
      215 CALL                             R15 3 0
      216 JUMPIF                           R10 ; [+1]
      217 JUMPIFNOT                        R14 ; [+11]
      218 GETUPVAL                         R15 0
      219 NEWTABLE                         R17 0 2
      221 MOVE                             R18 R7
      222 MOVE                             R19 R4
      223 SETLIST                          R17 R18 2 [1]
      225 LOADB                            R18 0
      226 NAMECALL                         R15 R15 K11 ["AddPath"]
      228 CALL                             R15 3 0
      229 JUMPIF                           R11 ; [+1]
      230 JUMPIFNOT                        R14 ; [+11]
      231 GETUPVAL                         R15 0
      232 NEWTABLE                         R17 0 2
      234 MOVE                             R18 R4
      235 MOVE                             R19 R8
      236 SETLIST                          R17 R18 2 [1]
      238 LOADB                            R18 0
      239 NAMECALL                         R15 R15 K11 ["AddPath"]
      241 CALL                             R15 3 0
      242 JUMPIF                           R11 ; [+1]
      243 JUMPIFNOT                        R12 ; [+11]
      244 GETUPVAL                         R15 0
      245 NEWTABLE                         R17 0 2
      247 MOVE                             R18 R5
      248 MOVE                             R19 R8
      249 SETLIST                          R17 R18 2 [1]
      251 LOADB                            R18 0
      252 NAMECALL                         R15 R15 K11 ["AddPath"]
      254 CALL                             R15 3 0
      255 JUMPIF                           R12 ; [+1]
      256 JUMPIFNOT                        R13 ; [+11]
      257 GETUPVAL                         R15 0
      258 NEWTABLE                         R17 0 2
      260 MOVE                             R18 R6
      261 MOVE                             R19 R8
      262 SETLIST                          R17 R18 2 [1]
      264 LOADB                            R18 0
      265 NAMECALL                         R15 R15 K11 ["AddPath"]
      267 CALL                             R15 3 0
      268 JUMPIF                           R13 ; [+1]
      269 JUMPIFNOT                        R14 ; [+11]
      270 GETUPVAL                         R15 0
      271 NEWTABLE                         R17 0 2
      273 MOVE                             R18 R7
      274 MOVE                             R19 R8
      275 SETLIST                          R17 R18 2 [1]
      277 LOADB                            R18 0
      278 NAMECALL                         R15 R15 K11 ["AddPath"]
      280 CALL                             R15 3 0
      281 RETURN                           R0 0

PROTO_7:
        0 SETUPVAL                         R0 0
        1 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["connectionAdorneePart"]
        8 JUMPIF                           R1 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["connectionAdorneePart"]
       13 GETTABLEKS                       R2 R2 K4 ["CFrame"]
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K4 ["CFrame"]
       18 MUL                              R1 R2 R3
       19 GETTABLEKS                       R4 R0 K4 ["CFrame"]
       21 GETTABLEKS                       R4 R4 K5 ["Position"]
       23 NAMECALL                         R2 R1 K6 ["PointToObjectSpace"]
       25 CALL                             R2 2 1
       26 GETUPVAL                         R3 2
       27 GETUPVAL                         R4 3
       28 MOVE                             R5 R2
       29 CALL                             R3 2 0
       30 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 JUMPIFNOT                        R0 ; [+4]
       10 GETUPVAL                         R0 2
       11 NAMECALL                         R0 R0 K2 ["Clear"]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+4]
        6 GETUPVAL                         R0 1
        7 NAMECALL                         R0 R0 K1 ["Clear"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 NEWCLOSURE                       R2 P1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 GETUPVAL                         R3 2
       12 CALL                             R3 0 1
       13 JUMPIFNOT                        R3 ; [+24]
       14 GETUPVAL                         R3 3
       15 GETUPVAL                         R4 4
       16 NEWCLOSURE                       R5 P2
       17 CAPTURE                          REF R3
       18 SETTABLEKS                       R5 R4 K0 ["current"]
       20 GETUPVAL                         R4 5
       21 GETTABLEKS                       R4 R4 K1 ["Heartbeat"]
       23 NEWCLOSURE                       R6 P3
       24 CAPTURE                          UPVAL U1
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R2
       27 CAPTURE                          REF R3
       28 NAMECALL                         R4 R4 K2 ["Connect"]
       30 CALL                             R4 2 1
       31 NEWCLOSURE                       R5 P4
       32 CAPTURE                          UPVAL U4
       33 CAPTURE                          VAL R4
       34 CAPTURE                          VAL R0
       35 CLOSEUPVALS                      R3
       36 RETURN                           R5 1
       37 CLOSEUPVALS                      R3
       38 MOVE                             R3 R1
       39 GETUPVAL                         R4 3
       40 CALL                             R3 1 0
       41 GETUPVAL                         R3 4
       42 SETTABLEKS                       R1 R3 K0 ["current"]
       44 NEWCLOSURE                       R3 P5
       45 CAPTURE                          UPVAL U4
       46 CAPTURE                          VAL R0
       47 RETURN                           R3 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["allowHover"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["setHoveredPyramidParentName"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["parentInst"]
       11 GETTABLEKS                       R1 R1 K3 ["Name"]
       13 CALL                             R0 1 0
       14 GETUPVAL                         R0 0
       15 GETTABLEKS                       R0 R0 K4 ["compositeHoverEnter"]
       17 JUMPIFNOT                        R0 ; [+4]
       18 GETUPVAL                         R0 0
       19 GETTABLEKS                       R0 R0 K4 ["compositeHoverEnter"]
       21 CALL                             R0 0 0
       22 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["parentInst"]
        3 GETTABLEKS                       R2 R2 K1 ["Name"]
        5 JUMPIFNOTEQ                      R0 R2 ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 MOVE                             R1 R0
       10 RETURN                           R1 1

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["allowHover"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K1 ["setHoveredPyramidParentName"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          UPVAL U0
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 GETTABLEKS                       R0 R0 K2 ["compositeHoverLeave"]
       14 JUMPIFNOT                        R0 ; [+4]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K2 ["compositeHoverLeave"]
       18 CALL                             R0 0 0
       19 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onJointClicked"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["onJointClicked"]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K1 ["parentInst"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useRef"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 1
       10 GETTABLEKS                       R3 R0 K1 ["updatePositions"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 NAMECALL                         R3 R3 K2 ["map"]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R4 R0 K1 ["updatePositions"]
       21 NEWCLOSURE                       R6 P1
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U1
       24 CAPTURE                          UPVAL U2
       25 CAPTURE                          VAL R2
       26 NAMECALL                         R4 R4 K2 ["map"]
       28 CALL                             R4 2 1
       29 NAMECALL                         R5 R4 K3 ["getValue"]
       31 CALL                             R5 1 1
       32 GETUPVAL                         R6 0
       33 GETTABLEKS                       R6 R6 K4 ["useEffect"]
       35 NEWCLOSURE                       R7 P2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          UPVAL U3
       39 CAPTURE                          VAL R5
       40 CAPTURE                          VAL R2
       41 CAPTURE                          UPVAL U4
       42 NEWTABLE                         R8 0 2
       44 MOVE                             R9 R5
       45 GETUPVAL                         R11 3
       46 CALL                             R11 0 1
       47 JUMPIFNOT                        R11 ; [+3]
       48 GETTABLEKS                       R10 R0 K5 ["edgeColor"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R10
       52 SETLIST                          R8 R9 2 [1]
       54 CALL                             R6 2 0
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R6 R6 K6 ["createElement"]
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R7 R7 K7 ["Fragment"]
       61 LOADNIL                          R8
       62 DUPTABLE                         R9 K10 [{"Pyramid", "Wireframe"}]
       63 GETUPVAL                         R10 0
       64 GETTABLEKS                       R10 R10 K6 ["createElement"]
       66 LOADK                            R11 K11 ["PyramidHandleAdornment"]
       67 NEWTABLE                         R12 16 0
       69 GETTABLEKS                       R13 R0 K12 ["connectionAdorneePart"]
       71 SETTABLEKS                       R13 R12 K13 ["Adornee"]
       73 SETTABLEKS                       R3 R12 K14 ["CFrame"]
       75 GETUPVAL                         R14 3
       76 CALL                             R14 0 1
       77 JUMPIFNOT                        R14 ; [+4]
       78 GETUPVAL                         R13 5
       79 GETTABLEKS                       R13 R13 K15 ["ADORNMENT_TRANSPARENCY"]
       81 JUMP                             ; [+1]
       82 LOADN                            R13 0
       83 SETTABLEKS                       R13 R12 K16 ["Transparency"]
       85 LOADN                            R13 0
       86 SETTABLEKS                       R13 R12 K17 ["ZIndex"]
       88 GETTABLEKS                       R14 R0 K19 ["standardRadius"]
       90 MULK                             R13 R14 K18 [1.5]
       91 SETTABLEKS                       R13 R12 K20 ["Size"]
       93 SETTABLEKS                       R4 R12 K21 ["Height"]
       95 GETTABLEKS                       R13 R0 K22 ["color"]
       97 SETTABLEKS                       R13 R12 K23 ["Color3"]
       99 GETUPVAL                         R14 3
      100 CALL                             R14 0 1
      101 JUMPIFNOT                        R14 ; [+2]
      102 LOADB                            R13 1
      103 JUMP                             ; [+2]
      104 GETTABLEKS                       R13 R0 K24 ["isJointHovered"]
      106 SETTABLEKS                       R13 R12 K25 ["AlwaysOnTop"]
      108 GETUPVAL                         R13 0
      109 GETTABLEKS                       R13 R13 K26 ["Event"]
      111 GETTABLEKS                       R13 R13 K27 ["MouseEnter"]
      113 NEWCLOSURE                       R14 P3
      114 CAPTURE                          VAL R0
      115 SETTABLE                         R14 R12 R13
      116 GETUPVAL                         R13 0
      117 GETTABLEKS                       R13 R13 K26 ["Event"]
      119 GETTABLEKS                       R13 R13 K28 ["MouseLeave"]
      121 NEWCLOSURE                       R14 P4
      122 CAPTURE                          VAL R0
      123 SETTABLE                         R14 R12 R13
      124 GETUPVAL                         R13 0
      125 GETTABLEKS                       R13 R13 K26 ["Event"]
      127 GETTABLEKS                       R13 R13 K29 ["MouseButton1Down"]
      129 NEWCLOSURE                       R14 P5
      130 CAPTURE                          VAL R0
      131 SETTABLE                         R14 R12 R13
      132 CALL                             R10 2 1
      133 SETTABLEKS                       R10 R9 K8 ["Pyramid"]
      135 GETUPVAL                         R10 0
      136 GETTABLEKS                       R10 R10 K6 ["createElement"]
      138 LOADK                            R11 K30 ["WireframeHandleAdornment"]
      139 DUPTABLE                         R12 K33 [{["Adornee"], ["AlwaysOnTop"], ["Transparency"] = 0, ["ZIndex"] = 0, ["Color3"], ["CFrame"], ["ref"]}]
      140 GETTABLEKS                       R13 R0 K12 ["connectionAdorneePart"]
      142 SETTABLEKS                       R13 R12 K13 ["Adornee"]
      144 GETUPVAL                         R14 3
      145 CALL                             R14 0 1
      146 JUMPIFNOT                        R14 ; [+2]
      147 LOADB                            R13 1
      148 JUMP                             ; [+2]
      149 GETTABLEKS                       R13 R0 K24 ["isJointHovered"]
      151 SETTABLEKS                       R13 R12 K25 ["AlwaysOnTop"]
      153 GETTABLEKS                       R13 R0 K5 ["edgeColor"]
      155 SETTABLEKS                       R13 R12 K23 ["Color3"]
      157 SETTABLEKS                       R3 R12 K14 ["CFrame"]
      159 SETTABLEKS                       R1 R12 K32 ["ref"]
      161 CALL                             R10 2 1
      162 SETTABLEKS                       R10 R9 K9 ["Wireframe"]
      164 CALL                             R6 3 -1
      165 RETURN                           R6 -1

PROTO_17:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 JUMPIFNOTEQKN                    R0 K1 [1] ; [+33]
       11 GETIMPORT                        R0 K3 [workspace]
       13 GETTABLEKS                       R0 R0 K4 ["CurrentCamera"]
       15 LOADK                            R1 K5 [∞]
       16 JUMPIFNOT                        R0 ; [+14]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K6 ["getGlobalCoordinateFrame"]
       20 GETUPVAL                         R3 2
       21 CALL                             R2 1 1
       22 GETTABLEKS                       R2 R2 K7 ["Position"]
       24 GETTABLEKS                       R4 R0 K8 ["CFrame"]
       26 GETTABLEKS                       R4 R4 K7 ["Position"]
       28 SUB                              R3 R4 R2
       29 GETTABLEKS                       R1 R3 K9 ["Magnitude"]
       31 GETUPVAL                         R2 3
       32 GETTABLEKS                       R2 R2 K10 ["onJointHoverEnter"]
       34 JUMPIFNOT                        R2 ; [+8]
       35 GETUPVAL                         R2 3
       36 GETTABLEKS                       R2 R2 K10 ["onJointHoverEnter"]
       38 GETUPVAL                         R3 2
       39 GETTABLEKS                       R3 R3 K11 ["Name"]
       41 MOVE                             R4 R1
       42 CALL                             R2 2 0
       43 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K1 ["current"]
        4 SUBK                             R2 R3 K0 [1]
        5 FASTCALL2K                       MATH_MAX R2 K2 ; [+4]
        7 LOADK                            R3 K2 [0]
        8 GETIMPORT                        R1 K5 [math.max]
       10 CALL                             R1 2 1
       11 SETTABLEKS                       R1 R0 K1 ["current"]
       13 GETUPVAL                         R0 0
       14 GETTABLEKS                       R0 R0 K1 ["current"]
       16 JUMPIFNOTEQKN                    R0 K2 [0] ; [+12]
       18 GETUPVAL                         R0 1
       19 GETTABLEKS                       R0 R0 K6 ["onJointHoverLeave"]
       21 JUMPIFNOT                        R0 ; [+7]
       22 GETUPVAL                         R0 1
       23 GETTABLEKS                       R0 R0 K6 ["onJointHoverLeave"]
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R1 R1 K7 ["Name"]
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_20:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updatePositions"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 NAMECALL                         R0 R0 K1 ["map"]
        8 CALL                             R0 2 -1
        9 RETURN                           R0 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOT                        R2 ; [+8]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["CFrame"]
        5 NAMECALL                         R2 R2 K1 ["Inverse"]
        7 CALL                             R2 1 1
        8 MUL                              R1 R2 R0
        9 JUMPIF                           R1 ; [+3]
       10 GETIMPORT                        R1 K3 [CFrame.new]
       12 CALL                             R1 0 1
       13 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R0 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          UPVAL U1
        3 NAMECALL                         R0 R0 K0 ["map"]
        5 CALL                             R0 2 -1
        6 RETURN                           R0 -1

PROTO_23:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+3]
        3 GETUPVAL                         R1 1
        4 ORK                              R0 R1 K0 [0.05]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 ORK                              R0 R1 K0 [0.05]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["childJoints"]
       11 JUMPIF                           R1 ; [+2]
       12 NEWTABLE                         R1 0 0
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K2 ["Position"]
       17 LENGTH                           R3 R1
       18 LOADN                            R4 0
       19 JUMPIFNOTLT                      R4 R3 ; [+40]
       21 LOADN                            R3 0
       22 LOADN                            R4 0
       23 MOVE                             R5 R1
       24 LOADNIL                          R6
       25 LOADNIL                          R7
       26 FORGPREP                         R5
       27 GETUPVAL                         R10 4
       28 GETTABLEKS                       R10 R10 K3 ["getGlobalCoordinateFrame"]
       30 MOVE                             R11 R9
       31 CALL                             R10 1 1
       32 GETTABLEKS                       R10 R10 K2 ["Position"]
       34 SUB                              R11 R10 R2
       35 GETTABLEKS                       R11 R11 K4 ["Magnitude"]
       37 LOADN                            R12 0
       38 JUMPIFNOTLT                      R12 R11 ; [+3]
       40 ADD                              R3 R3 R11
       41 ADDK                             R4 R4 K5 [1]
       42 FORGLOOP                         R5 2 ; [-16]
       44 LOADN                            R5 0
       45 JUMPIFNOTLT                      R5 R4 ; [+42]
       47 DIV                              R5 R3 R4
       48 GETUPVAL                         R9 5
       49 GETTABLEKS                       R9 R9 K6 ["BONE_RADIUS_FRACTION"]
       51 MUL                              R8 R5 R9
       52 FASTCALL2                        MATH_MIN R0 R8 ; [+4]
       54 MOVE                             R7 R0
       55 GETIMPORT                        R6 K9 [math.min]
       57 CALL                             R6 2 1
       58 MOVE                             R0 R6
       59 JUMP                             ; [+28]
       60 GETUPVAL                         R3 2
       61 GETTABLEKS                       R3 R3 K10 ["parentJoint"]
       63 JUMPIFNOT                        R3 ; [+24]
       64 GETUPVAL                         R4 4
       65 GETTABLEKS                       R4 R4 K3 ["getGlobalCoordinateFrame"]
       67 MOVE                             R5 R3
       68 CALL                             R4 1 1
       69 GETTABLEKS                       R4 R4 K2 ["Position"]
       71 SUB                              R5 R2 R4
       72 GETTABLEKS                       R5 R5 K4 ["Magnitude"]
       74 LOADN                            R6 0
       75 JUMPIFNOTLT                      R6 R5 ; [+12]
       77 GETUPVAL                         R9 5
       78 GETTABLEKS                       R9 R9 K6 ["BONE_RADIUS_FRACTION"]
       80 MUL                              R8 R5 R9
       81 FASTCALL2                        MATH_MIN R0 R8 ; [+4]
       83 MOVE                             R7 R0
       84 GETIMPORT                        R6 K9 [math.min]
       86 CALL                             R6 2 1
       87 MOVE                             R0 R6
       88 GETUPVAL                         R5 5
       89 GETTABLEKS                       R5 R5 K11 ["RADIUS_MIN"]
       91 FASTCALL2                        MATH_MAX R0 R5 ; [+4]
       93 MOVE                             R4 R0
       94 GETIMPORT                        R3 K13 [math.max]
       96 CALL                             R3 2 1
       97 RETURN                           R3 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["getGlobalCoordinateFrame"]
        6 GETUPVAL                         R1 2
        7 CALL                             R0 1 1
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R3 R0 K1 ["Position"]
       11 NAMECALL                         R1 R1 K2 ["WorldToViewportPoint"]
       13 CALL                             R1 2 2
       14 JUMPIFNOT                        R2 ; [+14]
       15 GETUPVAL                         R3 4
       16 GETIMPORT                        R4 K5 [Vector2.new]
       18 GETTABLEKS                       R5 R1 K6 ["X"]
       20 GETTABLEKS                       R7 R1 K8 ["Y"]
       22 SUBK                             R6 R7 K7 [30]
       23 CALL                             R4 2 -1
       24 CALL                             R3 -1 0
       25 GETUPVAL                         R3 5
       26 LOADB                            R4 1
       27 CALL                             R3 1 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R3 5
       30 LOADB                            R4 0
       31 CALL                             R3 1 0
       32 RETURN                           R0 0
       33 RETURN                           R0 0

PROTO_25:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_26:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["CurrentCamera"]
        4 JUMPIF                           R0 ; [+7]
        5 GETUPVAL                         R1 0
        6 LOADB                            R2 0
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 LOADB                            R2 0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K3 ["Name"]
       16 JUMPIFEQ                         R2 R3 ; [+2]
       18 LOADB                            R1 0 +1
       19 LOADB                            R1 1
       20 JUMPIF                           R1 ; [+7]
       21 GETUPVAL                         R2 0
       22 LOADB                            R3 0
       23 CALL                             R2 1 0
       24 GETUPVAL                         R2 1
       25 LOADB                            R3 0
       26 CALL                             R2 1 0
       27 RETURN                           R0 0
       28 GETUPVAL                         R2 0
       29 LOADB                            R3 1
       30 CALL                             R2 1 0
       31 LOADB                            R2 1
       32 GETIMPORT                        R3 K5 [game]
       34 LOADK                            R5 K6 ["RunService"]
       35 NAMECALL                         R3 R3 K7 ["GetService"]
       37 CALL                             R3 2 1
       38 GETTABLEKS                       R3 R3 K8 ["RenderStepped"]
       40 NEWCLOSURE                       R5 P0
       41 CAPTURE                          REF R2
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U5
       46 CAPTURE                          UPVAL U1
       47 NAMECALL                         R3 R3 K9 ["Connect"]
       49 CALL                             R3 2 1
       50 NEWCLOSURE                       R4 P1
       51 CAPTURE                          REF R2
       52 CAPTURE                          VAL R3
       53 CLOSEUPVALS                      R2
       54 RETURN                           R4 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 GETUPVAL                         R0 1
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onJointClicked"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["onJointClicked"]
        8 GETUPVAL                         R1 1
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_30:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["childJoints"]
        5 JUMPIF                           R1 ; [+2]
        6 NEWTABLE                         R1 0 0
        8 MOVE                             R2 R1
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETUPVAL                         R7 1
       13 GETUPVAL                         R8 2
       14 MOVE                             R9 R7
       15 CALL                             R8 1 1
       16 JUMPIF                           R8 ; [+3]
       17 GETUPVAL                         R8 2
       18 MOVE                             R9 R6
       19 CALL                             R8 1 1
       20 JUMPIFNOT                        R8 ; [+18]
       21 LOADK                            R10 K1 ["Connection_%*_%*_%*"]
       22 GETTABLEKS                       R12 R7 K2 ["Name"]
       24 GETTABLEKS                       R13 R6 K2 ["Name"]
       26 MOVE                             R14 R5
       27 NAMECALL                         R10 R10 K3 ["format"]
       29 CALL                             R10 4 1
       30 MOVE                             R9 R10
       31 DUPTABLE                         R10 K7 [{"parentInst", "childInst", "connectionAdorneePart"}]
       32 SETTABLEKS                       R7 R10 K4 ["parentInst"]
       34 SETTABLEKS                       R6 R10 K5 ["childInst"]
       36 SETTABLEKS                       R8 R10 K6 ["connectionAdorneePart"]
       38 SETTABLE                         R10 R0 R9
       39 FORGLOOP                         R2 2 ; [-28]
       41 RETURN                           R0 1

PROTO_31:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["parentInst"]
        4 CALL                             R0 1 -1
        5 RETURN                           R0 -1

PROTO_32:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETUPVAL                         R1 1
        4 CALL                             R1 0 1
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 GETTABLEKS                       R2 R0 K0 ["jointInstance"]
        9 GETTABLEKS                       R3 R0 K1 ["globalHoveredJointName"]
       11 JUMPIF                           R3 ; [+2]
       12 GETTABLEKS                       R3 R0 K2 ["mannequinHoveredJointName"]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["useState"]
       17 LOADNIL                          R5
       18 CALL                             R4 1 2
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K4 ["useRef"]
       22 LOADN                            R7 0
       23 CALL                             R6 1 1
       24 GETUPVAL                         R7 2
       25 GETTABLEKS                       R7 R7 K5 ["useCallback"]
       27 NEWCLOSURE                       R8 P0
       28 CAPTURE                          VAL R6
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R2
       31 CAPTURE                          VAL R0
       32 NEWTABLE                         R9 0 2
       34 MOVE                             R10 R2
       35 GETTABLEKS                       R11 R0 K6 ["onJointHoverEnter"]
       37 SETLIST                          R9 R10 2 [1]
       39 CALL                             R7 2 1
       40 GETUPVAL                         R8 2
       41 GETTABLEKS                       R8 R8 K5 ["useCallback"]
       43 NEWCLOSURE                       R9 P1
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R2
       47 NEWTABLE                         R10 0 2
       49 MOVE                             R11 R2
       50 GETTABLEKS                       R12 R0 K7 ["onJointHoverLeave"]
       52 SETLIST                          R10 R11 2 [1]
       54 CALL                             R8 2 1
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R9 R9 K3 ["useState"]
       58 LOADB                            R10 0
       59 CALL                             R9 1 2
       60 GETUPVAL                         R11 2
       61 GETTABLEKS                       R11 R11 K3 ["useState"]
       63 LOADB                            R12 0
       64 CALL                             R11 1 2
       65 GETUPVAL                         R13 2
       66 GETTABLEKS                       R13 R13 K3 ["useState"]
       68 GETIMPORT                        R14 K10 [Vector2.new]
       70 LOADN                            R15 0
       71 LOADN                            R16 0
       72 CALL                             R14 2 -1
       73 CALL                             R13 -1 2
       74 GETTABLEKS                       R16 R2 K11 ["Name"]
       76 JUMPIFEQ                         R3 R16 ; [+2]
       78 LOADB                            R15 0 +1
       79 LOADB                            R15 1
       80 GETTABLEKS                       R16 R0 K12 ["mappedLookup"]
       82 JUMPIF                           R16 ; [+2]
       83 NEWTABLE                         R16 0 0
       85 GETTABLEKS                       R17 R0 K13 ["otherMappedLookup"]
       87 GETUPVAL                         R18 4
       88 MOVE                             R19 R2
       89 GETTABLEKS                       R20 R0 K14 ["selectedJointInstance"]
       91 MOVE                             R21 R3
       92 LOADNIL                          R22
       93 MOVE                             R23 R16
       94 MOVE                             R24 R17
       95 MOVE                             R25 R1
       96 CALL                             R18 7 1
       97 GETUPVAL                         R19 5
       98 MOVE                             R20 R2
       99 CALL                             R19 1 1
      100 GETUPVAL                         R20 2
      101 GETTABLEKS                       R20 R20 K15 ["useMemo"]
      103 NEWCLOSURE                       R21 P2
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U6
      106 CAPTURE                          VAL R2
      107 NEWTABLE                         R22 0 2
      109 MOVE                             R23 R2
      110 GETTABLEKS                       R24 R0 K16 ["updatePositions"]
      112 SETLIST                          R22 R23 2 [1]
      114 CALL                             R20 2 1
      115 GETUPVAL                         R21 2
      116 GETTABLEKS                       R21 R21 K15 ["useMemo"]
      118 NEWCLOSURE                       R22 P3
      119 CAPTURE                          VAL R20
      120 CAPTURE                          VAL R19
      121 NEWTABLE                         R23 0 2
      123 MOVE                             R24 R20
      124 MOVE                             R25 R19
      125 SETLIST                          R23 R24 2 [1]
      127 CALL                             R21 2 1
      128 NAMECALL                         R22 R20 K17 ["getValue"]
      130 CALL                             R22 1 1
      131 GETTABLEKS                       R23 R0 K18 ["standardRadius"]
      133 GETUPVAL                         R24 2
      134 GETTABLEKS                       R24 R24 K15 ["useMemo"]
      136 NEWCLOSURE                       R25 P4
      137 CAPTURE                          UPVAL U7
      138 CAPTURE                          VAL R23
      139 CAPTURE                          VAL R0
      140 CAPTURE                          VAL R22
      141 CAPTURE                          UPVAL U3
      142 CAPTURE                          UPVAL U8
      143 NEWTABLE                         R26 0 3
      145 MOVE                             R27 R23
      146 GETTABLEKS                       R28 R0 K19 ["childJoints"]
      148 GETTABLEKS                       R29 R0 K20 ["parentJoint"]
      150 SETLIST                          R26 R27 3 [1]
      152 CALL                             R24 2 1
      153 GETUPVAL                         R26 7
      154 CALL                             R26 0 1
      155 JUMPIFNOT                        R26 ; [+5]
      156 GETUPVAL                         R26 8
      157 GETTABLEKS                       R26 R26 K21 ["SPHERE_STROKE_PCT"]
      159 MUL                              R25 R24 R26
      160 JUMP                             ; [+1]
      161 MOVE                             R25 R24
      162 GETUPVAL                         R26 2
      163 GETTABLEKS                       R26 R26 K22 ["useEffect"]
      165 NEWCLOSURE                       R27 P5
      166 CAPTURE                          VAL R10
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R3
      169 CAPTURE                          VAL R2
      170 CAPTURE                          UPVAL U3
      171 CAPTURE                          VAL R14
      172 NEWTABLE                         R28 0 1
      174 MOVE                             R29 R3
      175 SETLIST                          R28 R29 1 [1]
      177 CALL                             R26 2 0
      178 NEWTABLE                         R26 0 0
      180 GETUPVAL                         R27 2
      181 GETTABLEKS                       R27 R27 K23 ["createElement"]
      183 LOADK                            R28 K24 ["SphereHandleAdornment"]
      184 NEWTABLE                         R29 16 0
      186 SETTABLEKS                       R24 R29 K25 ["Radius"]
      188 GETTABLEKS                       R30 R18 K26 ["color"]
      190 SETTABLEKS                       R30 R29 K27 ["Color3"]
      192 GETUPVAL                         R31 0
      193 CALL                             R31 0 1
      194 JUMPIFNOT                        R31 ; [+2]
      195 LOADB                            R30 1
      196 JUMP                             ; [+1]
      197 MOVE                             R30 R15
      198 SETTABLEKS                       R30 R29 K28 ["AlwaysOnTop"]
      200 SETTABLEKS                       R19 R29 K29 ["Adornee"]
      202 GETUPVAL                         R31 0
      203 CALL                             R31 0 1
      204 JUMPIFNOT                        R31 ; [+4]
      205 GETUPVAL                         R30 8
      206 GETTABLEKS                       R30 R30 K30 ["ADORNMENT_TRANSPARENCY"]
      208 JUMP                             ; [+1]
      209 LOADN                            R30 0
      210 SETTABLEKS                       R30 R29 K31 ["Transparency"]
      212 LOADN                            R30 0
      213 SETTABLEKS                       R30 R29 K32 ["ZIndex"]
      215 SETTABLEKS                       R21 R29 K33 ["CFrame"]
      217 GETUPVAL                         R30 2
      218 GETTABLEKS                       R30 R30 K34 ["Event"]
      220 GETTABLEKS                       R30 R30 K35 ["MouseEnter"]
      222 NEWCLOSURE                       R31 P6
      223 CAPTURE                          VAL R7
      224 CAPTURE                          VAL R5
      225 JUMPIF                           R31 ; [+1]
      226 LOADNIL                          R31
      227 SETTABLE                         R31 R29 R30
      228 GETUPVAL                         R30 2
      229 GETTABLEKS                       R30 R30 K34 ["Event"]
      231 GETTABLEKS                       R30 R30 K36 ["MouseLeave"]
      233 NEWCLOSURE                       R31 P7
      234 CAPTURE                          VAL R8
      235 JUMPIF                           R31 ; [+1]
      236 LOADNIL                          R31
      237 SETTABLE                         R31 R29 R30
      238 GETUPVAL                         R30 2
      239 GETTABLEKS                       R30 R30 K34 ["Event"]
      241 GETTABLEKS                       R30 R30 K37 ["MouseButton1Down"]
      243 NEWCLOSURE                       R31 P8
      244 CAPTURE                          VAL R0
      245 CAPTURE                          VAL R2
      246 SETTABLE                         R31 R29 R30
      247 CALL                             R27 2 1
      248 SETTABLEKS                       R27 R26 K38 ["Sphere"]
      250 JUMPIFNOT                        R19 ; [+18]
      251 GETUPVAL                         R28 2
      252 GETTABLEKS                       R28 R28 K23 ["createElement"]
      254 GETUPVAL                         R29 9
      255 DUPTABLE                         R30 K43 [{["radius"], ["color"], ["adorneePart"], [4], ["alwaysOnTop"] = True}]
      256 SETTABLEKS                       R25 R30 K39 ["radius"]
      258 GETTABLEKS                       R31 R18 K44 ["edgeColor"]
      260 SETTABLEKS                       R31 R30 K26 ["color"]
      262 SETTABLEKS                       R19 R30 K40 ["adorneePart"]
      264 SETTABLEKS                       R2 R30 K0 ["jointInstance"]
      266 CALL                             R28 2 1
      267 SETTABLEKS                       R28 R26 K45 ["Wire"]
      269 GETUPVAL                         R28 2
      270 GETTABLEKS                       R28 R28 K15 ["useMemo"]
      272 NEWCLOSURE                       R29 P9
      273 CAPTURE                          VAL R0
      274 CAPTURE                          VAL R2
      275 CAPTURE                          UPVAL U5
      276 NEWTABLE                         R30 0 1
      278 GETTABLEKS                       R31 R0 K19 ["childJoints"]
      280 SETLIST                          R30 R31 1 [1]
      282 CALL                             R28 2 1
      283 MOVE                             R29 R28
      284 LOADNIL                          R30
      285 LOADNIL                          R31
      286 FORGPREP                         R29
      287 GETUPVAL                         R34 2
      288 GETTABLEKS                       R34 R34 K23 ["createElement"]
      290 GETUPVAL                         R35 10
      291 DUPTABLE                         R36 K58 [{["parentInst"], ["childInst"], ["connectionAdorneePart"], ["standardRadius"], ["updatePositions"], ["getParentGlobalCf"], ["allowHover"] = True, ["color"], ["edgeColor"], ["isOtherMapped"], ["onJointClicked"], ["setHoveredPyramidParentName"], ["compositeHoverEnter"], ["compositeHoverLeave"], ["hoveredPyramidParentName"], ["isJointHovered"]}]
      292 GETTABLEKS                       R37 R33 K46 ["parentInst"]
      294 SETTABLEKS                       R37 R36 K46 ["parentInst"]
      296 GETTABLEKS                       R37 R33 K47 ["childInst"]
      298 SETTABLEKS                       R37 R36 K47 ["childInst"]
      300 GETTABLEKS                       R37 R33 K48 ["connectionAdorneePart"]
      302 SETTABLEKS                       R37 R36 K48 ["connectionAdorneePart"]
      304 SETTABLEKS                       R24 R36 K18 ["standardRadius"]
      306 GETTABLEKS                       R37 R0 K16 ["updatePositions"]
      308 SETTABLEKS                       R37 R36 K16 ["updatePositions"]
      310 NEWCLOSURE                       R37 P10
      311 CAPTURE                          UPVAL U6
      312 CAPTURE                          VAL R33
      313 SETTABLEKS                       R37 R36 K49 ["getParentGlobalCf"]
      315 GETTABLEKS                       R37 R18 K26 ["color"]
      317 SETTABLEKS                       R37 R36 K26 ["color"]
      319 GETTABLEKS                       R37 R18 K44 ["edgeColor"]
      321 SETTABLEKS                       R37 R36 K44 ["edgeColor"]
      323 GETTABLEKS                       R37 R18 K51 ["isOtherMapped"]
      325 SETTABLEKS                       R37 R36 K51 ["isOtherMapped"]
      327 GETTABLEKS                       R37 R0 K52 ["onJointClicked"]
      329 SETTABLEKS                       R37 R36 K52 ["onJointClicked"]
      331 SETTABLEKS                       R5 R36 K53 ["setHoveredPyramidParentName"]
      333 SETTABLEKS                       R7 R36 K54 ["compositeHoverEnter"]
      335 SETTABLEKS                       R8 R36 K55 ["compositeHoverLeave"]
      337 SETTABLEKS                       R4 R36 K56 ["hoveredPyramidParentName"]
      339 SETTABLEKS                       R15 R36 K57 ["isJointHovered"]
      341 CALL                             R34 2 1
      342 SETTABLE                         R34 R26 R32
      343 FORGLOOP                         R29 2 ; [-57]
      345 LOADNIL                          R29
      346 JUMPIFNOT                        R9 ; [+147]
      347 JUMPIFNOT                        R11 ; [+146]
      348 GETUPVAL                         R30 11
      349 GETTABLEKS                       R30 R30 K59 ["createPortal"]
      351 GETUPVAL                         R31 2
      352 GETTABLEKS                       R31 R31 K23 ["createElement"]
      354 LOADK                            R32 K60 ["ScreenGui"]
      355 DUPTABLE                         R33 K65 [{["IgnoreGuiInset"] = True, ["ResetOnSpawn"] = False, ["ZIndexBehavior"]}]
      356 GETIMPORT                        R34 K68 [Enum.ZIndexBehavior.Sibling]
      358 SETTABLEKS                       R34 R33 K64 ["ZIndexBehavior"]
      360 DUPTABLE                         R34 K70 [{"Positioner"}]
      361 GETUPVAL                         R35 2
      362 GETTABLEKS                       R35 R35 K23 ["createElement"]
      364 LOADK                            R36 K71 ["Frame"]
      365 DUPTABLE                         R37 K77 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["ZIndex"] = 200}]
      366 GETIMPORT                        R38 K79 [UDim2.new]
      368 LOADN                            R39 0
      369 LOADN                            R40 0
      370 LOADN                            R41 0
      371 LOADN                            R42 0
      372 CALL                             R38 4 1
      373 SETTABLEKS                       R38 R37 K74 ["Size"]
      375 GETIMPORT                        R38 K79 [UDim2.new]
      377 LOADN                            R39 0
      378 GETTABLEKS                       R40 R13 K80 ["X"]
      380 LOADN                            R41 0
      381 GETTABLEKS                       R42 R13 K81 ["Y"]
      383 CALL                             R38 4 1
      384 SETTABLEKS                       R38 R37 K75 ["Position"]
      386 DUPTABLE                         R38 K83 [{"Tooltip"}]
      387 GETUPVAL                         R39 2
      388 GETTABLEKS                       R39 R39 K23 ["createElement"]
      390 LOADK                            R40 K84 ["TextLabel"]
      391 DUPTABLE                         R41 K96 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0.25, ["TextColor3"], ["Font"], ["TextSize"] = 14, ["AutomaticSize"], ["BorderSizePixel"] = 0, ["Text"], ["ZIndex"] = 201}]
      392 GETIMPORT                        R42 K97 [Color3.new]
      394 LOADN                            R43 0
      395 LOADN                            R44 0
      396 LOADN                            R45 0
      397 CALL                             R42 3 1
      398 SETTABLEKS                       R42 R41 K85 ["BackgroundColor3"]
      400 GETIMPORT                        R42 K97 [Color3.new]
      402 LOADN                            R43 1
      403 LOADN                            R44 1
      404 LOADN                            R45 1
      405 CALL                             R42 3 1
      406 SETTABLEKS                       R42 R41 K87 ["TextColor3"]
      408 GETIMPORT                        R42 K99 [Enum.Font.SourceSans]
      410 SETTABLEKS                       R42 R41 K88 ["Font"]
      412 GETIMPORT                        R42 K101 [Enum.AutomaticSize.XY]
      414 SETTABLEKS                       R42 R41 K91 ["AutomaticSize"]
      416 LOADK                            R43 K102 ["%*: %*"]
      417 GETTABLEKS                       R45 R2 K103 ["ClassName"]
      419 GETTABLEKS                       R46 R2 K11 ["Name"]
      421 NAMECALL                         R43 R43 K104 ["format"]
      423 CALL                             R43 3 1
      424 MOVE                             R42 R43
      425 SETTABLEKS                       R42 R41 K94 ["Text"]
      427 DUPTABLE                         R42 K107 [{"UICorner", "Padding"}]
      428 GETUPVAL                         R43 2
      429 GETTABLEKS                       R43 R43 K23 ["createElement"]
      431 LOADK                            R44 K105 ["UICorner"]
      432 DUPTABLE                         R45 K109 [{"CornerRadius"}]
      433 GETIMPORT                        R46 K111 [UDim.new]
      435 LOADN                            R47 0
      436 LOADN                            R48 6
      437 CALL                             R46 2 1
      438 SETTABLEKS                       R46 R45 K108 ["CornerRadius"]
      440 CALL                             R43 2 1
      441 SETTABLEKS                       R43 R42 K105 ["UICorner"]
      443 GETUPVAL                         R43 2
      444 GETTABLEKS                       R43 R43 K23 ["createElement"]
      446 LOADK                            R44 K112 ["UIPadding"]
      447 DUPTABLE                         R45 K117 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      448 GETIMPORT                        R46 K111 [UDim.new]
      450 LOADN                            R47 0
      451 LOADN                            R48 8
      452 CALL                             R46 2 1
      453 SETTABLEKS                       R46 R45 K113 ["PaddingLeft"]
      455 GETIMPORT                        R46 K111 [UDim.new]
      457 LOADN                            R47 0
      458 LOADN                            R48 8
      459 CALL                             R46 2 1
      460 SETTABLEKS                       R46 R45 K114 ["PaddingRight"]
      462 GETIMPORT                        R46 K111 [UDim.new]
      464 LOADN                            R47 0
      465 LOADN                            R48 4
      466 CALL                             R46 2 1
      467 SETTABLEKS                       R46 R45 K115 ["PaddingTop"]
      469 GETIMPORT                        R46 K111 [UDim.new]
      471 LOADN                            R47 0
      472 LOADN                            R48 4
      473 CALL                             R46 2 1
      474 SETTABLEKS                       R46 R45 K116 ["PaddingBottom"]
      476 CALL                             R43 2 1
      477 SETTABLEKS                       R43 R42 K106 ["Padding"]
      479 CALL                             R39 3 1
      480 SETTABLEKS                       R39 R38 K82 ["Tooltip"]
      482 CALL                             R35 3 1
      483 SETTABLEKS                       R35 R34 K69 ["Positioner"]
      485 CALL                             R31 3 1
      486 GETIMPORT                        R32 K119 [game]
      488 LOADK                            R34 K120 ["CoreGui"]
      489 NAMECALL                         R32 R32 K121 ["GetService"]
      491 CALL                             R32 2 -1
      492 CALL                             R30 -1 1
      493 MOVE                             R29 R30
      494 GETUPVAL                         R30 2
      495 GETTABLEKS                       R30 R30 K23 ["createElement"]
      497 GETUPVAL                         R31 2
      498 GETTABLEKS                       R31 R31 K122 ["Fragment"]
      500 LOADNIL                          R32
      501 DUPTABLE                         R33 K125 [{"World", "TooltipPortal"}]
      502 GETUPVAL                         R34 2
      503 GETTABLEKS                       R34 R34 K23 ["createElement"]
      505 LOADK                            R35 K126 ["Folder"]
      506 LOADNIL                          R36
      507 MOVE                             R37 R26
      508 CALL                             R34 3 1
      509 SETTABLEKS                       R34 R33 K123 ["World"]
      511 SETTABLEKS                       R29 R33 K124 ["TooltipPortal"]
      513 CALL                             R30 3 -1
      514 RETURN                           R30 -1

PROTO_33:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 FASTCALL1                        TYPE R0 ; [+3]
        5 MOVE                             R3 R0
        6 GETIMPORT                        R2 K1 [type]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+8]
       11 FASTCALL1                        TYPE R1 ; [+3]
       12 MOVE                             R3 R1
       13 GETIMPORT                        R2 K1 [type]
       15 CALL                             R2 1 1
       16 JUMPIFEQKS                       R2 K2 ["table"] ; [+3]
       18 LOADB                            R2 0
       19 RETURN                           R2 1
       20 MOVE                             R2 R0
       21 LOADNIL                          R3
       22 LOADNIL                          R4
       23 FORGPREP                         R2
       24 GETTABLE                         R7 R1 R5
       25 JUMPIFEQ                         R7 R6 ; [+3]
       27 LOADB                            R7 0
       28 RETURN                           R7 1
       29 FORGLOOP                         R2 2 ; [-6]
       31 MOVE                             R2 R1
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETTABLE                         R7 R0 R5
       36 JUMPIFNOTEQKNIL                  R7 ; [+3]
       38 LOADB                            R7 0
       39 RETURN                           R7 1
       40 FORGLOOP                         R2 1 ; [-6]
       42 LOADB                            R2 1
       43 RETURN                           R2 1

PROTO_34:
        0 JUMPIFNOTEQ                      R0 R1 ; [+3]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 MOVE                             R2 R1
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETTABLE                         R7 R0 R5
        9 JUMPIFEQ                         R7 R6 ; [+32]
       11 GETUPVAL                         R8 0
       12 GETTABLE                         R7 R8 R5
       13 JUMPIFNOT                        R7 ; [+8]
       14 GETUPVAL                         R7 1
       15 GETTABLE                         R8 R0 R5
       16 MOVE                             R9 R6
       17 CALL                             R7 2 1
       18 JUMPIF                           R7 ; [+23]
       19 LOADB                            R7 0
       20 RETURN                           R7 1
       21 JUMP                             ; [+20]
       22 GETUPVAL                         R8 2
       23 GETTABLE                         R7 R8 R5
       24 JUMPIFNOT                        R7 ; [+15]
       25 GETTABLEKS                       R7 R1 K0 ["jointInstance"]
       27 JUMPIFNOT                        R7 ; [+4]
       28 GETTABLEKS                       R7 R1 K0 ["jointInstance"]
       30 GETTABLEKS                       R7 R7 K1 ["Name"]
       32 GETTABLE                         R8 R0 R5
       33 JUMPIFEQ                         R8 R7 ; [+3]
       35 JUMPIFNOTEQ                      R6 R7 ; [+6]
       37 LOADB                            R8 0
       38 RETURN                           R8 1
       39 JUMP                             ; [+2]
       40 LOADB                            R7 0
       41 RETURN                           R7 1
       42 FORGLOOP                         R2 2 ; [-35]
       44 MOVE                             R2 R0
       45 LOADNIL                          R3
       46 LOADNIL                          R4
       47 FORGPREP                         R2
       48 GETTABLE                         R7 R1 R5
       49 JUMPIFNOTEQKNIL                  R7 ; [+3]
       51 LOADB                            R7 0
       52 RETURN                           R7 1
       53 FORGLOOP                         R2 1 ; [-6]
       55 LOADB                            R2 1
       56 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Hooks"]
       30 GETTABLEKS                       R4 R4 K11 ["useTokens"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R6 R6 K12 ["AdaptiveAnimationTools"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K13 ["Src"]
       43 GETTABLEKS                       R7 R7 K14 ["Types"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R0 K13 ["Src"]
       50 GETTABLEKS                       R8 R8 K15 ["Components"]
       52 GETTABLEKS                       R8 R8 K16 ["Adornments"]
       54 GETTABLEKS                       R8 R8 K17 ["computeJointVisualState"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K13 ["Src"]
       61 GETTABLEKS                       R9 R9 K15 ["Components"]
       63 GETTABLEKS                       R9 R9 K16 ["Adornments"]
       65 GETTABLEKS                       R9 R9 K18 ["AxisCircleAdornment"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K5 [require]
       70 GETTABLEKS                       R10 R0 K13 ["Src"]
       72 GETTABLEKS                       R10 R10 K15 ["Components"]
       74 GETTABLEKS                       R10 R10 K16 ["Adornments"]
       76 GETTABLEKS                       R10 R10 K19 ["getAdornee"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R11 R0 K13 ["Src"]
       83 GETTABLEKS                       R11 R11 K20 ["Flags"]
       85 GETTABLEKS                       R11 R11 K21 ["getFFlagAdaptiveAnimationHandRig"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R12 R0 K13 ["Src"]
       92 GETTABLEKS                       R12 R12 K20 ["Flags"]
       94 GETTABLEKS                       R12 R12 K22 ["getFFlagAdaptiveAnimationHandRigQoL"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K5 [require]
       99 GETTABLEKS                       R13 R0 K13 ["Src"]
      101 GETTABLEKS                       R13 R13 K23 ["Resources"]
      103 GETTABLEKS                       R13 R13 K24 ["Constants"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K26 [game]
      108 LOADK                            R15 K27 ["RunService"]
      109 NAMECALL                         R13 R13 K28 ["GetService"]
      111 CALL                             R13 2 1
      112 DUPCLOSURE                       R14 K29 [PROTO_0]
      113 DUPCLOSURE                       R15 K30 [PROTO_1]
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R5
      116 DUPCLOSURE                       R16 K31 [PROTO_2]
      117 DUPCLOSURE                       R17 K32 [PROTO_16]
      118 CAPTURE                          VAL R1
      119 CAPTURE                          VAL R14
      120 CAPTURE                          VAL R5
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R12
      124 DUPCLOSURE                       R18 K33 [PROTO_32]
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R9
      131 CAPTURE                          VAL R15
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R17
      136 CAPTURE                          VAL R2
      137 DUPCLOSURE                       R19 K34 [PROTO_33]
      138 DUPTABLE                         R20 K39 [{["childJoints"] = True, ["mappedLookup"] = True, ["otherMappedLookup"] = True}]
      139 DUPTABLE                         R21 K42 [{["globalHoveredJointName"] = True, ["mannequinHoveredJointName"] = True}]
      140 DUPCLOSURE                       R22 K43 [PROTO_34]
      141 CAPTURE                          VAL R20
      142 CAPTURE                          VAL R19
      143 CAPTURE                          VAL R21
      144 GETTABLEKS                       R23 R1 K44 ["memo"]
      146 MOVE                             R24 R18
      147 MOVE                             R25 R22
      148 CALL                             R23 2 1
      149 MOVE                             R25 R10
      150 CALL                             R25 0 1
      151 JUMPIFNOT                        R25 ; [+2]
      152 MOVE                             R24 R23
      153 JUMP                             ; [+1]
      154 MOVE                             R24 R18
      155 DUPTABLE                         R25 K47 [{"Component", "_test"}]
      156 SETTABLEKS                       R24 R25 K45 ["Component"]
      158 DUPTABLE                         R26 K53 [{"shallowTableEqual", "ConnectionGeom", "memoComparator", "JointAdornmentComposite", "isTriangleFrontFacing"}]
      159 SETTABLEKS                       R19 R26 K48 ["shallowTableEqual"]
      161 SETTABLEKS                       R17 R26 K49 ["ConnectionGeom"]
      163 SETTABLEKS                       R22 R26 K50 ["memoComparator"]
      165 SETTABLEKS                       R18 R26 K51 ["JointAdornmentComposite"]
      167 SETTABLEKS                       R16 R26 K52 ["isTriangleFrontFacing"]
      169 SETTABLEKS                       R26 R25 K46 ["_test"]
      171 RETURN                           R25 1
