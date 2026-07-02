PROTO_0:
        0 ORK                              R2 R2 K0 [0.0001]
        1 JUMPIFNOTEQKNIL                  R2 ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 FASTCALL2K                       ASSERT R4 K1 ; [+4]
        7 LOADK                            R5 K1 ["epsilon was nil"]
        8 GETIMPORT                        R3 K3 [assert]
       10 CALL                             R3 2 0
       11 SUB                              R5 R0 R1
       12 FASTCALL1                        MATH_ABS R5 ; [+2]
       13 GETIMPORT                        R4 K6 [math.abs]
       15 CALL                             R4 1 1
       16 JUMPIFLE                         R4 R2 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R5 R1 K0 ["Min"]
        2 GETTABLEKS                       R7 R1 K1 ["Max"]
        4 FASTCALL2                        MATH_MIN R7 R4 ; [+4]
        6 MOVE                             R8 R4
        7 GETIMPORT                        R6 K4 [math.min]
        9 CALL                             R6 2 1
       10 GETTABLEKS                       R7 R2 K0 ["Min"]
       12 GETTABLEKS                       R9 R2 K1 ["Max"]
       14 FASTCALL2                        MATH_MIN R9 R4 ; [+4]
       16 MOVE                             R10 R4
       17 GETIMPORT                        R8 K4 [math.min]
       19 CALL                             R8 2 1
       20 MOVE                             R10 R3
       21 MOVE                             R11 R5
       22 LOADNIL                          R12
       23 ORK                              R12 R12 K5 [0.0001]
       24 JUMPIFNOTEQKNIL                  R12 ; [+2]
       26 LOADB                            R14 0 +1
       27 LOADB                            R14 1
       28 FASTCALL2K                       ASSERT R14 K6 ; [+4]
       30 LOADK                            R15 K6 ["epsilon was nil"]
       31 GETIMPORT                        R13 K8 [assert]
       33 CALL                             R13 2 0
       34 SUB                              R14 R10 R11
       35 FASTCALL1                        MATH_ABS R14 ; [+2]
       36 GETIMPORT                        R13 K10 [math.abs]
       38 CALL                             R13 1 1
       39 JUMPIFLE                         R13 R12 ; [+2]
       41 LOADB                            R9 0 +1
       42 LOADB                            R9 1
       43 JUMPIFNOTEQ                      R7 R5 ; [+2]
       45 MOVE                             R7 R0
       46 MOVE                             R5 R0
       47 FASTCALL2                        MATH_MAX R7 R5 ; [+5]
       49 MOVE                             R11 R7
       50 MOVE                             R12 R5
       51 GETIMPORT                        R10 K12 [math.max]
       53 CALL                             R10 2 1
       54 MOVE                             R7 R10
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R13 R13 K13 ["MIN_REGION_SPAN"]
       58 ADD                              R12 R5 R13
       59 FASTCALL2                        MATH_MAX R8 R12 ; [+4]
       61 MOVE                             R11 R8
       62 GETIMPORT                        R10 K12 [math.max]
       64 CALL                             R10 2 1
       65 MOVE                             R8 R10
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R13 R13 K13 ["MIN_REGION_SPAN"]
       69 ADD                              R12 R5 R13
       70 FASTCALL2                        MATH_MAX R6 R12 ; [+4]
       72 MOVE                             R11 R6
       73 GETIMPORT                        R10 K12 [math.max]
       75 CALL                             R10 2 1
       76 MOVE                             R6 R10
       77 JUMPIFNOTLT                      R4 R6 ; [+35]
       79 JUMPIFNOTEQ                      R8 R6 ; [+2]
       81 MOVE                             R8 R4
       82 MOVE                             R6 R4
       83 FASTCALL2                        MATH_MIN R8 R6 ; [+5]
       85 MOVE                             R11 R8
       86 MOVE                             R12 R6
       87 GETIMPORT                        R10 K4 [math.min]
       89 CALL                             R10 2 1
       90 MOVE                             R8 R10
       91 GETUPVAL                         R13 0
       92 GETTABLEKS                       R13 R13 K13 ["MIN_REGION_SPAN"]
       94 SUB                              R12 R6 R13
       95 FASTCALL2                        MATH_MIN R7 R12 ; [+4]
       97 MOVE                             R11 R7
       98 GETIMPORT                        R10 K4 [math.min]
      100 CALL                             R10 2 1
      101 MOVE                             R7 R10
      102 GETUPVAL                         R13 0
      103 GETTABLEKS                       R13 R13 K13 ["MIN_REGION_SPAN"]
      105 SUB                              R12 R6 R13
      106 FASTCALL2                        MATH_MIN R5 R12 ; [+4]
      108 MOVE                             R11 R5
      109 GETIMPORT                        R10 K4 [math.min]
      111 CALL                             R10 2 1
      112 MOVE                             R5 R10
      113 JUMPIFNOT                        R9 ; [+2]
      114 MOVE                             R3 R5
      115 JUMP                             ; [+9]
      116 FASTCALL3                        MATH_CLAMP R3 R5 R6
      118 MOVE                             R11 R3
      119 MOVE                             R12 R5
      120 MOVE                             R13 R6
      121 GETIMPORT                        R10 K15 [math.clamp]
      123 CALL                             R10 3 1
      124 MOVE                             R3 R10
      125 MOVE                             R11 R6
      126 LOADNIL                          R12
      127 ORK                              R12 R12 K5 [0.0001]
      128 JUMPIFNOTEQKNIL                  R12 ; [+2]
      130 LOADB                            R14 0 +1
      131 LOADB                            R14 1
      132 FASTCALL2K                       ASSERT R14 K6 ; [+4]
      134 LOADK                            R15 K6 ["epsilon was nil"]
      135 GETIMPORT                        R13 K8 [assert]
      137 CALL                             R13 2 0
      138 SUB                              R14 R11 R4
      139 FASTCALL1                        MATH_ABS R14 ; [+2]
      140 GETIMPORT                        R13 K10 [math.abs]
      142 CALL                             R13 1 1
      143 JUMPIFLE                         R13 R12 ; [+2]
      145 LOADB                            R10 0 +1
      146 LOADB                            R10 1
      147 JUMPIFNOT                        R10 ; [+3]
      148 GETUPVAL                         R10 0
      149 GETTABLEKS                       R6 R10 K16 ["REGION_MAX_AT_TIME_LENGTH"]
      151 MOVE                             R11 R8
      152 LOADNIL                          R12
      153 ORK                              R12 R12 K5 [0.0001]
      154 JUMPIFNOTEQKNIL                  R12 ; [+2]
      156 LOADB                            R14 0 +1
      157 LOADB                            R14 1
      158 FASTCALL2K                       ASSERT R14 K6 ; [+4]
      160 LOADK                            R15 K6 ["epsilon was nil"]
      161 GETIMPORT                        R13 K8 [assert]
      163 CALL                             R13 2 0
      164 SUB                              R14 R11 R4
      165 FASTCALL1                        MATH_ABS R14 ; [+2]
      166 GETIMPORT                        R13 K10 [math.abs]
      168 CALL                             R13 1 1
      169 JUMPIFLE                         R13 R12 ; [+2]
      171 LOADB                            R10 0 +1
      172 LOADB                            R10 1
      173 JUMPIFNOT                        R10 ; [+3]
      174 GETUPVAL                         R10 0
      175 GETTABLEKS                       R8 R10 K16 ["REGION_MAX_AT_TIME_LENGTH"]
      177 GETIMPORT                        R10 K19 [NumberRange.new]
      179 MOVE                             R11 R5
      180 MOVE                             R12 R6
      181 CALL                             R10 2 1
      182 GETIMPORT                        R11 K19 [NumberRange.new]
      184 MOVE                             R12 R7
      185 MOVE                             R13 R8
      186 CALL                             R11 2 1
      187 MOVE                             R12 R3
      188 RETURN                           R10 3

