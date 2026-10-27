PROTO_0:
        0 LOADB                            R1 0
        1 JUMPIFNOTEQ                      R0 R0 ; [+11]
        3 FASTCALL1                        MATH_ABS R0 ; [+3]
        4 MOVE                             R3 R0
        5 GETIMPORT                        R2 K2 [math.abs]
        7 CALL                             R2 1 1
        8 LOADK                            R3 K3 [Infinity]
        9 JUMPIFLT                         R2 R3 ; [+2]
       11 LOADB                            R1 0 +1
       12 LOADB                            R1 1
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 MUL                              R2 R0 R3
        2 FASTCALL1                        MATH_ROUND R2 ; [+2]
        3 GETIMPORT                        R1 K2 [math.round]
        5 CALL                             R1 1 1
        6 RETURN                           R1 1

PROTO_2:
        0 ADDK                             R3 R0 K0 [1E-06]
        1 GETUPVAL                         R4 0
        2 MUL                              R2 R3 R4
        3 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        4 GETIMPORT                        R1 K3 [math.floor]
        6 CALL                             R1 1 1
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R7 0
        1 MUL                              R6 R0 R7
        2 FASTCALL1                        MATH_ROUND R6 ; [+2]
        3 GETIMPORT                        R5 K2 [math.round]
        5 CALL                             R5 1 1
        6 GETUPVAL                         R6 0
        7 DIV                              R4 R5 R6
        8 SUB                              R3 R4 R0
        9 FASTCALL1                        MATH_ABS R3 ; [+2]
       10 GETIMPORT                        R2 K4 [math.abs]
       12 CALL                             R2 1 1
       13 LOADK                            R3 K5 [1E-06]
       14 JUMPIFLE                         R2 R3 ; [+2]
       16 LOADB                            R1 0 +1
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_4:
        0 DUPTABLE                         R1 K4 [{"startFrame", "holdStartFrame", "holdEndFrame", "endFrame"}]
        1 GETTABLEKS                       R3 R0 K5 ["startTime"]
        3 GETUPVAL                         R6 0
        4 MUL                              R5 R3 R6
        5 FASTCALL1                        MATH_ROUND R5 ; [+2]
        6 GETIMPORT                        R4 K8 [math.round]
        8 CALL                             R4 1 1
        9 MOVE                             R2 R4
       10 SETTABLEKS                       R2 R1 K0 ["startFrame"]
       12 GETTABLEKS                       R3 R0 K9 ["holdStartTime"]
       14 GETUPVAL                         R6 0
       15 MUL                              R5 R3 R6
       16 FASTCALL1                        MATH_ROUND R5 ; [+2]
       17 GETIMPORT                        R4 K8 [math.round]
       19 CALL                             R4 1 1
       20 MOVE                             R2 R4
       21 SETTABLEKS                       R2 R1 K1 ["holdStartFrame"]
       23 GETTABLEKS                       R3 R0 K10 ["holdEndTime"]
       25 GETUPVAL                         R6 0
       26 MUL                              R5 R3 R6
       27 FASTCALL1                        MATH_ROUND R5 ; [+2]
       28 GETIMPORT                        R4 K8 [math.round]
       30 CALL                             R4 1 1
       31 MOVE                             R2 R4
       32 SETTABLEKS                       R2 R1 K2 ["holdEndFrame"]
       34 GETTABLEKS                       R3 R0 K11 ["endTime"]
       36 GETUPVAL                         R6 0
       37 MUL                              R5 R3 R6
       38 FASTCALL1                        MATH_ROUND R5 ; [+2]
       39 GETIMPORT                        R4 K8 [math.round]
       41 CALL                             R4 1 1
       42 MOVE                             R2 R4
       43 SETTABLEKS                       R2 R1 K3 ["endFrame"]
       45 RETURN                           R1 1

PROTO_5:
        0 DUPTABLE                         R1 K4 [{"startTime", "holdStartTime", "holdEndTime", "endTime"}]
        1 GETTABLEKS                       R3 R0 K5 ["startFrame"]
        3 GETUPVAL                         R4 0
        4 DIV                              R2 R3 R4
        5 SETTABLEKS                       R2 R1 K0 ["startTime"]
        7 GETTABLEKS                       R3 R0 K6 ["holdStartFrame"]
        9 GETUPVAL                         R4 0
       10 DIV                              R2 R3 R4
       11 SETTABLEKS                       R2 R1 K1 ["holdStartTime"]
       13 GETTABLEKS                       R3 R0 K7 ["holdEndFrame"]
       15 GETUPVAL                         R4 0
       16 DIV                              R2 R3 R4
       17 SETTABLEKS                       R2 R1 K2 ["holdEndTime"]
       19 GETTABLEKS                       R3 R0 K8 ["endFrame"]
       21 GETUPVAL                         R4 0
       22 DIV                              R2 R3 R4
       23 SETTABLEKS                       R2 R1 K3 ["endTime"]
       25 RETURN                           R1 1

PROTO_6:
        0 GETTABLEKS                       R4 R0 K1 ["holdStartFrame"]
        2 GETTABLEKS                       R5 R0 K2 ["holdEndFrame"]
        4 ADD                              R3 R4 R5
        5 DIVK                             R2 R3 K0 [2]
        6 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        7 GETIMPORT                        R1 K5 [math.floor]
        9 CALL                             R1 1 1
       10 RETURN                           R1 1

