PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 GETTABLEKS                       R8 R7 K0 ["moveJointNames"]
        8 LENGTH                           R9 R8
        9 JUMPIFEQKN                       R9 K1 [0] ; [+72]
       11 JUMPIFEQKNIL                     R1 ; [+6]
       13 GETTABLEKS                       R10 R7 K2 ["time"]
       15 GETTABLE                         R9 R1 R10
       16 JUMPIFNOTEQKNIL                  R9 ; [+65]
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R10 R7 K3 ["authored"]
       21 CALL                             R9 1 1
       22 GETTABLEKS                       R11 R7 K4 ["baseline"]
       24 JUMPIFEQKNIL                     R11 ; [+6]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R11 R7 K4 ["baseline"]
       29 CALL                             R10 1 1
       30 JUMP                             ; [+2]
       31 NEWTABLE                         R10 0 0
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R11 R11 K5 ["timeToFrameIndex"]
       36 GETTABLEKS                       R12 R7 K2 ["time"]
       38 CALL                             R11 1 1
       39 GETTABLE                         R12 R2 R11
       40 JUMPIFNOTEQKNIL                  R12 ; [+4]
       42 NEWTABLE                         R12 0 0
       44 SETTABLE                         R12 R2 R11
       45 MOVE                             R13 R8
       46 LOADNIL                          R14
       47 LOADNIL                          R15
       48 FORGPREP                         R13
       49 GETUPVAL                         R19 2
       50 GETTABLE                         R18 R19 R17
       51 JUMPIF                           R18 ; [+28]
       52 GETTABLE                         R18 R9 R17
       53 JUMPIFEQKNIL                     R18 ; [+26]
       55 GETTABLEKS                       R19 R18 K6 ["CFrame"]
       57 GETTABLEKS                       R19 R19 K7 ["Position"]
       59 GETTABLE                         R20 R10 R17
       60 JUMPIFNOTEQKNIL                  R20 ; [+8]
       62 GETTABLEKS                       R21 R19 K8 ["Magnitude"]
       64 LOADK                            R22 K9 [1E-05]
       65 JUMPIFLT                         R21 R22 ; [+14]
       67 SETTABLE                         R19 R12 R17
       68 JUMP                             ; [+11]
       69 GETTABLEKS                       R22 R20 K6 ["CFrame"]
       71 GETTABLEKS                       R22 R22 K7 ["Position"]
       73 SUB                              R21 R19 R22
       74 GETTABLEKS                       R22 R21 K8 ["Magnitude"]
       76 LOADK                            R23 K9 [1E-05]
       77 JUMPIFLT                         R22 R23 ; [+2]
       79 SETTABLE                         R21 R12 R17
       80 FORGLOOP                         R13 2 ; [-32]
       82 FORGLOOP                         R3 2 ; [-77]
       84 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 JUMPIFEQKNIL                     R3 ; [+5]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K0 ["intervals"]
        6 JUMP                             ; [+1]
        7 LOADNIL                          R2
        8 GETUPVAL                         R4 0
        9 JUMPIFEQKNIL                     R4 ; [+5]
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R3 R3 K1 ["heldJointNamesByTime"]
       14 JUMP                             ; [+1]
       15 LOADNIL                          R3
       16 JUMPIFEQKNIL                     R2 ; [+3]
       18 JUMPIFNOTEQKNIL                  R3 ; [+3]
       20 LOADB                            R4 0
       21 RETURN                           R4 1
       22 GETUPVAL                         R5 1
       23 DIV                              R4 R1 R5
       24 MOVE                             R5 R2
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 GETTABLE                         R10 R3 R8
       29 JUMPIFEQKNIL                     R10 ; [+15]
       31 GETTABLE                         R11 R10 R0
       32 JUMPIFNOT                        R11 ; [+12]
       33 GETTABLEKS                       R12 R9 K3 ["holdStartTime"]
       35 SUBK                             R11 R12 K2 [0.0001]
       36 JUMPIFNOTLE                      R11 R4 ; [+8]
       38 GETTABLEKS                       R12 R9 K4 ["holdEndTime"]
       40 ADDK                             R11 R12 K2 [0.0001]
       41 JUMPIFNOTLE                      R4 R11 ; [+3]
       43 LOADB                            R11 1
       44 RETURN                           R11 1
       45 FORGLOOP                         R5 2 ; [-18]
       47 LOADB                            R5 0
       48 RETURN                           R5 1

