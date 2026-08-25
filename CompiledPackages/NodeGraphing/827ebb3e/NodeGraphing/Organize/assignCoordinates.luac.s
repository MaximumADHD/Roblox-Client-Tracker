PROTO_0:
        0 GETTABLEKS                       R6 R0 K1 ["Y"]
        2 DIVK                             R5 R6 K0 [2]
        3 ADD                              R4 R5 R2
        4 GETTABLEKS                       R6 R1 K1 ["Y"]
        6 DIVK                             R5 R6 K0 [2]
        7 ADD                              R3 R4 R5
        8 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R1
        4 JUMPIFNOTEQ                      R2 R3 ; [+6]
        6 JUMPIFLT                         R0 R1 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 GETUPVAL                         R4 0
       12 GETTABLE                         R3 R4 R0
       13 GETUPVAL                         R5 0
       14 GETTABLE                         R4 R5 R1
       15 JUMPIFLT                         R4 R3 ; [+2]
       17 LOADB                            R2 0 +1
       18 LOADB                            R2 1
       19 RETURN                           R2 1

PROTO_2:
        0 LENGTH                           R8 R0
        1 JUMPIFNOTEQKN                    R8 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 NEWTABLE                         R9 0 0
        6 NEWTABLE                         R10 0 0
        8 MOVE                             R11 R0
        9 LOADNIL                          R12
       10 LOADNIL                          R13
       11 FORGPREP                         R11
       12 LOADN                            R16 0
       13 LOADN                            R17 0
       14 GETTABLE                         R18 R2 R15
       15 LOADNIL                          R19
       16 LOADNIL                          R20
       17 FORGPREP                         R18
       18 GETTABLE                         R23 R1 R22
       19 JUMPIFEQKNIL                     R23 ; [+3]
       21 ADD                              R16 R16 R23
       22 ADDK                             R17 R17 K1 [1]
       23 FORGLOOP                         R18 2 ; [-6]
       25 LOADN                            R19 0
       26 JUMPIFNOTLT                      R19 R17 ; [+3]
       28 DIV                              R18 R16 R17
       29 JUMP                             ; [+1]
       30 GETTABLE                         R18 R1 R15
       31 SETTABLE                         R18 R9 R14
       32 GETTABLE                         R19 R4 R15
       33 JUMPIFNOT                        R19 ; [+2]
       34 LOADK                            R18 K2 [∞]
       35 JUMP                             ; [+5]
       36 GETTABLE                         R20 R5 R15
       37 LENGTH                           R19 R20
       38 GETTABLE                         R21 R6 R15
       39 LENGTH                           R20 R21
       40 ADD                              R18 R19 R20
       41 SETTABLE                         R18 R10 R14
       42 FORGLOOP                         R11 2 ; [-31]
       44 NEWTABLE                         R11 0 0
       46 LOADN                            R14 1
       47 SUBK                             R12 R8 K1 [1]
       48 LOADN                            R13 1
       49 FORNPREP                         R12
       50 GETTABLE                         R17 R0 R14
       51 GETTABLE                         R16 R3 R17
       52 ADDK                             R19 R14 K1 [1]
       53 GETTABLE                         R18 R0 R19
       54 GETTABLE                         R17 R3 R18
       55 GETTABLEKS                       R20 R16 K4 ["Y"]
       57 DIVK                             R19 R20 K3 [2]
       58 ADD                              R18 R19 R7
       59 GETTABLEKS                       R20 R17 K4 ["Y"]
       61 DIVK                             R19 R20 K3 [2]
       62 ADD                              R15 R18 R19
       63 SETTABLE                         R15 R11 R14
       64 FORNLOOP                         R12
       65 NEWTABLE                         R12 0 0
       67 MOVE                             R13 R0
       68 LOADNIL                          R14
       69 LOADNIL                          R15
       70 FORGPREP                         R13
       71 GETTABLE                         R18 R1 R17
       72 SETTABLE                         R18 R12 R16
       73 FORGLOOP                         R13 2 ; [-3]
       75 NEWTABLE                         R13 0 0
       77 LOADN                            R16 1
       78 MOVE                             R14 R8
       79 LOADN                            R15 1
       80 FORNPREP                         R14
       81 SETTABLE                         R16 R13 R16
       82 FORNLOOP                         R14
       83 GETIMPORT                        R14 K7 [table.sort]
       85 MOVE                             R15 R13
       86 NEWCLOSURE                       R16 P0
       87 CAPTURE                          VAL R10
       88 CALL                             R14 2 0
       89 MOVE                             R14 R13
       90 LOADNIL                          R15
       91 LOADNIL                          R16
       92 FORGPREP                         R14
       93 GETTABLE                         R19 R9 R18
       94 GETTABLE                         R20 R12 R18
       95 JUMPIFNOTLT                      R20 R19 ; [+46]
       97 LOADK                            R20 K2 [∞]
       98 LOADN                            R21 0
       99 ADDK                             R24 R18 K1 [1]
      100 MOVE                             R22 R8
      101 LOADN                            R23 1
      102 FORNPREP                         R22
      103 SUBK                             R26 R24 K1 [1]
      104 GETTABLE                         R25 R11 R26
      105 ADD                              R21 R21 R25
      106 GETTABLE                         R25 R10 R24
      107 GETTABLE                         R26 R10 R18
      108 JUMPIFNOTLE                      R26 R25 ; [+4]
      110 GETTABLE                         R25 R12 R24
      111 SUB                              R20 R25 R21
      112 JUMP                             ; [+1]
      113 FORNLOOP                         R22
      114 FASTCALL2                        MATH_MIN R19 R20 ; [+5]
      116 MOVE                             R23 R19
      117 MOVE                             R24 R20
      118 GETIMPORT                        R22 K10 [math.min]
      120 CALL                             R22 2 1
      121 GETTABLE                         R23 R12 R18
      122 JUMPIFNOTLT                      R23 R22 ; [+64]
      124 SETTABLE                         R22 R12 R18
      125 ADDK                             R25 R18 K1 [1]
      126 MOVE                             R23 R8
      127 LOADN                            R24 1
      128 FORNPREP                         R23
      129 SUBK                             R28 R25 K1 [1]
      130 GETTABLE                         R27 R12 R28
      131 SUBK                             R29 R25 K1 [1]
      132 GETTABLE                         R28 R11 R29
      133 ADD                              R26 R27 R28
      134 GETTABLE                         R27 R12 R25
      135 JUMPIFNOTLT                      R27 R26 ; [+51]
      137 SETTABLE                         R26 R12 R25
      138 JUMP                             ; [+1]
      139 JUMP                             ; [+47]
      140 FORNLOOP                         R23
      141 JUMP                             ; [+45]
      142 GETTABLE                         R20 R12 R18
      143 JUMPIFNOTLT                      R19 R20 ; [+43]
      145 LOADK                            R20 K11 [-∞]
      146 LOADN                            R21 0
      147 SUBK                             R24 R18 K1 [1]
      148 LOADN                            R22 1
      149 LOADN                            R23 -1
      150 FORNPREP                         R22
      151 GETTABLE                         R25 R11 R24
      152 ADD                              R21 R21 R25
      153 GETTABLE                         R25 R10 R24
      154 GETTABLE                         R26 R10 R18
      155 JUMPIFNOTLE                      R26 R25 ; [+4]
      157 GETTABLE                         R25 R12 R24
      158 ADD                              R20 R25 R21
      159 JUMP                             ; [+1]
      160 FORNLOOP                         R22
      161 FASTCALL2                        MATH_MAX R19 R20 ; [+5]
      163 MOVE                             R23 R19
      164 MOVE                             R24 R20
      165 GETIMPORT                        R22 K13 [math.max]
      167 CALL                             R22 2 1
      168 GETTABLE                         R23 R12 R18
      169 JUMPIFNOTLT                      R22 R23 ; [+17]
      171 SETTABLE                         R22 R12 R18
      172 SUBK                             R25 R18 K1 [1]
      173 LOADN                            R23 1
      174 LOADN                            R24 -1
      175 FORNPREP                         R23
      176 ADDK                             R28 R25 K1 [1]
      177 GETTABLE                         R27 R12 R28
      178 GETTABLE                         R28 R11 R25
      179 SUB                              R26 R27 R28
      180 GETTABLE                         R27 R12 R25
      181 JUMPIFNOTLT                      R26 R27 ; [+5]
      183 SETTABLE                         R26 R12 R25
      184 JUMP                             ; [+1]
      185 JUMP                             ; [+1]
      186 FORNLOOP                         R23
      187 FORGLOOP                         R14 2 ; [-95]
      189 MOVE                             R14 R0
      190 LOADNIL                          R15
      191 LOADNIL                          R16
      192 FORGPREP                         R14
      193 GETTABLE                         R19 R12 R17
      194 SETTABLE                         R19 R1 R18
      195 FORGLOOP                         R14 2 ; [-3]
      197 RETURN                           R0 0

