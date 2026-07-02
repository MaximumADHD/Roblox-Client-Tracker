PROTO_0:
        0 JUMPIFNOT                        R3 ; [+9]
        1 GETTABLEKS                       R4 R0 K0 ["TranslateFromTo"]
        3 GETTABLEKS                       R5 R0 K1 ["CFrame"]
        5 GETTABLEKS                       R7 R0 K1 ["CFrame"]
        7 ADD                              R6 R7 R1
        8 CALL                             R4 2 0
        9 JUMP                             ; [+5]
       10 GETTABLEKS                       R5 R0 K1 ["CFrame"]
       12 ADD                              R4 R5 R1
       13 SETTABLEKS                       R4 R0 K1 ["CFrame"]
       15 ADD                              R4 R2 R1
       16 RETURN                           R4 1

PROTO_1:
        0 FASTCALL1                        MATH_ABS R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K2 [math.abs]
        4 CALL                             R6 1 1
        5 LOADK                            R7 K3 [0.0001]
        6 JUMPIFNOTLT                      R6 R7 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K4 ["itemsHasItemNotInList"]
       12 NAMECALL                         R7 R0 K5 ["GetTouchingParts"]
       14 CALL                             R7 1 1
       15 MOVE                             R8 R1
       16 CALL                             R6 2 1
       17 JUMPIF                           R6 ; [+34]
       18 GETTABLEKS                       R6 R0 K6 ["CFrame"]
       20 GETTABLEKS                       R5 R6 K7 ["p"]
       22 GETTABLEKS                       R7 R0 K6 ["CFrame"]
       24 GETTABLEKS                       R7 R7 K7 ["p"]
       26 GETTABLEKS                       R9 R2 K8 ["Unit"]
       28 MUL                              R8 R9 R3
       29 ADD                              R6 R7 R8
       30 JUMPIFNOTEQ                      R6 R4 ; [+10]
       32 GETUPVAL                         R6 1
       33 MOVE                             R7 R0
       34 MOVE                             R8 R1
       35 MOVE                             R9 R2
       36 MULK                             R10 R3 K9 [0.5]
       37 MOVE                             R11 R4
       38 MOVE                             R12 R5
       39 CALL                             R6 6 0
       40 RETURN                           R0 0
       41 GETTABLEKS                       R7 R2 K8 ["Unit"]
       43 MUL                              R6 R7 R3
       44 GETTABLEKS                       R8 R0 K6 ["CFrame"]
       46 ADD                              R7 R8 R6
       47 SETTABLEKS                       R7 R0 K6 ["CFrame"]
       49 LOADK                            R8 K10 [{0, 0, 0}]
       50 ADD                              R7 R8 R6
       51 JUMPBACK                         ; [-43]
       52 GETGLOBAL                        R6 K11 ["searchOut"]
       54 MOVE                             R7 R0
       55 MOVE                             R8 R1
       56 MOVE                             R9 R2
       57 MULK                             R10 R3 K12 [-0.5]
       58 MOVE                             R11 R4
       59 MOVE                             R12 R5
       60 CALL                             R6 6 0
       61 RETURN                           R0 0

