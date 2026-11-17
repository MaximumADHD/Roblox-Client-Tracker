PROTO_0:
        0 GETUPVAL                         R2 0
        1 ADD                              R1 R0 R2
        2 GETUPVAL                         R2 1
        3 GETUPVAL                         R3 2
        4 GETTABLEKS                       R3 R3 K0 ["SNAP_MODES"]
        6 GETTABLEKS                       R3 R3 K1 ["None"]
        8 JUMPIFEQ                         R2 R3 ; [+8]
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R2 R2 K2 ["getNearestFrame"]
       13 MOVE                             R3 R1
       14 GETUPVAL                         R4 4
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 GETUPVAL                         R5 5
       18 SUB                              R4 R0 R5
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K3 ["MAX_ANIMATION_LENGTH"]
       22 GETUPVAL                         R8 6
       23 SUB                              R7 R8 R0
       24 SUB                              R5 R6 R7
       25 FASTCALL3                        MATH_CLAMP R1 R4 R5
       27 MOVE                             R3 R1
       28 GETIMPORT                        R2 K6 [math.clamp]
       30 CALL                             R2 3 1
       31 MOVE                             R1 R2
       32 JUMPIFEQ                         R0 R1 ; [+49]
       34 GETUPVAL                         R2 7
       35 JUMPIFNOT                        R2 ; [+5]
       36 GETIMPORT                        R2 K8 [next]
       38 GETUPVAL                         R3 7
       39 CALL                             R2 1 1
       40 JUMPIF                           R2 ; [+8]
       41 GETUPVAL                         R2 8
       42 GETTABLEKS                       R2 R2 K9 ["moveEvents"]
       44 GETUPVAL                         R3 9
       45 MOVE                             R4 R0
       46 MOVE                             R5 R1
       47 CALL                             R2 3 0
       48 JUMP                             ; [+27]
       49 GETUPVAL                         R5 9
       50 GETTABLEKS                       R5 R5 K10 ["Data"]
       52 GETTABLE                         R2 R5 R0
       53 LOADNIL                          R3
       54 LOADNIL                          R4
       55 FORGPREP                         R2
       56 GETUPVAL                         R8 7
       57 GETTABLE                         R7 R8 R5
       58 JUMPIFNOT                        R7 ; [+15]
       59 GETUPVAL                         R7 8
       60 GETTABLEKS                       R7 R7 K11 ["removeEvent"]
       62 GETUPVAL                         R8 9
       63 MOVE                             R9 R0
       64 MOVE                             R10 R5
       65 CALL                             R7 3 0
       66 GETUPVAL                         R7 8
       67 GETTABLEKS                       R7 R7 K12 ["addEvent"]
       69 GETUPVAL                         R8 9
       70 MOVE                             R9 R1
       71 MOVE                             R10 R5
       72 MOVE                             R11 R6
       73 CALL                             R7 4 0
       74 FORGLOOP                         R2 2 ; [-19]
       76 GETUPVAL                         R2 10
       77 LOADNIL                          R3
       78 SETTABLE                         R3 R2 R0
       79 GETUPVAL                         R2 10
       80 LOADB                            R3 1
       81 SETTABLE                         R3 R2 R1
       82 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 NAMECALL                         R1 R0 K0 ["getState"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["animationData"]
        9 JUMPIF                           R2 ; [+5]
       10 NAMECALL                         R2 R0 K0 ["getState"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R2 R2 K2 ["AnimationData"]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R3 R3 K3 ["selectedEvents"]
       18 JUMPIF                           R3 ; [+7]
       19 NAMECALL                         R3 R0 K0 ["getState"]
       21 CALL                             R3 1 1
       22 GETTABLEKS                       R3 R3 K4 ["Status"]
       24 GETTABLEKS                       R3 R3 K5 ["SelectedEvents"]
       26 GETTABLEKS                       R4 R1 K4 ["Status"]
       28 GETTABLEKS                       R4 R4 K6 ["FrameRate"]
       30 GETTABLEKS                       R5 R1 K4 ["Status"]
       32 GETTABLEKS                       R5 R5 K7 ["SnapMode"]
       34 JUMPIFNOT                        R2 ; [+3]
       35 GETTABLEKS                       R6 R2 K8 ["Events"]
       37 JUMPIF                           R6 ; [+1]
       38 RETURN                           R0 0
       39 GETUPVAL                         R6 1
       40 GETTABLEKS                       R6 R6 K9 ["Dictionary"]
       42 GETTABLEKS                       R6 R6 K10 ["join"]
       44 NEWTABLE                         R7 0 0
       46 MOVE                             R8 R2
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 2
       49 GETTABLEKS                       R8 R6 K8 ["Events"]
       51 CALL                             R7 1 1
       52 SETTABLEKS                       R7 R6 K8 ["Events"]
       54 GETTABLEKS                       R7 R6 K8 ["Events"]
       56 GETUPVAL                         R8 1
       57 GETTABLEKS                       R8 R8 K9 ["Dictionary"]
       59 GETTABLEKS                       R8 R8 K11 ["keys"]
       61 MOVE                             R9 R3
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K14 [table.sort]
       65 MOVE                             R10 R8
       66 CALL                             R9 1 0
       67 GETUPVAL                         R10 0
       68 GETTABLEKS                       R10 R10 K15 ["newTick"]
       70 GETUPVAL                         R11 0
       71 GETTABLEKS                       R11 R11 K16 ["pivotTick"]
       73 SUB                              R9 R10 R11
       74 GETUPVAL                         R10 0
       75 GETTABLEKS                       R10 R10 K17 ["eventFilters"]
       77 GETUPVAL                         R11 2
       78 MOVE                             R12 R3
       79 CALL                             R11 1 1
       80 GETUPVAL                         R12 3
       81 GETTABLEKS                       R12 R12 K18 ["getEventBounds"]
       83 MOVE                             R13 R6
       84 MOVE                             R14 R3
       85 CALL                             R12 2 2
       86 NEWCLOSURE                       R14 P0
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R5
       89 CAPTURE                          UPVAL U4
       90 CAPTURE                          UPVAL U5
       91 CAPTURE                          VAL R4
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R10
       95 CAPTURE                          UPVAL U3
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R11
       98 LOADN                            R15 0
       99 JUMPIFNOTLT                      R9 R15 ; [+12]
      101 GETIMPORT                        R15 K20 [ipairs]
      103 MOVE                             R16 R8
      104 CALL                             R15 1 3
      105 FORGPREP_INEXT                   R15
      106 MOVE                             R20 R14
      107 MOVE                             R21 R19
      108 CALL                             R20 1 0
      109 FORGLOOP                         R15 2 [inext] ; [-4]
      111 JUMP                             ; [+9]
      112 LENGTH                           R17 R8
      113 LOADN                            R15 1
      114 LOADN                            R16 -1
      115 FORNPREP                         R15
      116 GETTABLE                         R18 R8 R17
      117 MOVE                             R19 R14
      118 MOVE                             R20 R18
      119 CALL                             R19 1 0
      120 FORNLOOP                         R15
      121 GETUPVAL                         R17 6
      122 MOVE                             R18 R11
      123 CALL                             R17 1 -1
      124 NAMECALL                         R15 R0 K21 ["dispatch"]
      126 CALL                             R15 -1 0
      127 GETUPVAL                         R17 7
      128 MOVE                             R18 R6
      129 CALL                             R17 1 -1
      130 NAMECALL                         R15 R0 K21 ["dispatch"]
      132 CALL                             R15 -1 0
      133 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 RETURN                           R1 1

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
       29 GETTABLEKS                       R4 R4 K11 ["AnimationData"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K12 ["Actions"]
       38 GETTABLEKS                       R5 R5 K13 ["SetSelectedEvents"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K14 ["Thunks"]
       47 GETTABLEKS                       R6 R6 K15 ["UpdateAnimationData"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K9 ["Util"]
       56 GETTABLEKS                       R7 R7 K16 ["Constants"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K9 ["Util"]
       65 GETTABLEKS                       R8 R8 K17 ["KeyframeUtils"]
       67 CALL                             R7 1 1
       68 DUPCLOSURE                       R8 K18 [PROTO_2]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R5
       76 RETURN                           R8 1
