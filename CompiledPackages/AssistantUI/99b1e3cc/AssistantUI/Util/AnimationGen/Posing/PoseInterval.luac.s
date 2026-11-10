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
        3 GETTABLEKS                       R4 R1 K1 ["holdEndFrame"]
        5 JUMPIFNOTLE                      R3 R4 ; [+9]
        7 GETTABLEKS                       R3 R1 K2 ["holdStartFrame"]
        9 GETTABLEKS                       R4 R0 K3 ["endFrame"]
       11 JUMPIFLE                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 RETURN                           R2 1

PROTO_8:
        0 LOADB                            R2 0
        1 GETTABLEKS                       R3 R0 K0 ["startFrame"]
        3 GETTABLEKS                       R4 R1 K1 ["holdEndFrame"]
        5 JUMPIFNOTLE                      R3 R4 ; [+9]
        7 GETTABLEKS                       R3 R1 K2 ["holdStartFrame"]
        9 GETTABLEKS                       R4 R0 K3 ["endFrame"]
       11 JUMPIFLE                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 JUMPIF                           R2 ; [+15]
       16 LOADB                            R2 0
       17 GETTABLEKS                       R3 R1 K0 ["startFrame"]
       19 GETTABLEKS                       R4 R0 K1 ["holdEndFrame"]
       21 JUMPIFNOTLE                      R3 R4 ; [+9]
       23 GETTABLEKS                       R3 R0 K2 ["holdStartFrame"]
       25 GETTABLEKS                       R4 R1 K3 ["endFrame"]
       27 JUMPIFLE                         R3 R4 ; [+2]
       29 LOADB                            R2 0 +1
       30 LOADB                            R2 1
       31 RETURN                           R2 1

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R5 0
        1 MUL                              R4 R1 R5
        2 FASTCALL1                        MATH_ROUND R4 ; [+2]
        3 GETIMPORT                        R3 K2 [math.round]
        5 CALL                             R3 1 1
        6 ADDK                             R6 R2 K3 [1E-06]
        7 GETUPVAL                         R7 0
        8 MUL                              R5 R6 R7
        9 FASTCALL1                        MATH_FLOOR R5 ; [+2]
       10 GETIMPORT                        R4 K5 [math.floor]
       12 CALL                             R4 1 1
       13 DUPTABLE                         R5 K11 [{["outerLower"] = 0, ["holdLower"] = 0, ["outerUpper"], ["holdUpper"]}]
       14 SETTABLEKS                       R4 R5 K9 ["outerUpper"]
       16 SETTABLEKS                       R4 R5 K10 ["holdUpper"]
       18 MOVE                             R6 R0
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 JUMPIFEQ                         R9 R1 ; [+61]
       24 GETUPVAL                         R11 1
       25 MOVE                             R12 R10
       26 CALL                             R11 1 1
       27 GETUPVAL                         R14 0
       28 MUL                              R13 R9 R14
       29 FASTCALL1                        MATH_ROUND R13 ; [+2]
       30 GETIMPORT                        R12 K2 [math.round]
       32 CALL                             R12 1 1
       33 JUMPIFNOTLT                      R12 R3 ; [+26]
       35 GETTABLEKS                       R13 R5 K6 ["outerLower"]
       37 GETTABLEKS                       R15 R11 K13 ["holdEndFrame"]
       39 ADDK                             R14 R15 K12 [1]
       40 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
       42 GETIMPORT                        R12 K15 [math.max]
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R5 K6 ["outerLower"]
       47 GETTABLEKS                       R13 R5 K8 ["holdLower"]
       49 GETTABLEKS                       R15 R11 K16 ["endFrame"]
       51 ADDK                             R14 R15 K12 [1]
       52 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
       54 GETIMPORT                        R12 K15 [math.max]
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R5 K8 ["holdLower"]
       59 JUMP                             ; [+24]
       60 GETTABLEKS                       R13 R5 K9 ["outerUpper"]
       62 GETTABLEKS                       R15 R11 K17 ["holdStartFrame"]
       64 SUBK                             R14 R15 K12 [1]
       65 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
       67 GETIMPORT                        R12 K19 [math.min]
       69 CALL                             R12 2 1
       70 SETTABLEKS                       R12 R5 K9 ["outerUpper"]
       72 GETTABLEKS                       R13 R5 K10 ["holdUpper"]
       74 GETTABLEKS                       R15 R11 K20 ["startFrame"]
       76 SUBK                             R14 R15 K12 [1]
       77 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
       79 GETIMPORT                        R12 K19 [math.min]
       81 CALL                             R12 2 1
       82 SETTABLEKS                       R12 R5 K10 ["holdUpper"]
       84 FORGLOOP                         R6 2 ; [-63]
       86 RETURN                           R5 1

