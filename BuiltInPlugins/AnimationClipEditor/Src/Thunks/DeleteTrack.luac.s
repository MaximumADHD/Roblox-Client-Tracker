PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R3 R2 K2 ["Tracks"]
        7 GETTABLEKS                       R4 R2 K3 ["SelectedTracks"]
        9 GETTABLEKS                       R5 R2 K4 ["RootInstance"]
       11 GETTABLEKS                       R6 R2 K5 ["EditorMode"]
       13 JUMPIFNOTEQKNIL                  R5 ; [+2]
       15 RETURN                           R0 0
       16 LOADNIL                          R7
       17 GETIMPORT                        R8 K7 [ipairs]
       19 MOVE                             R9 R3
       20 CALL                             R8 1 3
       21 FORGPREP_INEXT                   R8
       22 GETTABLEKS                       R13 R12 K8 ["Name"]
       24 GETUPVAL                         R14 0
       25 JUMPIFNOTEQ                      R13 R14 ; [+2]
       27 MOVE                             R7 R11
       28 FORGLOOP                         R8 2 [inext] ; [-7]
       30 JUMPIFNOT                        R4 ; [+29]
       31 GETIMPORT                        R8 K7 [ipairs]
       33 MOVE                             R9 R4
       34 CALL                             R8 1 3
       35 FORGPREP_INEXT                   R8
       36 GETUPVAL                         R13 0
       37 GETTABLEN                        R14 R12 1
       38 JUMPIFNOTEQ                      R13 R14 ; [+7]
       40 GETIMPORT                        R13 K11 [table.remove]
       42 MOVE                             R14 R4
       43 MOVE                             R15 R11
       44 CALL                             R13 2 0
       45 JUMP                             ; [+2]
       46 FORGLOOP                         R8 2 [inext] ; [-11]
       48 GETUPVAL                         R10 1
       49 GETUPVAL                         R11 2
       50 GETTABLEKS                       R11 R11 K12 ["Dictionary"]
       52 GETTABLEKS                       R11 R11 K13 ["join"]
       54 MOVE                             R12 R4
       55 CALL                             R11 1 -1
       56 CALL                             R10 -1 -1
       57 NAMECALL                         R8 R0 K14 ["dispatch"]
       59 CALL                             R8 -1 0
       60 JUMPIFNOT                        R7 ; [+94]
       61 GETUPVAL                         R8 2
       62 GETTABLEKS                       R8 R8 K15 ["List"]
       64 GETTABLEKS                       R8 R8 K16 ["removeIndex"]
       66 MOVE                             R9 R3
       67 MOVE                             R10 R7
       68 CALL                             R8 2 1
       69 GETUPVAL                         R11 3
       70 MOVE                             R12 R8
       71 CALL                             R11 1 -1
       72 NAMECALL                         R9 R0 K14 ["dispatch"]
       74 CALL                             R9 -1 0
       75 GETTABLEKS                       R9 R1 K17 ["AnimationData"]
       77 JUMPIF                           R9 ; [+1]
       78 RETURN                           R0 0
       79 GETIMPORT                        R10 K19 [pairs]
       81 GETTABLEKS                       R11 R9 K20 ["Instances"]
       83 CALL                             R10 1 3
       84 FORGPREP_NEXT                    R10
       85 GETIMPORT                        R15 K19 [pairs]
       87 GETTABLEKS                       R16 R14 K2 ["Tracks"]
       89 CALL                             R15 1 3
       90 FORGPREP_NEXT                    R15
       91 GETUPVAL                         R20 0
       92 JUMPIFNOTEQ                      R18 R20 ; [+58]
       94 GETUPVAL                         R20 4
       95 CALL                             R20 0 1
       96 JUMPIF                           R20 ; [+5]
       97 GETUPVAL                         R20 5
       98 GETTABLEKS                       R20 R20 K21 ["clearPose"]
      100 MOVE                             R21 R5
      101 CALL                             R20 1 0
      102 GETTABLEKS                       R20 R18 K22 ["Keyframes"]
      104 JUMPIFNOT                        R20 ; [+5]
      105 GETUPVAL                         R21 6
      106 GETTABLEKS                       R22 R18 K22 ["Keyframes"]
      108 CALL                             R21 1 1
      109 NOT                              R20 R21
      110 GETUPVAL                         R21 7
      111 MOVE                             R22 R9
      112 CALL                             R21 1 1
      113 GETTABLEKS                       R23 R21 K20 ["Instances"]
      115 GETTABLE                         R22 R23 R13
      116 GETTABLEKS                       R22 R22 K2 ["Tracks"]
      118 LOADNIL                          R23
      119 SETTABLE                         R23 R22 R18
      120 GETUPVAL                         R24 8
      121 MOVE                             R25 R21
      122 CALL                             R24 1 -1
      123 NAMECALL                         R22 R0 K14 ["dispatch"]
      125 CALL                             R22 -1 0
      126 GETUPVAL                         R24 9
      127 NEWTABLE                         R25 0 0
      129 CALL                             R24 1 -1
      130 NAMECALL                         R22 R0 K14 ["dispatch"]
      132 CALL                             R22 -1 0
      133 GETUPVAL                         R22 10
      134 LOADK                            R24 K23 ["onTrackDeleted"]
      135 GETUPVAL                         R25 0
      136 MOVE                             R26 R20
      137 MOVE                             R27 R6
      138 GETTABLEKS                       R29 R9 K24 ["Metadata"]
      140 JUMPIFNOT                        R29 ; [+5]
      141 GETTABLEKS                       R28 R9 K24 ["Metadata"]
      143 GETTABLEKS                       R28 R28 K25 ["Guid"]
      145 JUMP                             ; [+1]
      146 LOADNIL                          R28
      147 NAMECALL                         R22 R22 K26 ["report"]
      149 CALL                             R22 6 0
      150 RETURN                           R0 0
      151 FORGLOOP                         R15 2 ; [-61]
      153 FORGLOOP                         R10 2 ; [-69]
      155 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 CAPTURE                          UPVAL U8
       11 CAPTURE                          VAL R1
       12 RETURN                           R2 1

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
       14 GETTABLEKS                       R2 R0 K8 ["Src"]
       16 GETTABLEKS                       R2 R2 K9 ["Actions"]
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R2 K10 ["SetSelectedKeyframes"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K8 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Thunks"]
       27 GETIMPORT                        R5 K5 [require]
       29 GETTABLEKS                       R6 R4 K12 ["SortAndSetTracks"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K5 [require]
       34 GETTABLEKS                       R7 R4 K13 ["SetSelectedTracks"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K5 [require]
       39 GETTABLEKS                       R8 R4 K14 ["UpdateAnimationData"]
       41 CALL                             R7 1 1
       42 GETTABLEKS                       R8 R0 K8 ["Src"]
       44 GETTABLEKS                       R8 R8 K15 ["Util"]
       46 GETIMPORT                        R9 K5 [require]
       48 GETTABLEKS                       R10 R0 K8 ["Src"]
       50 GETTABLEKS                       R10 R10 K15 ["Util"]
       52 GETTABLEKS                       R10 R10 K16 ["deepCopy"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R0 K8 ["Src"]
       59 GETTABLEKS                       R11 R11 K15 ["Util"]
       61 GETTABLEKS                       R11 R11 K17 ["isEmpty"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R8 K18 ["RigUtils"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K5 [require]
       71 GETTABLEKS                       R13 R0 K19 ["LuaFlags"]
       73 GETTABLEKS                       R13 R13 K20 ["GetFFlagEngineAnimator"]
       75 CALL                             R12 1 1
       76 DUPCLOSURE                       R13 K21 [PROTO_1]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R5
       80 CAPTURE                          VAL R12
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R3
       86 RETURN                           R13 1