PROTO_2:
        0 GETTABLEKS                       R5 R1 K0 ["Min"]
        2 GETTABLEKS                       R7 R1 K1 ["Max"]
        4 FASTCALL2                        MATH_MIN R7 R4 ; [+4]
        6 MOVE                             R8 R4
        7 GETIMPORT                        R6 K4 [math.min]
        9 CALL                             R6 2 1
       10 GETTABLEKS                       R7 R2 K0 ["Min"]
       12 GETTABLEKS                       R9 R2 K1 ["Max"]
       14 FASTCALL2                        MATH_MIN R9 R4 ; [+4]
       16 MOVE                             R10 R4
       17 GETIMPORT                        R8 K4 [math.min]
       19 CALL                             R8 2 1
       20 MOVE                             R10 R3
       21 MOVE                             R11 R5
       22 LOADNIL                          R12
       23 ORK                              R12 R12 K5 [0.0001]
       24 JUMPIFNOTEQKNIL                  R12 ; [+2]
       26 LOADB                            R14 0 +1
       27 LOADB                            R14 1
       28 FASTCALL2K                       ASSERT R14 K6 ; [+4]
       30 LOADK                            R15 K6 ["epsilon was nil"]
       31 GETIMPORT                        R13 K8 [assert]
       33 CALL                             R13 2 0
       34 SUB                              R14 R10 R11
       35 FASTCALL1                        MATH_ABS R14 ; [+2]
       36 GETIMPORT                        R13 K10 [math.abs]
       38 CALL                             R13 1 1
       39 JUMPIFLE                         R13 R12 ; [+2]
       41 LOADB                            R9 0 +1
       42 LOADB                            R9 1
       43 JUMPIFNOTEQ                      R8 R6 ; [+2]
       45 MOVE                             R8 R0
       46 MOVE                             R6 R0
       47 FASTCALL2                        MATH_MIN R8 R6 ; [+5]
       49 MOVE                             R11 R8
       50 MOVE                             R12 R6
       51 GETIMPORT                        R10 K4 [math.min]
       53 CALL                             R10 2 1
       54 MOVE                             R8 R10
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R13 R13 K11 ["MIN_REGION_SPAN"]
       58 SUB                              R12 R6 R13
       59 FASTCALL2                        MATH_MIN R7 R12 ; [+4]
       61 MOVE                             R11 R7
       62 GETIMPORT                        R10 K4 [math.min]
       64 CALL                             R10 2 1
       65 MOVE                             R7 R10
       66 GETUPVAL                         R13 0
       67 GETTABLEKS                       R13 R13 K11 ["MIN_REGION_SPAN"]
       69 SUB                              R12 R6 R13
       70 FASTCALL2                        MATH_MIN R5 R12 ; [+4]
       72 MOVE                             R11 R5
       73 GETIMPORT                        R10 K4 [math.min]
       75 CALL                             R10 2 1
       76 MOVE                             R5 R10
       77 LOADN                            R10 0
       78 JUMPIFNOTLT                      R5 R10 ; [+35]
       80 JUMPIFNOTEQ                      R7 R5 ; [+2]
       82 LOADN                            R7 0
       83 LOADN                            R5 0
       84 FASTCALL2                        MATH_MAX R7 R5 ; [+5]
       86 MOVE                             R11 R7
       87 MOVE                             R12 R5
       88 GETIMPORT                        R10 K13 [math.max]
       90 CALL                             R10 2 1
       91 MOVE                             R7 R10
       92 GETUPVAL                         R13 0
       93 GETTABLEKS                       R13 R13 K11 ["MIN_REGION_SPAN"]
       95 ADD                              R12 R5 R13
       96 FASTCALL2                        MATH_MAX R8 R12 ; [+4]
       98 MOVE                             R11 R8
       99 GETIMPORT                        R10 K13 [math.max]
      101 CALL                             R10 2 1
      102 MOVE                             R8 R10
      103 GETUPVAL                         R13 0
      104 GETTABLEKS                       R13 R13 K11 ["MIN_REGION_SPAN"]
      106 ADD                              R12 R5 R13
      107 FASTCALL2                        MATH_MAX R6 R12 ; [+4]
      109 MOVE                             R11 R6
      110 GETIMPORT                        R10 K13 [math.max]
      112 CALL                             R10 2 1
      113 MOVE                             R6 R10
      114 JUMPIFNOT                        R9 ; [+2]
      115 MOVE                             R3 R5
      116 JUMP                             ; [+9]
      117 FASTCALL3                        MATH_CLAMP R3 R5 R6
      119 MOVE                             R11 R3
      120 MOVE                             R12 R5
      121 MOVE                             R13 R6
      122 GETIMPORT                        R10 K15 [math.clamp]
      124 CALL                             R10 3 1
      125 MOVE                             R3 R10
      126 MOVE                             R11 R6
      127 LOADNIL                          R12
      128 ORK                              R12 R12 K5 [0.0001]
      129 JUMPIFNOTEQKNIL                  R12 ; [+2]
      131 LOADB                            R14 0 +1
      132 LOADB                            R14 1
      133 FASTCALL2K                       ASSERT R14 K6 ; [+4]
      135 LOADK                            R15 K6 ["epsilon was nil"]
      136 GETIMPORT                        R13 K8 [assert]
      138 CALL                             R13 2 0
      139 SUB                              R14 R11 R4
      140 FASTCALL1                        MATH_ABS R14 ; [+2]
      141 GETIMPORT                        R13 K10 [math.abs]
      143 CALL                             R13 1 1
      144 JUMPIFLE                         R13 R12 ; [+2]
      146 LOADB                            R10 0 +1
      147 LOADB                            R10 1
      148 JUMPIFNOT                        R10 ; [+3]
      149 GETUPVAL                         R10 0
      150 GETTABLEKS                       R6 R10 K16 ["REGION_MAX_AT_TIME_LENGTH"]
      152 MOVE                             R11 R8
      153 LOADNIL                          R12
      154 ORK                              R12 R12 K5 [0.0001]
      155 JUMPIFNOTEQKNIL                  R12 ; [+2]
      157 LOADB                            R14 0 +1
      158 LOADB                            R14 1
      159 FASTCALL2K                       ASSERT R14 K6 ; [+4]
      161 LOADK                            R15 K6 ["epsilon was nil"]
      162 GETIMPORT                        R13 K8 [assert]
      164 CALL                             R13 2 0
      165 SUB                              R14 R11 R4
      166 FASTCALL1                        MATH_ABS R14 ; [+2]
      167 GETIMPORT                        R13 K10 [math.abs]
      169 CALL                             R13 1 1
      170 JUMPIFLE                         R13 R12 ; [+2]
      172 LOADB                            R10 0 +1
      173 LOADB                            R10 1
      174 JUMPIFNOT                        R10 ; [+3]
      175 GETUPVAL                         R10 0
      176 GETTABLEKS                       R8 R10 K16 ["REGION_MAX_AT_TIME_LENGTH"]
      178 GETIMPORT                        R10 K19 [NumberRange.new]
      180 MOVE                             R11 R5
      181 MOVE                             R12 R6
      182 CALL                             R10 2 1
      183 GETIMPORT                        R11 K19 [NumberRange.new]
      185 MOVE                             R12 R7
      186 MOVE                             R13 R8
      187 CALL                             R11 2 1
      188 MOVE                             R12 R3
      189 RETURN                           R10 3

