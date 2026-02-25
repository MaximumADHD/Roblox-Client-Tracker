PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R3 R1 K2 ["Status"]
        7 GETTABLEKS                       R4 R3 K3 ["Tracks"]
        9 GETTABLEKS                       R5 R3 K4 ["SelectedTracks"]
       11 GETTABLEKS                       R6 R3 K5 ["RootInstance"]
       13 JUMPIFEQKNIL                     R6 ; [+3]
       15 JUMPIFNOTEQKNIL                  R2 ; [+2]
       17 RETURN                           R0 0
       18 JUMPIFNOT                        R5 ; [+32]
       19 GETIMPORT                        R7 K7 [ipairs]
       21 MOVE                             R8 R5
       22 CALL                             R7 1 3
       23 FORGPREP_INEXT                   R7
       24 GETUPVAL                         R13 0
       25 GETTABLEKS                       R12 R13 K8 ["equals"]
       27 GETUPVAL                         R13 1
       28 MOVE                             R14 R11
       29 CALL                             R12 2 1
       30 JUMPIFNOT                        R12 ; [+6]
       31 GETIMPORT                        R12 K11 [table.remove]
       33 MOVE                             R13 R5
       34 MOVE                             R14 R10
       35 CALL                             R12 2 0
       36 JUMP                             ; [+2]
       37 FORGLOOP                         R7 2 [inext] ; [-14]
       39 GETUPVAL                         R9 2
       40 GETUPVAL                         R12 3
       41 GETTABLEKS                       R11 R12 K12 ["Dictionary"]
       43 GETTABLEKS                       R10 R11 K13 ["join"]
       45 MOVE                             R11 R5
       46 CALL                             R10 1 -1
       47 CALL                             R9 -1 -1
       48 NAMECALL                         R7 R0 K14 ["dispatch"]
       50 CALL                             R7 -1 0
       51 LOADNIL                          R7
       52 GETIMPORT                        R8 K7 [ipairs]
       54 MOVE                             R9 R4
       55 CALL                             R8 1 3
       56 FORGPREP_INEXT                   R8
       57 GETTABLEKS                       R13 R12 K15 ["Name"]
       59 GETUPVAL                         R15 1
       60 GETTABLEN                        R14 R15 1
       61 JUMPIFNOTEQ                      R13 R14 ; [+35]
       63 GETUPVAL                         R15 3
       64 GETTABLEKS                       R14 R15 K12 ["Dictionary"]
       66 GETTABLEKS                       R13 R14 K13 ["join"]
       68 MOVE                             R14 R4
       69 CALL                             R13 1 1
       70 GETUPVAL                         R15 0
       71 GETTABLEKS                       R14 R15 K16 ["getParentPath"]
       73 GETUPVAL                         R15 1
       74 CALL                             R14 1 1
       75 MOVE                             R7 R14
       76 GETUPVAL                         R15 4
       77 GETTABLEKS                       R14 R15 K17 ["getComponentFromPath"]
       79 MOVE                             R15 R7
       80 MOVE                             R16 R13
       81 CALL                             R14 2 1
       82 GETTABLEKS                       R15 R14 K18 ["Components"]
       84 GETUPVAL                         R17 1
       85 GETUPVAL                         R19 1
       86 LENGTH                           R18 R19
       87 GETTABLE                         R16 R17 R18
       88 LOADNIL                          R17
       89 SETTABLE                         R17 R15 R16
       90 GETUPVAL                         R17 5
       91 MOVE                             R18 R13
       92 CALL                             R17 1 -1
       93 NAMECALL                         R15 R0 K14 ["dispatch"]
       95 CALL                             R15 -1 0
       96 JUMP                             ; [+2]
       97 FORGLOOP                         R8 2 [inext] ; [-41]
       99 FASTCALL2K                       ASSERT R7 K19 ; [+5]
      101 MOVE                             R9 R7
      102 LOADK                            R10 K19 ["parentPath must be set"]
      103 GETIMPORT                        R8 K21 [assert]
      105 CALL                             R8 2 0
      106 GETIMPORT                        R8 K23 [pairs]
      108 GETTABLEKS                       R9 R2 K24 ["Instances"]
      110 CALL                             R8 1 3
      111 FORGPREP_NEXT                    R8
      112 GETIMPORT                        R13 K23 [pairs]
      114 GETTABLEKS                       R14 R12 K3 ["Tracks"]
      116 CALL                             R13 1 3
      117 FORGPREP_NEXT                    R13
      118 GETUPVAL                         R19 1
      119 GETTABLEN                        R18 R19 1
      120 JUMPIFNOTEQ                      R16 R18 ; [+94]
      122 GETUPVAL                         R18 6
      123 MOVE                             R19 R2
      124 NEWTABLE                         R20 0 4
      126 LOADK                            R21 K24 ["Instances"]
      127 MOVE                             R22 R11
      128 LOADK                            R23 K3 ["Tracks"]
      129 MOVE                             R24 R16
      130 SETLIST                          R20 R21 4 [1]
      132 CALL                             R18 2 1
      133 GETTABLEKS                       R22 R18 K24 ["Instances"]
      135 GETTABLE                         R21 R22 R11
      136 GETTABLEKS                       R20 R21 K3 ["Tracks"]
      138 GETTABLE                         R19 R20 R16
      139 GETUPVAL                         R21 0
      140 GETTABLEKS                       R20 R21 K25 ["getRelativePath"]
      142 MOVE                             R21 R7
      143 CALL                             R20 1 1
      144 MOVE                             R21 R20
      145 LOADNIL                          R22
      146 LOADNIL                          R23
      147 FORGPREP                         R21
      148 MOVE                             R26 R19
      149 JUMPIFNOT                        R26 ; [+6]
      150 GETTABLEKS                       R26 R19 K18 ["Components"]
      152 JUMPIFNOT                        R26 ; [+3]
      153 GETTABLEKS                       R27 R19 K18 ["Components"]
      155 GETTABLE                         R26 R27 R25
      156 MOVE                             R19 R26
      157 FORGLOOP                         R21 2 ; [-10]
      159 GETTABLEKS                       R21 R19 K18 ["Components"]
      161 GETUPVAL                         R23 1
      162 GETUPVAL                         R25 1
      163 LENGTH                           R24 R25
      164 GETTABLE                         R22 R23 R24
      165 LOADNIL                          R23
      166 SETTABLE                         R23 R21 R22
      167 GETUPVAL                         R23 3
      168 GETTABLEKS                       R22 R23 K12 ["Dictionary"]
      170 GETTABLEKS                       R21 R22 K13 ["join"]
      172 GETTABLEKS                       R22 R18 K26 ["Metadata"]
      174 CALL                             R21 1 1
      175 SETTABLEKS                       R21 R18 K26 ["Metadata"]
      177 GETTABLEKS                       R21 R18 K26 ["Metadata"]
      179 GETUPVAL                         R24 3
      180 GETTABLEKS                       R23 R24 K12 ["Dictionary"]
      182 GETTABLEKS                       R22 R23 K13 ["join"]
      184 GETTABLEKS                       R24 R18 K26 ["Metadata"]
      186 GETTABLEKS                       R23 R24 K27 ["IkTargets"]
      188 NEWTABLE                         R24 1 0
      190 GETUPVAL                         R26 1
      191 GETUPVAL                         R28 1
      192 LENGTH                           R27 R28
      193 GETTABLE                         R25 R26 R27
      194 GETUPVAL                         R27 3
      195 GETTABLEKS                       R26 R27 K28 ["None"]
      197 SETTABLE                         R26 R24 R25
      198 CALL                             R22 2 1
      199 SETTABLEKS                       R22 R21 K27 ["IkTargets"]
      201 GETUPVAL                         R23 7
      202 MOVE                             R24 R18
      203 CALL                             R23 1 -1
      204 NAMECALL                         R21 R0 K14 ["dispatch"]
      206 CALL                             R21 -1 0
      207 GETUPVAL                         R23 8
      208 NEWTABLE                         R24 0 0
      210 CALL                             R23 1 -1
      211 NAMECALL                         R21 R0 K14 ["dispatch"]
      213 CALL                             R21 -1 0
      214 RETURN                           R0 0
      215 FORGLOOP                         R13 2 ; [-98]
      217 FORGLOOP                         R8 2 ; [-106]
      219 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Thunks"]
       20 GETTABLEKS                       R3 R4 K10 ["SortAndSetTracks"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K11 ["Actions"]
       29 GETTABLEKS                       R4 R5 K12 ["SetSelectedKeyframes"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K9 ["Thunks"]
       38 GETTABLEKS                       R5 R6 K13 ["SetSelectedTracks"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K9 ["Thunks"]
       47 GETTABLEKS                       R6 R7 K14 ["UpdateAnimationData"]
       49 CALL                             R5 1 1
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R6 R7 K15 ["Util"]
       54 GETIMPORT                        R7 K5 [require]
       56 GETTABLEKS                       R8 R6 K16 ["duplicateHierarchy"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K5 [require]
       61 GETTABLEKS                       R9 R6 K17 ["PathUtils"]
       63 CALL                             R8 1 1
       64 GETIMPORT                        R9 K5 [require]
       66 GETTABLEKS                       R10 R6 K18 ["TrackUtils"]
       68 CALL                             R9 1 1
       69 DUPCLOSURE                       R10 K19 [PROTO_1]
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R3
       78 RETURN                           R10 1