PROTO_2:
        0 FASTCALL1                        MATH_ABS R3 ; [+3]
        1 MOVE                             R7 R3
        2 GETIMPORT                        R6 K2 [math.abs]
        4 CALL                             R6 1 1
        5 LOADK                            R7 K3 [0.0001]
        6 JUMPIFNOTLT                      R6 R7 ; [+12]
        8 GETTABLEKS                       R8 R0 K4 ["CFrame"]
       10 GETTABLEKS                       R9 R0 K4 ["CFrame"]
       12 GETTABLEKS                       R9 R9 K5 ["p"]
       14 SUB                              R7 R8 R9
       15 ADD                              R6 R7 R5
       16 SETTABLEKS                       R6 R0 K4 ["CFrame"]
       18 RETURN                           R0 0
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R6 R6 K6 ["itemsHasItemNotInList"]
       22 NAMECALL                         R7 R0 K7 ["GetTouchingParts"]
       24 CALL                             R7 1 1
       25 MOVE                             R8 R1
       26 CALL                             R6 2 1
       27 JUMPIFNOT                        R6 ; [+36]
       28 GETTABLEKS                       R6 R0 K4 ["CFrame"]
       30 GETTABLEKS                       R4 R6 K5 ["p"]
       32 JUMPIFNOT                        R5 ; [+20]
       33 GETTABLEKS                       R7 R0 K4 ["CFrame"]
       35 GETTABLEKS                       R7 R7 K5 ["p"]
       37 GETTABLEKS                       R9 R2 K8 ["Unit"]
       39 MUL                              R8 R9 R3
       40 ADD                              R6 R7 R8
       41 JUMPIFNOTEQ                      R6 R5 ; [+11]
       43 GETGLOBAL                        R6 K9 ["searchOut"]
       45 MOVE                             R7 R0
       46 MOVE                             R8 R1
       47 MOVE                             R9 R2
       48 MULK                             R10 R3 K10 [0.5]
       49 MOVE                             R11 R4
       50 MOVE                             R12 R5
       51 CALL                             R6 6 0
       52 RETURN                           R0 0
       53 GETTABLEKS                       R7 R2 K8 ["Unit"]
       55 MUL                              R6 R7 R3
       56 GETTABLEKS                       R8 R0 K4 ["CFrame"]
       58 ADD                              R7 R8 R6
       59 SETTABLEKS                       R7 R0 K4 ["CFrame"]
       61 LOADK                            R8 K11 [{0, 0, 0}]
       62 ADD                              R7 R8 R6
       63 JUMPBACK                         ; [-45]
       64 GETUPVAL                         R6 1
       65 MOVE                             R7 R0
       66 MOVE                             R8 R1
       67 MOVE                             R9 R2
       68 MULK                             R10 R3 K12 [-0.5]
       69 MOVE                             R11 R4
       70 MOVE                             R12 R5
       71 CALL                             R6 6 0
       72 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["CFrame"]
        2 GETTABLEKS                       R4 R1 K1 ["Origin"]
        4 NAMECALL                         R2 R2 K2 ["pointToObjectSpace"]
        6 CALL                             R2 2 1
        7 GETTABLEKS                       R4 R0 K0 ["CFrame"]
        9 GETTABLEKS                       R7 R1 K1 ["Origin"]
       11 GETTABLEKS                       R8 R1 K3 ["Direction"]
       13 ADD                              R6 R7 R8
       14 NAMECALL                         R4 R4 K2 ["pointToObjectSpace"]
       16 CALL                             R4 2 1
       17 SUB                              R3 R4 R2
       18 GETTABLEKS                       R3 R3 K4 ["Unit"]
       20 GETTABLEKS                       R5 R0 K6 ["Size"]
       22 DIVK                             R4 R5 K5 [2]
       23 GETTABLEKS                       R8 R3 K7 ["X"]
       25 FASTCALL1                        MATH_ABS R8 ; [+2]
       26 GETIMPORT                        R7 K10 [math.abs]
       28 CALL                             R7 1 1
       29 GETTABLEKS                       R9 R3 K11 ["Y"]
       31 FASTCALL1                        MATH_ABS R9 ; [+2]
       32 GETIMPORT                        R8 K10 [math.abs]
       34 CALL                             R8 1 1
       35 GETTABLEKS                       R10 R3 K12 ["Z"]
       37 FASTCALL1                        MATH_ABS R10 ; [+2]
       38 GETIMPORT                        R9 K10 [math.abs]
       40 CALL                             R9 1 1
       41 FASTCALL                         VECTOR ; [+2]
       42 GETIMPORT                        R6 K15 [Vector3.new]
       44 CALL                             R6 3 1
       45 DIV                              R5 R3 R6
       46 MUL                              R6 R5 R4
       47 MULK                             R8 R6 K5 [2]
       48 SUB                              R7 R8 R2
       49 GETTABLEKS                       R7 R7 K16 ["Magnitude"]
       51 GETTABLEKS                       R8 R2 K16 ["Magnitude"]
       53 JUMPIFNOTLT                      R7 R8 ; [+3]
       55 LOADNIL                          R7
       56 RETURN                           R7 1
       57 GETTABLEKS                       R11 R6 K7 ["X"]
       59 GETTABLEKS                       R12 R2 K7 ["X"]
       61 SUB                              R10 R11 R12
       62 GETTABLEKS                       R11 R3 K7 ["X"]
       64 DIV                              R9 R10 R11
       65 GETTABLEKS                       R10 R3 K11 ["Y"]
       67 MUL                              R8 R9 R10
       68 GETTABLEKS                       R9 R2 K11 ["Y"]
       70 ADD                              R7 R8 R9
       71 GETTABLEKS                       R12 R6 K7 ["X"]
       73 GETTABLEKS                       R13 R2 K7 ["X"]
       75 SUB                              R11 R12 R13
       76 GETTABLEKS                       R12 R3 K7 ["X"]
       78 DIV                              R10 R11 R12
       79 GETTABLEKS                       R11 R3 K12 ["Z"]
       81 MUL                              R9 R10 R11
       82 GETTABLEKS                       R10 R2 K12 ["Z"]
       84 ADD                              R8 R9 R10
       85 GETTABLEKS                       R10 R6 K7 ["X"]
       87 FASTCALL3                        VECTOR R10 R7 R8
       89 MOVE                             R11 R7
       90 MOVE                             R12 R8
       91 GETIMPORT                        R9 K15 [Vector3.new]
       93 CALL                             R9 3 1
       94 GETTABLEKS                       R14 R6 K11 ["Y"]
       96 GETTABLEKS                       R15 R2 K11 ["Y"]
       98 SUB                              R13 R14 R15
       99 GETTABLEKS                       R14 R3 K11 ["Y"]
      101 DIV                              R12 R13 R14
      102 GETTABLEKS                       R13 R3 K7 ["X"]
      104 MUL                              R11 R12 R13
      105 GETTABLEKS                       R12 R2 K7 ["X"]
      107 ADD                              R10 R11 R12
      108 GETTABLEKS                       R14 R6 K11 ["Y"]
      110 GETTABLEKS                       R15 R2 K11 ["Y"]
      112 SUB                              R13 R14 R15
      113 GETTABLEKS                       R14 R3 K11 ["Y"]
      115 DIV                              R12 R13 R14
      116 GETTABLEKS                       R13 R3 K12 ["Z"]
      118 MUL                              R11 R12 R13
      119 GETTABLEKS                       R12 R2 K12 ["Z"]
      121 ADD                              R8 R11 R12
      122 GETTABLEKS                       R13 R6 K11 ["Y"]
      124 FASTCALL3                        VECTOR R10 R13 R8
      126 MOVE                             R12 R10
      127 MOVE                             R14 R8
      128 GETIMPORT                        R11 K15 [Vector3.new]
      130 CALL                             R11 3 1
      131 GETTABLEKS                       R15 R6 K12 ["Z"]
      133 GETTABLEKS                       R16 R2 K12 ["Z"]
      135 SUB                              R14 R15 R16
      136 GETTABLEKS                       R15 R3 K12 ["Z"]
      138 DIV                              R13 R14 R15
      139 GETTABLEKS                       R14 R3 K7 ["X"]
      141 MUL                              R12 R13 R14
      142 GETTABLEKS                       R13 R2 K7 ["X"]
      144 ADD                              R10 R12 R13
      145 GETTABLEKS                       R15 R6 K12 ["Z"]
      147 GETTABLEKS                       R16 R2 K12 ["Z"]
      149 SUB                              R14 R15 R16
      150 GETTABLEKS                       R15 R3 K12 ["Z"]
      152 DIV                              R13 R14 R15
      153 GETTABLEKS                       R14 R3 K11 ["Y"]
      155 MUL                              R12 R13 R14
      156 GETTABLEKS                       R13 R2 K11 ["Y"]
      158 ADD                              R7 R12 R13
      159 GETTABLEKS                       R15 R6 K12 ["Z"]
      161 FASTCALL3                        VECTOR R10 R7 R15
      163 MOVE                             R13 R10
      164 MOVE                             R14 R7
      165 GETIMPORT                        R12 K15 [Vector3.new]
      167 CALL                             R12 3 1
      168 GETTABLEKS                       R14 R9 K11 ["Y"]
      170 GETTABLEKS                       R15 R4 K11 ["Y"]
      172 JUMPIFNOTLE                      R14 R15 ; [+25]
      174 GETTABLEKS                       R14 R9 K11 ["Y"]
      176 GETTABLEKS                       R16 R4 K11 ["Y"]
      178 MINUS                            R15 R16
      179 JUMPIFNOTLE                      R15 R14 ; [+18]
      181 GETTABLEKS                       R14 R9 K12 ["Z"]
      183 GETTABLEKS                       R15 R4 K12 ["Z"]
      185 JUMPIFNOTLE                      R14 R15 ; [+12]
      187 GETTABLEKS                       R14 R9 K12 ["Z"]
      189 GETTABLEKS                       R16 R4 K12 ["Z"]
      191 MINUS                            R15 R16
      192 JUMPIFNOTLE                      R15 R14 ; [+5]
      194 SUB                              R13 R9 R2
      195 GETTABLEKS                       R13 R13 K16 ["Magnitude"]
      197 JUMPIF                           R13 ; [+1]
      198 LOADN                            R13 10000
      199 GETTABLEKS                       R15 R11 K7 ["X"]
      201 GETTABLEKS                       R16 R4 K7 ["X"]
      203 JUMPIFNOTLE                      R15 R16 ; [+25]
      205 GETTABLEKS                       R15 R11 K7 ["X"]
      207 GETTABLEKS                       R17 R4 K7 ["X"]
      209 MINUS                            R16 R17
      210 JUMPIFNOTLE                      R16 R15 ; [+18]
      212 GETTABLEKS                       R15 R11 K12 ["Z"]
      214 GETTABLEKS                       R16 R4 K12 ["Z"]
      216 JUMPIFNOTLE                      R15 R16 ; [+12]
      218 GETTABLEKS                       R15 R11 K12 ["Z"]
      220 GETTABLEKS                       R17 R4 K12 ["Z"]
      222 MINUS                            R16 R17
      223 JUMPIFNOTLE                      R16 R15 ; [+5]
      225 SUB                              R14 R11 R2
      226 GETTABLEKS                       R14 R14 K16 ["Magnitude"]
      228 JUMPIF                           R14 ; [+1]
      229 LOADN                            R14 10000
      230 GETTABLEKS                       R16 R12 K7 ["X"]
      232 GETTABLEKS                       R17 R4 K7 ["X"]
      234 JUMPIFNOTLE                      R16 R17 ; [+25]
      236 GETTABLEKS                       R16 R12 K7 ["X"]
      238 GETTABLEKS                       R18 R4 K7 ["X"]
      240 MINUS                            R17 R18
      241 JUMPIFNOTLE                      R17 R16 ; [+18]
      243 GETTABLEKS                       R16 R12 K11 ["Y"]
      245 GETTABLEKS                       R17 R4 K11 ["Y"]
      247 JUMPIFNOTLE                      R16 R17 ; [+12]
      249 GETTABLEKS                       R16 R12 K11 ["Y"]
      251 GETTABLEKS                       R18 R4 K11 ["Y"]
      253 MINUS                            R17 R18
      254 JUMPIFNOTLE                      R17 R16 ; [+5]
      256 SUB                              R15 R12 R2
      257 GETTABLEKS                       R15 R15 K16 ["Magnitude"]
      259 JUMPIF                           R15 ; [+1]
      260 LOADN                            R15 10000
      261 GETUPVAL                         R16 0
      262 GETTABLEKS                       R16 R16 K17 ["min"]
      264 MOVE                             R17 R13
      265 MOVE                             R18 R14
      266 MOVE                             R19 R15
      267 CALL                             R16 3 1
      268 JUMPIFNOTEQKN                    R16 K18 [10000] ; [+3]
      270 LOADNIL                          R17
      271 RETURN                           R17 1
      272 JUMPIFNOTEQ                      R16 R13 ; [+8]
      274 GETTABLEKS                       R17 R0 K0 ["CFrame"]
      276 MOVE                             R19 R9
      277 NAMECALL                         R17 R17 K19 ["pointToWorldSpace"]
      279 CALL                             R17 2 -1
      280 RETURN                           R17 -1
      281 JUMPIFNOTEQ                      R16 R14 ; [+8]
      283 GETTABLEKS                       R17 R0 K0 ["CFrame"]
      285 MOVE                             R19 R11
      286 NAMECALL                         R17 R17 K19 ["pointToWorldSpace"]
      288 CALL                             R17 2 -1
      289 RETURN                           R17 -1
      290 GETTABLEKS                       R17 R0 K0 ["CFrame"]
      292 MOVE                             R19 R12
      293 NAMECALL                         R17 R17 K19 ["pointToWorldSpace"]
      295 CALL                             R17 2 -1
      296 RETURN                           R17 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["filterOutItems"]
        3 MOVE                             R5 R2
        4 NAMECALL                         R6 R0 K1 ["GetTouchingParts"]
        6 CALL                             R6 1 -1
        7 CALL                             R4 -1 1
        8 GETIMPORT                        R5 K4 [Ray.new]
       10 GETTABLEKS                       R6 R0 K5 ["CFrame"]
       12 GETTABLEKS                       R6 R6 K6 ["p"]
       14 GETTABLEKS                       R7 R3 K7 ["Unit"]
       16 CALL                             R5 2 1
       17 LOADNIL                          R6
       18 LOADN                            R7 0
       19 GETIMPORT                        R8 K9 [ipairs]
       21 MOVE                             R9 R4
       22 CALL                             R8 1 3
       23 FORGPREP_INEXT                   R8
       24 GETUPVAL                         R13 1
       25 MOVE                             R14 R12
       26 MOVE                             R15 R5
       27 CALL                             R13 2 1
       28 JUMPIFNOT                        R13 ; [+11]
       29 GETTABLEKS                       R15 R0 K5 ["CFrame"]
       31 GETTABLEKS                       R15 R15 K6 ["p"]
       33 SUB                              R14 R13 R15
       34 GETTABLEKS                       R14 R14 K10 ["Magnitude"]
       36 JUMPIFNOTLT                      R7 R14 ; [+3]
       38 MOVE                             R7 R14
       39 MOVE                             R6 R13
       40 FORGLOOP                         R8 2 [inext] ; [-17]
       42 JUMPIFNOT                        R6 ; [+10]
       43 GETTABLEKS                       R10 R0 K5 ["CFrame"]
       45 GETTABLEKS                       R11 R0 K5 ["CFrame"]
       47 GETTABLEKS                       R11 R11 K6 ["p"]
       49 SUB                              R9 R10 R11
       50 ADD                              R8 R9 R6
       51 SETTABLEKS                       R8 R0 K5 ["CFrame"]
       53 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R2 K0 ["magnitude"]
        2 JUMPIFNOTEQKN                    R3 K1 [0] ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["filterOutItems"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R5 R0 K3 ["GetTouchingParts"]
       11 CALL                             R5 1 -1
       12 CALL                             R3 -1 1
       13 LENGTH                           R4 R3
       14 LOADN                            R5 0
       15 JUMPIFNOTLT                      R5 R4 ; [+73]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K4 ["listDoesNotContainType"]
       20 MOVE                             R5 R3
       21 LOADK                            R6 K5 ["Terrain"]
       22 CALL                             R4 2 1
       23 JUMPIFNOT                        R4 ; [+65]
       24 LOADB                            R4 1
       25 JUMPIFNOT                        R4 ; [+32]
       26 GETUPVAL                         R5 1
       27 MOVE                             R6 R0
       28 LOADK                            R7 K6 [0.002]
       29 MOVE                             R8 R1
       30 MOVE                             R9 R2
       31 CALL                             R5 4 0
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R5 R5 K2 ["filterOutItems"]
       35 MOVE                             R6 R3
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K2 ["filterOutItems"]
       39 MOVE                             R8 R1
       40 NAMECALL                         R9 R0 K3 ["GetTouchingParts"]
       42 CALL                             R9 1 -1
       43 CALL                             R7 -1 -1
       44 CALL                             R5 -1 1
       45 LENGTH                           R6 R5
       46 JUMPIFNOTEQKN                    R6 K1 [0] ; [+3]
       48 LOADB                            R4 0
       49 JUMP                             ; [+7]
       50 GETUPVAL                         R6 0
       51 GETTABLEKS                       R6 R6 K7 ["combineLists"]
       53 MOVE                             R7 R3
       54 MOVE                             R8 R5
       55 CALL                             R6 2 1
       56 MOVE                             R3 R6
       57 JUMPBACK                         ; [-33]
       58 GETGLOBAL                        R5 K8 ["searchOut"]
       60 MOVE                             R6 R0
       61 MOVE                             R7 R1
       62 MULK                             R8 R2 K9 [-1]
       63 GETTABLEKS                       R12 R0 K11 ["Size"]
       65 GETTABLEKS                       R12 R12 K12 ["X"]
       67 DIVK                             R11 R12 K10 [2]
       68 GETTABLEKS                       R13 R0 K11 ["Size"]
       70 GETTABLEKS                       R13 R13 K13 ["Y"]
       72 DIVK                             R12 R13 K10 [2]
       73 GETTABLEKS                       R14 R0 K11 ["Size"]
       75 GETTABLEKS                       R14 R14 K14 ["Z"]
       77 DIVK                             R13 R14 K10 [2]
       78 FASTCALL                         MATH_MIN ; [+2]
       79 GETIMPORT                        R10 K17 [math.min]
       81 CALL                             R10 3 1
       82 SUBRK                            R9 K1 [0] R10
       83 GETTABLEKS                       R10 R0 K18 ["CFrame"]
       85 GETTABLEKS                       R10 R10 K19 ["p"]
       87 LOADNIL                          R11
       88 CALL                             R5 6 0
       89 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R8 13
        1 JUMPIFNOTLT                      R8 R6 ; [+2]
        3 RETURN                           R0 0
        4 LOADK                            R8 K0 [0.0002]
        5 JUMPIFNOTLE                      R4 R8 ; [+2]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R9 R3 K1 ["Unit"]
       10 MUL                              R8 R9 R4
       11 MOVE                             R9 R2
       12 JUMPIFNOT                        R7 ; [+9]
       13 GETTABLEKS                       R10 R0 K2 ["TranslateFromTo"]
       15 GETTABLEKS                       R11 R0 K3 ["CFrame"]
       17 GETTABLEKS                       R13 R0 K3 ["CFrame"]
       19 ADD                              R12 R13 R8
       20 CALL                             R10 2 0
       21 JUMP                             ; [+5]
       22 GETTABLEKS                       R11 R0 K3 ["CFrame"]
       24 ADD                              R10 R11 R8
       25 SETTABLEKS                       R10 R0 K3 ["CFrame"]
       27 ADD                              R2 R9 R8
       28 JUMPIFEQ                         R2 R2 ; [+2]
       30 RETURN                           R0 0
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K4 ["itemsHasItemNotInList"]
       34 NAMECALL                         R9 R0 K5 ["GetTouchingParts"]
       36 CALL                             R9 1 1
       37 MOVE                             R10 R1
       38 CALL                             R8 2 1
       39 JUMPIFNOT                        R8 ; [+32]
       40 GETTABLEKS                       R9 R3 K1 ["Unit"]
       42 MINUS                            R10 R4
       43 MUL                              R8 R9 R10
       44 MOVE                             R9 R2
       45 JUMPIFNOT                        R7 ; [+9]
       46 GETTABLEKS                       R10 R0 K2 ["TranslateFromTo"]
       48 GETTABLEKS                       R11 R0 K3 ["CFrame"]
       50 GETTABLEKS                       R13 R0 K3 ["CFrame"]
       52 ADD                              R12 R13 R8
       53 CALL                             R10 2 0
       54 JUMP                             ; [+5]
       55 GETTABLEKS                       R11 R0 K3 ["CFrame"]
       57 ADD                              R10 R11 R8
       58 SETTABLEKS                       R10 R0 K3 ["CFrame"]
       60 ADD                              R2 R9 R8
       61 GETUPVAL                         R8 1
       62 MOVE                             R9 R0
       63 MOVE                             R10 R1
       64 MOVE                             R11 R2
       65 MOVE                             R12 R3
       66 MULK                             R13 R4 K6 [0.5]
       67 MOVE                             R14 R5
       68 ADDK                             R15 R6 K7 [1]
       69 MOVE                             R16 R7
       70 CALL                             R8 8 0
       71 RETURN                           R0 0
       72 GETUPVAL                         R8 1
       73 MOVE                             R9 R0
       74 MOVE                             R10 R1
       75 MOVE                             R11 R2
       76 MOVE                             R12 R3
       77 MOVE                             R13 R4
       78 MOVE                             R14 R5
       79 ADDK                             R15 R6 K7 [1]
       80 MOVE                             R16 R7
       81 CALL                             R8 8 0
       82 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R6 R2 K0 ["Magnitude"]
        2 LOADN                            R7 1000
        3 JUMPIFNOTLT                      R7 R6 ; [+2]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R6 R3 K1 ["Unit"]
        8 MOVE                             R7 R2
        9 JUMPIFNOT                        R5 ; [+9]
       10 GETTABLEKS                       R8 R0 K2 ["TranslateFromTo"]
       12 GETTABLEKS                       R9 R0 K3 ["CFrame"]
       14 GETTABLEKS                       R11 R0 K3 ["CFrame"]
       16 ADD                              R10 R11 R6
       17 CALL                             R8 2 0
       18 JUMP                             ; [+5]
       19 GETTABLEKS                       R9 R0 K3 ["CFrame"]
       21 ADD                              R8 R9 R6
       22 SETTABLEKS                       R8 R0 K3 ["CFrame"]
       24 ADD                              R2 R7 R6
       25 JUMPIFEQ                         R2 R2 ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K4 ["itemsHasItemNotInList"]
       31 NAMECALL                         R7 R0 K5 ["GetTouchingParts"]
       33 CALL                             R7 1 1
       34 MOVE                             R8 R1
       35 CALL                             R6 2 1
       36 JUMPIFNOT                        R6 ; [+9]
       37 GETUPVAL                         R6 1
       38 MOVE                             R7 R0
       39 MOVE                             R8 R1
       40 MOVE                             R9 R2
       41 MOVE                             R10 R3
       42 MOVE                             R11 R4
       43 MOVE                             R12 R5
       44 CALL                             R6 6 0
       45 RETURN                           R0 0
       46 GETUPVAL                         R6 2
       47 MOVE                             R7 R0
       48 MOVE                             R8 R1
       49 MOVE                             R9 R2
       50 MULK                             R10 R3 K6 [-1]
       51 LOADK                            R11 K7 [0.5]
       52 MOVE                             R12 R4
       53 LOADN                            R13 0
       54 MOVE                             R14 R5
       55 CALL                             R6 8 0
       56 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["itemsHasItemNotInList"]
        3 NAMECALL                         R6 R0 K1 ["GetTouchingParts"]
        5 CALL                             R6 1 1
        6 MOVE                             R7 R1
        7 CALL                             R5 2 1
        8 JUMPIFNOT                        R5 ; [+8]
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R0
       11 MOVE                             R7 R1
       12 LOADK                            R8 K2 [{0, 0, 0}]
       13 MULK                             R9 R2 K3 [-1]
       14 MOVE                             R10 R3
       15 MOVE                             R11 R4
       16 CALL                             R5 6 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R7 R2 K0 ["Magnitude"]
        2 LOADN                            R8 1000
        3 JUMPIFNOTLT                      R8 R7 ; [+3]
        5 LOADB                            R8 0
        6 RETURN                           R8 1
        7 GETTABLEKS                       R8 R3 K1 ["Unit"]
        9 MOVE                             R9 R2
       10 JUMPIFNOT                        R6 ; [+9]
       11 GETTABLEKS                       R10 R0 K2 ["TranslateFromTo"]
       13 GETTABLEKS                       R11 R0 K3 ["CFrame"]
       15 GETTABLEKS                       R13 R0 K3 ["CFrame"]
       17 ADD                              R12 R13 R8
       18 CALL                             R10 2 0
       19 JUMP                             ; [+5]
       20 GETTABLEKS                       R11 R0 K3 ["CFrame"]
       22 ADD                              R10 R11 R8
       23 SETTABLEKS                       R10 R0 K3 ["CFrame"]
       25 ADD                              R2 R9 R8
       26 JUMPIFEQ                         R2 R2 ; [+3]
       28 LOADB                            R8 0
       29 RETURN                           R8 1
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K4 ["itemsHasItemNotInList"]
       33 NAMECALL                         R9 R0 K5 ["GetTouchingParts"]
       35 CALL                             R9 1 1
       36 MOVE                             R10 R1
       37 CALL                             R8 2 1
       38 JUMPIFNOT                        R8 ; [+19]
       39 GETUPVAL                         R8 0
       40 GETTABLEKS                       R8 R8 K4 ["itemsHasItemNotInList"]
       42 NAMECALL                         R9 R0 K5 ["GetTouchingParts"]
       44 CALL                             R9 1 1
       45 MOVE                             R10 R1
       46 CALL                             R8 2 1
       47 JUMPIFNOT                        R8 ; [+8]
       48 GETUPVAL                         R8 1
       49 MOVE                             R9 R0
       50 MOVE                             R10 R1
       51 LOADK                            R11 K6 [{0, 0, 0}]
       52 MULK                             R12 R3 K7 [-1]
       53 MOVE                             R13 R4
       54 MOVE                             R14 R6
       55 CALL                             R8 6 0
       56 LOADB                            R8 1
       57 RETURN                           R8 1
       58 ADDK                             R8 R7 K8 [1]
       59 JUMPIFNOTLT                      R5 R8 ; [+3]
       61 LOADB                            R8 0
       62 RETURN                           R8 1
       63 GETUPVAL                         R8 2
       64 MOVE                             R9 R0
       65 MOVE                             R10 R1
       66 MOVE                             R11 R2
       67 MOVE                             R12 R3
       68 MOVE                             R13 R4
       69 MOVE                             R14 R5
       70 MOVE                             R15 R6
       71 CALL                             R8 7 -1
       72 RETURN                           R8 -1

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["itemsHasItemNotInList"]
        3 NAMECALL                         R6 R0 K1 ["GetTouchingParts"]
        5 CALL                             R6 1 1
        6 MOVE                             R7 R1
        7 CALL                             R5 2 1
        8 JUMPIF                           R5 ; [+9]
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R0
       11 MOVE                             R7 R1
       12 LOADK                            R8 K2 [{0, 0, 0}]
       13 MOVE                             R9 R2
       14 MOVE                             R10 R3
       15 MOVE                             R11 R4
       16 CALL                             R5 6 -1
       17 RETURN                           R5 -1
       18 LOADB                            R5 0
       19 RETURN                           R5 1

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["itemsHasItemNotInList"]
        3 NAMECALL                         R5 R0 K1 ["GetTouchingParts"]
        5 CALL                             R5 1 1
        6 MOVE                             R6 R1
        7 CALL                             R4 2 1
        8 JUMPIF                           R4 ; [+10]
        9 GETUPVAL                         R4 1
       10 MOVE                             R5 R0
       11 MOVE                             R6 R1
       12 LOADK                            R7 K2 [{0, 0, 0}]
       13 MOVE                             R8 R2
       14 LOADK                            R9 K3 [0.0002]
       15 MOVE                             R10 R3
       16 LOADB                            R11 1
       17 CALL                             R4 7 -1
       18 RETURN                           R4 -1
       19 LOADB                            R4 0
       20 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Utility"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K1 [require]
       12 GETIMPORT                        R2 K3 [script]
       14 GETTABLEKS                       R2 R2 K4 ["Parent"]
       16 GETTABLEKS                       R2 R2 K6 ["List"]
       18 CALL                             R1 1 1
       19 DUPCLOSURE                       R2 K7 [PROTO_0]
       20 DUPCLOSURE                       R3 K8 [PROTO_1]
       21 CAPTURE                          VAL R1
       22 CAPTURE                          VAL R3
       23 DUPCLOSURE                       R4 K9 [PROTO_2]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 SETGLOBAL                        R4 K10 ["searchOut"]
       28 DUPCLOSURE                       R4 K11 [PROTO_3]
       29 CAPTURE                          VAL R0
       30 DUPCLOSURE                       R5 K12 [PROTO_4]
       31 CAPTURE                          VAL R1
       32 CAPTURE                          VAL R4
       33 DUPCLOSURE                       R6 K13 [PROTO_5]
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R5
       36 DUPCLOSURE                       R7 K14 [PROTO_6]
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R7
       39 DUPCLOSURE                       R8 K15 [PROTO_7]
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R7
       43 DUPCLOSURE                       R9 K16 [PROTO_8]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R8
       46 DUPCLOSURE                       R10 K17 [PROTO_9]
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R10
       50 DUPCLOSURE                       R11 K18 [PROTO_10]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R10
       53 DUPCLOSURE                       R12 K19 [PROTO_11]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R10
       56 NEWTABLE                         R13 4 0
       58 SETTABLEKS                       R6 R13 K20 ["SafeMove"]
       60 SETTABLEKS                       R2 R13 K21 ["MovePrimitivesDelta"]
       62 SETTABLEKS                       R11 R13 K22 ["moveUntilCollide"]
       64 SETTABLEKS                       R12 R13 K23 ["moveUntilCollideMetapart"]
       66 RETURN                           R13 1
