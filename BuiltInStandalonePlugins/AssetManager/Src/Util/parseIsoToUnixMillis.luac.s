PROTO_0:
        0 LOADN                            R3 2
        1 JUMPIFNOTLE                      R1 R3 ; [+3]
        3 SUBK                             R0 R0 K0 [1]
        4 JUMP                             ; [0]
        5 LOADN                            R6 0
        6 JUMPIFNOTLE                      R6 R0 ; [+3]
        8 MOVE                             R5 R0
        9 JUMP                             ; [+1]
       10 SUBK                             R5 R0 K2 [399]
       11 DIVK                             R4 R5 K1 [400]
       12 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       13 GETIMPORT                        R3 K5 [math.floor]
       15 CALL                             R3 1 1
       16 MULK                             R5 R3 K1 [400]
       17 SUB                              R4 R0 R5
       18 LOADN                            R6 2
       19 JUMPIFNOTLT                      R6 R1 ; [+3]
       21 SUBK                             R5 R1 K6 [3]
       22 JUMP                             ; [+1]
       23 ADDK                             R5 R1 K7 [9]
       24 MULK                             R11 R5 K10 [153]
       25 ADDK                             R10 R11 K9 [2]
       26 DIVK                             R9 R10 K8 [5]
       27 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       28 GETIMPORT                        R8 K5 [math.floor]
       30 CALL                             R8 1 1
       31 ADD                              R7 R8 R2
       32 SUBK                             R6 R7 K0 [1]
       33 MULK                             R10 R4 K11 [365]
       34 DIVK                             R12 R4 K12 [4]
       35 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       36 GETIMPORT                        R11 K5 [math.floor]
       38 CALL                             R11 1 1
       39 ADD                              R9 R10 R11
       40 DIVK                             R11 R4 K13 [100]
       41 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       42 GETIMPORT                        R10 K5 [math.floor]
       44 CALL                             R10 1 1
       45 SUB                              R8 R9 R10
       46 ADD                              R7 R8 R6
       47 MULK                             R10 R3 K15 [146097]
       48 ADD                              R9 R10 R7
       49 SUBK                             R8 R9 K14 [719468]
       50 RETURN                           R8 1

PROTO_1:
        0 MODK                             R2 R0 K0 [4]
        1 JUMPIFNOTEQKN                    R2 K1 [0] ; [+5]
        3 LOADB                            R1 1
        4 MODK                             R2 R0 K2 [100]
        5 JUMPIFNOTEQKN                    R2 K1 [0] ; [+6]
        7 MODK                             R2 R0 K3 [400]
        8 JUMPIFEQKN                       R2 K1 [0] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 RETURN                           R1 1