PROTO_7:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["startFrame"]
        3 GETTABLEKS                       R4 R1 K1 ["endFrame"]
        5 JUMPIFNOTLT                      R3 R4 ; [+9]
        7 GETTABLEKS                       R3 R1 K0 ["startFrame"]
        9 GETTABLEKS                       R4 R0 K1 ["endFrame"]
       11 JUMPIFLT                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 LOADB                            R3 0
       16 GETTABLEKS                       R4 R0 K2 ["holdStartFrame"]
       18 GETTABLEKS                       R5 R1 K3 ["holdEndFrame"]
       20 JUMPIFNOTLE                      R4 R5 ; [+9]
       22 GETTABLEKS                       R4 R1 K2 ["holdStartFrame"]
       24 GETTABLEKS                       R5 R0 K3 ["holdEndFrame"]
       26 JUMPIFLE                         R4 R5 ; [+2]
       28 LOADB                            R3 0 +1
       29 LOADB                            R3 1
       30 OR                               R4 R2 R3
       31 RETURN                           R4 1

PROTO_8:
        0 JUMPIFNOTLT                      R2 R1 ; [+3]
        2 LOADNIL                          R3
        3 RETURN                           R3 1
        4 FASTCALL3                        MATH_CLAMP R0 R1 R2
        6 MOVE                             R4 R0
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 GETIMPORT                        R3 K2 [math.clamp]
       11 CALL                             R3 3 1
       12 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R5 0
        1 MUL                              R4 R1 R5
        2 FASTCALL1                        MATH_ROUND R4 ; [+2]
        3 GETIMPORT                        R3 K2 [math.round]
        5 CALL                             R3 1 1
        6 LOADN                            R4 0
        7 ADDK                             R7 R2 K3 [1E-06]
        8 GETUPVAL                         R8 0
        9 MUL                              R6 R7 R8
       10 FASTCALL1                        MATH_FLOOR R6 ; [+2]
       11 GETIMPORT                        R5 K5 [math.floor]
       13 CALL                             R5 1 1
       14 MOVE                             R6 R0
       15 LOADNIL                          R7
       16 LOADNIL                          R8
       17 FORGPREP                         R6
       18 JUMPIFEQ                         R9 R1 ; [+31]
       20 GETUPVAL                         R11 1
       21 MOVE                             R12 R10
       22 CALL                             R11 1 1
       23 GETUPVAL                         R14 0
       24 MUL                              R13 R9 R14
       25 FASTCALL1                        MATH_ROUND R13 ; [+2]
       26 GETIMPORT                        R12 K2 [math.round]
       28 CALL                             R12 1 1
       29 JUMPIFNOTLT                      R12 R3 ; [+11]
       31 GETTABLEKS                       R14 R11 K6 ["endFrame"]
       33 FASTCALL2                        MATH_MAX R4 R14 ; [+4]
       35 MOVE                             R13 R4
       36 GETIMPORT                        R12 K8 [math.max]
       38 CALL                             R12 2 1
       39 MOVE                             R4 R12
       40 JUMP                             ; [+9]
       41 GETTABLEKS                       R14 R11 K9 ["startFrame"]
       43 FASTCALL2                        MATH_MIN R5 R14 ; [+4]
       45 MOVE                             R13 R5
       46 GETIMPORT                        R12 K11 [math.min]
       48 CALL                             R12 2 1
       49 MOVE                             R5 R12
       50 FORGLOOP                         R6 2 ; [-33]
       52 RETURN                           R4 2

PROTO_10:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R5 R0 K0 ["startTime"]
        3 GETTABLEKS                       R6 R1 K0 ["startTime"]
        5 SUB                              R4 R5 R6
        6 FASTCALL1                        MATH_ABS R4 ; [+2]
        7 GETIMPORT                        R3 K3 [math.abs]
        9 CALL                             R3 1 1
       10 LOADK                            R4 K4 [1E-06]
       11 JUMPIFNOTLT                      R3 R4 ; [+41]
       13 LOADB                            R2 0
       14 GETTABLEKS                       R5 R0 K5 ["holdStartTime"]
       16 GETTABLEKS                       R6 R1 K5 ["holdStartTime"]
       18 SUB                              R4 R5 R6
       19 FASTCALL1                        MATH_ABS R4 ; [+2]
       20 GETIMPORT                        R3 K3 [math.abs]
       22 CALL                             R3 1 1
       23 LOADK                            R4 K4 [1E-06]
       24 JUMPIFNOTLT                      R3 R4 ; [+28]
       26 LOADB                            R2 0
       27 GETTABLEKS                       R5 R0 K6 ["holdEndTime"]
       29 GETTABLEKS                       R6 R1 K6 ["holdEndTime"]
       31 SUB                              R4 R5 R6
       32 FASTCALL1                        MATH_ABS R4 ; [+2]
       33 GETIMPORT                        R3 K3 [math.abs]
       35 CALL                             R3 1 1
       36 LOADK                            R4 K4 [1E-06]
       37 JUMPIFNOTLT                      R3 R4 ; [+15]
       39 GETTABLEKS                       R5 R0 K7 ["endTime"]
       41 GETTABLEKS                       R6 R1 K7 ["endTime"]
       43 SUB                              R4 R5 R6
       44 FASTCALL1                        MATH_ABS R4 ; [+2]
       45 GETIMPORT                        R3 K3 [math.abs]
       47 CALL                             R3 1 1
       48 LOADK                            R4 K4 [1E-06]
       49 JUMPIFLT                         R3 R4 ; [+2]
       51 LOADB                            R2 0 +1
       52 LOADB                            R2 1
       53 RETURN                           R2 1

