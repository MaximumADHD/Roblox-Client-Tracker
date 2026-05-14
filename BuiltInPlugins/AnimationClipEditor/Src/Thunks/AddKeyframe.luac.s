PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETTABLEKS                       R3 R1 K2 ["Status"]
        7 JUMPIFNOT                        R3 ; [+4]
        8 GETTABLEKS                       R3 R1 K2 ["Status"]
       10 GETTABLEKS                       R3 R3 K3 ["EditorMode"]
       12 JUMPIFNOT                        R2 ; [+5]
       13 GETTABLEKS                       R5 R2 K4 ["Instances"]
       15 GETUPVAL                         R6 0
       16 GETTABLE                         R4 R5 R6
       17 JUMPIF                           R4 ; [+1]
       18 RETURN                           R0 0
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R4 R4 K5 ["Dictionary"]
       22 GETTABLEKS                       R4 R4 K6 ["join"]
       24 NEWTABLE                         R5 0 0
       26 MOVE                             R6 R2
       27 CALL                             R4 2 1
       28 GETUPVAL                         R5 1
       29 GETTABLEKS                       R5 R5 K5 ["Dictionary"]
       31 GETTABLEKS                       R5 R5 K6 ["join"]
       33 NEWTABLE                         R6 0 0
       35 GETTABLEKS                       R7 R4 K4 ["Instances"]
       37 CALL                             R5 2 1
       38 SETTABLEKS                       R5 R4 K4 ["Instances"]
       40 GETTABLEKS                       R5 R4 K4 ["Instances"]
       42 GETUPVAL                         R6 0
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R7 R7 K5 ["Dictionary"]
       46 GETTABLEKS                       R7 R7 K6 ["join"]
       48 NEWTABLE                         R8 0 0
       50 GETTABLEKS                       R10 R4 K4 ["Instances"]
       52 GETUPVAL                         R11 0
       53 GETTABLE                         R9 R10 R11
       54 CALL                             R7 2 1
       55 SETTABLE                         R7 R5 R6
       56 GETTABLEKS                       R6 R4 K4 ["Instances"]
       58 GETUPVAL                         R7 0
       59 GETTABLE                         R5 R6 R7
       60 GETUPVAL                         R6 1
       61 GETTABLEKS                       R6 R6 K5 ["Dictionary"]
       63 GETTABLEKS                       R6 R6 K6 ["join"]
       65 NEWTABLE                         R7 0 0
       67 GETTABLEKS                       R9 R4 K4 ["Instances"]
       69 GETUPVAL                         R10 0
       70 GETTABLE                         R8 R9 R10
       71 GETTABLEKS                       R8 R8 K7 ["Tracks"]
       73 CALL                             R6 2 1
       74 SETTABLEKS                       R6 R5 K7 ["Tracks"]
       76 GETTABLEKS                       R6 R4 K4 ["Instances"]
       78 GETUPVAL                         R7 0
       79 GETTABLE                         R5 R6 R7
       80 GETTABLEKS                       R5 R5 K7 ["Tracks"]
       82 GETUPVAL                         R7 2
       83 GETTABLEN                        R6 R7 1
       84 GETUPVAL                         R7 3
       85 GETTABLEKS                       R10 R4 K4 ["Instances"]
       87 GETUPVAL                         R11 0
       88 GETTABLE                         R9 R10 R11
       89 GETTABLEKS                       R9 R9 K7 ["Tracks"]
       91 GETUPVAL                         R11 2
       92 GETTABLEN                        R10 R11 1
       93 GETTABLE                         R8 R9 R10
       94 CALL                             R7 1 1
       95 SETTABLE                         R7 R5 R6
       96 GETTABLEKS                       R6 R4 K4 ["Instances"]
       98 GETUPVAL                         R7 0
       99 GETTABLE                         R5 R6 R7
      100 GETTABLEKS                       R5 R5 K7 ["Tracks"]
      102 GETUPVAL                         R6 4
      103 GETTABLEKS                       R6 R6 K8 ["getTrack"]
      105 MOVE                             R7 R4
      106 GETUPVAL                         R8 0
      107 GETUPVAL                         R9 2
      108 CALL                             R6 3 1
      109 JUMPIFNOTEQKNIL                  R6 ; [+78]
      111 GETUPVAL                         R7 5
      112 JUMPIF                           R7 ; [+11]
      113 GETTABLEKS                       R8 R1 K2 ["Status"]
      115 JUMPIFNOT                        R8 ; [+5]
      116 GETTABLEKS                       R7 R1 K2 ["Status"]
      118 GETTABLEKS                       R7 R7 K9 ["DefaultRotationType"]
      120 JUMPIF                           R7 ; [+3]
      121 GETUPVAL                         R7 6
      122 GETTABLEKS                       R7 R7 K10 ["DEFAULT_ROTATION_TYPE"]
      124 SETUPVAL                         R7 5
      125 GETTABLEKS                       R8 R1 K2 ["Status"]
      127 JUMPIFNOT                        R8 ; [+5]
      128 GETTABLEKS                       R7 R1 K2 ["Status"]
      130 GETTABLEKS                       R7 R7 K11 ["DefaultEulerAnglesOrder"]
      132 JUMPIF                           R7 ; [+2]
      133 GETIMPORT                        R7 K15 [Enum.RotationOrder.XYZ]
      135 GETUPVAL                         R8 6
      136 GETTABLEKS                       R8 R8 K16 ["TRACK_TYPES"]
      138 GETTABLEKS                       R8 R8 K17 ["CFrame"]
      140 GETUPVAL                         R9 7
      141 GETUPVAL                         R10 6
      142 GETTABLEKS                       R10 R10 K16 ["TRACK_TYPES"]
      144 GETTABLEKS                       R10 R10 K18 ["Facs"]
      146 JUMPIFNOTEQ                      R9 R10 ; [+6]
      148 GETUPVAL                         R9 6
      149 GETTABLEKS                       R9 R9 K16 ["TRACK_TYPES"]
      151 GETTABLEKS                       R8 R9 K18 ["Facs"]
      153 GETUPVAL                         R11 8
      154 GETUPVAL                         R12 0
      155 GETUPVAL                         R14 2
      156 GETTABLEN                        R13 R14 1
      157 MOVE                             R14 R8
      158 GETUPVAL                         R15 5
      159 MOVE                             R16 R7
      160 GETUPVAL                         R17 9
      161 CALL                             R11 6 -1
      162 NAMECALL                         R9 R0 K19 ["dispatch"]
      164 CALL                             R9 -1 0
      165 GETUPVAL                         R9 4
      166 GETTABLEKS                       R9 R9 K20 ["addTrack"]
      168 MOVE                             R10 R5
      169 GETUPVAL                         R12 2
      170 GETTABLEN                        R11 R12 1
      171 MOVE                             R12 R8
      172 GETUPVAL                         R13 4
      173 GETTABLEKS                       R13 R13 K21 ["isChannelAnimation"]
      175 MOVE                             R14 R4
      176 CALL                             R13 1 1
      177 GETUPVAL                         R14 5
      178 MOVE                             R15 R7
      179 CALL                             R9 6 0
      180 GETUPVAL                         R9 4
      181 GETTABLEKS                       R9 R9 K8 ["getTrack"]
      183 MOVE                             R10 R4
      184 GETUPVAL                         R11 0
      185 GETUPVAL                         R12 2
      186 CALL                             R9 3 1
      187 MOVE                             R6 R9
      188 JUMPIFNOT                        R6 ; [+3]
      189 GETTABLEKS                       R7 R6 K22 ["Data"]
      191 JUMPIF                           R7 ; [+1]
      192 LOADNIL                          R7
      193 JUMPIFNOT                        R7 ; [+50]
      194 GETUPVAL                         R9 10
      195 GETTABLE                         R8 R7 R9
      196 JUMPIFNOTEQKNIL                  R8 ; [+47]
      198 GETUPVAL                         R8 4
      199 GETTABLEKS                       R8 R8 K23 ["addKeyframe"]
      201 MOVE                             R9 R6
      202 GETUPVAL                         R10 10
      203 GETUPVAL                         R11 11
      204 CALL                             R8 3 0
      205 GETUPVAL                         R8 10
      206 JUMPIFEQKN                       R8 K24 [0] ; [+12]
      208 LOADN                            R9 0
      209 GETTABLE                         R8 R7 R9
      210 JUMPIFNOTEQKNIL                  R8 ; [+8]
      212 GETUPVAL                         R8 4
      213 GETTABLEKS                       R8 R8 K25 ["addDefaultKeyframe"]
      215 MOVE                             R9 R6
      216 LOADN                            R10 0
      217 GETUPVAL                         R11 7
      218 CALL                             R8 3 0
      219 GETUPVAL                         R10 12
      220 MOVE                             R11 R4
      221 CALL                             R10 1 -1
      222 NAMECALL                         R8 R0 K19 ["dispatch"]
      224 CALL                             R8 -1 0
      225 GETUPVAL                         R8 9
      226 JUMPIFNOT                        R8 ; [+17]
      227 GETUPVAL                         R8 9
      228 LOADK                            R10 K26 ["onAddKeyframe"]
      229 GETUPVAL                         R12 2
      230 GETTABLEN                        R11 R12 1
      231 MOVE                             R12 R3
      232 GETTABLEKS                       R14 R4 K27 ["Metadata"]
      234 JUMPIFNOT                        R14 ; [+5]
      235 GETTABLEKS                       R13 R4 K27 ["Metadata"]
      237 GETTABLEKS                       R13 R13 K28 ["Guid"]
      239 JUMP                             ; [+1]
      240 LOADNIL                          R13
      241 NAMECALL                         R8 R8 K29 ["report"]
      243 CALL                             R8 5 0
      244 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R7 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          REF R3
        7 CAPTURE                          UPVAL U3
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U4
       10 CAPTURE                          VAL R6
       11 CAPTURE                          VAL R4
       12 CAPTURE                          VAL R5
       13 CAPTURE                          UPVAL U5
       14 CLOSEUPVALS                      R3
       15 RETURN                           R7 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["deepCopy"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Constants"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K11 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K7 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["AnimationData"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K13 ["Thunks"]
       47 GETTABLEKS                       R6 R6 K14 ["AddTrack"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K13 ["Thunks"]
       56 GETTABLEKS                       R7 R7 K15 ["UpdateAnimationData"]
       58 CALL                             R6 1 1
       59 DUPCLOSURE                       R7 K16 [PROTO_1]
       60 CAPTURE                          VAL R3
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 RETURN                           R7 1