PROTO_3:
        0 GETTABLEKS                       R4 R1 K0 ["Min"]
        2 GETTABLEKS                       R6 R1 K1 ["Max"]
        4 FASTCALL2                        MATH_MIN R6 R3 ; [+4]
        6 MOVE                             R7 R3
        7 GETIMPORT                        R5 K4 [math.min]
        9 CALL                             R5 2 1
       10 GETTABLEKS                       R6 R2 K0 ["Min"]
       12 GETTABLEKS                       R8 R2 K1 ["Max"]
       14 FASTCALL2                        MATH_MIN R8 R3 ; [+4]
       16 MOVE                             R9 R3
       17 GETIMPORT                        R7 K4 [math.min]
       19 CALL                             R7 2 1
       20 MOVE                             R6 R0
       21 FASTCALL2                        MATH_MAX R6 R4 ; [+5]
       23 MOVE                             R9 R6
       24 MOVE                             R10 R4
       25 GETIMPORT                        R8 K6 [math.max]
       27 CALL                             R8 2 1
       28 MOVE                             R6 R8
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R11 R11 K7 ["MIN_REGION_SPAN"]
       32 ADD                              R10 R6 R11
       33 FASTCALL2                        MATH_MAX R7 R10 ; [+4]
       35 MOVE                             R9 R7
       36 GETIMPORT                        R8 K6 [math.max]
       38 CALL                             R8 2 1
       39 MOVE                             R7 R8
       40 JUMPIFNOTLT                      R5 R7 ; [+13]
       42 MOVE                             R7 R5
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K7 ["MIN_REGION_SPAN"]
       46 SUB                              R10 R7 R11
       47 FASTCALL2                        MATH_MIN R6 R10 ; [+4]
       49 MOVE                             R9 R6
       50 GETIMPORT                        R8 K4 [math.min]
       52 CALL                             R8 2 1
       53 MOVE                             R6 R8
       54 MOVE                             R9 R7
       55 LOADNIL                          R10
       56 ORK                              R10 R10 K8 [0.0001]
       57 JUMPIFNOTEQKNIL                  R10 ; [+2]
       59 LOADB                            R12 0 +1
       60 LOADB                            R12 1
       61 FASTCALL2K                       ASSERT R12 K9 ; [+4]
       63 LOADK                            R13 K9 ["epsilon was nil"]
       64 GETIMPORT                        R11 K11 [assert]
       66 CALL                             R11 2 0
       67 SUB                              R12 R9 R3
       68 FASTCALL1                        MATH_ABS R12 ; [+2]
       69 GETIMPORT                        R11 K13 [math.abs]
       71 CALL                             R11 1 1
       72 JUMPIFLE                         R11 R10 ; [+2]
       74 LOADB                            R8 0 +1
       75 LOADB                            R8 1
       76 JUMPIFNOT                        R8 ; [+3]
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R7 R8 K14 ["REGION_MAX_AT_TIME_LENGTH"]
       80 GETIMPORT                        R8 K17 [NumberRange.new]
       82 MOVE                             R9 R6
       83 MOVE                             R10 R7
       84 CALL                             R8 2 -1
       85 RETURN                           R8 -1

