PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["ToAxisAngle"]
        2 CALL                             R1 1 2
        3 MUL                              R3 R1 R2
        4 RETURN                           R3 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Magnitude"]
        2 LOADK                            R2 K1 [1E-09]
        3 JUMPIFNOTLT                      R1 R2 ; [+4]
        5 GETIMPORT                        R2 K4 [CFrame.identity]
        7 RETURN                           R2 1
        8 GETIMPORT                        R2 K6 [CFrame.fromAxisAngle]
       10 DIV                              R3 R0 R1
       11 MOVE                             R4 R1
       12 CALL                             R2 2 -1
       13 RETURN                           R2 -1

PROTO_2:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 JUMPIFEQKNIL                     R4 ; [+11]
        5 GETTABLE                         R5 R3 R4
        6 JUMPIF                           R5 ; [+8]
        7 GETTABLE                         R5 R1 R4
        8 JUMPIFNOT                        R5 ; [+2]
        9 LOADB                            R5 1
       10 RETURN                           R5 1
       11 LOADB                            R5 1
       12 SETTABLE                         R5 R3 R4
       13 GETTABLE                         R4 R2 R4
       14 JUMPBACK                         ; [-12]
       15 LOADB                            R5 0
       16 RETURN                           R5 1

PROTO_3:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 GETUPVAL                         R7 1
        9 GETTABLEKS                       R7 R7 K3 ["effectorChainPoseNames"]
       11 MOVE                             R8 R5
       12 CALL                             R7 1 1
       13 JUMPIFEQKNIL                     R7 ; [+7]
       15 GETIMPORT                        R8 K5 [table.find]
       17 MOVE                             R9 R7
       18 MOVE                             R10 R6
       19 CALL                             R8 2 1
       20 JUMP                             ; [+1]
       21 LOADNIL                          R8
       22 JUMPIFEQKNIL                     R7 ; [+14]
       24 JUMPIFEQKNIL                     R8 ; [+12]
       26 ADDK                             R11 R8 K6 [1]
       27 LENGTH                           R9 R7
       28 LOADN                            R10 1
       29 FORNPREP                         R9
       30 GETTABLE                         R13 R7 R11
       31 GETTABLE                         R12 R0 R13
       32 JUMPIFNOT                        R12 ; [+3]
       33 LOADB                            R12 1
       34 SETTABLE                         R12 R1 R6
       35 JUMP                             ; [+1]
       36 FORNLOOP                         R9
       37 FORGLOOP                         R2 2 ; [-30]
       39 RETURN                           R1 1

PROTO_4:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 MUL                              R7 R6 R6
        6 ADD                              R1 R1 R7
        7 FORGLOOP                         R2 2 ; [-3]
        9 RETURN                           R1 1