PROTO_11:
        0 NEWTABLE                         R5 0 6
        2 MOVE                             R6 R0
        3 GETTABLEKS                       R7 R1 K0 ["startTime"]
        5 GETTABLEKS                       R8 R1 K1 ["holdStartTime"]
        7 GETTABLEKS                       R9 R1 K2 ["holdEndTime"]
        9 GETTABLEKS                       R10 R1 K3 ["endTime"]
       11 MOVE                             R11 R2
       12 SETLIST                          R5 R6 6 [1]
       14 MOVE                             R6 R5
       15 LOADNIL                          R7
       16 LOADNIL                          R8
       17 FORGPREP                         R6
       18 LOADB                            R11 0
       19 JUMPIFNOTEQ                      R10 R10 ; [+11]
       21 FASTCALL1                        MATH_ABS R10 ; [+3]
       22 MOVE                             R13 R10
       23 GETIMPORT                        R12 K6 [math.abs]
       25 CALL                             R12 1 1
       26 LOADK                            R13 K7 [Infinity]
       27 JUMPIFLT                         R12 R13 ; [+2]
       29 LOADB                            R11 0 +1
       30 LOADB                            R11 1
       31 JUMPIF                           R11 ; [+2]
       32 LOADB                            R11 0
       33 RETURN                           R11 1
       34 FORGLOOP                         R6 2 ; [-17]
       36 GETTABLEN                        R7 R5 2
       37 GETUPVAL                         R13 0
       38 MUL                              R12 R7 R13
       39 FASTCALL1                        MATH_ROUND R12 ; [+2]
       40 GETIMPORT                        R11 K9 [math.round]
       42 CALL                             R11 1 1
       43 GETUPVAL                         R12 0
       44 DIV                              R10 R11 R12
       45 SUB                              R9 R10 R7
       46 FASTCALL1                        MATH_ABS R9 ; [+2]
       47 GETIMPORT                        R8 K6 [math.abs]
       49 CALL                             R8 1 1
       50 LOADK                            R9 K10 [1E-06]
       51 JUMPIFLE                         R8 R9 ; [+2]
       53 LOADB                            R6 0 +1
       54 LOADB                            R6 1
       55 JUMPIF                           R6 ; [+2]
       56 LOADB                            R6 0
       57 RETURN                           R6 1
       58 GETTABLEN                        R7 R5 3
       59 GETUPVAL                         R13 0
       60 MUL                              R12 R7 R13
       61 FASTCALL1                        MATH_ROUND R12 ; [+2]
       62 GETIMPORT                        R11 K9 [math.round]
       64 CALL                             R11 1 1
       65 GETUPVAL                         R12 0
       66 DIV                              R10 R11 R12
       67 SUB                              R9 R10 R7
       68 FASTCALL1                        MATH_ABS R9 ; [+2]
       69 GETIMPORT                        R8 K6 [math.abs]
       71 CALL                             R8 1 1
       72 LOADK                            R9 K10 [1E-06]
       73 JUMPIFLE                         R8 R9 ; [+2]
       75 LOADB                            R6 0 +1
       76 LOADB                            R6 1
       77 JUMPIF                           R6 ; [+2]
       78 LOADB                            R6 0
       79 RETURN                           R6 1
       80 GETTABLEN                        R7 R5 4
       81 GETUPVAL                         R13 0
       82 MUL                              R12 R7 R13
       83 FASTCALL1                        MATH_ROUND R12 ; [+2]
       84 GETIMPORT                        R11 K9 [math.round]
       86 CALL                             R11 1 1
       87 GETUPVAL                         R12 0
       88 DIV                              R10 R11 R12
       89 SUB                              R9 R10 R7
       90 FASTCALL1                        MATH_ABS R9 ; [+2]
       91 GETIMPORT                        R8 K6 [math.abs]
       93 CALL                             R8 1 1
       94 LOADK                            R9 K10 [1E-06]
       95 JUMPIFLE                         R8 R9 ; [+2]
       97 LOADB                            R6 0 +1
       98 LOADB                            R6 1
       99 JUMPIF                           R6 ; [+2]
      100 LOADB                            R6 0
      101 RETURN                           R6 1
      102 GETTABLEN                        R7 R5 5
      103 GETUPVAL                         R13 0
      104 MUL                              R12 R7 R13
      105 FASTCALL1                        MATH_ROUND R12 ; [+2]
      106 GETIMPORT                        R11 K9 [math.round]
      108 CALL                             R11 1 1
      109 GETUPVAL                         R12 0
      110 DIV                              R10 R11 R12
      111 SUB                              R9 R10 R7
      112 FASTCALL1                        MATH_ABS R9 ; [+2]
      113 GETIMPORT                        R8 K6 [math.abs]
      115 CALL                             R8 1 1
      116 LOADK                            R9 K10 [1E-06]
      117 JUMPIFLE                         R8 R9 ; [+2]
      119 LOADB                            R6 0 +1
      120 LOADB                            R6 1
      121 JUMPIF                           R6 ; [+2]
      122 LOADB                            R6 0
      123 RETURN                           R6 1
      124 GETUPVAL                         R6 1
      125 MOVE                             R7 R1
      126 CALL                             R6 1 1
      127 GETTABLEKS                       R7 R6 K11 ["startFrame"]
      129 LOADN                            R8 0
      130 JUMPIFLT                         R7 R8 ; [+48]
      132 GETTABLEKS                       R7 R6 K12 ["endFrame"]
      134 ADDK                             R10 R2 K10 [1E-06]
      135 GETUPVAL                         R11 0
      136 MUL                              R9 R10 R11
      137 FASTCALL1                        MATH_FLOOR R9 ; [+2]
      138 GETIMPORT                        R8 K14 [math.floor]
      140 CALL                             R8 1 1
      141 JUMPIFLT                         R8 R7 ; [+37]
      143 GETTABLEKS                       R7 R6 K11 ["startFrame"]
      145 GETTABLEKS                       R8 R6 K15 ["holdStartFrame"]
      147 JUMPIFLT                         R8 R7 ; [+31]
      149 GETTABLEKS                       R7 R6 K15 ["holdStartFrame"]
      151 GETTABLEKS                       R8 R6 K16 ["holdEndFrame"]
      153 JUMPIFLT                         R8 R7 ; [+25]
      155 GETTABLEKS                       R7 R6 K16 ["holdEndFrame"]
      157 GETTABLEKS                       R8 R6 K12 ["endFrame"]
      159 JUMPIFLT                         R8 R7 ; [+19]
      161 GETUPVAL                         R9 0
      162 MUL                              R8 R0 R9
      163 FASTCALL1                        MATH_ROUND R8 ; [+2]
      164 GETIMPORT                        R7 K9 [math.round]
      166 CALL                             R7 1 1
      167 GETTABLEKS                       R11 R6 K15 ["holdStartFrame"]
      169 GETTABLEKS                       R12 R6 K16 ["holdEndFrame"]
      171 ADD                              R10 R11 R12
      172 DIVK                             R9 R10 K17 [2]
      173 FASTCALL1                        MATH_FLOOR R9 ; [+2]
      174 GETIMPORT                        R8 K14 [math.floor]
      176 CALL                             R8 1 1
      177 JUMPIFEQ                         R7 R8 ; [+3]
      179 LOADB                            R7 0
      180 RETURN                           R7 1
      181 MOVE                             R7 R3
      182 LOADNIL                          R8
      183 LOADNIL                          R9
      184 FORGPREP                         R7
      185 JUMPIFEQ                         R10 R4 ; [+38]
      187 GETUPVAL                         R13 1
      188 MOVE                             R14 R11
      189 CALL                             R13 1 1
      190 LOADB                            R14 0
      191 GETTABLEKS                       R15 R6 K11 ["startFrame"]
      193 GETTABLEKS                       R16 R13 K12 ["endFrame"]
      195 JUMPIFNOTLT                      R15 R16 ; [+9]
      197 GETTABLEKS                       R15 R13 K11 ["startFrame"]
      199 GETTABLEKS                       R16 R6 K12 ["endFrame"]
      201 JUMPIFLT                         R15 R16 ; [+2]
      203 LOADB                            R14 0 +1
      204 LOADB                            R14 1
      205 LOADB                            R15 0
      206 GETTABLEKS                       R16 R6 K15 ["holdStartFrame"]
      208 GETTABLEKS                       R17 R13 K16 ["holdEndFrame"]
      210 JUMPIFNOTLE                      R16 R17 ; [+9]
      212 GETTABLEKS                       R16 R13 K15 ["holdStartFrame"]
      214 GETTABLEKS                       R17 R6 K16 ["holdEndFrame"]
      216 JUMPIFLE                         R16 R17 ; [+2]
      218 LOADB                            R15 0 +1
      219 LOADB                            R15 1
      220 OR                               R12 R14 R15
      221 JUMPIFNOT                        R12 ; [+2]
      222 LOADB                            R12 0
      223 RETURN                           R12 1
      224 FORGLOOP                         R7 2 ; [-40]
      226 LOADB                            R7 1
      227 RETURN                           R7 1

