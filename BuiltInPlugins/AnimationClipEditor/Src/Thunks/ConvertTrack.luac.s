PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 JUMPIFNOT                        R2 ; [+5]
        6 GETTABLEKS                       R4 R2 K2 ["Instances"]
        8 GETUPVAL                         R5 0
        9 GETTABLE                         R3 R4 R5
       10 JUMPIF                           R3 ; [+1]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R1 K3 ["Status"]
       14 GETTABLEKS                       R3 R3 K4 ["DefaultEulerAnglesOrder"]
       16 JUMPIF                           R3 ; [+2]
       17 GETIMPORT                        R3 K8 [Enum.RotationOrder.XYZ]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R5 R1 K3 ["Status"]
       22 GETTABLEKS                       R5 R5 K9 ["Tracks"]
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 2
       26 GETTABLEKS                       R5 R5 K10 ["findTrackEntry"]
       28 MOVE                             R6 R4
       29 GETUPVAL                         R7 3
       30 CALL                             R5 2 1
       31 GETUPVAL                         R6 4
       32 GETTABLEKS                       R6 R6 K11 ["Dictionary"]
       34 GETTABLEKS                       R6 R6 K12 ["join"]
       36 MOVE                             R7 R2
       37 CALL                             R6 1 1
       38 GETUPVAL                         R7 4
       39 GETTABLEKS                       R7 R7 K11 ["Dictionary"]
       41 GETTABLEKS                       R7 R7 K12 ["join"]
       43 GETTABLEKS                       R8 R6 K2 ["Instances"]
       45 CALL                             R7 1 1
       46 SETTABLEKS                       R7 R6 K2 ["Instances"]
       48 GETTABLEKS                       R7 R6 K2 ["Instances"]
       50 GETUPVAL                         R8 0
       51 GETUPVAL                         R9 4
       52 GETTABLEKS                       R9 R9 K11 ["Dictionary"]
       54 GETTABLEKS                       R9 R9 K12 ["join"]
       56 NEWTABLE                         R10 0 0
       58 GETTABLEKS                       R12 R6 K2 ["Instances"]
       60 GETUPVAL                         R13 0
       61 GETTABLE                         R11 R12 R13
       62 CALL                             R9 2 1
       63 SETTABLE                         R9 R7 R8
       64 GETTABLEKS                       R8 R6 K2 ["Instances"]
       66 GETUPVAL                         R9 0
       67 GETTABLE                         R7 R8 R9
       68 GETUPVAL                         R8 4
       69 GETTABLEKS                       R8 R8 K11 ["Dictionary"]
       71 GETTABLEKS                       R8 R8 K12 ["join"]
       73 NEWTABLE                         R9 0 0
       75 GETTABLEKS                       R11 R6 K2 ["Instances"]
       77 GETUPVAL                         R12 0
       78 GETTABLE                         R10 R11 R12
       79 GETTABLEKS                       R10 R10 K9 ["Tracks"]
       81 CALL                             R8 2 1
       82 SETTABLEKS                       R8 R7 K9 ["Tracks"]
       84 GETTABLEKS                       R8 R6 K2 ["Instances"]
       86 GETUPVAL                         R9 0
       87 GETTABLE                         R7 R8 R9
       88 GETTABLEKS                       R7 R7 K9 ["Tracks"]
       90 GETUPVAL                         R9 3
       91 GETTABLEN                        R8 R9 1
       92 GETUPVAL                         R9 1
       93 GETTABLEKS                       R12 R6 K2 ["Instances"]
       95 GETUPVAL                         R13 0
       96 GETTABLE                         R11 R12 R13
       97 GETTABLEKS                       R11 R11 K9 ["Tracks"]
       99 GETUPVAL                         R13 3
      100 GETTABLEN                        R12 R13 1
      101 GETTABLE                         R10 R11 R12
      102 CALL                             R9 1 1
      103 SETTABLE                         R9 R7 R8
      104 GETUPVAL                         R7 5
      105 GETTABLEKS                       R7 R7 K13 ["getTrack"]
      107 MOVE                             R8 R6
      108 GETUPVAL                         R9 0
      109 GETUPVAL                         R10 3
      110 CALL                             R7 3 1
      111 JUMPIFEQKNIL                     R7 ; [+62]
      113 GETTABLEKS                       R8 R7 K14 ["Data"]
      115 JUMPIFEQKNIL                     R8 ; [+58]
      117 GETTABLEKS                       R8 R7 K15 ["Type"]
      119 GETUPVAL                         R9 6
      120 GETTABLEKS                       R9 R9 K16 ["TRACK_TYPES"]
      122 GETTABLEKS                       R9 R9 K17 ["Quaternion"]
      124 JUMPIFNOTEQ                      R8 R9 ; [+49]
      126 GETUPVAL                         R8 7
      127 GETUPVAL                         R9 6
      128 GETTABLEKS                       R9 R9 K16 ["TRACK_TYPES"]
      130 GETTABLEKS                       R9 R9 K18 ["EulerAngles"]
      132 JUMPIFNOTEQ                      R8 R9 ; [+41]
      134 GETUPVAL                         R8 2
      135 GETTABLEKS                       R8 R8 K19 ["convertTrackToEulerAngles"]
      137 MOVE                             R9 R7
      138 MOVE                             R10 R3
      139 CALL                             R8 2 0
      140 GETUPVAL                         R8 6
      141 GETTABLEKS                       R8 R8 K16 ["TRACK_TYPES"]
      143 GETTABLEKS                       R8 R8 K18 ["EulerAngles"]
      145 SETTABLEKS                       R8 R5 K15 ["Type"]
      147 SETTABLEKS                       R3 R5 K20 ["EulerAnglesOrder"]
      149 GETUPVAL                         R8 2
      150 GETTABLEKS                       R8 R8 K21 ["createTrackListEntryComponents"]
      152 MOVE                             R9 R5
      153 GETTABLEKS                       R10 R5 K22 ["Instance"]
      155 GETUPVAL                         R11 6
      156 GETTABLEKS                       R11 R11 K16 ["TRACK_TYPES"]
      158 GETTABLEKS                       R11 R11 K18 ["EulerAngles"]
      160 MOVE                             R12 R3
      161 CALL                             R8 4 0
      162 GETUPVAL                         R10 8
      163 MOVE                             R11 R6
      164 CALL                             R10 1 -1
      165 NAMECALL                         R8 R0 K23 ["dispatch"]
      167 CALL                             R8 -1 0
      168 GETUPVAL                         R10 9
      169 MOVE                             R11 R4
      170 CALL                             R10 1 -1
      171 NAMECALL                         R8 R0 K23 ["dispatch"]
      173 CALL                             R8 -1 0
      174 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R4 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          VAL R2
        9 CAPTURE                          UPVAL U5
       10 CAPTURE                          UPVAL U6
       11 RETURN                           R4 1

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
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Cryo"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Thunks"]
       29 GETTABLEKS                       R4 R4 K12 ["SortAndSetTracks"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Thunks"]
       38 GETTABLEKS                       R5 R5 K13 ["UpdateAnimationData"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K7 ["Util"]
       47 GETTABLEKS                       R6 R6 K14 ["AnimationData"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K7 ["Util"]
       56 GETTABLEKS                       R7 R7 K15 ["Constants"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Src"]
       63 GETTABLEKS                       R8 R8 K7 ["Util"]
       65 GETTABLEKS                       R8 R8 K16 ["PathUtils"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Src"]
       72 GETTABLEKS                       R9 R9 K7 ["Util"]
       74 GETTABLEKS                       R9 R9 K17 ["TrackUtils"]
       76 CALL                             R8 1 1
       77 DUPCLOSURE                       R9 K18 [PROTO_1]
       78 CAPTURE                          VAL R1
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R5
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R4
       84 CAPTURE                          VAL R3
       85 RETURN                           R9 1
