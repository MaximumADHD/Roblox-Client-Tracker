PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Payload"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["BrushSettings"]
        5 GETTABLE                         R2 R3 R4
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["BrushSize"]
        9 GETTABLE                         R3 R2 R4
       10 GETTABLEKS                       R4 R3 K3 ["Height"]
       12 GETTABLEKS                       R5 R3 K4 ["Size"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K5 ["BrushShape"]
       17 GETTABLE                         R6 R2 R7
       18 GETUPVAL                         R8 1
       19 GETTABLEKS                       R8 R8 K6 ["State"]
       21 GETTABLE                         R7 R2 R8
       22 GETUPVAL                         R10 2
       23 GETTABLEKS                       R10 R10 K7 ["Sphere"]
       25 JUMPIFNOTEQ                      R6 R10 ; [+3]
       27 MOVE                             R9 R5
       28 JUMP                             ; [+1]
       29 MOVE                             R9 R4
       30 GETUPVAL                         R10 3
       31 MUL                              R8 R9 R10
       32 GETUPVAL                         R9 4
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R11 R11 K8 ["PivotPosition"]
       36 GETTABLE                         R10 R2 R11
       37 GETTABLEKS                       R11 R7 K9 ["Position"]
       39 MOVE                             R12 R8
       40 CALL                             R9 3 1
       41 DUPTABLE                         R10 K10 [{"Position"}]
       42 SETTABLEKS                       R9 R10 K9 ["Position"]
       44 SETTABLEKS                       R10 R0 K6 ["State"]
       46 RETURN                           R0 0

PROTO_1:
        0 LOADN                            R4 1
        1 LOADN                            R5 1
        2 GETUPVAL                         R6 0
        3 JUMPIFNOT                        R6 ; [+6]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R7 R1 K0 ["Magnitude"]
        7 GETUPVAL                         R8 2
        8 CALL                             R6 2 1
        9 MOVE                             R4 R6
       10 JUMPIFEQKN                       R2 K1 [0] ; [+4]
       12 LOADK                            R6 K2 [0.5]
       13 JUMPIFNOTLE                      R4 R6 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R6 0
       17 JUMPIFNOT                        R6 ; [+6]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R7 R1 K0 ["Magnitude"]
       21 GETUPVAL                         R8 2
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 LOADB                            R6 0
       25 GETUPVAL                         R8 4
       26 LENGTH                           R7 R8
       27 GETUPVAL                         R8 4
       28 LOADNIL                          R9
       29 LOADNIL                          R10
       30 FORGPREP                         R8
       31 ADD                              R13 R0 R12
       32 LOADB                            R14 0
       33 GETTABLEKS                       R15 R13 K3 ["X"]
       35 LOADN                            R16 0
       36 JUMPIFNOTLT                      R16 R15 ; [+10]
       38 GETTABLEKS                       R15 R13 K3 ["X"]
       40 GETUPVAL                         R16 5
       41 GETTABLEKS                       R16 R16 K3 ["X"]
       43 JUMPIFLE                         R15 R16 ; [+2]
       45 LOADB                            R14 0 +1
       46 LOADB                            R14 1
       47 LOADB                            R15 0
       48 GETTABLEKS                       R16 R13 K4 ["Y"]
       50 LOADN                            R17 0
       51 JUMPIFNOTLT                      R17 R16 ; [+10]
       53 GETTABLEKS                       R16 R13 K4 ["Y"]
       55 GETUPVAL                         R17 5
       56 GETTABLEKS                       R17 R17 K4 ["Y"]
       58 JUMPIFLE                         R16 R17 ; [+2]
       60 LOADB                            R15 0 +1
       61 LOADB                            R15 1
       62 LOADB                            R16 0
       63 GETTABLEKS                       R17 R13 K5 ["Z"]
       65 LOADN                            R18 0
       66 JUMPIFNOTLT                      R18 R17 ; [+10]
       68 GETTABLEKS                       R17 R13 K5 ["Z"]
       70 GETUPVAL                         R18 5
       71 GETTABLEKS                       R18 R18 K5 ["Z"]
       73 JUMPIFLE                         R17 R18 ; [+2]
       75 LOADB                            R16 0 +1
       76 LOADB                            R16 1
       77 JUMPIFNOT                        R14 ; [+33]
       78 JUMPIFNOT                        R15 ; [+32]
       79 JUMPIFNOT                        R16 ; [+31]
       80 GETUPVAL                         R20 6
       81 GETTABLEKS                       R21 R13 K3 ["X"]
       83 GETTABLE                         R19 R20 R21
       84 GETTABLEKS                       R20 R13 K4 ["Y"]
       86 GETTABLE                         R18 R19 R20
       87 GETTABLEKS                       R19 R13 K5 ["Z"]
       89 GETTABLE                         R17 R18 R19
       90 GETUPVAL                         R21 7
       91 GETTABLEKS                       R22 R13 K3 ["X"]
       93 GETTABLE                         R20 R21 R22
       94 GETTABLEKS                       R21 R13 K4 ["Y"]
       96 GETTABLE                         R19 R20 R21
       97 GETTABLEKS                       R20 R13 K5 ["Z"]
       99 GETTABLE                         R18 R19 R20
      100 GETUPVAL                         R19 8
      101 JUMPIFNOT                        R19 ; [+4]
      102 GETUPVAL                         R19 9
      103 JUMPIFNOTEQ                      R18 R19 ; [+2]
      105 LOADN                            R17 0
      106 LOADN                            R19 0
      107 JUMPIFNOTLE                      R17 R19 ; [+2]
      109 LOADB                            R6 1
      110 SUB                              R7 R7 R17
      111 FORGLOOP                         R8 2 ; [-81]
      113 LOADN                            R9 1
      114 JUMPIFLT                         R2 R9 ; [+2]
      116 JUMPIFNOT                        R6 ; [+9]
      117 GETUPVAL                         R14 4
      118 LENGTH                           R13 R14
      119 DIV                              R12 R7 R13
      120 GETUPVAL                         R13 10
      121 MUL                              R11 R12 R13
      122 MUL                              R10 R11 R4
      123 MUL                              R9 R10 R5
      124 SUB                              R8 R2 R9
      125 JUMP                             ; [+1]
      126 MOVE                             R8 R2
      127 FASTCALL2K                       MATH_MAX R8 K1 ; [+5]
      129 MOVE                             R10 R8
      130 LOADK                            R11 K1 [0]
      131 GETIMPORT                        R9 K8 [math.max]
      133 CALL                             R9 2 1
      134 MOVE                             R8 R9
      135 GETUPVAL                         R9 11
      136 GETTABLEKS                       R9 R9 K9 ["MinimumOccupancy"]
      138 JUMPIFNOTLE                      R8 R9 ; [+43]
      140 GETUPVAL                         R11 12
      141 GETTABLEKS                       R12 R0 K3 ["X"]
      143 GETTABLE                         R10 R11 R12
      144 GETTABLEKS                       R11 R0 K4 ["Y"]
      146 GETTABLE                         R9 R10 R11
      147 GETTABLEKS                       R10 R0 K5 ["Z"]
      149 LOADN                            R11 0
      150 SETTABLE                         R11 R9 R10
      151 GETUPVAL                         R11 13
      152 GETTABLEKS                       R12 R0 K3 ["X"]
      154 GETTABLE                         R10 R11 R12
      155 GETTABLEKS                       R11 R0 K4 ["Y"]
      157 GETTABLE                         R9 R10 R11
      158 GETTABLEKS                       R10 R0 K5 ["Z"]
      160 GETUPVAL                         R11 14
      161 SETTABLE                         R11 R9 R10
      162 GETUPVAL                         R9 15
      163 JUMPIF                           R9 ; [+49]
      164 GETTABLEKS                       R9 R1 K0 ["Magnitude"]
      166 GETUPVAL                         R10 16
      167 GETTABLEKS                       R10 R10 K10 ["NextMagnitude"]
      169 JUMPIFNOTLT                      R9 R10 ; [+43]
      171 GETUPVAL                         R9 16
      172 GETTABLEKS                       R10 R1 K0 ["Magnitude"]
      174 SETTABLEKS                       R10 R9 K10 ["NextMagnitude"]
      176 GETUPVAL                         R9 16
      177 GETUPVAL                         R11 17
      178 ADD                              R10 R1 R11
      179 SETTABLEKS                       R10 R9 K11 ["NextStartPosition"]
      181 RETURN                           R0 0
      182 JUMPIFEQ                         R8 R2 ; [+30]
      184 GETUPVAL                         R11 12
      185 GETTABLEKS                       R12 R0 K3 ["X"]
      187 GETTABLE                         R10 R11 R12
      188 GETTABLEKS                       R11 R0 K4 ["Y"]
      190 GETTABLE                         R9 R10 R11
      191 GETTABLEKS                       R10 R0 K5 ["Z"]
      193 SETTABLE                         R8 R9 R10
      194 GETUPVAL                         R9 15
      195 JUMPIF                           R9 ; [+17]
      196 GETTABLEKS                       R9 R1 K0 ["Magnitude"]
      198 GETUPVAL                         R10 16
      199 GETTABLEKS                       R10 R10 K10 ["NextMagnitude"]
      201 JUMPIFNOTLT                      R9 R10 ; [+11]
      203 GETUPVAL                         R9 16
      204 GETTABLEKS                       R10 R1 K0 ["Magnitude"]
      206 SETTABLEKS                       R10 R9 K10 ["NextMagnitude"]
      208 GETUPVAL                         R9 16
      209 GETUPVAL                         R11 17
      210 ADD                              R10 R1 R11
      211 SETTABLEKS                       R10 R9 K11 ["NextStartPosition"]
      213 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R4 1
        1 LOADN                            R5 1
        2 GETUPVAL                         R6 0
        3 JUMPIFNOT                        R6 ; [+6]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R7 R1 K0 ["Magnitude"]
        7 GETUPVAL                         R8 2
        8 CALL                             R6 2 1
        9 MOVE                             R4 R6
       10 JUMPIFEQKN                       R2 K1 [1] ; [+4]
       12 LOADK                            R6 K2 [0.5]
       13 JUMPIFNOTLT                      R4 R6 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R6 0
       17 JUMPIFNOT                        R6 ; [+6]
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R7 R1 K0 ["Magnitude"]
       21 GETUPVAL                         R8 2
       22 CALL                             R6 2 1
       23 MOVE                             R5 R6
       24 LOADB                            R6 0
       25 GETUPVAL                         R8 4
       26 LENGTH                           R7 R8
       27 LOADN                            R8 0
       28 GETUPVAL                         R9 4
       29 LOADNIL                          R10
       30 LOADNIL                          R11
       31 FORGPREP                         R9
       32 ADD                              R14 R0 R13
       33 LOADB                            R15 0
       34 GETTABLEKS                       R16 R14 K3 ["X"]
       36 LOADN                            R17 0
       37 JUMPIFNOTLT                      R17 R16 ; [+10]
       39 GETTABLEKS                       R16 R14 K3 ["X"]
       41 GETUPVAL                         R17 5
       42 GETTABLEKS                       R17 R17 K3 ["X"]
       44 JUMPIFLT                         R16 R17 ; [+2]
       46 LOADB                            R15 0 +1
       47 LOADB                            R15 1
       48 LOADB                            R16 0
       49 GETTABLEKS                       R17 R14 K4 ["Y"]
       51 LOADN                            R18 0
       52 JUMPIFNOTLT                      R18 R17 ; [+10]
       54 GETTABLEKS                       R17 R14 K4 ["Y"]
       56 GETUPVAL                         R18 5
       57 GETTABLEKS                       R18 R18 K4 ["Y"]
       59 JUMPIFLT                         R17 R18 ; [+2]
       61 LOADB                            R16 0 +1
       62 LOADB                            R16 1
       63 LOADB                            R17 0
       64 GETTABLEKS                       R18 R14 K5 ["Z"]
       66 LOADN                            R19 0
       67 JUMPIFNOTLT                      R19 R18 ; [+10]
       69 GETTABLEKS                       R18 R14 K5 ["Z"]
       71 GETUPVAL                         R19 5
       72 GETTABLEKS                       R19 R19 K5 ["Z"]
       74 JUMPIFLT                         R18 R19 ; [+2]
       76 LOADB                            R17 0 +1
       77 LOADB                            R17 1
       78 JUMPIFNOT                        R15 ; [+34]
       79 JUMPIFNOT                        R16 ; [+33]
       80 JUMPIFNOT                        R17 ; [+32]
       81 GETUPVAL                         R21 6
       82 GETTABLEKS                       R22 R14 K3 ["X"]
       84 GETTABLE                         R20 R21 R22
       85 GETTABLEKS                       R21 R14 K4 ["Y"]
       87 GETTABLE                         R19 R20 R21
       88 GETTABLEKS                       R20 R14 K5 ["Z"]
       90 GETTABLE                         R18 R19 R20
       91 GETUPVAL                         R22 7
       92 GETTABLEKS                       R23 R14 K3 ["X"]
       94 GETTABLE                         R21 R22 R23
       95 GETTABLEKS                       R22 R14 K4 ["Y"]
       97 GETTABLE                         R20 R21 R22
       98 GETTABLEKS                       R21 R14 K5 ["Z"]
      100 GETTABLE                         R19 R20 R21
      101 GETUPVAL                         R20 8
      102 JUMPIFNOT                        R20 ; [+4]
      103 GETUPVAL                         R20 9
      104 JUMPIFNOTEQ                      R19 R20 ; [+2]
      106 LOADN                            R18 0
      107 LOADN                            R20 1
      108 JUMPIFNOTLE                      R20 R18 ; [+2]
      110 LOADB                            R6 1
      111 ADDK                             R8 R8 K1 [1]
      112 ADD                              R7 R7 R18
      113 FORGLOOP                         R9 2 ; [-82]
      115 JUMPIFNOTEQKN                    R8 K6 [0] ; [+3]
      117 LOADN                            R7 0
      118 JUMP                             ; [+1]
      119 DIV                              R7 R7 R8
      120 LOADN                            R10 0
      121 JUMPIFLT                         R10 R2 ; [+2]
      123 JUMPIFNOT                        R6 ; [+6]
      124 GETUPVAL                         R13 10
      125 MUL                              R12 R7 R13
      126 MUL                              R11 R12 R4
      127 MUL                              R10 R11 R5
      128 ADD                              R9 R2 R10
      129 JUMP                             ; [+1]
      130 MOVE                             R9 R2
      131 GETUPVAL                         R12 11
      132 GETTABLEKS                       R12 R12 K7 ["MaximumOccupancy"]
      134 FASTCALL2                        MATH_MIN R9 R12 ; [+4]
      136 MOVE                             R11 R9
      137 GETIMPORT                        R10 K10 [math.min]
      139 CALL                             R10 2 1
      140 MOVE                             R9 R10
      141 GETUPVAL                         R10 12
      142 JUMPIFNOTEQ                      R3 R10 ; [+48]
      144 LOADN                            R10 0
      145 JUMPIFNOTLT                      R10 R9 ; [+45]
      147 GETUPVAL                         R11 13
      148 JUMPIFNOT                        R11 ; [+25]
      149 GETUPVAL                         R11 14
      150 JUMPIFNOT                        R11 ; [+12]
      151 GETUPVAL                         R10 15
      152 GETTABLEKS                       R11 R0 K3 ["X"]
      154 GETTABLEKS                       R12 R0 K4 ["Y"]
      156 GETTABLEKS                       R13 R0 K5 ["Z"]
      158 GETUPVAL                         R14 7
      159 GETUPVAL                         R15 5
      160 GETUPVAL                         R16 12
      161 CALL                             R10 6 1
      162 JUMP                             ; [+12]
      163 GETUPVAL                         R10 16
      164 GETTABLEKS                       R11 R0 K3 ["X"]
      166 GETTABLEKS                       R12 R0 K4 ["Y"]
      168 GETTABLEKS                       R13 R0 K5 ["Z"]
      170 GETUPVAL                         R14 7
      171 GETUPVAL                         R15 5
      172 CALL                             R10 5 1
      173 JUMP                             ; [+1]
      174 GETUPVAL                         R10 17
      175 GETUPVAL                         R11 8
      176 JUMPIFNOT                        R11 ; [+4]
      177 GETUPVAL                         R11 9
      178 JUMPIFNOTEQ                      R10 R11 ; [+2]
      180 GETUPVAL                         R10 12
      181 GETUPVAL                         R13 18
      182 GETTABLEKS                       R14 R0 K3 ["X"]
      184 GETTABLE                         R12 R13 R14
      185 GETTABLEKS                       R13 R0 K4 ["Y"]
      187 GETTABLE                         R11 R12 R13
      188 GETTABLEKS                       R12 R0 K5 ["Z"]
      190 SETTABLE                         R10 R11 R12
      191 JUMPIFEQ                         R9 R2 ; [+30]
      193 GETUPVAL                         R12 19
      194 GETTABLEKS                       R13 R0 K3 ["X"]
      196 GETTABLE                         R11 R12 R13
      197 GETTABLEKS                       R12 R0 K4 ["Y"]
      199 GETTABLE                         R10 R11 R12
      200 GETTABLEKS                       R11 R0 K5 ["Z"]
      202 SETTABLE                         R9 R10 R11
      203 GETUPVAL                         R10 20
      204 JUMPIF                           R10 ; [+17]
      205 GETTABLEKS                       R10 R1 K0 ["Magnitude"]
      207 GETUPVAL                         R11 21
      208 GETTABLEKS                       R11 R11 K11 ["NextMagnitude"]
      210 JUMPIFNOTLT                      R10 R11 ; [+11]
      212 GETUPVAL                         R10 21
      213 GETTABLEKS                       R11 R1 K0 ["Magnitude"]
      215 SETTABLEKS                       R11 R10 K11 ["NextMagnitude"]
      217 GETUPVAL                         R10 21
      218 GETUPVAL                         R12 22
      219 ADD                              R11 R1 R12
      220 SETTABLEKS                       R11 R10 K12 ["NextStartPosition"]
      222 RETURN                           R0 0

PROTO_3:
        0 LOADB                            R1 1
        1 LOADB                            R2 1
        2 LOADN                            R5 -1
        3 LOADN                            R3 1
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 LOADN                            R8 -1
        7 LOADN                            R6 1
        8 LOADN                            R7 1
        9 FORNPREP                         R6
       10 LOADN                            R11 -1
       11 LOADN                            R9 1
       12 LOADN                            R10 1
       13 FORNPREP                         R9
       14 FASTCALL3                        VECTOR R5 R8 R11
       16 MOVE                             R14 R5
       17 MOVE                             R15 R8
       18 MOVE                             R16 R11
       19 GETIMPORT                        R13 K2 [Vector3.new]
       21 CALL                             R13 3 1
       22 ADD                              R12 R0 R13
       23 LOADB                            R13 0
       24 GETTABLEKS                       R14 R12 K3 ["X"]
       26 LOADN                            R15 0
       27 JUMPIFNOTLT                      R15 R14 ; [+10]
       29 GETTABLEKS                       R14 R12 K3 ["X"]
       31 GETUPVAL                         R15 0
       32 GETTABLEKS                       R15 R15 K3 ["X"]
       34 JUMPIFLE                         R14 R15 ; [+2]
       36 LOADB                            R13 0 +1
       37 LOADB                            R13 1
       38 LOADB                            R14 0
       39 GETTABLEKS                       R15 R12 K4 ["Y"]
       41 LOADN                            R16 0
       42 JUMPIFNOTLT                      R16 R15 ; [+10]
       44 GETTABLEKS                       R15 R12 K4 ["Y"]
       46 GETUPVAL                         R16 0
       47 GETTABLEKS                       R16 R16 K4 ["Y"]
       49 JUMPIFLE                         R15 R16 ; [+2]
       51 LOADB                            R14 0 +1
       52 LOADB                            R14 1
       53 LOADB                            R15 0
       54 GETTABLEKS                       R16 R12 K5 ["Z"]
       56 LOADN                            R17 0
       57 JUMPIFNOTLT                      R17 R16 ; [+10]
       59 GETTABLEKS                       R16 R12 K5 ["Z"]
       61 GETUPVAL                         R17 0
       62 GETTABLEKS                       R17 R17 K5 ["Z"]
       64 JUMPIFLE                         R16 R17 ; [+2]
       66 LOADB                            R15 0 +1
       67 LOADB                            R15 1
       68 JUMPIFNOT                        R13 ; [+50]
       69 JUMPIFNOT                        R14 ; [+49]
       70 JUMPIFNOT                        R15 ; [+48]
       71 JUMPIFNOTEQKN                    R5 K6 [0] ; [+5]
       73 JUMPIFNOTEQKN                    R8 K6 [0] ; [+3]
       75 JUMPIFEQKN                       R11 K6 [0] ; [+43]
       77 GETUPVAL                         R19 1
       78 GETTABLEKS                       R20 R12 K3 ["X"]
       80 GETTABLE                         R18 R19 R20
       81 GETTABLEKS                       R19 R12 K4 ["Y"]
       83 GETTABLE                         R17 R18 R19
       84 GETTABLEKS                       R18 R12 K5 ["Z"]
       86 GETTABLE                         R16 R17 R18
       87 GETUPVAL                         R21 2
       88 GETTABLEKS                       R22 R12 K3 ["X"]
       90 GETTABLE                         R20 R21 R22
       91 GETTABLEKS                       R21 R12 K4 ["Y"]
       93 GETTABLE                         R19 R20 R21
       94 GETTABLEKS                       R20 R12 K5 ["Z"]
       96 GETTABLE                         R18 R19 R20
       97 GETUPVAL                         R19 3
       98 JUMPIFEQ                         R18 R19 ; [+2]
      100 LOADB                            R17 0 +1
      101 LOADB                            R17 1
      102 GETUPVAL                         R18 4
      103 JUMPIFNOT                        R18 ; [+2]
      104 JUMPIFNOT                        R17 ; [+1]
      105 LOADN                            R16 0
      106 LOADN                            R18 0
      107 JUMPIFNOTLT                      R18 R16 ; [+2]
      109 LOADB                            R1 0
      110 LOADN                            R18 1
      111 JUMPIFNOTLT                      R16 R18 ; [+2]
      113 LOADB                            R2 0
      114 JUMPIF                           R2 ; [+4]
      115 JUMPIF                           R1 ; [+3]
      116 LOADB                            R18 0
      117 LOADB                            R19 0
      118 RETURN                           R18 2
      119 FORNLOOP                         R9
      120 FORNLOOP                         R6
      121 FORNLOOP                         R3
      122 RETURN                           R1 2

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 2
        3 GETUPVAL                         R7 1
        4 GETTABLEKS                       R8 R0 K0 ["X"]
        6 GETTABLE                         R6 R7 R8
        7 GETTABLEKS                       R7 R0 K1 ["Y"]
        9 GETTABLE                         R5 R6 R7
       10 GETTABLEKS                       R6 R0 K2 ["Z"]
       12 GETTABLE                         R4 R5 R6
       13 GETUPVAL                         R5 2
       14 JUMPIFNOT                        R5 ; [+22]
       15 GETUPVAL                         R6 3
       16 GETUPVAL                         R7 4
       17 GETTABLEKS                       R7 R7 K3 ["Add"]
       19 JUMPIFNOTEQ                      R6 R7 ; [+9]
       21 MOVE                             R5 R3
       22 JUMPIF                           R5 ; [+14]
       23 JUMPIFEQKN                       R4 K4 [0] ; [+3]
       25 MOVE                             R5 R1
       26 JUMPIFNOT                        R5 ; [+10]
       27 MOVE                             R5 R2
       28 JUMP                             ; [+8]
       29 MOVE                             R5 R2
       30 JUMPIF                           R5 ; [+6]
       31 LOADB                            R5 0
       32 JUMPIFNOTEQKN                    R4 K5 [1] ; [+4]
       34 NOT                              R5 R1
       35 JUMPIFNOT                        R5 ; [+1]
       36 MOVE                             R5 R3
       37 JUMPIF                           R5 ; [+245]
       38 LOADN                            R8 -1
       39 LOADN                            R6 1
       40 LOADN                            R7 1
       41 FORNPREP                         R6
       42 LOADN                            R11 -1
       43 LOADN                            R9 1
       44 LOADN                            R10 1
       45 FORNPREP                         R9
       46 LOADN                            R14 -1
       47 LOADN                            R12 1
       48 LOADN                            R13 1
       49 FORNPREP                         R12
       50 FASTCALL3                        VECTOR R8 R11 R14
       52 MOVE                             R16 R8
       53 MOVE                             R17 R11
       54 MOVE                             R18 R14
       55 GETIMPORT                        R15 K8 [Vector3.new]
       57 CALL                             R15 3 1
       58 ADD                              R16 R0 R15
       59 LOADB                            R17 0
       60 GETTABLEKS                       R18 R16 K0 ["X"]
       62 LOADN                            R19 0
       63 JUMPIFNOTLT                      R19 R18 ; [+10]
       65 GETTABLEKS                       R18 R16 K0 ["X"]
       67 GETUPVAL                         R19 5
       68 GETTABLEKS                       R19 R19 K0 ["X"]
       70 JUMPIFLE                         R18 R19 ; [+2]
       72 LOADB                            R17 0 +1
       73 LOADB                            R17 1
       74 LOADB                            R18 0
       75 GETTABLEKS                       R19 R16 K1 ["Y"]
       77 LOADN                            R20 0
       78 JUMPIFNOTLT                      R20 R19 ; [+10]
       80 GETTABLEKS                       R19 R16 K1 ["Y"]
       82 GETUPVAL                         R20 5
       83 GETTABLEKS                       R20 R20 K1 ["Y"]
       85 JUMPIFLE                         R19 R20 ; [+2]
       87 LOADB                            R18 0 +1
       88 LOADB                            R18 1
       89 LOADB                            R19 0
       90 GETTABLEKS                       R20 R16 K2 ["Z"]
       92 LOADN                            R21 0
       93 JUMPIFNOTLT                      R21 R20 ; [+10]
       95 GETTABLEKS                       R20 R16 K2 ["Z"]
       97 GETUPVAL                         R21 5
       98 GETTABLEKS                       R21 R21 K2 ["Z"]
      100 JUMPIFLE                         R20 R21 ; [+2]
      102 LOADB                            R19 0 +1
      103 LOADB                            R19 1
      104 JUMPIFNOT                        R17 ; [+175]
      105 JUMPIFNOT                        R18 ; [+174]
      106 JUMPIFNOT                        R19 ; [+173]
      107 JUMPIFNOTEQKN                    R8 K4 [0] ; [+5]
      109 JUMPIFNOTEQKN                    R11 K4 [0] ; [+3]
      111 JUMPIFEQKN                       R14 K4 [0] ; [+168]
      113 GETUPVAL                         R20 2
      114 JUMPIF                           R20 ; [+49]
      115 GETUPVAL                         R21 6
      116 GETTABLEKS                       R23 R16 K0 ["X"]
      118 GETUPVAL                         R25 5
      119 GETTABLEKS                       R25 R25 K0 ["X"]
      121 GETTABLEKS                       R27 R16 K1 ["Y"]
      123 GETUPVAL                         R29 5
      124 GETTABLEKS                       R29 R29 K0 ["X"]
      126 GETTABLEKS                       R30 R16 K2 ["Z"]
      128 MUL                              R28 R29 R30
      129 ADD                              R26 R27 R28
      130 MUL                              R24 R25 R26
      131 ADD                              R22 R23 R24
      132 GETTABLE                         R20 R21 R22
      133 JUMPIF                           R20 ; [+30]
      134 GETUPVAL                         R20 6
      135 GETTABLEKS                       R22 R16 K0 ["X"]
      137 GETUPVAL                         R24 5
      138 GETTABLEKS                       R24 R24 K0 ["X"]
      140 GETTABLEKS                       R26 R16 K1 ["Y"]
      142 GETUPVAL                         R28 5
      143 GETTABLEKS                       R28 R28 K0 ["X"]
      145 GETTABLEKS                       R29 R16 K2 ["Z"]
      147 MUL                              R27 R28 R29
      148 ADD                              R25 R26 R27
      149 MUL                              R23 R24 R25
      150 ADD                              R21 R22 R23
      151 LOADB                            R22 1
      152 SETTABLE                         R22 R20 R21
      153 GETUPVAL                         R20 7
      154 ADDK                             R20 R20 K5 [1]
      155 SETUPVAL                         R20 7
      156 GETUPVAL                         R21 8
      157 FASTCALL2                        TABLE_INSERT R21 R16 ; [+4]
      159 MOVE                             R22 R16
      160 GETIMPORT                        R20 K11 [table.insert]
      162 CALL                             R20 2 0
      163 JUMP                             ; [+116]
      164 GETUPVAL                         R23 1
      165 GETTABLEKS                       R24 R16 K0 ["X"]
      167 GETTABLE                         R22 R23 R24
      168 GETTABLEKS                       R23 R16 K1 ["Y"]
      170 GETTABLE                         R21 R22 R23
      171 GETTABLEKS                       R22 R16 K2 ["Z"]
      173 GETTABLE                         R20 R21 R22
      174 GETUPVAL                         R24 9
      175 GETTABLEKS                       R25 R16 K0 ["X"]
      177 GETTABLE                         R23 R24 R25
      178 GETTABLEKS                       R24 R16 K1 ["Y"]
      180 GETTABLE                         R22 R23 R24
      181 GETTABLEKS                       R23 R16 K2 ["Z"]
      183 GETTABLE                         R21 R22 R23
      184 GETUPVAL                         R22 10
      185 JUMPIFNOT                        R22 ; [+5]
      186 GETUPVAL                         R23 11
      187 JUMPIFEQ                         R21 R23 ; [+2]
      189 LOADB                            R22 0 +1
      190 LOADB                            R22 1
      191 JUMPIFNOT                        R22 ; [+1]
      192 LOADN                            R20 0
      193 LOADB                            R23 0
      194 LOADB                            R24 0
      195 GETUPVAL                         R25 3
      196 GETUPVAL                         R26 4
      197 GETTABLEKS                       R26 R26 K3 ["Add"]
      199 JUMPIFNOTEQ                      R25 R26 ; [+13]
      201 LOADN                            R25 1
      202 JUMPIFLT                         R20 R25 ; [+2]
      204 LOADB                            R24 0 +1
      205 LOADB                            R24 1
      206 JUMPIFEQKN                       R4 K4 [0] ; [+2]
      208 JUMPIFNOT                        R1 ; [+21]
      209 JUMPIFNOTEQKN                    R20 K4 [0] ; [+20]
      211 LOADB                            R24 0
      212 JUMP                             ; [+17]
      213 GETUPVAL                         R25 3
      214 GETUPVAL                         R26 4
      215 GETTABLEKS                       R26 R26 K12 ["Subtract"]
      217 JUMPIFNOTEQ                      R25 R26 ; [+12]
      219 LOADN                            R25 0
      220 JUMPIFLT                         R25 R20 ; [+2]
      222 LOADB                            R23 0 +1
      223 LOADB                            R23 1
      224 JUMPIFNOTEQKN                    R4 K5 [1] ; [+5]
      226 JUMPIF                           R1 ; [+3]
      227 JUMPIFNOTEQKN                    R20 K5 [1] ; [+2]
      229 LOADB                            R23 0
      230 JUMPIF                           R24 ; [+1]
      231 JUMPIFNOT                        R23 ; [+48]
      232 GETUPVAL                         R26 6
      233 GETTABLEKS                       R28 R16 K0 ["X"]
      235 GETUPVAL                         R30 5
      236 GETTABLEKS                       R30 R30 K0 ["X"]
      238 GETTABLEKS                       R32 R16 K1 ["Y"]
      240 GETUPVAL                         R34 5
      241 GETTABLEKS                       R34 R34 K0 ["X"]
      243 GETTABLEKS                       R35 R16 K2 ["Z"]
      245 MUL                              R33 R34 R35
      246 ADD                              R31 R32 R33
      247 MUL                              R29 R30 R31
      248 ADD                              R27 R28 R29
      249 GETTABLE                         R25 R26 R27
      250 JUMPIF                           R25 ; [+29]
      251 GETUPVAL                         R25 6
      252 GETTABLEKS                       R27 R16 K0 ["X"]
      254 GETUPVAL                         R29 5
      255 GETTABLEKS                       R29 R29 K0 ["X"]
      257 GETTABLEKS                       R31 R16 K1 ["Y"]
      259 GETUPVAL                         R33 5
      260 GETTABLEKS                       R33 R33 K0 ["X"]
      262 GETTABLEKS                       R34 R16 K2 ["Z"]
      264 MUL                              R32 R33 R34
      265 ADD                              R30 R31 R32
      266 MUL                              R28 R29 R30
      267 ADD                              R26 R27 R28
      268 LOADB                            R27 1
      269 SETTABLE                         R27 R25 R26
      270 GETUPVAL                         R25 7
      271 ADDK                             R25 R25 K5 [1]
      272 SETUPVAL                         R25 7
      273 GETUPVAL                         R26 8
      274 FASTCALL2                        TABLE_INSERT R26 R16 ; [+4]
      276 MOVE                             R27 R16
      277 GETIMPORT                        R25 K11 [table.insert]
      279 CALL                             R25 2 0
      280 FORNLOOP                         R12
      281 FORNLOOP                         R9
      282 FORNLOOP                         R6
      283 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["State"]
        2 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        4 LOADK                            R4 K1 ["Tried to step without starting first."]
        5 GETIMPORT                        R2 K3 [assert]
        7 CALL                             R2 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K4 ["ProfileTools"]
       11 CALL                             R2 0 1
       12 JUMPIFNOT                        R2 ; [+4]
       13 GETIMPORT                        R2 K7 [debug.profilebegin]
       15 LOADK                            R3 K8 ["Sculpt"]
       16 CALL                             R2 1 0
       17 GETTABLEKS                       R2 R0 K0 ["State"]
       19 GETTABLEKS                       R4 R0 K9 ["Payload"]
       21 GETUPVAL                         R5 1
       22 GETTABLEKS                       R5 R5 K10 ["BrushSettings"]
       24 GETTABLE                         R3 R4 R5
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K11 ["BrushSize"]
       28 GETTABLE                         R4 R3 R5
       29 GETTABLEKS                       R5 R4 K12 ["Height"]
       31 GETTABLEKS                       R6 R4 K13 ["Size"]
       33 GETUPVAL                         R8 2
       34 GETTABLEKS                       R8 R8 K14 ["BrushMode"]
       36 GETTABLE                         R7 R3 R8
       37 GETUPVAL                         R9 2
       38 GETTABLEKS                       R9 R9 K15 ["BrushShape"]
       40 GETTABLE                         R8 R3 R9
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R10 R10 K16 ["IgnoreParts"]
       44 GETTABLE                         R9 R3 R10
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R11 R11 K17 ["IgnoreWater"]
       48 GETTABLE                         R10 R3 R11
       49 GETUPVAL                         R12 2
       50 GETTABLEKS                       R12 R12 K18 ["PivotPosition"]
       52 GETTABLE                         R11 R3 R12
       53 GETUPVAL                         R13 2
       54 GETTABLEKS                       R13 R13 K19 ["PlaneLock"]
       56 GETTABLE                         R12 R3 R13
       57 GETUPVAL                         R14 2
       58 GETTABLEKS                       R14 R14 K20 ["Strength"]
       60 GETTABLE                         R13 R3 R14
       61 GETUPVAL                         R15 2
       62 GETTABLEKS                       R15 R15 K0 ["State"]
       64 GETTABLE                         R14 R3 R15
       65 GETUPVAL                         R16 2
       66 GETTABLEKS                       R16 R16 K21 ["TemporarySmooth"]
       68 GETTABLE                         R15 R3 R16
       69 LOADB                            R16 0
       70 GETUPVAL                         R17 3
       71 GETTABLEKS                       R17 R17 K22 ["Sphere"]
       73 JUMPIFNOTEQ                      R8 R17 ; [+6]
       75 LOADN                            R17 2
       76 JUMPIFLT                         R17 R6 ; [+2]
       78 LOADB                            R16 0 +1
       79 LOADB                            R16 1
       80 GETUPVAL                         R18 3
       81 GETTABLEKS                       R18 R18 K23 ["Cylinder"]
       83 JUMPIFNOTEQ                      R8 R18 ; [+5]
       85 LOADB                            R17 1
       86 LOADN                            R18 2
       87 JUMPIFLT                         R18 R6 ; [+2]
       89 MOVE                             R17 R16
       90 JUMPIFNOT                        R15 ; [+28]
       91 GETTABLEKS                       R18 R2 K24 ["Smooth"]
       93 JUMPIF                           R18 ; [+15]
       94 GETUPVAL                         R18 4
       95 LOADK                            R19 K24 ["Smooth"]
       96 GETUPVAL                         R20 5
       97 CALL                             R18 2 1
       98 DUPTABLE                         R21 K25 [{"Payload"}]
       99 GETTABLEKS                       R22 R0 K9 ["Payload"]
      101 SETTABLEKS                       R22 R21 K9 ["Payload"]
      103 NAMECALL                         R19 R18 K26 ["start"]
      105 CALL                             R19 2 0
      106 SETTABLEKS                       R18 R2 K24 ["Smooth"]
      108 JUMP                             ; [+7]
      109 GETTABLEKS                       R18 R2 K24 ["Smooth"]
      111 GETTABLEKS                       R20 R0 K9 ["Payload"]
      113 NAMECALL                         R18 R18 K27 ["updatePayload"]
      115 CALL                             R18 2 0
      116 LOADB                            R18 1
      117 LOADN                            R19 0
      118 RETURN                           R18 2
      119 GETTABLEKS                       R18 R2 K24 ["Smooth"]
      121 JUMPIFNOT                        R18 ; [+12]
      122 GETTABLEKS                       R18 R2 K24 ["Smooth"]
      124 NAMECALL                         R18 R18 K28 ["cancel"]
      126 CALL                             R18 1 0
      127 LOADNIL                          R18
      128 SETTABLEKS                       R18 R2 K24 ["Smooth"]
      130 GETTABLEKS                       R18 R14 K29 ["Position"]
      132 SETTABLEKS                       R18 R2 K29 ["Position"]
      134 GETTABLEKS                       R19 R0 K9 ["Payload"]
      136 GETUPVAL                         R20 1
      137 GETTABLEKS                       R20 R20 K30 ["MaterialSettings"]
      139 GETTABLE                         R18 R19 R20
      140 GETUPVAL                         R20 6
      141 GETTABLEKS                       R20 R20 K31 ["AutoMaterial"]
      143 GETTABLE                         R19 R18 R20
      144 GETUPVAL                         R21 6
      145 GETTABLEKS                       R21 R21 K32 ["SourceMaterial"]
      147 GETTABLE                         R20 R18 R21
      148 GETUPVAL                         R22 6
      149 GETTABLEKS                       R22 R22 K33 ["SourceMaterialSlot"]
      151 GETTABLE                         R21 R18 R22
      152 GETUPVAL                         R22 7
      153 CALL                             R22 0 1
      154 GETUPVAL                         R23 8
      155 GETTABLEKS                       R23 R23 K34 ["new"]
      157 GETUPVAL                         R24 5
      158 GETTABLEKS                       R24 R24 K35 ["Terrain"]
      160 CALL                             R23 1 1
      161 JUMPIFNOT                        R22 ; [+25]
      162 GETUPVAL                         R24 9
      163 GETTABLEKS                       R24 R24 K36 ["Add"]
      165 JUMPIFNOTEQ                      R7 R24 ; [+21]
      167 JUMPIF                           R19 ; [+19]
      168 MOVE                             R26 R21
      169 NAMECALL                         R24 R23 K37 ["isMaterialValid"]
      171 CALL                             R24 2 1
      172 JUMPIF                           R24 ; [+14]
      173 NAMECALL                         R24 R1 K38 ["skipBudget"]
      175 CALL                             R24 1 0
      176 GETUPVAL                         R24 0
      177 GETTABLEKS                       R24 R24 K4 ["ProfileTools"]
      179 CALL                             R24 0 1
      180 JUMPIFNOT                        R24 ; [+3]
      181 GETIMPORT                        R24 K40 [debug.profileend]
      183 CALL                             R24 0 0
      184 LOADB                            R24 1
      185 LOADN                            R25 0
      186 RETURN                           R24 2
      187 JUMPIFNOT                        R22 ; [+3]
      188 GETTABLEKS                       R24 R23 K41 ["air"]
      190 JUMP                             ; [+2]
      191 GETIMPORT                        R24 K45 [Enum.Material.Air]
      193 JUMPIFNOT                        R22 ; [+3]
      194 GETTABLEKS                       R25 R23 K46 ["water"]
      196 JUMP                             ; [+2]
      197 GETIMPORT                        R25 K48 [Enum.Material.Water]
      199 JUMPIFNOT                        R22 ; [+2]
      200 MOVE                             R26 R21
      201 JUMP                             ; [+1]
      202 MOVE                             R26 R20
      203 GETUPVAL                         R29 3
      204 GETTABLEKS                       R29 R29 K22 ["Sphere"]
      206 JUMPIFNOTEQ                      R8 R29 ; [+3]
      208 MOVE                             R28 R6
      209 JUMP                             ; [+1]
      210 MOVE                             R28 R5
      211 GETUPVAL                         R29 10
      212 MUL                              R27 R28 R29
      213 GETUPVAL                         R29 10
      214 MUL                              R28 R6 R29
      215 MULK                             R29 R28 K49 [0.5]
      216 GETUPVAL                         R30 11
      217 GETUPVAL                         R32 2
      218 GETTABLEKS                       R32 R32 K18 ["PivotPosition"]
      220 GETTABLE                         R31 R3 R32
      221 GETTABLEKS                       R32 R14 K29 ["Position"]
      223 MOVE                             R33 R27
      224 CALL                             R30 3 1
      225 GETUPVAL                         R31 12
      226 GETTABLEKS                       R32 R2 K29 ["Position"]
      228 MOVE                             R33 R30
      229 MOVE                             R34 R29
      230 CALL                             R31 3 1
      231 LENGTH                           R33 R31
      232 GETTABLE                         R32 R31 R33
      233 SETTABLEKS                       R32 R2 K29 ["Position"]
      235 MOVE                             R32 R31
      236 LOADNIL                          R33
      237 LOADNIL                          R34
      238 FORGPREP                         R32
      239 ADDK                             R38 R13 K50 [0.08]
      240 FASTCALL1                        MATH_LOG R6 ; [+3]
      241 MOVE                             R42 R6
      242 GETIMPORT                        R41 K55 [math.log]
      244 CALL                             R41 1 1
      245 DIVK                             R40 R41 K52 [14]
      246 ADDK                             R39 R40 K51 [0.025]
      247 MUL                              R37 R38 R39
      248 ADDK                             R39 R13 K50 [0.08]
      249 FASTCALL1                        MATH_LOG R6 ; [+3]
      250 MOVE                             R43 R6
      251 GETIMPORT                        R42 K55 [math.log]
      253 CALL                             R42 1 1
      254 DIVK                             R41 R42 K56 [28]
      255 ADDK                             R40 R41 K51 [0.025]
      256 MUL                              R38 R39 R40
      257 GETUPVAL                         R39 13
      258 MOVE                             R40 R36
      259 MOVE                             R41 R29
      260 MOVE                             R42 R27
      261 CALL                             R39 3 2
      262 GETIMPORT                        R41 K58 [Region3.new]
      264 MOVE                             R42 R39
      265 MOVE                             R43 R40
      266 CALL                             R41 2 1
      267 GETTABLEKS                       R44 R40 K59 ["X"]
      269 GETTABLEKS                       R45 R39 K59 ["X"]
      271 SUB                              R43 R44 R45
      272 MULK                             R42 R43 K49 [0.5]
      273 LOADB                            R43 0
      274 GETUPVAL                         R44 14
      275 GETTABLEKS                       R44 R44 K60 ["Center"]
      277 JUMPIFNOTEQ                      R11 R44 ; [+11]
      279 LOADB                            R43 0
      280 GETUPVAL                         R44 15
      281 GETTABLEKS                       R44 R44 K61 ["Off"]
      283 JUMPIFNOTEQ                      R12 R44 ; [+5]
      285 JUMPIFEQKB                       R9 TRUE ; [+2]
      287 LOADB                            R43 0 +1
      288 LOADB                            R43 1
      289 NEWTABLE                         R44 0 0
      291 JUMPIFNOT                        R22 ; [+5]
      292 MOVE                             R47 R41
      293 NAMECALL                         R45 R23 K62 ["readRegion"]
      295 CALL                             R45 2 1
      296 JUMP                             ; [+1]
      297 LOADNIL                          R45
      298 LOADNIL                          R46
      299 LOADNIL                          R47
      300 LOADNIL                          R48
      301 LOADNIL                          R49
      302 JUMPIFNOT                        R45 ; [+9]
      303 GETTABLEKS                       R46 R45 K63 ["materials"]
      305 GETTABLEKS                       R47 R45 K64 ["occupancies"]
      307 GETTABLEKS                       R48 R45 K65 ["writeMaterials"]
      309 GETTABLEKS                       R49 R45 K66 ["writeOccupancies"]
      311 JUMP                             ; [+20]
      312 GETUPVAL                         R50 5
      313 GETTABLEKS                       R50 R50 K35 ["Terrain"]
      315 MOVE                             R52 R41
      316 GETUPVAL                         R53 10
      317 NAMECALL                         R50 R50 K67 ["ReadVoxels"]
      319 CALL                             R50 3 2
      320 MOVE                             R46 R50
      321 MOVE                             R47 R51
      322 GETUPVAL                         R50 5
      323 GETTABLEKS                       R50 R50 K35 ["Terrain"]
      325 MOVE                             R52 R41
      326 GETUPVAL                         R53 10
      327 NAMECALL                         R50 R50 K67 ["ReadVoxels"]
      329 CALL                             R50 3 2
      330 MOVE                             R48 R50
      331 MOVE                             R49 R51
      332 GETIMPORT                        R50 K70 [os.clock]
      334 CALL                             R50 0 1
      335 LOADNIL                          R51
      336 SETTABLEKS                       R51 R46 K13 ["Size"]
      338 LOADNIL                          R51
      339 SETTABLEKS                       R51 R47 K13 ["Size"]
      341 LENGTH                           R51 R46
      342 GETTABLEN                        R53 R46 1
      343 LENGTH                           R52 R53
      344 GETTABLEN                        R55 R46 1
      345 GETTABLEN                        R54 R55 1
      346 LENGTH                           R53 R54
      347 GETIMPORT                        R54 K73 [table.create]
      349 MUL                              R56 R51 R52
      350 MUL                              R55 R56 R53
      351 LOADB                            R56 0
      352 CALL                             R54 2 1
      353 LOADN                            R55 0
      354 FASTCALL3                        VECTOR R51 R52 R53
      356 MOVE                             R57 R51
      357 MOVE                             R58 R52
      358 MOVE                             R59 R53
      359 GETIMPORT                        R56 K75 [Vector3.new]
      361 CALL                             R56 3 1
      362 MOVE                             R57 R43
      363 LOADNIL                          R58
      364 JUMPIF                           R43 ; [+17]
      365 GETTABLEKS                       R59 R2 K76 ["NextStartPosition"]
      367 JUMPIFNOT                        R59 ; [+14]
      368 GETUPVAL                         R59 16
      369 GETTABLEKS                       R61 R2 K76 ["NextStartPosition"]
      371 SUB                              R60 R61 R36
      372 GETTABLEKS                       R60 R60 K77 ["Magnitude"]
      374 MOVE                             R61 R42
      375 CALL                             R59 2 1
      376 LOADK                            R60 K49 [0.5]
      377 JUMPIFNOTLT                      R60 R59 ; [+4]
      379 GETTABLEKS                       R58 R2 K76 ["NextStartPosition"]
      381 JUMP                             ; [+1]
      382 MOVE                             R58 R36
      383 GETTABLEKS                       R63 R58 K59 ["X"]
      385 GETTABLEKS                       R64 R39 K59 ["X"]
      387 SUB                              R62 R63 R64
      388 GETUPVAL                         R63 10
      389 DIV                              R61 R62 R63
      390 FASTCALL1                        MATH_ROUND R61 ; [+2]
      391 GETIMPORT                        R60 K79 [math.round]
      393 CALL                             R60 1 1
      394 GETTABLEKS                       R64 R58 K80 ["Y"]
      396 GETTABLEKS                       R65 R39 K80 ["Y"]
      398 SUB                              R63 R64 R65
      399 GETUPVAL                         R64 10
      400 DIV                              R62 R63 R64
      401 FASTCALL1                        MATH_ROUND R62 ; [+2]
      402 GETIMPORT                        R61 K79 [math.round]
      404 CALL                             R61 1 1
      405 GETTABLEKS                       R65 R58 K81 ["Z"]
      407 GETTABLEKS                       R66 R39 K81 ["Z"]
      409 SUB                              R64 R65 R66
      410 GETUPVAL                         R65 10
      411 DIV                              R63 R64 R65
      412 FASTCALL1                        MATH_ROUND R63 ; [+2]
      413 GETIMPORT                        R62 K79 [math.round]
      415 CALL                             R62 1 1
      416 FASTCALL                         VECTOR ; [+2]
      417 GETIMPORT                        R59 K75 [Vector3.new]
      419 CALL                             R59 3 1
      420 GETUPVAL                         R61 10
      421 MUL                              R60 R6 R61
      422 SETTABLEKS                       R60 R2 K82 ["NextMagnitude"]
      424 LOADB                            R60 0
      425 LOADB                            R61 0
      426 LOADN                            R64 -1
      427 LOADN                            R62 1
      428 LOADN                            R63 1
      429 FORNPREP                         R62
      430 LOADN                            R67 -1
      431 LOADN                            R65 1
      432 LOADN                            R66 1
      433 FORNPREP                         R65
      434 LOADN                            R70 -1
      435 LOADN                            R68 1
      436 LOADN                            R69 1
      437 FORNPREP                         R68
      438 FASTCALL3                        VECTOR R64 R67 R70
      440 MOVE                             R73 R64
      441 MOVE                             R74 R67
      442 MOVE                             R75 R70
      443 GETIMPORT                        R72 K75 [Vector3.new]
      445 CALL                             R72 3 1
      446 ADD                              R71 R59 R72
      447 LOADB                            R72 0
      448 GETTABLEKS                       R73 R71 K59 ["X"]
      450 LOADN                            R74 0
      451 JUMPIFNOTLT                      R74 R73 ; [+9]
      453 GETTABLEKS                       R73 R71 K59 ["X"]
      455 GETTABLEKS                       R74 R56 K59 ["X"]
      457 JUMPIFLE                         R73 R74 ; [+2]
      459 LOADB                            R72 0 +1
      460 LOADB                            R72 1
      461 LOADB                            R73 0
      462 GETTABLEKS                       R74 R71 K80 ["Y"]
      464 LOADN                            R75 0
      465 JUMPIFNOTLT                      R75 R74 ; [+9]
      467 GETTABLEKS                       R74 R71 K80 ["Y"]
      469 GETTABLEKS                       R75 R56 K80 ["Y"]
      471 JUMPIFLE                         R74 R75 ; [+2]
      473 LOADB                            R73 0 +1
      474 LOADB                            R73 1
      475 LOADB                            R74 0
      476 GETTABLEKS                       R75 R71 K81 ["Z"]
      478 LOADN                            R76 0
      479 JUMPIFNOTLT                      R76 R75 ; [+9]
      481 GETTABLEKS                       R75 R71 K81 ["Z"]
      483 GETTABLEKS                       R76 R56 K81 ["Z"]
      485 JUMPIFLE                         R75 R76 ; [+2]
      487 LOADB                            R74 0 +1
      488 LOADB                            R74 1
      489 JUMPIFNOT                        R72 ; [+53]
      490 JUMPIFNOT                        R73 ; [+52]
      491 JUMPIFNOT                        R74 ; [+51]
      492 GETTABLEKS                       R76 R71 K59 ["X"]
      494 GETTABLEKS                       R78 R56 K59 ["X"]
      496 GETTABLEKS                       R80 R71 K80 ["Y"]
      498 GETTABLEKS                       R82 R56 K59 ["X"]
      500 GETTABLEKS                       R83 R71 K81 ["Z"]
      502 MUL                              R81 R82 R83
      503 ADD                              R79 R80 R81
      504 MUL                              R77 R78 R79
      505 ADD                              R75 R76 R77
      506 LOADB                            R76 1
      507 SETTABLE                         R76 R54 R75
      508 ADDK                             R55 R55 K83 [1]
      509 GETTABLEKS                       R78 R71 K59 ["X"]
      511 GETTABLE                         R77 R47 R78
      512 GETTABLEKS                       R78 R71 K80 ["Y"]
      514 GETTABLE                         R76 R77 R78
      515 GETTABLEKS                       R77 R71 K81 ["Z"]
      517 GETTABLE                         R75 R76 R77
      518 JUMPIFNOTEQKN                    R75 K84 [0] ; [+3]
      520 LOADB                            R60 1
      521 JUMP                             ; [+14]
      522 GETTABLEKS                       R78 R71 K59 ["X"]
      524 GETTABLE                         R77 R47 R78
      525 GETTABLEKS                       R78 R71 K80 ["Y"]
      527 GETTABLE                         R76 R77 R78
      528 GETTABLEKS                       R77 R71 K81 ["Z"]
      530 GETTABLE                         R75 R76 R77
      531 JUMPIFNOTEQKN                    R75 K83 [1] ; [+3]
      533 LOADB                            R61 1
      534 JUMP                             ; [+1]
      535 LOADB                            R57 1
      536 FASTCALL2                        TABLE_INSERT R44 R71 ; [+5]
      538 MOVE                             R76 R44
      539 MOVE                             R77 R71
      540 GETIMPORT                        R75 K86 [table.insert]
      542 CALL                             R75 2 0
      543 FORNLOOP                         R68
      544 FORNLOOP                         R65
      545 FORNLOOP                         R62
      546 JUMPIFNOT                        R60 ; [+2]
      547 JUMPIFNOT                        R61 ; [+1]
      548 LOADB                            R57 1
      549 NEWCLOSURE                       R62 P0
      550 CAPTURE                          VAL R17
      551 CAPTURE                          UPVAL U16
      552 CAPTURE                          VAL R42
      553 CAPTURE                          UPVAL U17
      554 CAPTURE                          UPVAL U18
      555 CAPTURE                          VAL R56
      556 CAPTURE                          REF R47
      557 CAPTURE                          REF R46
      558 CAPTURE                          VAL R10
      559 CAPTURE                          VAL R25
      560 CAPTURE                          VAL R37
      561 CAPTURE                          UPVAL U19
      562 CAPTURE                          REF R49
      563 CAPTURE                          REF R48
      564 CAPTURE                          VAL R24
      565 CAPTURE                          VAL R43
      566 CAPTURE                          VAL R2
      567 CAPTURE                          VAL R36
      568 NEWCLOSURE                       R63 P1
      569 CAPTURE                          VAL R17
      570 CAPTURE                          UPVAL U16
      571 CAPTURE                          VAL R42
      572 CAPTURE                          UPVAL U17
      573 CAPTURE                          UPVAL U18
      574 CAPTURE                          VAL R56
      575 CAPTURE                          REF R47
      576 CAPTURE                          REF R46
      577 CAPTURE                          VAL R10
      578 CAPTURE                          VAL R25
      579 CAPTURE                          VAL R38
      580 CAPTURE                          UPVAL U19
      581 CAPTURE                          VAL R24
      582 CAPTURE                          VAL R19
      583 CAPTURE                          VAL R22
      584 CAPTURE                          UPVAL U20
      585 CAPTURE                          UPVAL U21
      586 CAPTURE                          VAL R26
      587 CAPTURE                          REF R48
      588 CAPTURE                          REF R49
      589 CAPTURE                          VAL R43
      590 CAPTURE                          VAL R2
      591 CAPTURE                          VAL R36
      592 NEWCLOSURE                       R64 P2
      593 CAPTURE                          VAL R56
      594 CAPTURE                          REF R47
      595 CAPTURE                          REF R46
      596 CAPTURE                          VAL R25
      597 CAPTURE                          VAL R10
      598 NEWCLOSURE                       R65 P3
      599 CAPTURE                          VAL R64
      600 CAPTURE                          REF R47
      601 CAPTURE                          REF R57
      602 CAPTURE                          VAL R7
      603 CAPTURE                          UPVAL U9
      604 CAPTURE                          VAL R56
      605 CAPTURE                          REF R54
      606 CAPTURE                          REF R55
      607 CAPTURE                          VAL R44
      608 CAPTURE                          REF R46
      609 CAPTURE                          VAL R10
      610 CAPTURE                          VAL R25
      611 LENGTH                           R66 R44
      612 LOADN                            R67 0
      613 JUMPIFNOTLT                      R67 R66 ; [+105]
      615 GETIMPORT                        R66 K88 [table.remove]
      617 MOVE                             R67 R44
      618 CALL                             R66 1 1
      619 GETTABLEKS                       R70 R66 K59 ["X"]
      621 GETTABLE                         R69 R47 R70
      622 GETTABLEKS                       R70 R66 K80 ["Y"]
      624 GETTABLE                         R68 R69 R70
      625 GETTABLEKS                       R69 R66 K81 ["Z"]
      627 GETTABLE                         R67 R68 R69
      628 GETTABLEKS                       R71 R66 K59 ["X"]
      630 GETTABLE                         R70 R46 R71
      631 GETTABLEKS                       R71 R66 K80 ["Y"]
      633 GETTABLE                         R69 R70 R71
      634 GETTABLEKS                       R70 R66 K81 ["Z"]
      636 GETTABLE                         R68 R69 R70
      637 JUMPIFNOT                        R10 ; [+3]
      638 LOADB                            R69 1
      639 JUMPIFEQ                         R68 R25 ; [+5]
      641 JUMPIFEQ                         R68 R24 ; [+2]
      643 LOADB                            R69 0 +1
      644 LOADB                            R69 1
      645 JUMPIF                           R57 ; [+21]
      646 JUMPIFNOT                        R10 ; [+3]
      647 JUMPIFNOTEQ                      R68 R25 ; [+2]
      649 LOADN                            R67 0
      650 JUMPIFNOT                        R60 ; [+2]
      651 JUMPIFNOTEQKN                    R67 K84 [0] ; [+4]
      653 JUMPIFNOT                        R61 ; [+3]
      654 JUMPIFEQKN                       R67 K83 [1] ; [+2]
      656 LOADB                            R57 1
      657 JUMPIFNOT                        R57 ; [+4]
      658 LOADN                            R55 0
      659 NEWTABLE                         R54 0 0
      661 JUMP                             ; [+5]
      662 MOVE                             R70 R65
      663 MOVE                             R71 R66
      664 MOVE                             R72 R69
      665 CALL                             R70 2 0
      666 JUMP                             ; [+51]
      667 LOADK                            R74 K89 [{0.5, 0.5, 0.5}]
      668 SUB                              R73 R66 R74
      669 GETUPVAL                         R74 10
      670 MUL                              R72 R73 R74
      671 ADD                              R71 R39 R72
      672 SUB                              R70 R71 R36
      673 JUMPIFNOT                        R57 ; [+40]
      674 GETUPVAL                         R71 9
      675 GETTABLEKS                       R71 R71 K90 ["Subtract"]
      677 JUMPIFNOTEQ                      R7 R71 ; [+16]
      679 LOADN                            R71 0
      680 JUMPIFNOTLT                      R71 R67 ; [+13]
      682 JUMPIF                           R69 ; [+11]
      683 JUMPIFNOT                        R10 ; [+3]
      684 JUMPIFNOTEQ                      R68 R25 ; [+2]
      686 LOADN                            R67 0
      687 MOVE                             R71 R62
      688 MOVE                             R72 R66
      689 MOVE                             R73 R70
      690 MOVE                             R74 R67
      691 MOVE                             R75 R68
      692 CALL                             R71 4 0
      693 JUMP                             ; [+20]
      694 GETUPVAL                         R71 9
      695 GETTABLEKS                       R71 R71 K36 ["Add"]
      697 JUMPIFNOTEQ                      R7 R71 ; [+16]
      699 LOADN                            R71 1
      700 JUMPIFLT                         R67 R71 ; [+2]
      702 JUMPIFNOT                        R69 ; [+11]
      703 JUMPIFNOT                        R10 ; [+4]
      704 JUMPIFNOTEQ                      R68 R25 ; [+3]
      706 MOVE                             R68 R24
      707 LOADN                            R67 0
      708 MOVE                             R71 R63
      709 MOVE                             R72 R66
      710 MOVE                             R73 R70
      711 MOVE                             R74 R67
      712 MOVE                             R75 R68
      713 CALL                             R71 4 0
      714 MOVE                             R71 R65
      715 MOVE                             R72 R66
      716 MOVE                             R73 R69
      717 CALL                             R71 2 0
      718 JUMPBACK                         ; [-108]
      719 GETUPVAL                         R68 22
      720 GETTABLEKS                       R68 R68 K91 ["NormalizeDepthFirstSearch"]
      722 MOVE                             R69 R50
      723 MOVE                             R70 R55
      724 CALL                             R68 2 -1
      725 NAMECALL                         R66 R1 K92 ["addTimeStatistic"]
      727 CALL                             R66 -1 0
      728 JUMPIFNOT                        R45 ; [+5]
      729 MOVE                             R68 R41
      730 NAMECALL                         R66 R45 K93 ["write"]
      732 CALL                             R66 2 0
      733 JUMP                             ; [+10]
      734 GETUPVAL                         R66 5
      735 GETTABLEKS                       R66 R66 K35 ["Terrain"]
      737 MOVE                             R68 R41
      738 GETUPVAL                         R69 10
      739 MOVE                             R70 R48
      740 MOVE                             R71 R49
      741 NAMECALL                         R66 R66 K94 ["WriteVoxels"]
      743 CALL                             R66 5 0
      744 CLOSEUPVALS                      R46
      745 FORGLOOP                         R32 2 ; [-507]
      747 GETUPVAL                         R32 0
      748 GETTABLEKS                       R32 R32 K4 ["ProfileTools"]
      750 CALL                             R32 0 1
      751 JUMPIFNOT                        R32 ; [+3]
      752 GETIMPORT                        R32 K40 [debug.profileend]
      754 CALL                             R32 0 0
      755 LOADB                            R32 1
      756 LOADN                            R33 0
      757 RETURN                           R32 2

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ChangeHistoryService"]
        3 LOADK                            R4 K1 ["Sculpt"]
        4 NAMECALL                         R2 R2 K2 ["SetWaypoint"]
        6 CALL                             R2 2 0
        7 GETTABLEKS                       R3 R0 K3 ["State"]
        9 FASTCALL2K                       ASSERT R3 K4 ; [+4]
       11 LOADK                            R4 K4 ["Tried to step without starting first."]
       12 GETIMPORT                        R2 K6 [assert]
       14 CALL                             R2 2 0
       15 GETTABLEKS                       R2 R0 K3 ["State"]
       17 GETTABLEKS                       R2 R2 K7 ["Smooth"]
       19 JUMPIFNOT                        R2 ; [+7]
       20 GETTABLEKS                       R2 R0 K3 ["State"]
       22 GETTABLEKS                       R2 R2 K7 ["Smooth"]
       24 NAMECALL                         R2 R2 K8 ["cancel"]
       26 CALL                             R2 1 0
       27 RETURN                           R0 0

PROTO_7:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          UPVAL U4
        6 NEWCLOSURE                       R3 P1
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U6
       12 CAPTURE                          VAL R1
       13 CAPTURE                          UPVAL U7
       14 CAPTURE                          UPVAL U8
       15 CAPTURE                          UPVAL U9
       16 CAPTURE                          UPVAL U10
       17 CAPTURE                          UPVAL U3
       18 CAPTURE                          UPVAL U4
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          UPVAL U15
       24 CAPTURE                          UPVAL U16
       25 CAPTURE                          UPVAL U17
       26 CAPTURE                          UPVAL U18
       27 CAPTURE                          UPVAL U19
       28 CAPTURE                          UPVAL U20
       29 CAPTURE                          UPVAL U21
       30 NEWCLOSURE                       R4 P2
       31 CAPTURE                          VAL R1
       32 GETUPVAL                         R5 22
       33 GETTABLEKS                       R5 R5 K1 ["new"]
       35 DUPTABLE                         R6 K6 [{"Name", "OnFinish", "OnStart", "OnStep"}]
       36 SETTABLEKS                       R0 R6 K2 ["Name"]
       38 SETTABLEKS                       R4 R6 K3 ["OnFinish"]
       40 SETTABLEKS                       R2 R6 K4 ["OnStart"]
       42 SETTABLEKS                       R3 R6 K5 ["OnStep"]
       44 CALL                             R5 1 -1
       45 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Util"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["AnalyticsHelper"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["CalculateAutoMaterial"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["CalculateAutoMaterialByIdentity"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K7 [require]
       28 GETTABLEKS                       R6 R1 K11 ["CalculateBrushOccupancy"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K7 [require]
       33 GETTABLEKS                       R7 R1 K12 ["CalculateMagnitudePercent"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K7 [require]
       38 GETTABLEKS                       R8 R1 K13 ["ClampVoxelBoundaries"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K7 [require]
       43 GETTABLEKS                       R9 R1 K14 ["ConvertForPivot"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K7 [require]
       48 GETTABLEKS                       R10 R1 K15 ["getDraggedPositions"]
       50 CALL                             R9 1 1
       51 GETIMPORT                        R10 K7 [require]
       53 GETTABLEKS                       R11 R0 K4 ["Src"]
       55 GETTABLEKS                       R11 R11 K16 ["Resources"]
       57 GETTABLEKS                       R11 R11 K17 ["Constants"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R11 R10 K18 ["VoxelResolution"]
       62 GETIMPORT                        R12 K7 [require]
       64 GETTABLEKS                       R13 R0 K4 ["Src"]
       66 GETTABLEKS                       R13 R13 K5 ["Util"]
       68 GETTABLEKS                       R13 R13 K19 ["Operations"]
       70 GETTABLEKS                       R13 R13 K20 ["SculptMaterialBackend"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K7 [require]
       75 GETTABLEKS                       R14 R0 K4 ["Src"]
       77 GETTABLEKS                       R14 R14 K5 ["Util"]
       79 GETTABLEKS                       R14 R14 K19 ["Operations"]
       81 GETTABLEKS                       R14 R14 K21 ["SmoothOperation"]
       83 CALL                             R13 1 1
       84 GETIMPORT                        R14 K7 [require]
       86 GETTABLEKS                       R15 R0 K4 ["Src"]
       88 GETTABLEKS                       R15 R15 K22 ["Flags"]
       90 GETTABLEKS                       R15 R15 K23 ["getFFlagEnableTerrainPalette"]
       92 CALL                             R14 1 1
       93 GETIMPORT                        R15 K7 [require]
       95 GETTABLEKS                       R16 R0 K4 ["Src"]
       97 GETTABLEKS                       R16 R16 K5 ["Util"]
       99 GETTABLEKS                       R16 R16 K19 ["Operations"]
      101 GETTABLEKS                       R16 R16 K24 ["BaseOperation"]
      103 CALL                             R15 1 1
      104 GETIMPORT                        R16 K7 [require]
      106 GETTABLEKS                       R17 R0 K4 ["Src"]
      108 GETTABLEKS                       R17 R17 K25 ["Types"]
      110 CALL                             R16 1 1
      111 GETTABLEKS                       R17 R16 K26 ["BrushMode"]
      113 GETTABLEKS                       R18 R16 K27 ["BrushSettings"]
      115 GETTABLEKS                       R19 R16 K28 ["BrushShape"]
      117 GETTABLEKS                       R20 R16 K29 ["Category"]
      119 GETTABLEKS                       R21 R16 K30 ["PivotPosition"]
      121 GETTABLEKS                       R22 R16 K31 ["PlaneLock"]
      123 GETTABLEKS                       R23 R16 K32 ["MaterialSettings"]
      125 GETIMPORT                        R24 K7 [require]
      127 GETTABLEKS                       R25 R0 K4 ["Src"]
      129 GETTABLEKS                       R25 R25 K5 ["Util"]
      131 GETTABLEKS                       R25 R25 K33 ["DebugFlags"]
      133 CALL                             R24 1 1
      134 NEWTABLE                         R25 0 6
      136 LOADK                            R26 K34 [{-1, 0, 0}]
      137 LOADK                            R27 K35 [{1, 0, 0}]
      138 LOADK                            R28 K36 [{0, -1, 0}]
      139 LOADK                            R29 K37 [{0, 1, 0}]
      140 LOADK                            R30 K38 [{0, 0, -1}]
      141 LOADK                            R31 K39 [{0, 0, 1}]
      142 SETLIST                          R25 R26 6 [1]
      144 DUPCLOSURE                       R26 K40 [PROTO_7]
      145 CAPTURE                          VAL R20
      146 CAPTURE                          VAL R18
      147 CAPTURE                          VAL R19
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R8
      150 CAPTURE                          VAL R24
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R23
      153 CAPTURE                          VAL R14
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R17
      156 CAPTURE                          VAL R9
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R21
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R5
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R25
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R4
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R2
      167 CAPTURE                          VAL R15
      168 RETURN                           R26 1