PROTO_2:
        0 LENGTH                           R2 R0
        1 GETIMPORT                        R3 K2 [table.create]
        3 MOVE                             R4 R2
        4 CALL                             R3 1 1
        5 MOVE                             R4 R0
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 GETIMPORT                        R9 K2 [table.create]
       11 ADDK                             R10 R2 K3 [3]
       12 CALL                             R9 1 1
       13 MOVE                             R10 R0
       14 LOADNIL                          R11
       15 LOADNIL                          R12
       16 FORGPREP                         R10
       17 SUB                              R16 R8 R14
       18 FASTCALL1                        MATH_ABS R16 ; [+2]
       19 GETIMPORT                        R15 K6 [math.abs]
       21 CALL                             R15 1 1
       22 GETUPVAL                         R18 0
       23 ADDK                             R17 R18 K7 [0.0001]
       24 JUMPIFNOTLE                      R15 R17 ; [+9]
       26 GETUPVAL                         R16 1
       27 GETTABLEKS                       R16 R16 K8 ["getGaussianWeight"]
       29 MOVE                             R17 R8
       30 MOVE                             R18 R14
       31 GETUPVAL                         R19 2
       32 CALL                             R16 3 1
       33 JUMP                             ; [+1]
       34 LOADN                            R16 0
       35 SETTABLE                         R16 R9 R13
       36 FORGLOOP                         R10 2 ; [-20]
       38 GETTABLE                         R10 R1 R7
       39 ADDK                             R11 R2 K9 [1]
       40 GETTABLEKS                       R12 R10 K10 ["X"]
       42 SETTABLE                         R12 R9 R11
       43 ADDK                             R11 R2 K11 [2]
       44 GETTABLEKS                       R12 R10 K12 ["Y"]
       46 SETTABLE                         R12 R9 R11
       47 ADDK                             R11 R2 K3 [3]
       48 GETTABLEKS                       R12 R10 K13 ["Z"]
       50 SETTABLE                         R12 R9 R11
       51 SETTABLE                         R9 R3 R7
       52 FORGLOOP                         R4 2 ; [-44]
       54 LOADN                            R6 1
       55 MOVE                             R4 R2
       56 LOADN                            R5 1
       57 FORNPREP                         R4
       58 MOVE                             R7 R6
       59 GETTABLE                         R10 R3 R6
       60 GETTABLE                         R9 R10 R6
       61 FASTCALL1                        MATH_ABS R9 ; [+2]
       62 GETIMPORT                        R8 K6 [math.abs]
       64 CALL                             R8 1 1
       65 ADDK                             R11 R6 K9 [1]
       66 MOVE                             R9 R2
       67 LOADN                            R10 1
       68 FORNPREP                         R9
       69 GETTABLE                         R14 R3 R11
       70 GETTABLE                         R13 R14 R6
       71 FASTCALL1                        MATH_ABS R13 ; [+2]
       72 GETIMPORT                        R12 K6 [math.abs]
       74 CALL                             R12 1 1
       75 JUMPIFNOTLT                      R8 R12 ; [+3]
       77 MOVE                             R8 R12
       78 MOVE                             R7 R11
       79 FORNLOOP                         R9
       80 LOADK                            R9 K14 [1E-12]
       81 JUMPIFNOTLT                      R8 R9 ; [+3]
       83 LOADNIL                          R9
       84 RETURN                           R9 1
       85 JUMPIFEQ                         R7 R6 ; [+5]
       87 GETTABLE                         R9 R3 R7
       88 GETTABLE                         R10 R3 R6
       89 SETTABLE                         R9 R3 R6
       90 SETTABLE                         R10 R3 R7
       91 GETTABLE                         R10 R3 R6
       92 GETTABLE                         R9 R10 R6
       93 MOVE                             R12 R6
       94 ADDK                             R10 R2 K3 [3]
       95 LOADN                            R11 1
       96 FORNPREP                         R10
       97 GETTABLE                         R13 R3 R6
       98 GETTABLE                         R14 R13 R12
       99 DIV                              R14 R14 R9
      100 SETTABLE                         R14 R13 R12
      101 FORNLOOP                         R10
      102 LOADN                            R12 1
      103 MOVE                             R10 R2
      104 LOADN                            R11 1
      105 FORNPREP                         R10
      106 JUMPIFEQ                         R12 R6 ; [+15]
      108 GETTABLE                         R14 R3 R12
      109 GETTABLE                         R13 R14 R6
      110 MOVE                             R16 R6
      111 ADDK                             R14 R2 K3 [3]
      112 LOADN                            R15 1
      113 FORNPREP                         R14
      114 GETTABLE                         R17 R3 R12
      115 GETTABLE                         R18 R17 R16
      116 GETTABLE                         R21 R3 R6
      117 GETTABLE                         R20 R21 R16
      118 MUL                              R19 R13 R20
      119 SUB                              R18 R18 R19
      120 SETTABLE                         R18 R17 R16
      121 FORNLOOP                         R14
      122 FORNLOOP                         R10
      123 FORNLOOP                         R4
      124 GETIMPORT                        R4 K2 [table.create]
      126 MOVE                             R5 R2
      127 CALL                             R4 1 1
      128 LOADN                            R7 1
      129 MOVE                             R5 R2
      130 LOADN                            R6 1
      131 FORNPREP                         R5
      132 GETTABLE                         R10 R3 R7
      133 ADDK                             R11 R2 K9 [1]
      134 GETTABLE                         R9 R10 R11
      135 GETTABLE                         R11 R3 R7
      136 ADDK                             R12 R2 K11 [2]
      137 GETTABLE                         R10 R11 R12
      138 GETTABLE                         R12 R3 R7
      139 ADDK                             R13 R2 K3 [3]
      140 GETTABLE                         R11 R12 R13
      141 FASTCALL                         VECTOR ; [+2]
      142 GETIMPORT                        R8 K17 [Vector3.new]
      144 CALL                             R8 3 1
      145 SETTABLE                         R8 R4 R7
      146 FORNLOOP                         R5
      147 RETURN                           R4 1