PROTO_3:
        0 LENGTH                           R3 R1
        1 NEWTABLE                         R4 0 0
        3 LOADN                            R5 0
        4 LOADN                            R8 1
        5 MOVE                             R6 R3
        6 LOADN                            R7 1
        7 FORNPREP                         R6
        8 SETTABLE                         R5 R4 R8
        9 LOADN                            R9 0
       10 GETTABLE                         R10 R1 R8
       11 LOADNIL                          R11
       12 LOADNIL                          R12
       13 FORGPREP                         R10
       14 GETTABLEKS                       R18 R0 K0 ["realSize"]
       16 GETTABLE                         R17 R18 R14
       17 GETTABLEKS                       R17 R17 K1 ["X"]
       19 FASTCALL2                        MATH_MAX R9 R17 ; [+4]
       21 MOVE                             R16 R9
       22 GETIMPORT                        R15 K4 [math.max]
       24 CALL                             R15 2 1
       25 MOVE                             R9 R15
       26 FORGLOOP                         R10 2 ; [-13]
       28 GETTABLEKS                       R11 R2 K5 ["columnSpacing"]
       30 ADD                              R10 R9 R11
       31 ADD                              R5 R5 R10
       32 FORNLOOP                         R6
       33 NEWTABLE                         R6 0 0
       35 LOADN                            R9 1
       36 MOVE                             R7 R3
       37 LOADN                            R8 1
       38 FORNPREP                         R7
       39 GETTABLE                         R10 R1 R9
       40 LOADN                            R11 0
       41 MOVE                             R12 R10
       42 LOADNIL                          R13
       43 LOADNIL                          R14
       44 FORGPREP                         R12
       45 LOADN                            R17 1
       46 JUMPIFNOTLT                      R17 R15 ; [+4]
       48 GETTABLEKS                       R17 R2 K6 ["nodeSpacing"]
       50 ADD                              R11 R11 R17
       51 GETTABLEKS                       R18 R0 K0 ["realSize"]
       53 GETTABLE                         R17 R18 R16
       54 GETTABLEKS                       R17 R17 K7 ["Y"]
       56 DIVK                             R19 R17 K8 [2]
       57 ADD                              R18 R11 R19
       58 SETTABLE                         R18 R6 R16
       59 ADD                              R11 R11 R17
       60 FORGLOOP                         R12 2 ; [-16]
       62 FORNLOOP                         R7
       63 LOADN                            R9 1
       64 GETTABLEKS                       R7 R2 K9 ["iterations"]
       66 LOADN                            R8 1
       67 FORNPREP                         R7
       68 LOADN                            R12 2
       69 MOVE                             R10 R3
       70 LOADN                            R11 1
       71 FORNPREP                         R10
       72 GETUPVAL                         R13 0
       73 GETTABLE                         R14 R1 R12
       74 MOVE                             R15 R6
       75 GETTABLEKS                       R16 R0 K10 ["upAdj"]
       77 GETTABLEKS                       R17 R0 K0 ["realSize"]
       79 GETTABLEKS                       R18 R0 K11 ["isDummy"]
       81 GETTABLEKS                       R19 R0 K10 ["upAdj"]
       83 GETTABLEKS                       R20 R0 K12 ["downAdj"]
       85 GETTABLEKS                       R21 R2 K6 ["nodeSpacing"]
       87 CALL                             R13 8 0
       88 FORNLOOP                         R10
       89 SUBK                             R12 R3 K13 [1]
       90 LOADN                            R10 1
       91 LOADN                            R11 -1
       92 FORNPREP                         R10
       93 GETUPVAL                         R13 0
       94 GETTABLE                         R14 R1 R12
       95 MOVE                             R15 R6
       96 GETTABLEKS                       R16 R0 K12 ["downAdj"]
       98 GETTABLEKS                       R17 R0 K0 ["realSize"]
      100 GETTABLEKS                       R18 R0 K11 ["isDummy"]
      102 GETTABLEKS                       R19 R0 K10 ["upAdj"]
      104 GETTABLEKS                       R20 R0 K12 ["downAdj"]
      106 GETTABLEKS                       R21 R2 K6 ["nodeSpacing"]
      108 CALL                             R13 8 0
      109 FORNLOOP                         R10
      110 FORNLOOP                         R7
      111 NEWTABLE                         R7 0 0
      113 LOADK                            R8 K14 [∞]
      114 LOADK                            R9 K14 [∞]
      115 LOADN                            R12 1
      116 MOVE                             R10 R3
      117 LOADN                            R11 1
      118 FORNPREP                         R10
      119 GETTABLE                         R13 R1 R12
      120 LOADNIL                          R14
      121 LOADNIL                          R15
      122 FORGPREP                         R13
      123 GETTABLEKS                       R19 R0 K11 ["isDummy"]
      125 GETTABLE                         R18 R19 R17
      126 JUMPIF                           R18 ; [+33]
      127 GETTABLE                         R19 R6 R17
      128 GETTABLEKS                       R22 R0 K0 ["realSize"]
      130 GETTABLE                         R21 R22 R17
      131 GETTABLEKS                       R21 R21 K7 ["Y"]
      133 DIVK                             R20 R21 K8 [2]
      134 SUB                              R18 R19 R20
      135 MINUS                            R19 R18
      136 GETIMPORT                        R20 K17 [Vector2.new]
      138 GETTABLE                         R21 R4 R12
      139 MOVE                             R22 R19
      140 CALL                             R20 2 1
      141 SETTABLE                         R20 R7 R17
      142 GETTABLEKS                       R23 R20 K1 ["X"]
      144 FASTCALL2                        MATH_MIN R8 R23 ; [+4]
      146 MOVE                             R22 R8
      147 GETIMPORT                        R21 K19 [math.min]
      149 CALL                             R21 2 1
      150 MOVE                             R8 R21
      151 GETTABLEKS                       R23 R20 K7 ["Y"]
      153 FASTCALL2                        MATH_MIN R9 R23 ; [+4]
      155 MOVE                             R22 R9
      156 GETIMPORT                        R21 K19 [math.min]
      158 CALL                             R21 2 1
      159 MOVE                             R9 R21
      160 FORGLOOP                         R13 2 ; [-38]
      162 FORNLOOP                         R10
      163 JUMPIFNOTEQKN                    R8 K14 [∞] ; [+4]
      165 NEWTABLE                         R10 0 0
      167 RETURN                           R10 1
      168 GETTABLEKS                       R10 R2 K20 ["origin"]
      170 JUMPIF                           R10 ; [+2]
      171 GETIMPORT                        R10 K22 [Vector2.zero]
      173 GETIMPORT                        R12 K17 [Vector2.new]
      175 MOVE                             R13 R8
      176 MOVE                             R14 R9
      177 CALL                             R12 2 1
      178 SUB                              R11 R10 R12
      179 NEWTABLE                         R12 0 0
      181 MOVE                             R13 R7
      182 LOADNIL                          R14
      183 LOADNIL                          R15
      184 FORGPREP                         R13
      185 ADD                              R18 R17 R11
      186 SETTABLE                         R18 R12 R16
      187 FORGLOOP                         R13 2 ; [-3]
      189 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Organize"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 DUPCLOSURE                       R3 K9 [PROTO_2]
       16 DUPCLOSURE                       R4 K10 [PROTO_3]
       17 CAPTURE                          VAL R3
       18 RETURN                           R4 1
