PROTO_0:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETTABLEKS                       R3 R1 K2 ["Instances"]
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 GETIMPORT                        R7 K1 [pairs]
        8 MOVE                             R8 R0
        9 CALL                             R7 1 3
       10 FORGPREP_NEXT                    R7
       11 GETIMPORT                        R12 K1 [pairs]
       13 GETTABLEKS                       R13 R6 K3 ["Tracks"]
       15 CALL                             R12 1 3
       16 FORGPREP_NEXT                    R12
       17 JUMPIFNOTEQ                      R15 R11 ; [+8]
       19 GETTABLEKS                       R19 R1 K2 ["Instances"]
       21 GETTABLE                         R18 R19 R5
       22 GETTABLEKS                       R17 R18 K3 ["Tracks"]
       24 LOADNIL                          R18
       25 SETTABLE                         R18 R17 R15
       26 FORGLOOP                         R12 2 ; [-10]
       28 FORGLOOP                         R7 2 ; [-18]
       30 FORGLOOP                         R2 2 ; [-25]
       32 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["FacsNames"]
        4 CALL                             R1 1 1
        5 LOADK                            R2 K1 ["Head"]
        6 SETTABLEKS                       R2 R1 K1 ["Head"]
        8 GETGLOBAL                        R2 K2 ["removeTracksWithNames"]
       10 MOVE                             R3 R1
       11 MOVE                             R4 R0
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["R15_PARTS"]
        4 CALL                             R1 1 1
        5 LOADNIL                          R2
        6 SETTABLEKS                       R2 R1 K1 ["Head"]
        8 GETGLOBAL                        R2 K2 ["removeTracksWithNames"]
       10 MOVE                             R3 R1
       11 MOVE                             R4 R0
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["Status"]
        5 GETTABLEKS                       R3 R1 K2 ["AnimationData"]
        7 GETUPVAL                         R4 0
        8 JUMPIFEQKNIL                     R4 ; [+3]
       10 JUMPIFNOTEQKNIL                  R3 ; [+2]
       12 RETURN                           R0 0
       13 GETUPVAL                         R4 1
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 MOVE                             R3 R4
       17 GETUPVAL                         R4 1
       18 GETUPVAL                         R5 0
       19 CALL                             R4 1 1
       20 SETUPVAL                         R4 0
       21 GETTABLEKS                       R6 R3 K3 ["Metadata"]
       23 GETTABLEKS                       R5 R6 K4 ["IsChannelAnimation"]
       25 NOT                              R4 R5
       26 JUMPIFNOT                        R4 ; [+6]
       27 GETUPVAL                         R7 0
       28 GETTABLEKS                       R6 R7 K3 ["Metadata"]
       30 GETTABLEKS                       R5 R6 K4 ["IsChannelAnimation"]
       32 NOT                              R4 R5
       33 NOT                              R5 R4
       34 GETTABLEKS                       R6 R2 K5 ["DefaultRotationType"]
       36 GETTABLEKS                       R7 R2 K6 ["DefaultEulerAnglesOrder"]
       38 JUMPIFNOT                        R5 ; [+12]
       39 GETTABLEKS                       R9 R3 K3 ["Metadata"]
       41 GETTABLEKS                       R8 R9 K4 ["IsChannelAnimation"]
       43 JUMPIF                           R8 ; [+7]
       44 GETUPVAL                         R9 2
       45 GETTABLEKS                       R8 R9 K7 ["promoteToChannels"]
       47 MOVE                             R9 R3
       48 MOVE                             R10 R6
       49 MOVE                             R11 R7
       50 CALL                             R8 3 0
       51 JUMPIFNOT                        R5 ; [+13]
       52 GETUPVAL                         R10 0
       53 GETTABLEKS                       R9 R10 K3 ["Metadata"]
       55 GETTABLEKS                       R8 R9 K4 ["IsChannelAnimation"]
       57 JUMPIF                           R8 ; [+7]
       58 GETUPVAL                         R9 2
       59 GETTABLEKS                       R8 R9 K7 ["promoteToChannels"]
       61 GETUPVAL                         R9 0
       62 MOVE                             R10 R6
       63 MOVE                             R11 R7
       64 CALL                             R8 3 0
       65 LOADNIL                          R8
       66 LOADNIL                          R9
       67 GETUPVAL                         R10 3
       68 GETUPVAL                         R13 4
       69 GETTABLEKS                       R12 R13 K8 ["TRACKS_SUBSETS_TYPE"]
       71 GETTABLEKS                       R11 R12 K9 ["Body"]
       73 JUMPIFNOTEQ                      R10 R11 ; [+4]
       75 GETUPVAL                         R8 0
       76 MOVE                             R9 R3
       77 JUMP                             ; [+12]
       78 GETUPVAL                         R10 3
       79 GETUPVAL                         R13 4
       80 GETTABLEKS                       R12 R13 K8 ["TRACKS_SUBSETS_TYPE"]
       82 GETTABLEKS                       R11 R12 K10 ["Face"]
       84 JUMPIFNOTEQ                      R10 R11 ; [+4]
       86 MOVE                             R8 R3
       87 GETUPVAL                         R9 0
       88 JUMP                             ; [+1]
       89 RETURN                           R0 0
       90 GETGLOBAL                        R10 K11 ["clearR15TracksBesidesHead"]
       92 MOVE                             R11 R9
       93 CALL                             R10 1 0
       94 GETGLOBAL                        R10 K12 ["clearFacsTracksAndHeadTrack"]
       96 MOVE                             R11 R8
       97 CALL                             R10 1 0
       98 GETTABLEKS                       R12 R8 K14 ["Instances"]
      100 GETTABLEKS                       R11 R12 K13 ["Root"]
      102 GETTABLEKS                       R10 R11 K15 ["Tracks"]
      104 GETIMPORT                        R11 K17 [pairs]
      106 GETTABLEKS                       R12 R9 K14 ["Instances"]
      108 CALL                             R11 1 3
      109 FORGPREP_NEXT                    R11
      110 GETTABLEKS                       R16 R15 K15 ["Tracks"]
      112 GETIMPORT                        R17 K17 [pairs]
      114 MOVE                             R18 R16
      115 CALL                             R17 1 3
      116 FORGPREP_NEXT                    R17
      117 GETUPVAL                         R22 1
      118 MOVE                             R23 R21
      119 CALL                             R22 1 1
      120 SETTABLE                         R22 R10 R20
      121 FORGLOOP                         R17 2 ; [-5]
      123 FORGLOOP                         R11 2 ; [-14]
      125 GETTABLEKS                       R11 R8 K3 ["Metadata"]
      127 GETTABLEKS                       R13 R3 K3 ["Metadata"]
      129 GETTABLEKS                       R12 R13 K18 ["Name"]
      131 SETTABLEKS                       R12 R11 K18 ["Name"]
      133 GETUPVAL                         R13 5
      134 CALL                             R13 0 -1
      135 NAMECALL                         R11 R0 K19 ["dispatch"]
      137 CALL                             R11 -1 0
      138 GETUPVAL                         R13 6
      139 NEWTABLE                         R14 0 0
      141 CALL                             R13 1 -1
      142 NAMECALL                         R11 R0 K19 ["dispatch"]
      144 CALL                             R11 -1 0
      145 GETIMPORT                        R11 K17 [pairs]
      147 GETTABLEKS                       R12 R8 K14 ["Instances"]
      149 CALL                             R11 1 3
      150 FORGPREP_NEXT                    R11
      151 GETIMPORT                        R16 K17 [pairs]
      153 GETTABLEKS                       R17 R15 K15 ["Tracks"]
      155 CALL                             R16 1 3
      156 FORGPREP_NEXT                    R16
      157 GETUPVAL                         R23 7
      158 MOVE                             R24 R14
      159 MOVE                             R25 R19
      160 GETTABLEKS                       R26 R20 K20 ["Type"]
      162 GETUPVAL                         R28 8
      163 GETTABLEKS                       R27 R28 K21 ["getRotationType"]
      165 MOVE                             R28 R20
      166 CALL                             R27 1 1
      167 GETUPVAL                         R29 8
      168 GETTABLEKS                       R28 R29 K22 ["getEulerAnglesOrder"]
      170 MOVE                             R29 R20
      171 CALL                             R28 1 1
      172 GETUPVAL                         R29 9
      173 CALL                             R23 6 -1
      174 NAMECALL                         R21 R0 K19 ["dispatch"]
      176 CALL                             R21 -1 0
      177 FORGLOOP                         R16 2 ; [-21]
      179 FORGLOOP                         R11 2 ; [-29]
      181 GETUPVAL                         R13 10
      182 MOVE                             R14 R8
      183 CALL                             R13 1 -1
      184 NAMECALL                         R11 R0 K19 ["dispatch"]
      186 CALL                             R11 -1 0
      187 GETUPVAL                         R13 11
      188 LOADB                            R14 1
      189 CALL                             R13 1 -1
      190 NAMECALL                         R11 R0 K19 ["dispatch"]
      192 CALL                             R11 -1 0
      193 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          REF R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          VAL R2
       11 CAPTURE                          UPVAL U7
       12 CAPTURE                          UPVAL U8
       13 CLOSEUPVALS                      R0
       14 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Thunks"]
       13 GETTABLEKS                       R2 R3 K8 ["AddTrack"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K7 ["Thunks"]
       22 GETTABLEKS                       R4 R5 K9 ["History"]
       24 GETTABLEKS                       R3 R4 K10 ["AddWaypoint"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K11 ["Util"]
       33 GETTABLEKS                       R4 R5 K12 ["AnimationData"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Src"]
       40 GETTABLEKS                       R6 R7 K11 ["Util"]
       42 GETTABLEKS                       R5 R6 K13 ["Constants"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R8 R0 K6 ["Src"]
       49 GETTABLEKS                       R7 R8 K14 ["Actions"]
       51 GETTABLEKS                       R6 R7 K15 ["SetIsDirty"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R9 R0 K6 ["Src"]
       58 GETTABLEKS                       R8 R9 K7 ["Thunks"]
       60 GETTABLEKS                       R7 R8 K16 ["SortAndSetTracks"]
       62 CALL                             R6 1 1
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R10 R0 K6 ["Src"]
       67 GETTABLEKS                       R9 R10 K11 ["Util"]
       69 GETTABLEKS                       R8 R9 K17 ["TrackUtils"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R11 R0 K6 ["Src"]
       76 GETTABLEKS                       R10 R11 K7 ["Thunks"]
       78 GETTABLEKS                       R9 R10 K18 ["UpdateAnimationData"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R12 R0 K6 ["Src"]
       85 GETTABLEKS                       R11 R12 K11 ["Util"]
       87 GETTABLEKS                       R10 R11 K19 ["deepCopy"]
       89 CALL                             R9 1 1
       90 DUPCLOSURE                       R10 K20 [PROTO_0]
       91 SETGLOBAL                        R10 K21 ["removeTracksWithNames"]
       93 DUPCLOSURE                       R10 K22 [PROTO_1]
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R4
       96 SETGLOBAL                        R10 K23 ["clearFacsTracksAndHeadTrack"]
       98 DUPCLOSURE                       R10 K24 [PROTO_2]
       99 CAPTURE                          VAL R9
      100 CAPTURE                          VAL R4
      101 SETGLOBAL                        R10 K25 ["clearR15TracksBesidesHead"]
      103 DUPCLOSURE                       R10 K26 [PROTO_4]
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R3
      106 CAPTURE                          VAL R4
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R1
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R8
      112 CAPTURE                          VAL R5
      113 RETURN                           R10 1
