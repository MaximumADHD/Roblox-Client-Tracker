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
       77 JUMPIFNOT                        R14 ; [+34]
       78 JUMPIFNOT                        R15 ; [+33]
       79 JUMPIFNOT                        R16 ; [+32]
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
      101 JUMPIFNOT                        R19 ; [+5]
      102 GETIMPORT                        R19 K9 [Enum.Material.Water]
      104 JUMPIFNOTEQ                      R18 R19 ; [+2]
      106 LOADN                            R17 0
      107 LOADN                            R19 0
      108 JUMPIFNOTLE                      R17 R19 ; [+2]
      110 LOADB                            R6 1
      111 SUB                              R7 R7 R17
      112 FORGLOOP                         R8 2 ; [-82]
      114 LOADN                            R9 1
      115 JUMPIFLT                         R2 R9 ; [+2]
      117 JUMPIFNOT                        R6 ; [+9]
      118 GETUPVAL                         R14 4
      119 LENGTH                           R13 R14
      120 DIV                              R12 R7 R13
      121 GETUPVAL                         R13 9
      122 MUL                              R11 R12 R13
      123 MUL                              R10 R11 R4
      124 MUL                              R9 R10 R5
      125 SUB                              R8 R2 R9
      126 JUMP                             ; [+1]
      127 MOVE                             R8 R2
      128 FASTCALL2K                       MATH_MAX R8 K1 ; [+5]
      130 MOVE                             R10 R8
      131 LOADK                            R11 K1 [0]
      132 GETIMPORT                        R9 K12 [math.max]
      134 CALL                             R9 2 1
      135 MOVE                             R8 R9
      136 GETUPVAL                         R9 10
      137 GETTABLEKS                       R9 R9 K13 ["MinimumOccupancy"]
      139 JUMPIFNOTLE                      R8 R9 ; [+44]
      141 GETUPVAL                         R11 11
      142 GETTABLEKS                       R12 R0 K3 ["X"]
      144 GETTABLE                         R10 R11 R12
      145 GETTABLEKS                       R11 R0 K4 ["Y"]
      147 GETTABLE                         R9 R10 R11
      148 GETTABLEKS                       R10 R0 K5 ["Z"]
      150 LOADN                            R11 0
      151 SETTABLE                         R11 R9 R10
      152 GETUPVAL                         R11 12
      153 GETTABLEKS                       R12 R0 K3 ["X"]
      155 GETTABLE                         R10 R11 R12
      156 GETTABLEKS                       R11 R0 K4 ["Y"]
      158 GETTABLE                         R9 R10 R11
      159 GETTABLEKS                       R10 R0 K5 ["Z"]
      161 GETIMPORT                        R11 K15 [Enum.Material.Air]
      163 SETTABLE                         R11 R9 R10
      164 GETUPVAL                         R9 13
      165 JUMPIF                           R9 ; [+49]
      166 GETTABLEKS                       R9 R1 K0 ["Magnitude"]
      168 GETUPVAL                         R10 14
      169 GETTABLEKS                       R10 R10 K16 ["NextMagnitude"]
      171 JUMPIFNOTLT                      R9 R10 ; [+43]
      173 GETUPVAL                         R9 14
      174 GETTABLEKS                       R10 R1 K0 ["Magnitude"]
      176 SETTABLEKS                       R10 R9 K16 ["NextMagnitude"]
      178 GETUPVAL                         R9 14
      179 GETUPVAL                         R11 15
      180 ADD                              R10 R1 R11
      181 SETTABLEKS                       R10 R9 K17 ["NextStartPosition"]
      183 RETURN                           R0 0
      184 JUMPIFEQ                         R8 R2 ; [+30]
      186 GETUPVAL                         R11 11
      187 GETTABLEKS                       R12 R0 K3 ["X"]
      189 GETTABLE                         R10 R11 R12
      190 GETTABLEKS                       R11 R0 K4 ["Y"]
      192 GETTABLE                         R9 R10 R11
      193 GETTABLEKS                       R10 R0 K5 ["Z"]
      195 SETTABLE                         R8 R9 R10
      196 GETUPVAL                         R9 13
      197 JUMPIF                           R9 ; [+17]
      198 GETTABLEKS                       R9 R1 K0 ["Magnitude"]
      200 GETUPVAL                         R10 14
      201 GETTABLEKS                       R10 R10 K16 ["NextMagnitude"]
      203 JUMPIFNOTLT                      R9 R10 ; [+11]
      205 GETUPVAL                         R9 14
      206 GETTABLEKS                       R10 R1 K0 ["Magnitude"]
      208 SETTABLEKS                       R10 R9 K16 ["NextMagnitude"]
      210 GETUPVAL                         R9 14
      211 GETUPVAL                         R11 15
      212 ADD                              R10 R1 R11
      213 SETTABLEKS                       R10 R9 K17 ["NextStartPosition"]
      215 RETURN                           R0 0

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
       78 JUMPIFNOT                        R15 ; [+35]
       79 JUMPIFNOT                        R16 ; [+34]
       80 JUMPIFNOT                        R17 ; [+33]
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
      102 JUMPIFNOT                        R20 ; [+5]
      103 GETIMPORT                        R20 K9 [Enum.Material.Water]
      105 JUMPIFNOTEQ                      R19 R20 ; [+2]
      107 LOADN                            R18 0
      108 LOADN                            R20 1
      109 JUMPIFNOTLE                      R20 R18 ; [+2]
      111 LOADB                            R6 1
      112 ADDK                             R8 R8 K1 [1]
      113 ADD                              R7 R7 R18
      114 FORGLOOP                         R9 2 ; [-83]
      116 JUMPIFNOTEQKN                    R8 K10 [0] ; [+3]
      118 LOADN                            R7 0
      119 JUMP                             ; [+1]
      120 DIV                              R7 R7 R8
      121 LOADN                            R10 0
      122 JUMPIFLT                         R10 R2 ; [+2]
      124 JUMPIFNOT                        R6 ; [+6]
      125 GETUPVAL                         R13 9
      126 MUL                              R12 R7 R13
      127 MUL                              R11 R12 R4
      128 MUL                              R10 R11 R5
      129 ADD                              R9 R2 R10
      130 JUMP                             ; [+1]
      131 MOVE                             R9 R2
      132 GETUPVAL                         R12 10
      133 GETTABLEKS                       R12 R12 K11 ["MaximumOccupancy"]
      135 FASTCALL2                        MATH_MIN R9 R12 ; [+4]
      137 MOVE                             R11 R9
      138 GETIMPORT                        R10 K14 [math.min]
      140 CALL                             R10 2 1
      141 MOVE                             R9 R10
      142 GETIMPORT                        R10 K16 [Enum.Material.Air]
      144 JUMPIFNOTEQ                      R3 R10 ; [+36]
      146 LOADN                            R10 0
      147 JUMPIFNOTLT                      R10 R9 ; [+33]
      149 GETUPVAL                         R11 11
      150 JUMPIFNOT                        R11 ; [+11]
      151 GETUPVAL                         R10 12
      152 GETTABLEKS                       R11 R0 K3 ["X"]
      154 GETTABLEKS                       R12 R0 K4 ["Y"]
      156 GETTABLEKS                       R13 R0 K5 ["Z"]
      158 GETUPVAL                         R14 7
      159 GETUPVAL                         R15 5
      160 CALL                             R10 5 1
      161 JUMP                             ; [+1]
      162 GETUPVAL                         R10 13
      163 GETUPVAL                         R11 8
      164 JUMPIFNOT                        R11 ; [+6]
      165 GETIMPORT                        R11 K9 [Enum.Material.Water]
      167 JUMPIFNOTEQ                      R10 R11 ; [+3]
      169 GETIMPORT                        R10 K16 [Enum.Material.Air]
      171 GETUPVAL                         R13 14
      172 GETTABLEKS                       R14 R0 K3 ["X"]
      174 GETTABLE                         R12 R13 R14
      175 GETTABLEKS                       R13 R0 K4 ["Y"]
      177 GETTABLE                         R11 R12 R13
      178 GETTABLEKS                       R12 R0 K5 ["Z"]
      180 SETTABLE                         R10 R11 R12
      181 JUMPIFEQ                         R9 R2 ; [+30]
      183 GETUPVAL                         R12 15
      184 GETTABLEKS                       R13 R0 K3 ["X"]
      186 GETTABLE                         R11 R12 R13
      187 GETTABLEKS                       R12 R0 K4 ["Y"]
      189 GETTABLE                         R10 R11 R12
      190 GETTABLEKS                       R11 R0 K5 ["Z"]
      192 SETTABLE                         R9 R10 R11
      193 GETUPVAL                         R10 16
      194 JUMPIF                           R10 ; [+17]
      195 GETTABLEKS                       R10 R1 K0 ["Magnitude"]
      197 GETUPVAL                         R11 17
      198 GETTABLEKS                       R11 R11 K17 ["NextMagnitude"]
      200 JUMPIFNOTLT                      R10 R11 ; [+11]
      202 GETUPVAL                         R10 17
      203 GETTABLEKS                       R11 R1 K0 ["Magnitude"]
      205 SETTABLEKS                       R11 R10 K17 ["NextMagnitude"]
      207 GETUPVAL                         R10 17
      208 GETUPVAL                         R12 18
      209 ADD                              R11 R1 R12
      210 SETTABLEKS                       R11 R10 K18 ["NextStartPosition"]
      212 RETURN                           R0 0

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
       68 JUMPIFNOT                        R13 ; [+51]
       69 JUMPIFNOT                        R14 ; [+50]
       70 JUMPIFNOT                        R15 ; [+49]
       71 JUMPIFNOTEQKN                    R5 K6 [0] ; [+5]
       73 JUMPIFNOTEQKN                    R8 K6 [0] ; [+3]
       75 JUMPIFEQKN                       R11 K6 [0] ; [+44]
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
       97 GETIMPORT                        R19 K10 [Enum.Material.Water]
       99 JUMPIFEQ                         R18 R19 ; [+2]
      101 LOADB                            R17 0 +1
      102 LOADB                            R17 1
      103 GETUPVAL                         R18 3
      104 JUMPIFNOT                        R18 ; [+2]
      105 JUMPIFNOT                        R17 ; [+1]
      106 LOADN                            R16 0
      107 LOADN                            R18 0
      108 JUMPIFNOTLT                      R18 R16 ; [+2]
      110 LOADB                            R1 0
      111 LOADN                            R18 1
      112 JUMPIFNOTLT                      R16 R18 ; [+2]
      114 LOADB                            R2 0
      115 JUMPIF                           R2 ; [+4]
      116 JUMPIF                           R1 ; [+3]
      117 LOADB                            R18 0
      118 LOADB                            R19 0
      119 RETURN                           R18 2
      120 FORNLOOP                         R9
      121 FORNLOOP                         R6
      122 FORNLOOP                         R3
      123 RETURN                           R1 2

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
       37 JUMPIF                           R5 ; [+246]
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
      104 JUMPIFNOT                        R17 ; [+176]
      105 JUMPIFNOT                        R18 ; [+175]
      106 JUMPIFNOT                        R19 ; [+174]
      107 JUMPIFNOTEQKN                    R8 K4 [0] ; [+5]
      109 JUMPIFNOTEQKN                    R11 K4 [0] ; [+3]
      111 JUMPIFEQKN                       R14 K4 [0] ; [+169]
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
      163 JUMP                             ; [+117]
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
      185 JUMPIFNOT                        R22 ; [+6]
      186 GETIMPORT                        R23 K15 [Enum.Material.Water]
      188 JUMPIFEQ                         R21 R23 ; [+2]
      190 LOADB                            R22 0 +1
      191 LOADB                            R22 1
      192 JUMPIFNOT                        R22 ; [+1]
      193 LOADN                            R20 0
      194 LOADB                            R23 0
      195 LOADB                            R24 0
      196 GETUPVAL                         R25 3
      197 GETUPVAL                         R26 4
      198 GETTABLEKS                       R26 R26 K3 ["Add"]
      200 JUMPIFNOTEQ                      R25 R26 ; [+13]
      202 LOADN                            R25 1
      203 JUMPIFLT                         R20 R25 ; [+2]
      205 LOADB                            R24 0 +1
      206 LOADB                            R24 1
      207 JUMPIFEQKN                       R4 K4 [0] ; [+2]
      209 JUMPIFNOT                        R1 ; [+21]
      210 JUMPIFNOTEQKN                    R20 K4 [0] ; [+20]
      212 LOADB                            R24 0
      213 JUMP                             ; [+17]
      214 GETUPVAL                         R25 3
      215 GETUPVAL                         R26 4
      216 GETTABLEKS                       R26 R26 K16 ["Subtract"]
      218 JUMPIFNOTEQ                      R25 R26 ; [+12]
      220 LOADN                            R25 0
      221 JUMPIFLT                         R25 R20 ; [+2]
      223 LOADB                            R23 0 +1
      224 LOADB                            R23 1
      225 JUMPIFNOTEQKN                    R4 K5 [1] ; [+5]
      227 JUMPIF                           R1 ; [+3]
      228 JUMPIFNOTEQKN                    R20 K5 [1] ; [+2]
      230 LOADB                            R23 0
      231 JUMPIF                           R24 ; [+1]
      232 JUMPIFNOT                        R23 ; [+48]
      233 GETUPVAL                         R26 6
      234 GETTABLEKS                       R28 R16 K0 ["X"]
      236 GETUPVAL                         R30 5
      237 GETTABLEKS                       R30 R30 K0 ["X"]
      239 GETTABLEKS                       R32 R16 K1 ["Y"]
      241 GETUPVAL                         R34 5
      242 GETTABLEKS                       R34 R34 K0 ["X"]
      244 GETTABLEKS                       R35 R16 K2 ["Z"]
      246 MUL                              R33 R34 R35
      247 ADD                              R31 R32 R33
      248 MUL                              R29 R30 R31
      249 ADD                              R27 R28 R29
      250 GETTABLE                         R25 R26 R27
      251 JUMPIF                           R25 ; [+29]
      252 GETUPVAL                         R25 6
      253 GETTABLEKS                       R27 R16 K0 ["X"]
      255 GETUPVAL                         R29 5
      256 GETTABLEKS                       R29 R29 K0 ["X"]
      258 GETTABLEKS                       R31 R16 K1 ["Y"]
      260 GETUPVAL                         R33 5
      261 GETTABLEKS                       R33 R33 K0 ["X"]
      263 GETTABLEKS                       R34 R16 K2 ["Z"]
      265 MUL                              R32 R33 R34
      266 ADD                              R30 R31 R32
      267 MUL                              R28 R29 R30
      268 ADD                              R26 R27 R28
      269 LOADB                            R27 1
      270 SETTABLE                         R27 R25 R26
      271 GETUPVAL                         R25 7
      272 ADDK                             R25 R25 K5 [1]
      273 SETUPVAL                         R25 7
      274 GETUPVAL                         R26 8
      275 FASTCALL2                        TABLE_INSERT R26 R16 ; [+4]
      277 MOVE                             R27 R16
      278 GETIMPORT                        R25 K11 [table.insert]
      280 CALL                             R25 2 0
      281 FORNLOOP                         R12
      282 FORNLOOP                         R9
      283 FORNLOOP                         R6
      284 RETURN                           R0 0

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
      148 GETUPVAL                         R23 3
      149 GETTABLEKS                       R23 R23 K22 ["Sphere"]
      151 JUMPIFNOTEQ                      R8 R23 ; [+3]
      153 MOVE                             R22 R6
      154 JUMP                             ; [+1]
      155 MOVE                             R22 R5
      156 GETUPVAL                         R23 7
      157 MUL                              R21 R22 R23
      158 GETUPVAL                         R23 7
      159 MUL                              R22 R6 R23
      160 MULK                             R23 R22 K33 [0.5]
      161 GETUPVAL                         R24 8
      162 GETUPVAL                         R26 2
      163 GETTABLEKS                       R26 R26 K18 ["PivotPosition"]
      165 GETTABLE                         R25 R3 R26
      166 GETTABLEKS                       R26 R14 K29 ["Position"]
      168 MOVE                             R27 R21
      169 CALL                             R24 3 1
      170 GETUPVAL                         R25 9
      171 GETTABLEKS                       R26 R2 K29 ["Position"]
      173 MOVE                             R27 R24
      174 MOVE                             R28 R23
      175 CALL                             R25 3 1
      176 LENGTH                           R27 R25
      177 GETTABLE                         R26 R25 R27
      178 SETTABLEKS                       R26 R2 K29 ["Position"]
      180 MOVE                             R26 R25
      181 LOADNIL                          R27
      182 LOADNIL                          R28
      183 FORGPREP                         R26
      184 ADDK                             R32 R13 K34 [0.08]
      185 FASTCALL1                        MATH_LOG R6 ; [+3]
      186 MOVE                             R36 R6
      187 GETIMPORT                        R35 K39 [math.log]
      189 CALL                             R35 1 1
      190 DIVK                             R34 R35 K36 [14]
      191 ADDK                             R33 R34 K35 [0.025]
      192 MUL                              R31 R32 R33
      193 ADDK                             R33 R13 K34 [0.08]
      194 FASTCALL1                        MATH_LOG R6 ; [+3]
      195 MOVE                             R37 R6
      196 GETIMPORT                        R36 K39 [math.log]
      198 CALL                             R36 1 1
      199 DIVK                             R35 R36 K40 [28]
      200 ADDK                             R34 R35 K35 [0.025]
      201 MUL                              R32 R33 R34
      202 GETUPVAL                         R33 10
      203 MOVE                             R34 R30
      204 MOVE                             R35 R23
      205 MOVE                             R36 R21
      206 CALL                             R33 3 2
      207 GETIMPORT                        R35 K43 [Region3.new]
      209 MOVE                             R36 R33
      210 MOVE                             R37 R34
      211 CALL                             R35 2 1
      212 GETTABLEKS                       R38 R34 K44 ["X"]
      214 GETTABLEKS                       R39 R33 K44 ["X"]
      216 SUB                              R37 R38 R39
      217 MULK                             R36 R37 K33 [0.5]
      218 LOADB                            R37 0
      219 GETUPVAL                         R38 11
      220 GETTABLEKS                       R38 R38 K45 ["Center"]
      222 JUMPIFNOTEQ                      R11 R38 ; [+11]
      224 LOADB                            R37 0
      225 GETUPVAL                         R38 12
      226 GETTABLEKS                       R38 R38 K46 ["Off"]
      228 JUMPIFNOTEQ                      R12 R38 ; [+5]
      230 JUMPIFEQKB                       R9 TRUE ; [+2]
      232 LOADB                            R37 0 +1
      233 LOADB                            R37 1
      234 NEWTABLE                         R38 0 0
      236 GETUPVAL                         R39 5
      237 GETTABLEKS                       R39 R39 K47 ["Terrain"]
      239 MOVE                             R41 R35
      240 GETUPVAL                         R42 7
      241 NAMECALL                         R39 R39 K48 ["ReadVoxels"]
      243 CALL                             R39 3 2
      244 GETUPVAL                         R41 5
      245 GETTABLEKS                       R41 R41 K47 ["Terrain"]
      247 MOVE                             R43 R35
      248 GETUPVAL                         R44 7
      249 NAMECALL                         R41 R41 K48 ["ReadVoxels"]
      251 CALL                             R41 3 2
      252 GETIMPORT                        R43 K51 [os.clock]
      254 CALL                             R43 0 1
      255 LOADNIL                          R44
      256 SETTABLEKS                       R44 R39 K13 ["Size"]
      258 LOADNIL                          R44
      259 SETTABLEKS                       R44 R40 K13 ["Size"]
      261 LENGTH                           R44 R39
      262 GETTABLEN                        R46 R39 1
      263 LENGTH                           R45 R46
      264 GETTABLEN                        R48 R39 1
      265 GETTABLEN                        R47 R48 1
      266 LENGTH                           R46 R47
      267 GETIMPORT                        R47 K54 [table.create]
      269 MUL                              R49 R44 R45
      270 MUL                              R48 R49 R46
      271 LOADB                            R49 0
      272 CALL                             R47 2 1
      273 LOADN                            R48 0
      274 FASTCALL3                        VECTOR R44 R45 R46
      276 MOVE                             R50 R44
      277 MOVE                             R51 R45
      278 MOVE                             R52 R46
      279 GETIMPORT                        R49 K56 [Vector3.new]
      281 CALL                             R49 3 1
      282 MOVE                             R50 R37
      283 LOADNIL                          R51
      284 JUMPIF                           R37 ; [+17]
      285 GETTABLEKS                       R52 R2 K57 ["NextStartPosition"]
      287 JUMPIFNOT                        R52 ; [+14]
      288 GETUPVAL                         R52 13
      289 GETTABLEKS                       R54 R2 K57 ["NextStartPosition"]
      291 SUB                              R53 R54 R30
      292 GETTABLEKS                       R53 R53 K58 ["Magnitude"]
      294 MOVE                             R54 R36
      295 CALL                             R52 2 1
      296 LOADK                            R53 K33 [0.5]
      297 JUMPIFNOTLT                      R53 R52 ; [+4]
      299 GETTABLEKS                       R51 R2 K57 ["NextStartPosition"]
      301 JUMP                             ; [+1]
      302 MOVE                             R51 R30
      303 GETTABLEKS                       R56 R51 K44 ["X"]
      305 GETTABLEKS                       R57 R33 K44 ["X"]
      307 SUB                              R55 R56 R57
      308 GETUPVAL                         R56 7
      309 DIV                              R54 R55 R56
      310 FASTCALL1                        MATH_ROUND R54 ; [+2]
      311 GETIMPORT                        R53 K60 [math.round]
      313 CALL                             R53 1 1
      314 GETTABLEKS                       R57 R51 K61 ["Y"]
      316 GETTABLEKS                       R58 R33 K61 ["Y"]
      318 SUB                              R56 R57 R58
      319 GETUPVAL                         R57 7
      320 DIV                              R55 R56 R57
      321 FASTCALL1                        MATH_ROUND R55 ; [+2]
      322 GETIMPORT                        R54 K60 [math.round]
      324 CALL                             R54 1 1
      325 GETTABLEKS                       R58 R51 K62 ["Z"]
      327 GETTABLEKS                       R59 R33 K62 ["Z"]
      329 SUB                              R57 R58 R59
      330 GETUPVAL                         R58 7
      331 DIV                              R56 R57 R58
      332 FASTCALL1                        MATH_ROUND R56 ; [+2]
      333 GETIMPORT                        R55 K60 [math.round]
      335 CALL                             R55 1 1
      336 FASTCALL                         VECTOR ; [+2]
      337 GETIMPORT                        R52 K56 [Vector3.new]
      339 CALL                             R52 3 1
      340 GETUPVAL                         R54 7
      341 MUL                              R53 R6 R54
      342 SETTABLEKS                       R53 R2 K63 ["NextMagnitude"]
      344 LOADB                            R53 0
      345 LOADB                            R54 0
      346 LOADN                            R57 -1
      347 LOADN                            R55 1
      348 LOADN                            R56 1
      349 FORNPREP                         R55
      350 LOADN                            R60 -1
      351 LOADN                            R58 1
      352 LOADN                            R59 1
      353 FORNPREP                         R58
      354 LOADN                            R63 -1
      355 LOADN                            R61 1
      356 LOADN                            R62 1
      357 FORNPREP                         R61
      358 FASTCALL3                        VECTOR R57 R60 R63
      360 MOVE                             R66 R57
      361 MOVE                             R67 R60
      362 MOVE                             R68 R63
      363 GETIMPORT                        R65 K56 [Vector3.new]
      365 CALL                             R65 3 1
      366 ADD                              R64 R52 R65
      367 LOADB                            R65 0
      368 GETTABLEKS                       R66 R64 K44 ["X"]
      370 LOADN                            R67 0
      371 JUMPIFNOTLT                      R67 R66 ; [+9]
      373 GETTABLEKS                       R66 R64 K44 ["X"]
      375 GETTABLEKS                       R67 R49 K44 ["X"]
      377 JUMPIFLE                         R66 R67 ; [+2]
      379 LOADB                            R65 0 +1
      380 LOADB                            R65 1
      381 LOADB                            R66 0
      382 GETTABLEKS                       R67 R64 K61 ["Y"]
      384 LOADN                            R68 0
      385 JUMPIFNOTLT                      R68 R67 ; [+9]
      387 GETTABLEKS                       R67 R64 K61 ["Y"]
      389 GETTABLEKS                       R68 R49 K61 ["Y"]
      391 JUMPIFLE                         R67 R68 ; [+2]
      393 LOADB                            R66 0 +1
      394 LOADB                            R66 1
      395 LOADB                            R67 0
      396 GETTABLEKS                       R68 R64 K62 ["Z"]
      398 LOADN                            R69 0
      399 JUMPIFNOTLT                      R69 R68 ; [+9]
      401 GETTABLEKS                       R68 R64 K62 ["Z"]
      403 GETTABLEKS                       R69 R49 K62 ["Z"]
      405 JUMPIFLE                         R68 R69 ; [+2]
      407 LOADB                            R67 0 +1
      408 LOADB                            R67 1
      409 JUMPIFNOT                        R65 ; [+53]
      410 JUMPIFNOT                        R66 ; [+52]
      411 JUMPIFNOT                        R67 ; [+51]
      412 GETTABLEKS                       R69 R64 K44 ["X"]
      414 GETTABLEKS                       R71 R49 K44 ["X"]
      416 GETTABLEKS                       R73 R64 K61 ["Y"]
      418 GETTABLEKS                       R75 R49 K44 ["X"]
      420 GETTABLEKS                       R76 R64 K62 ["Z"]
      422 MUL                              R74 R75 R76
      423 ADD                              R72 R73 R74
      424 MUL                              R70 R71 R72
      425 ADD                              R68 R69 R70
      426 LOADB                            R69 1
      427 SETTABLE                         R69 R47 R68
      428 ADDK                             R48 R48 K64 [1]
      429 GETTABLEKS                       R71 R64 K44 ["X"]
      431 GETTABLE                         R70 R40 R71
      432 GETTABLEKS                       R71 R64 K61 ["Y"]
      434 GETTABLE                         R69 R70 R71
      435 GETTABLEKS                       R70 R64 K62 ["Z"]
      437 GETTABLE                         R68 R69 R70
      438 JUMPIFNOTEQKN                    R68 K65 [0] ; [+3]
      440 LOADB                            R53 1
      441 JUMP                             ; [+14]
      442 GETTABLEKS                       R71 R64 K44 ["X"]
      444 GETTABLE                         R70 R40 R71
      445 GETTABLEKS                       R71 R64 K61 ["Y"]
      447 GETTABLE                         R69 R70 R71
      448 GETTABLEKS                       R70 R64 K62 ["Z"]
      450 GETTABLE                         R68 R69 R70
      451 JUMPIFNOTEQKN                    R68 K64 [1] ; [+3]
      453 LOADB                            R54 1
      454 JUMP                             ; [+1]
      455 LOADB                            R50 1
      456 FASTCALL2                        TABLE_INSERT R38 R64 ; [+5]
      458 MOVE                             R69 R38
      459 MOVE                             R70 R64
      460 GETIMPORT                        R68 K67 [table.insert]
      462 CALL                             R68 2 0
      463 FORNLOOP                         R61
      464 FORNLOOP                         R58
      465 FORNLOOP                         R55
      466 JUMPIFNOT                        R53 ; [+2]
      467 JUMPIFNOT                        R54 ; [+1]
      468 LOADB                            R50 1
      469 NEWCLOSURE                       R55 P0
      470 CAPTURE                          VAL R17
      471 CAPTURE                          UPVAL U13
      472 CAPTURE                          VAL R36
      473 CAPTURE                          UPVAL U14
      474 CAPTURE                          UPVAL U15
      475 CAPTURE                          VAL R49
      476 CAPTURE                          VAL R40
      477 CAPTURE                          VAL R39
      478 CAPTURE                          VAL R10
      479 CAPTURE                          VAL R31
      480 CAPTURE                          UPVAL U16
      481 CAPTURE                          VAL R42
      482 CAPTURE                          VAL R41
      483 CAPTURE                          VAL R37
      484 CAPTURE                          VAL R2
      485 CAPTURE                          VAL R30
      486 NEWCLOSURE                       R56 P1
      487 CAPTURE                          VAL R17
      488 CAPTURE                          UPVAL U13
      489 CAPTURE                          VAL R36
      490 CAPTURE                          UPVAL U14
      491 CAPTURE                          UPVAL U15
      492 CAPTURE                          VAL R49
      493 CAPTURE                          VAL R40
      494 CAPTURE                          VAL R39
      495 CAPTURE                          VAL R10
      496 CAPTURE                          VAL R32
      497 CAPTURE                          UPVAL U16
      498 CAPTURE                          VAL R19
      499 CAPTURE                          UPVAL U17
      500 CAPTURE                          VAL R20
      501 CAPTURE                          VAL R41
      502 CAPTURE                          VAL R42
      503 CAPTURE                          VAL R37
      504 CAPTURE                          VAL R2
      505 CAPTURE                          VAL R30
      506 NEWCLOSURE                       R57 P2
      507 CAPTURE                          VAL R49
      508 CAPTURE                          VAL R40
      509 CAPTURE                          VAL R39
      510 CAPTURE                          VAL R10
      511 NEWCLOSURE                       R58 P3
      512 CAPTURE                          VAL R57
      513 CAPTURE                          VAL R40
      514 CAPTURE                          REF R50
      515 CAPTURE                          VAL R7
      516 CAPTURE                          UPVAL U18
      517 CAPTURE                          VAL R49
      518 CAPTURE                          REF R47
      519 CAPTURE                          REF R48
      520 CAPTURE                          VAL R38
      521 CAPTURE                          VAL R39
      522 CAPTURE                          VAL R10
      523 LENGTH                           R59 R38
      524 LOADN                            R60 0
      525 JUMPIFNOTLT                      R60 R59 ; [+116]
      527 GETIMPORT                        R59 K69 [table.remove]
      529 MOVE                             R60 R38
      530 CALL                             R59 1 1
      531 GETTABLEKS                       R63 R59 K44 ["X"]
      533 GETTABLE                         R62 R40 R63
      534 GETTABLEKS                       R63 R59 K61 ["Y"]
      536 GETTABLE                         R61 R62 R63
      537 GETTABLEKS                       R62 R59 K62 ["Z"]
      539 GETTABLE                         R60 R61 R62
      540 GETTABLEKS                       R64 R59 K44 ["X"]
      542 GETTABLE                         R63 R39 R64
      543 GETTABLEKS                       R64 R59 K61 ["Y"]
      545 GETTABLE                         R62 R63 R64
      546 GETTABLEKS                       R63 R59 K62 ["Z"]
      548 GETTABLE                         R61 R62 R63
      549 JUMPIFNOT                        R10 ; [+5]
      550 LOADB                            R62 1
      551 GETIMPORT                        R63 K73 [Enum.Material.Water]
      553 JUMPIFEQ                         R61 R63 ; [+7]
      555 GETIMPORT                        R63 K75 [Enum.Material.Air]
      557 JUMPIFEQ                         R61 R63 ; [+2]
      559 LOADB                            R62 0 +1
      560 LOADB                            R62 1
      561 JUMPIF                           R50 ; [+23]
      562 JUMPIFNOT                        R10 ; [+5]
      563 GETIMPORT                        R63 K73 [Enum.Material.Water]
      565 JUMPIFNOTEQ                      R61 R63 ; [+2]
      567 LOADN                            R60 0
      568 JUMPIFNOT                        R53 ; [+2]
      569 JUMPIFNOTEQKN                    R60 K65 [0] ; [+4]
      571 JUMPIFNOT                        R54 ; [+3]
      572 JUMPIFEQKN                       R60 K64 [1] ; [+2]
      574 LOADB                            R50 1
      575 JUMPIFNOT                        R50 ; [+4]
      576 LOADN                            R48 0
      577 NEWTABLE                         R47 0 0
      579 JUMP                             ; [+5]
      580 MOVE                             R63 R58
      581 MOVE                             R64 R59
      582 MOVE                             R65 R62
      583 CALL                             R63 2 0
      584 JUMP                             ; [+56]
      585 LOADK                            R67 K76 [{0.5, 0.5, 0.5}]
      586 SUB                              R66 R59 R67
      587 GETUPVAL                         R67 7
      588 MUL                              R65 R66 R67
      589 ADD                              R64 R33 R65
      590 SUB                              R63 R64 R30
      591 JUMPIFNOT                        R50 ; [+45]
      592 GETUPVAL                         R64 18
      593 GETTABLEKS                       R64 R64 K77 ["Subtract"]
      595 JUMPIFNOTEQ                      R7 R64 ; [+18]
      597 LOADN                            R64 0
      598 JUMPIFNOTLT                      R64 R60 ; [+15]
      600 JUMPIF                           R62 ; [+13]
      601 JUMPIFNOT                        R10 ; [+5]
      602 GETIMPORT                        R64 K73 [Enum.Material.Water]
      604 JUMPIFNOTEQ                      R61 R64 ; [+2]
      606 LOADN                            R60 0
      607 MOVE                             R64 R55
      608 MOVE                             R65 R59
      609 MOVE                             R66 R63
      610 MOVE                             R67 R60
      611 MOVE                             R68 R61
      612 CALL                             R64 4 0
      613 JUMP                             ; [+23]
      614 GETUPVAL                         R64 18
      615 GETTABLEKS                       R64 R64 K78 ["Add"]
      617 JUMPIFNOTEQ                      R7 R64 ; [+19]
      619 LOADN                            R64 1
      620 JUMPIFLT                         R60 R64 ; [+2]
      622 JUMPIFNOT                        R62 ; [+14]
      623 JUMPIFNOT                        R10 ; [+7]
      624 GETIMPORT                        R64 K73 [Enum.Material.Water]
      626 JUMPIFNOTEQ                      R61 R64 ; [+4]
      628 GETIMPORT                        R61 K75 [Enum.Material.Air]
      630 LOADN                            R60 0
      631 MOVE                             R64 R56
      632 MOVE                             R65 R59
      633 MOVE                             R66 R63
      634 MOVE                             R67 R60
      635 MOVE                             R68 R61
      636 CALL                             R64 4 0
      637 MOVE                             R64 R58
      638 MOVE                             R65 R59
      639 MOVE                             R66 R62
      640 CALL                             R64 2 0
      641 JUMPBACK                         ; [-119]
      642 GETUPVAL                         R61 19
      643 GETTABLEKS                       R61 R61 K79 ["NormalizeDepthFirstSearch"]
      645 MOVE                             R62 R43
      646 MOVE                             R63 R48
      647 CALL                             R61 2 -1
      648 NAMECALL                         R59 R1 K80 ["addTimeStatistic"]
      650 CALL                             R59 -1 0
      651 GETUPVAL                         R59 5
      652 GETTABLEKS                       R59 R59 K47 ["Terrain"]
      654 MOVE                             R61 R35
      655 GETUPVAL                         R62 7
      656 MOVE                             R63 R41
      657 MOVE                             R64 R42
      658 NAMECALL                         R59 R59 K81 ["WriteVoxels"]
      660 CALL                             R59 5 0
      661 CLOSEUPVALS                      R47
      662 FORGLOOP                         R26 2 ; [-479]
      664 GETUPVAL                         R26 0
      665 GETTABLEKS                       R26 R26 K4 ["ProfileTools"]
      667 CALL                             R26 0 1
      668 JUMPIFNOT                        R26 ; [+3]
      669 GETIMPORT                        R26 K83 [debug.profileend]
      671 CALL                             R26 0 0
      672 LOADB                            R26 1
      673 LOADN                            R27 0
      674 RETURN                           R26 2

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
       14 CAPTURE                          UPVAL U3
       15 CAPTURE                          UPVAL U4
       16 CAPTURE                          UPVAL U8
       17 CAPTURE                          UPVAL U9
       18 CAPTURE                          UPVAL U10
       19 CAPTURE                          UPVAL U11
       20 CAPTURE                          UPVAL U12
       21 CAPTURE                          UPVAL U13
       22 CAPTURE                          UPVAL U14
       23 CAPTURE                          UPVAL U15
       24 CAPTURE                          UPVAL U16
       25 CAPTURE                          UPVAL U17
       26 CAPTURE                          UPVAL U18
       27 NEWCLOSURE                       R4 P2
       28 CAPTURE                          VAL R1
       29 GETUPVAL                         R5 19
       30 GETTABLEKS                       R5 R5 K1 ["new"]
       32 DUPTABLE                         R6 K6 [{"Name", "OnFinish", "OnStart", "OnStep"}]
       33 SETTABLEKS                       R0 R6 K2 ["Name"]
       35 SETTABLEKS                       R4 R6 K3 ["OnFinish"]
       37 SETTABLEKS                       R2 R6 K4 ["OnStart"]
       39 SETTABLEKS                       R3 R6 K5 ["OnStep"]
       41 CALL                             R5 1 -1
       42 RETURN                           R5 -1

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
       23 GETTABLEKS                       R5 R1 K10 ["CalculateBrushOccupancy"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K7 [require]
       28 GETTABLEKS                       R6 R1 K11 ["CalculateMagnitudePercent"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K7 [require]
       33 GETTABLEKS                       R7 R1 K12 ["ClampVoxelBoundaries"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K7 [require]
       38 GETTABLEKS                       R8 R1 K13 ["ConvertForPivot"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K7 [require]
       43 GETTABLEKS                       R9 R1 K14 ["getDraggedPositions"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K7 [require]
       48 GETTABLEKS                       R10 R0 K4 ["Src"]
       50 GETTABLEKS                       R10 R10 K15 ["Resources"]
       52 GETTABLEKS                       R10 R10 K16 ["Constants"]
       54 CALL                             R9 1 1
       55 GETTABLEKS                       R10 R9 K17 ["VoxelResolution"]
       57 GETIMPORT                        R11 K7 [require]
       59 GETTABLEKS                       R12 R0 K4 ["Src"]
       61 GETTABLEKS                       R12 R12 K5 ["Util"]
       63 GETTABLEKS                       R12 R12 K18 ["Operations"]
       65 GETTABLEKS                       R12 R12 K19 ["SmoothOperation"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K7 [require]
       70 GETTABLEKS                       R13 R0 K4 ["Src"]
       72 GETTABLEKS                       R13 R13 K5 ["Util"]
       74 GETTABLEKS                       R13 R13 K18 ["Operations"]
       76 GETTABLEKS                       R13 R13 K20 ["BaseOperation"]
       78 CALL                             R12 1 1
       79 GETIMPORT                        R13 K7 [require]
       81 GETTABLEKS                       R14 R0 K4 ["Src"]
       83 GETTABLEKS                       R14 R14 K21 ["Types"]
       85 CALL                             R13 1 1
       86 GETTABLEKS                       R14 R13 K22 ["BrushMode"]
       88 GETTABLEKS                       R15 R13 K23 ["BrushSettings"]
       90 GETTABLEKS                       R16 R13 K24 ["BrushShape"]
       92 GETTABLEKS                       R17 R13 K25 ["Category"]
       94 GETTABLEKS                       R18 R13 K26 ["PivotPosition"]
       96 GETTABLEKS                       R19 R13 K27 ["PlaneLock"]
       98 GETTABLEKS                       R20 R13 K28 ["MaterialSettings"]
      100 GETIMPORT                        R21 K7 [require]
      102 GETTABLEKS                       R22 R0 K4 ["Src"]
      104 GETTABLEKS                       R22 R22 K5 ["Util"]
      106 GETTABLEKS                       R22 R22 K29 ["DebugFlags"]
      108 CALL                             R21 1 1
      109 NEWTABLE                         R22 0 6
      111 LOADK                            R23 K30 [{-1, 0, 0}]
      112 LOADK                            R24 K31 [{1, 0, 0}]
      113 LOADK                            R25 K32 [{0, -1, 0}]
      114 LOADK                            R26 K33 [{0, 1, 0}]
      115 LOADK                            R27 K34 [{0, 0, -1}]
      116 LOADK                            R28 K35 [{0, 0, 1}]
      117 SETLIST                          R22 R23 6 [1]
      119 DUPCLOSURE                       R23 K36 [PROTO_7]
      120 CAPTURE                          VAL R17
      121 CAPTURE                          VAL R15
      122 CAPTURE                          VAL R16
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R21
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R20
      128 CAPTURE                          VAL R8
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R18
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R4
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R22
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R12
      140 RETURN                           R23 1
