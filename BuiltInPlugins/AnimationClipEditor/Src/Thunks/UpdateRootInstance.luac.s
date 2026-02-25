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
       26 GETUPVAL                         R2 6
       27 GETTABLEKS                       R1 R2 K1 ["canUseIK"]
       29 GETUPVAL                         R2 7
       30 CALL                             R1 1 2
       31 GETUPVAL                         R5 8
       32 JUMPIFNOT                        R2 ; [+6]
       33 GETUPVAL                         R8 9
       34 GETTABLEKS                       R7 R8 K2 ["IK_MODE"]
       36 GETTABLEKS                       R6 R7 K3 ["BodyPart"]
       38 JUMPIF                           R6 ; [+5]
       39 GETUPVAL                         R8 9
       40 GETTABLEKS                       R7 R8 K2 ["IK_MODE"]
       42 GETTABLEKS                       R6 R7 K4 ["FullBody"]
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
       63 GETUPVAL                         R4 6
       64 GETTABLEKS                       R3 R4 K5 ["getPoseCFrames"]
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
       81 GETUPVAL                         R4 13
       82 GETTABLEKS                       R3 R4 K6 ["getAnimSaves"]
       84 GETUPVAL                         R4 7
       85 CALL                             R3 1 1
       86 LENGTH                           R4 R3
       87 LOADN                            R5 0
       88 JUMPIFNOTLT                      R5 R4 ; [+39]
       90 NEWTABLE                         R4 0 0
       92 MOVE                             R5 R3
       93 LOADNIL                          R6
       94 LOADNIL                          R7
       95 FORGPREP                         R5
       96 GETTABLEKS                       R10 R9 K7 ["isLegacyAnimSaves"]
       98 JUMPIFNOT                        R10 ; [+7]
       99 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
      101 MOVE                             R11 R4
      102 MOVE                             R12 R9
      103 GETIMPORT                        R10 K10 [table.insert]
      105 CALL                             R10 2 0
      106 FORGLOOP                         R5 2 ; [-11]
      108 LENGTH                           R5 R4
      109 LOADN                            R6 0
      110 JUMPIFNOTLT                      R6 R5 ; [+8]
      112 GETUPVAL                         R7 14
      113 MOVE                             R8 R4
      114 CALL                             R7 1 -1
      115 NAMECALL                         R5 R0 K0 ["dispatch"]
      117 CALL                             R5 -1 0
      118 JUMP                             ; [+21]
      119 GETUPVAL                         R7 15
      120 GETUPVAL                         R8 7
      121 GETUPVAL                         R9 1
      122 GETUPVAL                         R10 2
      123 CALL                             R7 3 -1
      124 NAMECALL                         R5 R0 K0 ["dispatch"]
      126 CALL                             R5 -1 0
      127 JUMP                             ; [+12]
      128 GETUPVAL                         R6 16
      129 GETUPVAL                         R7 2
      130 LOADK                            R9 K11 ["Title"]
      131 LOADK                            R10 K12 ["DefaultAnimationName"]
      132 NAMECALL                         R7 R7 K13 ["getText"]
      134 CALL                             R7 3 1
      135 GETUPVAL                         R8 1
      136 CALL                             R6 2 -1
      137 NAMECALL                         R4 R0 K0 ["dispatch"]
      139 CALL                             R4 -1 0
      140 GETUPVAL                         R6 17
      141 NEWTABLE                         R7 0 0
      143 CALL                             R6 1 -1
      144 NAMECALL                         R4 R0 K0 ["dispatch"]
      146 CALL                             R4 -1 0
      147 GETUPVAL                         R6 18
      148 GETUPVAL                         R7 1
      149 CALL                             R6 1 -1
      150 NAMECALL                         R4 R0 K0 ["dispatch"]
      152 CALL                             R4 -1 0
      153 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
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
       16 CAPTURE                          UPVAL U12
       17 CAPTURE                          UPVAL U13
       18 CAPTURE                          UPVAL U14
       19 CAPTURE                          UPVAL U15
       20 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetClipboard"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetIKEnabled"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SetIKMode"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K7 [require]
       28 GETTABLEKS                       R6 R1 K11 ["SetLegacyAnimationInstances"]
       30 CALL                             R5 1 1
       31 GETIMPORT                        R6 K7 [require]
       33 GETTABLEKS                       R7 R1 K12 ["SetPinnedParts"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K7 [require]
       38 GETTABLEKS                       R8 R1 K13 ["SetRootInstance"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K7 [require]
       43 GETTABLEKS                       R9 R1 K14 ["SetShowTree"]
       45 CALL                             R8 1 1
       46 GETIMPORT                        R9 K7 [require]
       48 GETTABLEKS                       R10 R1 K15 ["SetStartingPose"]
       50 CALL                             R9 1 1
       51 GETTABLEKS                       R11 R0 K4 ["Src"]
       53 GETTABLEKS                       R10 R11 K16 ["Thunks"]
       55 GETIMPORT                        R11 K7 [require]
       57 GETTABLEKS                       R12 R10 K17 ["AttachEditor"]
       59 CALL                             R11 1 1
       60 GETIMPORT                        R12 K7 [require]
       62 GETTABLEKS                       R13 R10 K18 ["CreateNewAnimation"]
       64 CALL                             R12 1 1
       65 GETIMPORT                        R13 K7 [require]
       67 GETTABLEKS                       R14 R10 K19 ["LoadLatestAnimation"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K7 [require]
       72 GETTABLEKS                       R15 R10 K20 ["ReleaseEditor"]
       74 CALL                             R14 1 1
       75 GETIMPORT                        R15 K7 [require]
       77 GETTABLEKS                       R16 R10 K21 ["SetSelectedTracks"]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R17 R0 K4 ["Src"]
       82 GETTABLEKS                       R16 R17 K22 ["Util"]
       84 GETIMPORT                        R17 K7 [require]
       86 GETTABLEKS                       R18 R16 K23 ["Constants"]
       88 CALL                             R17 1 1
       89 GETIMPORT                        R18 K7 [require]
       91 GETTABLEKS                       R19 R16 K24 ["RigIK"]
       93 CALL                             R18 1 1
       94 GETIMPORT                        R19 K7 [require]
       96 GETTABLEKS                       R20 R16 K25 ["RigUtils"]
       98 CALL                             R19 1 1
       99 DUPCLOSURE                       R20 K26 [PROTO_1]
      100 CAPTURE                          VAL R14
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R8
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R18
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R17
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R15
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R19
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R13
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R2
      115 CAPTURE                          VAL R11
      116 RETURN                           R20 1