PROTO_11:
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

PROTO_12:
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
      190 LOADB                            R12 0
      191 GETTABLEKS                       R14 R6 K11 ["startFrame"]
      193 GETTABLEKS                       R15 R13 K16 ["holdEndFrame"]
      195 JUMPIFNOTLE                      R14 R15 ; [+9]
      197 GETTABLEKS                       R14 R13 K15 ["holdStartFrame"]
      199 GETTABLEKS                       R15 R6 K12 ["endFrame"]
      201 JUMPIFLE                         R14 R15 ; [+2]
      203 LOADB                            R12 0 +1
      204 LOADB                            R12 1
      205 JUMPIF                           R12 ; [+15]
      206 LOADB                            R12 0
      207 GETTABLEKS                       R14 R13 K11 ["startFrame"]
      209 GETTABLEKS                       R15 R6 K16 ["holdEndFrame"]
      211 JUMPIFNOTLE                      R14 R15 ; [+9]
      213 GETTABLEKS                       R14 R6 K15 ["holdStartFrame"]
      215 GETTABLEKS                       R15 R13 K12 ["endFrame"]
      217 JUMPIFLE                         R14 R15 ; [+2]
      219 LOADB                            R12 0 +1
      220 LOADB                            R12 1
      221 JUMPIFNOT                        R12 ; [+2]
      222 LOADB                            R12 0
      223 RETURN                           R12 1
      224 FORGLOOP                         R7 2 ; [-40]
      226 LOADB                            R7 1
      227 RETURN                           R7 1

PROTO_13:
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
       56 GETUPVAL                         R6 0
       57 DIV                              R5 R4 R6
       58 GETUPVAL                         R10 1
       59 GETTABLEKS                       R10 R10 K13 ["EDIT_POSE_HOLD_FRAMES"]
       61 SUBK                             R9 R10 K12 [1]
       62 DIVK                             R8 R9 K11 [2]
       63 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       64 GETIMPORT                        R7 K6 [math.floor]
       66 CALL                             R7 1 1
       67 SUB                              R9 R3 R4
       68 FASTCALL3                        MATH_MIN R7 R4 R9
       70 MOVE                             R8 R4
       71 GETIMPORT                        R6 K15 [math.min]
       73 CALL                             R6 3 1
       74 SUB                              R7 R4 R6
       75 ADD                              R8 R4 R6
       76 GETUPVAL                         R9 2
       77 MOVE                             R10 R2
       78 MOVE                             R11 R5
       79 MOVE                             R12 R1
       80 CALL                             R9 3 1
       81 DUPTABLE                         R11 K20 [{"startFrame", "holdStartFrame", "holdEndFrame", "endFrame"}]
       82 GETTABLEKS                       R13 R9 K21 ["outerLower"]
       84 GETUPVAL                         R15 1
       85 GETTABLEKS                       R15 R15 K22 ["EDIT_POSE_FADE_FRAMES"]
       87 SUB                              R14 R7 R15
       88 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
       90 GETIMPORT                        R12 K24 [math.max]
       92 CALL                             R12 2 1
       93 SETTABLEKS                       R12 R11 K16 ["startFrame"]
       95 SETTABLEKS                       R7 R11 K17 ["holdStartFrame"]
       97 SETTABLEKS                       R8 R11 K18 ["holdEndFrame"]
       99 GETTABLEKS                       R13 R9 K25 ["outerUpper"]
      101 GETUPVAL                         R15 1
      102 GETTABLEKS                       R15 R15 K22 ["EDIT_POSE_FADE_FRAMES"]
      104 ADD                              R14 R8 R15
      105 FASTCALL2                        MATH_MIN R13 R14 ; [+3]
      107 GETIMPORT                        R12 K15 [math.min]
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K19 ["endFrame"]
      112 DUPTABLE                         R10 K30 [{"startTime", "holdStartTime", "holdEndTime", "endTime"}]
      113 GETTABLEKS                       R13 R11 K16 ["startFrame"]
      115 GETUPVAL                         R14 0
      116 DIV                              R12 R13 R14
      117 SETTABLEKS                       R12 R10 K26 ["startTime"]
      119 GETTABLEKS                       R13 R11 K17 ["holdStartFrame"]
      121 GETUPVAL                         R14 0
      122 DIV                              R12 R13 R14
      123 SETTABLEKS                       R12 R10 K27 ["holdStartTime"]
      125 GETTABLEKS                       R13 R11 K18 ["holdEndFrame"]
      127 GETUPVAL                         R14 0
      128 DIV                              R12 R13 R14
      129 SETTABLEKS                       R12 R10 K28 ["holdEndTime"]
      131 GETTABLEKS                       R13 R11 K19 ["endFrame"]
      133 GETUPVAL                         R14 0
      134 DIV                              R12 R13 R14
      135 SETTABLEKS                       R12 R10 K29 ["endTime"]
      137 GETUPVAL                         R11 3
      138 GETTABLEKS                       R11 R11 K31 ["canPlace"]
      140 MOVE                             R12 R5
      141 MOVE                             R13 R10
      142 MOVE                             R14 R1
      143 MOVE                             R15 R2
      144 CALL                             R11 4 1
      145 JUMPIF                           R11 ; [+2]
      146 LOADNIL                          R11
      147 RETURN                           R11 1
      148 DUPTABLE                         R11 K34 [{"poseTime", "bounds"}]
      149 SETTABLEKS                       R5 R11 K32 ["poseTime"]
      151 SETTABLEKS                       R10 R11 K33 ["bounds"]
      153 RETURN                           R11 1

