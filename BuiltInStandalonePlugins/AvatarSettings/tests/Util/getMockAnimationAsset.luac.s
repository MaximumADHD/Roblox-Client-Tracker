PROTO_0:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Model"]
        3 CALL                             R2 1 1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R5 R6 K4 ["AssetIds"]
        7 GETTABLEKS                       R4 R5 K5 ["INVALID_ANIMATION_ASSETID"]
        9 GETTABLEKS                       R3 R4 K6 ["assetId"]
       11 JUMPIFNOTEQ                      R0 R3 ; [+2]
       13 RETURN                           R2 1
       14 GETIMPORT                        R4 K10 [Enum.AssetType.IdleAnimation]
       16 GETTABLEKS                       R3 R4 K11 ["Value"]
       18 JUMPIFEQ                         R1 R3 ; [+37]
       20 GETIMPORT                        R4 K13 [Enum.AssetType.SwimAnimation]
       22 GETTABLEKS                       R3 R4 K11 ["Value"]
       24 JUMPIFEQ                         R1 R3 ; [+31]
       26 GETIMPORT                        R3 K2 [Instance.new]
       28 LOADK                            R4 K14 ["Animation"]
       29 CALL                             R3 1 1
       30 SETTABLEKS                       R2 R3 K15 ["Parent"]
       32 GETIMPORT                        R6 K16 [Enum.AssetType.Animation]
       34 GETTABLEKS                       R5 R6 K11 ["Value"]
       36 JUMPIFNOTEQ                      R1 R5 ; [+7]
       38 FASTCALL1                        TOSTRING R0 ; [+3]
       39 MOVE                             R5 R0
       40 GETIMPORT                        R4 K18 [tostring]
       42 CALL                             R4 1 1
       43 JUMP                             ; [+9]
       44 GETUPVAL                         R7 1
       45 GETTABLEKS                       R5 R7 K19 ["ANIMATIONID_PREFIX"]
       47 ADDK                             R7 R0 K20 [100]
       48 FASTCALL1                        TOSTRING R7 ; [+2]
       49 GETIMPORT                        R6 K18 [tostring]
       51 CALL                             R6 1 1
       52 CONCAT                           R4 R5 R6
       53 SETTABLEKS                       R4 R3 K21 ["AnimationId"]
       55 RETURN                           R2 1
       56 GETIMPORT                        R4 K10 [Enum.AssetType.IdleAnimation]
       58 GETTABLEKS                       R3 R4 K11 ["Value"]
       60 JUMPIFNOTEQ                      R1 R3 ; [+30]
       62 LOADN                            R5 1
       63 LOADN                            R3 3
       64 LOADN                            R4 1
       65 FORNPREP                         R3
       66 GETIMPORT                        R6 K2 [Instance.new]
       68 LOADK                            R7 K14 ["Animation"]
       69 CALL                             R6 1 1
       70 LOADK                            R8 K14 ["Animation"]
       71 MOVE                             R9 R5
       72 CONCAT                           R7 R8 R9
       73 SETTABLEKS                       R7 R6 K22 ["Name"]
       75 SETTABLEKS                       R2 R6 K15 ["Parent"]
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R8 R10 K19 ["ANIMATIONID_PREFIX"]
       80 MULK                             R11 R5 K20 [100]
       81 ADD                              R10 R0 R11
       82 FASTCALL1                        TOSTRING R10 ; [+2]
       83 GETIMPORT                        R9 K18 [tostring]
       85 CALL                             R9 1 1
       86 CONCAT                           R7 R8 R9
       87 SETTABLEKS                       R7 R6 K21 ["AnimationId"]
       89 FORNLOOP                         R3
       90 RETURN                           R2 1
       91 GETIMPORT                        R4 K13 [Enum.AssetType.SwimAnimation]
       93 GETTABLEKS                       R3 R4 K11 ["Value"]
       95 JUMPIFNOTEQ                      R1 R3 ; [+42]
       97 GETIMPORT                        R3 K2 [Instance.new]
       99 LOADK                            R4 K14 ["Animation"]
      100 CALL                             R3 1 1
      101 LOADK                            R4 K23 ["Swim"]
      102 SETTABLEKS                       R4 R3 K22 ["Name"]
      104 SETTABLEKS                       R2 R3 K15 ["Parent"]
      106 GETUPVAL                         R7 1
      107 GETTABLEKS                       R5 R7 K19 ["ANIMATIONID_PREFIX"]
      109 ADDK                             R7 R0 K20 [100]
      110 FASTCALL1                        TOSTRING R7 ; [+2]
      111 GETIMPORT                        R6 K18 [tostring]
      113 CALL                             R6 1 1
      114 CONCAT                           R4 R5 R6
      115 SETTABLEKS                       R4 R3 K21 ["AnimationId"]
      117 GETIMPORT                        R4 K2 [Instance.new]
      119 LOADK                            R5 K14 ["Animation"]
      120 CALL                             R4 1 1
      121 LOADK                            R5 K24 ["SwimIdle"]
      122 SETTABLEKS                       R5 R4 K22 ["Name"]
      124 SETTABLEKS                       R2 R4 K15 ["Parent"]
      126 GETUPVAL                         R8 1
      127 GETTABLEKS                       R6 R8 K19 ["ANIMATIONID_PREFIX"]
      129 ADDK                             R8 R0 K25 [200]
      130 FASTCALL1                        TOSTRING R8 ; [+2]
      131 GETIMPORT                        R7 K18 [tostring]
      133 CALL                             R7 1 1
      134 CONCAT                           R5 R6 R7
      135 SETTABLEKS                       R5 R4 K21 ["AnimationId"]
      137 RETURN                           R2 1
      138 GETIMPORT                        R3 K27 [warn]
      140 LOADK                            R5 K28 ["getMockAnimationAsset: Unrecognized assetTypeId: "]
      141 FASTCALL1                        TOSTRING R1 ; [+3]
      142 MOVE                             R7 R1
      143 GETIMPORT                        R6 K18 [tostring]
      145 CALL                             R6 1 1
      146 CONCAT                           R4 R5 R6
      147 CALL                             R3 1 0
      148 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["tests"]
       22 GETTABLEKS                       R4 R5 K7 ["Util"]
       24 GETTABLEKS                       R3 R4 K10 ["TestConstants"]
       26 CALL                             R2 1 1
       27 DUPCLOSURE                       R3 K11 [PROTO_0]
       28 CAPTURE                          VAL R2
       29 CAPTURE                          VAL R1
       30 RETURN                           R3 1
