PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R0
        2 LOADK                            R4 K0 ["Invalid network key: "]
        3 MOVE                             R5 R0
        4 CONCAT                           R3 R4 R5
        5 FASTCALL2                        ASSERT R2 R3 ; [+3]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 LOADK                            R1 K3 ["createAnimationGenBridge_%*"]
       11 MOVE                             R3 R0
       12 NAMECALL                         R1 R1 K4 ["format"]
       14 CALL                             R1 2 1
       15 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R4 K3 [{"initArgs", "callArgs", "bridge"}]
        1 SETTABLEKS                       R0 R4 K0 ["initArgs"]
        3 SETTABLEKS                       R3 R4 K1 ["callArgs"]
        5 GETTABLEKS                       R5 R1 K4 ["toHost"]
        7 MOVE                             R6 R2
        8 MOVE                             R7 R3
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K2 ["bridge"]
       12 RETURN                           R4 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Guest implementation is not provided"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R3 K4 ["callArgs"]
       15 GETTABLEKS                       R6 R5 K7 ["toHost"]
       17 MOVE                             R7 R0
       18 MOVE                             R8 R1
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R3 K5 ["bridge"]
       22 RETURN                           R2 2

PROTO_3:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Guest implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toHost"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["playbackStateChanged"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Guest implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toHost"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["poseDeselected"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Guest implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toHost"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["poseEdited"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toGuest"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_10:
        0 DUPTABLE                         R2 K4 [{"playbackStateChanged", "poseDeselected", "poseEdited", "toTarget"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["playbackStateChanged"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["poseDeselected"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K2 ["poseEdited"]
       19 NEWCLOSURE                       R3 P3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R1
       22 SETTABLEKS                       R3 R2 K3 ["toTarget"]
       24 RETURN                           R2 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["networkingOLD"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R10 0
        7 GETTABLEKS                       R9 R10 K1 ["playbackStateChanged"]
        9 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       11 LOADK                            R10 K2 ["Invalid network key: playbackStateChanged"]
       12 GETIMPORT                        R8 K4 [assert]
       14 CALL                             R8 2 0
       15 LOADK                            R7 K5 ["createAnimationGenBridge_playbackStateChanged"]
       16 NEWCLOSURE                       R8 P1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R5 R3 K6 ["OnGuestEvent"]
       22 CALL                             R5 3 1
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R10 R11 K7 ["poseDeselected"]
       26 FASTCALL2K                       ASSERT R10 K8 ; [+4]
       28 LOADK                            R11 K8 ["Invalid network key: poseDeselected"]
       29 GETIMPORT                        R9 K4 [assert]
       31 CALL                             R9 2 0
       32 LOADK                            R8 K9 ["createAnimationGenBridge_poseDeselected"]
       33 NEWCLOSURE                       R9 P2
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R6 R3 K6 ["OnGuestEvent"]
       39 CALL                             R6 3 1
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R11 R12 K10 ["poseEdited"]
       43 FASTCALL2K                       ASSERT R11 K11 ; [+4]
       45 LOADK                            R12 K11 ["Invalid network key: poseEdited"]
       46 GETIMPORT                        R10 K4 [assert]
       48 CALL                             R10 2 0
       49 LOADK                            R9 K12 ["createAnimationGenBridge_poseEdited"]
       50 NEWCLOSURE                       R10 P3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 NAMECALL                         R7 R3 K6 ["OnGuestEvent"]
       56 CALL                             R7 3 1
       57 NEWCLOSURE                       R8 P4
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R1
       62 RETURN                           R8 1

PROTO_12:
        0 DUPTABLE                         R4 K3 [{"initArgs", "callArgs", "bridge"}]
        1 SETTABLEKS                       R0 R4 K0 ["initArgs"]
        3 SETTABLEKS                       R3 R4 K1 ["callArgs"]
        5 GETTABLEKS                       R5 R1 K4 ["toGuest"]
        7 MOVE                             R6 R2
        8 MOVE                             R7 R3
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K2 ["bridge"]
       12 RETURN                           R4 1

PROTO_13:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R3 K4 ["callArgs"]
       15 GETTABLEKS                       R6 R5 K7 ["toGuest"]
       17 MOVE                             R7 R0
       18 MOVE                             R8 R1
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R3 K5 ["bridge"]
       22 RETURN                           R2 2

PROTO_14:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["resolveGenerationSource"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_15:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["getPlaybackState"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_16:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["generateAndSaveAnimationAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_17:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["discardEditAnimationPreview"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_18:
        0 GETUPVAL                         R5 0
        1 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        3 LOADK                            R6 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R3 K4 ["callArgs"]
       15 GETTABLEKS                       R6 R5 K7 ["toGuest"]
       17 MOVE                             R7 R0
       18 MOVE                             R8 R1
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R3 K5 ["bridge"]
       22 GETTABLEKS                       R4 R2 K8 ["getSelectedRigRef"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 -1
       26 RETURN                           R4 -1

PROTO_19:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["setIsPlaying"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_20:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["setCurrentTime"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_21:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["previewClipToUpscaleAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_22:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["clearClipToUpscalePreview"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_23:
        0 GETUPVAL                         R5 0
        1 FASTCALL2K                       ASSERT R5 K0 ; [+4]
        3 LOADK                            R6 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R4 K2 [assert]
        6 CALL                             R4 2 0
        7 GETUPVAL                         R2 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R5 2
       10 DUPTABLE                         R3 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R4 R3 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R3 K4 ["callArgs"]
       15 GETTABLEKS                       R6 R5 K7 ["toGuest"]
       17 MOVE                             R7 R0
       18 MOVE                             R8 R1
       19 CALL                             R6 2 1
       20 SETTABLEKS                       R6 R3 K5 ["bridge"]
       22 GETTABLEKS                       R4 R2 K8 ["insertClipToUpscalePreviewRigAsync"]
       24 MOVE                             R5 R3
       25 CALL                             R4 1 -1
       26 RETURN                           R4 -1

PROTO_24:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["generateUpscalePreviewAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_25:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["updateUpscalePreview"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_26:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["openInAnimationClipEditor"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_27:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["publishAnimation"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_28:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["insertPose"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_29:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["deletePose"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_30:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["movePose"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_31:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["resizePose"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_32:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["getEditScrubbarState"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_33:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["resetPose"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_34:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["endEditSession"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_35:
        0 GETUPVAL                         R6 0
        1 FASTCALL2K                       ASSERT R6 K0 ; [+4]
        3 LOADK                            R7 K0 ["Host implementation is not provided"]
        4 GETIMPORT                        R5 K2 [assert]
        6 CALL                             R5 2 0
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 GETUPVAL                         R6 2
       10 DUPTABLE                         R4 K6 [{"initArgs", "callArgs", "bridge"}]
       11 SETTABLEKS                       R5 R4 K3 ["initArgs"]
       13 SETTABLEKS                       R1 R4 K4 ["callArgs"]
       15 GETTABLEKS                       R7 R6 K7 ["toGuest"]
       17 MOVE                             R8 R0
       18 MOVE                             R9 R1
       19 CALL                             R7 2 1
       20 SETTABLEKS                       R7 R4 K5 ["bridge"]
       22 GETTABLEKS                       R5 R3 K8 ["beginEditPreview"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_36:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_37:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_38:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_39:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_40:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_41:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_42:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_43:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_44:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_45:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_46:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_47:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_48:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_49:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_50:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_51:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_52:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_53:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_54:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_55:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_56:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_57:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_58:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toHost"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_59:
        0 DUPTABLE                         R2 K23 [{"resolveGenerationSource", "getPlaybackState", "generateAndSaveAnimationAsync", "discardEditAnimationPreview", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "previewClipToUpscaleAsync", "clearClipToUpscalePreview", "insertClipToUpscalePreviewRigAsync", "generateUpscalePreviewAsync", "updateUpscalePreview", "openInAnimationClipEditor", "publishAnimation", "insertPose", "deletePose", "movePose", "resizePose", "getEditScrubbarState", "resetPose", "endEditSession", "beginEditPreview", "toTarget"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["resolveGenerationSource"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["getPlaybackState"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K2 ["generateAndSaveAnimationAsync"]
       19 NEWCLOSURE                       R3 P3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K3 ["discardEditAnimationPreview"]
       25 NEWCLOSURE                       R3 P4
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R3 R2 K4 ["getSelectedRigRef"]
       31 NEWCLOSURE                       R3 P5
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R3 R2 K5 ["setIsPlaying"]
       37 NEWCLOSURE                       R3 P6
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R3 R2 K6 ["setCurrentTime"]
       43 NEWCLOSURE                       R3 P7
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R3 R2 K7 ["previewClipToUpscaleAsync"]
       49 NEWCLOSURE                       R3 P8
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R3 R2 K8 ["clearClipToUpscalePreview"]
       55 NEWCLOSURE                       R3 P9
       56 CAPTURE                          UPVAL U9
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R3 R2 K9 ["insertClipToUpscalePreviewRigAsync"]
       61 NEWCLOSURE                       R3 P10
       62 CAPTURE                          UPVAL U10
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R3 R2 K10 ["generateUpscalePreviewAsync"]
       67 NEWCLOSURE                       R3 P11
       68 CAPTURE                          UPVAL U11
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R3 R2 K11 ["updateUpscalePreview"]
       73 NEWCLOSURE                       R3 P12
       74 CAPTURE                          UPVAL U12
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R3 R2 K12 ["openInAnimationClipEditor"]
       79 NEWCLOSURE                       R3 P13
       80 CAPTURE                          UPVAL U13
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R3 R2 K13 ["publishAnimation"]
       85 NEWCLOSURE                       R3 P14
       86 CAPTURE                          UPVAL U14
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R1
       89 SETTABLEKS                       R3 R2 K14 ["insertPose"]
       91 NEWCLOSURE                       R3 P15
       92 CAPTURE                          UPVAL U15
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R1
       95 SETTABLEKS                       R3 R2 K15 ["deletePose"]
       97 NEWCLOSURE                       R3 P16
       98 CAPTURE                          UPVAL U16
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R3 R2 K16 ["movePose"]
      103 NEWCLOSURE                       R3 P17
      104 CAPTURE                          UPVAL U17
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R3 R2 K17 ["resizePose"]
      109 NEWCLOSURE                       R3 P18
      110 CAPTURE                          UPVAL U18
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R1
      113 SETTABLEKS                       R3 R2 K18 ["getEditScrubbarState"]
      115 NEWCLOSURE                       R3 P19
      116 CAPTURE                          UPVAL U19
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R3 R2 K19 ["resetPose"]
      121 NEWCLOSURE                       R3 P20
      122 CAPTURE                          UPVAL U20
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R1
      125 SETTABLEKS                       R3 R2 K20 ["endEditSession"]
      127 NEWCLOSURE                       R3 P21
      128 CAPTURE                          UPVAL U21
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R1
      131 SETTABLEKS                       R3 R2 K21 ["beginEditPreview"]
      133 NEWCLOSURE                       R3 P22
      134 CAPTURE                          UPVAL U22
      135 CAPTURE                          VAL R1
      136 SETTABLEKS                       R3 R2 K22 ["toTarget"]
      138 RETURN                           R2 1

PROTO_60:
        0 GETTABLEKS                       R3 R0 K0 ["networkingOLD"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R10 0
        7 GETTABLEKS                       R9 R10 K1 ["resolveGenerationSource"]
        9 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       11 LOADK                            R10 K2 ["Invalid network key: resolveGenerationSource"]
       12 GETIMPORT                        R8 K4 [assert]
       14 CALL                             R8 2 0
       15 LOADK                            R7 K5 ["createAnimationGenBridge_resolveGenerationSource"]
       16 NEWCLOSURE                       R8 P1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R5 R3 K6 ["OnHostInvokeAsync"]
       22 CALL                             R5 3 1
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R10 R11 K7 ["getPlaybackState"]
       26 FASTCALL2K                       ASSERT R10 K8 ; [+4]
       28 LOADK                            R11 K8 ["Invalid network key: getPlaybackState"]
       29 GETIMPORT                        R9 K4 [assert]
       31 CALL                             R9 2 0
       32 LOADK                            R8 K9 ["createAnimationGenBridge_getPlaybackState"]
       33 NEWCLOSURE                       R9 P2
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R6 R3 K6 ["OnHostInvokeAsync"]
       39 CALL                             R6 3 1
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R11 R12 K10 ["generateAndSaveAnimationAsync"]
       43 FASTCALL2K                       ASSERT R11 K11 ; [+4]
       45 LOADK                            R12 K11 ["Invalid network key: generateAndSaveAnimationAsync"]
       46 GETIMPORT                        R10 K4 [assert]
       48 CALL                             R10 2 0
       49 LOADK                            R9 K12 ["createAnimationGenBridge_generateAndSaveAnimationAsync"]
       50 NEWCLOSURE                       R10 P3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 NAMECALL                         R7 R3 K6 ["OnHostInvokeAsync"]
       56 CALL                             R7 3 1
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R12 R13 K13 ["discardEditAnimationPreview"]
       60 FASTCALL2K                       ASSERT R12 K14 ; [+4]
       62 LOADK                            R13 K14 ["Invalid network key: discardEditAnimationPreview"]
       63 GETIMPORT                        R11 K4 [assert]
       65 CALL                             R11 2 0
       66 LOADK                            R10 K15 ["createAnimationGenBridge_discardEditAnimationPreview"]
       67 NEWCLOSURE                       R11 P4
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R1
       71 NAMECALL                         R8 R3 K16 ["OnHostEvent"]
       73 CALL                             R8 3 1
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R13 R14 K17 ["getSelectedRigRef"]
       77 FASTCALL2K                       ASSERT R13 K18 ; [+4]
       79 LOADK                            R14 K18 ["Invalid network key: getSelectedRigRef"]
       80 GETIMPORT                        R12 K4 [assert]
       82 CALL                             R12 2 0
       83 LOADK                            R11 K19 ["createAnimationGenBridge_getSelectedRigRef"]
       84 NEWCLOSURE                       R12 P5
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R1
       88 NAMECALL                         R9 R3 K6 ["OnHostInvokeAsync"]
       90 CALL                             R9 3 1
       91 GETUPVAL                         R15 0
       92 GETTABLEKS                       R14 R15 K20 ["setIsPlaying"]
       94 FASTCALL2K                       ASSERT R14 K21 ; [+4]
       96 LOADK                            R15 K21 ["Invalid network key: setIsPlaying"]
       97 GETIMPORT                        R13 K4 [assert]
       99 CALL                             R13 2 0
      100 LOADK                            R12 K22 ["createAnimationGenBridge_setIsPlaying"]
      101 NEWCLOSURE                       R13 P6
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R1
      105 NAMECALL                         R10 R3 K16 ["OnHostEvent"]
      107 CALL                             R10 3 1
      108 GETUPVAL                         R16 0
      109 GETTABLEKS                       R15 R16 K23 ["setCurrentTime"]
      111 FASTCALL2K                       ASSERT R15 K24 ; [+4]
      113 LOADK                            R16 K24 ["Invalid network key: setCurrentTime"]
      114 GETIMPORT                        R14 K4 [assert]
      116 CALL                             R14 2 0
      117 LOADK                            R13 K25 ["createAnimationGenBridge_setCurrentTime"]
      118 NEWCLOSURE                       R14 P7
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R1
      122 NAMECALL                         R11 R3 K16 ["OnHostEvent"]
      124 CALL                             R11 3 1
      125 GETUPVAL                         R17 0
      126 GETTABLEKS                       R16 R17 K26 ["previewClipToUpscaleAsync"]
      128 FASTCALL2K                       ASSERT R16 K27 ; [+4]
      130 LOADK                            R17 K27 ["Invalid network key: previewClipToUpscaleAsync"]
      131 GETIMPORT                        R15 K4 [assert]
      133 CALL                             R15 2 0
      134 LOADK                            R14 K28 ["createAnimationGenBridge_previewClipToUpscaleAsync"]
      135 NEWCLOSURE                       R15 P8
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R1
      139 NAMECALL                         R12 R3 K6 ["OnHostInvokeAsync"]
      141 CALL                             R12 3 1
      142 GETUPVAL                         R18 0
      143 GETTABLEKS                       R17 R18 K29 ["clearClipToUpscalePreview"]
      145 FASTCALL2K                       ASSERT R17 K30 ; [+4]
      147 LOADK                            R18 K30 ["Invalid network key: clearClipToUpscalePreview"]
      148 GETIMPORT                        R16 K4 [assert]
      150 CALL                             R16 2 0
      151 LOADK                            R15 K31 ["createAnimationGenBridge_clearClipToUpscalePreview"]
      152 NEWCLOSURE                       R16 P9
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R1
      156 NAMECALL                         R13 R3 K16 ["OnHostEvent"]
      158 CALL                             R13 3 1
      159 GETUPVAL                         R19 0
      160 GETTABLEKS                       R18 R19 K32 ["insertClipToUpscalePreviewRigAsync"]
      162 FASTCALL2K                       ASSERT R18 K33 ; [+4]
      164 LOADK                            R19 K33 ["Invalid network key: insertClipToUpscalePreviewRigAsync"]
      165 GETIMPORT                        R17 K4 [assert]
      167 CALL                             R17 2 0
      168 LOADK                            R16 K34 ["createAnimationGenBridge_insertClipToUpscalePreviewRigAsync"]
      169 NEWCLOSURE                       R17 P10
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R1
      173 NAMECALL                         R14 R3 K6 ["OnHostInvokeAsync"]
      175 CALL                             R14 3 1
      176 GETUPVAL                         R20 0
      177 GETTABLEKS                       R19 R20 K35 ["generateUpscalePreviewAsync"]
      179 FASTCALL2K                       ASSERT R19 K36 ; [+4]
      181 LOADK                            R20 K36 ["Invalid network key: generateUpscalePreviewAsync"]
      182 GETIMPORT                        R18 K4 [assert]
      184 CALL                             R18 2 0
      185 LOADK                            R17 K37 ["createAnimationGenBridge_generateUpscalePreviewAsync"]
      186 NEWCLOSURE                       R18 P11
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R0
      189 CAPTURE                          VAL R1
      190 NAMECALL                         R15 R3 K6 ["OnHostInvokeAsync"]
      192 CALL                             R15 3 1
      193 GETUPVAL                         R21 0
      194 GETTABLEKS                       R20 R21 K38 ["updateUpscalePreview"]
      196 FASTCALL2K                       ASSERT R20 K39 ; [+4]
      198 LOADK                            R21 K39 ["Invalid network key: updateUpscalePreview"]
      199 GETIMPORT                        R19 K4 [assert]
      201 CALL                             R19 2 0
      202 LOADK                            R18 K40 ["createAnimationGenBridge_updateUpscalePreview"]
      203 NEWCLOSURE                       R19 P12
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R0
      206 CAPTURE                          VAL R1
      207 NAMECALL                         R16 R3 K16 ["OnHostEvent"]
      209 CALL                             R16 3 1
      210 GETUPVAL                         R22 0
      211 GETTABLEKS                       R21 R22 K41 ["openInAnimationClipEditor"]
      213 FASTCALL2K                       ASSERT R21 K42 ; [+4]
      215 LOADK                            R22 K42 ["Invalid network key: openInAnimationClipEditor"]
      216 GETIMPORT                        R20 K4 [assert]
      218 CALL                             R20 2 0
      219 LOADK                            R19 K43 ["createAnimationGenBridge_openInAnimationClipEditor"]
      220 NEWCLOSURE                       R20 P13
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R1
      224 NAMECALL                         R17 R3 K16 ["OnHostEvent"]
      226 CALL                             R17 3 1
      227 GETUPVAL                         R23 0
      228 GETTABLEKS                       R22 R23 K44 ["publishAnimation"]
      230 FASTCALL2K                       ASSERT R22 K45 ; [+4]
      232 LOADK                            R23 K45 ["Invalid network key: publishAnimation"]
      233 GETIMPORT                        R21 K4 [assert]
      235 CALL                             R21 2 0
      236 LOADK                            R20 K46 ["createAnimationGenBridge_publishAnimation"]
      237 NEWCLOSURE                       R21 P14
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R0
      240 CAPTURE                          VAL R1
      241 NAMECALL                         R18 R3 K16 ["OnHostEvent"]
      243 CALL                             R18 3 1
      244 GETUPVAL                         R24 0
      245 GETTABLEKS                       R23 R24 K47 ["insertPose"]
      247 FASTCALL2K                       ASSERT R23 K48 ; [+4]
      249 LOADK                            R24 K48 ["Invalid network key: insertPose"]
      250 GETIMPORT                        R22 K4 [assert]
      252 CALL                             R22 2 0
      253 LOADK                            R21 K49 ["createAnimationGenBridge_insertPose"]
      254 NEWCLOSURE                       R22 P15
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R0
      257 CAPTURE                          VAL R1
      258 NAMECALL                         R19 R3 K6 ["OnHostInvokeAsync"]
      260 CALL                             R19 3 1
      261 GETUPVAL                         R25 0
      262 GETTABLEKS                       R24 R25 K50 ["deletePose"]
      264 FASTCALL2K                       ASSERT R24 K51 ; [+4]
      266 LOADK                            R25 K51 ["Invalid network key: deletePose"]
      267 GETIMPORT                        R23 K4 [assert]
      269 CALL                             R23 2 0
      270 LOADK                            R22 K52 ["createAnimationGenBridge_deletePose"]
      271 NEWCLOSURE                       R23 P16
      272 CAPTURE                          VAL R2
      273 CAPTURE                          VAL R0
      274 CAPTURE                          VAL R1
      275 NAMECALL                         R20 R3 K6 ["OnHostInvokeAsync"]
      277 CALL                             R20 3 1
      278 GETUPVAL                         R26 0
      279 GETTABLEKS                       R25 R26 K53 ["movePose"]
      281 FASTCALL2K                       ASSERT R25 K54 ; [+4]
      283 LOADK                            R26 K54 ["Invalid network key: movePose"]
      284 GETIMPORT                        R24 K4 [assert]
      286 CALL                             R24 2 0
      287 LOADK                            R23 K55 ["createAnimationGenBridge_movePose"]
      288 NEWCLOSURE                       R24 P17
      289 CAPTURE                          VAL R2
      290 CAPTURE                          VAL R0
      291 CAPTURE                          VAL R1
      292 NAMECALL                         R21 R3 K6 ["OnHostInvokeAsync"]
      294 CALL                             R21 3 1
      295 GETUPVAL                         R27 0
      296 GETTABLEKS                       R26 R27 K56 ["resizePose"]
      298 FASTCALL2K                       ASSERT R26 K57 ; [+4]
      300 LOADK                            R27 K57 ["Invalid network key: resizePose"]
      301 GETIMPORT                        R25 K4 [assert]
      303 CALL                             R25 2 0
      304 LOADK                            R24 K58 ["createAnimationGenBridge_resizePose"]
      305 NEWCLOSURE                       R25 P18
      306 CAPTURE                          VAL R2
      307 CAPTURE                          VAL R0
      308 CAPTURE                          VAL R1
      309 NAMECALL                         R22 R3 K6 ["OnHostInvokeAsync"]
      311 CALL                             R22 3 1
      312 GETUPVAL                         R28 0
      313 GETTABLEKS                       R27 R28 K59 ["getEditScrubbarState"]
      315 FASTCALL2K                       ASSERT R27 K60 ; [+4]
      317 LOADK                            R28 K60 ["Invalid network key: getEditScrubbarState"]
      318 GETIMPORT                        R26 K4 [assert]
      320 CALL                             R26 2 0
      321 LOADK                            R25 K61 ["createAnimationGenBridge_getEditScrubbarState"]
      322 NEWCLOSURE                       R26 P19
      323 CAPTURE                          VAL R2
      324 CAPTURE                          VAL R0
      325 CAPTURE                          VAL R1
      326 NAMECALL                         R23 R3 K6 ["OnHostInvokeAsync"]
      328 CALL                             R23 3 1
      329 GETUPVAL                         R29 0
      330 GETTABLEKS                       R28 R29 K62 ["resetPose"]
      332 FASTCALL2K                       ASSERT R28 K63 ; [+4]
      334 LOADK                            R29 K63 ["Invalid network key: resetPose"]
      335 GETIMPORT                        R27 K4 [assert]
      337 CALL                             R27 2 0
      338 LOADK                            R26 K64 ["createAnimationGenBridge_resetPose"]
      339 NEWCLOSURE                       R27 P20
      340 CAPTURE                          VAL R2
      341 CAPTURE                          VAL R0
      342 CAPTURE                          VAL R1
      343 NAMECALL                         R24 R3 K16 ["OnHostEvent"]
      345 CALL                             R24 3 1
      346 GETUPVAL                         R30 0
      347 GETTABLEKS                       R29 R30 K65 ["endEditSession"]
      349 FASTCALL2K                       ASSERT R29 K66 ; [+4]
      351 LOADK                            R30 K66 ["Invalid network key: endEditSession"]
      352 GETIMPORT                        R28 K4 [assert]
      354 CALL                             R28 2 0
      355 LOADK                            R27 K67 ["createAnimationGenBridge_endEditSession"]
      356 NEWCLOSURE                       R28 P21
      357 CAPTURE                          VAL R2
      358 CAPTURE                          VAL R0
      359 CAPTURE                          VAL R1
      360 NAMECALL                         R25 R3 K16 ["OnHostEvent"]
      362 CALL                             R25 3 1
      363 GETUPVAL                         R31 0
      364 GETTABLEKS                       R30 R31 K68 ["beginEditPreview"]
      366 FASTCALL2K                       ASSERT R30 K69 ; [+4]
      368 LOADK                            R31 K69 ["Invalid network key: beginEditPreview"]
      369 GETIMPORT                        R29 K4 [assert]
      371 CALL                             R29 2 0
      372 LOADK                            R28 K70 ["createAnimationGenBridge_beginEditPreview"]
      373 NEWCLOSURE                       R29 P22
      374 CAPTURE                          VAL R2
      375 CAPTURE                          VAL R0
      376 CAPTURE                          VAL R1
      377 NAMECALL                         R26 R3 K16 ["OnHostEvent"]
      379 CALL                             R26 3 1
      380 NEWCLOSURE                       R27 P23
      381 CAPTURE                          VAL R5
      382 CAPTURE                          VAL R6
      383 CAPTURE                          VAL R7
      384 CAPTURE                          VAL R8
      385 CAPTURE                          VAL R9
      386 CAPTURE                          VAL R10
      387 CAPTURE                          VAL R11
      388 CAPTURE                          VAL R12
      389 CAPTURE                          VAL R13
      390 CAPTURE                          VAL R14
      391 CAPTURE                          VAL R15
      392 CAPTURE                          VAL R16
      393 CAPTURE                          VAL R17
      394 CAPTURE                          VAL R18
      395 CAPTURE                          VAL R19
      396 CAPTURE                          VAL R20
      397 CAPTURE                          VAL R21
      398 CAPTURE                          VAL R22
      399 CAPTURE                          VAL R23
      400 CAPTURE                          VAL R24
      401 CAPTURE                          VAL R25
      402 CAPTURE                          VAL R26
      403 CAPTURE                          VAL R1
      404 RETURN                           R27 1

PROTO_61:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function toGuest"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_62:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function toHost"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_63:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R2 K3 [{"initArgs", "callArgs", "bridge"}]
        3 SETTABLEKS                       R3 R2 K0 ["initArgs"]
        5 SETTABLEKS                       R1 R2 K1 ["callArgs"]
        7 GETTABLEKS                       R5 R4 K4 ["toHost"]
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R2 K2 ["bridge"]
       14 RETURN                           R2 1

PROTO_64:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 DUPTABLE                         R2 K3 [{"initArgs", "callArgs", "bridge"}]
        3 SETTABLEKS                       R3 R2 K0 ["initArgs"]
        5 SETTABLEKS                       R1 R2 K1 ["callArgs"]
        7 GETTABLEKS                       R5 R4 K4 ["toGuest"]
        9 MOVE                             R6 R0
       10 MOVE                             R7 R1
       11 CALL                             R5 2 1
       12 SETTABLEKS                       R5 R2 K2 ["bridge"]
       14 RETURN                           R2 1

PROTO_65:
        0 DUPTABLE                         R3 K2 [{"toGuest", "toHost"}]
        1 DUPCLOSURE                       R4 K3 [PROTO_61]
        2 SETTABLEKS                       R4 R3 K0 ["toGuest"]
        4 DUPCLOSURE                       R4 K4 [PROTO_62]
        5 SETTABLEKS                       R4 R3 K1 ["toHost"]
        7 GETUPVAL                         R4 0
        8 MOVE                             R5 R0
        9 MOVE                             R6 R3
       10 MOVE                             R7 R1
       11 CALL                             R4 3 1
       12 GETUPVAL                         R5 1
       13 MOVE                             R6 R0
       14 MOVE                             R7 R3
       15 MOVE                             R8 R2
       16 CALL                             R5 3 1
       17 SETTABLEKS                       R4 R3 K0 ["toGuest"]
       19 SETTABLEKS                       R5 R3 K1 ["toHost"]
       21 DUPTABLE                         R6 K7 [{"createGuestContext", "createHostContext"}]
       22 NEWCLOSURE                       R7 P2
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R3
       25 SETTABLEKS                       R7 R6 K5 ["createGuestContext"]
       27 NEWCLOSURE                       R7 P3
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R3
       30 SETTABLEKS                       R7 R6 K6 ["createHostContext"]
       32 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bridges"]
       11 GETTABLEKS                       R2 R2 K7 ["createAnimationGenBridge"]
       13 GETTABLEKS                       R2 R2 K8 ["AnimationGenBridgeTypes"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K34 [{["playbackStateChanged"] = "playbackStateChanged", ["poseDeselected"] = "poseDeselected", ["poseEdited"] = "poseEdited", ["resolveGenerationSource"] = "resolveGenerationSource", ["getPlaybackState"] = "getPlaybackState", ["generateAndSaveAnimationAsync"] = "generateAndSaveAnimationAsync", ["discardEditAnimationPreview"] = "discardEditAnimationPreview", ["getSelectedRigRef"] = "getSelectedRigRef", ["setIsPlaying"] = "setIsPlaying", ["setCurrentTime"] = "setCurrentTime", ["previewClipToUpscaleAsync"] = "previewClipToUpscaleAsync", ["clearClipToUpscalePreview"] = "clearClipToUpscalePreview", ["insertClipToUpscalePreviewRigAsync"] = "insertClipToUpscalePreviewRigAsync", ["generateUpscalePreviewAsync"] = "generateUpscalePreviewAsync", ["updateUpscalePreview"] = "updateUpscalePreview", ["openInAnimationClipEditor"] = "openInAnimationClipEditor", ["publishAnimation"] = "publishAnimation", ["insertPose"] = "insertPose", ["deletePose"] = "deletePose", ["movePose"] = "movePose", ["resizePose"] = "resizePose", ["getEditScrubbarState"] = "getEditScrubbarState", ["resetPose"] = "resetPose", ["endEditSession"] = "endEditSession", ["beginEditPreview"] = "beginEditPreview"}]
       17 DUPCLOSURE                       R3 K35 [PROTO_0]
       18 CAPTURE                          VAL R2
       19 DUPCLOSURE                       R4 K36 [PROTO_1]
       20 DUPCLOSURE                       R5 K37 [PROTO_11]
       21 CAPTURE                          VAL R2
       22 DUPCLOSURE                       R6 K38 [PROTO_12]
       23 DUPCLOSURE                       R7 K39 [PROTO_60]
       24 CAPTURE                          VAL R2
       25 DUPCLOSURE                       R8 K40 [PROTO_65]
       26 CAPTURE                          VAL R5
       27 CAPTURE                          VAL R7
       28 DUPTABLE                         R9 K42 [{"prepareBridges"}]
       29 SETTABLEKS                       R8 R9 K41 ["prepareBridges"]
       31 RETURN                           R9 1
