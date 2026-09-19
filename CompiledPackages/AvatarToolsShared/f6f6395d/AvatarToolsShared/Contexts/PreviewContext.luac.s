PROTO_0:
        0 NEWTABLE                         R0 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R0 R3 ; [+4]
        5 MOVE                             R2 R0
        6 GETIMPORT                        R1 K1 [setmetatable]
        8 CALL                             R1 2 0
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["previewAvatars"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K3 ["storageAvatars"]
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K4 ["previewItems"]
       21 LOADN                            R1 1
       22 SETTABLEKS                       R1 R0 K5 ["currentPreviewAvatarIndex"]
       24 GETUPVAL                         R1 1
       25 GETTABLEKS                       R1 R1 K6 ["new"]
       27 CALL                             R1 0 1
       28 SETTABLEKS                       R1 R0 K7 ["previewModelChangedSignal"]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K6 ["new"]
       33 CALL                             R1 0 1
       34 SETTABLEKS                       R1 R0 K8 ["animationTargetChangedSignal"]
       36 RETURN                           R0 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["previewAvatars"]
        2 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        4 MOVE                             R4 R1
        5 GETIMPORT                        R2 K3 [table.insert]
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["destroyAvatars"]
        2 CALL                             R2 1 0
        3 SETTABLEKS                       R1 R0 K1 ["previewAvatars"]
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 GETTABLEKS                       R3 R0 K0 ["previewAvatars"]
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 GETTABLEKS                       R3 R0 K0 ["previewAvatars"]
        5 GETTABLEKS                       R4 R0 K1 ["storageAvatars"]
        7 CALL                             R1 3 -1
        8 RETURN                           R1 -1

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["destroyStorageAvatars"]
        2 CALL                             R2 1 0
        3 SETTABLEKS                       R1 R0 K1 ["storageAvatars"]
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["previewModelChangedSignal"]
        2 NAMECALL                         R1 R1 K1 ["Fire"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["previewAvatars"]
        2 LENGTH                           R2 R3
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R2 ; [+20]
        6 GETTABLEKS                       R2 R0 K1 ["currentPreviewAvatarIndex"]
        8 JUMPIFEQ                         R1 R2 ; [+16]
       10 LOADN                            R4 1
       11 GETTABLEKS                       R6 R0 K0 ["previewAvatars"]
       13 LENGTH                           R5 R6
       14 FASTCALL3                        MATH_CLAMP R1 R4 R5
       16 MOVE                             R3 R1
       17 GETIMPORT                        R2 K4 [math.clamp]
       19 CALL                             R2 3 1
       20 SETTABLEKS                       R2 R0 K1 ["currentPreviewAvatarIndex"]
       22 NAMECALL                         R2 R0 K5 ["updatePreviewModel"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["currentPreviewAvatarIndex"]
        2 RETURN                           R1 1

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["previewAvatars"]
        2 LENGTH                           R2 R3
        3 LOADN                            R3 0
        4 JUMPIFNOTLT                      R3 R2 ; [+18]
        6 LOADN                            R2 1
        7 JUMPIF                           R1 ; [+1]
        8 LOADN                            R2 -1
        9 GETTABLEKS                       R7 R0 K2 ["currentPreviewAvatarIndex"]
       11 ADD                              R6 R7 R2
       12 SUBK                             R5 R6 K1 [1]
       13 GETTABLEKS                       R7 R0 K0 ["previewAvatars"]
       15 LENGTH                           R6 R7
       16 MOD                              R4 R5 R6
       17 ADDK                             R3 R4 K1 [1]
       18 SETTABLEKS                       R3 R0 K2 ["currentPreviewAvatarIndex"]
       20 NAMECALL                         R3 R0 K3 ["updatePreviewModel"]
       22 CALL                             R3 1 0
       23 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["previewModelChangedSignal"]
        2 RETURN                           R1 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["animationTargetChangedSignal"]
        2 RETURN                           R1 1

PROTO_12:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["previewAvatars"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 NAMECALL                         R6 R5 K3 ["destroy"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["previewAvatars"]
       15 RETURN                           R0 0

PROTO_13:
        0 GETIMPORT                        R1 K1 [ipairs]
        2 GETTABLEKS                       R2 R0 K2 ["storageAvatars"]
        4 CALL                             R1 1 3
        5 FORGPREP_INEXT                   R1
        6 NAMECALL                         R6 R5 K3 ["destroy"]
        8 CALL                             R6 1 0
        9 FORGLOOP                         R1 2 [inext] ; [-4]
       11 NEWTABLE                         R1 0 0
       13 SETTABLEKS                       R1 R0 K2 ["storageAvatars"]
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Dash"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K6 ["join"]
       16 GETTABLEKS                       R4 R2 K7 ["append"]
       18 GETIMPORT                        R5 K4 [require]
       20 GETTABLEKS                       R6 R1 K8 ["Framework"]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R6 R5 K9 ["ContextServices"]
       25 GETTABLEKS                       R6 R6 K10 ["ContextItem"]
       27 GETTABLEKS                       R7 R5 K11 ["Util"]
       29 GETTABLEKS                       R8 R7 K12 ["Signal"]
       31 LOADK                            R11 K13 ["PreviewContext"]
       32 NAMECALL                         R9 R6 K14 ["extend"]
       34 CALL                             R9 2 1
       35 DUPCLOSURE                       R10 K15 [PROTO_0]
       36 CAPTURE                          VAL R9
       37 CAPTURE                          VAL R8
       38 SETTABLEKS                       R10 R9 K16 ["new"]
       40 DUPCLOSURE                       R10 K17 [PROTO_1]
       41 SETTABLEKS                       R10 R9 K18 ["addAvatar"]
       43 DUPCLOSURE                       R10 K19 [PROTO_2]
       44 SETTABLEKS                       R10 R9 K20 ["setAvatars"]
       46 DUPCLOSURE                       R10 K21 [PROTO_3]
       47 CAPTURE                          VAL R3
       48 SETTABLEKS                       R10 R9 K22 ["getAvatars"]
       50 DUPCLOSURE                       R10 K23 [PROTO_4]
       51 CAPTURE                          VAL R4
       52 SETTABLEKS                       R10 R9 K24 ["getAllAvatars"]
       54 DUPCLOSURE                       R10 K25 [PROTO_5]
       55 SETTABLEKS                       R10 R9 K26 ["setStorageAvatars"]
       57 DUPCLOSURE                       R10 K27 [PROTO_6]
       58 SETTABLEKS                       R10 R9 K28 ["updatePreviewModel"]
       60 DUPCLOSURE                       R10 K29 [PROTO_7]
       61 SETTABLEKS                       R10 R9 K30 ["setPreviewAvatarIndex"]
       63 DUPCLOSURE                       R10 K31 [PROTO_8]
       64 SETTABLEKS                       R10 R9 K32 ["getCurrentPreviewAvatarIndex"]
       66 DUPCLOSURE                       R10 K33 [PROTO_9]
       67 SETTABLEKS                       R10 R9 K34 ["cyclePreviewAvatarIndex"]
       69 DUPCLOSURE                       R10 K35 [PROTO_10]
       70 SETTABLEKS                       R10 R9 K36 ["getPreviewModelChangedSignal"]
       72 DUPCLOSURE                       R10 K37 [PROTO_11]
       73 SETTABLEKS                       R10 R9 K38 ["getAnimationTargetChangedSignal"]
       75 DUPCLOSURE                       R10 K39 [PROTO_12]
       76 SETTABLEKS                       R10 R9 K40 ["destroyAvatars"]
       78 DUPCLOSURE                       R10 K41 [PROTO_13]
       79 SETTABLEKS                       R10 R9 K42 ["destroyStorageAvatars"]
       81 RETURN                           R9 1
