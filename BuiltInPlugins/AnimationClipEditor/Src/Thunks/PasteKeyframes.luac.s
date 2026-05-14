PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["Clipboard"]
        7 GETTABLEKS                       R3 R1 K3 ["AnimationData"]
        9 GETTABLEKS                       R4 R1 K4 ["EditorMode"]
       11 JUMPIFNOT                        R3 ; [+1]
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETUPVAL                         R5 0
       15 MOVE                             R6 R3
       16 CALL                             R5 1 1
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K5 ["isChannelAnimation"]
       20 MOVE                             R7 R5
       21 CALL                             R6 1 1
       22 LOADNIL                          R7
       23 GETIMPORT                        R8 K7 [pairs]
       25 MOVE                             R9 R2
       26 CALL                             R8 1 3
       27 FORGPREP_NEXT                    R8
       28 GETIMPORT                        R13 K7 [pairs]
       30 MOVE                             R14 R12
       31 CALL                             R13 1 3
       32 FORGPREP_NEXT                    R13
       33 GETIMPORT                        R18 K7 [pairs]
       35 GETTABLEKS                       R19 R17 K8 ["Data"]
       37 CALL                             R18 1 3
       38 FORGPREP_NEXT                    R18
       39 JUMPIFNOT                        R7 ; [+8]
       40 FASTCALL2                        MATH_MIN R7 R21 ; [+5]
       42 MOVE                             R24 R7
       43 MOVE                             R25 R21
       44 GETIMPORT                        R23 K11 [math.min]
       46 CALL                             R23 2 1
       47 JUMPIF                           R23 ; [+1]
       48 MOVE                             R23 R21
       49 MOVE                             R7 R23
       50 FORGLOOP                         R18 2 ; [-12]
       52 FORGLOOP                         R13 2 ; [-20]
       54 FORGLOOP                         R8 2 ; [-27]
       56 GETIMPORT                        R8 K7 [pairs]
       58 MOVE                             R9 R2
       59 CALL                             R8 1 3
       60 FORGPREP_NEXT                    R8
       61 GETTABLEKS                       R14 R5 K12 ["Instances"]
       63 GETTABLE                         R13 R14 R11
       64 GETIMPORT                        R14 K14 [ipairs]
       66 MOVE                             R15 R12
       67 CALL                             R14 1 3
       68 FORGPREP_INEXT                   R14
       69 GETUPVAL                         R19 2
       70 GETTABLEKS                       R19 R19 K15 ["List"]
       72 GETTABLEKS                       R19 R19 K16 ["join"]
       74 NEWTABLE                         R20 0 1
       76 GETTABLEKS                       R21 R18 K17 ["TopTrackName"]
       78 SETLIST                          R20 R21 1 [1]
       80 GETTABLEKS                       R21 R18 K18 ["RelPath"]
       82 CALL                             R19 2 1
       83 GETUPVAL                         R20 1
       84 GETTABLEKS                       R20 R20 K19 ["getTrack"]
       86 MOVE                             R21 R5
       87 MOVE                             R22 R11
       88 NEWTABLE                         R23 0 1
       90 GETTABLEKS                       R24 R18 K17 ["TopTrackName"]
       92 SETLIST                          R23 R24 1 [1]
       94 CALL                             R20 3 1
       95 JUMPIFNOTEQKNIL                  R20 ; [+31]
       97 GETUPVAL                         R21 1
       98 GETTABLEKS                       R21 R21 K20 ["addTrack"]
      100 GETTABLEKS                       R22 R13 K21 ["Tracks"]
      102 GETTABLEKS                       R23 R18 K17 ["TopTrackName"]
      104 GETTABLEKS                       R24 R18 K22 ["TopTrackType"]
      106 MOVE                             R25 R6
      107 GETTABLEKS                       R26 R18 K23 ["RotationType"]
      109 GETTABLEKS                       R27 R18 K24 ["EulerAnglesOrder"]
      111 CALL                             R21 6 0
      112 GETUPVAL                         R23 3
      113 MOVE                             R24 R11
      114 GETTABLEKS                       R25 R18 K17 ["TopTrackName"]
      116 GETTABLEKS                       R26 R18 K22 ["TopTrackType"]
      118 GETTABLEKS                       R27 R18 K23 ["RotationType"]
      120 GETTABLEKS                       R28 R18 K24 ["EulerAnglesOrder"]
      122 GETUPVAL                         R29 4
      123 CALL                             R23 6 -1
      124 NAMECALL                         R21 R0 K25 ["dispatch"]
      126 CALL                             R21 -1 0
      127 GETUPVAL                         R21 1
      128 GETTABLEKS                       R21 R21 K19 ["getTrack"]
      130 MOVE                             R22 R5
      131 MOVE                             R23 R11
      132 MOVE                             R24 R19
      133 CALL                             R21 3 1
      134 JUMPIFNOT                        R21 ; [+42]
      135 GETTABLEKS                       R22 R21 K26 ["Type"]
      137 GETTABLEKS                       R23 R18 K26 ["Type"]
      139 JUMPIFNOTEQ                      R22 R23 ; [+37]
      141 GETIMPORT                        R22 K7 [pairs]
      143 GETTABLEKS                       R23 R18 K8 ["Data"]
      145 CALL                             R22 1 3
      146 FORGPREP_NEXT                    R22
      147 GETUPVAL                         R28 5
      148 SUB                              R29 R25 R7
      149 ADD                              R27 R28 R29
      150 GETUPVAL                         R28 1
      151 GETTABLEKS                       R28 R28 K27 ["addKeyframe"]
      153 MOVE                             R29 R21
      154 MOVE                             R30 R27
      155 MOVE                             R31 R26
      156 CALL                             R28 3 0
      157 GETUPVAL                         R28 4
      158 LOADK                            R30 K28 ["onAddKeyframe"]
      159 GETTABLEKS                       R31 R18 K17 ["TopTrackName"]
      161 MOVE                             R32 R4
      162 GETTABLEKS                       R34 R5 K29 ["Metadata"]
      164 JUMPIFNOT                        R34 ; [+5]
      165 GETTABLEKS                       R33 R5 K29 ["Metadata"]
      167 GETTABLEKS                       R33 R33 K30 ["Guid"]
      169 JUMP                             ; [+1]
      170 LOADNIL                          R33
      171 NAMECALL                         R28 R28 K31 ["report"]
      173 CALL                             R28 5 0
      174 FORGLOOP                         R22 2 ; [-28]
      176 JUMP                             ; [+7]
      177 GETUPVAL                         R24 6
      178 LOADK                            R25 K32 ["CannotPasteError"]
      179 LOADB                            R26 1
      180 CALL                             R24 2 -1
      181 NAMECALL                         R22 R0 K25 ["dispatch"]
      183 CALL                             R22 -1 0
      184 FORGLOOP                         R14 2 [inext] ; [-116]
      186 FORGLOOP                         R8 2 ; [-126]
      188 GETUPVAL                         R10 7
      189 MOVE                             R11 R5
      190 CALL                             R10 1 -1
      191 NAMECALL                         R8 R0 K25 ["dispatch"]
      193 CALL                             R8 -1 0
      194 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R1
        6 CAPTURE                          VAL R0
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
       36 GETTABLEKS                       R5 R5 K12 ["Thunks"]
       38 GETTABLEKS                       R5 R5 K13 ["UpdateAnimationData"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K12 ["Thunks"]
       47 GETTABLEKS                       R6 R6 K14 ["AddTrack"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K8 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Types"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K8 ["Src"]
       61 GETTABLEKS                       R8 R8 K16 ["Actions"]
       63 GETTABLEKS                       R8 R8 K17 ["SetNotification"]
       65 CALL                             R7 1 1
       66 DUPCLOSURE                       R8 K18 [PROTO_1]
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R4
       73 RETURN                           R8 1
