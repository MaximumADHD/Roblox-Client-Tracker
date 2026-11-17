PROTO_0:
        0 JUMPIF                           R2 ; [+1]
        1 LOADK                            R2 K0 [0.0001]
        2 SUB                              R3 R0 R2
        3 JUMPIFNOTLE                      R3 R1 ; [+6]
        5 ADD                              R3 R0 R2
        6 JUMPIFNOTLE                      R1 R3 ; [+3]
        8 LOADB                            R3 1
        9 RETURN                           R3 1
       10 LOADB                            R3 0
       11 RETURN                           R3 1

PROTO_1:
        0 GETGLOBAL                        R3 K0 ["fuzzyCompare"]
        2 GETTABLEKS                       R4 R0 K1 ["x"]
        4 GETTABLEKS                       R5 R1 K1 ["x"]
        6 MOVE                             R6 R2
        7 CALL                             R3 3 1
        8 JUMPIFNOT                        R3 ; [+20]
        9 GETGLOBAL                        R3 K0 ["fuzzyCompare"]
       11 GETTABLEKS                       R4 R0 K2 ["y"]
       13 GETTABLEKS                       R5 R1 K2 ["y"]
       15 MOVE                             R6 R2
       16 CALL                             R3 3 1
       17 JUMPIFNOT                        R3 ; [+11]
       18 GETGLOBAL                        R3 K0 ["fuzzyCompare"]
       20 GETTABLEKS                       R4 R0 K3 ["z"]
       22 GETTABLEKS                       R5 R1 K3 ["z"]
       24 MOVE                             R6 R2
       25 CALL                             R3 3 1
       26 JUMPIFNOT                        R3 ; [+2]
       27 LOADB                            R3 1
       28 RETURN                           R3 1
       29 LOADB                            R3 0
       30 RETURN                           R3 1