PROTO_2:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFEQKS                       R1 K2 ["string"] ; [+3]
        7 LOADNIL                          R1
        8 RETURN                           R1 1
        9 GETIMPORT                        R1 K4 [string.match]
       11 MOVE                             R2 R0
       12 LOADK                            R3 K5 ["^(%d%d%d%d)%-(%d%d)%-(%d%d)[Tt ](%d%d):(%d%d):(%d%d)(.*)$"]
       13 CALL                             R1 2 7
       14 JUMPIF                           R1 ; [+2]
       15 LOADNIL                          R8
       16 RETURN                           R8 1
       17 FASTCALL1                        TONUMBER R1 ; [+3]
       18 MOVE                             R9 R1
       19 GETIMPORT                        R8 K7 [tonumber]
       21 CALL                             R8 1 1
       22 FASTCALL1                        TONUMBER R2 ; [+3]
       23 MOVE                             R10 R2
       24 GETIMPORT                        R9 K7 [tonumber]
       26 CALL                             R9 1 1
       27 FASTCALL1                        TONUMBER R3 ; [+3]
       28 MOVE                             R11 R3
       29 GETIMPORT                        R10 K7 [tonumber]
       31 CALL                             R10 1 1
       32 FASTCALL1                        TONUMBER R4 ; [+3]
       33 MOVE                             R12 R4
       34 GETIMPORT                        R11 K7 [tonumber]
       36 CALL                             R11 1 1
       37 FASTCALL1                        TONUMBER R5 ; [+3]
       38 MOVE                             R13 R5
       39 GETIMPORT                        R12 K7 [tonumber]
       41 CALL                             R12 1 1
       42 FASTCALL1                        TONUMBER R6 ; [+3]
       43 MOVE                             R14 R6
       44 GETIMPORT                        R13 K7 [tonumber]
       46 CALL                             R13 1 1
       47 LOADN                            R14 1
       48 JUMPIFLT                         R9 R14 ; [+16]
       50 LOADN                            R14 12
       51 JUMPIFLT                         R14 R9 ; [+13]
       53 LOADN                            R14 1
       54 JUMPIFLT                         R10 R14 ; [+10]
       56 LOADN                            R14 23
       57 JUMPIFLT                         R14 R11 ; [+7]
       59 LOADN                            R14 59
       60 JUMPIFLT                         R14 R12 ; [+4]
       62 LOADN                            R14 59
       63 JUMPIFNOTLT                      R14 R13 ; [+3]
       65 LOADNIL                          R14
       66 RETURN                           R14 1
       67 JUMPIFNOTEQKN                    R9 K8 [2] ; [+16]
       69 MODK                             R16 R8 K9 [4]
       70 JUMPIFNOTEQKN                    R16 K10 [0] ; [+5]
       72 LOADB                            R15 1
       73 MODK                             R16 R8 K11 [100]
       74 JUMPIFNOTEQKN                    R16 K10 [0] ; [+6]
       76 MODK                             R16 R8 K12 [400]
       77 JUMPIFEQKN                       R16 K10 [0] ; [+2]
       79 LOADB                            R15 0 +1
       80 LOADB                            R15 1
       81 JUMPIFNOT                        R15 ; [+2]
       82 LOADN                            R14 29
       83 JUMP                             ; [+2]
       84 GETUPVAL                         R15 0
       85 GETTABLE                         R14 R15 R9
       86 JUMPIFNOTLT                      R14 R10 ; [+3]
       88 LOADNIL                          R15
       89 RETURN                           R15 1
       90 LOADN                            R15 0
       91 GETIMPORT                        R16 K4 [string.match]
       93 MOVE                             R17 R7
       94 LOADK                            R18 K13 ["^%.(%d+)(.*)$"]
       95 CALL                             R16 2 2
       96 JUMPIFNOT                        R16 ; [+23]
       97 LOADN                            R20 1
       98 LOADN                            R21 3
       99 FASTCALL3                        STRING_SUB R16 R20 R21
      101 MOVE                             R19 R16
      102 GETIMPORT                        R18 K15 [string.sub]
      104 CALL                             R18 3 1
      105 MOVE                             R19 R18
      106 GETIMPORT                        R20 K17 [string.rep]
      108 LOADK                            R21 K18 ["0"]
      109 LENGTH                           R23 R18
      110 SUBRK                            R22 K19 [3] R23
      111 CALL                             R20 2 1
      112 CONCAT                           R18 R19 R20
      113 FASTCALL1                        TONUMBER R18 ; [+3]
      114 MOVE                             R20 R18
      115 GETIMPORT                        R19 K7 [tonumber]
      117 CALL                             R19 1 1
      118 MOVE                             R15 R19
      119 MOVE                             R7 R17
      120 LOADN                            R18 0
      121 JUMPIFEQKS                       R7 K20 [""] ; [+39]
      123 JUMPIFEQKS                       R7 K21 ["Z"] ; [+37]
      125 JUMPIFEQKS                       R7 K22 ["z"] ; [+35]
      127 GETIMPORT                        R19 K4 [string.match]
      129 MOVE                             R20 R7
      130 LOADK                            R21 K23 ["^([%+%-])(%d%d):?(%d%d)$"]
      131 CALL                             R19 2 3
      132 JUMPIF                           R19 ; [+2]
      133 LOADNIL                          R22
      134 RETURN                           R22 1
      135 FASTCALL1                        TONUMBER R20 ; [+3]
      136 MOVE                             R23 R20
      137 GETIMPORT                        R22 K7 [tonumber]
      139 CALL                             R22 1 1
      140 FASTCALL1                        TONUMBER R21 ; [+3]
      141 MOVE                             R24 R21
      142 GETIMPORT                        R23 K7 [tonumber]
      144 CALL                             R23 1 1
      145 LOADN                            R24 23
      146 JUMPIFLT                         R24 R22 ; [+4]
      148 LOADN                            R24 59
      149 JUMPIFNOTLT                      R24 R23 ; [+3]
      151 LOADNIL                          R24
      152 RETURN                           R24 1
      153 MULK                             R25 R22 K24 [3600]
      154 MULK                             R26 R23 K25 [60]
      155 ADD                              R24 R25 R26
      156 JUMPIFNOTEQKS                    R19 K26 ["-"] ; [+3]
      158 MINUS                            R18 R24
      159 JUMP                             ; [+1]
      160 MOVE                             R18 R24
      161 GETUPVAL                         R19 1
      162 MOVE                             R20 R8
      163 MOVE                             R21 R9
      164 MOVE                             R22 R10
      165 CALL                             R19 3 1
      166 MULK                             R22 R11 K24 [3600]
      167 MULK                             R23 R12 K25 [60]
      168 ADD                              R21 R22 R23
      169 ADD                              R20 R21 R13
      170 MULK                             R23 R19 K27 [86400]
      171 ADD                              R22 R23 R20
      172 SUB                              R21 R22 R18
      173 MULK                             R23 R21 K28 [1000]
      174 ADD                              R22 R23 R15
      175 RETURN                           R22 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 1
        6 JUMPIFNOT                        R1 ; [+1]
        7 RETURN                           R1 1
        8 GETIMPORT                        R1 K2 [DateTime.fromIsoDate]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+3]
       13 GETTABLEKS                       R2 R1 K3 ["UnixTimestampMillis"]
       15 RETURN                           R2 1
       16 LOADN                            R2 0
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAmrFastIsoDateParse"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K9 [PROTO_0]
       17 NEWTABLE                         R3 0 12
       19 LOADN                            R4 31
       20 LOADN                            R5 28
       21 LOADN                            R6 31
       22 LOADN                            R7 30
       23 LOADN                            R8 31
       24 LOADN                            R9 30
       25 LOADN                            R10 31
       26 LOADN                            R11 31
       27 LOADN                            R12 30
       28 LOADN                            R13 31
       29 LOADN                            R14 30
       30 LOADN                            R15 31
       31 SETLIST                          R3 R4 12 [1]
       33 DUPCLOSURE                       R4 K10 [PROTO_1]
       34 DUPCLOSURE                       R5 K11 [PROTO_2]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 DUPCLOSURE                       R6 K12 [PROTO_3]
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R5
       40 RETURN                           R6 1
