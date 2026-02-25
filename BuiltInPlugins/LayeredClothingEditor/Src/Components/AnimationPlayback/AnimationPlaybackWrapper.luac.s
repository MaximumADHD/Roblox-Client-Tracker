PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["previewAvatar"]
        4 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["PreviewContext"]
        4 NAMECALL                         R3 R2 K2 ["getCurrentPreviewAvatarIndex"]
        6 CALL                             R3 1 1
        7 NEWTABLE                         R4 0 1
        9 NAMECALL                         R6 R2 K3 ["getAvatars"]
       11 CALL                             R6 1 1
       12 GETTABLE                         R5 R6 R3
       13 SETLIST                          R4 R5 1 [1]
       15 GETTABLEKS                       R5 R0 K4 ["previewAvatar"]
       17 JUMPIFEQ                         R4 R5 ; [+11]
       19 SETTABLEKS                       R4 R0 K4 ["previewAvatar"]
       21 DUPTABLE                         R7 K6 [{"temp"}]
       22 NEWTABLE                         R8 0 0
       24 SETTABLEKS                       R8 R7 K5 ["temp"]
       26 NAMECALL                         R5 R0 K7 ["setState"]
       28 CALL                             R5 2 0
       29 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["updatePreviewAvatar"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["PreviewContext"]
        4 NAMECALL                         R3 R2 K2 ["getAnimationTargetChangedSignal"]
        6 CALL                             R3 1 1
        7 NEWCLOSURE                       R5 P0
        8 CAPTURE                          VAL R0
        9 NAMECALL                         R3 R3 K3 ["Connect"]
       11 CALL                             R3 2 1
       12 SETTABLEKS                       R3 R0 K4 ["previewModelChangedConnection"]
       14 NAMECALL                         R3 R0 K5 ["updatePreviewAvatar"]
       16 CALL                             R3 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["AnimationId"]
        4 GETTABLEKS                       R3 R1 K2 ["IsPlaying"]
        6 GETTABLEKS                       R4 R1 K3 ["SetPlayhead"]
        8 GETTABLEKS                       R5 R1 K4 ["SetTrackLength"]
       10 GETTABLEKS                       R6 R1 K5 ["SetIsPlaying"]
       12 GETTABLEKS                       R7 R1 K6 ["SliderPlayhead"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K7 ["createElement"]
       17 GETUPVAL                         R9 1
       18 DUPTABLE                         R10 K14 [{"AnimationId", "IsPlayingOverride", "PreviewAvatars", "PlayheadOverride", "OnPlayheadChanged", "OnIsPlayingChanged", "OnTrackLengthChanged"}]
       19 SETTABLEKS                       R2 R10 K1 ["AnimationId"]
       21 SETTABLEKS                       R3 R10 K8 ["IsPlayingOverride"]
       23 GETTABLEKS                       R11 R0 K15 ["previewAvatar"]
       25 SETTABLEKS                       R11 R10 K9 ["PreviewAvatars"]
       27 SETTABLEKS                       R7 R10 K10 ["PlayheadOverride"]
       29 SETTABLEKS                       R4 R10 K11 ["OnPlayheadChanged"]
       31 SETTABLEKS                       R6 R10 K12 ["OnIsPlayingChanged"]
       33 SETTABLEKS                       R5 R10 K13 ["OnTrackLengthChanged"]
       35 CALL                             R8 2 -1
       36 RETURN                           R8 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["previewModelChangedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["previewModelChangedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["previewModelChangedConnection"]
       11 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["animation"]
        2 DUPTABLE                         R3 K5 [{"AnimationId", "IsPlaying", "Playhead", "SliderPlayhead"}]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R4 R5 K6 ["getPreviewingAnimationId"]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 1
        8 SETTABLEKS                       R4 R3 K1 ["AnimationId"]
       10 GETTABLEKS                       R4 R2 K2 ["IsPlaying"]
       12 SETTABLEKS                       R4 R3 K2 ["IsPlaying"]
       14 GETTABLEKS                       R4 R2 K3 ["Playhead"]
       16 SETTABLEKS                       R4 R3 K3 ["Playhead"]
       18 GETTABLEKS                       R4 R2 K4 ["SliderPlayhead"]
       20 SETTABLEKS                       R4 R3 K4 ["SliderPlayhead"]
       22 RETURN                           R3 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K3 [{"SetPlayhead", "SetTrackLength", "SetIsPlaying"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetPlayhead"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetTrackLength"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetIsPlaying"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["AvatarToolsShared"]
       31 CALL                             R3 1 1
       32 GETTABLEKS                       R5 R3 K9 ["Util"]
       34 GETTABLEKS                       R4 R5 K10 ["AccessoryAndBodyToolShared"]
       36 GETTABLEKS                       R5 R4 K11 ["PreviewingInfo"]
       38 GETTABLEKS                       R6 R3 K12 ["Components"]
       40 GETTABLEKS                       R7 R6 K13 ["PreviewAnimationPlayback"]
       42 GETTABLEKS                       R9 R3 K14 ["Contexts"]
       44 GETTABLEKS                       R8 R9 K15 ["EditingItemContext"]
       46 GETTABLEKS                       R10 R3 K14 ["Contexts"]
       48 GETTABLEKS                       R9 R10 K16 ["PreviewContext"]
       50 GETIMPORT                        R10 K4 [require]
       52 GETTABLEKS                       R12 R0 K5 ["Packages"]
       54 GETTABLEKS                       R11 R12 K17 ["Framework"]
       56 CALL                             R10 1 1
       57 GETTABLEKS                       R11 R10 K18 ["ContextServices"]
       59 GETTABLEKS                       R12 R11 K19 ["withContext"]
       61 GETTABLEKS                       R13 R1 K20 ["PureComponent"]
       63 LOADK                            R15 K21 ["AnimationPlaybackWrapper"]
       64 NAMECALL                         R13 R13 K22 ["extend"]
       66 CALL                             R13 2 1
       67 GETIMPORT                        R14 K4 [require]
       69 GETTABLEKS                       R17 R0 K23 ["Src"]
       71 GETTABLEKS                       R16 R17 K24 ["Actions"]
       73 GETTABLEKS                       R15 R16 K25 ["SetPlayhead"]
       75 CALL                             R14 1 1
       76 GETIMPORT                        R15 K4 [require]
       78 GETTABLEKS                       R18 R0 K23 ["Src"]
       80 GETTABLEKS                       R17 R18 K24 ["Actions"]
       82 GETTABLEKS                       R16 R17 K26 ["SetTrackLength"]
       84 CALL                             R15 1 1
       85 GETIMPORT                        R16 K4 [require]
       87 GETTABLEKS                       R19 R0 K23 ["Src"]
       89 GETTABLEKS                       R18 R19 K24 ["Actions"]
       91 GETTABLEKS                       R17 R18 K27 ["SetIsPlaying"]
       93 CALL                             R16 1 1
       94 GETTABLEKS                       R17 R10 K9 ["Util"]
       96 GETTABLEKS                       R18 R17 K28 ["Typecheck"]
       98 GETTABLEKS                       R19 R18 K29 ["wrap"]
      100 MOVE                             R20 R13
      101 GETIMPORT                        R21 K1 [script]
      103 CALL                             R19 2 0
      104 DUPCLOSURE                       R19 K30 [PROTO_0]
      105 SETTABLEKS                       R19 R13 K31 ["init"]
      107 DUPCLOSURE                       R19 K32 [PROTO_1]
      108 SETTABLEKS                       R19 R13 K33 ["updatePreviewAvatar"]
      110 DUPCLOSURE                       R19 K34 [PROTO_3]
      111 SETTABLEKS                       R19 R13 K35 ["didMount"]
      113 DUPCLOSURE                       R19 K36 [PROTO_4]
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R7
      116 SETTABLEKS                       R19 R13 K37 ["render"]
      118 DUPCLOSURE                       R19 K38 [PROTO_5]
      119 SETTABLEKS                       R19 R13 K39 ["willUnmount"]
      121 MOVE                             R19 R12
      122 DUPTABLE                         R20 K40 [{"EditingItemContext", "PreviewContext"}]
      123 SETTABLEKS                       R8 R20 K15 ["EditingItemContext"]
      125 SETTABLEKS                       R9 R20 K16 ["PreviewContext"]
      127 CALL                             R19 1 1
      128 MOVE                             R20 R13
      129 CALL                             R19 1 1
      130 MOVE                             R13 R19
      131 DUPCLOSURE                       R19 K41 [PROTO_6]
      132 CAPTURE                          VAL R5
      133 DUPCLOSURE                       R20 K42 [PROTO_10]
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R16
      137 GETTABLEKS                       R21 R2 K43 ["connect"]
      139 MOVE                             R22 R19
      140 MOVE                             R23 R20
      141 CALL                             R21 2 1
      142 MOVE                             R22 R13
      143 CALL                             R21 1 -1
      144 RETURN                           R21 -1
