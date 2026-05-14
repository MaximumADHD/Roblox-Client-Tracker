PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
        8 MOVE                             R9 R2
        9 MOVE                             R10 R7
       10 GETIMPORT                        R8 K2 [table.insert]
       12 CALL                             R8 2 0
       13 FORGLOOP                         R3 2 ; [-8]
       15 LENGTH                           R3 R2
       16 LOADN                            R4 0
       17 JUMPIFNOTLT                      R4 R3 ; [+27]
       19 GETIMPORT                        R3 K4 [table.remove]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 JUMPIFNOT                        R3 ; [+5]
       24 GETTABLEKS                       R4 R3 K5 ["joint"]
       26 JUMPIFNOTEQ                      R4 R1 ; [+2]
       28 RETURN                           R3 1
       29 JUMPIFNOT                        R3 ; [+14]
       30 GETTABLEKS                       R4 R3 K6 ["children"]
       32 LOADNIL                          R5
       33 LOADNIL                          R6
       34 FORGPREP                         R4
       35 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       37 MOVE                             R10 R2
       38 MOVE                             R11 R8
       39 GETIMPORT                        R9 K2 [table.insert]
       41 CALL                             R9 2 0
       42 FORGLOOP                         R4 2 ; [-8]
       44 JUMPBACK                         ; [-30]
       45 LOADNIL                          R3
       46 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+3]
        5 NEWTABLE                         R3 0 0
        7 RETURN                           R3 1
        8 NEWTABLE                         R3 0 0
       10 GETTABLEKS                       R4 R2 K0 ["children"]
       12 LOADNIL                          R5
       13 LOADNIL                          R6
       14 FORGPREP                         R4
       15 GETTABLEKS                       R11 R8 K1 ["joint"]
       17 GETTABLEKS                       R11 R11 K2 ["Name"]
       19 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       21 MOVE                             R10 R3
       22 GETIMPORT                        R9 K5 [table.insert]
       24 CALL                             R9 2 0
       25 FORGLOOP                         R4 2 ; [-11]
       27 RETURN                           R3 1

PROTO_2:
        0 LOADNIL                          R1
        1 LOADK                            R2 K0 [∞]
        2 MOVE                             R3 R0
        3 LOADNIL                          R4
        4 LOADNIL                          R5
        5 FORGPREP                         R3
        6 JUMPIFNOTLT                      R7 R2 ; [+3]
        8 MOVE                             R1 R6
        9 MOVE                             R2 R7
       10 FORGLOOP                         R3 2 ; [-5]
       12 RETURN                           R1 1

PROTO_3:
        0 JUMPIFNOT                        R3 ; [+10]
        1 MOVE                             R4 R0
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 JUMPIFEQ                         R7 R1 ; [+3]
        7 LOADNIL                          R9
        8 SETTABLE                         R9 R0 R7
        9 FORGLOOP                         R4 2 ; [-5]
       11 SETTABLE                         R2 R0 R1
       12 RETURN                           R0 0