PROTO_14:
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
       40 CALL                             R7 3 1
       41 GETUPVAL                         R10 2
       42 MUL                              R9 R3 R10
       43 FASTCALL1                        MATH_ROUND R9 ; [+2]
       44 GETIMPORT                        R8 K5 [math.round]
       46 CALL                             R8 1 1
       47 GETIMPORT                        R9 K8 [table.clone]
       49 MOVE                             R10 R6
       50 CALL                             R9 1 1
       51 JUMPIFNOTEQKS                    R2 K9 ["start"] ; [+25]
       53 GETTABLEKS                       R11 R7 K10 ["outerLower"]
       55 GETTABLEKS                       R12 R6 K11 ["holdStartFrame"]
       57 JUMPIFNOTLT                      R12 R11 ; [+3]
       59 LOADNIL                          R10
       60 JUMP                             ; [+9]
       61 FASTCALL3                        MATH_CLAMP R8 R11 R12
       63 MOVE                             R14 R8
       64 MOVE                             R15 R11
       65 MOVE                             R16 R12
       66 GETIMPORT                        R13 K13 [math.clamp]
       68 CALL                             R13 3 1
       69 MOVE                             R10 R13
       70 JUMPIFNOTEQKNIL                  R10 ; [+3]
       72 LOADNIL                          R11
       73 RETURN                           R11 1
       74 SETTABLEKS                       R10 R9 K14 ["startFrame"]
       76 JUMP                             ; [+131]
       77 JUMPIFNOTEQKS                    R2 K15 ["holdStart"] ; [+52]
       79 GETTABLEKS                       R12 R6 K11 ["holdStartFrame"]
       81 SUB                              R11 R8 R12
       82 GETTABLEKS                       R14 R7 K10 ["outerLower"]
       84 GETTABLEKS                       R15 R6 K14 ["startFrame"]
       86 SUB                              R13 R14 R15
       87 GETTABLEKS                       R15 R7 K16 ["holdLower"]
       89 GETTABLEKS                       R16 R6 K11 ["holdStartFrame"]
       91 SUB                              R14 R15 R16
       92 FASTCALL2                        MATH_MAX R13 R14 ; [+3]
       94 GETIMPORT                        R12 K18 [math.max]
       96 CALL                             R12 2 1
       97 GETTABLEKS                       R14 R6 K19 ["holdEndFrame"]
       99 GETTABLEKS                       R15 R6 K11 ["holdStartFrame"]
      101 SUB                              R13 R14 R15
      102 JUMPIFNOTLT                      R13 R12 ; [+3]
      104 LOADNIL                          R10
      105 JUMP                             ; [+9]
      106 FASTCALL3                        MATH_CLAMP R11 R12 R13
      108 MOVE                             R15 R11
      109 MOVE                             R16 R12
      110 MOVE                             R17 R13
      111 GETIMPORT                        R14 K13 [math.clamp]
      113 CALL                             R14 3 1
      114 MOVE                             R10 R14
      115 JUMPIFNOTEQKNIL                  R10 ; [+3]
      117 LOADNIL                          R11
      118 RETURN                           R11 1
      119 GETTABLEKS                       R11 R9 K14 ["startFrame"]
      121 ADD                              R11 R11 R10
      122 SETTABLEKS                       R11 R9 K14 ["startFrame"]
      124 GETTABLEKS                       R11 R9 K11 ["holdStartFrame"]
      126 ADD                              R11 R11 R10
      127 SETTABLEKS                       R11 R9 K11 ["holdStartFrame"]
      129 JUMP                             ; [+78]
      130 JUMPIFNOTEQKS                    R2 K20 ["holdEnd"] ; [+52]
      132 GETTABLEKS                       R12 R6 K19 ["holdEndFrame"]
      134 SUB                              R11 R8 R12
      135 GETTABLEKS                       R13 R6 K11 ["holdStartFrame"]
      137 GETTABLEKS                       R14 R6 K19 ["holdEndFrame"]
      139 SUB                              R12 R13 R14
      140 GETTABLEKS                       R15 R7 K21 ["outerUpper"]
      142 GETTABLEKS                       R16 R6 K22 ["endFrame"]
      144 SUB                              R14 R15 R16
      145 GETTABLEKS                       R16 R7 K23 ["holdUpper"]
      147 GETTABLEKS                       R17 R6 K19 ["holdEndFrame"]
      149 SUB                              R15 R16 R17
      150 FASTCALL2                        MATH_MIN R14 R15 ; [+3]
      152 GETIMPORT                        R13 K25 [math.min]
      154 CALL                             R13 2 1
      155 JUMPIFNOTLT                      R13 R12 ; [+3]
      157 LOADNIL                          R10
      158 JUMP                             ; [+9]
      159 FASTCALL3                        MATH_CLAMP R11 R12 R13
      161 MOVE                             R15 R11
      162 MOVE                             R16 R12
      163 MOVE                             R17 R13
      164 GETIMPORT                        R14 K13 [math.clamp]
      166 CALL                             R14 3 1
      167 MOVE                             R10 R14
      168 JUMPIFNOTEQKNIL                  R10 ; [+3]
      170 LOADNIL                          R11
      171 RETURN                           R11 1
      172 GETTABLEKS                       R11 R9 K19 ["holdEndFrame"]
      174 ADD                              R11 R11 R10
      175 SETTABLEKS                       R11 R9 K19 ["holdEndFrame"]
      177 GETTABLEKS                       R11 R9 K22 ["endFrame"]
      179 ADD                              R11 R11 R10
      180 SETTABLEKS                       R11 R9 K22 ["endFrame"]
      182 JUMP                             ; [+25]
      183 JUMPIFNOTEQKS                    R2 K26 ["end"] ; [+24]
      185 GETTABLEKS                       R11 R6 K19 ["holdEndFrame"]
      187 GETTABLEKS                       R12 R7 K21 ["outerUpper"]
      189 JUMPIFNOTLT                      R12 R11 ; [+3]
      191 LOADNIL                          R10
      192 JUMP                             ; [+9]
      193 FASTCALL3                        MATH_CLAMP R8 R11 R12
      195 MOVE                             R14 R8
      196 MOVE                             R15 R11
      197 MOVE                             R16 R12
      198 GETIMPORT                        R13 K13 [math.clamp]
      200 CALL                             R13 3 1
      201 MOVE                             R10 R13
      202 JUMPIFNOTEQKNIL                  R10 ; [+3]
      204 LOADNIL                          R11
      205 RETURN                           R11 1
      206 SETTABLEKS                       R10 R9 K22 ["endFrame"]
      208 DUPTABLE                         R10 K31 [{"startTime", "holdStartTime", "holdEndTime", "endTime"}]
      209 GETTABLEKS                       R12 R9 K14 ["startFrame"]
      211 GETUPVAL                         R13 2
      212 DIV                              R11 R12 R13
      213 SETTABLEKS                       R11 R10 K27 ["startTime"]
      215 GETTABLEKS                       R12 R9 K11 ["holdStartFrame"]
      217 GETUPVAL                         R13 2
      218 DIV                              R11 R12 R13
      219 SETTABLEKS                       R11 R10 K28 ["holdStartTime"]
      221 GETTABLEKS                       R12 R9 K19 ["holdEndFrame"]
      223 GETUPVAL                         R13 2
      224 DIV                              R11 R12 R13
      225 SETTABLEKS                       R11 R10 K29 ["holdEndTime"]
      227 GETTABLEKS                       R12 R9 K22 ["endFrame"]
      229 GETUPVAL                         R13 2
      230 DIV                              R11 R12 R13
      231 SETTABLEKS                       R11 R10 K30 ["endTime"]
      233 GETTABLEKS                       R15 R9 K11 ["holdStartFrame"]
      235 GETTABLEKS                       R16 R9 K19 ["holdEndFrame"]
      237 ADD                              R14 R15 R16
      238 DIVK                             R13 R14 K32 [2]
      239 FASTCALL1                        MATH_FLOOR R13 ; [+2]
      240 GETIMPORT                        R12 K34 [math.floor]
      242 CALL                             R12 1 1
      243 GETUPVAL                         R13 2
      244 DIV                              R11 R12 R13
      245 GETUPVAL                         R12 3
      246 GETTABLEKS                       R12 R12 K35 ["canPlace"]
      248 MOVE                             R13 R11
      249 MOVE                             R14 R10
      250 MOVE                             R15 R4
      251 MOVE                             R16 R0
      252 MOVE                             R17 R1
      253 CALL                             R12 5 1
      254 JUMPIF                           R12 ; [+2]
      255 LOADNIL                          R12
      256 RETURN                           R12 1
      257 DUPTABLE                         R12 K38 [{"poseTime", "bounds"}]
      258 SETTABLEKS                       R11 R12 K36 ["poseTime"]
      260 SETTABLEKS                       R10 R12 K37 ["bounds"]
      262 RETURN                           R12 1