PROTO_3:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R1
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 MOVE                             R10 R9
        7 LOADNIL                          R11
        8 LOADNIL                          R12
        9 FORGPREP                         R10
       10 LOADB                            R15 1
       11 SETTABLE                         R15 R4 R13
       12 FORGLOOP                         R10 1 ; [-3]
       14 FORGLOOP                         R5 2 ; [-9]
       16 NEWTABLE                         R5 0 0
       18 MOVE                             R6 R4
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       24 MOVE                             R12 R5
       25 MOVE                             R13 R9
       26 GETIMPORT                        R11 K2 [table.insert]
       28 CALL                             R11 2 0
       29 FORGLOOP                         R6 1 ; [-8]
       31 GETIMPORT                        R6 K4 [table.sort]
       33 MOVE                             R7 R5
       34 CALL                             R6 1 0
       35 LENGTH                           R6 R5
       36 JUMPIFNOTEQKN                    R6 K5 [0] ; [+3]
       38 LOADB                            R6 0
       39 RETURN                           R6 1
       40 GETUPVAL                         R6 0
       41 MOVE                             R7 R0
       42 CALL                             R6 1 1
       43 LENGTH                           R7 R6
       44 JUMPIFNOTEQKN                    R7 K5 [0] ; [+3]
       46 LOADB                            R7 0
       47 RETURN                           R7 1
       48 JUMPIFEQKNIL                     R3 ; [+8]
       50 GETTABLEKS                       R8 R3 K6 ["priorSequence"]
       52 JUMPIFEQKNIL                     R8 ; [+4]
       54 GETTABLEKS                       R7 R3 K6 ["priorSequence"]
       56 JUMP                             ; [+1]
       57 MOVE                             R7 R0
       58 LOADN                            R8 0
       59 MOVE                             R9 R6
       60 LOADNIL                          R10
       61 LOADNIL                          R11
       62 FORGPREP                         R9
       63 MOVE                             R15 R8
       64 GETUPVAL                         R16 1
       65 GETTABLEKS                       R16 R16 K7 ["timeToFrameIndex"]
       67 GETTABLEKS                       R17 R13 K8 ["Time"]
       69 CALL                             R16 1 -1
       70 FASTCALL                         MATH_MAX ; [+2]
       71 GETIMPORT                        R14 K11 [math.max]
       73 CALL                             R14 -1 1
       74 MOVE                             R8 R14
       75 FORGLOOP                         R9 2 ; [-13]
       77 MOVE                             R9 R1
       78 LOADNIL                          R10
       79 LOADNIL                          R11
       80 FORGPREP                         R9
       81 FASTCALL2                        MATH_MAX R8 R12 ; [+5]
       83 MOVE                             R15 R8
       84 MOVE                             R16 R12
       85 GETIMPORT                        R14 K11 [math.max]
       87 CALL                             R14 2 1
       88 MOVE                             R8 R14
       89 FORGLOOP                         R9 1 ; [-9]
       91 ADDK                             R9 R8 K12 [1]
       92 GETUPVAL                         R10 2
       93 GETTABLEKS                       R10 R10 K13 ["DEFAULT_SIGMA_FRAMES"]
       95 GETUPVAL                         R12 2
       96 GETTABLEKS                       R12 R12 K14 ["DEFAULT_SUPPORT_SIGMAS"]
       98 MUL                              R11 R10 R12
       99 GETUPVAL                         R12 0
      100 MOVE                             R13 R7
      101 CALL                             R12 1 1
      102 NEWTABLE                         R13 0 0
      104 MOVE                             R14 R5
      105 LOADNIL                          R15
      106 LOADNIL                          R16
      107 FORGPREP                         R14
      108 GETIMPORT                        R19 K16 [table.create]
      110 MOVE                             R20 R9
      111 CALL                             R19 1 1
      112 LOADN                            R22 0
      113 SUBK                             R20 R9 K12 [1]
      114 LOADN                            R21 1
      115 FORNPREP                         R20
      116 GETUPVAL                         R23 3
      117 GETTABLEKS                       R23 R23 K17 ["samplePoseCFrame"]
      119 MOVE                             R24 R12
      120 MOVE                             R25 R18
      121 GETUPVAL                         R27 4
      122 DIV                              R26 R22 R27
      123 CALL                             R23 3 1
      124 ADDK                             R24 R22 K12 [1]
      125 JUMPIFEQKNIL                     R23 ; [+4]
      127 GETTABLEKS                       R25 R23 K18 ["Position"]
      129 JUMP                             ; [+1]
      130 LOADK                            R25 K19 [{0, 0, 0}]
      131 SETTABLE                         R25 R19 R24
      132 FORNLOOP                         R20
      133 SETTABLE                         R19 R13 R18
      134 FORGLOOP                         R14 2 ; [-27]
      136 NEWCLOSURE                       R14 P0
      137 CAPTURE                          VAL R3
      138 CAPTURE                          UPVAL U4
      139 NEWCLOSURE                       R15 P1
      140 CAPTURE                          VAL R11
      141 CAPTURE                          UPVAL U2
      142 CAPTURE                          VAL R10
      143 NEWTABLE                         R16 0 0
      145 NEWTABLE                         R17 0 0
      147 MOVE                             R18 R5
      148 LOADNIL                          R19
      149 LOADNIL                          R20
      150 FORGPREP                         R18
      151 NEWTABLE                         R23 0 0
      153 NEWTABLE                         R24 0 0
      155 MOVE                             R25 R1
      156 LOADNIL                          R26
      157 LOADNIL                          R27
      158 FORGPREP                         R25
      159 GETTABLE                         R30 R29 R22
      160 JUMPIFEQKNIL                     R30 ; [+15]
      162 FASTCALL2                        TABLE_INSERT R23 R28 ; [+5]
      164 MOVE                             R32 R23
      165 MOVE                             R33 R28
      166 GETIMPORT                        R31 K2 [table.insert]
      168 CALL                             R31 2 0
      169 FASTCALL2                        TABLE_INSERT R24 R30 ; [+5]
      171 MOVE                             R32 R24
      172 MOVE                             R33 R30
      173 GETIMPORT                        R31 K2 [table.insert]
      175 CALL                             R31 2 0
      176 FORGLOOP                         R25 2 ; [-18]
      178 MOVE                             R26 R15
      179 MOVE                             R27 R23
      180 MOVE                             R28 R24
      181 CALL                             R26 2 1
      182 OR                               R25 R26 R24
      183 SETTABLE                         R25 R16 R22
      184 SETTABLE                         R23 R17 R22
      185 FORGLOOP                         R18 2 ; [-35]
      187 GETUPVAL                         R18 3
      188 GETTABLEKS                       R18 R18 K20 ["findNearestKeyframe"]
      190 MOVE                             R19 R6
      191 MOVE                             R20 R2
      192 CALL                             R18 2 1
      193 LOADB                            R19 0
      194 LOADN                            R22 0
      195 SUBK                             R20 R9 K12 [1]
      196 LOADN                            R21 1
      197 FORNPREP                         R20
      198 MOVE                             R23 R5
      199 LOADNIL                          R24
      200 LOADNIL                          R25
      201 FORGPREP                         R23
      202 MOVE                             R28 R14
      203 MOVE                             R29 R27
      204 MOVE                             R30 R22
      205 CALL                             R28 2 1
      206 JUMPIF                           R28 ; [+64]
      207 GETTABLE                         R28 R17 R27
      208 GETTABLE                         R29 R16 R27
      209 LOADK                            R30 K19 [{0, 0, 0}]
      210 LOADN                            R31 0
      211 MOVE                             R32 R28
      212 LOADNIL                          R33
      213 LOADNIL                          R34
      214 FORGPREP                         R32
      215 SUB                              R38 R22 R36
      216 FASTCALL1                        MATH_ABS R38 ; [+2]
      217 GETIMPORT                        R37 K22 [math.abs]
      219 CALL                             R37 1 1
      220 ADDK                             R38 R11 K23 [0.0001]
      221 JUMPIFNOTLE                      R37 R38 ; [+12]
      223 GETUPVAL                         R38 2
      224 GETTABLEKS                       R38 R38 K24 ["getGaussianWeight"]
      226 MOVE                             R39 R22
      227 MOVE                             R40 R36
      228 MOVE                             R41 R10
      229 CALL                             R38 3 1
      230 ADD                              R31 R31 R38
      231 GETTABLE                         R40 R29 R35
      232 MUL                              R39 R40 R38
      233 ADD                              R30 R30 R39
      234 FORGLOOP                         R32 2 ; [-20]
      236 LOADK                            R32 K25 [1E-12]
      237 JUMPIFLE                         R31 R32 ; [+33]
      239 GETTABLE                         R33 R13 R27
      240 ADDK                             R34 R22 K12 [1]
      241 GETTABLE                         R32 R33 R34
      242 ADD                              R33 R32 R30
      243 GETUPVAL                         R35 4
      244 DIV                              R34 R22 R35
      245 GETUPVAL                         R35 3
      246 GETTABLEKS                       R35 R35 K26 ["ensureKeyframeAtTime"]
      248 MOVE                             R36 R0
      249 MOVE                             R37 R6
      250 MOVE                             R38 R34
      251 CALL                             R35 3 1
      252 GETUPVAL                         R36 3
      253 GETTABLEKS                       R36 R36 K27 ["ensurePose"]
      255 MOVE                             R37 R35
      256 MOVE                             R38 R27
      257 MOVE                             R39 R18
      258 CALL                             R36 3 1
      259 GETIMPORT                        R38 K30 [CFrame.new]
      261 MOVE                             R39 R33
      262 CALL                             R38 1 1
      263 GETTABLEKS                       R39 R36 K28 ["CFrame"]
      265 GETTABLEKS                       R39 R39 K31 ["Rotation"]
      267 MUL                              R37 R38 R39
      268 SETTABLEKS                       R37 R36 K28 ["CFrame"]
      270 LOADB                            R19 1
      271 FORGLOOP                         R23 2 ; [-70]
      273 FORNLOOP                         R20
      274 RETURN                           R19 1

