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
        0 GETIMPORT                        R3 K2 [table.clone]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 NEWTABLE                         R9 0 0
       10 GETTABLE                         R10 R1 R7
       11 JUMPIFEQKNIL                     R10 ; [+12]
       13 GETTABLE                         R11 R9 R10
       14 JUMPIF                           R11 ; [+9]
       15 GETTABLE                         R11 R2 R10
       16 JUMPIFNOT                        R11 ; [+3]
       17 LOADB                            R11 1
       18 SETTABLE                         R11 R3 R10
       19 JUMP                             ; [+4]
       20 LOADB                            R11 1
       21 SETTABLE                         R11 R9 R10
       22 GETTABLE                         R10 R1 R10
       23 JUMPBACK                         ; [-13]
       24 FORGLOOP                         R4 1 ; [-17]
       26 RETURN                           R3 1

PROTO_4:
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

PROTO_5:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 MUL                              R7 R6 R6
        6 ADD                              R1 R1 R7
        7 FORGLOOP                         R2 2 ; [-3]
        9 RETURN                           R1 1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["targetTransforms"]
        2 GETTABLEKS                       R2 R0 K1 ["render"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["poseMap"]
        7 GETTABLEKS                       R4 R0 K3 ["initialPose"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R0 K4 ["limbRootNames"]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R6 R6 K5 ["FFlagAssistantAnimationGenSolveLimbRoots"]
       15 JUMPIF                           R6 ; [+3]
       16 GETTABLEKS                       R5 R0 K6 ["editedJointNames"]
       18 JUMP                             ; [+18]
       19 GETUPVAL                         R6 1
       20 GETTABLEKS                       R6 R6 K7 ["FFlagAssistantAnimationGenNewPosing"]
       22 JUMPIFNOT                        R6 ; [+10]
       23 JUMPIFEQKNIL                     R4 ; [+9]
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R6 R0 K6 ["editedJointNames"]
       28 GETTABLEKS                       R7 R0 K8 ["jointParents"]
       30 MOVE                             R8 R4
       31 CALL                             R5 3 1
       32 JUMP                             ; [+4]
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R6 R0 K6 ["editedJointNames"]
       36 CALL                             R5 1 1
       37 NEWTABLE                         R6 0 0
       39 NEWTABLE                         R7 0 0
       41 MOVE                             R8 R1
       42 LOADNIL                          R9
       43 LOADNIL                          R10
       44 FORGPREP                         R8
       45 GETUPVAL                         R13 4
       46 MOVE                             R14 R11
       47 MOVE                             R15 R5
       48 GETTABLEKS                       R16 R0 K8 ["jointParents"]
       50 CALL                             R13 3 1
       51 JUMPIFNOT                        R13 ; [+48]
       52 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
       54 MOVE                             R14 R6
       55 MOVE                             R15 R11
       56 GETIMPORT                        R13 K11 [table.insert]
       58 CALL                             R13 2 0
       59 GETTABLE                         R13 R3 R11
       60 JUMPIFEQKNIL                     R13 ; [+39]
       62 GETUPVAL                         R13 5
       63 LOADNIL                          R14
       64 LOADNIL                          R15
       65 FORGPREP                         R13
       66 DUPTABLE                         R20 K16 [{["poseName"], ["isTranslation"] = False, ["axis"]}]
       67 SETTABLEKS                       R11 R20 K12 ["poseName"]
       69 SETTABLEKS                       R17 R20 K15 ["axis"]
       71 FASTCALL2                        TABLE_INSERT R7 R20 ; [+4]
       73 MOVE                             R19 R7
       74 GETIMPORT                        R18 K11 [table.insert]
       76 CALL                             R18 2 0
       77 FORGLOOP                         R13 2 ; [-12]
       79 GETTABLEKS                       R14 R0 K17 ["translatedJointNames"]
       81 GETTABLE                         R13 R14 R11
       82 JUMPIFNOT                        R13 ; [+17]
       83 GETUPVAL                         R13 5
       84 LOADNIL                          R14
       85 LOADNIL                          R15
       86 FORGPREP                         R13
       87 DUPTABLE                         R20 K19 [{["poseName"], ["isTranslation"] = True, ["axis"]}]
       88 SETTABLEKS                       R11 R20 K12 ["poseName"]
       90 SETTABLEKS                       R17 R20 K15 ["axis"]
       92 FASTCALL2                        TABLE_INSERT R7 R20 ; [+4]
       94 MOVE                             R19 R7
       95 GETIMPORT                        R18 K11 [table.insert]
       97 CALL                             R18 2 0
       98 FORGLOOP                         R13 2 ; [-12]
      100 FORGLOOP                         R8 1 ; [-56]
      102 NEWCLOSURE                       R8 P0
      103 CAPTURE                          UPVAL U0
      104 CAPTURE                          VAL R7
      105 NEWCLOSURE                       R9 P1
      106 CAPTURE                          VAL R6
      107 CAPTURE                          VAL R1
      108 GETTABLEKS                       R10 R0 K3 ["initialPose"]
      110 NAMECALL                         R10 R10 K20 ["Clone"]
      112 CALL                             R10 1 1
      113 MOVE                             R11 R9
      114 MOVE                             R12 R2
      115 MOVE                             R13 R10
      116 CALL                             R12 1 -1
      117 CALL                             R11 -1 3
      118 LENGTH                           R14 R7
      119 LENGTH                           R15 R11
      120 LOADK                            R16 K21 [0.001]
      121 LOADN                            R19 1
      122 GETUPVAL                         R17 1
      123 GETTABLEKS                       R17 R17 K22 ["FIntAssistantAnimationGenSolveRetargetedPoseMaxIterations"]
      125 LOADN                            R18 1
      126 FORNPREP                         R17
      127 JUMPIFEQKN                       R14 K23 [0] ; [+163]
      129 LOADK                            R20 K24 [0.05]
      130 JUMPIFNOTLT                      R12 R20 ; [+4]
      132 LOADK                            R20 K21 [0.001]
      133 JUMPIFLT                         R13 R20 ; [+157]
      135 GETIMPORT                        R20 K26 [table.create]
      137 MOVE                             R21 R14
      138 CALL                             R20 1 1
      139 LOADN                            R23 1
      140 MOVE                             R21 R14
      141 LOADN                            R22 1
      142 FORNPREP                         R21
      143 GETIMPORT                        R24 K26 [table.create]
      145 MOVE                             R25 R14
      146 LOADN                            R26 0
      147 CALL                             R24 2 1
      148 LOADK                            R25 K21 [0.001]
      149 SETTABLE                         R25 R24 R23
      150 MOVE                             R25 R8
      151 MOVE                             R26 R10
      152 MOVE                             R27 R24
      153 CALL                             R25 2 1
      154 MOVE                             R26 R9
      155 MOVE                             R27 R2
      156 MOVE                             R28 R25
      157 CALL                             R27 1 -1
      158 CALL                             R26 -1 1
      159 NAMECALL                         R27 R25 K27 ["Destroy"]
      161 CALL                             R27 1 0
      162 GETIMPORT                        R27 K26 [table.create]
      164 MOVE                             R28 R15
      165 LOADN                            R29 0
      166 CALL                             R27 2 1
      167 LOADN                            R30 1
      168 MOVE                             R28 R15
      169 LOADN                            R29 1
      170 FORNPREP                         R28
      171 GETTABLE                         R33 R26 R30
      172 GETTABLE                         R34 R11 R30
      173 SUB                              R32 R33 R34
      174 DIVK                             R31 R32 K21 [0.001]
      175 SETTABLE                         R31 R27 R30
      176 FORNLOOP                         R28
      177 SETTABLE                         R27 R20 R23
      178 FORNLOOP                         R21
      179 GETIMPORT                        R21 K26 [table.create]
      181 MOVE                             R22 R14
      182 CALL                             R21 1 1
      183 GETIMPORT                        R22 K26 [table.create]
      185 MOVE                             R23 R14
      186 LOADN                            R24 0
      187 CALL                             R22 2 1
      188 LOADN                            R25 1
      189 MOVE                             R23 R14
      190 LOADN                            R24 1
      191 FORNPREP                         R23
      192 GETTABLE                         R26 R20 R25
      193 LOADN                            R27 0
      194 LOADN                            R30 1
      195 MOVE                             R28 R15
      196 LOADN                            R29 1
      197 FORNPREP                         R28
      198 GETTABLE                         R32 R26 R30
      199 GETTABLE                         R33 R11 R30
      200 MUL                              R31 R32 R33
      201 ADD                              R27 R27 R31
      202 FORNLOOP                         R28
      203 MINUS                            R28 R27
      204 SETTABLE                         R28 R22 R25
      205 GETIMPORT                        R28 K26 [table.create]
      207 MOVE                             R29 R14
      208 LOADN                            R30 0
      209 CALL                             R28 2 1
      210 LOADN                            R31 1
      211 MOVE                             R29 R14
      212 LOADN                            R30 1
      213 FORNPREP                         R29
      214 GETTABLE                         R32 R20 R31
      215 LOADN                            R33 0
      216 LOADN                            R36 1
      217 MOVE                             R34 R15
      218 LOADN                            R35 1
      219 FORNPREP                         R34
      220 GETTABLE                         R38 R26 R36
      221 GETTABLE                         R39 R32 R36
      222 MUL                              R37 R38 R39
      223 ADD                              R33 R33 R37
      224 FORNLOOP                         R34
      225 SETTABLE                         R33 R28 R31
      226 FORNLOOP                         R29
      227 SETTABLE                         R28 R21 R25
      228 FORNLOOP                         R23
      229 LOADB                            R23 0
      230 LOADN                            R26 1
      231 LOADN                            R24 6
      232 LOADN                            R25 1
      233 FORNPREP                         R24
      234 MOVE                             R27 R8
      235 MOVE                             R28 R10
      236 GETUPVAL                         R29 6
      237 MOVE                             R30 R21
      238 MOVE                             R31 R22
      239 MOVE                             R32 R16
      240 CALL                             R29 3 1
      241 CALL                             R27 2 1
      242 MOVE                             R28 R9
      243 MOVE                             R29 R2
      244 MOVE                             R30 R27
      245 CALL                             R29 1 -1
      246 CALL                             R28 -1 3
      247 LOADN                            R31 0
      248 MOVE                             R32 R28
      249 LOADNIL                          R33
      250 LOADNIL                          R34
      251 FORGPREP                         R32
      252 MUL                              R37 R36 R36
      253 ADD                              R31 R31 R37
      254 FORGLOOP                         R32 2 ; [-3]
      256 LOADN                            R32 0
      257 MOVE                             R34 R11
      258 LOADNIL                          R35
      259 LOADNIL                          R36
      260 FORGPREP                         R34
      261 MUL                              R39 R38 R38
      262 ADD                              R32 R32 R39
      263 FORGLOOP                         R34 2 ; [-3]
      265 JUMPIFNOTLT                      R31 R32 ; [+18]
      267 NAMECALL                         R31 R10 K27 ["Destroy"]
      269 CALL                             R31 1 0
      270 MOVE                             R10 R27
      271 MOVE                             R11 R28
      272 MOVE                             R12 R29
      273 MOVE                             R13 R30
      274 DIVK                             R32 R16 K28 [10]
      275 FASTCALL2K                       MATH_MAX R32 K29 ; [+4]
      277 LOADK                            R33 K29 [1E-07]
      278 GETIMPORT                        R31 K32 [math.max]
      280 CALL                             R31 2 1
      281 MOVE                             R16 R31
      282 LOADB                            R23 1
      283 JUMP                             ; [+5]
      284 NAMECALL                         R31 R27 K27 ["Destroy"]
      286 CALL                             R31 1 0
      287 MULK                             R16 R16 K28 [10]
      288 FORNLOOP                         R24
      289 JUMPIFNOT                        R23 ; [+1]
      290 FORNLOOP                         R17
      291 RETURN                           R10 1

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
       15 GETTABLEKS                       R2 R2 K9 ["DEPRECATED_DragEditSnapshot"]
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
       46 DUPCLOSURE                       R10 K28 [PROTO_4]
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R1
       49 DUPCLOSURE                       R11 K29 [PROTO_5]
       50 DUPCLOSURE                       R12 K30 [PROTO_6]
       51 DUPCLOSURE                       R13 K31 [PROTO_9]
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R8
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R12
       59 RETURN                           R13 1