PROTO_15:
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
       40 CALL                             R6 3 1
       41 GETUPVAL                         R11 2
       42 MUL                              R10 R2 R11
       43 FASTCALL1                        MATH_ROUND R10 ; [+2]
       44 GETIMPORT                        R9 K5 [math.round]
       46 CALL                             R9 1 1
       47 GETTABLEKS                       R13 R5 K7 ["holdStartFrame"]
       49 GETTABLEKS                       R14 R5 K8 ["holdEndFrame"]
       51 ADD                              R12 R13 R14
       52 DIVK                             R11 R12 K6 [2]
       53 FASTCALL1                        MATH_FLOOR R11 ; [+2]
       54 GETIMPORT                        R10 K10 [math.floor]
       56 CALL                             R10 1 1
       57 SUB                              R8 R9 R10
       58 GETTABLEKS                       R11 R6 K11 ["outerLower"]
       60 GETTABLEKS                       R12 R5 K12 ["startFrame"]
       62 SUB                              R10 R11 R12
       63 GETTABLEKS                       R12 R6 K13 ["holdLower"]
       65 GETTABLEKS                       R13 R5 K7 ["holdStartFrame"]
       67 SUB                              R11 R12 R13
       68 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
       70 GETIMPORT                        R9 K15 [math.max]
       72 CALL                             R9 2 1
       73 GETTABLEKS                       R12 R6 K16 ["outerUpper"]
       75 GETTABLEKS                       R13 R5 K17 ["endFrame"]
       77 SUB                              R11 R12 R13
       78 GETTABLEKS                       R13 R6 K18 ["holdUpper"]
       80 GETTABLEKS                       R14 R5 K8 ["holdEndFrame"]
       82 SUB                              R12 R13 R14
       83 FASTCALL2                        MATH_MIN R11 R12 ; [+3]
       85 GETIMPORT                        R10 K20 [math.min]
       87 CALL                             R10 2 1
       88 JUMPIFNOTLT                      R10 R9 ; [+3]
       90 LOADNIL                          R7
       91 JUMP                             ; [+9]
       92 FASTCALL3                        MATH_CLAMP R8 R9 R10
       94 MOVE                             R12 R8
       95 MOVE                             R13 R9
       96 MOVE                             R14 R10
       97 GETIMPORT                        R11 K22 [math.clamp]
       99 CALL                             R11 3 1
      100 MOVE                             R7 R11
      101 JUMPIFNOTEQKNIL                  R7 ; [+3]
      103 LOADNIL                          R8
      104 RETURN                           R8 1
      105 DUPTABLE                         R8 K23 [{"startFrame", "holdStartFrame", "holdEndFrame", "endFrame"}]
      106 GETTABLEKS                       R10 R5 K12 ["startFrame"]
      108 ADD                              R9 R10 R7
      109 SETTABLEKS                       R9 R8 K12 ["startFrame"]
      111 GETTABLEKS                       R10 R5 K7 ["holdStartFrame"]
      113 ADD                              R9 R10 R7
      114 SETTABLEKS                       R9 R8 K7 ["holdStartFrame"]
      116 GETTABLEKS                       R10 R5 K8 ["holdEndFrame"]
      118 ADD                              R9 R10 R7
      119 SETTABLEKS                       R9 R8 K8 ["holdEndFrame"]
      121 GETTABLEKS                       R10 R5 K17 ["endFrame"]
      123 ADD                              R9 R10 R7
      124 SETTABLEKS                       R9 R8 K17 ["endFrame"]
      126 DUPTABLE                         R9 K28 [{"startTime", "holdStartTime", "holdEndTime", "endTime"}]
      127 GETTABLEKS                       R11 R8 K12 ["startFrame"]
      129 GETUPVAL                         R12 2
      130 DIV                              R10 R11 R12
      131 SETTABLEKS                       R10 R9 K24 ["startTime"]
      133 GETTABLEKS                       R11 R8 K7 ["holdStartFrame"]
      135 GETUPVAL                         R12 2
      136 DIV                              R10 R11 R12
      137 SETTABLEKS                       R10 R9 K25 ["holdStartTime"]
      139 GETTABLEKS                       R11 R8 K8 ["holdEndFrame"]
      141 GETUPVAL                         R12 2
      142 DIV                              R10 R11 R12
      143 SETTABLEKS                       R10 R9 K26 ["holdEndTime"]
      145 GETTABLEKS                       R11 R8 K17 ["endFrame"]
      147 GETUPVAL                         R12 2
      148 DIV                              R10 R11 R12
      149 SETTABLEKS                       R10 R9 K27 ["endTime"]
      151 GETTABLEKS                       R14 R8 K7 ["holdStartFrame"]
      153 GETTABLEKS                       R15 R8 K8 ["holdEndFrame"]
      155 ADD                              R13 R14 R15
      156 DIVK                             R12 R13 K6 [2]
      157 FASTCALL1                        MATH_FLOOR R12 ; [+2]
      158 GETIMPORT                        R11 K10 [math.floor]
      160 CALL                             R11 1 1
      161 GETUPVAL                         R12 2
      162 DIV                              R10 R11 R12
      163 GETUPVAL                         R11 3
      164 GETTABLEKS                       R11 R11 K29 ["canPlace"]
      166 MOVE                             R12 R10
      167 MOVE                             R13 R9
      168 MOVE                             R14 R3
      169 MOVE                             R15 R0
      170 MOVE                             R16 R1
      171 CALL                             R11 5 1
      172 JUMPIF                           R11 ; [+2]
      173 LOADNIL                          R11
      174 RETURN                           R11 1
      175 DUPTABLE                         R11 K32 [{"poseTime", "bounds"}]
      176 SETTABLEKS                       R10 R11 K30 ["poseTime"]
      178 SETTABLEKS                       R9 R11 K31 ["bounds"]
      180 RETURN                           R11 1

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
       35 DUPCLOSURE                       R14 K20 [PROTO_10]
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R8
       38 DUPCLOSURE                       R15 K21 [PROTO_11]
       39 SETTABLEKS                       R15 R3 K22 ["areBoundsEqual"]
       41 DUPCLOSURE                       R15 K23 [PROTO_12]
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R8
       44 SETTABLEKS                       R15 R3 K24 ["canPlace"]
       46 DUPCLOSURE                       R15 K25 [PROTO_13]
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R14
       50 CAPTURE                          VAL R3
       51 SETTABLEKS                       R15 R3 K26 ["planInsertion"]
       53 DUPCLOSURE                       R15 K27 [PROTO_14]
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R14
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R3
       58 SETTABLEKS                       R15 R3 K28 ["planResize"]
       60 DUPCLOSURE                       R15 K29 [PROTO_15]
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R14
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R15 R3 K30 ["planMove"]
       67 RETURN                           R3 1