PROTO_12:
        0 LOADB                            R3 0
        1 JUMPIFNOTEQ                      R0 R0 ; [+11]
        3 FASTCALL1                        MATH_ABS R0 ; [+3]
        4 MOVE                             R5 R0
        5 GETIMPORT                        R4 K2 [math.abs]
        7 CALL                             R4 1 1
        8 LOADK                            R5 K3 [Infinity]
        9 JUMPIFLT                         R4 R5 ; [+2]
       11 LOADB                            R3 0 +1
       12 LOADB                            R3 1
       13 JUMPIFNOT                        R3 ; [+20]
       14 LOADB                            R3 0
       15 JUMPIFNOTEQ                      R1 R1 ; [+11]
       17 FASTCALL1                        MATH_ABS R1 ; [+3]
       18 MOVE                             R5 R1
       19 GETIMPORT                        R4 K2 [math.abs]
       21 CALL                             R4 1 1
       22 LOADK                            R5 K3 [Infinity]
       23 JUMPIFLT                         R4 R5 ; [+2]
       25 LOADB                            R3 0 +1
       26 LOADB                            R3 1
       27 JUMPIFNOT                        R3 ; [+6]
       28 LOADN                            R3 0
       29 JUMPIFLT                         R0 R3 ; [+4]
       31 ADDK                             R3 R1 K4 [1E-06]
       32 JUMPIFNOTLT                      R3 R0 ; [+3]
       34 LOADNIL                          R3
       35 RETURN                           R3 1
       36 ADDK                             R5 R1 K4 [1E-06]
       37 GETUPVAL                         R6 0
       38 MUL                              R4 R5 R6
       39 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       40 GETIMPORT                        R3 K6 [math.floor]
       42 CALL                             R3 1 1
       43 GETUPVAL                         R7 0
       44 MUL                              R6 R0 R7
       45 FASTCALL1                        MATH_ROUND R6 ; [+2]
       46 GETIMPORT                        R5 K8 [math.round]
       48 CALL                             R5 1 1
       49 LOADN                            R6 0
       50 FASTCALL3                        MATH_CLAMP R5 R6 R3
       52 MOVE                             R7 R3
       53 GETIMPORT                        R4 K10 [math.clamp]
       55 CALL                             R4 3 1
       56 GETUPVAL                         R9 1
       57 GETTABLEKS                       R9 R9 K13 ["EDIT_POSE_HOLD_FRAMES"]
       59 SUBK                             R8 R9 K12 [1]
       60 DIVK                             R7 R8 K11 [2]
       61 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       62 GETIMPORT                        R6 K6 [math.floor]
       64 CALL                             R6 1 1
       65 SUB                              R8 R3 R4
       66 FASTCALL3                        MATH_MIN R6 R4 R8
       68 MOVE                             R7 R4
       69 GETIMPORT                        R5 K15 [math.min]
       71 CALL                             R5 3 1
       72 SUB                              R6 R4 R5
       73 ADD                              R7 R4 R5
       74 DUPTABLE                         R9 K20 [{"startFrame", "holdStartFrame", "holdEndFrame", "endFrame"}]
       75 LOADN                            R11 0
       76 GETUPVAL                         R13 1
       77 GETTABLEKS                       R13 R13 K21 ["EDIT_POSE_FADE_FRAMES"]
       79 SUB                              R12 R6 R13
       80 FASTCALL2                        MATH_MAX R11 R12 ; [+3]
       82 GETIMPORT                        R10 K23 [math.max]
       84 CALL                             R10 2 1
       85 SETTABLEKS                       R10 R9 K16 ["startFrame"]
       87 SETTABLEKS                       R6 R9 K17 ["holdStartFrame"]
       89 SETTABLEKS                       R7 R9 K18 ["holdEndFrame"]
       91 GETUPVAL                         R13 1
       92 GETTABLEKS                       R13 R13 K21 ["EDIT_POSE_FADE_FRAMES"]
       94 ADD                              R12 R7 R13
       95 FASTCALL2                        MATH_MIN R3 R12 ; [+4]
       97 MOVE                             R11 R3
       98 GETIMPORT                        R10 K15 [math.min]
      100 CALL                             R10 2 1
      101 SETTABLEKS                       R10 R9 K19 ["endFrame"]
      103 DUPTABLE                         R8 K28 [{"startTime", "holdStartTime", "holdEndTime", "endTime"}]
      104 GETTABLEKS                       R11 R9 K16 ["startFrame"]
      106 GETUPVAL                         R12 0
      107 DIV                              R10 R11 R12
      108 SETTABLEKS                       R10 R8 K24 ["startTime"]
      110 GETTABLEKS                       R11 R9 K17 ["holdStartFrame"]
      112 GETUPVAL                         R12 0
      113 DIV                              R10 R11 R12
      114 SETTABLEKS                       R10 R8 K25 ["holdStartTime"]
      116 GETTABLEKS                       R11 R9 K18 ["holdEndFrame"]
      118 GETUPVAL                         R12 0
      119 DIV                              R10 R11 R12
      120 SETTABLEKS                       R10 R8 K26 ["holdEndTime"]
      122 GETTABLEKS                       R11 R9 K19 ["endFrame"]
      124 GETUPVAL                         R12 0
      125 DIV                              R10 R11 R12
      126 SETTABLEKS                       R10 R8 K27 ["endTime"]
      128 GETUPVAL                         R10 0
      129 DIV                              R9 R4 R10
      130 GETUPVAL                         R10 2
      131 GETTABLEKS                       R10 R10 K29 ["canPlace"]
      133 MOVE                             R11 R9
      134 MOVE                             R12 R8
      135 MOVE                             R13 R1
      136 MOVE                             R14 R2
      137 CALL                             R10 4 1
      138 JUMPIF                           R10 ; [+2]
      139 LOADNIL                          R10
      140 RETURN                           R10 1
      141 DUPTABLE                         R10 K32 [{"poseTime", "bounds"}]
      142 SETTABLEKS                       R9 R10 K30 ["poseTime"]
      144 SETTABLEKS                       R8 R10 K31 ["bounds"]
      146 RETURN                           R10 1

