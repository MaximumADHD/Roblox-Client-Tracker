PROTO_0:
        0 NAMECALL                         R1 R0 K0 ["getState"]
        2 CALL                             R1 1 1
        3 GETTABLEKS                       R2 R1 K1 ["AnimationData"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K2 ["isChannelAnimation"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 1
       10 JUMPIFNOT                        R3 ; [+1]
       11 RETURN                           R0 0
       12 NEWTABLE                         R4 2 0
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K3 ["R15_PARTS"]
       17 GETTABLEKS                       R5 R6 K4 ["HumanoidRootPart"]
       19 LOADB                            R6 1
       20 SETTABLE                         R6 R4 R5
       21 GETUPVAL                         R7 1
       22 GETTABLEKS                       R6 R7 K3 ["R15_PARTS"]
       24 GETTABLEKS                       R5 R6 K5 ["LowerTorso"]
       26 LOADB                            R6 1
       27 SETTABLE                         R6 R4 R5
       28 NEWTABLE                         R5 0 0
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R6 R9 K3 ["R15_PARTS"]
       33 LOADNIL                          R7
       34 LOADNIL                          R8
       35 FORGPREP                         R6
       36 LOADB                            R11 1
       37 SETTABLE                         R11 R5 R10
       38 FORGLOOP                         R6 2 ; [-3]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R6 R9 K6 ["FacsNames"]
       43 LOADNIL                          R7
       44 LOADNIL                          R8
       45 FORGPREP                         R6
       46 LOADB                            R11 1
       47 SETTABLE                         R11 R5 R10
       48 FORGLOOP                         R6 2 ; [-3]
       50 GETUPVAL                         R8 2
       51 CALL                             R8 0 -1
       52 NAMECALL                         R6 R0 K7 ["dispatch"]
       54 CALL                             R6 -1 0
       55 GETTABLEKS                       R6 R2 K8 ["Instances"]
       57 LOADNIL                          R7
       58 LOADNIL                          R8
       59 FORGPREP                         R6
       60 GETTABLEKS                       R11 R10 K9 ["Tracks"]
       62 LOADNIL                          R12
       63 LOADNIL                          R13
       64 FORGPREP                         R11
       65 GETTABLE                         R16 R5 R14
       66 JUMPIF                           R16 ; [+8]
       67 GETUPVAL                         R18 3
       68 MOVE                             R19 R14
       69 GETUPVAL                         R20 4
       70 CALL                             R18 2 -1
       71 NAMECALL                         R16 R0 K7 ["dispatch"]
       73 CALL                             R16 -1 0
       74 JUMP                             ; [+33]
       75 GETTABLE                         R16 R4 R14
       76 JUMPIF                           R16 ; [+31]
       77 LOADB                            R16 1
       78 GETTABLEKS                       R17 R15 K10 ["Data"]
       80 LOADNIL                          R18
       81 LOADNIL                          R19
       82 FORGPREP                         R17
       83 GETTABLEKS                       R23 R21 K11 ["Value"]
       85 GETTABLEKS                       R22 R23 K12 ["Rotation"]
       87 SETTABLEKS                       R22 R21 K11 ["Value"]
       89 MOVE                             R22 R16
       90 JUMPIFNOT                        R22 ; [+6]
       91 GETUPVAL                         R22 5
       92 GETTABLEKS                       R23 R21 K11 ["Value"]
       94 GETIMPORT                        R24 K15 [CFrame.identity]
       96 CALL                             R22 2 1
       97 MOVE                             R16 R22
       98 FORGLOOP                         R17 2 ; [-16]
      100 JUMPIFNOT                        R16 ; [+7]
      101 GETUPVAL                         R19 3
      102 MOVE                             R20 R14
      103 GETUPVAL                         R21 4
      104 CALL                             R19 2 -1
      105 NAMECALL                         R17 R0 K7 ["dispatch"]
      107 CALL                             R17 -1 0
      108 FORGLOOP                         R11 2 ; [-44]
      110 FORGLOOP                         R6 2 ; [-51]
      112 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          UPVAL U2
        4 CAPTURE                          UPVAL U3
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U4
        7 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R2 R0 K4 ["Src"]
        9 GETTABLEKS                       R1 R2 K5 ["Thunks"]
       11 GETIMPORT                        R2 K7 [require]
       13 GETTABLEKS                       R4 R1 K8 ["History"]
       15 GETTABLEKS                       R3 R4 K9 ["AddWaypoint"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K7 [require]
       20 GETTABLEKS                       R4 R1 K10 ["DeleteTrack"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R5 R0 K4 ["Src"]
       25 GETTABLEKS                       R4 R5 K11 ["Util"]
       27 GETIMPORT                        R5 K7 [require]
       29 GETTABLEKS                       R6 R4 K12 ["AnimationData"]
       31 CALL                             R5 1 1
       32 GETIMPORT                        R6 K7 [require]
       34 GETTABLEKS                       R7 R4 K13 ["Constants"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K7 [require]
       39 GETTABLEKS                       R8 R4 K14 ["fuzzyCFrameEq"]
       41 CALL                             R7 1 1
       42 DUPCLOSURE                       R8 K15 [PROTO_1]
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R7
       48 RETURN                           R8 1
