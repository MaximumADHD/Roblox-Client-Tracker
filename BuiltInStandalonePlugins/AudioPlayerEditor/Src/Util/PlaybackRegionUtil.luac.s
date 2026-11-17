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
       20 LOADNIL                          R12
       21 ORK                              R12 R12 K5 [0.0001]
       22 JUMPIFNOTEQKNIL                  R12 ; [+2]
       24 LOADB                            R14 0 +1
       25 LOADB                            R14 1
       26 FASTCALL2K                       ASSERT R14 K6 ; [+4]
       28 LOADK                            R15 K6 ["epsilon was nil"]
       29 GETIMPORT                        R13 K8 [assert]
       31 CALL                             R13 2 0
       32 SUB                              R14 R3 R5
       33 FASTCALL1                        MATH_ABS R14 ; [+2]
       34 GETIMPORT                        R13 K10 [math.abs]
       36 CALL                             R13 1 1
       37 JUMPIFLE                         R13 R12 ; [+2]
       39 LOADB                            R9 0 +1
       40 LOADB                            R9 1
       41 JUMPIFNOTEQ                      R7 R5 ; [+2]
       43 MOVE                             R7 R0
       44 MOVE                             R5 R0
       45 FASTCALL2                        MATH_MAX R7 R5 ; [+5]
       47 MOVE                             R11 R7
       48 MOVE                             R12 R5
       49 GETIMPORT                        R10 K12 [math.max]
       51 CALL                             R10 2 1
       52 MOVE                             R7 R10
       53 GETUPVAL                         R13 0
       54 GETTABLEKS                       R13 R13 K13 ["MIN_REGION_SPAN"]
       56 ADD                              R12 R5 R13
       57 FASTCALL2                        MATH_MAX R8 R12 ; [+4]
       59 MOVE                             R11 R8
       60 GETIMPORT                        R10 K12 [math.max]
       62 CALL                             R10 2 1
       63 MOVE                             R8 R10
       64 GETUPVAL                         R13 0
       65 GETTABLEKS                       R13 R13 K13 ["MIN_REGION_SPAN"]
       67 ADD                              R12 R5 R13
       68 FASTCALL2                        MATH_MAX R6 R12 ; [+4]
       70 MOVE                             R11 R6
       71 GETIMPORT                        R10 K12 [math.max]
       73 CALL                             R10 2 1
       74 MOVE                             R6 R10
       75 JUMPIFNOTLT                      R4 R6 ; [+35]
       77 JUMPIFNOTEQ                      R8 R6 ; [+2]
       79 MOVE                             R8 R4
       80 MOVE                             R6 R4
       81 FASTCALL2                        MATH_MIN R8 R6 ; [+5]
       83 MOVE                             R11 R8
       84 MOVE                             R12 R6
       85 GETIMPORT                        R10 K4 [math.min]
       87 CALL                             R10 2 1
       88 MOVE                             R8 R10
       89 GETUPVAL                         R13 0
       90 GETTABLEKS                       R13 R13 K13 ["MIN_REGION_SPAN"]
       92 SUB                              R12 R6 R13
       93 FASTCALL2                        MATH_MIN R7 R12 ; [+4]
       95 MOVE                             R11 R7
       96 GETIMPORT                        R10 K4 [math.min]
       98 CALL                             R10 2 1
       99 MOVE                             R7 R10
      100 GETUPVAL                         R13 0
      101 GETTABLEKS                       R13 R13 K13 ["MIN_REGION_SPAN"]
      103 SUB                              R12 R6 R13
      104 FASTCALL2                        MATH_MIN R5 R12 ; [+4]
      106 MOVE                             R11 R5
      107 GETIMPORT                        R10 K4 [math.min]
      109 CALL                             R10 2 1
      110 MOVE                             R5 R10
      111 JUMPIFNOT                        R9 ; [+2]
      112 MOVE                             R3 R5
      113 JUMP                             ; [+9]
      114 FASTCALL3                        MATH_CLAMP R3 R5 R6
      116 MOVE                             R11 R3
      117 MOVE                             R12 R5
      118 MOVE                             R13 R6
      119 GETIMPORT                        R10 K15 [math.clamp]
      121 CALL                             R10 3 1
      122 MOVE                             R3 R10
      123 LOADNIL                          R12
      124 ORK                              R12 R12 K5 [0.0001]
      125 JUMPIFNOTEQKNIL                  R12 ; [+2]
      127 LOADB                            R14 0 +1
      128 LOADB                            R14 1
      129 FASTCALL2K                       ASSERT R14 K6 ; [+4]
      131 LOADK                            R15 K6 ["epsilon was nil"]
      132 GETIMPORT                        R13 K8 [assert]
      134 CALL                             R13 2 0
      135 SUB                              R14 R6 R4
      136 FASTCALL1                        MATH_ABS R14 ; [+2]
      137 GETIMPORT                        R13 K10 [math.abs]
      139 CALL                             R13 1 1
      140 JUMPIFLE                         R13 R12 ; [+2]
      142 LOADB                            R10 0 +1
      143 LOADB                            R10 1
      144 JUMPIFNOT                        R10 ; [+3]
      145 GETUPVAL                         R10 0
      146 GETTABLEKS                       R6 R10 K16 ["REGION_MAX_AT_TIME_LENGTH"]
      148 LOADNIL                          R12
      149 ORK                              R12 R12 K5 [0.0001]
      150 JUMPIFNOTEQKNIL                  R12 ; [+2]
      152 LOADB                            R14 0 +1
      153 LOADB                            R14 1
      154 FASTCALL2K                       ASSERT R14 K6 ; [+4]
      156 LOADK                            R15 K6 ["epsilon was nil"]
      157 GETIMPORT                        R13 K8 [assert]
      159 CALL                             R13 2 0
      160 SUB                              R14 R8 R4
      161 FASTCALL1                        MATH_ABS R14 ; [+2]
      162 GETIMPORT                        R13 K10 [math.abs]
      164 CALL                             R13 1 1
      165 JUMPIFLE                         R13 R12 ; [+2]
      167 LOADB                            R10 0 +1
      168 LOADB                            R10 1
      169 JUMPIFNOT                        R10 ; [+3]
      170 GETUPVAL                         R10 0
      171 GETTABLEKS                       R8 R10 K16 ["REGION_MAX_AT_TIME_LENGTH"]
      173 GETIMPORT                        R10 K19 [NumberRange.new]
      175 MOVE                             R11 R5
      176 MOVE                             R12 R6
      177 CALL                             R10 2 1
      178 GETIMPORT                        R11 K19 [NumberRange.new]
      180 MOVE                             R12 R7
      181 MOVE                             R13 R8
      182 CALL                             R11 2 1
      183 MOVE                             R12 R3
      184 RETURN                           R10 3

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
       20 LOADNIL                          R12
       21 ORK                              R12 R12 K5 [0.0001]
       22 JUMPIFNOTEQKNIL                  R12 ; [+2]
       24 LOADB                            R14 0 +1
       25 LOADB                            R14 1
       26 FASTCALL2K                       ASSERT R14 K6 ; [+4]
       28 LOADK                            R15 K6 ["epsilon was nil"]
       29 GETIMPORT                        R13 K8 [assert]
       31 CALL                             R13 2 0
       32 SUB                              R14 R3 R5
       33 FASTCALL1                        MATH_ABS R14 ; [+2]
       34 GETIMPORT                        R13 K10 [math.abs]
       36 CALL                             R13 1 1
       37 JUMPIFLE                         R13 R12 ; [+2]
       39 LOADB                            R9 0 +1
       40 LOADB                            R9 1
       41 JUMPIFNOTEQ                      R8 R6 ; [+2]
       43 MOVE                             R8 R0
       44 MOVE                             R6 R0
       45 FASTCALL2                        MATH_MIN R8 R6 ; [+5]
       47 MOVE                             R11 R8
       48 MOVE                             R12 R6
       49 GETIMPORT                        R10 K4 [math.min]
       51 CALL                             R10 2 1
       52 MOVE                             R8 R10
       53 GETUPVAL                         R13 0
       54 GETTABLEKS                       R13 R13 K11 ["MIN_REGION_SPAN"]
       56 SUB                              R12 R6 R13
       57 FASTCALL2                        MATH_MIN R7 R12 ; [+4]
       59 MOVE                             R11 R7
       60 GETIMPORT                        R10 K4 [math.min]
       62 CALL                             R10 2 1
       63 MOVE                             R7 R10
       64 GETUPVAL                         R13 0
       65 GETTABLEKS                       R13 R13 K11 ["MIN_REGION_SPAN"]
       67 SUB                              R12 R6 R13
       68 FASTCALL2                        MATH_MIN R5 R12 ; [+4]
       70 MOVE                             R11 R5
       71 GETIMPORT                        R10 K4 [math.min]
       73 CALL                             R10 2 1
       74 MOVE                             R5 R10
       75 LOADN                            R10 0
       76 JUMPIFNOTLT                      R5 R10 ; [+35]
       78 JUMPIFNOTEQ                      R7 R5 ; [+2]
       80 LOADN                            R7 0
       81 LOADN                            R5 0
       82 FASTCALL2                        MATH_MAX R7 R5 ; [+5]
       84 MOVE                             R11 R7
       85 MOVE                             R12 R5
       86 GETIMPORT                        R10 K13 [math.max]
       88 CALL                             R10 2 1
       89 MOVE                             R7 R10
       90 GETUPVAL                         R13 0
       91 GETTABLEKS                       R13 R13 K11 ["MIN_REGION_SPAN"]
       93 ADD                              R12 R5 R13
       94 FASTCALL2                        MATH_MAX R8 R12 ; [+4]
       96 MOVE                             R11 R8
       97 GETIMPORT                        R10 K13 [math.max]
       99 CALL                             R10 2 1
      100 MOVE                             R8 R10
      101 GETUPVAL                         R13 0
      102 GETTABLEKS                       R13 R13 K11 ["MIN_REGION_SPAN"]
      104 ADD                              R12 R5 R13
      105 FASTCALL2                        MATH_MAX R6 R12 ; [+4]
      107 MOVE                             R11 R6
      108 GETIMPORT                        R10 K13 [math.max]
      110 CALL                             R10 2 1
      111 MOVE                             R6 R10
      112 JUMPIFNOT                        R9 ; [+2]
      113 MOVE                             R3 R5
      114 JUMP                             ; [+9]
      115 FASTCALL3                        MATH_CLAMP R3 R5 R6
      117 MOVE                             R11 R3
      118 MOVE                             R12 R5
      119 MOVE                             R13 R6
      120 GETIMPORT                        R10 K15 [math.clamp]
      122 CALL                             R10 3 1
      123 MOVE                             R3 R10
      124 LOADNIL                          R12
      125 ORK                              R12 R12 K5 [0.0001]
      126 JUMPIFNOTEQKNIL                  R12 ; [+2]
      128 LOADB                            R14 0 +1
      129 LOADB                            R14 1
      130 FASTCALL2K                       ASSERT R14 K6 ; [+4]
      132 LOADK                            R15 K6 ["epsilon was nil"]
      133 GETIMPORT                        R13 K8 [assert]
      135 CALL                             R13 2 0
      136 SUB                              R14 R6 R4
      137 FASTCALL1                        MATH_ABS R14 ; [+2]
      138 GETIMPORT                        R13 K10 [math.abs]
      140 CALL                             R13 1 1
      141 JUMPIFLE                         R13 R12 ; [+2]
      143 LOADB                            R10 0 +1
      144 LOADB                            R10 1
      145 JUMPIFNOT                        R10 ; [+3]
      146 GETUPVAL                         R10 0
      147 GETTABLEKS                       R6 R10 K16 ["REGION_MAX_AT_TIME_LENGTH"]
      149 LOADNIL                          R12
      150 ORK                              R12 R12 K5 [0.0001]
      151 JUMPIFNOTEQKNIL                  R12 ; [+2]
      153 LOADB                            R14 0 +1
      154 LOADB                            R14 1
      155 FASTCALL2K                       ASSERT R14 K6 ; [+4]
      157 LOADK                            R15 K6 ["epsilon was nil"]
      158 GETIMPORT                        R13 K8 [assert]
      160 CALL                             R13 2 0
      161 SUB                              R14 R8 R4
      162 FASTCALL1                        MATH_ABS R14 ; [+2]
      163 GETIMPORT                        R13 K10 [math.abs]
      165 CALL                             R13 1 1
      166 JUMPIFLE                         R13 R12 ; [+2]
      168 LOADB                            R10 0 +1
      169 LOADB                            R10 1
      170 JUMPIFNOT                        R10 ; [+3]
      171 GETUPVAL                         R10 0
      172 GETTABLEKS                       R8 R10 K16 ["REGION_MAX_AT_TIME_LENGTH"]
      174 GETIMPORT                        R10 K19 [NumberRange.new]
      176 MOVE                             R11 R5
      177 MOVE                             R12 R6
      178 CALL                             R10 2 1
      179 GETIMPORT                        R11 K19 [NumberRange.new]
      181 MOVE                             R12 R7
      182 MOVE                             R13 R8
      183 CALL                             R11 2 1
      184 MOVE                             R12 R3
      185 RETURN                           R10 3

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
       54 LOADNIL                          R10
       55 ORK                              R10 R10 K8 [0.0001]
       56 JUMPIFNOTEQKNIL                  R10 ; [+2]
       58 LOADB                            R12 0 +1
       59 LOADB                            R12 1
       60 FASTCALL2K                       ASSERT R12 K9 ; [+4]
       62 LOADK                            R13 K9 ["epsilon was nil"]
       63 GETIMPORT                        R11 K11 [assert]
       65 CALL                             R11 2 0
       66 SUB                              R12 R7 R3
       67 FASTCALL1                        MATH_ABS R12 ; [+2]
       68 GETIMPORT                        R11 K13 [math.abs]
       70 CALL                             R11 1 1
       71 JUMPIFLE                         R11 R10 ; [+2]
       73 LOADB                            R8 0 +1
       74 LOADB                            R8 1
       75 JUMPIFNOT                        R8 ; [+3]
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R7 R8 K14 ["REGION_MAX_AT_TIME_LENGTH"]
       79 GETIMPORT                        R8 K17 [NumberRange.new]
       81 MOVE                             R9 R6
       82 MOVE                             R10 R7
       83 CALL                             R8 2 -1
       84 RETURN                           R8 -1

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
       54 LOADNIL                          R10
       55 ORK                              R10 R10 K8 [0.0001]
       56 JUMPIFNOTEQKNIL                  R10 ; [+2]
       58 LOADB                            R12 0 +1
       59 LOADB                            R12 1
       60 FASTCALL2K                       ASSERT R12 K9 ; [+4]
       62 LOADK                            R13 K9 ["epsilon was nil"]
       63 GETIMPORT                        R11 K11 [assert]
       65 CALL                             R11 2 0
       66 SUB                              R12 R7 R3
       67 FASTCALL1                        MATH_ABS R12 ; [+2]
       68 GETIMPORT                        R11 K13 [math.abs]
       70 CALL                             R11 1 1
       71 JUMPIFLE                         R11 R10 ; [+2]
       73 LOADB                            R8 0 +1
       74 LOADB                            R8 1
       75 JUMPIFNOT                        R8 ; [+3]
       76 GETUPVAL                         R8 0
       77 GETTABLEKS                       R7 R8 K14 ["REGION_MAX_AT_TIME_LENGTH"]
       79 GETIMPORT                        R8 K17 [NumberRange.new]
       81 MOVE                             R9 R6
       82 MOVE                             R10 R7
       83 CALL                             R8 2 -1
       84 RETURN                           R8 -1

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