PROTO_13:
        0 GETTABLE                         R5 R0 R1
        1 JUMPIFEQKNIL                     R5 ; [+29]
        3 LOADB                            R6 0
        4 JUMPIFNOTEQ                      R3 R3 ; [+11]
        6 FASTCALL1                        MATH_ABS R3 ; [+3]
        7 MOVE                             R8 R3
        8 GETIMPORT                        R7 K2 [math.abs]
       10 CALL                             R7 1 1
       11 LOADK                            R8 K3 [Infinity]
       12 JUMPIFLT                         R7 R8 ; [+2]
       14 LOADB                            R6 0 +1
       15 LOADB                            R6 1
       16 JUMPIFNOT                        R6 ; [+14]
       17 LOADB                            R6 0
       18 JUMPIFNOTEQ                      R4 R4 ; [+11]
       20 FASTCALL1                        MATH_ABS R4 ; [+3]
       21 MOVE                             R8 R4
       22 GETIMPORT                        R7 K2 [math.abs]
       24 CALL                             R7 1 1
       25 LOADK                            R8 K3 [Infinity]
       26 JUMPIFLT                         R7 R8 ; [+2]
       28 LOADB                            R6 0 +1
       29 LOADB                            R6 1
       30 JUMPIF                           R6 ; [+2]
       31 LOADNIL                          R6
       32 RETURN                           R6 1
       33 GETUPVAL                         R6 0
       34 MOVE                             R7 R5
       35 CALL                             R6 1 1
       36 GETUPVAL                         R7 1
       37 MOVE                             R8 R0
       38 MOVE                             R9 R1
       39 MOVE                             R10 R4
       40 CALL                             R7 3 2
       41 GETUPVAL                         R11 2
       42 MUL                              R10 R3 R11
       43 FASTCALL1                        MATH_ROUND R10 ; [+2]
       44 GETIMPORT                        R9 K5 [math.round]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K8 [table.clone]
       49 MOVE                             R11 R6
       50 CALL                             R10 1 1
       51 JUMPIFNOTEQKS                    R2 K9 ["start"] ; [+23]
       53 GETTABLEKS                       R12 R6 K10 ["holdStartFrame"]
       55 JUMPIFNOTLT                      R12 R7 ; [+3]
       57 LOADNIL                          R11
       58 JUMP                             ; [+9]
       59 FASTCALL3                        MATH_CLAMP R9 R7 R12
       61 MOVE                             R14 R9
       62 MOVE                             R15 R7
       63 MOVE                             R16 R12
       64 GETIMPORT                        R13 K12 [math.clamp]
       66 CALL                             R13 3 1
       67 MOVE                             R11 R13
       68 JUMPIFNOTEQKNIL                  R11 ; [+3]
       70 LOADNIL                          R12
       71 RETURN                           R12 1
       72 SETTABLEKS                       R11 R10 K13 ["startFrame"]
       74 JUMP                             ; [+105]
       75 JUMPIFNOTEQKS                    R2 K14 ["holdStart"] ; [+40]
       77 GETTABLEKS                       R13 R6 K10 ["holdStartFrame"]
       79 SUB                              R12 R9 R13
       80 GETTABLEKS                       R14 R6 K13 ["startFrame"]
       82 SUB                              R13 R7 R14
       83 GETTABLEKS                       R15 R6 K15 ["holdEndFrame"]
       85 GETTABLEKS                       R16 R6 K10 ["holdStartFrame"]
       87 SUB                              R14 R15 R16
       88 JUMPIFNOTLT                      R14 R13 ; [+3]
       90 LOADNIL                          R11
       91 JUMP                             ; [+9]
       92 FASTCALL3                        MATH_CLAMP R12 R13 R14
       94 MOVE                             R16 R12
       95 MOVE                             R17 R13
       96 MOVE                             R18 R14
       97 GETIMPORT                        R15 K12 [math.clamp]
       99 CALL                             R15 3 1
      100 MOVE                             R11 R15
      101 JUMPIFNOTEQKNIL                  R11 ; [+3]
      103 LOADNIL                          R12
      104 RETURN                           R12 1
      105 GETTABLEKS                       R12 R10 K13 ["startFrame"]
      107 ADD                              R12 R12 R11
      108 SETTABLEKS                       R12 R10 K13 ["startFrame"]
      110 GETTABLEKS                       R12 R10 K10 ["holdStartFrame"]
      112 ADD                              R12 R12 R11
      113 SETTABLEKS                       R12 R10 K10 ["holdStartFrame"]
      115 JUMP                             ; [+64]
      116 JUMPIFNOTEQKS                    R2 K16 ["holdEnd"] ; [+40]
      118 GETTABLEKS                       R13 R6 K15 ["holdEndFrame"]
      120 SUB                              R12 R9 R13
      121 GETTABLEKS                       R14 R6 K10 ["holdStartFrame"]
      123 GETTABLEKS                       R15 R6 K15 ["holdEndFrame"]
      125 SUB                              R13 R14 R15
      126 GETTABLEKS                       R15 R6 K17 ["endFrame"]
      128 SUB                              R14 R8 R15
      129 JUMPIFNOTLT                      R14 R13 ; [+3]
      131 LOADNIL                          R11
      132 JUMP                             ; [+9]
      133 FASTCALL3                        MATH_CLAMP R12 R13 R14
      135 MOVE                             R16 R12
      136 MOVE                             R17 R13
      137 MOVE                             R18 R14
      138 GETIMPORT                        R15 K12 [math.clamp]
      140 CALL                             R15 3 1
      141 MOVE                             R11 R15
      142 JUMPIFNOTEQKNIL                  R11 ; [+3]
      144 LOADNIL                          R12
      145 RETURN                           R12 1
      146 GETTABLEKS                       R12 R10 K15 ["holdEndFrame"]
      148 ADD                              R12 R12 R11
      149 SETTABLEKS                       R12 R10 K15 ["holdEndFrame"]
      151 GETTABLEKS                       R12 R10 K17 ["endFrame"]
      153 ADD                              R12 R12 R11
      154 SETTABLEKS                       R12 R10 K17 ["endFrame"]
      156 JUMP                             ; [+23]
      157 JUMPIFNOTEQKS                    R2 K18 ["end"] ; [+22]
      159 GETTABLEKS                       R12 R6 K15 ["holdEndFrame"]
      161 JUMPIFNOTLT                      R8 R12 ; [+3]
      163 LOADNIL                          R11
      164 JUMP                             ; [+9]
      165 FASTCALL3                        MATH_CLAMP R9 R12 R8
      167 MOVE                             R14 R9
      168 MOVE                             R15 R12
      169 MOVE                             R16 R8
      170 GETIMPORT                        R13 K12 [math.clamp]
      172 CALL                             R13 3 1
      173 MOVE                             R11 R13
      174 JUMPIFNOTEQKNIL                  R11 ; [+3]
      176 LOADNIL                          R12
      177 RETURN                           R12 1
      178 SETTABLEKS                       R11 R10 K17 ["endFrame"]
      180 DUPTABLE                         R11 K23 [{"startTime", "holdStartTime", "holdEndTime", "endTime"}]
      181 GETTABLEKS                       R13 R10 K13 ["startFrame"]
      183 GETUPVAL                         R14 2
      184 DIV                              R12 R13 R14
      185 SETTABLEKS                       R12 R11 K19 ["startTime"]
      187 GETTABLEKS                       R13 R10 K10 ["holdStartFrame"]
      189 GETUPVAL                         R14 2
      190 DIV                              R12 R13 R14
      191 SETTABLEKS                       R12 R11 K20 ["holdStartTime"]
      193 GETTABLEKS                       R13 R10 K15 ["holdEndFrame"]
      195 GETUPVAL                         R14 2
      196 DIV                              R12 R13 R14
      197 SETTABLEKS                       R12 R11 K21 ["holdEndTime"]
      199 GETTABLEKS                       R13 R10 K17 ["endFrame"]
      201 GETUPVAL                         R14 2
      202 DIV                              R12 R13 R14
      203 SETTABLEKS                       R12 R11 K22 ["endTime"]
      205 GETTABLEKS                       R16 R10 K10 ["holdStartFrame"]
      207 GETTABLEKS                       R17 R10 K15 ["holdEndFrame"]
      209 ADD                              R15 R16 R17
      210 DIVK                             R14 R15 K24 [2]
      211 FASTCALL1                        MATH_FLOOR R14 ; [+2]
      212 GETIMPORT                        R13 K26 [math.floor]
      214 CALL                             R13 1 1
      215 GETUPVAL                         R14 2
      216 DIV                              R12 R13 R14
      217 GETUPVAL                         R13 3
      218 GETTABLEKS                       R13 R13 K27 ["canPlace"]
      220 MOVE                             R14 R12
      221 MOVE                             R15 R11
      222 MOVE                             R16 R4
      223 MOVE                             R17 R0
      224 MOVE                             R18 R1
      225 CALL                             R13 5 1
      226 JUMPIF                           R13 ; [+2]
      227 LOADNIL                          R13
      228 RETURN                           R13 1
      229 DUPTABLE                         R13 K30 [{"poseTime", "bounds"}]
      230 SETTABLEKS                       R12 R13 K28 ["poseTime"]
      232 SETTABLEKS                       R11 R13 K29 ["bounds"]
      234 RETURN                           R13 1