PROTO_4:
        0 GETTABLEKS                       R4 R1 K0 ["Min"]
        2 GETTABLEKS                       R6 R1 K1 ["Max"]
        4 FASTCALL2                        MATH_MIN R6 R3 ; [+4]
        6 MOVE                             R7 R3
        7 GETIMPORT                        R5 K4 [math.min]
        9 CALL                             R5 2 1
       10 GETTABLEKS                       R6 R2 K0 ["Min"]
       12 GETTABLEKS                       R8 R2 K1 ["Max"]
       14 FASTCALL2                        MATH_MIN R8 R3 ; [+4]
       16 MOVE                             R9 R3
       17 GETIMPORT                        R7 K4 [math.min]
       19 CALL                             R7 2 1
       20 MOVE                             R7 R0
       21 FASTCALL2                        MATH_MIN R7 R5 ; [+5]
       23 MOVE                             R9 R7
       24 MOVE                             R10 R5
       25 GETIMPORT                        R8 K4 [math.min]
       27 CALL                             R8 2 1
       28 MOVE                             R7 R8
       29 GETUPVAL                         R11 0
       30 GETTABLEKS                       R11 R11 K5 ["MIN_REGION_SPAN"]
       32 SUB                              R10 R7 R11
       33 FASTCALL2                        MATH_MIN R6 R10 ; [+4]
       35 MOVE                             R9 R6
       36 GETIMPORT                        R8 K4 [math.min]
       38 CALL                             R8 2 1
       39 MOVE                             R6 R8
       40 JUMPIFNOTLT                      R6 R4 ; [+13]
       42 MOVE                             R6 R4
       43 GETUPVAL                         R11 0
       44 GETTABLEKS                       R11 R11 K5 ["MIN_REGION_SPAN"]
       46 ADD                              R10 R6 R11
       47 FASTCALL2                        MATH_MAX R7 R10 ; [+4]
       49 MOVE                             R9 R7
       50 GETIMPORT                        R8 K7 [math.max]
       52 CALL                             R8 2 1
       53 MOVE                             R7 R8
       54 MOVE                             R9 R7
       55 LOADNIL                          R10
       56 ORK                              R10 R10 K8 [0.0001]
       57 JUMPIFNOTEQKNIL                  R10 ; [+2]
       59 LOADB                            R12 0 +1
       60 LOADB                            R12 1
       61 FASTCALL2K                       ASSERT R12 K9 ; [+4]
       63 LOADK                            R13 K9 ["epsilon was nil"]
       64 GETIMPORT                        R11 K11 [assert]
       66 CALL                             R11 2 0
       67 SUB                              R12 R9 R3
       68 FASTCALL1                        MATH_ABS R12 ; [+2]
       69 GETIMPORT                        R11 K13 [math.abs]
       71 CALL                             R11 1 1
       72 JUMPIFLE                         R11 R10 ; [+2]
       74 LOADB                            R8 0 +1
       75 LOADB                            R8 1
       76 JUMPIFNOT                        R8 ; [+3]
       77 GETUPVAL                         R8 0
       78 GETTABLEKS                       R7 R8 K14 ["REGION_MAX_AT_TIME_LENGTH"]
       80 GETIMPORT                        R8 K17 [NumberRange.new]
       82 MOVE                             R9 R6
       83 MOVE                             R10 R7
       84 CALL                             R8 2 -1
       85 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADK                            R1 K0 [0.001]
        4 SETTABLEKS                       R1 R0 K1 ["MIN_REGION_SPAN"]
        6 LOADK                            R1 K2 [60000]
        7 SETTABLEKS                       R1 R0 K3 ["REGION_MAX_AT_TIME_LENGTH"]
        9 DUPCLOSURE                       R1 K4 [PROTO_0]
       10 DUPCLOSURE                       R2 K5 [PROTO_1]
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R2 R0 K6 ["adjustPlaybackRegionMin"]
       14 DUPCLOSURE                       R2 K7 [PROTO_2]
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R2 R0 K8 ["adjustPlaybackRegionMax"]
       18 DUPCLOSURE                       R2 K9 [PROTO_3]
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R2 R0 K10 ["adjustLoopRegionMin"]
       22 DUPCLOSURE                       R2 K11 [PROTO_4]
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R2 R0 K12 ["adjustLoopRegionMax"]
       26 RETURN                           R0 1