PROTO_4:
        0 JUMPIFNOT                        R1 ; [+11]
        1 GETTABLEKS                       R3 R0 K0 ["X"]
        3 GETTABLEKS                       R4 R0 K1 ["Y"]
        5 GETTABLEKS                       R5 R0 K2 ["Z"]
        7 FASTCALL                         MATH_MAX ; [+2]
        8 GETIMPORT                        R2 K5 [math.max]
       10 CALL                             R2 3 1
       11 JUMP                             ; [+2]
       12 GETTABLEKS                       R2 R0 K1 ["Y"]
       14 LOADN                            R3 0
       15 JUMPIFNOTLT                      R3 R2 ; [+20]
       17 JUMPIFNOT                        R1 ; [+9]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R4 R4 K6 ["RADIUS_SCALE"]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K7 ["RADIUS_REFERENCE_HEIGHT"]
       24 DIV                              R5 R2 R6
       25 MUL                              R3 R4 R5
       26 RETURN                           R3 1
       27 DIVK                             R5 R2 K9 [6]
       28 MULK                             R4 R5 K8 [0.1]
       29 LOADK                            R5 K10 [0.05]
       30 LOADN                            R6 2
       31 FASTCALL                         MATH_CLAMP ; [+2]
       32 GETIMPORT                        R3 K12 [math.clamp]
       34 CALL                             R3 3 1
       35 RETURN                           R3 1
       36 GETUPVAL                         R3 0
       37 GETTABLEKS                       R3 R3 K6 ["RADIUS_SCALE"]
       39 RETURN                           R3 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 MOVE                             R4 R0
        5 LOADNIL                          R5
        6 LOADNIL                          R6
        7 FORGPREP                         R4
        8 JUMPIFNOT                        R8 ; [+12]
        9 DUPTABLE                         R11 K2 [{"node", "parentJoint"}]
       10 SETTABLEKS                       R8 R11 K0 ["node"]
       12 LOADNIL                          R12
       13 SETTABLEKS                       R12 R11 K1 ["parentJoint"]
       15 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       17 MOVE                             R10 R3
       18 GETIMPORT                        R9 K5 [table.insert]
       20 CALL                             R9 2 0
       21 FORGLOOP                         R4 2 ; [-14]
       23 LENGTH                           R4 R3
       24 LOADN                            R5 0
       25 JUMPIFNOTLT                      R5 R4 ; [+59]
       27 GETIMPORT                        R4 K7 [table.remove]
       29 MOVE                             R5 R3
       30 CALL                             R4 1 1
       31 JUMPIFNOT                        R4 ; [+52]
       32 GETTABLEKS                       R5 R4 K0 ["node"]
       34 JUMPIFNOT                        R5 ; [+49]
       35 GETTABLEKS                       R6 R5 K8 ["joint"]
       37 GETTABLEKS                       R7 R4 K1 ["parentJoint"]
       39 GETTABLE                         R8 R1 R6
       40 NEWTABLE                         R9 0 0
       42 GETTABLEKS                       R10 R5 K9 ["children"]
       44 LOADNIL                          R11
       45 LOADNIL                          R12
       46 FORGPREP                         R10
       47 JUMPIFNOT                        R14 ; [+19]
       48 GETTABLEKS                       R17 R14 K8 ["joint"]
       50 FASTCALL2                        TABLE_INSERT R9 R17 ; [+4]
       52 MOVE                             R16 R9
       53 GETIMPORT                        R15 K5 [table.insert]
       55 CALL                             R15 2 0
       56 DUPTABLE                         R17 K2 [{"node", "parentJoint"}]
       57 SETTABLEKS                       R14 R17 K0 ["node"]
       59 SETTABLEKS                       R6 R17 K1 ["parentJoint"]
       61 FASTCALL2                        TABLE_INSERT R3 R17 ; [+4]
       63 MOVE                             R16 R3
       64 GETIMPORT                        R15 K5 [table.insert]
       66 CALL                             R15 2 0
       67 FORGLOOP                         R10 2 ; [-21]
       69 DUPTABLE                         R12 K13 [{"jointInstance", "parentJoint", "label", "childJoints"}]
       70 SETTABLEKS                       R6 R12 K10 ["jointInstance"]
       72 SETTABLEKS                       R7 R12 K1 ["parentJoint"]
       74 SETTABLEKS                       R8 R12 K11 ["label"]
       76 SETTABLEKS                       R9 R12 K12 ["childJoints"]
       78 FASTCALL2                        TABLE_INSERT R2 R12 ; [+4]
       80 MOVE                             R11 R2
       81 GETIMPORT                        R10 K5 [table.insert]
       83 CALL                             R10 2 0
       84 JUMPBACK                         ; [-62]
       85 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 MOVE                             R2 R0
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 GETUPVAL                         R0 1
        6 CALL                             R0 0 1
        7 JUMPIFNOT                        R0 ; [+14]
        8 GETUPVAL                         R0 2
        9 GETTABLEKS                       R0 R0 K0 ["current"]
       11 JUMPIFNOT                        R0 ; [+10]
       12 GETIMPORT                        R0 K3 [task.cancel]
       14 GETUPVAL                         R1 2
       15 GETTABLEKS                       R1 R1 K0 ["current"]
       17 CALL                             R0 1 0
       18 GETUPVAL                         R0 2
       19 LOADNIL                          R1
       20 SETTABLEKS                       R1 R0 K0 ["current"]
       22 GETUPVAL                         R0 3
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K0 ["current"]
       26 GETUPVAL                         R0 4
       27 LOADNIL                          R1
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["current"]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K0 ["current"]
        7 LOADNIL                          R2
        8 LOADK                            R3 K1 [∞]
        9 MOVE                             R4 R1
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 JUMPIFNOTLT                      R8 R3 ; [+3]
       15 MOVE                             R2 R7
       16 MOVE                             R3 R8
       17 FORGLOOP                         R4 2 ; [-5]
       19 MOVE                             R0 R2
       20 JUMPIFNOTEQKNIL                  R0 ; [+8]
       22 GETUPVAL                         R0 2
       23 LOADNIL                          R1
       24 SETTABLEKS                       R1 R0 K0 ["current"]
       26 GETUPVAL                         R0 3
       27 LOADNIL                          R1
       28 CALL                             R0 1 0
       29 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADNIL                          R2
        4 LOADK                            R3 K1 [∞]
        5 MOVE                             R4 R1
        6 LOADNIL                          R5
        7 LOADNIL                          R6
        8 FORGPREP                         R4
        9 JUMPIFNOTLT                      R8 R3 ; [+3]
       11 MOVE                             R2 R7
       12 MOVE                             R3 R8
       13 FORGLOOP                         R4 2 ; [-5]
       15 MOVE                             R0 R2
       16 GETUPVAL                         R1 1
       17 CALL                             R1 0 1
       18 JUMPIF                           R1 ; [+7]
       19 GETUPVAL                         R1 2
       20 SETTABLEKS                       R0 R1 K0 ["current"]
       22 GETUPVAL                         R1 3
       23 MOVE                             R2 R0
       24 CALL                             R1 1 0
       25 RETURN                           R0 0
       26 JUMPIFEQKNIL                     R0 ; [+22]
       28 GETUPVAL                         R1 4
       29 GETTABLEKS                       R1 R1 K0 ["current"]
       31 JUMPIFNOT                        R1 ; [+10]
       32 GETIMPORT                        R1 K4 [task.cancel]
       34 GETUPVAL                         R2 4
       35 GETTABLEKS                       R2 R2 K0 ["current"]
       37 CALL                             R1 1 0
       38 GETUPVAL                         R1 4
       39 LOADNIL                          R2
       40 SETTABLEKS                       R2 R1 K0 ["current"]
       42 GETUPVAL                         R1 2
       43 SETTABLEKS                       R0 R1 K0 ["current"]
       45 GETUPVAL                         R1 3
       46 MOVE                             R2 R0
       47 CALL                             R1 1 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R1 4
       50 GETIMPORT                        R2 K6 [task.defer]
       52 NEWCLOSURE                       R3 P0
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          UPVAL U0
       55 CAPTURE                          UPVAL U2
       56 CAPTURE                          UPVAL U3
       57 CALL                             R2 1 1
       58 SETTABLEKS                       R2 R1 K0 ["current"]
       60 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onHoveredJointChanged"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onHoveredJointChanged"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 CALL                             R3 0 1
        5 JUMPIFNOT                        R3 ; [+10]
        6 MOVE                             R4 R2
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 JUMPIFEQ                         R7 R0 ; [+3]
       12 LOADNIL                          R9
       13 SETTABLE                         R9 R2 R7
       14 FORGLOOP                         R4 2 ; [-5]
       16 SETTABLE                         R1 R2 R0
       17 GETUPVAL                         R2 2
       18 CALL                             R2 0 0
       19 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+47]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["GetBoundingBox"]
        5 CALL                             R0 1 2
        6 GETUPVAL                         R3 1
        7 CALL                             R3 0 1
        8 JUMPIFNOT                        R3 ; [+11]
        9 GETTABLEKS                       R5 R1 K1 ["X"]
       11 GETTABLEKS                       R6 R1 K2 ["Y"]
       13 GETTABLEKS                       R7 R1 K3 ["Z"]
       15 FASTCALL                         MATH_MAX ; [+2]
       16 GETIMPORT                        R4 K6 [math.max]
       18 CALL                             R4 3 1
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R4 R1 K2 ["Y"]
       22 LOADN                            R5 0
       23 JUMPIFNOTLT                      R5 R4 ; [+21]
       25 JUMPIFNOT                        R3 ; [+9]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K7 ["RADIUS_SCALE"]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K8 ["RADIUS_REFERENCE_HEIGHT"]
       32 DIV                              R6 R4 R7
       33 MUL                              R2 R5 R6
       34 RETURN                           R2 1
       35 DIVK                             R7 R4 K10 [6]
       36 MULK                             R6 R7 K9 [0.1]
       37 LOADK                            R7 K11 [0.05]
       38 LOADN                            R8 2
       39 FASTCALL                         MATH_CLAMP ; [+2]
       40 GETIMPORT                        R5 K13 [math.clamp]
       42 CALL                             R5 3 1
       43 MOVE                             R2 R5
       44 RETURN                           R2 1
       45 GETUPVAL                         R2 2
       46 GETTABLEKS                       R2 R2 K7 ["RADIUS_SCALE"]
       48 RETURN                           R2 1
       49 GETUPVAL                         R0 2
       50 GETTABLEKS                       R0 R0 K7 ["RADIUS_SCALE"]
       52 RETURN                           R0 1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onJointClicked"]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 JUMPIFNOT                        R1 ; [+16]
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R1 R1 K1 ["current"]
       11 JUMPIFNOT                        R1 ; [+5]
       12 GETUPVAL                         R3 3
       13 GETTABLEKS                       R3 R3 K1 ["current"]
       15 GETTABLE                         R2 R3 R1
       16 JUMP                             ; [+1]
       17 LOADNIL                          R2
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K0 ["onJointClicked"]
       21 OR                               R4 R2 R0
       22 CALL                             R3 1 0
       23 RETURN                           R0 0
       24 GETUPVAL                         R1 0
       25 GETTABLEKS                       R1 R1 K0 ["onJointClicked"]
       27 MOVE                             R2 R0
       28 CALL                             R1 1 0
       29 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["rigModel"]
        2 GETTABLEKS                       R2 R0 K1 ["rigDescriptor"]
        4 GETTABLEKS                       R3 R0 K2 ["selectedJointInstance"]
        6 GETUPVAL                         R4 0
        7 MOVE                             R5 R1
        8 CALL                             R4 1 1
        9 GETUPVAL                         R5 1
       10 MOVE                             R6 R2
       11 GETTABLEKS                       R7 R0 K3 ["overrideLabels"]
       13 CALL                             R5 2 1
       14 GETTABLEKS                       R6 R5 K4 ["mapped"]
       16 GETTABLEKS                       R7 R5 K5 ["labelMap"]
       18 GETTABLEKS                       R8 R5 K6 ["otherMapped"]
       20 GETUPVAL                         R9 2
       21 CALL                             R9 0 1
       22 JUMPIFNOT                        R9 ; [+3]
       23 GETUPVAL                         R9 3
       24 MOVE                             R10 R1
       25 CALL                             R9 1 0
       26 NEWTABLE                         R9 0 0
       28 GETUPVAL                         R10 4
       29 GETTABLEKS                       R10 R10 K7 ["useRef"]
       31 NEWTABLE                         R11 0 0
       33 CALL                             R10 1 1
       34 GETUPVAL                         R11 4
       35 GETTABLEKS                       R11 R11 K7 ["useRef"]
       37 LOADNIL                          R12
       38 CALL                             R11 1 1
       39 GETUPVAL                         R12 4
       40 GETTABLEKS                       R12 R12 K7 ["useRef"]
       42 LOADNIL                          R13
       43 CALL                             R12 1 1
       44 GETUPVAL                         R13 4
       45 GETTABLEKS                       R13 R13 K7 ["useRef"]
       47 NEWTABLE                         R14 0 0
       49 CALL                             R13 1 1
       50 GETUPVAL                         R14 4
       51 GETTABLEKS                       R14 R14 K8 ["useState"]
       53 LOADNIL                          R15
       54 CALL                             R14 1 2
       55 NEWCLOSURE                       R16 P0
       56 CAPTURE                          VAL R12
       57 CAPTURE                          VAL R15
       58 GETUPVAL                         R17 4
       59 GETTABLEKS                       R17 R17 K9 ["useEffect"]
       61 NEWCLOSURE                       R18 P1
       62 CAPTURE                          VAL R10
       63 CAPTURE                          UPVAL U5
       64 CAPTURE                          VAL R11
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R15
       67 NEWTABLE                         R19 0 2
       69 MOVE                             R20 R1
       70 MOVE                             R21 R2
       71 SETLIST                          R19 R20 2 [1]
       73 CALL                             R17 2 0
       74 GETUPVAL                         R17 4
       75 GETTABLEKS                       R17 R17 K10 ["useCallback"]
       77 NEWCLOSURE                       R18 P2
       78 CAPTURE                          VAL R10
       79 CAPTURE                          UPVAL U5
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R15
       82 CAPTURE                          VAL R11
       83 NEWTABLE                         R19 0 0
       85 CALL                             R17 2 1
       86 GETUPVAL                         R18 4
       87 GETTABLEKS                       R18 R18 K9 ["useEffect"]
       89 NEWCLOSURE                       R19 P3
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R14
       92 NEWTABLE                         R20 0 2
       94 MOVE                             R21 R14
       95 GETTABLEKS                       R22 R0 K11 ["onHoveredJointChanged"]
       97 SETLIST                          R20 R21 2 [1]
       99 CALL                             R18 2 0
      100 GETUPVAL                         R18 4
      101 GETTABLEKS                       R18 R18 K10 ["useCallback"]
      103 NEWCLOSURE                       R19 P4
      104 CAPTURE                          VAL R10
      105 CAPTURE                          UPVAL U2
      106 CAPTURE                          VAL R17
      107 NEWTABLE                         R20 0 1
      109 MOVE                             R21 R17
      110 SETLIST                          R20 R21 1 [1]
      112 CALL                             R18 2 1
      113 GETUPVAL                         R19 4
      114 GETTABLEKS                       R19 R19 K10 ["useCallback"]
      116 NEWCLOSURE                       R20 P5
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R17
      119 NEWTABLE                         R21 0 1
      121 MOVE                             R22 R17
      122 SETLIST                          R21 R22 1 [1]
      124 CALL                             R19 2 1
      125 GETUPVAL                         R20 4
      126 GETTABLEKS                       R20 R20 K12 ["useMemo"]
      128 NEWCLOSURE                       R21 P6
      129 CAPTURE                          VAL R1
      130 CAPTURE                          UPVAL U2
      131 CAPTURE                          UPVAL U6
      132 NEWTABLE                         R22 0 1
      134 MOVE                             R23 R1
      135 SETLIST                          R22 R23 1 [1]
      137 CALL                             R20 2 1
      138 GETUPVAL                         R21 4
      139 GETTABLEKS                       R21 R21 K10 ["useCallback"]
      141 NEWCLOSURE                       R22 P7
      142 CAPTURE                          VAL R0
      143 CAPTURE                          UPVAL U5
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R13
      146 NEWTABLE                         R23 0 1
      148 GETTABLEKS                       R24 R0 K13 ["onJointClicked"]
      150 SETLIST                          R23 R24 1 [1]
      152 CALL                             R21 2 1
      153 GETUPVAL                         R22 7
      154 MOVE                             R23 R4
      155 MOVE                             R24 R7
      156 CALL                             R22 2 1
      157 GETUPVAL                         R23 5
      158 CALL                             R23 0 1
      159 JUMPIFNOT                        R23 ; [+19]
      160 NEWTABLE                         R23 0 0
      162 SETTABLEKS                       R23 R13 K14 ["current"]
      164 MOVE                             R23 R22
      165 LOADNIL                          R24
      166 LOADNIL                          R25
      167 FORGPREP                         R23
      168 GETTABLEKS                       R28 R13 K14 ["current"]
      170 GETTABLEKS                       R29 R27 K15 ["jointInstance"]
      172 GETTABLEKS                       R29 R29 K16 ["Name"]
      174 GETTABLEKS                       R30 R27 K15 ["jointInstance"]
      176 SETTABLE                         R30 R28 R29
      177 FORGLOOP                         R23 2 ; [-10]
      179 MOVE                             R23 R22
      180 LOADNIL                          R24
      181 LOADNIL                          R25
      182 FORGPREP                         R23
      183 GETUPVAL                         R28 4
      184 GETTABLEKS                       R28 R28 K17 ["createElement"]
      186 GETUPVAL                         R29 8
      187 DUPTABLE                         R30 K32 [{"jointInstance", "parentJoint", "DEPRECATED_jointLabel", "mappedLookup", "otherMappedLookup", "childJoints", "DEPRECATED_rigDescriptor", "selectedJointInstance", "onJointClicked", "standardRadius", "DEPRECATED_applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation", "globalHoveredJointName", "mannequinHoveredJointName", "onJointHoverEnter", "onJointHoverLeave"}]
      188 GETTABLEKS                       R31 R27 K15 ["jointInstance"]
      190 SETTABLEKS                       R31 R30 K15 ["jointInstance"]
      192 GETTABLEKS                       R31 R27 K18 ["parentJoint"]
      194 SETTABLEKS                       R31 R30 K18 ["parentJoint"]
      196 GETTABLEKS                       R31 R27 K33 ["label"]
      198 SETTABLEKS                       R31 R30 K19 ["DEPRECATED_jointLabel"]
      200 SETTABLEKS                       R6 R30 K20 ["mappedLookup"]
      202 SETTABLEKS                       R8 R30 K21 ["otherMappedLookup"]
      204 GETTABLEKS                       R31 R27 K22 ["childJoints"]
      206 SETTABLEKS                       R31 R30 K22 ["childJoints"]
      208 SETTABLEKS                       R2 R30 K23 ["DEPRECATED_rigDescriptor"]
      210 SETTABLEKS                       R3 R30 K2 ["selectedJointInstance"]
      212 GETUPVAL                         R32 5
      213 CALL                             R32 0 1
      214 JUMPIFNOT                        R32 ; [+2]
      215 MOVE                             R31 R21
      216 JUMP                             ; [+2]
      217 GETTABLEKS                       R31 R0 K13 ["onJointClicked"]
      219 SETTABLEKS                       R31 R30 K13 ["onJointClicked"]
      221 SETTABLEKS                       R20 R30 K24 ["standardRadius"]
      223 GETTABLEKS                       R31 R0 K34 ["applyTposeAdjustment"]
      225 SETTABLEKS                       R31 R30 K25 ["DEPRECATED_applyTposeAdjustment"]
      227 GETTABLEKS                       R31 R0 K26 ["updatePositions"]
      229 SETTABLEKS                       R31 R30 K26 ["updatePositions"]
      231 GETTABLEKS                       R31 R0 K27 ["DEPRECATED_isPlayingAnimation"]
      233 SETTABLEKS                       R31 R30 K27 ["DEPRECATED_isPlayingAnimation"]
      235 SETTABLEKS                       R14 R30 K28 ["globalHoveredJointName"]
      237 GETTABLEKS                       R31 R0 K29 ["mannequinHoveredJointName"]
      239 SETTABLEKS                       R31 R30 K29 ["mannequinHoveredJointName"]
      241 SETTABLEKS                       R18 R30 K30 ["onJointHoverEnter"]
      243 SETTABLEKS                       R19 R30 K31 ["onJointHoverLeave"]
      245 CALL                             R28 2 1
      246 FASTCALL2                        TABLE_INSERT R9 R28 ; [+5]
      248 MOVE                             R30 R9
      249 MOVE                             R31 R28
      250 GETIMPORT                        R29 K37 [table.insert]
      252 CALL                             R29 2 0
      253 FORGLOOP                         R23 2 ; [-71]
      255 GETUPVAL                         R23 4
      256 GETTABLEKS                       R23 R23 K17 ["createElement"]
      258 LOADK                            R24 K38 ["Folder"]
      259 LOADNIL                          R25
      260 MOVE                             R26 R9
      261 CALL                             R23 3 -1
      262 RETURN                           R23 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["Hooks"]
       22 GETTABLEKS                       R3 R3 K11 ["useRig"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Components"]
       31 GETTABLEKS                       R4 R4 K12 ["Adornments"]
       33 GETTABLEKS                       R4 R4 K13 ["JointAdornmentComposite"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R3 K14 ["Component"]
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R0 K8 ["Src"]
       42 GETTABLEKS                       R6 R6 K9 ["Components"]
       44 GETTABLEKS                       R6 R6 K10 ["Hooks"]
       46 GETTABLEKS                       R6 R6 K15 ["useMappedInstances"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R7 R0 K8 ["Src"]
       53 GETTABLEKS                       R7 R7 K16 ["Types"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R8 R0 K8 ["Src"]
       60 GETTABLEKS                       R8 R8 K17 ["Resources"]
       62 GETTABLEKS                       R8 R8 K18 ["Constants"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K5 [require]
       67 GETTABLEKS                       R9 R0 K8 ["Src"]
       69 GETTABLEKS                       R9 R9 K9 ["Components"]
       71 GETTABLEKS                       R9 R9 K10 ["Hooks"]
       73 GETTABLEKS                       R9 R9 K19 ["useModelTransparency"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R10 R0 K8 ["Src"]
       80 GETTABLEKS                       R10 R10 K20 ["Flags"]
       82 GETTABLEKS                       R10 R10 K21 ["getFFlagAdaptiveAnimationQoL"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K5 [require]
       87 GETTABLEKS                       R11 R0 K8 ["Src"]
       89 GETTABLEKS                       R11 R11 K20 ["Flags"]
       91 GETTABLEKS                       R11 R11 K22 ["getFFlagAdaptiveAnimationHoverFix"]
       93 CALL                             R10 1 1
       94 DUPCLOSURE                       R11 K23 [PROTO_0]
       95 DUPCLOSURE                       R12 K24 [PROTO_1]
       96 CAPTURE                          VAL R11
       97 DUPCLOSURE                       R13 K25 [PROTO_2]
       98 DUPCLOSURE                       R14 K26 [PROTO_3]
       99 DUPCLOSURE                       R15 K27 [PROTO_4]
      100 CAPTURE                          VAL R7
      101 DUPCLOSURE                       R16 K28 [PROTO_5]
      102 DUPCLOSURE                       R17 K29 [PROTO_15]
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R5
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R16
      111 CAPTURE                          VAL R4
      112 DUPTABLE                         R18 K33 [{"JointAdornments", "getChildJointNames", "_test"}]
      113 SETTABLEKS                       R17 R18 K30 ["JointAdornments"]
      115 SETTABLEKS                       R12 R18 K31 ["getChildJointNames"]
      117 DUPTABLE                         R19 K39 [{"findNodeByJoint", "findClosestJoint", "processHoverEnter", "calculateStandardRadius", "buildCompositeEntries"}]
      118 SETTABLEKS                       R11 R19 K34 ["findNodeByJoint"]
      120 SETTABLEKS                       R13 R19 K35 ["findClosestJoint"]
      122 SETTABLEKS                       R14 R19 K36 ["processHoverEnter"]
      124 SETTABLEKS                       R15 R19 K37 ["calculateStandardRadius"]
      126 SETTABLEKS                       R16 R19 K38 ["buildCompositeEntries"]
      128 SETTABLEKS                       R19 R18 K32 ["_test"]
      130 RETURN                           R18 1
