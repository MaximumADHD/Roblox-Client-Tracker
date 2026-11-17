PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Parent"]
        3 GETUPVAL                         R1 1
        4 JUMPIFNOTEQ                      R0 R1 ; [+5]
        6 GETUPVAL                         R0 0
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["Parent"]
       10 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+31]
        4 GETUPVAL                         R1 1
        5 SETTABLEKS                       R0 R1 K1 ["Parent"]
        7 GETUPVAL                         R1 1
        8 LOADK                            R3 K2 ["Model"]
        9 NAMECALL                         R1 R1 K3 ["FindFirstChildWhichIsA"]
       11 CALL                             R1 2 1
       12 JUMPIFNOT                        R1 ; [+22]
       13 GETUPVAL                         R2 2
       14 GETTABLEKS                       R2 R2 K4 ["computeLookCamera"]
       16 MOVE                             R3 R1
       17 GETUPVAL                         R4 3
       18 CALL                             R2 2 1
       19 JUMPIFNOT                        R2 ; [+15]
       20 GETUPVAL                         R3 4
       21 GETTABLEKS                       R4 R2 K5 ["cframe"]
       23 SETTABLEKS                       R4 R3 K6 ["CFrame"]
       25 GETUPVAL                         R3 4
       26 GETTABLEKS                       R4 R2 K7 ["focus"]
       28 SETTABLEKS                       R4 R3 K8 ["Focus"]
       30 GETUPVAL                         R3 4
       31 GETTABLEKS                       R4 R2 K9 ["fov"]
       33 SETTABLEKS                       R4 R3 K10 ["FieldOfView"]
       35 NEWCLOSURE                       R1 P0
       36 CAPTURE                          UPVAL U1
       37 CAPTURE                          VAL R0
       38 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["worldModel"]
        2 GETTABLEKS                       R2 R0 K1 ["camera"]
        4 GETTABLEKS                       R3 R0 K2 ["lookType"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["useRef"]
        9 LOADNIL                          R5
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K4 ["useLayoutEffect"]
       14 NEWCLOSURE                       R6 P0
       15 CAPTURE                          VAL R4
       16 CAPTURE                          VAL R1
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R2
       20 NEWTABLE                         R7 0 3
       22 MOVE                             R8 R1
       23 MOVE                             R9 R3
       24 MOVE                             R10 R2
       25 SETLIST                          R7 R8 3 [1]
       27 CALL                             R5 2 0
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R5 R5 K5 ["createElement"]
       31 GETUPVAL                         R6 2
       32 DUPTABLE                         R7 K10 [{["tag"] = "bg-surface-200 radius-medium stroke-default clip", ["Size"], ["LayoutOrder"]}]
       33 GETIMPORT                        R8 K13 [UDim2.fromOffset]
       35 GETUPVAL                         R9 3
       36 GETTABLEKS                       R9 R9 K14 ["LOOK_PREVIEW_SIZE"]
       38 GETUPVAL                         R10 3
       39 GETTABLEKS                       R10 R10 K14 ["LOOK_PREVIEW_SIZE"]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K8 ["Size"]
       44 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       46 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       48 DUPTABLE                         R8 K16 [{"Viewport"}]
       49 GETUPVAL                         R9 0
       50 GETTABLEKS                       R9 R9 K5 ["createElement"]
       52 LOADK                            R10 K17 ["ViewportFrame"]
       53 DUPTABLE                         R11 K26 [{["Size"], ["BackgroundTransparency"] = 1, ["CurrentCamera"], ["Ambient"], ["LightColor"], ["LightDirection"] = {0, -0.5, 1}, ["ref"]}]
       54 GETIMPORT                        R12 K28 [UDim2.fromScale]
       56 LOADN                            R13 1
       57 LOADN                            R14 1
       58 CALL                             R12 2 1
       59 SETTABLEKS                       R12 R11 K8 ["Size"]
       61 GETTABLEKS                       R12 R0 K1 ["camera"]
       63 SETTABLEKS                       R12 R11 K20 ["CurrentCamera"]
       65 GETIMPORT                        R12 K31 [Color3.new]
       67 LOADK                            R13 K32 [0.5]
       68 LOADK                            R14 K32 [0.5]
       69 LOADK                            R15 K32 [0.5]
       70 CALL                             R12 3 1
       71 SETTABLEKS                       R12 R11 K21 ["Ambient"]
       73 GETIMPORT                        R12 K31 [Color3.new]
       75 LOADN                            R13 1
       76 LOADN                            R14 1
       77 LOADN                            R15 1
       78 CALL                             R12 3 1
       79 SETTABLEKS                       R12 R11 K22 ["LightColor"]
       81 SETTABLEKS                       R4 R11 K25 ["ref"]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K15 ["Viewport"]
       86 CALL                             R5 3 -1
       87 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K0 ["worldModel"]
        7 GETTABLEKS                       R2 R0 K1 ["camera"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 JUMPIFNOT                        R2 ; [+3]
       11 GETTABLEKS                       R3 R0 K2 ["isReady"]
       13 JUMPIF                           R3 ; [+11]
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K3 ["createElement"]
       17 GETUPVAL                         R4 2
       18 DUPTABLE                         R5 K5 [{"LayoutOrder"}]
       19 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       21 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       23 CALL                             R3 2 -1
       24 RETURN                           R3 -1
       25 GETUPVAL                         R3 1
       26 GETTABLEKS                       R3 R3 K3 ["createElement"]
       28 GETUPVAL                         R4 3
       29 DUPTABLE                         R5 K7 [{"worldModel", "camera", "lookType", "LayoutOrder"}]
       30 SETTABLEKS                       R1 R5 K0 ["worldModel"]
       32 SETTABLEKS                       R2 R5 K1 ["camera"]
       34 GETTABLEKS                       R6 R0 K6 ["lookType"]
       36 SETTABLEKS                       R6 R5 K6 ["lookType"]
       38 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       40 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       42 CALL                             R3 2 -1
       43 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R0 K10 ["Src"]
       27 GETTABLEKS                       R5 R5 K11 ["Types"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Src"]
       34 GETTABLEKS                       R6 R6 K12 ["Util"]
       36 GETTABLEKS                       R6 R6 K13 ["Constants"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K10 ["Src"]
       43 GETTABLEKS                       R7 R7 K12 ["Util"]
       45 GETTABLEKS                       R7 R7 K14 ["LookCameraUtils"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K10 ["Src"]
       52 GETTABLEKS                       R8 R8 K15 ["Flags"]
       54 GETTABLEKS                       R8 R8 K16 ["getFFlagAvatarPreviewerLookComposer"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K10 ["Src"]
       61 GETTABLEKS                       R9 R9 K17 ["Components"]
       63 GETTABLEKS                       R9 R9 K18 ["LookComposerDialog"]
       65 GETTABLEKS                       R9 R9 K19 ["PreviewPlaceholder"]
       67 CALL                             R8 1 1
       68 DUPCLOSURE                       R9 K20 [PROTO_2]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R5
       73 DUPCLOSURE                       R10 K21 [PROTO_3]
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R9
       78 RETURN                           R10 1
