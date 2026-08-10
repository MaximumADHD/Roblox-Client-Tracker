PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETUPVAL                         R5 2
        3 CALL                             R3 2 -1
        4 NAMECALL                         R1 R0 K0 ["dispatch"]
        6 CALL                             R1 -1 0
        7 GETUPVAL                         R3 3
        8 NEWTABLE                         R4 0 0
       10 CALL                             R3 1 -1
       11 NAMECALL                         R1 R0 K0 ["dispatch"]
       13 CALL                             R1 -1 0
       14 GETUPVAL                         R3 4
       15 LOADB                            R4 0
       16 CALL                             R3 1 -1
       17 NAMECALL                         R1 R0 K0 ["dispatch"]
       19 CALL                             R1 -1 0
       20 GETUPVAL                         R3 5
       21 LOADB                            R4 0
       22 CALL                             R3 1 -1
       23 NAMECALL                         R1 R0 K0 ["dispatch"]
       25 CALL                             R1 -1 0
       26 GETUPVAL                         R1 6
       27 GETTABLEKS                       R1 R1 K1 ["canUseIK"]
       29 GETUPVAL                         R2 7
       30 CALL                             R1 1 2
       31 GETUPVAL                         R5 8
       32 JUMPIFNOT                        R2 ; [+6]
       33 GETUPVAL                         R6 9
       34 GETTABLEKS                       R6 R6 K2 ["IK_MODE"]
       36 GETTABLEKS                       R6 R6 K3 ["BodyPart"]
       38 JUMPIF                           R6 ; [+5]
       39 GETUPVAL                         R6 9
       40 GETTABLEKS                       R6 R6 K2 ["IK_MODE"]
       42 GETTABLEKS                       R6 R6 K4 ["FullBody"]
       44 CALL                             R5 1 -1
       45 NAMECALL                         R3 R0 K0 ["dispatch"]
       47 CALL                             R3 -1 0
       48 GETUPVAL                         R5 10
       49 GETUPVAL                         R6 7
       50 CALL                             R5 1 -1
       51 NAMECALL                         R3 R0 K0 ["dispatch"]
       53 CALL                             R3 -1 0
       54 GETUPVAL                         R5 11
       55 NEWTABLE                         R6 0 0
       57 CALL                             R5 1 -1
       58 NAMECALL                         R3 R0 K0 ["dispatch"]
       60 CALL                             R3 -1 0
       61 JUMPIFNOT                        R1 ; [+13]
       62 JUMPIFNOT                        R2 ; [+12]
       63 GETUPVAL                         R3 6
       64 GETTABLEKS                       R3 R3 K5 ["getPoseCFrames"]
       66 GETUPVAL                         R4 7
       67 CALL                             R3 1 1
       68 GETUPVAL                         R6 12
       69 MOVE                             R7 R3
       70 CALL                             R6 1 -1
       71 NAMECALL                         R4 R0 K0 ["dispatch"]
       73 CALL                             R4 -1 0
       74 JUMP                             ; [+6]
       75 GETUPVAL                         R5 12
       76 LOADNIL                          R6
       77 CALL                             R5 1 -1
       78 NAMECALL                         R3 R0 K0 ["dispatch"]
       80 CALL                             R3 -1 0
       81 GETUPVAL                         R3 13
       82 GETTABLEKS                       R3 R3 K6 ["getAnimSaves"]
       84 GETUPVAL                         R4 7
       85 CALL                             R3 1 1
       86 GETUPVAL                         R4 14
       87 CALL                             R4 0 1
       88 JUMPIFNOT                        R4 ; [+15]
       89 GETUPVAL                         R4 15
       90 JUMPIFEQKNIL                     R4 ; [+13]
       92 GETUPVAL                         R6 16
       93 GETUPVAL                         R7 15
       94 GETTABLEKS                       R7 R7 K7 ["Name"]
       96 LOADB                            R8 0
       97 GETUPVAL                         R9 1
       98 GETUPVAL                         R10 15
       99 CALL                             R6 4 -1
      100 NAMECALL                         R4 R0 K0 ["dispatch"]
      102 CALL                             R4 -1 0
      103 JUMP                             ; [+54]
      104 LENGTH                           R4 R3
      105 LOADN                            R5 0
      106 JUMPIFNOTLT                      R5 R4 ; [+39]
      108 NEWTABLE                         R4 0 0
      110 MOVE                             R5 R3
      111 LOADNIL                          R6
      112 LOADNIL                          R7
      113 FORGPREP                         R5
      114 GETTABLEKS                       R10 R9 K8 ["isLegacyAnimSaves"]
      116 JUMPIFNOT                        R10 ; [+7]
      117 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      119 MOVE                             R11 R4
      120 MOVE                             R12 R9
      121 GETIMPORT                        R10 K11 [table.insert]
      123 CALL                             R10 2 0
      124 FORGLOOP                         R5 2 ; [-11]
      126 LENGTH                           R5 R4
      127 LOADN                            R6 0
      128 JUMPIFNOTLT                      R6 R5 ; [+8]
      130 GETUPVAL                         R7 17
      131 MOVE                             R8 R4
      132 CALL                             R7 1 -1
      133 NAMECALL                         R5 R0 K0 ["dispatch"]
      135 CALL                             R5 -1 0
      136 JUMP                             ; [+21]
      137 GETUPVAL                         R7 18
      138 GETUPVAL                         R8 7
      139 GETUPVAL                         R9 1
      140 GETUPVAL                         R10 2
      141 CALL                             R7 3 -1
      142 NAMECALL                         R5 R0 K0 ["dispatch"]
      144 CALL                             R5 -1 0
      145 JUMP                             ; [+12]
      146 GETUPVAL                         R6 19
      147 GETUPVAL                         R7 2
      148 LOADK                            R9 K12 ["Title"]
      149 LOADK                            R10 K13 ["DefaultAnimationName"]
      150 NAMECALL                         R7 R7 K14 ["getText"]
      152 CALL                             R7 3 1
      153 GETUPVAL                         R8 1
      154 CALL                             R6 2 -1
      155 NAMECALL                         R4 R0 K0 ["dispatch"]
      157 CALL                             R4 -1 0
      158 GETUPVAL                         R6 20
      159 NEWTABLE                         R7 0 0
      161 CALL                             R6 1 -1
      162 NAMECALL                         R4 R0 K0 ["dispatch"]
      164 CALL                             R4 -1 0
      165 GETUPVAL                         R6 21
      166 GETUPVAL                         R7 1
      167 CALL                             R6 1 -1
      168 NAMECALL                         R4 R0 K0 ["dispatch"]
      170 CALL                             R4 -1 0
      171 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          VAL R2
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CAPTURE                          UPVAL U9
       14 CAPTURE                          UPVAL U10
       15 CAPTURE                          UPVAL U11
       16 CAPTURE                          VAL R3
       17 CAPTURE                          UPVAL U12
       18 CAPTURE                          UPVAL U13
       19 CAPTURE                          UPVAL U14
       20 CAPTURE                          UPVAL U15
       21 CAPTURE                          UPVAL U16
       22 CAPTURE                          UPVAL U17
       23 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getFFlagAnimationGenOpenACE"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R0 K6 ["Src"]
       18 GETTABLEKS                       R2 R2 K9 ["Actions"]
       20 GETIMPORT                        R3 K5 [require]
       22 GETTABLEKS                       R4 R2 K10 ["SetClipboard"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R2 K11 ["SetIKEnabled"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R2 K12 ["SetIKMode"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K5 [require]
       37 GETTABLEKS                       R7 R2 K13 ["SetLegacyAnimationInstances"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K5 [require]
       42 GETTABLEKS                       R8 R2 K14 ["SetPinnedParts"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R9 R2 K15 ["SetRootInstance"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R2 K16 ["SetShowTree"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K5 [require]
       57 GETTABLEKS                       R11 R2 K17 ["SetStartingPose"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R11 R0 K6 ["Src"]
       62 GETTABLEKS                       R11 R11 K18 ["Thunks"]
       64 GETIMPORT                        R12 K5 [require]
       66 GETTABLEKS                       R13 R11 K19 ["AttachEditor"]
       68 CALL                             R12 1 1
       69 GETIMPORT                        R13 K5 [require]
       71 GETTABLEKS                       R14 R11 K20 ["CreateNewAnimation"]
       73 CALL                             R13 1 1
       74 GETIMPORT                        R14 K5 [require]
       76 GETTABLEKS                       R15 R11 K21 ["Exporting"]
       78 GETTABLEKS                       R15 R15 K22 ["LoadAnimation"]
       80 CALL                             R14 1 1
       81 GETIMPORT                        R15 K5 [require]
       83 GETTABLEKS                       R16 R11 K23 ["LoadLatestAnimation"]
       85 CALL                             R15 1 1
       86 GETIMPORT                        R16 K5 [require]
       88 GETTABLEKS                       R17 R11 K24 ["ReleaseEditor"]
       90 CALL                             R16 1 1
       91 GETIMPORT                        R17 K5 [require]
       93 GETTABLEKS                       R18 R11 K25 ["SetSelectedTracks"]
       95 CALL                             R17 1 1
       96 GETTABLEKS                       R18 R0 K6 ["Src"]
       98 GETTABLEKS                       R18 R18 K26 ["Util"]
      100 GETIMPORT                        R19 K5 [require]
      102 GETTABLEKS                       R20 R18 K27 ["Constants"]
      104 CALL                             R19 1 1
      105 GETIMPORT                        R20 K5 [require]
      107 GETTABLEKS                       R21 R18 K28 ["RigIK"]
      109 CALL                             R20 1 1
      110 GETIMPORT                        R21 K5 [require]
      112 GETTABLEKS                       R22 R18 K29 ["RigUtils"]
      114 CALL                             R21 1 1
      115 DUPCLOSURE                       R22 K30 [PROTO_1]
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R7
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R20
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R8
      124 CAPTURE                          VAL R17
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R21
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R12
      134 RETURN                           R22 1