PROTO_4:
        0 LENGTH                           R3 R1
        1 JUMPIFNOTEQKN                    R3 K0 [0] ; [+3]
        3 LOADB                            R3 0
        4 RETURN                           R3 1
        5 GETUPVAL                         R3 0
        6 MOVE                             R4 R1
        7 JUMPIFEQKNIL                     R2 ; [+4]
        9 GETTABLEKS                       R5 R2 K1 ["intervals"]
       11 JUMP                             ; [+1]
       12 LOADNIL                          R5
       13 CALL                             R3 2 1
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R0
       16 MOVE                             R6 R3
       17 GETTABLEN                        R7 R1 1
       18 GETTABLEKS                       R7 R7 K2 ["time"]
       20 MOVE                             R8 R2
       21 CALL                             R4 4 1
       22 RETURN                           R4 1

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
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Util"]
       20 GETTABLEKS                       R3 R3 K7 ["AnimationGen"]
       22 GETTABLEKS                       R3 R3 K9 ["Posing"]
       24 GETTABLEKS                       R3 R3 K10 ["EditJointFilter"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Util"]
       31 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       33 GETTABLEKS                       R4 R4 K9 ["Posing"]
       35 GETTABLEKS                       R4 R4 K11 ["KeyframePoses"]
       37 CALL                             R3 1 1
       38 GETIMPORT                        R4 K5 [require]
       40 GETTABLEKS                       R5 R0 K6 ["Util"]
       42 GETTABLEKS                       R5 R5 K7 ["AnimationGen"]
       44 GETTABLEKS                       R5 R5 K9 ["Posing"]
       46 GETTABLEKS                       R5 R5 K12 ["PoseInterval"]
       48 CALL                             R4 1 1
       49 GETIMPORT                        R5 K5 [require]
       51 GETTABLEKS                       R6 R0 K6 ["Util"]
       53 GETTABLEKS                       R6 R6 K7 ["AnimationGen"]
       55 GETTABLEKS                       R6 R6 K9 ["Posing"]
       57 GETTABLEKS                       R6 R6 K13 ["RotationIntentTemporal"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K5 [require]
       62 GETTABLEKS                       R7 R0 K6 ["Util"]
       64 GETTABLEKS                       R7 R7 K7 ["AnimationGen"]
       66 GETTABLEKS                       R7 R7 K9 ["Posing"]
       68 GETTABLEKS                       R7 R7 K14 ["ScrubbarFrameKeys"]
       70 CALL                             R6 1 1
       71 GETIMPORT                        R7 K5 [require]
       73 GETTABLEKS                       R8 R0 K6 ["Util"]
       75 GETTABLEKS                       R8 R8 K7 ["AnimationGen"]
       77 GETTABLEKS                       R8 R8 K9 ["Posing"]
       79 GETTABLEKS                       R8 R8 K15 ["applyRotationIntentTemporal"]
       81 CALL                             R7 1 1
       82 GETTABLEKS                       R8 R1 K16 ["DEFAULT_GENERATION_FPS"]
       84 GETTABLEKS                       R9 R3 K17 ["poseMap"]
       86 GETTABLEKS                       R10 R3 K18 ["sortedKeyframes"]
       88 NEWTABLE                         R11 0 0
       90 GETTABLEKS                       R12 R2 K19 ["ROOT_CHANNEL_POSES"]
       92 LOADNIL                          R13
       93 LOADNIL                          R14
       94 FORGPREP                         R12
       95 LOADB                            R17 1
       96 SETTABLE                         R17 R11 R16
       97 FORGLOOP                         R12 2 ; [-3]
       99 DUPCLOSURE                       R12 K20 [PROTO_0]
      100 CAPTURE                          VAL R9
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R11
      103 DUPCLOSURE                       R13 K21 [PROTO_3]
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R3
      108 CAPTURE                          VAL R8
      109 DUPCLOSURE                       R14 K22 [PROTO_4]
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R13
      112 DUPTABLE                         R15 K25 [{"applyJointTranslation", "fadeTranslationOffsets"}]
      113 SETTABLEKS                       R14 R15 K23 ["applyJointTranslation"]
      115 SETTABLEKS                       R13 R15 K24 ["fadeTranslationOffsets"]
      117 RETURN                           R15 1
