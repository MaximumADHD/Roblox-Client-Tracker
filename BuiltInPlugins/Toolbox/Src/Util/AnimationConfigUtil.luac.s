PROTO_0:
        0 MOVE                             R5 R1
        1 NAMECALL                         R3 R0 K0 ["FindFirstChild"]
        3 CALL                             R3 2 1
        4 JUMPIFNOT                        R3 ; [+6]
        5 MOVE                             R6 R2
        6 NAMECALL                         R4 R3 K1 ["IsA"]
        8 CALL                             R4 2 1
        9 JUMPIFNOT                        R4 ; [+1]
       10 RETURN                           R3 1
       11 GETIMPORT                        R4 K4 [Instance.new]
       13 MOVE                             R5 R2
       14 CALL                             R4 1 1
       15 SETTABLEKS                       R1 R4 K5 ["Name"]
       17 SETTABLEKS                       R0 R4 K6 ["Parent"]
       19 RETURN                           R4 1

PROTO_1:
        0 LOADK                            R3 K0 ["rbxassetid://"]
        1 FASTCALL1                        TOSTRING R1 ; [+3]
        2 MOVE                             R5 R1
        3 GETIMPORT                        R4 K2 [tostring]
        5 CALL                             R4 1 1
        6 CONCAT                           R2 R3 R4
        7 SETTABLEKS                       R2 R0 K3 ["AnimationId"]
        9 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R5 K0 ["Model"]
        1 NAMECALL                         R3 R0 K1 ["IsA"]
        3 CALL                             R3 2 1
        4 JUMPIF                           R3 ; [+2]
        5 LOADNIL                          R3
        6 RETURN                           R3 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["getAllowedAssetTypeEnumsForBundle"]
       10 MOVE                             R4 R1
       11 MOVE                             R5 R2
       12 CALL                             R3 2 1
       13 NEWTABLE                         R4 0 0
       15 GETUPVAL                         R5 1
       16 GETTABLEKS                       R5 R5 K3 ["UGC_AVATAR_ANIMATIONS_PARTS"]
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 GETUPVAL                         R10 2
       22 GETTABLEKS                       R10 R10 K4 ["resolveBundlePartContainer"]
       24 MOVE                             R11 R0
       25 MOVE                             R12 R9
       26 CALL                             R10 2 1
       27 JUMPIFEQKNIL                     R10 ; [+25]
       29 GETUPVAL                         R12 1
       30 GETTABLEKS                       R12 R12 K5 ["UGC_AVATAR_ANIMATIONS_PART_NAMES_TO_ASSET_TYPE"]
       32 GETTABLE                         R11 R12 R8
       33 GETUPVAL                         R12 0
       34 GETTABLEKS                       R12 R12 K6 ["isAllowedUGCAssetType"]
       36 MOVE                             R13 R11
       37 MOVE                             R14 R3
       38 CALL                             R12 2 1
       39 JUMPIFNOT                        R12 ; [+13]
       40 GETTABLE                         R12 R4 R11
       41 JUMPIFNOTEQKNIL                  R12 ; [+4]
       43 NEWTABLE                         R12 0 0
       45 SETTABLE                         R12 R4 R11
       46 FASTCALL2                        TABLE_INSERT R12 R10 ; [+5]
       48 MOVE                             R14 R12
       49 MOVE                             R15 R10
       50 GETIMPORT                        R13 K9 [table.insert]
       52 CALL                             R13 2 0
       53 FORGLOOP                         R5 2 ; [-33]
       55 RETURN                           R4 1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+2]
        1 JUMPIFNOTEQKS                    R0 K0 ["EmoteAnimation"] ; [+4]
        3 LOADNIL                          R1
        4 LOADNIL                          R2
        5 RETURN                           R1 2
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["AVATAR_ANIMATION_SUB_NAMES"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K1 ["AVATAR_ANIMATION_SUB_NAMES"]
       13 GETTABLE                         R1 R2 R0
       14 JUMPIFNOT                        R1 ; [+4]
       15 LENGTH                           R2 R1
       16 LOADN                            R3 0
       17 JUMPIFLT                         R3 R2 ; [+4]
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 RETURN                           R2 2
       22 LENGTH                           R2 R1
       23 JUMPIFNOTEQKN                    R2 K2 [1] ; [+4]
       25 GETTABLEN                        R2 R1 1
       26 LOADNIL                          R3
       27 RETURN                           R2 2
       28 GETIMPORT                        R2 K5 [table.create]
       30 LENGTH                           R3 R1
       31 CALL                             R2 1 1
       32 GETIMPORT                        R3 K7 [ipairs]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 3
       36 FORGPREP_INEXT                   R3
       37 DUPTABLE                         R10 K10 [{"id", "text"}]
       38 SETTABLEKS                       R7 R10 K8 ["id"]
       40 SETTABLEKS                       R7 R10 K9 ["text"]
       42 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       44 MOVE                             R9 R2
       45 GETIMPORT                        R8 K12 [table.insert]
       47 CALL                             R8 2 0
       48 FORGLOOP                         R3 2 [inext] ; [-12]
       50 LOADNIL                          R3
       51 MOVE                             R4 R2
       52 RETURN                           R3 2

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["AVATAR_ANIMATION_INSTANCE_NAMES"]
        3 JUMPIFNOT                        R3 ; [+4]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K0 ["AVATAR_ANIMATION_INSTANCE_NAMES"]
        7 GETTABLE                         R3 R4 R0
        8 MOVE                             R4 R3
        9 JUMPIFNOT                        R4 ; [+1]
       10 GETTABLE                         R4 R3 R1
       11 JUMPIFNOT                        R4 ; [+1]
       12 RETURN                           R4 1
       13 LOADN                            R5 0
       14 GETIMPORT                        R6 K2 [ipairs]
       16 NAMECALL                         R7 R2 K3 ["GetChildren"]
       18 CALL                             R7 1 -1
       19 CALL                             R6 -1 3
       20 FORGPREP_INEXT                   R6
       21 LOADK                            R13 K4 ["Animation"]
       22 NAMECALL                         R11 R10 K5 ["IsA"]
       24 CALL                             R11 2 1
       25 JUMPIFNOT                        R11 ; [+1]
       26 ADDK                             R5 R5 K6 [1]
       27 FORGLOOP                         R6 2 [inext] ; [-7]
       29 LOADK                            R7 K4 ["Animation"]
       30 ADDK                             R9 R5 K6 [1]
       31 FASTCALL1                        TOSTRING R9 ; [+2]
       32 GETIMPORT                        R8 K8 [tostring]
       34 CALL                             R8 1 1
       35 CONCAT                           R6 R7 R8
       36 RETURN                           R6 1

PROTO_5:
        0 GETIMPORT                        R5 K1 [game]
        2 LOADK                            R7 K2 ["Workspace"]
        3 NAMECALL                         R5 R5 K3 ["GetService"]
        5 CALL                             R5 2 1
        6 LOADNIL                          R6
        7 JUMPIFNOT                        R4 ; [+43]
        8 MOVE                             R10 R4
        9 NAMECALL                         R8 R5 K4 ["FindFirstChild"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+7]
       13 LOADK                            R11 K5 ["Model"]
       14 NAMECALL                         R9 R8 K6 ["IsA"]
       16 CALL                             R9 2 1
       17 JUMPIFNOT                        R9 ; [+2]
       18 MOVE                             R7 R8
       19 JUMP                             ; [+9]
       20 GETIMPORT                        R9 K9 [Instance.new]
       22 LOADK                            R10 K5 ["Model"]
       23 CALL                             R9 1 1
       24 SETTABLEKS                       R4 R9 K10 ["Name"]
       26 SETTABLEKS                       R5 R9 K11 ["Parent"]
       28 MOVE                             R7 R9
       29 MOVE                             R10 R0
       30 NAMECALL                         R8 R7 K4 ["FindFirstChild"]
       32 CALL                             R8 2 1
       33 JUMPIFNOT                        R8 ; [+7]
       34 LOADK                            R11 K5 ["Model"]
       35 NAMECALL                         R9 R8 K6 ["IsA"]
       37 CALL                             R9 2 1
       38 JUMPIFNOT                        R9 ; [+2]
       39 MOVE                             R6 R8
       40 JUMP                             ; [+31]
       41 GETIMPORT                        R9 K9 [Instance.new]
       43 LOADK                            R10 K5 ["Model"]
       44 CALL                             R9 1 1
       45 SETTABLEKS                       R0 R9 K10 ["Name"]
       47 SETTABLEKS                       R7 R9 K11 ["Parent"]
       49 MOVE                             R6 R9
       50 JUMP                             ; [+21]
       51 MOVE                             R9 R0
       52 NAMECALL                         R7 R5 K4 ["FindFirstChild"]
       54 CALL                             R7 2 1
       55 JUMPIFNOT                        R7 ; [+7]
       56 LOADK                            R10 K5 ["Model"]
       57 NAMECALL                         R8 R7 K6 ["IsA"]
       59 CALL                             R8 2 1
       60 JUMPIFNOT                        R8 ; [+2]
       61 MOVE                             R6 R7
       62 JUMP                             ; [+9]
       63 GETIMPORT                        R8 K9 [Instance.new]
       65 LOADK                            R9 K5 ["Model"]
       66 CALL                             R8 1 1
       67 SETTABLEKS                       R0 R8 K10 ["Name"]
       69 SETTABLEKS                       R5 R8 K11 ["Parent"]
       71 MOVE                             R6 R8
       72 MOVE                             R8 R6
       73 LOADK                            R11 K12 ["R15Anim"]
       74 NAMECALL                         R9 R8 K4 ["FindFirstChild"]
       76 CALL                             R9 2 1
       77 JUMPIFNOT                        R9 ; [+7]
       78 LOADK                            R12 K13 ["Folder"]
       79 NAMECALL                         R10 R9 K6 ["IsA"]
       81 CALL                             R10 2 1
       82 JUMPIFNOT                        R10 ; [+2]
       83 MOVE                             R7 R9
       84 JUMP                             ; [+10]
       85 GETIMPORT                        R10 K9 [Instance.new]
       87 LOADK                            R11 K13 ["Folder"]
       88 CALL                             R10 1 1
       89 LOADK                            R11 K12 ["R15Anim"]
       90 SETTABLEKS                       R11 R10 K10 ["Name"]
       92 SETTABLEKS                       R8 R10 K11 ["Parent"]
       94 MOVE                             R7 R10
       95 MOVE                             R11 R1
       96 NAMECALL                         R9 R7 K4 ["FindFirstChild"]
       98 CALL                             R9 2 1
       99 JUMPIFNOT                        R9 ; [+7]
      100 LOADK                            R12 K14 ["StringValue"]
      101 NAMECALL                         R10 R9 K6 ["IsA"]
      103 CALL                             R10 2 1
      104 JUMPIFNOT                        R10 ; [+2]
      105 MOVE                             R8 R9
      106 JUMP                             ; [+9]
      107 GETIMPORT                        R10 K9 [Instance.new]
      109 LOADK                            R11 K14 ["StringValue"]
      110 CALL                             R10 1 1
      111 SETTABLEKS                       R1 R10 K10 ["Name"]
      113 SETTABLEKS                       R7 R10 K11 ["Parent"]
      115 MOVE                             R8 R10
      116 GETUPVAL                         R9 0
      117 MOVE                             R10 R0
      118 MOVE                             R11 R1
      119 MOVE                             R12 R8
      120 CALL                             R9 3 1
      121 GETIMPORT                        R10 K9 [Instance.new]
      123 LOADK                            R11 K15 ["Animation"]
      124 CALL                             R10 1 1
      125 SETTABLEKS                       R9 R10 K10 ["Name"]
      127 LOADK                            R12 K16 ["rbxassetid://"]
      128 FASTCALL1                        TOSTRING R2 ; [+3]
      129 MOVE                             R14 R2
      130 GETIMPORT                        R13 K18 [tostring]
      132 CALL                             R13 1 1
      133 CONCAT                           R11 R12 R13
      134 SETTABLEKS                       R11 R10 K19 ["AnimationId"]
      136 SETTABLEKS                       R8 R10 K11 ["Parent"]
      138 JUMPIFEQKNIL                     R3 ; [+12]
      140 GETIMPORT                        R11 K9 [Instance.new]
      142 LOADK                            R12 K20 ["NumberValue"]
      143 CALL                             R11 1 1
      144 LOADK                            R12 K21 ["Weight"]
      145 SETTABLEKS                       R12 R11 K10 ["Name"]
      147 SETTABLEKS                       R3 R11 K22 ["Value"]
      149 SETTABLEKS                       R10 R11 K11 ["Parent"]
      151 GETIMPORT                        R11 K1 [game]
      153 LOADK                            R13 K23 ["Selection"]
      154 NAMECALL                         R11 R11 K3 ["GetService"]
      156 CALL                             R11 2 1
      157 NEWTABLE                         R14 0 1
      159 MOVE                             R15 R6
      160 SETLIST                          R14 R15 1 [1]
      162 NAMECALL                         R12 R11 K24 ["Set"]
      164 CALL                             R12 2 0
      165 RETURN                           R6 1

PROTO_6:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Animation"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R0 R2 K4 ["Name"]
        6 LOADK                            R4 K5 ["rbxassetid://"]
        7 FASTCALL1                        TOSTRING R1 ; [+3]
        8 MOVE                             R6 R1
        9 GETIMPORT                        R5 K7 [tostring]
       11 CALL                             R5 1 1
       12 CONCAT                           R3 R4 R5
       13 SETTABLEKS                       R3 R2 K8 ["AnimationId"]
       15 GETIMPORT                        R3 K10 [game]
       17 LOADK                            R5 K11 ["Workspace"]
       18 NAMECALL                         R3 R3 K12 ["GetService"]
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K13 ["Parent"]
       23 GETIMPORT                        R3 K10 [game]
       25 LOADK                            R5 K14 ["Selection"]
       26 NAMECALL                         R3 R3 K12 ["GetService"]
       28 CALL                             R3 2 1
       29 NEWTABLE                         R6 0 1
       31 MOVE                             R7 R2
       32 SETLIST                          R6 R7 1 [1]
       34 NAMECALL                         R4 R3 K15 ["Set"]
       36 CALL                             R4 2 0
       37 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Src"]
       11 GETTABLEKS                       R1 R1 K4 ["Util"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["AssetConfigConstants"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["AssetConfigUtil"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K9 ["AvatarAnimationBundleUtil"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K3 ["Src"]
       32 GETTABLEKS                       R6 R6 K10 ["Flags"]
       34 GETTABLEKS                       R6 R6 K11 ["getFFlagEnableUploadingAvatarAnimations"]
       36 CALL                             R5 1 1
       37 NEWTABLE                         R6 4 0
       39 MOVE                             R7 R5
       40 CALL                             R7 0 1
       41 JUMPIFNOT                        R7 ; [+21]
       42 DUPCLOSURE                       R7 K12 [PROTO_0]
       43 DUPCLOSURE                       R8 K13 [PROTO_1]
       44 DUPCLOSURE                       R9 K14 [PROTO_2]
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R4
       48 SETTABLEKS                       R9 R6 K15 ["createAvatarAnimationsPartFolders"]
       50 DUPCLOSURE                       R9 K16 [PROTO_3]
       51 CAPTURE                          VAL R2
       52 SETTABLEKS                       R9 R6 K17 ["getSubAnimationInfo"]
       54 DUPCLOSURE                       R9 K18 [PROTO_4]
       55 CAPTURE                          VAL R2
       56 DUPCLOSURE                       R10 K19 [PROTO_5]
       57 CAPTURE                          VAL R9
       58 SETTABLEKS                       R10 R6 K20 ["createAnimationInstanceInWorkspace"]
       60 DUPCLOSURE                       R10 K21 [PROTO_6]
       61 SETTABLEKS                       R10 R6 K22 ["createEmoteAnimationInstanceInWorkspace"]
       63 RETURN                           R6 1
