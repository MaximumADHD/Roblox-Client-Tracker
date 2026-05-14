PROTO_0:
        0 ADDK                             R2 R0 K0 [0.5]
        1 FASTCALL1                        MATH_FLOOR R2 ; [+2]
        2 GETIMPORT                        R1 K3 [math.floor]
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R7 0
        2 SUB                              R6 R0 R7
        3 GETUPVAL                         R7 1
        4 MUL                              R5 R6 R7
        5 ADD                              R3 R4 R5
        6 ADDK                             R5 R3 K0 [0.5]
        7 FASTCALL1                        MATH_FLOOR R5 ; [+2]
        8 GETIMPORT                        R4 K3 [math.floor]
       10 CALL                             R4 1 1
       11 MOVE                             R2 R4
       12 GETUPVAL                         R3 2
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K4 ["SNAP_MODES"]
       16 GETTABLEKS                       R4 R4 K5 ["None"]
       18 JUMPIFEQ                         R3 R4 ; [+8]
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R3 R3 K6 ["getNearestFrame"]
       23 MOVE                             R4 R2
       24 GETUPVAL                         R5 5
       25 CALL                             R3 2 1
       26 MOVE                             R2 R3
       27 LOADN                            R5 0
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R6 R6 K7 ["MAX_ANIMATION_LENGTH"]
       31 FASTCALL3                        MATH_CLAMP R2 R5 R6
       33 MOVE                             R4 R2
       34 GETIMPORT                        R3 K9 [math.clamp]
       36 CALL                             R3 3 1
       37 MOVE                             R2 R3
       38 MUL                              R3 R2 R1
       39 GETUPVAL                         R5 0
       40 MUL                              R4 R5 R1
       41 JUMPIFNOTLE                      R4 R3 ; [+3]
       43 LOADB                            R3 1
       44 RETURN                           R3 1
       45 GETUPVAL                         R3 6
       46 GETTABLEKS                       R3 R3 K10 ["Keyframes"]
       48 JUMPIFNOT                        R3 ; [+14]
       49 GETUPVAL                         R3 7
       50 GETTABLEKS                       R3 R3 K11 ["moveKeyframe"]
       52 GETUPVAL                         R4 6
       53 MOVE                             R5 R0
       54 MOVE                             R6 R2
       55 CALL                             R3 3 0
       56 GETUPVAL                         R3 7
       57 GETTABLEKS                       R3 R3 K12 ["moveNamedKeyframe"]
       59 GETUPVAL                         R4 8
       60 MOVE                             R5 R0
       61 MOVE                             R6 R2
       62 CALL                             R3 3 0
       63 GETUPVAL                         R3 9
       64 GETTABLEKS                       R3 R3 K13 ["Selection"]
       66 LOADNIL                          R4
       67 SETTABLE                         R4 R3 R0
       68 GETUPVAL                         R3 9
       69 GETTABLEKS                       R3 R3 K13 ["Selection"]
       71 LOADB                            R4 1
       72 SETTABLE                         R4 R3 R2
       73 LOADB                            R3 0
       74 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R6 0
        2 SUB                              R5 R0 R6
        3 GETUPVAL                         R6 1
        4 MUL                              R4 R5 R6
        5 ADD                              R2 R3 R4
        6 ADDK                             R4 R2 K0 [0.5]
        7 FASTCALL1                        MATH_FLOOR R4 ; [+2]
        8 GETIMPORT                        R3 K3 [math.floor]
       10 CALL                             R3 1 1
       11 MOVE                             R1 R3
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K4 ["SNAP_MODES"]
       16 GETTABLEKS                       R3 R3 K5 ["None"]
       18 JUMPIFEQ                         R2 R3 ; [+8]
       20 GETUPVAL                         R2 4
       21 GETTABLEKS                       R2 R2 K6 ["getNearestFrame"]
       23 MOVE                             R3 R1
       24 GETUPVAL                         R4 5
       25 CALL                             R2 2 1
       26 MOVE                             R1 R2
       27 LOADN                            R4 0
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K7 ["MAX_ANIMATION_LENGTH"]
       31 FASTCALL3                        MATH_CLAMP R1 R4 R5
       33 MOVE                             R3 R1
       34 GETIMPORT                        R2 K9 [math.clamp]
       36 CALL                             R2 3 1
       37 MOVE                             R1 R2
       38 GETUPVAL                         R2 6
       39 GETTABLEKS                       R2 R2 K10 ["Keyframes"]
       41 JUMPIFNOT                        R2 ; [+14]
       42 GETUPVAL                         R2 7
       43 GETTABLEKS                       R2 R2 K11 ["moveKeyframe"]
       45 GETUPVAL                         R3 6
       46 MOVE                             R4 R0
       47 MOVE                             R5 R1
       48 CALL                             R2 3 0
       49 GETUPVAL                         R2 7
       50 GETTABLEKS                       R2 R2 K12 ["moveNamedKeyframe"]
       52 GETUPVAL                         R3 8
       53 MOVE                             R4 R0
       54 MOVE                             R5 R1
       55 CALL                             R2 3 0
       56 GETUPVAL                         R2 9
       57 GETTABLEKS                       R2 R2 K13 ["Selection"]
       59 LOADNIL                          R3
       60 SETTABLE                         R3 R2 R0
       61 GETUPVAL                         R2 9
       62 GETTABLEKS                       R2 R2 K13 ["Selection"]
       64 LOADB                            R3 1
       65 SETTABLE                         R3 R2 R1
       66 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Selection"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETIMPORT                        R2 K2 [next]
        5 GETTABLEKS                       R3 R0 K0 ["Selection"]
        7 CALL                             R2 1 1
        8 JUMPIF                           R2 ; [+1]
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["Dictionary"]
       13 GETTABLEKS                       R2 R2 K4 ["keys"]
       15 GETTABLEKS                       R3 R0 K0 ["Selection"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K7 [table.sort]
       20 MOVE                             R4 R2
       21 CALL                             R3 1 0
       22 GETUPVAL                         R3 1
       23 LOADN                            R4 1
       24 JUMPIFNOTLT                      R4 R3 ; [+33]
       26 NEWCLOSURE                       R3 P0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U1
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          UPVAL U4
       31 CAPTURE                          UPVAL U5
       32 CAPTURE                          UPVAL U6
       33 CAPTURE                          VAL R1
       34 CAPTURE                          UPVAL U7
       35 CAPTURE                          UPVAL U8
       36 CAPTURE                          VAL R0
       37 LOADN                            R6 1
       38 LENGTH                           R4 R2
       39 LOADN                            R5 1
       40 FORNPREP                         R4
       41 MOVE                             R7 R3
       42 GETTABLE                         R8 R2 R6
       43 LOADN                            R9 1
       44 CALL                             R7 2 1
       45 JUMPIF                           R7 ; [+1]
       46 FORNLOOP                         R4
       47 LENGTH                           R6 R2
       48 LOADN                            R4 1
       49 LOADN                            R5 255
       50 FORNPREP                         R4
       51 MOVE                             R7 R3
       52 GETTABLE                         R8 R2 R6
       53 LOADN                            R9 255
       54 CALL                             R7 2 1
       55 JUMPIF                           R7 ; [+38]
       56 FORNLOOP                         R4
       57 RETURN                           R0 0
       58 GETUPVAL                         R3 5
       59 GETTABLEKS                       R3 R3 K8 ["findNearestKeyframes"]
       61 MOVE                             R4 R2
       62 GETUPVAL                         R5 2
       63 CALL                             R3 2 2
       64 JUMPIFNOTEQKNIL                  R4 ; [+2]
       66 ADDK                             R4 R3 K9 [1]
       67 NEWCLOSURE                       R5 P1
       68 CAPTURE                          UPVAL U2
       69 CAPTURE                          UPVAL U1
       70 CAPTURE                          UPVAL U3
       71 CAPTURE                          UPVAL U4
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          UPVAL U6
       74 CAPTURE                          VAL R1
       75 CAPTURE                          UPVAL U7
       76 CAPTURE                          UPVAL U8
       77 CAPTURE                          VAL R0
       78 MOVE                             R8 R3
       79 LOADN                            R6 1
       80 LOADN                            R7 255
       81 FORNPREP                         R6
       82 MOVE                             R9 R5
       83 GETTABLE                         R10 R2 R8
       84 CALL                             R9 1 0
       85 FORNLOOP                         R6
       86 MOVE                             R8 R4
       87 LENGTH                           R6 R2
       88 LOADN                            R7 1
       89 FORNPREP                         R6
       90 MOVE                             R9 R5
       91 GETTABLE                         R10 R2 R8
       92 CALL                             R9 1 0
       93 FORNLOOP                         R6
       94 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["FrameRate"]
        7 GETTABLEKS                       R3 R1 K1 ["Status"]
        9 GETTABLEKS                       R3 R3 K3 ["SnapMode"]
       11 GETUPVAL                         R5 0
       12 JUMPIFNOT                        R5 ; [+4]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K4 ["selectedKeyframes"]
       16 JUMPIF                           R4 ; [+4]
       17 GETTABLEKS                       R4 R1 K1 ["Status"]
       19 GETTABLEKS                       R4 R4 K5 ["SelectedKeyframes"]
       21 GETUPVAL                         R6 0
       22 JUMPIFNOT                        R6 ; [+4]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K6 ["animationData"]
       26 JUMPIF                           R5 ; [+2]
       27 GETTABLEKS                       R5 R1 K7 ["AnimationData"]
       29 JUMPIFNOT                        R5 ; [+1]
       30 JUMPIF                           R4 ; [+1]
       31 RETURN                           R0 0
       32 GETUPVAL                         R6 1
       33 GETTABLEKS                       R6 R6 K8 ["Dictionary"]
       35 GETTABLEKS                       R6 R6 K9 ["join"]
       37 NEWTABLE                         R7 0 0
       39 MOVE                             R8 R5
       40 CALL                             R6 2 1
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R7 R7 K8 ["Dictionary"]
       44 GETTABLEKS                       R7 R7 K9 ["join"]
       46 NEWTABLE                         R8 0 0
       48 GETTABLEKS                       R9 R6 K10 ["Instances"]
       50 CALL                             R7 2 1
       51 SETTABLEKS                       R7 R6 K10 ["Instances"]
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R8 R6 K11 ["Events"]
       56 CALL                             R7 1 1
       57 SETTABLEKS                       R7 R6 K11 ["Events"]
       59 GETUPVAL                         R7 2
       60 MOVE                             R8 R4
       61 CALL                             R7 1 1
       62 GETIMPORT                        R8 K13 [pairs]
       64 MOVE                             R9 R7
       65 CALL                             R8 1 3
       66 FORGPREP_NEXT                    R8
       67 GETTABLEKS                       R13 R6 K10 ["Instances"]
       69 GETUPVAL                         R14 1
       70 GETTABLEKS                       R14 R14 K8 ["Dictionary"]
       72 GETTABLEKS                       R14 R14 K9 ["join"]
       74 NEWTABLE                         R15 0 0
       76 GETTABLEKS                       R17 R6 K10 ["Instances"]
       78 GETTABLE                         R16 R17 R11
       79 CALL                             R14 2 1
       80 SETTABLE                         R14 R13 R11
       81 GETTABLEKS                       R14 R6 K10 ["Instances"]
       83 GETTABLE                         R13 R14 R11
       84 GETUPVAL                         R14 1
       85 GETTABLEKS                       R14 R14 K8 ["Dictionary"]
       87 GETTABLEKS                       R14 R14 K9 ["join"]
       89 NEWTABLE                         R15 0 0
       91 GETTABLEKS                       R17 R6 K10 ["Instances"]
       93 GETTABLE                         R16 R17 R11
       94 GETTABLEKS                       R16 R16 K14 ["Tracks"]
       96 CALL                             R14 2 1
       97 SETTABLEKS                       R14 R13 K14 ["Tracks"]
       99 GETTABLEKS                       R14 R6 K10 ["Instances"]
      101 GETTABLE                         R13 R14 R11
      102 GETIMPORT                        R14 K13 [pairs]
      104 MOVE                             R15 R12
      105 CALL                             R14 1 3
      106 FORGPREP_NEXT                    R14
      107 GETTABLEKS                       R19 R13 K14 ["Tracks"]
      109 GETUPVAL                         R20 2
      110 GETTABLEKS                       R22 R13 K14 ["Tracks"]
      112 GETTABLE                         R21 R22 R17
      113 CALL                             R20 1 1
      114 SETTABLE                         R20 R19 R17
      115 GETTABLEKS                       R20 R13 K14 ["Tracks"]
      117 GETTABLE                         R19 R20 R17
      118 GETUPVAL                         R20 3
      119 GETTABLEKS                       R20 R20 K15 ["traverse"]
      121 MOVE                             R21 R18
      122 MOVE                             R22 R19
      123 NEWCLOSURE                       R23 P0
      124 CAPTURE                          UPVAL U1
      125 CAPTURE                          UPVAL U4
      126 CAPTURE                          UPVAL U5
      127 CAPTURE                          VAL R3
      128 CAPTURE                          UPVAL U6
      129 CAPTURE                          UPVAL U7
      130 CAPTURE                          VAL R2
      131 CAPTURE                          UPVAL U8
      132 CAPTURE                          VAL R6
      133 CALL                             R20 3 0
      134 FORGLOOP                         R14 2 ; [-28]
      136 FORGLOOP                         R8 2 ; [-70]
      138 GETUPVAL                         R10 9
      139 MOVE                             R11 R6
      140 CALL                             R10 1 -1
      141 NAMECALL                         R8 R0 K16 ["dispatch"]
      143 CALL                             R8 -1 0
      144 GETUPVAL                         R10 10
      145 MOVE                             R11 R7
      146 CALL                             R10 1 -1
      147 NAMECALL                         R8 R0 K16 ["dispatch"]
      149 CALL                             R8 -1 0
      150 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          UPVAL U4
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["deepCopy"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["KeyframeUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K9 ["Util"]
       47 GETTABLEKS                       R6 R6 K13 ["AnimationData"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K14 ["Actions"]
       56 GETTABLEKS                       R7 R7 K15 ["SetSelectedKeyframes"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K16 ["Thunks"]
       65 GETTABLEKS                       R8 R8 K17 ["UpdateAnimationData"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K8 ["Src"]
       72 GETTABLEKS                       R9 R9 K9 ["Util"]
       74 GETTABLEKS                       R9 R9 K18 ["SelectionUtils"]
       76 CALL                             R8 1 1
       77 DUPCLOSURE                       R9 K19 [PROTO_0]
       78 DUPCLOSURE                       R10 K20 [PROTO_5]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R7
       86 CAPTURE                          VAL R6
       87 RETURN                           R10 1
