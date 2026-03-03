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
       15 GETTABLEKS                       R12 R8 K1 ["joint"]
       17 GETTABLEKS                       R11 R12 K2 ["Name"]
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
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R4 R5 K6 ["RADIUS_SCALE"]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K7 ["RADIUS_REFERENCE_HEIGHT"]
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
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R3 R4 K6 ["RADIUS_SCALE"]
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
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["current"]
        5 GETUPVAL                         R0 1
        6 LOADNIL                          R1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
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
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onHoveredJointChanged"]
        3 JUMPIFNOT                        R0 ; [+5]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["onHoveredJointChanged"]
        7 GETUPVAL                         R1 1
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
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

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["current"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_11:
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
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R5 R6 K7 ["RADIUS_SCALE"]
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R7 R8 K8 ["RADIUS_REFERENCE_HEIGHT"]
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
       45 GETUPVAL                         R5 2
       46 GETTABLEKS                       R2 R5 K7 ["RADIUS_SCALE"]
       48 RETURN                           R2 1
       49 GETUPVAL                         R1 2
       50 GETTABLEKS                       R0 R1 K7 ["RADIUS_SCALE"]
       52 RETURN                           R0 1

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["rigModel"]
        2 GETTABLEKS                       R2 R0 K1 ["rigDescriptor"]
        4 GETTABLEKS                       R3 R0 K2 ["selectedJointInstance"]
        6 GETTABLEKS                       R4 R0 K3 ["onJointClicked"]
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R1
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 1
       12 MOVE                             R7 R2
       13 GETTABLEKS                       R8 R0 K4 ["overrideLabels"]
       15 CALL                             R6 2 1
       16 GETTABLEKS                       R7 R6 K5 ["mapped"]
       18 GETTABLEKS                       R8 R6 K6 ["labelMap"]
       20 GETTABLEKS                       R9 R6 K7 ["otherMapped"]
       22 GETUPVAL                         R10 2
       23 CALL                             R10 0 1
       24 JUMPIFNOT                        R10 ; [+3]
       25 GETUPVAL                         R10 3
       26 MOVE                             R11 R1
       27 CALL                             R10 1 0
       28 NEWTABLE                         R10 0 0
       30 GETUPVAL                         R12 4
       31 GETTABLEKS                       R11 R12 K8 ["useRef"]
       33 NEWTABLE                         R12 0 0
       35 CALL                             R11 1 1
       36 GETUPVAL                         R13 4
       37 GETTABLEKS                       R12 R13 K9 ["useState"]
       39 LOADNIL                          R13
       40 CALL                             R12 1 2
       41 GETUPVAL                         R15 4
       42 GETTABLEKS                       R14 R15 K10 ["useEffect"]
       44 NEWCLOSURE                       R15 P0
       45 CAPTURE                          VAL R11
       46 CAPTURE                          VAL R13
       47 NEWTABLE                         R16 0 2
       49 MOVE                             R17 R1
       50 MOVE                             R18 R2
       51 SETLIST                          R16 R17 2 [1]
       53 CALL                             R14 2 0
       54 GETUPVAL                         R15 4
       55 GETTABLEKS                       R14 R15 K11 ["useCallback"]
       57 NEWCLOSURE                       R15 P1
       58 CAPTURE                          VAL R11
       59 CAPTURE                          VAL R13
       60 NEWTABLE                         R16 0 0
       62 CALL                             R14 2 1
       63 GETUPVAL                         R16 4
       64 GETTABLEKS                       R15 R16 K10 ["useEffect"]
       66 NEWCLOSURE                       R16 P2
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R12
       69 NEWTABLE                         R17 0 2
       71 MOVE                             R18 R12
       72 GETTABLEKS                       R19 R0 K12 ["onHoveredJointChanged"]
       74 SETLIST                          R17 R18 2 [1]
       76 CALL                             R15 2 0
       77 GETUPVAL                         R16 4
       78 GETTABLEKS                       R15 R16 K11 ["useCallback"]
       80 NEWCLOSURE                       R16 P3
       81 CAPTURE                          VAL R11
       82 CAPTURE                          UPVAL U2
       83 CAPTURE                          VAL R14
       84 NEWTABLE                         R17 0 1
       86 MOVE                             R18 R14
       87 SETLIST                          R17 R18 1 [1]
       89 CALL                             R15 2 1
       90 GETUPVAL                         R17 4
       91 GETTABLEKS                       R16 R17 K11 ["useCallback"]
       93 NEWCLOSURE                       R17 P4
       94 CAPTURE                          VAL R11
       95 CAPTURE                          VAL R14
       96 NEWTABLE                         R18 0 1
       98 MOVE                             R19 R14
       99 SETLIST                          R18 R19 1 [1]
      101 CALL                             R16 2 1
      102 GETUPVAL                         R18 4
      103 GETTABLEKS                       R17 R18 K13 ["useMemo"]
      105 NEWCLOSURE                       R18 P5
      106 CAPTURE                          VAL R1
      107 CAPTURE                          UPVAL U2
      108 CAPTURE                          UPVAL U5
      109 NEWTABLE                         R19 0 1
      111 MOVE                             R20 R1
      112 SETLIST                          R19 R20 1 [1]
      114 CALL                             R17 2 1
      115 GETUPVAL                         R18 6
      116 MOVE                             R19 R5
      117 MOVE                             R20 R8
      118 CALL                             R18 2 1
      119 MOVE                             R19 R18
      120 LOADNIL                          R20
      121 LOADNIL                          R21
      122 FORGPREP                         R19
      123 GETUPVAL                         R25 4
      124 GETTABLEKS                       R24 R25 K14 ["createElement"]
      126 GETUPVAL                         R25 7
      127 DUPTABLE                         R26 K30 [{"jointInstance", "parentJoint", "DEPRECATED_jointLabel", "mappedLookup", "otherMappedLookup", "childJoints", "DEPRECATED_rigDescriptor", "selectedJointInstance", "onJointClicked", "standardRadius", "DEPRECATED_applyTposeAdjustment", "updatePositions", "DEPRECATED_isPlayingAnimation", "globalHoveredJointName", "mannequinHoveredJointName", "onJointHoverEnter", "onJointHoverLeave"}]
      128 GETTABLEKS                       R27 R23 K15 ["jointInstance"]
      130 SETTABLEKS                       R27 R26 K15 ["jointInstance"]
      132 GETTABLEKS                       R27 R23 K16 ["parentJoint"]
      134 SETTABLEKS                       R27 R26 K16 ["parentJoint"]
      136 GETTABLEKS                       R27 R23 K31 ["label"]
      138 SETTABLEKS                       R27 R26 K17 ["DEPRECATED_jointLabel"]
      140 SETTABLEKS                       R7 R26 K18 ["mappedLookup"]
      142 SETTABLEKS                       R9 R26 K19 ["otherMappedLookup"]
      144 GETTABLEKS                       R27 R23 K20 ["childJoints"]
      146 SETTABLEKS                       R27 R26 K20 ["childJoints"]
      148 SETTABLEKS                       R2 R26 K21 ["DEPRECATED_rigDescriptor"]
      150 SETTABLEKS                       R3 R26 K2 ["selectedJointInstance"]
      152 SETTABLEKS                       R4 R26 K3 ["onJointClicked"]
      154 SETTABLEKS                       R17 R26 K22 ["standardRadius"]
      156 GETTABLEKS                       R27 R0 K32 ["applyTposeAdjustment"]
      158 SETTABLEKS                       R27 R26 K23 ["DEPRECATED_applyTposeAdjustment"]
      160 GETTABLEKS                       R27 R0 K24 ["updatePositions"]
      162 SETTABLEKS                       R27 R26 K24 ["updatePositions"]
      164 GETTABLEKS                       R27 R0 K25 ["DEPRECATED_isPlayingAnimation"]
      166 SETTABLEKS                       R27 R26 K25 ["DEPRECATED_isPlayingAnimation"]
      168 SETTABLEKS                       R12 R26 K26 ["globalHoveredJointName"]
      170 GETTABLEKS                       R27 R0 K27 ["mannequinHoveredJointName"]
      172 SETTABLEKS                       R27 R26 K27 ["mannequinHoveredJointName"]
      174 SETTABLEKS                       R15 R26 K28 ["onJointHoverEnter"]
      176 SETTABLEKS                       R16 R26 K29 ["onJointHoverLeave"]
      178 CALL                             R24 2 1
      179 FASTCALL2                        TABLE_INSERT R10 R24 ; [+5]
      181 MOVE                             R26 R10
      182 MOVE                             R27 R24
      183 GETIMPORT                        R25 K35 [table.insert]
      185 CALL                             R25 2 0
      186 FORGLOOP                         R19 2 ; [-64]
      188 GETUPVAL                         R20 4
      189 GETTABLEKS                       R19 R20 K14 ["createElement"]
      191 LOADK                            R20 K36 ["Folder"]
      192 LOADNIL                          R21
      193 MOVE                             R22 R10
      194 CALL                             R19 3 -1
      195 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AdaptiveAnimationSupport"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R6 R0 K8 ["Src"]
       18 GETTABLEKS                       R5 R6 K9 ["Components"]
       20 GETTABLEKS                       R4 R5 K10 ["Hooks"]
       22 GETTABLEKS                       R3 R4 K11 ["useRig"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R7 R0 K8 ["Src"]
       29 GETTABLEKS                       R6 R7 K9 ["Components"]
       31 GETTABLEKS                       R5 R6 K12 ["Adornments"]
       33 GETTABLEKS                       R4 R5 K13 ["JointAdornmentComposite"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R3 K14 ["Component"]
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R9 R0 K8 ["Src"]
       42 GETTABLEKS                       R8 R9 K9 ["Components"]
       44 GETTABLEKS                       R7 R8 K10 ["Hooks"]
       46 GETTABLEKS                       R6 R7 K15 ["useMappedInstances"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K5 [require]
       51 GETTABLEKS                       R8 R0 K8 ["Src"]
       53 GETTABLEKS                       R7 R8 K16 ["Types"]
       55 CALL                             R6 1 1
       56 GETIMPORT                        R7 K5 [require]
       58 GETTABLEKS                       R10 R0 K8 ["Src"]
       60 GETTABLEKS                       R9 R10 K17 ["Resources"]
       62 GETTABLEKS                       R8 R9 K18 ["Constants"]
       64 CALL                             R7 1 1
       65 GETIMPORT                        R8 K5 [require]
       67 GETTABLEKS                       R12 R0 K8 ["Src"]
       69 GETTABLEKS                       R11 R12 K9 ["Components"]
       71 GETTABLEKS                       R10 R11 K10 ["Hooks"]
       73 GETTABLEKS                       R9 R10 K19 ["useModelTransparency"]
       75 CALL                             R8 1 1
       76 GETIMPORT                        R9 K5 [require]
       78 GETTABLEKS                       R12 R0 K8 ["Src"]
       80 GETTABLEKS                       R11 R12 K20 ["Flags"]
       82 GETTABLEKS                       R10 R11 K21 ["getFFlagAdaptiveAnimationQoL"]
       84 CALL                             R9 1 1
       85 DUPCLOSURE                       R10 K22 [PROTO_0]
       86 DUPCLOSURE                       R11 K23 [PROTO_1]
       87 CAPTURE                          VAL R10
       88 DUPCLOSURE                       R12 K24 [PROTO_2]
       89 DUPCLOSURE                       R13 K25 [PROTO_3]
       90 DUPCLOSURE                       R14 K26 [PROTO_4]
       91 CAPTURE                          VAL R7
       92 DUPCLOSURE                       R15 K27 [PROTO_5]
       93 DUPCLOSURE                       R16 K28 [PROTO_12]
       94 CAPTURE                          VAL R2
       95 CAPTURE                          VAL R5
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R7
      100 CAPTURE                          VAL R15
      101 CAPTURE                          VAL R4
      102 DUPTABLE                         R17 K32 [{"JointAdornments", "getChildJointNames", "_test"}]
      103 SETTABLEKS                       R16 R17 K29 ["JointAdornments"]
      105 SETTABLEKS                       R11 R17 K30 ["getChildJointNames"]
      107 DUPTABLE                         R18 K38 [{"findNodeByJoint", "findClosestJoint", "processHoverEnter", "calculateStandardRadius", "buildCompositeEntries"}]
      108 SETTABLEKS                       R10 R18 K33 ["findNodeByJoint"]
      110 SETTABLEKS                       R12 R18 K34 ["findClosestJoint"]
      112 SETTABLEKS                       R13 R18 K35 ["processHoverEnter"]
      114 SETTABLEKS                       R14 R18 K36 ["calculateStandardRadius"]
      116 SETTABLEKS                       R15 R18 K37 ["buildCompositeEntries"]
      118 SETTABLEKS                       R18 R17 K31 ["_test"]
      120 RETURN                           R17 1
