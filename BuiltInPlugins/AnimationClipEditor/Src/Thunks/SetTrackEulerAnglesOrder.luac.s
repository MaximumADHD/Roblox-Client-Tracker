PROTO_0:
        0 NAMECALL                         R2 R0 K0 ["getState"]
        2 CALL                             R2 1 1
        3 GETTABLEKS                       R1 R2 K1 ["AnimationData"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K2 ["getTrack"]
        8 MOVE                             R3 R1
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R5 2
       11 CALL                             R2 3 1
       12 JUMPIFNOT                        R2 ; [+16]
       13 GETTABLEKS                       R3 R2 K3 ["Type"]
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K4 ["TRACK_TYPES"]
       18 GETTABLEKS                       R4 R5 K5 ["EulerAngles"]
       20 JUMPIFNOTEQ                      R3 R4 ; [+6]
       22 GETTABLEKS                       R3 R2 K6 ["EulerAnglesOrder"]
       24 GETUPVAL                         R4 4
       25 JUMPIFNOTEQ                      R3 R4 ; [+3]
       27 LOADNIL                          R3
       28 RETURN                           R3 1
       29 GETUPVAL                         R5 5
       30 GETTABLEKS                       R4 R5 K7 ["Dictionary"]
       32 GETTABLEKS                       R3 R4 K8 ["join"]
       34 NEWTABLE                         R4 0 0
       36 MOVE                             R5 R1
       37 CALL                             R3 2 1
       38 GETUPVAL                         R6 5
       39 GETTABLEKS                       R5 R6 K7 ["Dictionary"]
       41 GETTABLEKS                       R4 R5 K8 ["join"]
       43 NEWTABLE                         R5 0 0
       45 GETTABLEKS                       R6 R3 K9 ["Instances"]
       47 CALL                             R4 2 1
       48 GETUPVAL                         R7 5
       49 GETTABLEKS                       R6 R7 K7 ["Dictionary"]
       51 GETTABLEKS                       R5 R6 K8 ["join"]
       53 NEWTABLE                         R6 0 0
       55 GETUPVAL                         R8 1
       56 GETTABLE                         R7 R4 R8
       57 CALL                             R5 2 1
       58 GETUPVAL                         R8 5
       59 GETTABLEKS                       R7 R8 K7 ["Dictionary"]
       61 GETTABLEKS                       R6 R7 K8 ["join"]
       63 NEWTABLE                         R7 0 0
       65 GETTABLEKS                       R8 R5 K10 ["Tracks"]
       67 CALL                             R6 2 1
       68 JUMPIF                           R2 ; [+23]
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R7 R8 K11 ["addTrack"]
       72 MOVE                             R8 R6
       73 GETUPVAL                         R10 2
       74 GETTABLEN                        R9 R10 1
       75 GETUPVAL                         R12 3
       76 GETTABLEKS                       R11 R12 K4 ["TRACK_TYPES"]
       78 GETTABLEKS                       R10 R11 K12 ["CFrame"]
       80 GETUPVAL                         R12 0
       81 GETTABLEKS                       R11 R12 K13 ["isChannelAnimation"]
       83 MOVE                             R12 R3
       84 CALL                             R11 1 1
       85 GETUPVAL                         R14 3
       86 GETTABLEKS                       R13 R14 K4 ["TRACK_TYPES"]
       88 GETTABLEKS                       R12 R13 K5 ["EulerAngles"]
       90 GETUPVAL                         R13 4
       91 CALL                             R7 6 0
       92 GETUPVAL                         R9 5
       93 GETTABLEKS                       R8 R9 K7 ["Dictionary"]
       95 GETTABLEKS                       R7 R8 K8 ["join"]
       97 NEWTABLE                         R8 0 0
       99 GETUPVAL                         R11 2
      100 GETTABLEN                        R10 R11 1
      101 GETTABLE                         R9 R6 R10
      102 CALL                             R7 2 1
      103 GETUPVAL                         R10 5
      104 GETTABLEKS                       R9 R10 K7 ["Dictionary"]
      106 GETTABLEKS                       R8 R9 K8 ["join"]
      108 NEWTABLE                         R9 0 0
      110 GETTABLEKS                       R10 R7 K14 ["Components"]
      112 CALL                             R8 2 1
      113 GETUPVAL                         R11 5
      114 GETTABLEKS                       R10 R11 K7 ["Dictionary"]
      116 GETTABLEKS                       R9 R10 K8 ["join"]
      118 NEWTABLE                         R10 0 0
      120 GETUPVAL                         R14 3
      121 GETTABLEKS                       R13 R14 K15 ["PROPERTY_KEYS"]
      123 GETTABLEKS                       R12 R13 K16 ["Rotation"]
      125 GETTABLE                         R11 R8 R12
      126 CALL                             R9 2 1
      127 GETUPVAL                         R10 4
      128 SETTABLEKS                       R10 R9 K6 ["EulerAnglesOrder"]
      130 GETUPVAL                         R12 3
      131 GETTABLEKS                       R11 R12 K15 ["PROPERTY_KEYS"]
      133 GETTABLEKS                       R10 R11 K16 ["Rotation"]
      135 SETTABLE                         R9 R8 R10
      136 SETTABLEKS                       R8 R7 K14 ["Components"]
      138 GETUPVAL                         R11 2
      139 GETTABLEN                        R10 R11 1
      140 SETTABLE                         R7 R6 R10
      141 SETTABLEKS                       R6 R5 K10 ["Tracks"]
      143 GETUPVAL                         R10 1
      144 SETTABLE                         R5 R4 R10
      145 SETTABLEKS                       R4 R3 K9 ["Instances"]
      147 GETUPVAL                         R12 6
      148 MOVE                             R13 R3
      149 CALL                             R12 1 -1
      150 NAMECALL                         R10 R0 K17 ["dispatch"]
      152 CALL                             R10 -1 0
      153 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 RETURN                           R3 1

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
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["AnimationData"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R6 R0 K8 ["Src"]
       27 GETTABLEKS                       R5 R6 K9 ["Util"]
       29 GETTABLEKS                       R4 R5 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K8 ["Src"]
       36 GETTABLEKS                       R6 R7 K9 ["Util"]
       38 GETTABLEKS                       R5 R6 K12 ["PathUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K8 ["Src"]
       45 GETTABLEKS                       R7 R8 K13 ["Thunks"]
       47 GETTABLEKS                       R6 R7 K14 ["UpdateAnimationData"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R5
       55 RETURN                           R6 1
