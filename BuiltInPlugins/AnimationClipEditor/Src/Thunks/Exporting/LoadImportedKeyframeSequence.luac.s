PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["RootInstance"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 GETUPVAL                         R5 0
       12 LOADK                            R7 K3 ["KeyframeSequence"]
       13 NAMECALL                         R5 R5 K4 ["IsA"]
       15 CALL                             R5 2 1
       16 JUMPIFNOT                        R5 ; [+8]
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K5 ["fromKeyframeSequence"]
       20 GETUPVAL                         R6 0
       21 CALL                             R5 1 2
       22 MOVE                             R3 R5
       23 MOVE                             R4 R6
       24 JUMP                             ; [+1]
       25 RETURN                           R0 0
       26 GETUPVAL                         R5 2
       27 CALL                             R5 0 1
       28 JUMPIFNOT                        R5 ; [+66]
       29 GETUPVAL                         R5 3
       30 JUMPIFNOT                        R5 ; [+64]
       31 GETUPVAL                         R5 3
       32 JUMPIFEQKN                       R5 K6 [1] ; [+62]
       34 GETIMPORT                        R5 K8 [pairs]
       36 GETTABLEKS                       R6 R3 K9 ["Instances"]
       38 GETTABLEKS                       R6 R6 K10 ["Root"]
       40 GETTABLEKS                       R6 R6 K11 ["Tracks"]
       42 CALL                             R5 1 3
       43 FORGPREP_NEXT                    R5
       44 GETTABLEKS                       R10 R9 K12 ["Type"]
       46 GETUPVAL                         R11 4
       47 GETTABLEKS                       R11 R11 K13 ["TRACK_TYPES"]
       49 GETTABLEKS                       R11 R11 K14 ["CFrame"]
       51 JUMPIFNOTEQ                      R10 R11 ; [+41]
       53 GETIMPORT                        R10 K16 [ipairs]
       55 GETTABLEKS                       R11 R9 K17 ["Keyframes"]
       57 CALL                             R10 1 3
       58 FORGPREP_INEXT                   R10
       59 GETTABLEKS                       R16 R9 K18 ["Data"]
       61 GETTABLE                         R15 R16 R14
       62 JUMPIFNOT                        R15 ; [+28]
       63 GETTABLEKS                       R16 R15 K19 ["Value"]
       65 JUMPIFNOT                        R16 ; [+25]
       66 GETTABLEKS                       R16 R15 K19 ["Value"]
       68 NAMECALL                         R17 R16 K20 ["GetComponents"]
       70 CALL                             R17 1 12
       71 GETIMPORT                        R29 K22 [CFrame.new]
       73 GETUPVAL                         R31 3
       74 MUL                              R30 R17 R31
       75 GETUPVAL                         R32 3
       76 MUL                              R31 R18 R32
       77 GETUPVAL                         R33 3
       78 MUL                              R32 R19 R33
       79 MOVE                             R33 R20
       80 MOVE                             R34 R21
       81 MOVE                             R35 R22
       82 MOVE                             R36 R23
       83 MOVE                             R37 R24
       84 MOVE                             R38 R25
       85 MOVE                             R39 R26
       86 MOVE                             R40 R27
       87 MOVE                             R41 R28
       88 CALL                             R29 12 1
       89 SETTABLEKS                       R29 R15 K19 ["Value"]
       91 FORGLOOP                         R10 2 [inext] ; [-33]
       93 FORGLOOP                         R5 2 ; [-50]
       95 GETUPVAL                         R5 5
       96 CALL                             R5 0 1
       97 JUMPIFNOT                        R5 ; [+12]
       98 GETTABLEKS                       R5 R3 K23 ["Metadata"]
      100 GETUPVAL                         R6 0
      101 GETTABLEKS                       R6 R6 K24 ["Name"]
      103 JUMPIF                           R6 ; [+3]
      104 GETUPVAL                         R6 4
      105 GETTABLEKS                       R6 R6 K25 ["DEFAULT_IMPORTED_NAME"]
      107 SETTABLEKS                       R6 R5 K24 ["Name"]
      109 JUMP                             ; [+7]
      110 GETTABLEKS                       R5 R3 K23 ["Metadata"]
      112 GETUPVAL                         R6 4
      113 GETTABLEKS                       R6 R6 K25 ["DEFAULT_IMPORTED_NAME"]
      115 SETTABLEKS                       R6 R5 K24 ["Name"]
      117 GETUPVAL                         R7 6
      118 MOVE                             R8 R3
      119 GETUPVAL                         R9 7
      120 CALL                             R7 2 -1
      121 NAMECALL                         R5 R0 K26 ["dispatch"]
      123 CALL                             R5 -1 0
      124 GETUPVAL                         R7 8
      125 LOADB                            R8 0
      126 CALL                             R7 1 -1
      127 NAMECALL                         R5 R0 K26 ["dispatch"]
      129 CALL                             R5 -1 0
      130 GETUPVAL                         R7 9
      131 LOADB                            R8 0
      132 CALL                             R7 1 -1
      133 NAMECALL                         R5 R0 K26 ["dispatch"]
      135 CALL                             R5 -1 0
      136 GETUPVAL                         R7 10
      137 MOVE                             R8 R4
      138 CALL                             R7 1 -1
      139 NAMECALL                         R5 R0 K26 ["dispatch"]
      141 CALL                             R5 -1 0
      142 GETUPVAL                         R5 7
      143 JUMPIFNOT                        R5 ; [+14]
      144 GETUPVAL                         R5 7
      145 LOADK                            R7 K27 ["onImportAnimationFromFile"]
      146 GETTABLEKS                       R9 R3 K23 ["Metadata"]
      148 JUMPIFNOT                        R9 ; [+5]
      149 GETTABLEKS                       R8 R3 K23 ["Metadata"]
      151 GETTABLEKS                       R8 R8 K28 ["Guid"]
      153 JUMP                             ; [+1]
      154 LOADNIL                          R8
      155 NAMECALL                         R5 R5 K29 ["report"]
      157 CALL                             R5 3 0
      158 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R2
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R3
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 CAPTURE                          UPVAL U7
       12 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R1 K5 ["Actions"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R3 R1 K8 ["SetIsDirty"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K7 [require]
       18 GETTABLEKS                       R4 R1 K9 ["SetIsLegacyAnimSaves"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K7 [require]
       23 GETTABLEKS                       R5 R1 K10 ["SetFrameRate"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R0 K4 ["Src"]
       28 GETTABLEKS                       R5 R5 K11 ["Thunks"]
       30 GETIMPORT                        R6 K7 [require]
       32 GETTABLEKS                       R7 R5 K12 ["LoadAnimationData"]
       34 CALL                             R6 1 1
       35 GETTABLEKS                       R7 R0 K4 ["Src"]
       37 GETTABLEKS                       R7 R7 K13 ["Util"]
       39 GETIMPORT                        R8 K7 [require]
       41 GETTABLEKS                       R9 R7 K14 ["Constants"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K7 [require]
       46 GETTABLEKS                       R10 R7 K15 ["RigSerialization"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K7 [require]
       51 GETTABLEKS                       R11 R0 K16 ["LuaFlags"]
       53 GETTABLEKS                       R11 R11 K17 ["GetFFlagUseFileNameForImportedAnimation"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K7 [require]
       58 GETTABLEKS                       R12 R0 K16 ["LuaFlags"]
       60 GETTABLEKS                       R12 R12 K18 ["GetFFlagACEImportScale"]
       62 CALL                             R11 1 1
       63 DUPCLOSURE                       R12 K19 [PROTO_1]
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R10
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R4
       72 RETURN                           R12 1