PROTO_2:
        0 NAMECALL                         R3 R0 K0 ["components"]
        2 CALL                             R3 1 12
        3 NAMECALL                         R15 R1 K0 ["components"]
        5 CALL                             R15 1 12
        6 GETGLOBAL                        R27 K1 ["fuzzyCompare"]
        8 MOVE                             R28 R6
        9 MOVE                             R29 R18
       10 MOVE                             R30 R2
       11 CALL                             R27 3 1
       12 JUMPIFNOT                        R27 ; [+58]
       13 GETGLOBAL                        R27 K1 ["fuzzyCompare"]
       15 MOVE                             R28 R7
       16 MOVE                             R29 R19
       17 MOVE                             R30 R2
       18 CALL                             R27 3 1
       19 JUMPIFNOT                        R27 ; [+51]
       20 GETGLOBAL                        R27 K1 ["fuzzyCompare"]
       22 MOVE                             R28 R8
       23 MOVE                             R29 R20
       24 MOVE                             R30 R2
       25 CALL                             R27 3 1
       26 JUMPIFNOT                        R27 ; [+44]
       27 GETGLOBAL                        R27 K1 ["fuzzyCompare"]
       29 MOVE                             R28 R9
       30 MOVE                             R29 R21
       31 MOVE                             R30 R2
       32 CALL                             R27 3 1
       33 JUMPIFNOT                        R27 ; [+37]
       34 GETGLOBAL                        R27 K1 ["fuzzyCompare"]
       36 MOVE                             R28 R10
       37 MOVE                             R29 R22
       38 MOVE                             R30 R2
       39 CALL                             R27 3 1
       40 JUMPIFNOT                        R27 ; [+30]
       41 GETGLOBAL                        R27 K1 ["fuzzyCompare"]
       43 MOVE                             R28 R11
       44 MOVE                             R29 R23
       45 MOVE                             R30 R2
       46 CALL                             R27 3 1
       47 JUMPIFNOT                        R27 ; [+23]
       48 GETGLOBAL                        R27 K1 ["fuzzyCompare"]
       50 MOVE                             R28 R12
       51 MOVE                             R29 R24
       52 MOVE                             R30 R2
       53 CALL                             R27 3 1
       54 JUMPIFNOT                        R27 ; [+16]
       55 GETGLOBAL                        R27 K1 ["fuzzyCompare"]
       57 MOVE                             R28 R13
       58 MOVE                             R29 R25
       59 MOVE                             R30 R2
       60 CALL                             R27 3 1
       61 JUMPIFNOT                        R27 ; [+9]
       62 GETGLOBAL                        R27 K1 ["fuzzyCompare"]
       64 MOVE                             R28 R14
       65 MOVE                             R29 R26
       66 MOVE                             R30 R2
       67 CALL                             R27 3 1
       68 JUMPIFNOT                        R27 ; [+2]
       69 LOADB                            R27 1
       70 RETURN                           R27 1
       71 LOADB                            R27 0
       72 RETURN                           R27 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["roundToNearest"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 [0.0001]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 NAMECALL                         R2 R0 K0 ["components"]
        2 CALL                             R2 1 12
        3 LOADB                            R14 0
        4 LOADB                            R15 0
        5 LOADB                            R16 0
        6 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
        8 FASTCALL1                        MATH_ABS R5 ; [+3]
        9 MOVE                             R19 R5
       10 GETIMPORT                        R18 K4 [math.abs]
       12 CALL                             R18 1 1
       13 LOADN                            R19 1
       14 CALL                             R17 2 1
       15 JUMPIFNOT                        R17 ; [+5]
       16 JUMPIFNOT                        R14 ; [+2]
       17 LOADB                            R17 0
       18 RETURN                           R17 1
       19 LOADB                            R14 1
       20 JUMP                             ; [+8]
       21 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
       23 MOVE                             R18 R5
       24 LOADN                            R19 0
       25 CALL                             R17 2 1
       26 JUMPIF                           R17 ; [+2]
       27 LOADB                            R17 0
       28 RETURN                           R17 1
       29 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
       31 FASTCALL1                        MATH_ABS R6 ; [+3]
       32 MOVE                             R19 R6
       33 GETIMPORT                        R18 K4 [math.abs]
       35 CALL                             R18 1 1
       36 LOADN                            R19 1
       37 CALL                             R17 2 1
       38 JUMPIFNOT                        R17 ; [+5]
       39 JUMPIFNOT                        R14 ; [+2]
       40 LOADB                            R17 0
       41 RETURN                           R17 1
       42 LOADB                            R14 1
       43 JUMP                             ; [+8]
       44 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
       46 MOVE                             R18 R6
       47 LOADN                            R19 0
       48 CALL                             R17 2 1
       49 JUMPIF                           R17 ; [+2]
       50 LOADB                            R17 0
       51 RETURN                           R17 1
       52 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
       54 FASTCALL1                        MATH_ABS R7 ; [+3]
       55 MOVE                             R19 R7
       56 GETIMPORT                        R18 K4 [math.abs]
       58 CALL                             R18 1 1
       59 LOADN                            R19 1
       60 CALL                             R17 2 1
       61 JUMPIFNOT                        R17 ; [+5]
       62 JUMPIFNOT                        R14 ; [+2]
       63 LOADB                            R17 0
       64 RETURN                           R17 1
       65 LOADB                            R14 1
       66 JUMP                             ; [+8]
       67 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
       69 MOVE                             R18 R7
       70 LOADN                            R19 0
       71 CALL                             R17 2 1
       72 JUMPIF                           R17 ; [+2]
       73 LOADB                            R17 0
       74 RETURN                           R17 1
       75 JUMPIF                           R14 ; [+2]
       76 LOADB                            R17 0
       77 RETURN                           R17 1
       78 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
       80 FASTCALL1                        MATH_ABS R8 ; [+3]
       81 MOVE                             R19 R8
       82 GETIMPORT                        R18 K4 [math.abs]
       84 CALL                             R18 1 1
       85 LOADN                            R19 1
       86 CALL                             R17 2 1
       87 JUMPIFNOT                        R17 ; [+5]
       88 JUMPIFNOT                        R15 ; [+2]
       89 LOADB                            R17 0
       90 RETURN                           R17 1
       91 LOADB                            R15 1
       92 JUMP                             ; [+8]
       93 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
       95 MOVE                             R18 R8
       96 LOADN                            R19 0
       97 CALL                             R17 2 1
       98 JUMPIF                           R17 ; [+2]
       99 LOADB                            R17 0
      100 RETURN                           R17 1
      101 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
      103 FASTCALL1                        MATH_ABS R9 ; [+3]
      104 MOVE                             R19 R9
      105 GETIMPORT                        R18 K4 [math.abs]
      107 CALL                             R18 1 1
      108 LOADN                            R19 1
      109 CALL                             R17 2 1
      110 JUMPIFNOT                        R17 ; [+5]
      111 JUMPIFNOT                        R15 ; [+2]
      112 LOADB                            R17 0
      113 RETURN                           R17 1
      114 LOADB                            R15 1
      115 JUMP                             ; [+8]
      116 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
      118 MOVE                             R18 R9
      119 LOADN                            R19 0
      120 CALL                             R17 2 1
      121 JUMPIF                           R17 ; [+2]
      122 LOADB                            R17 0
      123 RETURN                           R17 1
      124 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
      126 FASTCALL1                        MATH_ABS R10 ; [+3]
      127 MOVE                             R19 R10
      128 GETIMPORT                        R18 K4 [math.abs]
      130 CALL                             R18 1 1
      131 LOADN                            R19 1
      132 CALL                             R17 2 1
      133 JUMPIFNOT                        R17 ; [+5]
      134 JUMPIFNOT                        R15 ; [+2]
      135 LOADB                            R17 0
      136 RETURN                           R17 1
      137 LOADB                            R15 1
      138 JUMP                             ; [+8]
      139 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
      141 MOVE                             R18 R10
      142 LOADN                            R19 0
      143 CALL                             R17 2 1
      144 JUMPIF                           R17 ; [+2]
      145 LOADB                            R17 0
      146 RETURN                           R17 1
      147 JUMPIF                           R15 ; [+2]
      148 LOADB                            R17 0
      149 RETURN                           R17 1
      150 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
      152 FASTCALL1                        MATH_ABS R11 ; [+3]
      153 MOVE                             R19 R11
      154 GETIMPORT                        R18 K4 [math.abs]
      156 CALL                             R18 1 1
      157 LOADN                            R19 1
      158 CALL                             R17 2 1
      159 JUMPIFNOT                        R17 ; [+5]
      160 JUMPIFNOT                        R16 ; [+2]
      161 LOADB                            R17 0
      162 RETURN                           R17 1
      163 LOADB                            R16 1
      164 JUMP                             ; [+8]
      165 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
      167 MOVE                             R18 R11
      168 LOADN                            R19 0
      169 CALL                             R17 2 1
      170 JUMPIF                           R17 ; [+2]
      171 LOADB                            R17 0
      172 RETURN                           R17 1
      173 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
      175 FASTCALL1                        MATH_ABS R12 ; [+3]
      176 MOVE                             R19 R12
      177 GETIMPORT                        R18 K4 [math.abs]
      179 CALL                             R18 1 1
      180 LOADN                            R19 1
      181 CALL                             R17 2 1
      182 JUMPIFNOT                        R17 ; [+5]
      183 JUMPIFNOT                        R16 ; [+2]
      184 LOADB                            R17 0
      185 RETURN                           R17 1
      186 LOADB                            R16 1
      187 JUMP                             ; [+8]
      188 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
      190 MOVE                             R18 R12
      191 LOADN                            R19 0
      192 CALL                             R17 2 1
      193 JUMPIF                           R17 ; [+2]
      194 LOADB                            R17 0
      195 RETURN                           R17 1
      196 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
      198 FASTCALL1                        MATH_ABS R13 ; [+3]
      199 MOVE                             R19 R13
      200 GETIMPORT                        R18 K4 [math.abs]
      202 CALL                             R18 1 1
      203 LOADN                            R19 1
      204 CALL                             R17 2 1
      205 JUMPIFNOT                        R17 ; [+5]
      206 JUMPIFNOT                        R16 ; [+2]
      207 LOADB                            R17 0
      208 RETURN                           R17 1
      209 LOADB                            R16 1
      210 JUMP                             ; [+8]
      211 GETGLOBAL                        R17 K1 ["fuzzyCompare"]
      213 MOVE                             R18 R13
      214 LOADN                            R19 0
      215 CALL                             R17 2 1
      216 JUMPIF                           R17 ; [+2]
      217 LOADB                            R17 0
      218 RETURN                           R17 1
      219 JUMPIF                           R16 ; [+2]
      220 LOADB                            R17 0
      221 RETURN                           R17 1
      222 LOADB                            R17 1
      223 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["Round"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 SETGLOBAL                        R1 K7 ["fuzzyCompare"]
       13 DUPCLOSURE                       R1 K8 [PROTO_1]
       14 SETGLOBAL                        R1 K9 ["fuzzyCompareVector3"]
       16 DUPCLOSURE                       R1 K10 [PROTO_2]
       17 SETGLOBAL                        R1 K11 ["fuzzyCompareCFrame"]
       19 DUPCLOSURE                       R1 K12 [PROTO_3]
       20 CAPTURE                          VAL R0
       21 SETGLOBAL                        R1 K13 ["fuzzyRound"]
       23 DUPCLOSURE                       R1 K14 [PROTO_4]
       24 SETGLOBAL                        R1 K15 ["visiblyIdentityCFrame"]
       26 NEWTABLE                         R1 4 0
       28 GETGLOBAL                        R2 K7 ["fuzzyCompare"]
       30 SETTABLEKS                       R2 R1 K7 ["fuzzyCompare"]
       32 GETGLOBAL                        R2 K9 ["fuzzyCompareVector3"]
       34 SETTABLEKS                       R2 R1 K9 ["fuzzyCompareVector3"]
       36 GETGLOBAL                        R2 K15 ["visiblyIdentityCFrame"]
       38 SETTABLEKS                       R2 R1 K15 ["visiblyIdentityCFrame"]
       40 RETURN                           R1 1
