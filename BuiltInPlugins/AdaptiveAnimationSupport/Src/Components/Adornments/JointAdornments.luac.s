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
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+19]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["GetBoundingBox"]
        5 CALL                             R0 1 2
        6 GETTABLEKS                       R2 R1 K1 ["Y"]
        8 LOADN                            R3 0
        9 JUMPIFNOTLT                      R3 R2 ; [+11]
       11 LOADK                            R5 K2 [0.1]
       12 DIVK                             R6 R2 K3 [6]
       13 MUL                              R4 R5 R6
       14 LOADK                            R5 K4 [0.05]
       15 LOADN                            R6 2
       16 FASTCALL                         MATH_CLAMP ; [+2]
       17 GETIMPORT                        R3 K7 [math.clamp]
       19 CALL                             R3 3 1
       20 RETURN                           R3 1
       21 LOADK                            R0 K2 [0.1]
       22 RETURN                           R0 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["rigModel"]
        2 GETTABLEKS                       R2 R0 K1 ["rigDescriptor"]
        4 GETTABLEKS                       R3 R0 K2 ["selectedJointInstance"]
        6 GETTABLEKS                       R4 R0 K3 ["onJointClicked"]
        8 GETUPVAL                         R5 0
        9 MOVE                             R6 R1
       10 CALL                             R5 1 1
       11 GETUPVAL                         R6 1
       12 MOVE                             R7 R2
       13 CALL                             R6 1 1
       14 GETTABLEKS                       R7 R6 K4 ["mapped"]
       16 GETTABLEKS                       R8 R6 K5 ["labelMap"]
       18 NEWTABLE                         R9 0 0
       20 GETUPVAL                         R11 2
       21 GETTABLEKS                       R10 R11 K6 ["useMemo"]
       23 NEWCLOSURE                       R11 P0
       24 CAPTURE                          VAL R1
       25 NEWTABLE                         R12 0 1
       27 MOVE                             R13 R1
       28 SETLIST                          R12 R13 1 [1]
       30 CALL                             R10 2 1
       31 NEWTABLE                         R11 0 0
       33 MOVE                             R12 R5
       34 LOADNIL                          R13
       35 LOADNIL                          R14
       36 FORGPREP                         R12
       37 JUMPIFNOT                        R16 ; [+9]
       38 DUPTABLE                         R19 K8 [{"node"}]
       39 SETTABLEKS                       R16 R19 K7 ["node"]
       41 FASTCALL2                        TABLE_INSERT R11 R19 ; [+4]
       43 MOVE                             R18 R11
       44 GETIMPORT                        R17 K11 [table.insert]
       46 CALL                             R17 2 0
       47 FORGLOOP                         R12 2 ; [-11]
       49 LENGTH                           R12 R11
       50 LOADN                            R13 0
       51 JUMPIFNOTLT                      R13 R12 ; [+82]
       53 GETIMPORT                        R12 K13 [table.remove]
       55 MOVE                             R13 R11
       56 CALL                             R12 1 1
       57 MOVE                             R13 R12
       58 JUMPIFNOT                        R13 ; [+2]
       59 GETTABLEKS                       R13 R12 K7 ["node"]
       61 JUMPIFNOT                        R13 ; [+71]
       62 GETTABLEKS                       R14 R13 K14 ["joint"]
       64 GETTABLE                         R15 R8 R14
       65 NEWTABLE                         R16 0 0
       67 GETTABLEKS                       R17 R13 K15 ["children"]
       69 LOADNIL                          R18
       70 LOADNIL                          R19
       71 FORGPREP                         R17
       72 JUMPIFNOT                        R21 ; [+17]
       73 GETTABLEKS                       R24 R21 K14 ["joint"]
       75 FASTCALL2                        TABLE_INSERT R16 R24 ; [+4]
       77 MOVE                             R23 R16
       78 GETIMPORT                        R22 K11 [table.insert]
       80 CALL                             R22 2 0
       81 DUPTABLE                         R24 K8 [{"node"}]
       82 SETTABLEKS                       R21 R24 K7 ["node"]
       84 FASTCALL2                        TABLE_INSERT R11 R24 ; [+4]
       86 MOVE                             R23 R11
       87 GETIMPORT                        R22 K11 [table.insert]
       89 CALL                             R22 2 0
       90 FORGLOOP                         R17 2 ; [-19]
       92 GETUPVAL                         R18 2
       93 GETTABLEKS                       R17 R18 K16 ["createElement"]
       95 GETUPVAL                         R18 3
       96 DUPTABLE                         R19 K26 [{"jointInstance", "DEPRECATED_jointLabel", "mappedLookup", "childJoints", "DEPRECATED_rigDescriptor", "selectedJointInstance", "onJointClicked", "standardRadius", "DEPRECATED_applyTposeAdjustment", "updatePositions", "isPlayingAnimation"}]
       97 SETTABLEKS                       R14 R19 K17 ["jointInstance"]
       99 SETTABLEKS                       R15 R19 K18 ["DEPRECATED_jointLabel"]
      101 SETTABLEKS                       R7 R19 K19 ["mappedLookup"]
      103 SETTABLEKS                       R16 R19 K20 ["childJoints"]
      105 SETTABLEKS                       R2 R19 K21 ["DEPRECATED_rigDescriptor"]
      107 SETTABLEKS                       R3 R19 K2 ["selectedJointInstance"]
      109 SETTABLEKS                       R4 R19 K3 ["onJointClicked"]
      111 SETTABLEKS                       R10 R19 K22 ["standardRadius"]
      113 GETTABLEKS                       R20 R0 K27 ["applyTposeAdjustment"]
      115 SETTABLEKS                       R20 R19 K23 ["DEPRECATED_applyTposeAdjustment"]
      117 GETTABLEKS                       R20 R0 K24 ["updatePositions"]
      119 SETTABLEKS                       R20 R19 K24 ["updatePositions"]
      121 GETTABLEKS                       R20 R0 K25 ["isPlayingAnimation"]
      123 SETTABLEKS                       R20 R19 K25 ["isPlayingAnimation"]
      125 CALL                             R17 2 1
      126 FASTCALL2                        TABLE_INSERT R9 R17 ; [+5]
      128 MOVE                             R19 R9
      129 MOVE                             R20 R17
      130 GETIMPORT                        R18 K11 [table.insert]
      132 CALL                             R18 2 0
      133 JUMPBACK                         ; [-85]
      134 GETUPVAL                         R13 2
      135 GETTABLEKS                       R12 R13 K16 ["createElement"]
      137 LOADK                            R13 K28 ["Folder"]
      138 LOADNIL                          R14
      139 MOVE                             R15 R9
      140 CALL                             R12 3 -1
      141 RETURN                           R12 -1

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
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R8 R0 K8 ["Src"]
       40 GETTABLEKS                       R7 R8 K9 ["Components"]
       42 GETTABLEKS                       R6 R7 K10 ["Hooks"]
       44 GETTABLEKS                       R5 R6 K14 ["useMappedInstances"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R7 R0 K8 ["Src"]
       51 GETTABLEKS                       R6 R7 K15 ["Types"]
       53 CALL                             R5 1 1
       54 DUPCLOSURE                       R6 K16 [PROTO_0]
       55 DUPCLOSURE                       R7 K17 [PROTO_1]
       56 CAPTURE                          VAL R6
       57 DUPCLOSURE                       R8 K18 [PROTO_3]
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 DUPTABLE                         R9 K21 [{"JointAdornments", "getChildJointNames"}]
       63 SETTABLEKS                       R8 R9 K19 ["JointAdornments"]
       65 SETTABLEKS                       R7 R9 K20 ["getChildJointNames"]
       67 RETURN                           R9 1