PROTO_5:
        0 LENGTH                           R3 R1
        1 GETIMPORT                        R4 K2 [table.create]
        3 MOVE                             R5 R3
        4 CALL                             R4 1 1
        5 LOADN                            R7 1
        6 MOVE                             R5 R3
        7 LOADN                            R6 1
        8 FORNPREP                         R5
        9 GETIMPORT                        R8 K4 [table.clone]
       11 GETTABLE                         R9 R0 R7
       12 CALL                             R8 1 1
       13 GETTABLE                         R9 R8 R7
       14 GETTABLE                         R13 R0 R7
       15 GETTABLE                         R12 R13 R7
       16 FASTCALL2K                       MATH_MAX R12 K5 ; [+4]
       18 LOADK                            R13 K5 [1E-06]
       19 GETIMPORT                        R11 K8 [math.max]
       21 CALL                             R11 2 1
       22 MUL                              R10 R2 R11
       23 ADD                              R9 R9 R10
       24 SETTABLE                         R9 R8 R7
       25 ADDK                             R9 R3 K9 [1]
       26 GETTABLE                         R10 R1 R7
       27 SETTABLE                         R10 R8 R9
       28 SETTABLE                         R8 R4 R7
       29 FORNLOOP                         R5
       30 LOADN                            R7 1
       31 MOVE                             R5 R3
       32 LOADN                            R6 1
       33 FORNPREP                         R5
       34 MOVE                             R8 R7
       35 ADDK                             R11 R7 K9 [1]
       36 MOVE                             R9 R3
       37 LOADN                            R10 1
       38 FORNPREP                         R9
       39 GETTABLE                         R14 R4 R11
       40 GETTABLE                         R13 R14 R7
       41 FASTCALL1                        MATH_ABS R13 ; [+2]
       42 GETIMPORT                        R12 K11 [math.abs]
       44 CALL                             R12 1 1
       45 GETTABLE                         R15 R4 R8
       46 GETTABLE                         R14 R15 R7
       47 FASTCALL1                        MATH_ABS R14 ; [+2]
       48 GETIMPORT                        R13 K11 [math.abs]
       50 CALL                             R13 1 1
       51 JUMPIFNOTLT                      R13 R12 ; [+2]
       53 MOVE                             R8 R11
       54 FORNLOOP                         R9
       55 GETTABLE                         R9 R4 R8
       56 GETTABLE                         R10 R4 R7
       57 SETTABLE                         R9 R4 R7
       58 SETTABLE                         R10 R4 R8
       59 GETTABLE                         R10 R4 R7
       60 GETTABLE                         R9 R10 R7
       61 FASTCALL1                        MATH_ABS R9 ; [+3]
       62 MOVE                             R11 R9
       63 GETIMPORT                        R10 K11 [math.abs]
       65 CALL                             R10 1 1
       66 LOADK                            R11 K12 [1E-12]
       67 JUMPIFLT                         R10 R11 ; [+21]
       69 ADDK                             R12 R7 K9 [1]
       70 MOVE                             R10 R3
       71 LOADN                            R11 1
       72 FORNPREP                         R10
       73 GETTABLE                         R15 R4 R12
       74 GETTABLE                         R14 R15 R7
       75 DIV                              R13 R14 R9
       76 MOVE                             R16 R7
       77 ADDK                             R14 R3 K9 [1]
       78 LOADN                            R15 1
       79 FORNPREP                         R14
       80 GETTABLE                         R17 R4 R12
       81 GETTABLE                         R18 R17 R16
       82 GETTABLE                         R21 R4 R7
       83 GETTABLE                         R20 R21 R16
       84 MUL                              R19 R13 R20
       85 SUB                              R18 R18 R19
       86 SETTABLE                         R18 R17 R16
       87 FORNLOOP                         R14
       88 FORNLOOP                         R10
       89 FORNLOOP                         R5
       90 GETIMPORT                        R5 K2 [table.create]
       92 MOVE                             R6 R3
       93 LOADN                            R7 0
       94 CALL                             R5 2 1
       95 MOVE                             R8 R3
       96 LOADN                            R6 1
       97 LOADN                            R7 -1
       98 FORNPREP                         R6
       99 GETTABLE                         R10 R4 R8
      100 ADDK                             R11 R3 K9 [1]
      101 GETTABLE                         R9 R10 R11
      102 ADDK                             R12 R8 K9 [1]
      103 MOVE                             R10 R3
      104 LOADN                            R11 1
      105 FORNPREP                         R10
      106 GETTABLE                         R15 R4 R8
      107 GETTABLE                         R14 R15 R12
      108 GETTABLE                         R15 R5 R12
      109 MUL                              R13 R14 R15
      110 SUB                              R9 R9 R13
      111 FORNLOOP                         R10
      112 GETTABLE                         R13 R4 R8
      113 GETTABLE                         R12 R13 R8
      114 FASTCALL1                        MATH_ABS R12 ; [+2]
      115 GETIMPORT                        R11 K11 [math.abs]
      117 CALL                             R11 1 1
      118 LOADK                            R12 K12 [1E-12]
      119 JUMPIFNOTLT                      R12 R11 ; [+5]
      121 GETTABLE                         R12 R4 R8
      122 GETTABLE                         R11 R12 R8
      123 DIV                              R10 R9 R11
      124 JUMP                             ; [+1]
      125 LOADN                            R10 0
      126 SETTABLE                         R10 R5 R8
      127 FORNLOOP                         R6
      128 RETURN                           R5 1

