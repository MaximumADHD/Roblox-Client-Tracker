PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADNIL                          R2
        3 NAMECALL                         R3 R0 K0 ["GetChildren"]
        5 CALL                             R3 1 3
        6 FORGPREP                         R3
        7 LOADK                            R10 K1 ["Animator"]
        8 NAMECALL                         R8 R7 K2 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+24]
       12 GETIMPORT                        R8 K5 [Instance.fromExisting]
       14 MOVE                             R9 R7
       15 CALL                             R8 1 1
       16 MOVE                             R2 R8
       17 NAMECALL                         R8 R7 K0 ["GetChildren"]
       19 CALL                             R8 1 3
       20 FORGPREP                         R8
       21 LOADNIL                          R13
       22 SETTABLEKS                       R13 R12 K6 ["Parent"]
       24 FASTCALL2                        TABLE_INSERT R1 R12 ; [+5]
       26 MOVE                             R14 R1
       27 MOVE                             R15 R12
       28 GETIMPORT                        R13 K9 [table.insert]
       30 CALL                             R13 2 0
       31 FORGLOOP                         R8 2 ; [-11]
       33 NAMECALL                         R8 R7 K10 ["Destroy"]
       35 CALL                             R8 1 0
       36 FORGLOOP                         R3 2 ; [-30]
       38 JUMPIF                           R2 ; [+11]
       39 GETIMPORT                        R3 K12 [Instance.new]
       41 LOADK                            R4 K1 ["Animator"]
       42 CALL                             R3 1 1
       43 LOADB                            R4 0
       44 SETTABLEKS                       R4 R3 K13 ["Archivable"]
       46 LOADK                            R4 K1 ["Animator"]
       47 SETTABLEKS                       R4 R3 K14 ["Name"]
       49 MOVE                             R2 R3
       50 MOVE                             R3 R1
       51 LOADNIL                          R4
       52 LOADNIL                          R5
       53 FORGPREP                         R3
       54 SETTABLEKS                       R2 R7 K6 ["Parent"]
       56 FORGLOOP                         R3 2 ; [-3]
       58 SETTABLEKS                       R0 R2 K6 ["Parent"]
       60 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["animationTrack"]
        2 LOADN                            R3 0
        3 NAMECALL                         R1 R1 K1 ["Stop"]
        5 CALL                             R1 2 0
        6 GETTABLEKS                       R1 R0 K2 ["animator"]
        8 LOADK                            R3 K3 ["Model"]
        9 NAMECALL                         R1 R1 K4 ["FindFirstAncestorWhichIsA"]
       11 CALL                             R1 2 1
       12 JUMPIFEQKNIL                     R1 ; [+25]
       14 LOADK                            R4 K5 ["Workspace"]
       15 NAMECALL                         R2 R1 K6 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIF                           R2 ; [+19]
       19 NAMECALL                         R2 R1 K7 ["GetDescendants"]
       21 CALL                             R2 1 3
       22 FORGPREP                         R2
       23 LOADK                            R9 K8 ["Motor6D"]
       24 NAMECALL                         R7 R6 K6 ["IsA"]
       26 CALL                             R7 2 1
       27 JUMPIFNOT                        R7 ; [+8]
       28 LOADN                            R7 0
       29 SETTABLEKS                       R7 R6 K9 ["CurrentAngle"]
       31 GETIMPORT                        R7 K12 [CFrame.new]
       33 CALL                             R7 0 1
       34 SETTABLEKS                       R7 R6 K13 ["Transform"]
       36 FORGLOOP                         R2 2 ; [-14]
       38 GETUPVAL                         R2 0
       39 NAMECALL                         R2 R2 K14 ["IsRunning"]
       41 CALL                             R2 1 1
       42 JUMPIF                           R2 ; [+6]
       43 GETTABLEKS                       R2 R0 K2 ["animator"]
       45 LOADN                            R4 0
       46 NAMECALL                         R2 R2 K15 ["StepAnimations"]
       48 CALL                             R2 2 0
       49 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+3]
        5 NEWTABLE                         R1 0 0
        7 RETURN                           R1 1
        8 NEWTABLE                         R1 0 0
       10 NAMECALL                         R2 R0 K2 ["GetDescendants"]
       12 CALL                             R2 1 3
       13 FORGPREP                         R2
       14 LOADK                            R9 K3 ["AnimationNodeDefinition"]
       15 NAMECALL                         R7 R6 K1 ["IsA"]
       17 CALL                             R7 2 1
       18 JUMPIFNOT                        R7 ; [+24]
       19 GETTABLEKS                       R7 R6 K4 ["NodeType"]
       21 GETIMPORT                        R8 K8 [Enum.AnimationNodeType.ClipNode]
       23 JUMPIFNOTEQ                      R7 R8 ; [+19]
       25 LOADK                            R9 K9 ["AnimationId"]
       26 NAMECALL                         R7 R6 K10 ["GetAttribute"]
       28 CALL                             R7 2 1
       29 FASTCALL1                        TYPEOF R7 ; [+3]
       30 MOVE                             R9 R7
       31 GETIMPORT                        R8 K12 [typeof]
       33 CALL                             R8 1 1
       34 JUMPIFNOTEQKS                    R8 K13 ["string"] ; [+8]
       36 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       38 MOVE                             R9 R1
       39 MOVE                             R10 R7
       40 GETIMPORT                        R8 K16 [table.insert]
       42 CALL                             R8 2 0
       43 FORGLOOP                         R2 2 ; [-30]
       45 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["LoadAnimation"]
        4 CALL                             R0 2 1
        5 NAMECALL                         R1 R0 K1 ["Destroy"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADN                            R2 0
        2 NAMECALL                         R0 R0 K0 ["StepAnimations"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 LOADN                            R2 0
        6 NAMECALL                         R0 R0 K1 ["Stop"]
        8 CALL                             R0 2 0
        9 GETUPVAL                         R0 2
       10 NAMECALL                         R0 R0 K2 ["IsRunning"]
       12 CALL                             R0 1 1
       13 JUMPIF                           R0 ; [+5]
       14 GETUPVAL                         R0 3
       15 LOADN                            R2 0
       16 NAMECALL                         R0 R0 K3 ["StepAnimations"]
       18 CALL                             R0 2 0
       19 GETUPVAL                         R0 1
       20 NAMECALL                         R0 R0 K0 ["Destroy"]
       22 CALL                             R0 1 0
       23 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["animationClipsList"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 FASTCALL1                        TYPEOF R5 ; [+3]
        9 MOVE                             R8 R5
       10 GETIMPORT                        R7 K2 [typeof]
       12 CALL                             R7 1 1
       13 JUMPIFNOTEQKS                    R7 K3 ["Instance"] ; [+3]
       15 MOVE                             R6 R5
       16 JUMP                             ; [+2]
       17 GETTABLEKS                       R6 R5 K4 ["clip"]
       19 LOADNIL                          R7
       20 GETUPVAL                         R8 1
       21 MOVE                             R9 R6
       22 CALL                             R8 1 1
       23 GETUPVAL                         R10 2
       24 GETTABLEKS                       R9 R10 K5 ["overrideRig"]
       26 JUMPIF                           R9 ; [+11]
       27 FASTCALL1                        TYPEOF R5 ; [+3]
       28 MOVE                             R10 R5
       29 GETIMPORT                        R9 K2 [typeof]
       31 CALL                             R9 1 1
       32 JUMPIFEQKS                       R9 K3 ["Instance"] ; [+5]
       34 GETTABLEKS                       R9 R5 K6 ["animator"]
       36 JUMPIFNOTEQKNIL                  R9 ; [+34]
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R9 R10 K7 ["findAnimatorParent"]
       41 GETUPVAL                         R12 2
       42 GETTABLEKS                       R11 R12 K5 ["overrideRig"]
       44 OR                               R10 R11 R6
       45 CALL                             R9 1 1
       46 JUMPIF                           R9 ; [+2]
       47 CLOSEUPVALS                      R7
       48 JUMP                             ; [+136]
       49 GETUPVAL                         R11 3
       50 GETTABLEKS                       R10 R11 K8 ["findAnimatorParentInParent"]
       52 MOVE                             R11 R9
       53 CALL                             R10 1 1
       54 JUMPIFNOT                        R10 ; [+11]
       55 GETUPVAL                         R12 3
       56 GETTABLEKS                       R11 R12 K9 ["ensureAnimationRigDataInAnimationClip"]
       58 MOVE                             R12 R6
       59 MOVE                             R13 R10
       60 CALL                             R11 2 0
       61 GETUPVAL                         R12 3
       62 GETTABLEKS                       R11 R12 K10 ["ensureAnimationRigDataInHumanoid"]
       64 MOVE                             R12 R10
       65 CALL                             R11 1 0
       66 GETUPVAL                         R11 4
       67 MOVE                             R12 R9
       68 CALL                             R11 1 1
       69 MOVE                             R7 R11
       70 JUMP                             ; [+2]
       71 GETTABLEKS                       R7 R5 K6 ["animator"]
       73 JUMPIFNOTEQKNIL                  R7 ; [+2]
       75 LOADB                            R10 0 +1
       76 LOADB                            R10 1
       77 FASTCALL2K                       ASSERT R10 K11 ; [+4]
       79 LOADK                            R11 K11 ["Luau"]
       80 GETIMPORT                        R9 K13 [assert]
       82 CALL                             R9 2 0
       83 MOVE                             R9 R8
       84 LOADNIL                          R10
       85 LOADNIL                          R11
       86 FORGPREP                         R9
       87 GETIMPORT                        R14 K15 [Instance.new]
       89 LOADK                            R15 K16 ["Animation"]
       90 CALL                             R14 1 1
       91 SETTABLEKS                       R13 R14 K17 ["AnimationId"]
       93 GETIMPORT                        R15 K19 [pcall]
       95 NEWCLOSURE                       R16 P0
       96 CAPTURE                          REF R7
       97 CAPTURE                          VAL R14
       98 CALL                             R15 1 0
       99 NAMECALL                         R15 R14 K20 ["Destroy"]
      101 CALL                             R15 1 0
      102 FORGLOOP                         R9 2 ; [-16]
      104 GETUPVAL                         R9 5
      105 MOVE                             R11 R6
      106 NAMECALL                         R9 R9 K21 ["RegisterAnimationClip"]
      108 CALL                             R9 2 1
      109 GETIMPORT                        R10 K15 [Instance.new]
      111 LOADK                            R11 K16 ["Animation"]
      112 CALL                             R10 1 1
      113 LOADK                            R12 K22 ["Animation_"]
      114 GETTABLEKS                       R13 R6 K23 ["Name"]
      116 CONCAT                           R11 R12 R13
      117 SETTABLEKS                       R11 R10 K23 ["Name"]
      119 SETTABLEKS                       R9 R10 K17 ["AnimationId"]
      121 MOVE                             R13 R10
      122 NAMECALL                         R11 R7 K24 ["LoadAnimation"]
      124 CALL                             R11 2 1
      125 GETIMPORT                        R12 K28 [Enum.AnimationPriority.Action4]
      127 SETTABLEKS                       R12 R11 K29 ["Priority"]
      129 LOADB                            R12 1
      130 SETTABLEKS                       R12 R11 K30 ["Looped"]
      132 LOADN                            R14 0
      133 LOADN                            R15 1
      134 LOADN                            R16 0
      135 NAMECALL                         R12 R11 K31 ["Play"]
      137 CALL                             R12 4 0
      138 GETUPVAL                         R13 2
      139 GETTABLEKS                       R12 R13 K32 ["currentTime"]
      141 SETTABLEKS                       R12 R11 K33 ["TimePosition"]
      143 GETUPVAL                         R12 6
      144 NAMECALL                         R12 R12 K34 ["IsRunning"]
      146 CALL                             R12 1 1
      147 JUMPIF                           R12 ; [+16]
      148 GETIMPORT                        R12 K19 [pcall]
      150 NEWCLOSURE                       R13 P1
      151 CAPTURE                          REF R7
      152 CALL                             R12 1 2
      153 JUMPIF                           R12 ; [+10]
      154 GETIMPORT                        R14 K36 [warn]
      156 LOADK                            R16 K37 ["Failed to step animations for preview: "]
      157 FASTCALL1                        TOSTRING R13 ; [+3]
      158 MOVE                             R18 R13
      159 GETIMPORT                        R17 K39 [tostring]
      161 CALL                             R17 1 1
      162 CONCAT                           R15 R16 R17
      163 CALL                             R14 1 0
      164 DUPTABLE                         R14 K43 [{"animationClip", "animationTrack", "animator", "destroy"}]
      165 SETTABLEKS                       R6 R14 K40 ["animationClip"]
      167 SETTABLEKS                       R11 R14 K41 ["animationTrack"]
      169 SETTABLEKS                       R7 R14 K6 ["animator"]
      171 NEWCLOSURE                       R15 P2
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R11
      174 CAPTURE                          UPVAL U6
      175 CAPTURE                          REF R7
      176 SETTABLEKS                       R15 R14 K42 ["destroy"]
      178 FASTCALL2                        TABLE_INSERT R0 R14 ; [+4]
      180 MOVE                             R13 R0
      181 GETIMPORT                        R12 K46 [table.insert]
      183 CALL                             R12 2 0
      184 CLOSEUPVALS                      R7
      185 FORGLOOP                         R1 2 ; [-178]
      187 GETIMPORT                        R1 K48 [table.freeze]
      189 MOVE                             R2 R0
      190 CALL                             R1 1 -1
      191 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETTABLEKS                       R5 R4 K0 ["destroy"]
        6 CALL                             R5 0 0
        7 FORGLOOP                         R0 2 ; [-4]
        9 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["animator"]
        3 GETUPVAL                         R2 1
        4 NAMECALL                         R0 R0 K1 ["StepAnimations"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setDebugDataAsync"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["animationTrack"]
        6 NAMECALL                         R1 R1 K2 ["GetDebugData"]
        8 CALL                             R1 1 -1
        9 CALL                             R0 -1 0
       10 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["animator"]
        3 LOADN                            R2 0
        4 NAMECALL                         R0 R0 K1 ["StepAnimations"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K0 ["animationParameters"]
        7 GETUPVAL                         R7 1
        8 GETTABLEKS                       R6 R7 K1 ["previewAnimationParameters"]
       10 JUMPIFEQKNIL                     R6 ; [+4]
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K1 ["previewAnimationParameters"]
       15 MOVE                             R6 R5
       16 LOADNIL                          R7
       17 LOADNIL                          R8
       18 FORGPREP                         R6
       19 GETTABLEKS                       R11 R4 K2 ["animationTrack"]
       21 MOVE                             R13 R9
       22 MOVE                             R14 R10
       23 NAMECALL                         R11 R11 K3 ["SetParameter"]
       25 CALL                             R11 3 0
       26 FORGLOOP                         R6 2 ; [-8]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R6 R7 K4 ["currentTime"]
       31 JUMPIFNOTEQKN                    R6 K5 [0] ; [+5]
       33 GETUPVAL                         R6 3
       34 MOVE                             R7 R4
       35 CALL                             R6 1 0
       36 JUMP                             ; [+93]
       37 GETTABLEKS                       R7 R4 K2 ["animationTrack"]
       39 GETTABLEKS                       R6 R7 K6 ["IsPlaying"]
       41 JUMPIF                           R6 ; [+8]
       42 GETTABLEKS                       R6 R4 K2 ["animationTrack"]
       44 LOADN                            R8 0
       45 LOADN                            R9 1
       46 LOADN                            R10 0
       47 NAMECALL                         R6 R6 K7 ["Play"]
       49 CALL                             R6 4 0
       50 GETTABLEKS                       R6 R4 K8 ["animationClip"]
       52 LOADK                            R8 K9 ["AnimationGraphDefinition"]
       53 NAMECALL                         R6 R6 K10 ["IsA"]
       55 CALL                             R6 2 1
       56 JUMPIFNOT                        R6 ; [+45]
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R7 R8 K4 ["currentTime"]
       60 GETUPVAL                         R9 4
       61 GETTABLEKS                       R8 R9 K11 ["current"]
       63 SUB                              R6 R7 R8
       64 GETUPVAL                         R7 4
       65 GETUPVAL                         R9 2
       66 GETTABLEKS                       R8 R9 K4 ["currentTime"]
       68 SETTABLEKS                       R8 R7 K11 ["current"]
       70 GETUPVAL                         R7 5
       71 NAMECALL                         R7 R7 K12 ["IsRunning"]
       73 CALL                             R7 1 1
       74 JUMPIF                           R7 ; [+20]
       75 LOADN                            R7 0
       76 JUMPIFNOTLT                      R7 R6 ; [+18]
       78 GETIMPORT                        R7 K14 [pcall]
       80 NEWCLOSURE                       R8 P0
       81 CAPTURE                          VAL R4
       82 CAPTURE                          VAL R6
       83 CALL                             R7 1 2
       84 JUMPIF                           R7 ; [+10]
       85 GETIMPORT                        R9 K16 [warn]
       87 LOADK                            R11 K17 ["Failed to step animations for preview: "]
       88 FASTCALL1                        TOSTRING R8 ; [+3]
       89 MOVE                             R13 R8
       90 GETIMPORT                        R12 K19 [tostring]
       92 CALL                             R12 1 1
       93 CONCAT                           R10 R11 R12
       94 CALL                             R9 1 0
       95 GETIMPORT                        R7 K22 [task.spawn]
       97 NEWCLOSURE                       R8 P1
       98 CAPTURE                          UPVAL U6
       99 CAPTURE                          VAL R4
      100 CALL                             R7 1 0
      101 JUMP                             ; [+28]
      102 GETTABLEKS                       R6 R4 K2 ["animationTrack"]
      104 GETUPVAL                         R8 2
      105 GETTABLEKS                       R7 R8 K4 ["currentTime"]
      107 SETTABLEKS                       R7 R6 K23 ["TimePosition"]
      109 GETUPVAL                         R6 5
      110 NAMECALL                         R6 R6 K12 ["IsRunning"]
      112 CALL                             R6 1 1
      113 JUMPIF                           R6 ; [+16]
      114 GETIMPORT                        R6 K14 [pcall]
      116 NEWCLOSURE                       R7 P2
      117 CAPTURE                          VAL R4
      118 CALL                             R6 1 2
      119 JUMPIF                           R6 ; [+10]
      120 GETIMPORT                        R8 K16 [warn]
      122 LOADK                            R10 K17 ["Failed to step animations for preview: "]
      123 FASTCALL1                        TOSTRING R7 ; [+3]
      124 MOVE                             R12 R7
      125 GETIMPORT                        R11 K19 [tostring]
      127 CALL                             R11 1 1
      128 CONCAT                           R9 R10 R11
      129 CALL                             R8 1 0
      130 FORGLOOP                         R0 2 ; [-127]
      132 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K1 ["Context"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K0 ["useContext"]
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R4 R5 K1 ["Context"]
       20 CALL                             R3 1 1
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K2 ["useMemo"]
       24 NEWCLOSURE                       R5 P0
       25 CAPTURE                          VAL R1
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U5
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          UPVAL U7
       31 CAPTURE                          UPVAL U8
       32 NEWTABLE                         R6 0 2
       34 GETTABLEKS                       R7 R1 K3 ["animationClipsList"]
       36 GETTABLEKS                       R8 R0 K4 ["overrideRig"]
       38 SETLIST                          R6 R7 2 [1]
       40 CALL                             R4 2 1
       41 GETUPVAL                         R6 0
       42 GETTABLEKS                       R5 R6 K5 ["useEffect"]
       44 NEWCLOSURE                       R6 P1
       45 CAPTURE                          VAL R4
       46 NEWTABLE                         R7 0 1
       48 MOVE                             R8 R4
       49 SETLIST                          R7 R8 1 [1]
       51 CALL                             R5 2 0
       52 GETUPVAL                         R6 0
       53 GETTABLEKS                       R5 R6 K6 ["useRef"]
       55 GETTABLEKS                       R6 R0 K7 ["currentTime"]
       57 CALL                             R5 1 1
       58 GETUPVAL                         R7 0
       59 GETTABLEKS                       R6 R7 K5 ["useEffect"]
       61 NEWCLOSURE                       R7 P2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R0
       65 CAPTURE                          UPVAL U9
       66 CAPTURE                          VAL R5
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          VAL R3
       69 NEWTABLE                         R8 0 5
       71 GETTABLEKS                       R9 R0 K8 ["isPlaying"]
       73 GETTABLEKS                       R10 R0 K7 ["currentTime"]
       75 MOVE                             R11 R4
       76 GETTABLEKS                       R12 R2 K9 ["animationParameters"]
       78 GETTABLEKS                       R13 R3 K10 ["setDebugDataAsync"]
       80 SETLIST                          R8 R9 5 [1]
       82 CALL                             R6 2 0
       83 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["AnimationClipProvider"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K5 [game]
       15 LOADK                            R4 K8 ["RunService"]
       16 NAMECALL                         R2 R2 K7 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R5 R0 K11 ["Contexts"]
       23 GETTABLEKS                       R4 R5 K12 ["AnimationParameterContext"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K10 [require]
       28 GETTABLEKS                       R6 R0 K11 ["Contexts"]
       30 GETTABLEKS                       R5 R6 K13 ["AnimationPreviewClipsContext"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K10 [require]
       35 GETTABLEKS                       R8 R0 K14 ["Util"]
       37 GETTABLEKS                       R7 R8 K15 ["Rig"]
       39 GETTABLEKS                       R6 R7 K16 ["AnimationRigDataUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K10 [require]
       44 GETTABLEKS                       R8 R0 K11 ["Contexts"]
       46 GETTABLEKS                       R7 R8 K17 ["GraphDebugDataContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K10 [require]
       51 GETTABLEKS                       R9 R0 K18 ["Parent"]
       53 GETTABLEKS                       R8 R9 K19 ["React"]
       55 CALL                             R7 1 1
       56 DUPCLOSURE                       R8 K20 [PROTO_0]
       57 DUPCLOSURE                       R9 K21 [PROTO_1]
       58 CAPTURE                          VAL R2
       59 DUPCLOSURE                       R10 K22 [PROTO_2]
       60 DUPCLOSURE                       R11 K23 [PROTO_13]
       61 CAPTURE                          VAL R7
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R9
       71 RETURN                           R11 1
