PROTO_0:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETUPVAL                         R2 1
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 JUMPIFNOT                        R0 ; [+51]
       12 GETUPVAL                         R2 2
       13 GETTABLEKS                       R4 R0 K2 ["height"]
       15 GETTABLEKS                       R3 R4 K3 ["min"]
       17 GETTABLEKS                       R5 R0 K4 ["width"]
       19 GETTABLEKS                       R4 R5 K3 ["min"]
       21 GETTABLEKS                       R6 R0 K5 ["head"]
       23 GETTABLEKS                       R5 R6 K3 ["min"]
       25 GETTABLEKS                       R7 R0 K6 ["bodyType"]
       27 GETTABLEKS                       R6 R7 K3 ["min"]
       29 GETTABLEKS                       R8 R0 K7 ["proportion"]
       31 GETTABLEKS                       R7 R8 K3 ["min"]
       33 LOADN                            R8 0
       34 CALL                             R2 6 1
       35 SETTABLEKS                       R2 R1 K8 ["ScalesMin"]
       37 GETUPVAL                         R2 2
       38 GETTABLEKS                       R4 R0 K2 ["height"]
       40 GETTABLEKS                       R3 R4 K9 ["max"]
       42 GETTABLEKS                       R5 R0 K4 ["width"]
       44 GETTABLEKS                       R4 R5 K9 ["max"]
       46 GETTABLEKS                       R6 R0 K5 ["head"]
       48 GETTABLEKS                       R5 R6 K9 ["max"]
       50 GETTABLEKS                       R7 R0 K6 ["bodyType"]
       52 GETTABLEKS                       R6 R7 K9 ["max"]
       54 GETTABLEKS                       R8 R0 K7 ["proportion"]
       56 GETTABLEKS                       R7 R8 K9 ["max"]
       58 LOADN                            R8 0
       59 CALL                             R2 6 1
       60 SETTABLEKS                       R2 R1 K10 ["ScalesMax"]
       62 JUMP                             ; [+51]
       63 GETUPVAL                         R0 3
       64 GETUPVAL                         R2 2
       65 GETTABLEKS                       R4 R0 K11 ["Height"]
       67 GETTABLEKS                       R3 R4 K3 ["min"]
       69 GETTABLEKS                       R5 R0 K12 ["Width"]
       71 GETTABLEKS                       R4 R5 K3 ["min"]
       73 GETTABLEKS                       R6 R0 K13 ["Head"]
       75 GETTABLEKS                       R5 R6 K3 ["min"]
       77 GETTABLEKS                       R7 R0 K14 ["BodyType"]
       79 GETTABLEKS                       R6 R7 K3 ["min"]
       81 GETTABLEKS                       R8 R0 K15 ["Proportion"]
       83 GETTABLEKS                       R7 R8 K3 ["min"]
       85 LOADN                            R8 0
       86 CALL                             R2 6 1
       87 SETTABLEKS                       R2 R1 K8 ["ScalesMin"]
       89 GETUPVAL                         R2 2
       90 GETTABLEKS                       R4 R0 K11 ["Height"]
       92 GETTABLEKS                       R3 R4 K9 ["max"]
       94 GETTABLEKS                       R5 R0 K12 ["Width"]
       96 GETTABLEKS                       R4 R5 K9 ["max"]
       98 GETTABLEKS                       R6 R0 K13 ["Head"]
      100 GETTABLEKS                       R5 R6 K9 ["max"]
      102 GETTABLEKS                       R7 R0 K14 ["BodyType"]
      104 GETTABLEKS                       R6 R7 K9 ["max"]
      106 GETTABLEKS                       R8 R0 K15 ["Proportion"]
      108 GETTABLEKS                       R7 R8 K9 ["max"]
      110 LOADN                            R8 0
      111 CALL                             R2 6 1
      112 SETTABLEKS                       R2 R1 K10 ["ScalesMax"]
      114 GETUPVAL                         R3 4
      115 GETTABLEKS                       R2 R3 K16 ["OuterCollision"]
      117 SETTABLEKS                       R2 R1 K17 ["CollisionValue"]
      119 GETUPVAL                         R3 4
      120 GETTABLEKS                       R2 R3 K18 ["PlayerChoice"]
      122 SETTABLEKS                       R2 R1 K19 ["AnimationValue"]
      124 GETUPVAL                         R3 4
      125 GETTABLEKS                       R2 R3 K18 ["PlayerChoice"]
      127 SETTABLEKS                       R2 R1 K20 ["RigTypeValue"]
      129 RETURN                           R1 1