PROTO_6:
        0 NAMECALL                         R2 R0 K0 ["Clone"]
        2 CALL                             R2 1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K1 ["poseMap"]
        6 MOVE                             R4 R2
        7 CALL                             R3 1 1
        8 NEWTABLE                         R4 0 0
       10 NEWTABLE                         R5 0 0
       12 GETUPVAL                         R6 1
       13 LOADNIL                          R7
       14 LOADNIL                          R8
       15 FORGPREP                         R6
       16 GETTABLEKS                       R12 R10 K2 ["isTranslation"]
       18 JUMPIFNOT                        R12 ; [+2]
       19 MOVE                             R11 R5
       20 JUMP                             ; [+1]
       21 MOVE                             R11 R4
       22 GETTABLEKS                       R12 R10 K3 ["poseName"]
       24 GETTABLEKS                       R16 R10 K3 ["poseName"]
       26 GETTABLE                         R15 R11 R16
       27 ORK                              R14 R15 K4 [{0, 0, 0}]
       28 GETTABLEKS                       R16 R10 K5 ["axis"]
       30 GETTABLE                         R17 R1 R9
       31 MUL                              R15 R16 R17
       32 ADD                              R13 R14 R15
       33 SETTABLE                         R13 R11 R12
       34 FORGLOOP                         R6 2 ; [-19]
       36 MOVE                             R6 R4
       37 LOADNIL                          R7
       38 LOADNIL                          R8
       39 FORGPREP                         R6
       40 GETTABLE                         R11 R3 R9
       41 GETTABLEKS                       R13 R11 K6 ["CFrame"]
       43 GETTABLEKS                       R15 R10 K7 ["Magnitude"]
       45 LOADK                            R16 K8 [1E-09]
       46 JUMPIFNOTLT                      R15 R16 ; [+4]
       48 GETIMPORT                        R14 K10 [CFrame.identity]
       50 JUMP                             ; [+6]
       51 GETIMPORT                        R16 K12 [CFrame.fromAxisAngle]
       53 DIV                              R17 R10 R15
       54 MOVE                             R18 R15
       55 CALL                             R16 2 1
       56 MOVE                             R14 R16
       57 MUL                              R12 R13 R14
       58 SETTABLEKS                       R12 R11 K6 ["CFrame"]
       60 FORGLOOP                         R6 2 ; [-21]
       62 MOVE                             R6 R5
       63 LOADNIL                          R7
       64 LOADNIL                          R8
       65 FORGPREP                         R6
       66 GETTABLE                         R11 R3 R9
       67 GETTABLEKS                       R13 R11 K6 ["CFrame"]
       69 ADD                              R12 R13 R10
       70 SETTABLEKS                       R12 R11 K6 ["CFrame"]
       72 FORGLOOP                         R6 2 ; [-7]
       74 RETURN                           R2 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R2 0
        3 LOADN                            R3 0
        4 GETUPVAL                         R4 0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 GETUPVAL                         R10 1
        9 GETTABLE                         R9 R10 R8
       10 GETTABLE                         R11 R0 R8
       11 OR                               R10 R11 R9
       12 NAMECALL                         R13 R9 K0 ["Inverse"]
       14 CALL                             R13 1 1
       15 MUL                              R12 R13 R10
       16 NAMECALL                         R13 R12 K1 ["ToAxisAngle"]
       18 CALL                             R13 1 2
       19 MUL                              R11 R13 R14
       20 GETTABLEKS                       R13 R10 K2 ["Position"]
       22 GETTABLEKS                       R14 R9 K2 ["Position"]
       24 SUB                              R12 R13 R14
       25 GETTABLEKS                       R16 R11 K3 ["Magnitude"]
       27 FASTCALL1                        MATH_DEG R16 ; [+2]
       28 GETIMPORT                        R15 K6 [math.deg]
       30 CALL                             R15 1 1
       31 FASTCALL2                        MATH_MAX R2 R15 ; [+4]
       33 MOVE                             R14 R2
       34 GETIMPORT                        R13 K8 [math.max]
       36 CALL                             R13 2 1
       37 MOVE                             R2 R13
       38 GETTABLEKS                       R15 R12 K3 ["Magnitude"]
       40 FASTCALL2                        MATH_MAX R3 R15 ; [+4]
       42 MOVE                             R14 R3
       43 GETIMPORT                        R13 K8 [math.max]
       45 CALL                             R13 2 1
       46 MOVE                             R3 R13
       47 GETTABLEKS                       R15 R11 K9 ["X"]
       49 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       51 MOVE                             R14 R1
       52 GETIMPORT                        R13 K12 [table.insert]
       54 CALL                             R13 2 0
       55 GETTABLEKS                       R15 R11 K13 ["Y"]
       57 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       59 MOVE                             R14 R1
       60 GETIMPORT                        R13 K12 [table.insert]
       62 CALL                             R13 2 0
       63 GETTABLEKS                       R15 R11 K14 ["Z"]
       65 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       67 MOVE                             R14 R1
       68 GETIMPORT                        R13 K12 [table.insert]
       70 CALL                             R13 2 0
       71 GETTABLEKS                       R15 R12 K9 ["X"]
       73 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       75 MOVE                             R14 R1
       76 GETIMPORT                        R13 K12 [table.insert]
       78 CALL                             R13 2 0
       79 GETTABLEKS                       R15 R12 K13 ["Y"]
       81 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       83 MOVE                             R14 R1
       84 GETIMPORT                        R13 K12 [table.insert]
       86 CALL                             R13 2 0
       87 GETTABLEKS                       R15 R12 K14 ["Z"]
       89 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       91 MOVE                             R14 R1
       92 GETIMPORT                        R13 K12 [table.insert]
       94 CALL                             R13 2 0
       95 FORGLOOP                         R4 2 ; [-88]
       97 RETURN                           R1 3

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["targetTransforms"]
        2 GETTABLEKS                       R2 R0 K1 ["render"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["poseMap"]
        7 GETTABLEKS                       R4 R0 K3 ["initialPose"]
        9 CALL                             R3 1 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K4 ["FFlagAssistantAnimationGenSolveLimbRoots"]
       13 JUMPIFNOT                        R5 ; [+5]
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R5 R0 K5 ["editedJointNames"]
       17 CALL                             R4 1 1
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R4 R0 K5 ["editedJointNames"]
       21 NEWTABLE                         R5 0 0
       23 NEWTABLE                         R6 0 0
       25 MOVE                             R7 R1
       26 LOADNIL                          R8
       27 LOADNIL                          R9
       28 FORGPREP                         R7
       29 GETUPVAL                         R12 3
       30 MOVE                             R13 R10
       31 MOVE                             R14 R4
       32 GETTABLEKS                       R15 R0 K6 ["jointParents"]
       34 CALL                             R12 3 1
       35 JUMPIFNOT                        R12 ; [+48]
       36 FASTCALL2                        TABLE_INSERT R5 R10 ; [+5]
       38 MOVE                             R13 R5
       39 MOVE                             R14 R10
       40 GETIMPORT                        R12 K9 [table.insert]
       42 CALL                             R12 2 0
       43 GETTABLE                         R12 R3 R10
       44 JUMPIFEQKNIL                     R12 ; [+39]
       46 GETUPVAL                         R12 4
       47 LOADNIL                          R13
       48 LOADNIL                          R14
       49 FORGPREP                         R12
       50 DUPTABLE                         R19 K14 [{["poseName"], ["isTranslation"] = False, ["axis"]}]
       51 SETTABLEKS                       R10 R19 K10 ["poseName"]
       53 SETTABLEKS                       R16 R19 K13 ["axis"]
       55 FASTCALL2                        TABLE_INSERT R6 R19 ; [+4]
       57 MOVE                             R18 R6
       58 GETIMPORT                        R17 K9 [table.insert]
       60 CALL                             R17 2 0
       61 FORGLOOP                         R12 2 ; [-12]
       63 GETTABLEKS                       R13 R0 K15 ["translatedJointNames"]
       65 GETTABLE                         R12 R13 R10
       66 JUMPIFNOT                        R12 ; [+17]
       67 GETUPVAL                         R12 4
       68 LOADNIL                          R13
       69 LOADNIL                          R14
       70 FORGPREP                         R12
       71 DUPTABLE                         R19 K17 [{["poseName"], ["isTranslation"] = True, ["axis"]}]
       72 SETTABLEKS                       R10 R19 K10 ["poseName"]
       74 SETTABLEKS                       R16 R19 K13 ["axis"]
       76 FASTCALL2                        TABLE_INSERT R6 R19 ; [+4]
       78 MOVE                             R18 R6
       79 GETIMPORT                        R17 K9 [table.insert]
       81 CALL                             R17 2 0
       82 FORGLOOP                         R12 2 ; [-12]
       84 FORGLOOP                         R7 1 ; [-56]
       86 NEWCLOSURE                       R7 P0
       87 CAPTURE                          UPVAL U0
       88 CAPTURE                          VAL R6
       89 NEWCLOSURE                       R8 P1
       90 CAPTURE                          VAL R5
       91 CAPTURE                          VAL R1
       92 GETTABLEKS                       R9 R0 K3 ["initialPose"]
       94 NAMECALL                         R9 R9 K18 ["Clone"]
       96 CALL                             R9 1 1
       97 MOVE                             R10 R8
       98 MOVE                             R11 R2
       99 MOVE                             R12 R9
      100 CALL                             R11 1 -1
      101 CALL                             R10 -1 3
      102 LENGTH                           R13 R6
      103 LENGTH                           R14 R10
      104 LOADK                            R15 K19 [0.001]
      105 LOADN                            R18 1
      106 GETUPVAL                         R16 1
      107 GETTABLEKS                       R16 R16 K20 ["FIntAssistantAnimationGenSolveRetargetedPoseMaxIterations"]
      109 LOADN                            R17 1
      110 FORNPREP                         R16
      111 JUMPIFEQKN                       R13 K21 [0] ; [+166]
      113 LOADK                            R19 K22 [0.05]
      114 JUMPIFNOTLT                      R11 R19 ; [+4]
      116 LOADK                            R19 K19 [0.001]
      117 JUMPIFLT                         R12 R19 ; [+160]
      119 GETIMPORT                        R19 K24 [table.create]
      121 MOVE                             R20 R13
      122 CALL                             R19 1 1
      123 LOADN                            R22 1
      124 MOVE                             R20 R13
      125 LOADN                            R21 1
      126 FORNPREP                         R20
      127 GETIMPORT                        R23 K24 [table.create]
      129 MOVE                             R24 R13
      130 LOADN                            R25 0
      131 CALL                             R23 2 1
      132 LOADK                            R24 K19 [0.001]
      133 SETTABLE                         R24 R23 R22
      134 MOVE                             R24 R7
      135 MOVE                             R25 R9
      136 MOVE                             R26 R23
      137 CALL                             R24 2 1
      138 MOVE                             R25 R8
      139 MOVE                             R26 R2
      140 MOVE                             R27 R24
      141 CALL                             R26 1 -1
      142 CALL                             R25 -1 1
      143 NAMECALL                         R26 R24 K25 ["Destroy"]
      145 CALL                             R26 1 0
      146 GETIMPORT                        R26 K24 [table.create]
      148 MOVE                             R27 R14
      149 LOADN                            R28 0
      150 CALL                             R26 2 1
      151 LOADN                            R29 1
      152 MOVE                             R27 R14
      153 LOADN                            R28 1
      154 FORNPREP                         R27
      155 GETTABLE                         R32 R25 R29
      156 GETTABLE                         R33 R10 R29
      157 SUB                              R31 R32 R33
      158 DIVK                             R30 R31 K19 [0.001]
      159 SETTABLE                         R30 R26 R29
      160 FORNLOOP                         R27
      161 SETTABLE                         R26 R19 R22
      162 FORNLOOP                         R20
      163 GETIMPORT                        R20 K24 [table.create]
      165 MOVE                             R21 R13
      166 CALL                             R20 1 1
      167 GETIMPORT                        R21 K24 [table.create]
      169 MOVE                             R22 R13
      170 LOADN                            R23 0
      171 CALL                             R21 2 1
      172 LOADN                            R24 1
      173 MOVE                             R22 R13
      174 LOADN                            R23 1
      175 FORNPREP                         R22
      176 GETTABLE                         R25 R19 R24
      177 LOADN                            R26 0
      178 LOADN                            R29 1
      179 MOVE                             R27 R14
      180 LOADN                            R28 1
      181 FORNPREP                         R27
      182 GETTABLE                         R31 R25 R29
      183 GETTABLE                         R32 R10 R29
      184 MUL                              R30 R31 R32
      185 ADD                              R26 R26 R30
      186 FORNLOOP                         R27
      187 MINUS                            R27 R26
      188 SETTABLE                         R27 R21 R24
      189 GETIMPORT                        R27 K24 [table.create]
      191 MOVE                             R28 R13
      192 LOADN                            R29 0
      193 CALL                             R27 2 1
      194 LOADN                            R30 1
      195 MOVE                             R28 R13
      196 LOADN                            R29 1
      197 FORNPREP                         R28
      198 GETTABLE                         R31 R19 R30
      199 LOADN                            R32 0
      200 LOADN                            R35 1
      201 MOVE                             R33 R14
      202 LOADN                            R34 1
      203 FORNPREP                         R33
      204 GETTABLE                         R37 R25 R35
      205 GETTABLE                         R38 R31 R35
      206 MUL                              R36 R37 R38
      207 ADD                              R32 R32 R36
      208 FORNLOOP                         R33
      209 SETTABLE                         R32 R27 R30
      210 FORNLOOP                         R28
      211 SETTABLE                         R27 R20 R24
      212 FORNLOOP                         R22
      213 LOADB                            R22 0
      214 LOADN                            R25 1
      215 LOADN                            R23 6
      216 LOADN                            R24 1
      217 FORNPREP                         R23
      218 MOVE                             R26 R7
      219 MOVE                             R27 R9
      220 GETUPVAL                         R28 5
      221 MOVE                             R29 R20
      222 MOVE                             R30 R21
      223 MOVE                             R31 R15
      224 CALL                             R28 3 1
      225 CALL                             R26 2 1
      226 MOVE                             R27 R8
      227 MOVE                             R28 R2
      228 MOVE                             R29 R26
      229 CALL                             R28 1 -1
      230 CALL                             R27 -1 3
      231 LOADN                            R31 0
      232 MOVE                             R32 R27
      233 LOADNIL                          R33
      234 LOADNIL                          R34
      235 FORGPREP                         R32
      236 MUL                              R37 R36 R36
      237 ADD                              R31 R31 R37
      238 FORGLOOP                         R32 2 ; [-3]
      240 MOVE                             R30 R31
      241 MOVE                             R32 R10
      242 LOADN                            R33 0
      243 MOVE                             R34 R32
      244 LOADNIL                          R35
      245 LOADNIL                          R36
      246 FORGPREP                         R34
      247 MUL                              R39 R38 R38
      248 ADD                              R33 R33 R39
      249 FORGLOOP                         R34 2 ; [-3]
      251 MOVE                             R31 R33
      252 JUMPIFNOTLT                      R30 R31 ; [+18]
      254 NAMECALL                         R30 R9 K25 ["Destroy"]
      256 CALL                             R30 1 0
      257 MOVE                             R9 R26
      258 MOVE                             R10 R27
      259 MOVE                             R11 R28
      260 MOVE                             R12 R29
      261 DIVK                             R31 R15 K26 [10]
      262 FASTCALL2K                       MATH_MAX R31 K27 ; [+4]
      264 LOADK                            R32 K27 [1E-07]
      265 GETIMPORT                        R30 K30 [math.max]
      267 CALL                             R30 2 1
      268 MOVE                             R15 R30
      269 LOADB                            R22 1
      270 JUMP                             ; [+5]
      271 NAMECALL                         R30 R26 K25 ["Destroy"]
      273 CALL                             R30 1 0
      274 MULK                             R15 R15 K26 [10]
      275 FORNLOOP                         R23
      276 JUMPIFNOT                        R22 ; [+1]
      277 FORNLOOP                         R16
      278 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["Posing"]
       15 GETTABLEKS                       R2 R2 K9 ["DragEditSnapshot"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Flags"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Util"]
       27 GETTABLEKS                       R4 R4 K7 ["AnimationGen"]
       29 GETTABLEKS                       R4 R4 K8 ["Posing"]
       31 GETTABLEKS                       R4 R4 K11 ["KeyframePoses"]
       33 CALL                             R3 1 1
       34 NEWTABLE                         R4 0 3
       36 LOADK                            R5 K12 [{1, 0, 0}]
       37 LOADK                            R6 K13 [{0, 1, 0}]
       38 LOADK                            R7 K14 [{0, 0, 1}]
       39 SETLIST                          R4 R5 3 [1]
       41 DUPTABLE                         R5 K23 [{["left_hand"] = "LeftUpperArm", ["right_hand"] = "RightUpperArm", ["left_foot"] = "LeftUpperLeg", ["right_foot"] = "RightUpperLeg"}]
       42 DUPCLOSURE                       R6 K24 [PROTO_0]
       43 DUPCLOSURE                       R7 K25 [PROTO_1]
       44 DUPCLOSURE                       R8 K26 [PROTO_2]
       45 DUPCLOSURE                       R9 K27 [PROTO_3]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R1
       48 DUPCLOSURE                       R10 K28 [PROTO_4]
       49 DUPCLOSURE                       R11 K29 [PROTO_5]
       50 DUPCLOSURE                       R12 K30 [PROTO_8]
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R9
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R11
       57 RETURN                           R12 1
