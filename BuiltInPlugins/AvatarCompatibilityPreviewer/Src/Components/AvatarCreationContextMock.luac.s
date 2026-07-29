PROTO_0:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["HumanoidDescription"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Model"]
        3 CALL                             R0 1 1
        4 GETIMPORT                        R1 K2 [Instance.new]
        6 LOADK                            R2 K4 ["Part"]
        7 CALL                             R1 1 1
        8 LOADK                            R2 K5 ["HumanoidRootPart"]
        9 SETTABLEKS                       R2 R1 K6 ["Name"]
       11 SETTABLEKS                       R0 R1 K7 ["Parent"]
       13 SETTABLEKS                       R1 R0 K8 ["PrimaryPart"]
       15 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["previewSignal"]
        3 JUMPIFEQKNIL                     R2 ; [+7]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["previewSignal"]
        8 NAMECALL                         R2 R2 K1 ["Wait"]
       10 CALL                             R2 1 0
       11 LOADK                            R2 K2 ["preview-1"]
       12 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["CreateEditableImage"]
        3 CALL                             R1 1 -1
        4 RETURN                           R1 -1

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["progressSignal"]
        3 JUMPIFEQKNIL                     R3 ; [+9]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["progressSignal"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K1 ["Connect"]
       11 CALL                             R2 2 1
       12 JUMP                             ; [+1]
       13 LOADNIL                          R2
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["signal"]
       17 JUMPIFEQKNIL                     R3 ; [+7]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K2 ["signal"]
       22 NAMECALL                         R3 R3 K3 ["Wait"]
       24 CALL                             R3 1 0
       25 JUMPIFEQKNIL                     R2 ; [+4]
       27 NAMECALL                         R3 R2 K4 ["Disconnect"]
       29 CALL                             R3 1 0
       30 LOADK                            R3 K5 ["generation-1"]
       31 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 -1
        2 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["result"]
        3 JUMPIF                           R1 ; [+16]
        4 GETIMPORT                        R2 K3 [Instance.new]
        6 LOADK                            R3 K4 ["Model"]
        7 CALL                             R2 1 1
        8 GETIMPORT                        R3 K3 [Instance.new]
       10 LOADK                            R4 K5 ["Part"]
       11 CALL                             R3 1 1
       12 LOADK                            R4 K6 ["HumanoidRootPart"]
       13 SETTABLEKS                       R4 R3 K7 ["Name"]
       15 SETTABLEKS                       R2 R3 K8 ["Parent"]
       17 SETTABLEKS                       R3 R2 K9 ["PrimaryPart"]
       19 MOVE                             R1 R2
       20 RETURN                           R1 1

PROTO_7:
        0 DUPTABLE                         R1 K5 [{"generate2DPreviewAsync", "load2DPreviewAsync", "generate3DAvatarAsync", "load3DAvatarAsync", "createGeneratedAvatarModelAsync"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R2 R1 K0 ["generate2DPreviewAsync"]
        5 DUPCLOSURE                       R2 K6 [PROTO_3]
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R2 R1 K1 ["load2DPreviewAsync"]
        9 NEWCLOSURE                       R2 P2
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R2 R1 K2 ["generate3DAvatarAsync"]
       13 DUPCLOSURE                       R2 K7 [PROTO_5]
       14 CAPTURE                          UPVAL U1
       15 SETTABLEKS                       R2 R1 K3 ["load3DAvatarAsync"]
       17 NEWCLOSURE                       R2 P4
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R2 R1 K4 ["createGeneratedAvatarModelAsync"]
       21 RETURN                           R1 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R2 0 0
        3 CALL                             R1 1 1
        4 DUPTABLE                         R2 K5 [{"generate2DPreviewAsync", "load2DPreviewAsync", "generate3DAvatarAsync", "load3DAvatarAsync", "createGeneratedAvatarModelAsync"}]
        5 GETTABLEKS                       R3 R0 K0 ["generate2DPreviewAsync"]
        7 JUMPIF                           R3 ; [+2]
        8 GETTABLEKS                       R3 R1 K0 ["generate2DPreviewAsync"]
       10 SETTABLEKS                       R3 R2 K0 ["generate2DPreviewAsync"]
       12 GETTABLEKS                       R3 R0 K1 ["load2DPreviewAsync"]
       14 JUMPIF                           R3 ; [+2]
       15 GETTABLEKS                       R3 R1 K1 ["load2DPreviewAsync"]
       17 SETTABLEKS                       R3 R2 K1 ["load2DPreviewAsync"]
       19 GETTABLEKS                       R3 R0 K2 ["generate3DAvatarAsync"]
       21 JUMPIF                           R3 ; [+2]
       22 GETTABLEKS                       R3 R1 K2 ["generate3DAvatarAsync"]
       24 SETTABLEKS                       R3 R2 K2 ["generate3DAvatarAsync"]
       26 GETTABLEKS                       R3 R0 K3 ["load3DAvatarAsync"]
       28 JUMPIF                           R3 ; [+2]
       29 GETTABLEKS                       R3 R1 K3 ["load3DAvatarAsync"]
       31 SETTABLEKS                       R3 R2 K3 ["load3DAvatarAsync"]
       33 GETTABLEKS                       R3 R0 K4 ["createGeneratedAvatarModelAsync"]
       35 JUMPIF                           R3 ; [+2]
       36 GETTABLEKS                       R3 R1 K4 ["createGeneratedAvatarModelAsync"]
       38 SETTABLEKS                       R3 R2 K4 ["createGeneratedAvatarModelAsync"]
       40 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K4 [{"signal", "previewSignal", "progressSignal", "result"}]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["signal"]
        5 SETTABLEKS                       R2 R1 K0 ["signal"]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["previewSignal"]
       10 SETTABLEKS                       R2 R1 K1 ["previewSignal"]
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R2 R2 K2 ["progressSignal"]
       15 SETTABLEKS                       R2 R1 K2 ["progressSignal"]
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K3 ["result"]
       20 SETTABLEKS                       R2 R1 K3 ["result"]
       22 CALL                             R0 1 1
       23 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 4
        8 GETTABLEKS                       R4 R0 K1 ["signal"]
       10 GETTABLEKS                       R5 R0 K2 ["previewSignal"]
       12 GETTABLEKS                       R6 R0 K3 ["progressSignal"]
       14 GETTABLEKS                       R7 R0 K4 ["result"]
       16 SETLIST                          R3 R4 4 [1]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K5 ["createElement"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K6 ["Provider"]
       25 DUPTABLE                         R4 K8 [{"value"}]
       26 SETTABLEKS                       R1 R4 K7 ["value"]
       28 GETTABLEKS                       R5 R0 K9 ["children"]
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["onGenerate2D"]
        3 CALL                             R2 0 0
        4 LOADK                            R2 K1 ["preview-1"]
        5 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K1 [{"generate2DPreviewAsync"}]
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R2 R1 K0 ["generate2DPreviewAsync"]
        6 CALL                             R0 1 1
        7 RETURN                           R0 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 NEWTABLE                         R3 0 1
        8 GETTABLEKS                       R4 R0 K1 ["onGenerate2D"]
       10 SETLIST                          R3 R4 1 [1]
       12 CALL                             R1 2 1
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K2 ["createElement"]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K3 ["Provider"]
       19 DUPTABLE                         R4 K5 [{"value"}]
       20 SETTABLEKS                       R1 R4 K4 ["value"]
       22 GETTABLEKS                       R5 R0 K6 ["children"]
       24 CALL                             R2 3 -1
       25 RETURN                           R2 -1

PROTO_14:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Mock 2D generation error"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Mock 2D preview load error"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Mock 3D generation error"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETIMPORT                        R0 K1 [error]
        2 LOADK                            R1 K2 ["Mock 3D load error"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 JUMPIFNOTEQKS                    R0 K0 ["generate2D"] ; [+6]
        2 DUPTABLE                         R1 K2 [{"generate2DPreviewAsync"}]
        3 DUPCLOSURE                       R2 K3 [PROTO_14]
        4 SETTABLEKS                       R2 R1 K1 ["generate2DPreviewAsync"]
        6 RETURN                           R1 1
        7 JUMPIFNOTEQKS                    R0 K4 ["load2D"] ; [+6]
        9 DUPTABLE                         R1 K6 [{"load2DPreviewAsync"}]
       10 DUPCLOSURE                       R2 K7 [PROTO_15]
       11 SETTABLEKS                       R2 R1 K5 ["load2DPreviewAsync"]
       13 RETURN                           R1 1
       14 JUMPIFNOTEQKS                    R0 K8 ["generate3D"] ; [+6]
       16 DUPTABLE                         R1 K10 [{"generate3DAvatarAsync"}]
       17 DUPCLOSURE                       R2 K11 [PROTO_16]
       18 SETTABLEKS                       R2 R1 K9 ["generate3DAvatarAsync"]
       20 RETURN                           R1 1
       21 JUMPIFNOTEQKS                    R0 K12 ["load3D"] ; [+6]
       23 DUPTABLE                         R1 K14 [{"load3DAvatarAsync"}]
       24 DUPCLOSURE                       R2 K15 [PROTO_17]
       25 SETTABLEKS                       R2 R1 K13 ["load3DAvatarAsync"]
       27 RETURN                           R1 1
       28 GETIMPORT                        R1 K17 [error]
       30 LOADK                            R3 K18 ["Unhandled failure stage: %*"]
       31 MOVE                             R5 R0
       32 NAMECALL                         R3 R3 K19 ["format"]
       34 CALL                             R3 2 1
       35 MOVE                             R2 R3
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 GETTABLEKS                       R2 R2 K0 ["stage"]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 1
        7 RETURN                           R0 1

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R3 0 1
        9 GETTABLEKS                       R4 R0 K1 ["stage"]
       11 SETLIST                          R3 R4 1 [1]
       13 CALL                             R1 2 1
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K2 ["createElement"]
       17 GETUPVAL                         R3 3
       18 GETTABLEKS                       R3 R3 K3 ["Provider"]
       20 DUPTABLE                         R4 K5 [{"value"}]
       21 SETTABLEKS                       R1 R4 K4 ["value"]
       23 GETTABLEKS                       R5 R0 K6 ["children"]
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AssetService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Src"]
       17 GETTABLEKS                       R3 R3 K11 ["Components"]
       19 GETTABLEKS                       R3 R3 K12 ["AvatarCreationContext"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K13 ["Packages"]
       26 GETTABLEKS                       R4 R4 K14 ["React"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R5 R1 K10 ["Src"]
       33 GETTABLEKS                       R5 R5 K15 ["Types"]
       35 CALL                             R4 1 1
       36 DUPCLOSURE                       R5 K16 [PROTO_0]
       37 DUPCLOSURE                       R6 K17 [PROTO_1]
       38 DUPCLOSURE                       R7 K18 [PROTO_7]
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R5
       41 DUPCLOSURE                       R8 K19 [PROTO_8]
       42 CAPTURE                          VAL R7
       43 DUPCLOSURE                       R9 K20 [PROTO_10]
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R2
       47 DUPCLOSURE                       R10 K21 [PROTO_13]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R8
       50 CAPTURE                          VAL R2
       51 DUPCLOSURE                       R11 K22 [PROTO_18]
       52 DUPCLOSURE                       R12 K23 [PROTO_20]
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R8
       55 CAPTURE                          VAL R11
       56 CAPTURE                          VAL R2
       57 DUPTABLE                         R13 K27 [{"Success", "Trackable", "Fails"}]
       58 SETTABLEKS                       R9 R13 K24 ["Success"]
       60 SETTABLEKS                       R10 R13 K25 ["Trackable"]
       62 SETTABLEKS                       R12 R13 K26 ["Fails"]
       64 RETURN                           R13 1
