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
       22 GETTABLEKS                       R5 R3 K8 ["animationHistoryChanged"]
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
       22 GETTABLEKS                       R5 R3 K8 ["playbackStateChanged"]
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
       22 GETTABLEKS                       R5 R3 K8 ["thoughtReceived"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       22 GETTABLEKS                       R5 R3 K8 ["clipToUpscalePreviewRigChanged"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toGuest"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_16:
        0 DUPTABLE                         R2 K7 [{"animationHistoryChanged", "playbackStateChanged", "thoughtReceived", "poseDeselected", "poseEdited", "clipToUpscalePreviewRigChanged", "toTarget"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["animationHistoryChanged"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["playbackStateChanged"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K2 ["thoughtReceived"]
       19 NEWCLOSURE                       R3 P3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K3 ["poseDeselected"]
       25 NEWCLOSURE                       R3 P4
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R3 R2 K4 ["poseEdited"]
       31 NEWCLOSURE                       R3 P5
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R3 R2 K5 ["clipToUpscalePreviewRigChanged"]
       37 NEWCLOSURE                       R3 P6
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R1
       40 SETTABLEKS                       R3 R2 K6 ["toTarget"]
       42 RETURN                           R2 1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["networkingOLD"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R10 0
        7 GETTABLEKS                       R9 R10 K1 ["animationHistoryChanged"]
        9 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       11 LOADK                            R10 K2 ["Invalid network key: animationHistoryChanged"]
       12 GETIMPORT                        R8 K4 [assert]
       14 CALL                             R8 2 0
       15 LOADK                            R7 K5 ["createAnimationGenBridge_animationHistoryChanged"]
       16 NEWCLOSURE                       R8 P1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R5 R3 K6 ["OnGuestEvent"]
       22 CALL                             R5 3 1
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R10 R11 K7 ["playbackStateChanged"]
       26 FASTCALL2K                       ASSERT R10 K8 ; [+4]
       28 LOADK                            R11 K8 ["Invalid network key: playbackStateChanged"]
       29 GETIMPORT                        R9 K4 [assert]
       31 CALL                             R9 2 0
       32 LOADK                            R8 K9 ["createAnimationGenBridge_playbackStateChanged"]
       33 NEWCLOSURE                       R9 P2
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R6 R3 K6 ["OnGuestEvent"]
       39 CALL                             R6 3 1
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R11 R12 K10 ["thoughtReceived"]
       43 FASTCALL2K                       ASSERT R11 K11 ; [+4]
       45 LOADK                            R12 K11 ["Invalid network key: thoughtReceived"]
       46 GETIMPORT                        R10 K4 [assert]
       48 CALL                             R10 2 0
       49 LOADK                            R9 K12 ["createAnimationGenBridge_thoughtReceived"]
       50 NEWCLOSURE                       R10 P3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 NAMECALL                         R7 R3 K6 ["OnGuestEvent"]
       56 CALL                             R7 3 1
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R12 R13 K13 ["poseDeselected"]
       60 FASTCALL2K                       ASSERT R12 K14 ; [+4]
       62 LOADK                            R13 K14 ["Invalid network key: poseDeselected"]
       63 GETIMPORT                        R11 K4 [assert]
       65 CALL                             R11 2 0
       66 LOADK                            R10 K15 ["createAnimationGenBridge_poseDeselected"]
       67 NEWCLOSURE                       R11 P4
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R1
       71 NAMECALL                         R8 R3 K6 ["OnGuestEvent"]
       73 CALL                             R8 3 1
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R13 R14 K16 ["poseEdited"]
       77 FASTCALL2K                       ASSERT R13 K17 ; [+4]
       79 LOADK                            R14 K17 ["Invalid network key: poseEdited"]
       80 GETIMPORT                        R12 K4 [assert]
       82 CALL                             R12 2 0
       83 LOADK                            R11 K18 ["createAnimationGenBridge_poseEdited"]
       84 NEWCLOSURE                       R12 P5
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R1
       88 NAMECALL                         R9 R3 K6 ["OnGuestEvent"]
       90 CALL                             R9 3 1
       91 GETUPVAL                         R15 0
       92 GETTABLEKS                       R14 R15 K19 ["clipToUpscalePreviewRigChanged"]
       94 FASTCALL2K                       ASSERT R14 K20 ; [+4]
       96 LOADK                            R15 K20 ["Invalid network key: clipToUpscalePreviewRigChanged"]
       97 GETIMPORT                        R13 K4 [assert]
       99 CALL                             R13 2 0
      100 LOADK                            R12 K21 ["createAnimationGenBridge_clipToUpscalePreviewRigChanged"]
      101 NEWCLOSURE                       R13 P6
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R1
      105 NAMECALL                         R10 R3 K6 ["OnGuestEvent"]
      107 CALL                             R10 3 1
      108 NEWCLOSURE                       R11 P7
      109 CAPTURE                          VAL R5
      110 CAPTURE                          VAL R6
      111 CAPTURE                          VAL R7
      112 CAPTURE                          VAL R8
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R1
      116 RETURN                           R11 1

PROTO_18:
        0 DUPTABLE                         R4 K3 [{"initArgs", "callArgs", "bridge"}]
        1 SETTABLEKS                       R0 R4 K0 ["initArgs"]
        3 SETTABLEKS                       R3 R4 K1 ["callArgs"]
        5 GETTABLEKS                       R5 R1 K4 ["toGuest"]
        7 MOVE                             R6 R2
        8 MOVE                             R7 R3
        9 CALL                             R5 2 1
       10 SETTABLEKS                       R5 R4 K2 ["bridge"]
       12 RETURN                           R4 1

PROTO_19:
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
       22 GETTABLEKS                       R5 R3 K8 ["getAnimationCardState"]
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
       22 GETTABLEKS                       R5 R3 K8 ["selectAnimationVersion"]
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
       22 GETTABLEKS                       R5 R3 K8 ["prepareAnimationEdit"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_23:
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
       22 GETTABLEKS                       R5 R3 K8 ["getPlaybackState"]
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
       22 GETTABLEKS                       R5 R3 K8 ["generateAndSaveAnimationAsync"]
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
       22 GETTABLEKS                       R5 R3 K8 ["discardEditAnimationPreview"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_27:
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
       22 GETTABLEKS                       R5 R3 K8 ["setIsPlaying"]
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
       22 GETTABLEKS                       R5 R3 K8 ["setCurrentTime"]
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
       22 GETTABLEKS                       R5 R3 K8 ["previewClipToUpscaleAsync"]
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
       22 GETTABLEKS                       R5 R3 K8 ["clearClipToUpscalePreview"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_32:
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
       22 GETTABLEKS                       R5 R3 K8 ["setClipToUpscalePreviewRig"]
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
       22 GETTABLEKS                       R5 R3 K8 ["endClipToUpscalePreviewSession"]
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
       22 GETTABLEKS                       R5 R3 K8 ["generateUpscalePreviewAsync"]
       24 MOVE                             R6 R2
       25 MOVE                             R7 R4
       26 CALL                             R5 2 -1
       27 RETURN                           R5 -1

PROTO_36:
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

PROTO_37:
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

PROTO_38:
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

PROTO_39:
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

PROTO_40:
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

PROTO_41:
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

PROTO_42:
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

PROTO_43:
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

PROTO_44:
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

PROTO_45:
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

PROTO_46:
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
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

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
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_59:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_60:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_61:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_62:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_63:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_64:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_65:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_66:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_67:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_68:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_69:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_70:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_71:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_72:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_73:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 MOVE                             R4 R0
        4 CALL                             R1 3 -1
        5 RETURN                           R1 -1

PROTO_74:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toHost"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_75:
        0 DUPTABLE                         R2 K28 [{"getAnimationCardState", "selectAnimationVersion", "prepareAnimationEdit", "resolveGenerationSource", "getPlaybackState", "generateAndSaveAnimationAsync", "discardEditAnimationPreview", "getSelectedRigRef", "setIsPlaying", "setCurrentTime", "previewClipToUpscaleAsync", "clearClipToUpscalePreview", "insertClipToUpscalePreviewRigAsync", "setClipToUpscalePreviewRig", "endClipToUpscalePreviewSession", "generateUpscalePreviewAsync", "updateUpscalePreview", "openInAnimationClipEditor", "publishAnimation", "insertPose", "deletePose", "movePose", "resizePose", "getEditScrubbarState", "resetPose", "endEditSession", "beginEditPreview", "toTarget"}]
        1 NEWCLOSURE                       R3 P0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 SETTABLEKS                       R3 R2 K0 ["getAnimationCardState"]
        7 NEWCLOSURE                       R3 P1
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          VAL R0
       10 CAPTURE                          VAL R1
       11 SETTABLEKS                       R3 R2 K1 ["selectAnimationVersion"]
       13 NEWCLOSURE                       R3 P2
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          VAL R0
       16 CAPTURE                          VAL R1
       17 SETTABLEKS                       R3 R2 K2 ["prepareAnimationEdit"]
       19 NEWCLOSURE                       R3 P3
       20 CAPTURE                          UPVAL U3
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K3 ["resolveGenerationSource"]
       25 NEWCLOSURE                       R3 P4
       26 CAPTURE                          UPVAL U4
       27 CAPTURE                          VAL R0
       28 CAPTURE                          VAL R1
       29 SETTABLEKS                       R3 R2 K4 ["getPlaybackState"]
       31 NEWCLOSURE                       R3 P5
       32 CAPTURE                          UPVAL U5
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R1
       35 SETTABLEKS                       R3 R2 K5 ["generateAndSaveAnimationAsync"]
       37 NEWCLOSURE                       R3 P6
       38 CAPTURE                          UPVAL U6
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R1
       41 SETTABLEKS                       R3 R2 K6 ["discardEditAnimationPreview"]
       43 NEWCLOSURE                       R3 P7
       44 CAPTURE                          UPVAL U7
       45 CAPTURE                          VAL R0
       46 CAPTURE                          VAL R1
       47 SETTABLEKS                       R3 R2 K7 ["getSelectedRigRef"]
       49 NEWCLOSURE                       R3 P8
       50 CAPTURE                          UPVAL U8
       51 CAPTURE                          VAL R0
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R3 R2 K8 ["setIsPlaying"]
       55 NEWCLOSURE                       R3 P9
       56 CAPTURE                          UPVAL U9
       57 CAPTURE                          VAL R0
       58 CAPTURE                          VAL R1
       59 SETTABLEKS                       R3 R2 K9 ["setCurrentTime"]
       61 NEWCLOSURE                       R3 P10
       62 CAPTURE                          UPVAL U10
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R3 R2 K10 ["previewClipToUpscaleAsync"]
       67 NEWCLOSURE                       R3 P11
       68 CAPTURE                          UPVAL U11
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R1
       71 SETTABLEKS                       R3 R2 K11 ["clearClipToUpscalePreview"]
       73 NEWCLOSURE                       R3 P12
       74 CAPTURE                          UPVAL U12
       75 CAPTURE                          VAL R0
       76 CAPTURE                          VAL R1
       77 SETTABLEKS                       R3 R2 K12 ["insertClipToUpscalePreviewRigAsync"]
       79 NEWCLOSURE                       R3 P13
       80 CAPTURE                          UPVAL U13
       81 CAPTURE                          VAL R0
       82 CAPTURE                          VAL R1
       83 SETTABLEKS                       R3 R2 K13 ["setClipToUpscalePreviewRig"]
       85 NEWCLOSURE                       R3 P14
       86 CAPTURE                          UPVAL U14
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R1
       89 SETTABLEKS                       R3 R2 K14 ["endClipToUpscalePreviewSession"]
       91 NEWCLOSURE                       R3 P15
       92 CAPTURE                          UPVAL U15
       93 CAPTURE                          VAL R0
       94 CAPTURE                          VAL R1
       95 SETTABLEKS                       R3 R2 K15 ["generateUpscalePreviewAsync"]
       97 NEWCLOSURE                       R3 P16
       98 CAPTURE                          UPVAL U16
       99 CAPTURE                          VAL R0
      100 CAPTURE                          VAL R1
      101 SETTABLEKS                       R3 R2 K16 ["updateUpscalePreview"]
      103 NEWCLOSURE                       R3 P17
      104 CAPTURE                          UPVAL U17
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R1
      107 SETTABLEKS                       R3 R2 K17 ["openInAnimationClipEditor"]
      109 NEWCLOSURE                       R3 P18
      110 CAPTURE                          UPVAL U18
      111 CAPTURE                          VAL R0
      112 CAPTURE                          VAL R1
      113 SETTABLEKS                       R3 R2 K18 ["publishAnimation"]
      115 NEWCLOSURE                       R3 P19
      116 CAPTURE                          UPVAL U19
      117 CAPTURE                          VAL R0
      118 CAPTURE                          VAL R1
      119 SETTABLEKS                       R3 R2 K19 ["insertPose"]
      121 NEWCLOSURE                       R3 P20
      122 CAPTURE                          UPVAL U20
      123 CAPTURE                          VAL R0
      124 CAPTURE                          VAL R1
      125 SETTABLEKS                       R3 R2 K20 ["deletePose"]
      127 NEWCLOSURE                       R3 P21
      128 CAPTURE                          UPVAL U21
      129 CAPTURE                          VAL R0
      130 CAPTURE                          VAL R1
      131 SETTABLEKS                       R3 R2 K21 ["movePose"]
      133 NEWCLOSURE                       R3 P22
      134 CAPTURE                          UPVAL U22
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R1
      137 SETTABLEKS                       R3 R2 K22 ["resizePose"]
      139 NEWCLOSURE                       R3 P23
      140 CAPTURE                          UPVAL U23
      141 CAPTURE                          VAL R0
      142 CAPTURE                          VAL R1
      143 SETTABLEKS                       R3 R2 K23 ["getEditScrubbarState"]
      145 NEWCLOSURE                       R3 P24
      146 CAPTURE                          UPVAL U24
      147 CAPTURE                          VAL R0
      148 CAPTURE                          VAL R1
      149 SETTABLEKS                       R3 R2 K24 ["resetPose"]
      151 NEWCLOSURE                       R3 P25
      152 CAPTURE                          UPVAL U25
      153 CAPTURE                          VAL R0
      154 CAPTURE                          VAL R1
      155 SETTABLEKS                       R3 R2 K25 ["endEditSession"]
      157 NEWCLOSURE                       R3 P26
      158 CAPTURE                          UPVAL U26
      159 CAPTURE                          VAL R0
      160 CAPTURE                          VAL R1
      161 SETTABLEKS                       R3 R2 K26 ["beginEditPreview"]
      163 NEWCLOSURE                       R3 P27
      164 CAPTURE                          UPVAL U27
      165 CAPTURE                          VAL R1
      166 SETTABLEKS                       R3 R2 K27 ["toTarget"]
      168 RETURN                           R2 1

PROTO_76:
        0 GETTABLEKS                       R3 R0 K0 ["networkingOLD"]
        2 NEWCLOSURE                       R4 P0
        3 CAPTURE                          VAL R2
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 GETUPVAL                         R10 0
        7 GETTABLEKS                       R9 R10 K1 ["getAnimationCardState"]
        9 FASTCALL2K                       ASSERT R9 K2 ; [+4]
       11 LOADK                            R10 K2 ["Invalid network key: getAnimationCardState"]
       12 GETIMPORT                        R8 K4 [assert]
       14 CALL                             R8 2 0
       15 LOADK                            R7 K5 ["createAnimationGenBridge_getAnimationCardState"]
       16 NEWCLOSURE                       R8 P1
       17 CAPTURE                          VAL R2
       18 CAPTURE                          VAL R0
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R5 R3 K6 ["OnHostInvokeAsync"]
       22 CALL                             R5 3 1
       23 GETUPVAL                         R11 0
       24 GETTABLEKS                       R10 R11 K7 ["selectAnimationVersion"]
       26 FASTCALL2K                       ASSERT R10 K8 ; [+4]
       28 LOADK                            R11 K8 ["Invalid network key: selectAnimationVersion"]
       29 GETIMPORT                        R9 K4 [assert]
       31 CALL                             R9 2 0
       32 LOADK                            R8 K9 ["createAnimationGenBridge_selectAnimationVersion"]
       33 NEWCLOSURE                       R9 P2
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R1
       37 NAMECALL                         R6 R3 K6 ["OnHostInvokeAsync"]
       39 CALL                             R6 3 1
       40 GETUPVAL                         R12 0
       41 GETTABLEKS                       R11 R12 K10 ["prepareAnimationEdit"]
       43 FASTCALL2K                       ASSERT R11 K11 ; [+4]
       45 LOADK                            R12 K11 ["Invalid network key: prepareAnimationEdit"]
       46 GETIMPORT                        R10 K4 [assert]
       48 CALL                             R10 2 0
       49 LOADK                            R9 K12 ["createAnimationGenBridge_prepareAnimationEdit"]
       50 NEWCLOSURE                       R10 P3
       51 CAPTURE                          VAL R2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          VAL R1
       54 NAMECALL                         R7 R3 K6 ["OnHostInvokeAsync"]
       56 CALL                             R7 3 1
       57 GETUPVAL                         R13 0
       58 GETTABLEKS                       R12 R13 K13 ["resolveGenerationSource"]
       60 FASTCALL2K                       ASSERT R12 K14 ; [+4]
       62 LOADK                            R13 K14 ["Invalid network key: resolveGenerationSource"]
       63 GETIMPORT                        R11 K4 [assert]
       65 CALL                             R11 2 0
       66 LOADK                            R10 K15 ["createAnimationGenBridge_resolveGenerationSource"]
       67 NEWCLOSURE                       R11 P4
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R0
       70 CAPTURE                          VAL R1
       71 NAMECALL                         R8 R3 K6 ["OnHostInvokeAsync"]
       73 CALL                             R8 3 1
       74 GETUPVAL                         R14 0
       75 GETTABLEKS                       R13 R14 K16 ["getPlaybackState"]
       77 FASTCALL2K                       ASSERT R13 K17 ; [+4]
       79 LOADK                            R14 K17 ["Invalid network key: getPlaybackState"]
       80 GETIMPORT                        R12 K4 [assert]
       82 CALL                             R12 2 0
       83 LOADK                            R11 K18 ["createAnimationGenBridge_getPlaybackState"]
       84 NEWCLOSURE                       R12 P5
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R1
       88 NAMECALL                         R9 R3 K6 ["OnHostInvokeAsync"]
       90 CALL                             R9 3 1
       91 GETUPVAL                         R15 0
       92 GETTABLEKS                       R14 R15 K19 ["generateAndSaveAnimationAsync"]
       94 FASTCALL2K                       ASSERT R14 K20 ; [+4]
       96 LOADK                            R15 K20 ["Invalid network key: generateAndSaveAnimationAsync"]
       97 GETIMPORT                        R13 K4 [assert]
       99 CALL                             R13 2 0
      100 LOADK                            R12 K21 ["createAnimationGenBridge_generateAndSaveAnimationAsync"]
      101 NEWCLOSURE                       R13 P6
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R1
      105 NAMECALL                         R10 R3 K6 ["OnHostInvokeAsync"]
      107 CALL                             R10 3 1
      108 GETUPVAL                         R16 0
      109 GETTABLEKS                       R15 R16 K22 ["discardEditAnimationPreview"]
      111 FASTCALL2K                       ASSERT R15 K23 ; [+4]
      113 LOADK                            R16 K23 ["Invalid network key: discardEditAnimationPreview"]
      114 GETIMPORT                        R14 K4 [assert]
      116 CALL                             R14 2 0
      117 LOADK                            R13 K24 ["createAnimationGenBridge_discardEditAnimationPreview"]
      118 NEWCLOSURE                       R14 P7
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R0
      121 CAPTURE                          VAL R1
      122 NAMECALL                         R11 R3 K25 ["OnHostEvent"]
      124 CALL                             R11 3 1
      125 GETUPVAL                         R17 0
      126 GETTABLEKS                       R16 R17 K26 ["getSelectedRigRef"]
      128 FASTCALL2K                       ASSERT R16 K27 ; [+4]
      130 LOADK                            R17 K27 ["Invalid network key: getSelectedRigRef"]
      131 GETIMPORT                        R15 K4 [assert]
      133 CALL                             R15 2 0
      134 LOADK                            R14 K28 ["createAnimationGenBridge_getSelectedRigRef"]
      135 NEWCLOSURE                       R15 P8
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R1
      139 NAMECALL                         R12 R3 K6 ["OnHostInvokeAsync"]
      141 CALL                             R12 3 1
      142 GETUPVAL                         R18 0
      143 GETTABLEKS                       R17 R18 K29 ["setIsPlaying"]
      145 FASTCALL2K                       ASSERT R17 K30 ; [+4]
      147 LOADK                            R18 K30 ["Invalid network key: setIsPlaying"]
      148 GETIMPORT                        R16 K4 [assert]
      150 CALL                             R16 2 0
      151 LOADK                            R15 K31 ["createAnimationGenBridge_setIsPlaying"]
      152 NEWCLOSURE                       R16 P9
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R0
      155 CAPTURE                          VAL R1
      156 NAMECALL                         R13 R3 K25 ["OnHostEvent"]
      158 CALL                             R13 3 1
      159 GETUPVAL                         R19 0
      160 GETTABLEKS                       R18 R19 K32 ["setCurrentTime"]
      162 FASTCALL2K                       ASSERT R18 K33 ; [+4]
      164 LOADK                            R19 K33 ["Invalid network key: setCurrentTime"]
      165 GETIMPORT                        R17 K4 [assert]
      167 CALL                             R17 2 0
      168 LOADK                            R16 K34 ["createAnimationGenBridge_setCurrentTime"]
      169 NEWCLOSURE                       R17 P10
      170 CAPTURE                          VAL R2
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R1
      173 NAMECALL                         R14 R3 K25 ["OnHostEvent"]
      175 CALL                             R14 3 1
      176 GETUPVAL                         R20 0
      177 GETTABLEKS                       R19 R20 K35 ["previewClipToUpscaleAsync"]
      179 FASTCALL2K                       ASSERT R19 K36 ; [+4]
      181 LOADK                            R20 K36 ["Invalid network key: previewClipToUpscaleAsync"]
      182 GETIMPORT                        R18 K4 [assert]
      184 CALL                             R18 2 0
      185 LOADK                            R17 K37 ["createAnimationGenBridge_previewClipToUpscaleAsync"]
      186 NEWCLOSURE                       R18 P11
      187 CAPTURE                          VAL R2
      188 CAPTURE                          VAL R0
      189 CAPTURE                          VAL R1
      190 NAMECALL                         R15 R3 K6 ["OnHostInvokeAsync"]
      192 CALL                             R15 3 1
      193 GETUPVAL                         R21 0
      194 GETTABLEKS                       R20 R21 K38 ["clearClipToUpscalePreview"]
      196 FASTCALL2K                       ASSERT R20 K39 ; [+4]
      198 LOADK                            R21 K39 ["Invalid network key: clearClipToUpscalePreview"]
      199 GETIMPORT                        R19 K4 [assert]
      201 CALL                             R19 2 0
      202 LOADK                            R18 K40 ["createAnimationGenBridge_clearClipToUpscalePreview"]
      203 NEWCLOSURE                       R19 P12
      204 CAPTURE                          VAL R2
      205 CAPTURE                          VAL R0
      206 CAPTURE                          VAL R1
      207 NAMECALL                         R16 R3 K25 ["OnHostEvent"]
      209 CALL                             R16 3 1
      210 GETUPVAL                         R22 0
      211 GETTABLEKS                       R21 R22 K41 ["insertClipToUpscalePreviewRigAsync"]
      213 FASTCALL2K                       ASSERT R21 K42 ; [+4]
      215 LOADK                            R22 K42 ["Invalid network key: insertClipToUpscalePreviewRigAsync"]
      216 GETIMPORT                        R20 K4 [assert]
      218 CALL                             R20 2 0
      219 LOADK                            R19 K43 ["createAnimationGenBridge_insertClipToUpscalePreviewRigAsync"]
      220 NEWCLOSURE                       R20 P13
      221 CAPTURE                          VAL R2
      222 CAPTURE                          VAL R0
      223 CAPTURE                          VAL R1
      224 NAMECALL                         R17 R3 K6 ["OnHostInvokeAsync"]
      226 CALL                             R17 3 1
      227 GETUPVAL                         R23 0
      228 GETTABLEKS                       R22 R23 K44 ["setClipToUpscalePreviewRig"]
      230 FASTCALL2K                       ASSERT R22 K45 ; [+4]
      232 LOADK                            R23 K45 ["Invalid network key: setClipToUpscalePreviewRig"]
      233 GETIMPORT                        R21 K4 [assert]
      235 CALL                             R21 2 0
      236 LOADK                            R20 K46 ["createAnimationGenBridge_setClipToUpscalePreviewRig"]
      237 NEWCLOSURE                       R21 P14
      238 CAPTURE                          VAL R2
      239 CAPTURE                          VAL R0
      240 CAPTURE                          VAL R1
      241 NAMECALL                         R18 R3 K25 ["OnHostEvent"]
      243 CALL                             R18 3 1
      244 GETUPVAL                         R24 0
      245 GETTABLEKS                       R23 R24 K47 ["endClipToUpscalePreviewSession"]
      247 FASTCALL2K                       ASSERT R23 K48 ; [+4]
      249 LOADK                            R24 K48 ["Invalid network key: endClipToUpscalePreviewSession"]
      250 GETIMPORT                        R22 K4 [assert]
      252 CALL                             R22 2 0
      253 LOADK                            R21 K49 ["createAnimationGenBridge_endClipToUpscalePreviewSession"]
      254 NEWCLOSURE                       R22 P15
      255 CAPTURE                          VAL R2
      256 CAPTURE                          VAL R0
      257 CAPTURE                          VAL R1
      258 NAMECALL                         R19 R3 K25 ["OnHostEvent"]
      260 CALL                             R19 3 1
      261 GETUPVAL                         R25 0
      262 GETTABLEKS                       R24 R25 K50 ["generateUpscalePreviewAsync"]
      264 FASTCALL2K                       ASSERT R24 K51 ; [+4]
      266 LOADK                            R25 K51 ["Invalid network key: generateUpscalePreviewAsync"]
      267 GETIMPORT                        R23 K4 [assert]
      269 CALL                             R23 2 0
      270 LOADK                            R22 K52 ["createAnimationGenBridge_generateUpscalePreviewAsync"]
      271 NEWCLOSURE                       R23 P16
      272 CAPTURE                          VAL R2
      273 CAPTURE                          VAL R0
      274 CAPTURE                          VAL R1
      275 NAMECALL                         R20 R3 K6 ["OnHostInvokeAsync"]
      277 CALL                             R20 3 1
      278 GETUPVAL                         R26 0
      279 GETTABLEKS                       R25 R26 K53 ["updateUpscalePreview"]
      281 FASTCALL2K                       ASSERT R25 K54 ; [+4]
      283 LOADK                            R26 K54 ["Invalid network key: updateUpscalePreview"]
      284 GETIMPORT                        R24 K4 [assert]
      286 CALL                             R24 2 0
      287 LOADK                            R23 K55 ["createAnimationGenBridge_updateUpscalePreview"]
      288 NEWCLOSURE                       R24 P17
      289 CAPTURE                          VAL R2
      290 CAPTURE                          VAL R0
      291 CAPTURE                          VAL R1
      292 NAMECALL                         R21 R3 K25 ["OnHostEvent"]
      294 CALL                             R21 3 1
      295 GETUPVAL                         R27 0
      296 GETTABLEKS                       R26 R27 K56 ["openInAnimationClipEditor"]
      298 FASTCALL2K                       ASSERT R26 K57 ; [+4]
      300 LOADK                            R27 K57 ["Invalid network key: openInAnimationClipEditor"]
      301 GETIMPORT                        R25 K4 [assert]
      303 CALL                             R25 2 0
      304 LOADK                            R24 K58 ["createAnimationGenBridge_openInAnimationClipEditor"]
      305 NEWCLOSURE                       R25 P18
      306 CAPTURE                          VAL R2
      307 CAPTURE                          VAL R0
      308 CAPTURE                          VAL R1
      309 NAMECALL                         R22 R3 K25 ["OnHostEvent"]
      311 CALL                             R22 3 1
      312 GETUPVAL                         R28 0
      313 GETTABLEKS                       R27 R28 K59 ["publishAnimation"]
      315 FASTCALL2K                       ASSERT R27 K60 ; [+4]
      317 LOADK                            R28 K60 ["Invalid network key: publishAnimation"]
      318 GETIMPORT                        R26 K4 [assert]
      320 CALL                             R26 2 0
      321 LOADK                            R25 K61 ["createAnimationGenBridge_publishAnimation"]
      322 NEWCLOSURE                       R26 P19
      323 CAPTURE                          VAL R2
      324 CAPTURE                          VAL R0
      325 CAPTURE                          VAL R1
      326 NAMECALL                         R23 R3 K25 ["OnHostEvent"]
      328 CALL                             R23 3 1
      329 GETUPVAL                         R29 0
      330 GETTABLEKS                       R28 R29 K62 ["insertPose"]
      332 FASTCALL2K                       ASSERT R28 K63 ; [+4]
      334 LOADK                            R29 K63 ["Invalid network key: insertPose"]
      335 GETIMPORT                        R27 K4 [assert]
      337 CALL                             R27 2 0
      338 LOADK                            R26 K64 ["createAnimationGenBridge_insertPose"]
      339 NEWCLOSURE                       R27 P20
      340 CAPTURE                          VAL R2
      341 CAPTURE                          VAL R0
      342 CAPTURE                          VAL R1
      343 NAMECALL                         R24 R3 K6 ["OnHostInvokeAsync"]
      345 CALL                             R24 3 1
      346 GETUPVAL                         R30 0
      347 GETTABLEKS                       R29 R30 K65 ["deletePose"]
      349 FASTCALL2K                       ASSERT R29 K66 ; [+4]
      351 LOADK                            R30 K66 ["Invalid network key: deletePose"]
      352 GETIMPORT                        R28 K4 [assert]
      354 CALL                             R28 2 0
      355 LOADK                            R27 K67 ["createAnimationGenBridge_deletePose"]
      356 NEWCLOSURE                       R28 P21
      357 CAPTURE                          VAL R2
      358 CAPTURE                          VAL R0
      359 CAPTURE                          VAL R1
      360 NAMECALL                         R25 R3 K6 ["OnHostInvokeAsync"]
      362 CALL                             R25 3 1
      363 GETUPVAL                         R31 0
      364 GETTABLEKS                       R30 R31 K68 ["movePose"]
      366 FASTCALL2K                       ASSERT R30 K69 ; [+4]
      368 LOADK                            R31 K69 ["Invalid network key: movePose"]
      369 GETIMPORT                        R29 K4 [assert]
      371 CALL                             R29 2 0
      372 LOADK                            R28 K70 ["createAnimationGenBridge_movePose"]
      373 NEWCLOSURE                       R29 P22
      374 CAPTURE                          VAL R2
      375 CAPTURE                          VAL R0
      376 CAPTURE                          VAL R1
      377 NAMECALL                         R26 R3 K6 ["OnHostInvokeAsync"]
      379 CALL                             R26 3 1
      380 GETUPVAL                         R32 0
      381 GETTABLEKS                       R31 R32 K71 ["resizePose"]
      383 FASTCALL2K                       ASSERT R31 K72 ; [+4]
      385 LOADK                            R32 K72 ["Invalid network key: resizePose"]
      386 GETIMPORT                        R30 K4 [assert]
      388 CALL                             R30 2 0
      389 LOADK                            R29 K73 ["createAnimationGenBridge_resizePose"]
      390 NEWCLOSURE                       R30 P23
      391 CAPTURE                          VAL R2
      392 CAPTURE                          VAL R0
      393 CAPTURE                          VAL R1
      394 NAMECALL                         R27 R3 K6 ["OnHostInvokeAsync"]
      396 CALL                             R27 3 1
      397 GETUPVAL                         R33 0
      398 GETTABLEKS                       R32 R33 K74 ["getEditScrubbarState"]
      400 FASTCALL2K                       ASSERT R32 K75 ; [+4]
      402 LOADK                            R33 K75 ["Invalid network key: getEditScrubbarState"]
      403 GETIMPORT                        R31 K4 [assert]
      405 CALL                             R31 2 0
      406 LOADK                            R30 K76 ["createAnimationGenBridge_getEditScrubbarState"]
      407 NEWCLOSURE                       R31 P24
      408 CAPTURE                          VAL R2
      409 CAPTURE                          VAL R0
      410 CAPTURE                          VAL R1
      411 NAMECALL                         R28 R3 K6 ["OnHostInvokeAsync"]
      413 CALL                             R28 3 1
      414 GETUPVAL                         R34 0
      415 GETTABLEKS                       R33 R34 K77 ["resetPose"]
      417 FASTCALL2K                       ASSERT R33 K78 ; [+4]
      419 LOADK                            R34 K78 ["Invalid network key: resetPose"]
      420 GETIMPORT                        R32 K4 [assert]
      422 CALL                             R32 2 0
      423 LOADK                            R31 K79 ["createAnimationGenBridge_resetPose"]
      424 NEWCLOSURE                       R32 P25
      425 CAPTURE                          VAL R2
      426 CAPTURE                          VAL R0
      427 CAPTURE                          VAL R1
      428 NAMECALL                         R29 R3 K25 ["OnHostEvent"]
      430 CALL                             R29 3 1
      431 GETUPVAL                         R35 0
      432 GETTABLEKS                       R34 R35 K80 ["endEditSession"]
      434 FASTCALL2K                       ASSERT R34 K81 ; [+4]
      436 LOADK                            R35 K81 ["Invalid network key: endEditSession"]
      437 GETIMPORT                        R33 K4 [assert]
      439 CALL                             R33 2 0
      440 LOADK                            R32 K82 ["createAnimationGenBridge_endEditSession"]
      441 NEWCLOSURE                       R33 P26
      442 CAPTURE                          VAL R2
      443 CAPTURE                          VAL R0
      444 CAPTURE                          VAL R1
      445 NAMECALL                         R30 R3 K25 ["OnHostEvent"]
      447 CALL                             R30 3 1
      448 GETUPVAL                         R36 0
      449 GETTABLEKS                       R35 R36 K83 ["beginEditPreview"]
      451 FASTCALL2K                       ASSERT R35 K84 ; [+4]
      453 LOADK                            R36 K84 ["Invalid network key: beginEditPreview"]
      454 GETIMPORT                        R34 K4 [assert]
      456 CALL                             R34 2 0
      457 LOADK                            R33 K85 ["createAnimationGenBridge_beginEditPreview"]
      458 NEWCLOSURE                       R34 P27
      459 CAPTURE                          VAL R2
      460 CAPTURE                          VAL R0
      461 CAPTURE                          VAL R1
      462 NAMECALL                         R31 R3 K25 ["OnHostEvent"]
      464 CALL                             R31 3 1
      465 NEWCLOSURE                       R32 P28
      466 CAPTURE                          VAL R5
      467 CAPTURE                          VAL R6
      468 CAPTURE                          VAL R7
      469 CAPTURE                          VAL R8
      470 CAPTURE                          VAL R9
      471 CAPTURE                          VAL R10
      472 CAPTURE                          VAL R11
      473 CAPTURE                          VAL R12
      474 CAPTURE                          VAL R13
      475 CAPTURE                          VAL R14
      476 CAPTURE                          VAL R15
      477 CAPTURE                          VAL R16
      478 CAPTURE                          VAL R17
      479 CAPTURE                          VAL R18
      480 CAPTURE                          VAL R19
      481 CAPTURE                          VAL R20
      482 CAPTURE                          VAL R21
      483 CAPTURE                          VAL R22
      484 CAPTURE                          VAL R23
      485 CAPTURE                          VAL R24
      486 CAPTURE                          VAL R25
      487 CAPTURE                          VAL R26
      488 CAPTURE                          VAL R27
      489 CAPTURE                          VAL R28
      490 CAPTURE                          VAL R29
      491 CAPTURE                          VAL R30
      492 CAPTURE                          VAL R31
      493 CAPTURE                          VAL R1
      494 RETURN                           R32 1

PROTO_77:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function toGuest"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_78:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Calling unimplemented function toHost"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_79:
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

PROTO_80:
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

PROTO_81:
        0 DUPTABLE                         R3 K2 [{"toGuest", "toHost"}]
        1 DUPCLOSURE                       R4 K3 [PROTO_77]
        2 SETTABLEKS                       R4 R3 K0 ["toGuest"]
        4 DUPCLOSURE                       R4 K4 [PROTO_78]
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
       16 NEWTABLE                         R2 64 0
       18 LOADK                            R3 K9 ["animationHistoryChanged"]
       19 SETTABLEKS                       R3 R2 K9 ["animationHistoryChanged"]
       21 LOADK                            R3 K10 ["playbackStateChanged"]
       22 SETTABLEKS                       R3 R2 K10 ["playbackStateChanged"]
       24 LOADK                            R3 K11 ["thoughtReceived"]
       25 SETTABLEKS                       R3 R2 K11 ["thoughtReceived"]
       27 LOADK                            R3 K12 ["poseDeselected"]
       28 SETTABLEKS                       R3 R2 K12 ["poseDeselected"]
       30 LOADK                            R3 K13 ["poseEdited"]
       31 SETTABLEKS                       R3 R2 K13 ["poseEdited"]
       33 LOADK                            R3 K14 ["clipToUpscalePreviewRigChanged"]
       34 SETTABLEKS                       R3 R2 K14 ["clipToUpscalePreviewRigChanged"]
       36 LOADK                            R3 K15 ["getAnimationCardState"]
       37 SETTABLEKS                       R3 R2 K15 ["getAnimationCardState"]
       39 LOADK                            R3 K16 ["selectAnimationVersion"]
       40 SETTABLEKS                       R3 R2 K16 ["selectAnimationVersion"]
       42 LOADK                            R3 K17 ["prepareAnimationEdit"]
       43 SETTABLEKS                       R3 R2 K17 ["prepareAnimationEdit"]
       45 LOADK                            R3 K18 ["resolveGenerationSource"]
       46 SETTABLEKS                       R3 R2 K18 ["resolveGenerationSource"]
       48 LOADK                            R3 K19 ["getPlaybackState"]
       49 SETTABLEKS                       R3 R2 K19 ["getPlaybackState"]
       51 LOADK                            R3 K20 ["generateAndSaveAnimationAsync"]
       52 SETTABLEKS                       R3 R2 K20 ["generateAndSaveAnimationAsync"]
       54 LOADK                            R3 K21 ["discardEditAnimationPreview"]
       55 SETTABLEKS                       R3 R2 K21 ["discardEditAnimationPreview"]
       57 LOADK                            R3 K22 ["getSelectedRigRef"]
       58 SETTABLEKS                       R3 R2 K22 ["getSelectedRigRef"]
       60 LOADK                            R3 K23 ["setIsPlaying"]
       61 SETTABLEKS                       R3 R2 K23 ["setIsPlaying"]
       63 LOADK                            R3 K24 ["setCurrentTime"]
       64 SETTABLEKS                       R3 R2 K24 ["setCurrentTime"]
       66 LOADK                            R3 K25 ["previewClipToUpscaleAsync"]
       67 SETTABLEKS                       R3 R2 K25 ["previewClipToUpscaleAsync"]
       69 LOADK                            R3 K26 ["clearClipToUpscalePreview"]
       70 SETTABLEKS                       R3 R2 K26 ["clearClipToUpscalePreview"]
       72 LOADK                            R3 K27 ["insertClipToUpscalePreviewRigAsync"]
       73 SETTABLEKS                       R3 R2 K27 ["insertClipToUpscalePreviewRigAsync"]
       75 LOADK                            R3 K28 ["setClipToUpscalePreviewRig"]
       76 SETTABLEKS                       R3 R2 K28 ["setClipToUpscalePreviewRig"]
       78 LOADK                            R3 K29 ["endClipToUpscalePreviewSession"]
       79 SETTABLEKS                       R3 R2 K29 ["endClipToUpscalePreviewSession"]
       81 LOADK                            R3 K30 ["generateUpscalePreviewAsync"]
       82 SETTABLEKS                       R3 R2 K30 ["generateUpscalePreviewAsync"]
       84 LOADK                            R3 K31 ["updateUpscalePreview"]
       85 SETTABLEKS                       R3 R2 K31 ["updateUpscalePreview"]
       87 LOADK                            R3 K32 ["openInAnimationClipEditor"]
       88 SETTABLEKS                       R3 R2 K32 ["openInAnimationClipEditor"]
       90 LOADK                            R3 K33 ["publishAnimation"]
       91 SETTABLEKS                       R3 R2 K33 ["publishAnimation"]
       93 LOADK                            R3 K34 ["insertPose"]
       94 SETTABLEKS                       R3 R2 K34 ["insertPose"]
       96 LOADK                            R3 K35 ["deletePose"]
       97 SETTABLEKS                       R3 R2 K35 ["deletePose"]
       99 LOADK                            R3 K36 ["movePose"]
      100 SETTABLEKS                       R3 R2 K36 ["movePose"]
      102 LOADK                            R3 K37 ["resizePose"]
      103 SETTABLEKS                       R3 R2 K37 ["resizePose"]
      105 LOADK                            R3 K38 ["getEditScrubbarState"]
      106 SETTABLEKS                       R3 R2 K38 ["getEditScrubbarState"]
      108 LOADK                            R3 K39 ["resetPose"]
      109 SETTABLEKS                       R3 R2 K39 ["resetPose"]
      111 LOADK                            R3 K40 ["endEditSession"]
      112 SETTABLEKS                       R3 R2 K40 ["endEditSession"]
      114 LOADK                            R3 K41 ["beginEditPreview"]
      115 SETTABLEKS                       R3 R2 K41 ["beginEditPreview"]
      117 DUPCLOSURE                       R3 K42 [PROTO_0]
      118 CAPTURE                          VAL R2
      119 DUPCLOSURE                       R4 K43 [PROTO_1]
      120 DUPCLOSURE                       R5 K44 [PROTO_17]
      121 CAPTURE                          VAL R2
      122 DUPCLOSURE                       R6 K45 [PROTO_18]
      123 DUPCLOSURE                       R7 K46 [PROTO_76]
      124 CAPTURE                          VAL R2
      125 DUPCLOSURE                       R8 K47 [PROTO_81]
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R7
      128 DUPTABLE                         R9 K49 [{"prepareBridges"}]
      129 SETTABLEKS                       R8 R9 K48 ["prepareBridges"]
      131 RETURN                           R9 1