PROTO_1:
        0 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 DUPTABLE                         R2 K4 [{"AssetsOverrides", "ScalesMin", "ScalesMax"}]
        5 GETUPVAL                         R3 1
        6 SETTABLEKS                       R3 R2 K1 ["AssetsOverrides"]
        8 GETUPVAL                         R3 2
        9 SETTABLEKS                       R3 R2 K2 ["ScalesMin"]
       11 GETUPVAL                         R3 2
       12 SETTABLEKS                       R3 R2 K3 ["ScalesMax"]
       14 JUMPIFNOT                        R0 ; [+14]
       15 GETIMPORT                        R3 K6 [pairs]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 3
       19 FORGPREP_NEXT                    R3
       20 GETTABLE                         R8 R2 R6
       21 JUMPIF                           R8 ; [+1]
       22 DUPCLOSURE                       R8 K7 [PROTO_1]
       23 MOVE                             R9 R8
       24 MOVE                             R10 R7
       25 CALL                             R9 1 1
       26 SETTABLE                         R9 R1 R6
       27 FORGLOOP                         R3 2 ; [-8]
       29 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R2 R0 K1 ["AvatarType"]
        6 JUMPIF                           R2 ; [+2]
        7 GETTABLEKS                       R2 R1 K2 ["RigTypeValue"]
        9 SETTABLEKS                       R2 R1 K2 ["RigTypeValue"]
       11 GETTABLEKS                       R2 R0 K3 ["AvatarAnimation"]
       13 JUMPIF                           R2 ; [+2]
       14 GETTABLEKS                       R2 R1 K4 ["AnimationValue"]
       16 SETTABLEKS                       R2 R1 K4 ["AnimationValue"]
       18 GETTABLEKS                       R2 R0 K5 ["AvatarCollision"]
       20 JUMPIF                           R2 ; [+2]
       21 GETTABLEKS                       R2 R1 K6 ["CollisionValue"]
       23 SETTABLEKS                       R2 R1 K6 ["CollisionValue"]
       25 GETUPVAL                         R2 1
       26 MOVE                             R3 R1
       27 GETTABLEKS                       R4 R0 K7 ["AvatarAssetOverrides"]
       29 CALL                             R2 2 0
       30 GETUPVAL                         R2 2
       31 MOVE                             R3 R1
       32 GETTABLEKS                       R4 R0 K8 ["AvatarScalingMin"]
       34 CALL                             R2 2 0
       35 GETUPVAL                         R2 3
       36 MOVE                             R3 R1
       37 GETTABLEKS                       R4 R0 K9 ["AvatarScalingMax"]
       39 CALL                             R2 2 0
       40 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R3 R1 K0 ["HeightScale"]
        2 GETTABLEKS                       R5 R0 K1 ["ScalesMin"]
        4 GETTABLEKS                       R4 R5 K2 ["height"]
        6 GETTABLEKS                       R6 R0 K3 ["ScalesMax"]
        8 GETTABLEKS                       R5 R6 K2 ["height"]
       10 FASTCALL                         MATH_CLAMP ; [+2]
       11 GETIMPORT                        R2 K6 [math.clamp]
       13 CALL                             R2 3 1
       14 SETTABLEKS                       R2 R1 K0 ["HeightScale"]
       16 GETTABLEKS                       R3 R1 K7 ["WidthScale"]
       18 GETTABLEKS                       R5 R0 K1 ["ScalesMin"]
       20 GETTABLEKS                       R4 R5 K8 ["width"]
       22 GETTABLEKS                       R6 R0 K3 ["ScalesMax"]
       24 GETTABLEKS                       R5 R6 K8 ["width"]
       26 FASTCALL                         MATH_CLAMP ; [+2]
       27 GETIMPORT                        R2 K6 [math.clamp]
       29 CALL                             R2 3 1
       30 SETTABLEKS                       R2 R1 K7 ["WidthScale"]
       32 GETTABLEKS                       R3 R1 K9 ["HeadScale"]
       34 GETTABLEKS                       R5 R0 K1 ["ScalesMin"]
       36 GETTABLEKS                       R4 R5 K10 ["head"]
       38 GETTABLEKS                       R6 R0 K3 ["ScalesMax"]
       40 GETTABLEKS                       R5 R6 K10 ["head"]
       42 FASTCALL                         MATH_CLAMP ; [+2]
       43 GETIMPORT                        R2 K6 [math.clamp]
       45 CALL                             R2 3 1
       46 SETTABLEKS                       R2 R1 K9 ["HeadScale"]
       48 GETTABLEKS                       R3 R1 K11 ["BodyTypeScale"]
       50 GETTABLEKS                       R5 R0 K1 ["ScalesMin"]
       52 GETTABLEKS                       R4 R5 K12 ["bodyType"]
       54 GETTABLEKS                       R6 R0 K3 ["ScalesMax"]
       56 GETTABLEKS                       R5 R6 K12 ["bodyType"]
       58 FASTCALL                         MATH_CLAMP ; [+2]
       59 GETIMPORT                        R2 K6 [math.clamp]
       61 CALL                             R2 3 1
       62 SETTABLEKS                       R2 R1 K11 ["BodyTypeScale"]
       64 GETTABLEKS                       R3 R1 K13 ["ProportionScale"]
       66 GETTABLEKS                       R5 R0 K1 ["ScalesMin"]
       68 GETTABLEKS                       R4 R5 K14 ["proportion"]
       70 GETTABLEKS                       R6 R0 K3 ["ScalesMax"]
       72 GETTABLEKS                       R5 R6 K14 ["proportion"]
       74 FASTCALL                         MATH_CLAMP ; [+2]
       75 GETIMPORT                        R2 K6 [math.clamp]
       77 CALL                             R2 3 1
       78 SETTABLEKS                       R2 R1 K13 ["ProportionScale"]
       80 NEWTABLE                         R2 16 0
       82 GETUPVAL                         R5 0
       83 GETTABLEKS                       R4 R5 K15 ["AssetTypes"]
       85 GETTABLEKS                       R3 R4 K16 ["Face"]
       87 LOADK                            R4 K16 ["Face"]
       88 SETTABLE                         R4 R2 R3
       89 GETUPVAL                         R5 0
       90 GETTABLEKS                       R4 R5 K15 ["AssetTypes"]
       92 GETTABLEKS                       R3 R4 K17 ["Head"]
       94 LOADK                            R4 K17 ["Head"]
       95 SETTABLE                         R4 R2 R3
       96 GETUPVAL                         R5 0
       97 GETTABLEKS                       R4 R5 K15 ["AssetTypes"]
       99 GETTABLEKS                       R3 R4 K18 ["Torso"]
      101 LOADK                            R4 K18 ["Torso"]
      102 SETTABLE                         R4 R2 R3
      103 GETUPVAL                         R5 0
      104 GETTABLEKS                       R4 R5 K15 ["AssetTypes"]
      106 GETTABLEKS                       R3 R4 K19 ["LeftArm"]
      108 LOADK                            R4 K19 ["LeftArm"]
      109 SETTABLE                         R4 R2 R3
      110 GETUPVAL                         R5 0
      111 GETTABLEKS                       R4 R5 K15 ["AssetTypes"]
      113 GETTABLEKS                       R3 R4 K20 ["RightArm"]
      115 LOADK                            R4 K20 ["RightArm"]
      116 SETTABLE                         R4 R2 R3
      117 GETUPVAL                         R5 0
      118 GETTABLEKS                       R4 R5 K15 ["AssetTypes"]
      120 GETTABLEKS                       R3 R4 K21 ["LeftLeg"]
      122 LOADK                            R4 K21 ["LeftLeg"]
      123 SETTABLE                         R4 R2 R3
      124 GETUPVAL                         R5 0
      125 GETTABLEKS                       R4 R5 K15 ["AssetTypes"]
      127 GETTABLEKS                       R3 R4 K22 ["RightLeg"]
      129 LOADK                            R4 K22 ["RightLeg"]
      130 SETTABLE                         R4 R2 R3
      131 GETUPVAL                         R5 0
      132 GETTABLEKS                       R4 R5 K15 ["AssetTypes"]
      134 GETTABLEKS                       R3 R4 K23 ["Shirt"]
      136 LOADK                            R4 K23 ["Shirt"]
      137 SETTABLE                         R4 R2 R3
      138 GETUPVAL                         R5 0
      139 GETTABLEKS                       R4 R5 K15 ["AssetTypes"]
      141 GETTABLEKS                       R3 R4 K24 ["Pants"]
      143 LOADK                            R4 K24 ["Pants"]
      144 SETTABLE                         R4 R2 R3
      145 GETUPVAL                         R5 0
      146 GETTABLEKS                       R4 R5 K15 ["AssetTypes"]
      148 GETTABLEKS                       R3 R4 K25 ["ShirtGraphic"]
      150 LOADK                            R4 K26 ["GraphicTShirt"]
      151 SETTABLE                         R4 R2 R3
      152 GETIMPORT                        R3 K28 [pairs]
      154 MOVE                             R4 R2
      155 CALL                             R3 1 3
      156 FORGPREP_NEXT                    R3
      157 GETTABLEKS                       R10 R0 K29 ["AssetsOverrides"]
      159 GETTABLE                         R9 R10 R6
      160 GETTABLEKS                       R8 R9 K30 ["isPlayerChoice"]
      162 JUMPIF                           R8 ; [+13]
      163 GETTABLEKS                       R10 R0 K29 ["AssetsOverrides"]
      165 GETTABLE                         R9 R10 R6
      166 GETTABLEKS                       R8 R9 K31 ["assetID"]
      168 JUMPIFEQKN                       R8 K32 [0] ; [+7]
      170 GETTABLEKS                       R10 R0 K29 ["AssetsOverrides"]
      172 GETTABLE                         R9 R10 R6
      173 GETTABLEKS                       R8 R9 K31 ["assetID"]
      175 SETTABLE                         R8 R1 R7
      176 FORGLOOP                         R3 2 ; [-20]
      178 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [ipairs]
        4 GETUPVAL                         R3 0
        5 CALL                             R2 1 3
        6 FORGPREP_INEXT                   R2
        7 MOVE                             R9 R6
        8 NAMECALL                         R7 R0 K2 ["getAsset"]
       10 CALL                             R7 2 2
       11 LENGTH                           R10 R1
       12 ADDK                             R9 R10 K3 [1]
       13 DUPTABLE                         R10 K7 [{"assetTypeID", "assetID", "isPlayerChoice"}]
       14 SETTABLEKS                       R6 R10 K4 ["assetTypeID"]
       16 SETTABLEKS                       R7 R10 K5 ["assetID"]
       18 SETTABLEKS                       R8 R10 K6 ["isPlayerChoice"]
       20 SETTABLE                         R10 R1 R9
       21 FORGLOOP                         R2 2 [inext] ; [-15]
       23 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["ScalesMin"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["ScalesMax"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["RigTypeValue"]
        2 GETTABLEKS                       R4 R1 K0 ["RigTypeValue"]
        4 JUMPIFEQ                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["AnimationValue"]
        2 GETTABLEKS                       R4 R1 K0 ["AnimationValue"]
        4 JUMPIFEQ                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["CollisionValue"]
        2 GETTABLEKS                       R4 R1 K0 ["CollisionValue"]
        4 JUMPIFEQ                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_11:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 GETUPVAL                         R3 0
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 MOVE                             R9 R6
        6 NAMECALL                         R7 R0 K2 ["getAsset"]
        8 CALL                             R7 2 2
        9 MOVE                             R11 R6
       10 NAMECALL                         R9 R1 K2 ["getAsset"]
       12 CALL                             R9 2 2
       13 JUMPIFNOTEQ                      R7 R9 ; [+3]
       15 JUMPIFEQ                         R8 R10 ; [+3]
       17 LOADB                            R11 0
       18 RETURN                           R11 1
       19 FORGLOOP                         R2 2 [inext] ; [-15]
       21 LOADB                            R2 1
       22 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["ScalesMin"]
        3 GETTABLEKS                       R4 R1 K0 ["ScalesMin"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["ScalesMax"]
        3 GETTABLEKS                       R4 R1 K0 ["ScalesMax"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["RigTypeValue"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["PlayerChoice"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["RigTypeValue"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["R6"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R2 R0 K0 ["RigTypeValue"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["R15"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["R6"]
        3 SETTABLEKS                       R1 R0 K1 ["RigTypeValue"]
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["R15"]
        3 SETTABLEKS                       R1 R0 K1 ["RigTypeValue"]
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PlayerChoice"]
        3 SETTABLEKS                       R1 R0 K1 ["RigTypeValue"]
        5 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R2 R0 K0 ["AnimationValue"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["AnimationStandard"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R2 R0 K0 ["AnimationValue"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["PlayerChoice"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["AnimationStandard"]
        3 SETTABLEKS                       R1 R0 K1 ["AnimationValue"]
        5 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["PlayerChoice"]
        3 SETTABLEKS                       R1 R0 K1 ["AnimationValue"]
        5 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R2 R0 K0 ["CollisionValue"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["InnerCollision"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["InnerCollision"]
        3 SETTABLEKS                       R1 R0 K1 ["CollisionValue"]
        5 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["CollisionValue"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["OuterCollision"]
        5 JUMPIFEQ                         R2 R3 ; [+2]
        7 LOADB                            R1 0 +1
        8 LOADB                            R1 1
        9 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OuterCollision"]
        3 SETTABLEKS                       R1 R0 K1 ["CollisionValue"]
        5 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R5 R2 K0 ["height"]
        2 GETTABLEKS                       R4 R5 K1 ["max"]
        4 FASTCALL2                        MATH_MIN R4 R1 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R3 K4 [math.min]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 GETTABLEKS                       R5 R2 K0 ["height"]
       13 GETTABLEKS                       R4 R5 K3 ["min"]
       15 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R3 K5 [math.max]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETTABLEKS                       R3 R0 K6 ["ScalesMin"]
       24 SETTABLEKS                       R1 R3 K0 ["height"]
       26 RETURN                           R0 0

PROTO_29:
        0 GETTABLEKS                       R5 R2 K0 ["width"]
        2 GETTABLEKS                       R4 R5 K1 ["max"]
        4 FASTCALL2                        MATH_MIN R4 R1 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R3 K4 [math.min]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 GETTABLEKS                       R5 R2 K0 ["width"]
       13 GETTABLEKS                       R4 R5 K3 ["min"]
       15 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R3 K5 [math.max]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETTABLEKS                       R3 R0 K6 ["ScalesMin"]
       24 SETTABLEKS                       R1 R3 K0 ["width"]
       26 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R5 R2 K0 ["head"]
        2 GETTABLEKS                       R4 R5 K1 ["max"]
        4 FASTCALL2                        MATH_MIN R4 R1 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R3 K4 [math.min]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 GETTABLEKS                       R5 R2 K0 ["head"]
       13 GETTABLEKS                       R4 R5 K3 ["min"]
       15 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R3 K5 [math.max]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETTABLEKS                       R3 R0 K6 ["ScalesMin"]
       24 SETTABLEKS                       R1 R3 K0 ["head"]
       26 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R5 R2 K0 ["bodyType"]
        2 GETTABLEKS                       R4 R5 K1 ["max"]
        4 FASTCALL2                        MATH_MIN R4 R1 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R3 K4 [math.min]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 GETTABLEKS                       R5 R2 K0 ["bodyType"]
       13 GETTABLEKS                       R4 R5 K3 ["min"]
       15 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R3 K5 [math.max]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETTABLEKS                       R3 R0 K6 ["ScalesMin"]
       24 SETTABLEKS                       R1 R3 K0 ["bodyType"]
       26 RETURN                           R0 0

PROTO_32:
        0 GETTABLEKS                       R5 R2 K0 ["proportion"]
        2 GETTABLEKS                       R4 R5 K1 ["max"]
        4 FASTCALL2                        MATH_MIN R4 R1 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R3 K4 [math.min]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 GETTABLEKS                       R5 R2 K0 ["proportion"]
       13 GETTABLEKS                       R4 R5 K3 ["min"]
       15 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R3 K5 [math.max]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETTABLEKS                       R3 R0 K6 ["ScalesMin"]
       24 SETTABLEKS                       R1 R3 K0 ["proportion"]
       26 RETURN                           R0 0

PROTO_33:
        0 GETTABLEKS                       R5 R2 K0 ["height"]
        2 GETTABLEKS                       R4 R5 K1 ["max"]
        4 FASTCALL2                        MATH_MIN R4 R1 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R3 K4 [math.min]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 GETTABLEKS                       R5 R2 K0 ["height"]
       13 GETTABLEKS                       R4 R5 K3 ["min"]
       15 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R3 K5 [math.max]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETTABLEKS                       R3 R0 K6 ["ScalesMax"]
       24 SETTABLEKS                       R1 R3 K0 ["height"]
       26 RETURN                           R0 0

PROTO_34:
        0 GETTABLEKS                       R5 R2 K0 ["width"]
        2 GETTABLEKS                       R4 R5 K1 ["max"]
        4 FASTCALL2                        MATH_MIN R4 R1 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R3 K4 [math.min]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 GETTABLEKS                       R5 R2 K0 ["width"]
       13 GETTABLEKS                       R4 R5 K3 ["min"]
       15 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R3 K5 [math.max]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETTABLEKS                       R3 R0 K6 ["ScalesMax"]
       24 SETTABLEKS                       R1 R3 K0 ["width"]
       26 RETURN                           R0 0

PROTO_35:
        0 GETTABLEKS                       R5 R2 K0 ["head"]
        2 GETTABLEKS                       R4 R5 K1 ["max"]
        4 FASTCALL2                        MATH_MIN R4 R1 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R3 K4 [math.min]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 GETTABLEKS                       R5 R2 K0 ["head"]
       13 GETTABLEKS                       R4 R5 K3 ["min"]
       15 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R3 K5 [math.max]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETTABLEKS                       R3 R0 K6 ["ScalesMax"]
       24 SETTABLEKS                       R1 R3 K0 ["head"]
       26 RETURN                           R0 0

PROTO_36:
        0 GETTABLEKS                       R5 R2 K0 ["bodyType"]
        2 GETTABLEKS                       R4 R5 K1 ["max"]
        4 FASTCALL2                        MATH_MIN R4 R1 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R3 K4 [math.min]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 GETTABLEKS                       R5 R2 K0 ["bodyType"]
       13 GETTABLEKS                       R4 R5 K3 ["min"]
       15 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R3 K5 [math.max]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETTABLEKS                       R3 R0 K6 ["ScalesMax"]
       24 SETTABLEKS                       R1 R3 K0 ["bodyType"]
       26 RETURN                           R0 0

PROTO_37:
        0 GETTABLEKS                       R5 R2 K0 ["proportion"]
        2 GETTABLEKS                       R4 R5 K1 ["max"]
        4 FASTCALL2                        MATH_MIN R4 R1 ; [+4]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R3 K4 [math.min]
        9 CALL                             R3 2 1
       10 MOVE                             R1 R3
       11 GETTABLEKS                       R5 R2 K0 ["proportion"]
       13 GETTABLEKS                       R4 R5 K3 ["min"]
       15 FASTCALL2                        MATH_MAX R4 R1 ; [+4]
       17 MOVE                             R5 R1
       18 GETIMPORT                        R3 K5 [math.max]
       20 CALL                             R3 2 1
       21 MOVE                             R1 R3
       22 GETTABLEKS                       R3 R0 K6 ["ScalesMax"]
       24 SETTABLEKS                       R1 R3 K0 ["proportion"]
       26 RETURN                           R0 0

PROTO_38:
        0 GETTABLEKS                       R2 R0 K0 ["ScalesMin"]
        2 GETTABLEKS                       R1 R2 K1 ["height"]
        4 RETURN                           R1 1

PROTO_39:
        0 GETTABLEKS                       R2 R0 K0 ["ScalesMin"]
        2 GETTABLEKS                       R1 R2 K1 ["width"]
        4 RETURN                           R1 1

PROTO_40:
        0 GETTABLEKS                       R2 R0 K0 ["ScalesMin"]
        2 GETTABLEKS                       R1 R2 K1 ["head"]
        4 RETURN                           R1 1

PROTO_41:
        0 GETTABLEKS                       R2 R0 K0 ["ScalesMin"]
        2 GETTABLEKS                       R1 R2 K1 ["bodyType"]
        4 RETURN                           R1 1

PROTO_42:
        0 GETTABLEKS                       R2 R0 K0 ["ScalesMin"]
        2 GETTABLEKS                       R1 R2 K1 ["proportion"]
        4 RETURN                           R1 1

PROTO_43:
        0 GETTABLEKS                       R2 R0 K0 ["ScalesMax"]
        2 GETTABLEKS                       R1 R2 K1 ["height"]
        4 RETURN                           R1 1

PROTO_44:
        0 GETTABLEKS                       R2 R0 K0 ["ScalesMax"]
        2 GETTABLEKS                       R1 R2 K1 ["width"]
        4 RETURN                           R1 1

PROTO_45:
        0 GETTABLEKS                       R2 R0 K0 ["ScalesMax"]
        2 GETTABLEKS                       R1 R2 K1 ["head"]
        4 RETURN                           R1 1

PROTO_46:
        0 GETTABLEKS                       R2 R0 K0 ["ScalesMax"]
        2 GETTABLEKS                       R1 R2 K1 ["bodyType"]
        4 RETURN                           R1 1

PROTO_47:
        0 GETTABLEKS                       R2 R0 K0 ["ScalesMax"]
        2 GETTABLEKS                       R1 R2 K1 ["proportion"]
        4 RETURN                           R1 1

PROTO_48:
        0 GETTABLEKS                       R5 R0 K0 ["AssetsOverrides"]
        2 GETTABLE                         R4 R5 R1
        3 JUMPIFNOT                        R4 ; [+14]
        4 JUMPIFEQKNIL                     R2 ; [+6]
        6 GETTABLEKS                       R5 R0 K0 ["AssetsOverrides"]
        8 GETTABLE                         R4 R5 R1
        9 SETTABLEKS                       R2 R4 K1 ["assetID"]
       11 JUMPIFEQKNIL                     R3 ; [+6]
       13 GETTABLEKS                       R5 R0 K0 ["AssetsOverrides"]
       15 GETTABLE                         R4 R5 R1
       16 SETTABLEKS                       R3 R4 K2 ["isPlayerChoice"]
       18 RETURN                           R0 0

PROTO_49:
        0 GETTABLEKS                       R3 R0 K0 ["AssetsOverrides"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETTABLEKS                       R4 R0 K0 ["AssetsOverrides"]
        6 GETTABLE                         R3 R4 R1
        7 GETTABLEKS                       R2 R3 K1 ["assetID"]
        9 GETTABLEKS                       R5 R0 K0 ["AssetsOverrides"]
       11 GETTABLE                         R4 R5 R1
       12 GETTABLEKS                       R3 R4 K2 ["isPlayerChoice"]
       14 RETURN                           R2 2
       15 LOADNIL                          R2
       16 LOADNIL                          R3
       17 RETURN                           R2 2

PROTO_50:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["AssetsOverrides"]
        4 GETIMPORT                        R1 K2 [ipairs]
        6 GETUPVAL                         R2 0
        7 CALL                             R1 1 3
        8 FORGPREP_INEXT                   R1
        9 GETTABLEKS                       R6 R0 K0 ["AssetsOverrides"]
       11 DUPTABLE                         R7 K5 [{"assetID", "isPlayerChoice"}]
       12 LOADN                            R8 0
       13 SETTABLEKS                       R8 R7 K3 ["assetID"]
       15 LOADB                            R8 1
       16 SETTABLEKS                       R8 R7 K4 ["isPlayerChoice"]
       18 SETTABLE                         R7 R6 R5
       19 FORGLOOP                         R1 2 [inext] ; [-11]
       21 RETURN                           R0 0

PROTO_51:
        0 DUPTABLE                         R6 K6 [{"height", "width", "head", "bodyType", "proportion", "depth"}]
        1 SETTABLEKS                       R0 R6 K0 ["height"]
        3 SETTABLEKS                       R1 R6 K1 ["width"]
        5 SETTABLEKS                       R2 R6 K2 ["head"]
        7 SETTABLEKS                       R3 R6 K3 ["bodyType"]
        9 SETTABLEKS                       R4 R6 K4 ["proportion"]
       11 SETTABLEKS                       R5 R6 K5 ["depth"]
       13 RETURN                           R6 1

PROTO_52:
        0 JUMPIFNOT                        R1 ; [+16]
        1 GETIMPORT                        R2 K1 [pairs]
        3 MOVE                             R3 R1
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 GETTABLEKS                       R9 R6 K2 ["assetTypeID"]
        8 GETTABLEKS                       R10 R6 K3 ["assetID"]
       10 GETTABLEKS                       R11 R6 K4 ["isPlayerChoice"]
       12 NAMECALL                         R7 R0 K5 ["setAsset"]
       14 CALL                             R7 4 0
       15 FORGLOOP                         R2 2 ; [-10]
       17 RETURN                           R0 0

PROTO_53:
        0 JUMPIFNOT                        R1 ; [+16]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R1 K0 ["height"]
        4 GETTABLEKS                       R4 R1 K1 ["width"]
        6 GETTABLEKS                       R5 R1 K2 ["head"]
        8 GETTABLEKS                       R6 R1 K3 ["bodyType"]
       10 GETTABLEKS                       R7 R1 K4 ["proportion"]
       12 GETTABLEKS                       R8 R1 K5 ["depth"]
       14 CALL                             R2 6 1
       15 SETTABLEKS                       R2 R0 K6 ["ScalesMin"]
       17 RETURN                           R0 0

PROTO_54:
        0 JUMPIFNOT                        R1 ; [+16]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R3 R1 K0 ["height"]
        4 GETTABLEKS                       R4 R1 K1 ["width"]
        6 GETTABLEKS                       R5 R1 K2 ["head"]
        8 GETTABLEKS                       R6 R1 K3 ["bodyType"]
       10 GETTABLEKS                       R7 R1 K4 ["proportion"]
       12 GETTABLEKS                       R8 R1 K5 ["depth"]
       14 CALL                             R2 6 1
       15 SETTABLEKS                       R2 R0 K6 ["ScalesMax"]
       17 RETURN                           R0 0

PROTO_55:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 DUPTABLE                         R7 K4 [{"assetID", "isPlayerChoice"}]
        8 GETTABLEKS                       R8 R6 K2 ["assetID"]
       10 SETTABLEKS                       R8 R7 K2 ["assetID"]
       12 GETTABLEKS                       R8 R6 K3 ["isPlayerChoice"]
       14 SETTABLEKS                       R8 R7 K3 ["isPlayerChoice"]
       16 SETTABLE                         R7 R1 R5
       17 FORGLOOP                         R2 2 ; [-11]
       19 RETURN                           R1 1

PROTO_56:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 SETTABLE                         R6 R1 R5
        8 FORGLOOP                         R2 2 ; [-2]
       10 RETURN                           R1 1

PROTO_57:
        0 GETIMPORT                        R2 K1 [pairs]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 3
        4 FORGPREP_NEXT                    R2
        5 GETTABLE                         R7 R1 R5
        6 JUMPIFEQ                         R6 R7 ; [+3]
        8 LOADB                            R7 0
        9 RETURN                           R7 1
       10 FORGLOOP                         R2 2 ; [-6]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K2 ["countDictionaryKeys"]
       15 MOVE                             R4 R0
       16 CALL                             R3 1 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K2 ["countDictionaryKeys"]
       20 MOVE                             R5 R1
       21 CALL                             R4 1 1
       22 JUMPIFEQ                         R3 R4 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["Util"]
       11 GETTABLEKS                       R2 R3 K6 ["ConstantAvatar"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["Util"]
       18 GETTABLEKS                       R3 R4 K7 ["ConstantScaleBoundaries"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K4 [require]
       23 GETTABLEKS                       R5 R0 K5 ["Util"]
       25 GETTABLEKS                       R4 R5 K8 ["ConstantTemplate"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K4 [require]
       30 GETTABLEKS                       R6 R0 K5 ["Util"]
       32 GETTABLEKS                       R5 R6 K9 ["UtilityFunctionsTable"]
       34 CALL                             R4 1 1
       35 NEWTABLE                         R5 64 0
       37 SETTABLEKS                       R5 R5 K10 ["__index"]
       39 LOADNIL                          R6
       40 LOADNIL                          R7
       41 LOADNIL                          R8
       42 LOADNIL                          R9
       43 LOADNIL                          R10
       44 LOADNIL                          R11
       45 LOADNIL                          R12
       46 LOADNIL                          R13
       47 NEWTABLE                         R14 0 10
       49 GETTABLEKS                       R16 R1 K11 ["AssetTypes"]
       51 GETTABLEKS                       R15 R16 K12 ["Face"]
       53 GETTABLEKS                       R17 R1 K11 ["AssetTypes"]
       55 GETTABLEKS                       R16 R17 K13 ["Head"]
       57 GETTABLEKS                       R18 R1 K11 ["AssetTypes"]
       59 GETTABLEKS                       R17 R18 K14 ["Torso"]
       61 GETTABLEKS                       R19 R1 K11 ["AssetTypes"]
       63 GETTABLEKS                       R18 R19 K15 ["LeftArm"]
       65 GETTABLEKS                       R20 R1 K11 ["AssetTypes"]
       67 GETTABLEKS                       R19 R20 K16 ["RightArm"]
       69 GETTABLEKS                       R21 R1 K11 ["AssetTypes"]
       71 GETTABLEKS                       R20 R21 K17 ["LeftLeg"]
       73 GETTABLEKS                       R22 R1 K11 ["AssetTypes"]
       75 GETTABLEKS                       R21 R22 K18 ["RightLeg"]
       77 GETTABLEKS                       R23 R1 K11 ["AssetTypes"]
       79 GETTABLEKS                       R22 R23 K19 ["Shirt"]
       81 GETTABLEKS                       R24 R1 K11 ["AssetTypes"]
       83 GETTABLEKS                       R23 R24 K20 ["Pants"]
       85 GETTABLEKS                       R25 R1 K11 ["AssetTypes"]
       87 GETTABLEKS                       R24 R25 K21 ["ShirtGraphic"]
       89 SETLIST                          R14 R15 10 [1]
       91 NEWCLOSURE                       R15 P0
       92 CAPTURE                          VAL R5
       93 CAPTURE                          REF R6
       94 CAPTURE                          REF R7
       95 CAPTURE                          VAL R2
       96 CAPTURE                          VAL R3
       97 SETTABLEKS                       R15 R5 K22 ["new"]
       99 NEWCLOSURE                       R15 P1
      100 CAPTURE                          VAL R5
      101 CAPTURE                          REF R11
      102 CAPTURE                          REF R12
      103 SETTABLEKS                       R15 R5 K23 ["makeCopy"]
      105 NEWCLOSURE                       R15 P2
      106 CAPTURE                          VAL R5
      107 CAPTURE                          REF R8
      108 CAPTURE                          REF R9
      109 CAPTURE                          REF R10
      110 SETTABLEKS                       R15 R5 K24 ["fromUniverseData"]
      112 DUPCLOSURE                       R15 K25 [PROTO_4]
      113 CAPTURE                          VAL R1
      114 SETTABLEKS                       R15 R5 K26 ["apply"]
      116 DUPCLOSURE                       R15 K27 [PROTO_5]
      117 CAPTURE                          VAL R14
      118 SETTABLEKS                       R15 R5 K28 ["extractAssetOverridesForSaving"]
      120 NEWCLOSURE                       R15 P5
      121 CAPTURE                          REF R12
      122 SETTABLEKS                       R15 R5 K29 ["extractScalingMinForSaving"]
      124 NEWCLOSURE                       R15 P6
      125 CAPTURE                          REF R12
      126 SETTABLEKS                       R15 R5 K30 ["extractScalingMaxForSaving"]
      128 DUPCLOSURE                       R15 K31 [PROTO_8]
      129 SETTABLEKS                       R15 R5 K32 ["isAvatarTypeEqualTo"]
      131 DUPCLOSURE                       R15 K33 [PROTO_9]
      132 SETTABLEKS                       R15 R5 K34 ["isAnimationEqualTo"]
      134 DUPCLOSURE                       R15 K35 [PROTO_10]
      135 SETTABLEKS                       R15 R5 K36 ["isCollisionEqualTo"]
      137 DUPCLOSURE                       R15 K37 [PROTO_11]
      138 CAPTURE                          VAL R14
      139 SETTABLEKS                       R15 R5 K38 ["areAssetsEqualTo"]
      141 NEWCLOSURE                       R15 P11
      142 CAPTURE                          REF R13
      143 SETTABLEKS                       R15 R5 K39 ["areMinScalesEqualTo"]
      145 NEWCLOSURE                       R15 P12
      146 CAPTURE                          REF R13
      147 SETTABLEKS                       R15 R5 K40 ["areMaxScalesEqualTo"]
      149 DUPCLOSURE                       R15 K41 [PROTO_14]
      150 CAPTURE                          VAL R3
      151 SETTABLEKS                       R15 R5 K42 ["isRigTypePlayerChoice"]
      153 DUPCLOSURE                       R15 K43 [PROTO_15]
      154 CAPTURE                          VAL R3
      155 SETTABLEKS                       R15 R5 K44 ["isRigTypeR6"]
      157 DUPCLOSURE                       R15 K45 [PROTO_16]
      158 CAPTURE                          VAL R3
      159 SETTABLEKS                       R15 R5 K46 ["isRigTypeR15"]
      161 DUPCLOSURE                       R15 K47 [PROTO_17]
      162 CAPTURE                          VAL R3
      163 SETTABLEKS                       R15 R5 K48 ["setRigTypeR6"]
      165 DUPCLOSURE                       R15 K49 [PROTO_18]
      166 CAPTURE                          VAL R3
      167 SETTABLEKS                       R15 R5 K50 ["setRigTypeR15"]
      169 DUPCLOSURE                       R15 K51 [PROTO_19]
      170 CAPTURE                          VAL R3
      171 SETTABLEKS                       R15 R5 K52 ["setRigTypePlayerChoice"]
      173 DUPCLOSURE                       R15 K53 [PROTO_20]
      174 CAPTURE                          VAL R3
      175 SETTABLEKS                       R15 R5 K54 ["isAnimationStandard"]
      177 DUPCLOSURE                       R15 K55 [PROTO_21]
      178 CAPTURE                          VAL R3
      179 SETTABLEKS                       R15 R5 K56 ["isAnimationPlayerChoice"]
      181 DUPCLOSURE                       R15 K57 [PROTO_22]
      182 CAPTURE                          VAL R3
      183 SETTABLEKS                       R15 R5 K58 ["setAnimationStandard"]
      185 DUPCLOSURE                       R15 K59 [PROTO_23]
      186 CAPTURE                          VAL R3
      187 SETTABLEKS                       R15 R5 K60 ["setAnimationPlayerChoice"]
      189 DUPCLOSURE                       R15 K61 [PROTO_24]
      190 CAPTURE                          VAL R3
      191 SETTABLEKS                       R15 R5 K62 ["isCollisionInnerBox"]
      193 DUPCLOSURE                       R15 K63 [PROTO_25]
      194 CAPTURE                          VAL R3
      195 SETTABLEKS                       R15 R5 K64 ["setCollisionInnerBox"]
      197 DUPCLOSURE                       R15 K65 [PROTO_26]
      198 CAPTURE                          VAL R3
      199 SETTABLEKS                       R15 R5 K66 ["isCollisionOuterBox"]
      201 DUPCLOSURE                       R15 K67 [PROTO_27]
      202 CAPTURE                          VAL R3
      203 SETTABLEKS                       R15 R5 K68 ["setCollisionOuterBox"]
      205 DUPCLOSURE                       R15 K69 [PROTO_28]
      206 SETTABLEKS                       R15 R5 K70 ["setScaleHeightMin"]
      208 DUPCLOSURE                       R15 K71 [PROTO_29]
      209 SETTABLEKS                       R15 R5 K72 ["setScaleWidthMin"]
      211 DUPCLOSURE                       R15 K73 [PROTO_30]
      212 SETTABLEKS                       R15 R5 K74 ["setScaleHeadMin"]
      214 DUPCLOSURE                       R15 K75 [PROTO_31]
      215 SETTABLEKS                       R15 R5 K76 ["setScaleBodyTypeMin"]
      217 DUPCLOSURE                       R15 K77 [PROTO_32]
      218 SETTABLEKS                       R15 R5 K78 ["setScaleProportionMin"]
      220 DUPCLOSURE                       R15 K79 [PROTO_33]
      221 SETTABLEKS                       R15 R5 K80 ["setScaleHeightMax"]
      223 DUPCLOSURE                       R15 K81 [PROTO_34]
      224 SETTABLEKS                       R15 R5 K82 ["setScaleWidthMax"]
      226 DUPCLOSURE                       R15 K83 [PROTO_35]
      227 SETTABLEKS                       R15 R5 K84 ["setScaleHeadMax"]
      229 DUPCLOSURE                       R15 K85 [PROTO_36]
      230 SETTABLEKS                       R15 R5 K86 ["setScaleBodyTypeMax"]
      232 DUPCLOSURE                       R15 K87 [PROTO_37]
      233 SETTABLEKS                       R15 R5 K88 ["setScaleProportionMax"]
      235 DUPCLOSURE                       R15 K89 [PROTO_38]
      236 SETTABLEKS                       R15 R5 K90 ["getScaleHeightMin"]
      238 DUPCLOSURE                       R15 K91 [PROTO_39]
      239 SETTABLEKS                       R15 R5 K92 ["getScaleWidthMin"]
      241 DUPCLOSURE                       R15 K93 [PROTO_40]
      242 SETTABLEKS                       R15 R5 K94 ["getScaleHeadMin"]
      244 DUPCLOSURE                       R15 K95 [PROTO_41]
      245 SETTABLEKS                       R15 R5 K96 ["getScaleBodyTypeMin"]
      247 DUPCLOSURE                       R15 K97 [PROTO_42]
      248 SETTABLEKS                       R15 R5 K98 ["getScaleProportionMin"]
      250 DUPCLOSURE                       R15 K99 [PROTO_43]
      251 SETTABLEKS                       R15 R5 K100 ["getScaleHeightMax"]
      253 DUPCLOSURE                       R15 K101 [PROTO_44]
      254 SETTABLEKS                       R15 R5 K102 ["getScaleWidthMax"]
      256 DUPCLOSURE                       R15 K103 [PROTO_45]
      257 SETTABLEKS                       R15 R5 K104 ["getScaleHeadMax"]
      259 DUPCLOSURE                       R15 K105 [PROTO_46]
      260 SETTABLEKS                       R15 R5 K106 ["getScaleBodyTypeMax"]
      262 DUPCLOSURE                       R15 K107 [PROTO_47]
      263 SETTABLEKS                       R15 R5 K108 ["getScaleProportionMax"]
      265 DUPCLOSURE                       R15 K109 [PROTO_48]
      266 SETTABLEKS                       R15 R5 K110 ["setAsset"]
      268 DUPCLOSURE                       R15 K111 [PROTO_49]
      269 SETTABLEKS                       R15 R5 K112 ["getAsset"]
      271 DUPCLOSURE                       R6 K113 [PROTO_50]
      272 CAPTURE                          VAL R14
      273 DUPCLOSURE                       R7 K114 [PROTO_51]
      274 DUPCLOSURE                       R8 K115 [PROTO_52]
      275 NEWCLOSURE                       R9 P52
      276 CAPTURE                          REF R7
      277 NEWCLOSURE                       R10 P53
      278 CAPTURE                          REF R7
      279 DUPCLOSURE                       R11 K116 [PROTO_55]
      280 DUPCLOSURE                       R12 K117 [PROTO_56]
      281 DUPCLOSURE                       R13 K118 [PROTO_57]
      282 CAPTURE                          VAL R4
      283 CLOSEUPVALS                      R6
      284 RETURN                           R5 1
