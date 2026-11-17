PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R1 R1 K1 ["AnimationData"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["getTrack"]
        8 MOVE                             R3 R1
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R5 2
       11 CALL                             R2 3 1
       12 JUMPIFNOT                        R2 ; [+15]
       13 GETTABLEKS                       R3 R2 K3 ["Type"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K4 ["TRACK_TYPES"]
       18 GETTABLEKS                       R4 R4 K5 ["EulerAngles"]
       20 JUMPIFNOTEQ                      R3 R4 ; [+6]
       22 GETTABLEKS                       R3 R2 K6 ["EulerAnglesOrder"]
       24 GETUPVAL                         R4 4
       25 JUMPIFNOTEQ                      R3 R4 ; [+2]
       27 RETURN                           R0 0
       28 GETUPVAL                         R3 5
       29 GETTABLEKS                       R3 R3 K7 ["Dictionary"]
       31 GETTABLEKS                       R3 R3 K8 ["join"]
       33 NEWTABLE                         R4 0 0
       35 MOVE                             R5 R1
       36 CALL                             R3 2 1
       37 GETUPVAL                         R4 5
       38 GETTABLEKS                       R4 R4 K7 ["Dictionary"]
       40 GETTABLEKS                       R4 R4 K8 ["join"]
       42 NEWTABLE                         R5 0 0
       44 GETTABLEKS                       R6 R3 K9 ["Instances"]
       46 CALL                             R4 2 1
       47 GETUPVAL                         R5 5
       48 GETTABLEKS                       R5 R5 K7 ["Dictionary"]
       50 GETTABLEKS                       R5 R5 K8 ["join"]
       52 NEWTABLE                         R6 0 0
       54 GETUPVAL                         R8 1
       55 GETTABLE                         R7 R4 R8
       56 CALL                             R5 2 1
       57 GETUPVAL                         R6 5
       58 GETTABLEKS                       R6 R6 K7 ["Dictionary"]
       60 GETTABLEKS                       R6 R6 K8 ["join"]
       62 NEWTABLE                         R7 0 0
       64 GETTABLEKS                       R8 R5 K10 ["Tracks"]
       66 CALL                             R6 2 1
       67 JUMPIF                           R2 ; [+23]
       68 GETUPVAL                         R7 0
       69 GETTABLEKS                       R7 R7 K11 ["addTrack"]
       71 MOVE                             R8 R6
       72 GETUPVAL                         R10 2
       73 GETTABLEN                        R9 R10 1
       74 GETUPVAL                         R10 3
       75 GETTABLEKS                       R10 R10 K4 ["TRACK_TYPES"]
       77 GETTABLEKS                       R10 R10 K12 ["CFrame"]
       79 GETUPVAL                         R11 0
       80 GETTABLEKS                       R11 R11 K13 ["isChannelAnimation"]
       82 MOVE                             R12 R3
       83 CALL                             R11 1 1
       84 GETUPVAL                         R12 3
       85 GETTABLEKS                       R12 R12 K4 ["TRACK_TYPES"]
       87 GETTABLEKS                       R12 R12 K5 ["EulerAngles"]
       89 GETUPVAL                         R13 4
       90 CALL                             R7 6 0
       91 GETUPVAL                         R7 5
       92 GETTABLEKS                       R7 R7 K7 ["Dictionary"]
       94 GETTABLEKS                       R7 R7 K8 ["join"]
       96 NEWTABLE                         R8 0 0
       98 GETUPVAL                         R11 2
       99 GETTABLEN                        R10 R11 1
      100 GETTABLE                         R9 R6 R10
      101 CALL                             R7 2 1
      102 GETUPVAL                         R8 5
      103 GETTABLEKS                       R8 R8 K7 ["Dictionary"]
      105 GETTABLEKS                       R8 R8 K8 ["join"]
      107 NEWTABLE                         R9 0 0
      109 GETTABLEKS                       R10 R7 K14 ["Components"]
      111 CALL                             R8 2 1
      112 GETUPVAL                         R9 5
      113 GETTABLEKS                       R9 R9 K7 ["Dictionary"]
      115 GETTABLEKS                       R9 R9 K8 ["join"]
      117 NEWTABLE                         R10 0 0
      119 GETUPVAL                         R12 3
      120 GETTABLEKS                       R12 R12 K15 ["PROPERTY_KEYS"]
      122 GETTABLEKS                       R12 R12 K16 ["Rotation"]
      124 GETTABLE                         R11 R8 R12
      125 CALL                             R9 2 1
      126 GETUPVAL                         R10 4
      127 SETTABLEKS                       R10 R9 K6 ["EulerAnglesOrder"]
      129 GETUPVAL                         R10 3
      130 GETTABLEKS                       R10 R10 K15 ["PROPERTY_KEYS"]
      132 GETTABLEKS                       R10 R10 K16 ["Rotation"]
      134 SETTABLE                         R9 R8 R10
      135 SETTABLEKS                       R8 R7 K14 ["Components"]
      137 GETUPVAL                         R11 2
      138 GETTABLEN                        R10 R11 1
      139 SETTABLE                         R7 R6 R10
      140 SETTABLEKS                       R6 R5 K10 ["Tracks"]
      142 GETUPVAL                         R10 1
      143 SETTABLE                         R5 R4 R10
      144 SETTABLEKS                       R4 R3 K9 ["Instances"]
      146 GETUPVAL                         R12 6
      147 MOVE                             R13 R3
      148 CALL                             R12 1 -1
      149 NAMECALL                         R10 R0 K17 ["dispatch"]
      151 CALL                             R10 -1 0
      152 RETURN                           R0 0

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
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["AnimationData"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K8 ["Src"]
       36 GETTABLEKS                       R5 R5 K9 ["Util"]
       38 GETTABLEKS                       R5 R5 K12 ["PathUtils"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K13 ["Thunks"]
       47 GETTABLEKS                       R6 R6 K14 ["UpdateAnimationData"]
       49 CALL                             R5 1 1
       50 DUPCLOSURE                       R6 K15 [PROTO_1]
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R3
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R5
       55 RETURN                           R6 1
