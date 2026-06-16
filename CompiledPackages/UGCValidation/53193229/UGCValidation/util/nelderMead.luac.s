PROTO_0:
        0 NEWTABLE                         R4 0 0
        2 GETUPVAL                         R5 0
        3 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        5 GETIMPORT                        R3 K1 [setmetatable]
        7 CALL                             R3 2 1
        8 JUMPIFNOT                        R0 ; [+21]
        9 LENGTH                           R4 R0
       10 LOADN                            R5 0
       11 JUMPIFNOTLT                      R5 R4 ; [+18]
       13 GETTABLEN                        R4 R0 1
       14 MOVE                             R5 R0
       15 LOADNIL                          R6
       16 LOADNIL                          R7
       17 FORGPREP                         R5
       18 MOVE                             R12 R9
       19 NAMECALL                         R10 R4 K2 ["checkCompatible"]
       21 CALL                             R10 2 1
       22 JUMPIF                           R10 ; [+4]
       23 GETIMPORT                        R10 K4 [error]
       25 LOADK                            R11 K5 ["initial simplex has vectors that are not compatible"]
       26 CALL                             R10 1 0
       27 FORGLOOP                         R5 2 ; [-10]
       29 JUMP                             ; [+4]
       30 GETIMPORT                        R4 K4 [error]
       32 LOADK                            R5 K6 ["must provide an initial simplex"]
       33 CALL                             R4 1 0
       34 NEWTABLE                         R4 0 0
       36 SETTABLEKS                       R4 R3 K7 ["simplex"]
       38 MOVE                             R4 R0
       39 LOADNIL                          R5
       40 LOADNIL                          R6
       41 FORGPREP                         R4
       42 GETTABLEKS                       R10 R3 K7 ["simplex"]
       44 GETUPVAL                         R11 1
       45 GETTABLEKS                       R11 R11 K8 ["new"]
       47 MOVE                             R12 R8
       48 CALL                             R11 1 -1
       49 FASTCALL                         TABLE_INSERT ; [+2]
       50 GETIMPORT                        R9 K11 [table.insert]
       52 CALL                             R9 -1 0
       53 FORGLOOP                         R4 2 ; [-12]
       55 SETTABLEKS                       R1 R3 K12 ["objectFunction"]
       57 SETTABLEKS                       R2 R3 K13 ["terminateFunction"]
       59 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+8]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K0 ["objectFunction"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 1
        8 MOVE                             R1 R2
        9 GETUPVAL                         R2 0
       10 SETTABLE                         R1 R2 R0
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLE                         R4 R5 R0
        2 JUMPIF                           R4 ; [+8]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R5 R5 K0 ["objectFunction"]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 MOVE                             R4 R5
        9 GETUPVAL                         R5 0
       10 SETTABLE                         R4 R5 R0
       11 MOVE                             R3 R4
       12 GETUPVAL                         R6 0
       13 GETTABLE                         R5 R6 R1
       14 JUMPIF                           R5 ; [+8]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K0 ["objectFunction"]
       18 MOVE                             R7 R1
       19 CALL                             R6 1 1
       20 MOVE                             R5 R6
       21 GETUPVAL                         R6 0
       22 SETTABLE                         R5 R6 R1
       23 MOVE                             R4 R5
       24 JUMPIFLT                         R3 R4 ; [+2]
       26 LOADB                            R2 0 +1
       27 LOADB                            R2 1
       28 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["simplex"]
        2 NEWTABLE                         R2 0 0
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          REF R2
        6 CAPTURE                          VAL R0
        7 LOADN                            R4 0
        8 GETTABLEKS                       R5 R0 K1 ["terminateFunction"]
       10 MOVE                             R6 R1
       11 MOVE                             R7 R4
       12 CALL                             R5 2 1
       13 JUMPIF                           R5 ; [+185]
       14 NEWTABLE                         R2 0 0
       16 GETIMPORT                        R5 K4 [table.sort]
       18 MOVE                             R6 R1
       19 NEWCLOSURE                       R7 P1
       20 CAPTURE                          REF R2
       21 CAPTURE                          VAL R0
       22 CALL                             R5 2 0
       23 LENGTH                           R6 R1
       24 GETTABLE                         R5 R1 R6
       25 NEWTABLE                         R6 0 0
       27 LOADN                            R9 1
       28 GETTABLEN                        R10 R1 1
       29 NAMECALL                         R10 R10 K5 ["getSize"]
       31 CALL                             R10 1 1
       32 MOVE                             R7 R10
       33 LOADN                            R8 1
       34 FORNPREP                         R7
       35 FASTCALL2K                       TABLE_INSERT R6 K6 ; [+5]
       37 MOVE                             R11 R6
       38 LOADK                            R12 K6 [0]
       39 GETIMPORT                        R10 K8 [table.insert]
       41 CALL                             R10 2 0
       42 FORNLOOP                         R7
       43 GETUPVAL                         R7 0
       44 GETTABLEKS                       R7 R7 K9 ["new"]
       46 MOVE                             R8 R6
       47 CALL                             R7 1 1
       48 LOADN                            R10 1
       49 LENGTH                           R11 R1
       50 SUBK                             R8 R11 K10 [1]
       51 LOADN                            R9 1
       52 FORNPREP                         R8
       53 GETTABLE                         R11 R1 R10
       54 ADD                              R7 R7 R11
       55 FORNLOOP                         R8
       56 LENGTH                           R9 R1
       57 SUBK                             R8 R9 K10 [1]
       58 DIV                              R7 R7 R8
       59 SUB                              R8 R7 R5
       60 MULK                             R10 R8 K11 [2]
       61 ADD                              R9 R5 R10
       62 GETTABLE                         R11 R2 R9
       63 JUMPIF                           R11 ; [+6]
       64 GETTABLEKS                       R12 R0 K12 ["objectFunction"]
       66 MOVE                             R13 R9
       67 CALL                             R12 1 1
       68 MOVE                             R11 R12
       69 SETTABLE                         R11 R2 R9
       70 MOVE                             R10 R11
       71 GETTABLEN                        R12 R1 1
       72 GETTABLE                         R13 R2 R12
       73 JUMPIF                           R13 ; [+6]
       74 GETTABLEKS                       R14 R0 K12 ["objectFunction"]
       76 MOVE                             R15 R12
       77 CALL                             R14 1 1
       78 MOVE                             R13 R14
       79 SETTABLE                         R13 R2 R12
       80 MOVE                             R11 R13
       81 JUMPIFNOTLT                      R11 R10 ; [+18]
       83 LENGTH                           R14 R1
       84 SUBK                             R13 R14 K10 [1]
       85 GETTABLE                         R12 R1 R13
       86 GETTABLE                         R13 R2 R12
       87 JUMPIF                           R13 ; [+6]
       88 GETTABLEKS                       R14 R0 K12 ["objectFunction"]
       90 MOVE                             R15 R12
       91 CALL                             R14 1 1
       92 MOVE                             R13 R14
       93 SETTABLE                         R13 R2 R12
       94 MOVE                             R11 R13
       95 JUMPIFNOTLT                      R10 R11 ; [+4]
       97 LENGTH                           R11 R1
       98 SETTABLE                         R9 R1 R11
       99 JUMP                             ; [+97]
      100 GETTABLEN                        R12 R1 1
      101 GETTABLE                         R13 R2 R12
      102 JUMPIF                           R13 ; [+6]
      103 GETTABLEKS                       R14 R0 K12 ["objectFunction"]
      105 MOVE                             R15 R12
      106 CALL                             R14 1 1
      107 MOVE                             R13 R14
      108 SETTABLE                         R13 R2 R12
      109 MOVE                             R11 R13
      110 JUMPIFNOTLT                      R10 R11 ; [+19]
      112 ADD                              R11 R9 R8
      113 GETTABLE                         R13 R2 R11
      114 JUMPIF                           R13 ; [+6]
      115 GETTABLEKS                       R14 R0 K12 ["objectFunction"]
      117 MOVE                             R15 R11
      118 CALL                             R14 1 1
      119 MOVE                             R13 R14
      120 SETTABLE                         R13 R2 R11
      121 MOVE                             R12 R13
      122 JUMPIFNOTLT                      R12 R10 ; [+4]
      124 LENGTH                           R13 R1
      125 SETTABLE                         R11 R1 R13
      126 JUMP                             ; [+70]
      127 LENGTH                           R13 R1
      128 SETTABLE                         R9 R1 R13
      129 JUMP                             ; [+67]
      130 MULK                             R12 R8 K13 [0.5]
      131 ADD                              R11 R5 R12
      132 MULK                             R13 R8 K14 [1.5]
      133 ADD                              R12 R5 R13
      134 LOADNIL                          R13
      135 GETTABLE                         R15 R2 R11
      136 JUMPIF                           R15 ; [+6]
      137 GETTABLEKS                       R16 R0 K12 ["objectFunction"]
      139 MOVE                             R17 R11
      140 CALL                             R16 1 1
      141 MOVE                             R15 R16
      142 SETTABLE                         R15 R2 R11
      143 MOVE                             R14 R15
      144 GETTABLE                         R16 R2 R12
      145 JUMPIF                           R16 ; [+6]
      146 GETTABLEKS                       R17 R0 K12 ["objectFunction"]
      148 MOVE                             R18 R12
      149 CALL                             R17 1 1
      150 MOVE                             R16 R17
      151 SETTABLE                         R16 R2 R12
      152 MOVE                             R15 R16
      153 JUMPIFNOTLT                      R14 R15 ; [+3]
      155 MOVE                             R13 R11
      156 JUMP                             ; [+1]
      157 MOVE                             R13 R12
      158 MOVE                             R15 R13
      159 GETTABLE                         R16 R2 R15
      160 JUMPIF                           R16 ; [+6]
      161 GETTABLEKS                       R17 R0 K12 ["objectFunction"]
      163 MOVE                             R18 R15
      164 CALL                             R17 1 1
      165 MOVE                             R16 R17
      166 SETTABLE                         R16 R2 R15
      167 MOVE                             R14 R16
      168 LENGTH                           R18 R1
      169 SUBK                             R17 R18 K10 [1]
      170 GETTABLE                         R16 R1 R17
      171 GETTABLE                         R17 R2 R16
      172 JUMPIF                           R17 ; [+6]
      173 GETTABLEKS                       R18 R0 K12 ["objectFunction"]
      175 MOVE                             R19 R16
      176 CALL                             R18 1 1
      177 MOVE                             R17 R18
      178 SETTABLE                         R17 R2 R16
      179 MOVE                             R15 R17
      180 JUMPIFNOTLT                      R14 R15 ; [+4]
      182 LENGTH                           R14 R1
      183 SETTABLE                         R13 R1 R14
      184 JUMP                             ; [+12]
      185 LOADN                            R16 1
      186 LENGTH                           R14 R1
      187 LOADN                            R15 1
      188 FORNPREP                         R14
      189 GETTABLE                         R20 R1 R16
      190 GETTABLEN                        R21 R1 1
      191 SUB                              R19 R20 R21
      192 MULK                             R18 R19 K15 [0.8]
      193 GETTABLEN                        R19 R1 1
      194 ADD                              R17 R18 R19
      195 SETTABLE                         R17 R1 R16
      196 FORNLOOP                         R14
      197 ADDK                             R4 R4 K10 [1]
      198 JUMPBACK                         ; [-191]
      199 CLOSEUPVALS                      R2
      200 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R1 0
        1 LOADN                            R4 1
        2 LENGTH                           R5 R0
        3 SUBK                             R2 R5 K0 [1]
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 ADDK                             R7 R4 K0 [1]
        7 LENGTH                           R5 R0
        8 LOADN                            R6 1
        9 FORNPREP                         R5
       10 GETTABLE                         R9 R0 R7
       11 GETTABLE                         R10 R0 R4
       12 SUB                              R8 R9 R10
       13 NAMECALL                         R9 R8 K1 ["magnitude"]
       15 CALL                             R9 1 1
       16 FASTCALL2                        MATH_MAX R1 R9 ; [+5]
       18 MOVE                             R11 R1
       19 MOVE                             R12 R9
       20 GETIMPORT                        R10 K4 [math.max]
       22 CALL                             R10 2 1
       23 MOVE                             R1 R10
       24 FORNLOOP                         R5
       25 FORNLOOP                         R2
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["FloatVector"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 4 0
       16 SETTABLEKS                       R2 R2 K7 ["__index"]
       18 DUPCLOSURE                       R3 K8 [PROTO_0]
       19 CAPTURE                          VAL R2
       20 CAPTURE                          VAL R1
       21 SETTABLEKS                       R3 R2 K9 ["new"]
       23 DUPCLOSURE                       R3 K10 [PROTO_3]
       24 CAPTURE                          VAL R1
       25 SETTABLEKS                       R3 R2 K11 ["evaluate"]
       27 DUPCLOSURE                       R3 K12 [PROTO_4]
       28 SETTABLEKS                       R3 R2 K13 ["calculateMaxLengthBetweenVertices"]
       30 RETURN                           R2 1