PROTO_14:
        0 GETTABLE                         R4 R0 R1
        1 JUMPIFEQKNIL                     R4 ; [+29]
        3 LOADB                            R5 0
        4 JUMPIFNOTEQ                      R2 R2 ; [+11]
        6 FASTCALL1                        MATH_ABS R2 ; [+3]
        7 MOVE                             R7 R2
        8 GETIMPORT                        R6 K2 [math.abs]
       10 CALL                             R6 1 1
       11 LOADK                            R7 K3 [Infinity]
       12 JUMPIFLT                         R6 R7 ; [+2]
       14 LOADB                            R5 0 +1
       15 LOADB                            R5 1
       16 JUMPIFNOT                        R5 ; [+14]
       17 LOADB                            R5 0
       18 JUMPIFNOTEQ                      R3 R3 ; [+11]
       20 FASTCALL1                        MATH_ABS R3 ; [+3]
       21 MOVE                             R7 R3
       22 GETIMPORT                        R6 K2 [math.abs]
       24 CALL                             R6 1 1
       25 LOADK                            R7 K3 [Infinity]
       26 JUMPIFLT                         R6 R7 ; [+2]
       28 LOADB                            R5 0 +1
       29 LOADB                            R5 1
       30 JUMPIF                           R5 ; [+2]
       31 LOADNIL                          R5
       32 RETURN                           R5 1
       33 GETUPVAL                         R5 0
       34 MOVE                             R6 R4
       35 CALL                             R5 1 1
       36 GETUPVAL                         R6 1
       37 MOVE                             R7 R0
       38 MOVE                             R8 R1
       39 MOVE                             R9 R3
       40 CALL                             R6 3 2
       41 GETUPVAL                         R12 2
       42 MUL                              R11 R2 R12
       43 FASTCALL1                        MATH_ROUND R11 ; [+2]
       44 GETIMPORT                        R10 K5 [math.round]
       46 CALL                             R10 1 1
       47 GETTABLEKS                       R14 R5 K7 ["holdStartFrame"]
       49 GETTABLEKS                       R15 R5 K8 ["holdEndFrame"]
       51 ADD                              R13 R14 R15
       52 DIVK                             R12 R13 K6 [2]
       53 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       54 GETIMPORT                        R11 K10 [math.floor]
       56 CALL                             R11 1 1
       57 SUB                              R9 R10 R11
       58 GETTABLEKS                       R11 R5 K11 ["startFrame"]
       60 SUB                              R10 R6 R11
       61 GETTABLEKS                       R12 R5 K12 ["endFrame"]
       63 SUB                              R11 R7 R12
       64 JUMPIFNOTLT                      R11 R10 ; [+3]
       66 LOADNIL                          R8
       67 JUMP                             ; [+9]
       68 FASTCALL3                        MATH_CLAMP R9 R10 R11
       70 MOVE                             R13 R9
       71 MOVE                             R14 R10
       72 MOVE                             R15 R11
       73 GETIMPORT                        R12 K14 [math.clamp]
       75 CALL                             R12 3 1
       76 MOVE                             R8 R12
       77 JUMPIFNOTEQKNIL                  R8 ; [+3]
       79 LOADNIL                          R9
       80 RETURN                           R9 1
       81 DUPTABLE                         R9 K15 [{"startFrame", "holdStartFrame", "holdEndFrame", "endFrame"}]
       82 GETTABLEKS                       R11 R5 K11 ["startFrame"]
       84 ADD                              R10 R11 R8
       85 SETTABLEKS                       R10 R9 K11 ["startFrame"]
       87 GETTABLEKS                       R11 R5 K7 ["holdStartFrame"]
       89 ADD                              R10 R11 R8
       90 SETTABLEKS                       R10 R9 K7 ["holdStartFrame"]
       92 GETTABLEKS                       R11 R5 K8 ["holdEndFrame"]
       94 ADD                              R10 R11 R8
       95 SETTABLEKS                       R10 R9 K8 ["holdEndFrame"]
       97 GETTABLEKS                       R11 R5 K12 ["endFrame"]
       99 ADD                              R10 R11 R8
      100 SETTABLEKS                       R10 R9 K12 ["endFrame"]
      102 DUPTABLE                         R10 K20 [{"startTime", "holdStartTime", "holdEndTime", "endTime"}]
      103 GETTABLEKS                       R12 R9 K11 ["startFrame"]
      105 GETUPVAL                         R13 2
      106 DIV                              R11 R12 R13
      107 SETTABLEKS                       R11 R10 K16 ["startTime"]
      109 GETTABLEKS                       R12 R9 K7 ["holdStartFrame"]
      111 GETUPVAL                         R13 2
      112 DIV                              R11 R12 R13
      113 SETTABLEKS                       R11 R10 K17 ["holdStartTime"]
      115 GETTABLEKS                       R12 R9 K8 ["holdEndFrame"]
      117 GETUPVAL                         R13 2
      118 DIV                              R11 R12 R13
      119 SETTABLEKS                       R11 R10 K18 ["holdEndTime"]
      121 GETTABLEKS                       R12 R9 K12 ["endFrame"]
      123 GETUPVAL                         R13 2
      124 DIV                              R11 R12 R13
      125 SETTABLEKS                       R11 R10 K19 ["endTime"]
      127 GETTABLEKS                       R15 R9 K7 ["holdStartFrame"]
      129 GETTABLEKS                       R16 R9 K8 ["holdEndFrame"]
      131 ADD                              R14 R15 R16
      132 DIVK                             R13 R14 K6 [2]
      133 FASTCALL1                        MATH_FLOOR R13 ; [+2]
      134 GETIMPORT                        R12 K10 [math.floor]
      136 CALL                             R12 1 1
      137 GETUPVAL                         R13 2
      138 DIV                              R11 R12 R13
      139 GETUPVAL                         R12 3
      140 GETTABLEKS                       R12 R12 K21 ["canPlace"]
      142 MOVE                             R13 R11
      143 MOVE                             R14 R10
      144 MOVE                             R15 R3
      145 MOVE                             R16 R0
      146 MOVE                             R17 R1
      147 CALL                             R12 5 1
      148 JUMPIF                           R12 ; [+2]
      149 LOADNIL                          R12
      150 RETURN                           R12 1
      151 DUPTABLE                         R12 K24 [{"poseTime", "bounds"}]
      152 SETTABLEKS                       R11 R12 K22 ["poseTime"]
      154 SETTABLEKS                       R10 R12 K23 ["bounds"]
      156 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenConstants"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K9 ["DEFAULT_GENERATION_FPS"]
       18 NEWTABLE                         R3 8 0
       20 DUPCLOSURE                       R4 K10 [PROTO_0]
       21 DUPCLOSURE                       R5 K11 [PROTO_1]
       22 CAPTURE                          VAL R2
       23 DUPCLOSURE                       R6 K12 [PROTO_2]
       24 CAPTURE                          VAL R2
       25 DUPCLOSURE                       R7 K13 [PROTO_3]
       26 CAPTURE                          VAL R2
       27 DUPCLOSURE                       R8 K14 [PROTO_4]
       28 CAPTURE                          VAL R2
       29 DUPCLOSURE                       R9 K15 [PROTO_5]
       30 CAPTURE                          VAL R2
       31 DUPCLOSURE                       R10 K16 [PROTO_6]
       32 DUPCLOSURE                       R11 K17 [PROTO_7]
       33 DUPCLOSURE                       R12 K18 [PROTO_8]
       34 DUPCLOSURE                       R13 K19 [PROTO_9]
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R8
       37 DUPCLOSURE                       R14 K20 [PROTO_10]
       38 SETTABLEKS                       R14 R3 K21 ["areBoundsEqual"]
       40 DUPCLOSURE                       R14 K22 [PROTO_11]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R8
       43 SETTABLEKS                       R14 R3 K23 ["canPlace"]
       45 DUPCLOSURE                       R14 K24 [PROTO_12]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 SETTABLEKS                       R14 R3 K25 ["planInsertion"]
       51 DUPCLOSURE                       R14 K26 [PROTO_13]
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R13
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R14 R3 K27 ["planResize"]
       58 DUPCLOSURE                       R14 K28 [PROTO_14]
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R13
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R3
       63 SETTABLEKS                       R14 R3 K29 ["planMove"]
       65 RETURN                           R3 1
