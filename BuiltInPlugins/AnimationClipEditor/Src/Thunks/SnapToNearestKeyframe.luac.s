PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Keyframes"]
        2 JUMPIFNOT                        R1 ; [+58]
        3 GETTABLEKS                       R2 R0 K0 ["Keyframes"]
        5 LENGTH                           R1 R2
        6 LOADN                            R2 0
        7 JUMPIFNOTLT                      R2 R1 ; [+53]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K1 ["findNearestKeyframes"]
       12 GETTABLEKS                       R2 R0 K0 ["Keyframes"]
       14 GETUPVAL                         R3 1
       15 CALL                             R1 2 2
       16 GETTABLEKS                       R6 R0 K0 ["Keyframes"]
       18 GETTABLE                         R5 R6 R1
       19 GETUPVAL                         R6 1
       20 SUB                              R4 R5 R6
       21 FASTCALL1                        MATH_ABS R4 ; [+2]
       22 GETIMPORT                        R3 K4 [math.abs]
       24 CALL                             R3 1 1
       25 GETUPVAL                         R6 1
       26 GETUPVAL                         R7 2
       27 SUB                              R5 R6 R7
       28 FASTCALL1                        MATH_ABS R5 ; [+2]
       29 GETIMPORT                        R4 K4 [math.abs]
       31 CALL                             R4 1 1
       32 JUMPIFNOTLT                      R3 R4 ; [+5]
       34 GETTABLEKS                       R4 R0 K0 ["Keyframes"]
       36 GETTABLE                         R3 R4 R1
       37 SETUPVAL                         R3 2
       38 JUMPIFNOT                        R2 ; [+22]
       39 GETTABLEKS                       R6 R0 K0 ["Keyframes"]
       41 GETTABLE                         R5 R6 R2
       42 GETUPVAL                         R6 1
       43 SUB                              R4 R5 R6
       44 FASTCALL1                        MATH_ABS R4 ; [+2]
       45 GETIMPORT                        R3 K4 [math.abs]
       47 CALL                             R3 1 1
       48 GETUPVAL                         R6 1
       49 GETUPVAL                         R7 2
       50 SUB                              R5 R6 R7
       51 FASTCALL1                        MATH_ABS R5 ; [+2]
       52 GETIMPORT                        R4 K4 [math.abs]
       54 CALL                             R4 1 1
       55 JUMPIFNOTLT                      R3 R4 ; [+5]
       57 GETTABLEKS                       R4 R0 K0 ["Keyframes"]
       59 GETTABLE                         R3 R4 R2
       60 SETUPVAL                         R3 2
       61 RETURN                           R0 0

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R2 K2 ["Instances"]
        9 JUMPIF                           R3 ; [+1]
       10 RETURN                           R0 0
       11 GETTABLEKS                       R4 R3 K3 ["Root"]
       13 JUMPIF                           R4 ; [+1]
       14 RETURN                           R0 0
       15 LOADNIL                          R5
       16 GETTABLEKS                       R7 R1 K4 ["Status"]
       18 GETTABLEKS                       R6 R7 K5 ["EditorMode"]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K6 ["EDITOR_MODE"]
       23 GETTABLEKS                       R7 R8 K7 ["CurveCanvas"]
       25 JUMPIFNOTEQ                      R6 R7 ; [+29]
       27 NEWTABLE                         R5 0 0
       29 GETIMPORT                        R6 K9 [ipairs]
       31 GETTABLEKS                       R9 R1 K4 ["Status"]
       33 GETTABLEKS                       R7 R9 K10 ["SelectedTracks"]
       35 JUMPIF                           R7 ; [+2]
       36 NEWTABLE                         R7 0 0
       38 CALL                             R6 1 3
       39 FORGPREP_INEXT                   R6
       40 MOVE                             R12 R5
       41 GETUPVAL                         R14 1
       42 GETTABLEKS                       R13 R14 K11 ["getTrack"]
       44 MOVE                             R14 R2
       45 LOADK                            R15 K3 ["Root"]
       46 MOVE                             R16 R10
       47 CALL                             R13 3 -1
       48 FASTCALL                         TABLE_INSERT ; [+2]
       49 GETIMPORT                        R11 K14 [table.insert]
       51 CALL                             R11 -1 0
       52 FORGLOOP                         R6 2 [inext] ; [-13]
       54 JUMP                             ; [+2]
       55 GETTABLEKS                       R5 R4 K15 ["Tracks"]
       57 LOADB                            R6 0
       58 GETUPVAL                         R7 2
       59 JUMPIFNOT                        R5 ; [+82]
       60 GETTABLEKS                       R9 R1 K4 ["Status"]
       62 GETTABLEKS                       R8 R9 K16 ["HorizontalScroll"]
       64 GETTABLEKS                       R10 R1 K4 ["Status"]
       66 GETTABLEKS                       R9 R10 K17 ["HorizontalZoom"]
       68 GETTABLEKS                       R11 R1 K4 ["Status"]
       70 GETTABLEKS                       R10 R11 K18 ["EditingLength"]
       72 GETUPVAL                         R12 3
       73 GETTABLEKS                       R11 R12 K19 ["getZoomRange"]
       75 MOVE                             R12 R2
       76 MOVE                             R13 R8
       77 MOVE                             R14 R9
       78 MOVE                             R15 R10
       79 CALL                             R11 4 1
       80 GETUPVAL                         R13 3
       81 GETTABLEKS                       R12 R13 K20 ["getScaledKeyframePosition"]
       83 GETUPVAL                         R13 2
       84 GETTABLEKS                       R14 R11 K21 ["Start"]
       86 GETTABLEKS                       R15 R11 K22 ["End"]
       88 GETUPVAL                         R16 4
       89 CALL                             R12 4 1
       90 GETTABLEKS                       R14 R11 K22 ["End"]
       92 ADDK                             R13 R14 K23 [1]
       93 GETIMPORT                        R14 K25 [pairs]
       95 MOVE                             R15 R5
       96 CALL                             R14 1 3
       97 FORGPREP_NEXT                    R14
       98 GETUPVAL                         R20 3
       99 GETTABLEKS                       R19 R20 K26 ["traverseTracks"]
      101 LOADNIL                          R20
      102 MOVE                             R21 R18
      103 NEWCLOSURE                       R22 P0
      104 CAPTURE                          UPVAL U5
      105 CAPTURE                          UPVAL U2
      106 CAPTURE                          REF R13
      107 LOADB                            R23 1
      108 CALL                             R19 4 0
      109 FORGLOOP                         R14 2 ; [-12]
      111 GETTABLEKS                       R14 R11 K21 ["Start"]
      113 JUMPIFNOTLE                      R14 R13 ; [+27]
      115 GETTABLEKS                       R14 R11 K22 ["End"]
      117 JUMPIFNOTLE                      R13 R14 ; [+23]
      119 GETUPVAL                         R15 3
      120 GETTABLEKS                       R14 R15 K20 ["getScaledKeyframePosition"]
      122 MOVE                             R15 R13
      123 GETTABLEKS                       R16 R11 K21 ["Start"]
      125 GETTABLEKS                       R17 R11 K22 ["End"]
      127 GETUPVAL                         R18 4
      128 CALL                             R14 4 1
      129 SUB                              R16 R14 R12
      130 FASTCALL1                        MATH_ABS R16 ; [+2]
      131 GETIMPORT                        R15 K29 [math.abs]
      133 CALL                             R15 1 1
      134 GETUPVAL                         R17 0
      135 GETTABLEKS                       R16 R17 K30 ["SNAP_TO_KEYFRAME_THRESHOLD"]
      137 JUMPIFNOTLT                      R15 R16 ; [+3]
      139 MOVE                             R7 R13
      140 LOADB                            R6 1
      141 CLOSEUPVALS                      R13
      142 JUMPIFNOT                        R6 ; [+7]
      143 GETUPVAL                         R10 6
      144 MOVE                             R11 R7
      145 CALL                             R10 1 -1
      146 NAMECALL                         R8 R0 K31 ["dispatch"]
      148 CALL                             R8 -1 0
      149 RETURN                           R0 0
      150 GETUPVAL                         R10 7
      151 GETUPVAL                         R11 2
      152 CALL                             R10 1 -1
      153 NAMECALL                         R8 R0 K31 ["dispatch"]
      155 CALL                             R8 -1 0
      156 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["KeyframeUtils"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R6 R0 K6 ["Src"]
       29 GETTABLEKS                       R5 R6 K7 ["Util"]
       31 GETTABLEKS                       R4 R5 K10 ["TrackUtils"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R8 R0 K6 ["Src"]
       38 GETTABLEKS                       R7 R8 K11 ["Thunks"]
       40 GETTABLEKS                       R6 R7 K12 ["Playback"]
       42 GETTABLEKS                       R5 R6 K13 ["StepAnimation"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["Src"]
       49 GETTABLEKS                       R7 R8 K11 ["Thunks"]
       51 GETTABLEKS                       R6 R7 K14 ["SnapToNearestFrame"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Src"]
       58 GETTABLEKS                       R8 R9 K7 ["Util"]
       60 GETTABLEKS                       R7 R8 K15 ["AnimationData"]
       62 CALL                             R6 1 1
       63 DUPCLOSURE                       R7 K16 [PROTO_2]
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 RETURN                           R7 1
