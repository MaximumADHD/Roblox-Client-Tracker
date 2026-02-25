PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Stylizer"]
        4 GETIMPORT                        R5 K5 [Enum.AssetFetchStatus.Success]
        6 JUMPIFNOTEQ                      R2 R5 ; [+2]
        8 RETURN                           R1 1
        9 GETIMPORT                        R5 K7 [Enum.AssetFetchStatus.Failure]
       11 JUMPIFNOTEQ                      R2 R5 ; [+6]
       13 GETTABLEKS                       R6 R4 K8 ["subjectThumbnail"]
       15 GETTABLEKS                       R5 R6 K9 ["loadFailureImage"]
       17 RETURN                           R5 1
       18 GETTABLEKS                       R6 R4 K8 ["subjectThumbnail"]
       20 GETTABLEKS                       R5 R6 K10 ["loadingImage"]
       22 RETURN                           R5 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFEQKNIL                     R1 ; [+6]
        4 LOADK                            R4 K1 ["GuiObject"]
        5 NAMECALL                         R2 R1 K2 ["IsA"]
        7 CALL                             R2 2 1
        8 JUMPIF                           R2 ; [+2]
        9 LOADNIL                          R2
       10 RETURN                           R2 1
       11 GETTABLEKS                       R2 R1 K3 ["BackgroundTransparency"]
       13 JUMPIFEQKN                       R2 K4 [1] ; [+2]
       15 RETURN                           R1 1
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R2 R3 K5 ["getBackgroundParent"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+19]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["createRef"]
        5 CALL                             R1 0 1
        6 SETTABLEKS                       R1 R0 K1 ["maskRef"]
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K2 ["maskBackgroundParent"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K3 ["parentChanged"]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K4 ["colorChanged"]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K5 ["getBackgroundParent"]
       21 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["maskRef"]
        3 NAMECALL                         R0 R0 K1 ["getValue"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R2 1
        9 JUMPIFNOT                        R2 ; [+10]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K2 ["props"]
       13 GETTABLEKS                       R3 R4 K3 ["Stylizer"]
       15 GETTABLEKS                       R2 R3 K4 ["subjectThumbnail"]
       17 GETTABLEKS                       R1 R2 K5 ["backgroundColor"]
       19 JUMP                             ; [+5]
       20 GETUPVAL                         R3 0
       21 GETTABLEKS                       R2 R3 K6 ["maskBackgroundParent"]
       23 GETTABLEKS                       R1 R2 K7 ["BackgroundColor3"]
       25 SETTABLEKS                       R1 R0 K8 ["ImageColor3"]
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["maskRef"]
        3 NAMECALL                         R0 R0 K1 ["getValue"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R2 R3 K2 ["getBackgroundParent"]
       12 GETTABLEKS                       R3 R0 K3 ["Parent"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K4 ["maskBackgroundParent"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K5 ["colorChanged"]
       20 JUMPIFNOT                        R1 ; [+6]
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R1 R2 K5 ["colorChanged"]
       24 NAMECALL                         R1 R1 K6 ["Disconnect"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R1 R2 K4 ["maskBackgroundParent"]
       30 JUMPIFNOT                        R1 ; [+41]
       31 GETUPVAL                         R1 0
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R2 R3 K4 ["maskBackgroundParent"]
       35 LOADK                            R4 K7 ["BackgroundColor3"]
       36 NAMECALL                         R2 R2 K8 ["GetPropertyChangedSignal"]
       38 CALL                             R2 2 1
       39 GETUPVAL                         R4 1
       40 NAMECALL                         R2 R2 K9 ["Connect"]
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R1 K5 ["colorChanged"]
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R1 R2 K0 ["maskRef"]
       48 NAMECALL                         R1 R1 K1 ["getValue"]
       50 CALL                             R1 1 1
       51 JUMPIF                           R1 ; [+1]
       52 RETURN                           R0 0
       53 GETUPVAL                         R3 2
       54 JUMPIFNOT                        R3 ; [+10]
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R5 R6 K10 ["props"]
       58 GETTABLEKS                       R4 R5 K11 ["Stylizer"]
       60 GETTABLEKS                       R3 R4 K12 ["subjectThumbnail"]
       62 GETTABLEKS                       R2 R3 K13 ["backgroundColor"]
       64 JUMP                             ; [+5]
       65 GETUPVAL                         R4 0
       66 GETTABLEKS                       R3 R4 K4 ["maskBackgroundParent"]
       68 GETTABLEKS                       R2 R3 K7 ["BackgroundColor3"]
       70 SETTABLEKS                       R2 R1 K14 ["ImageColor3"]
       72 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+22]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 NEWCLOSURE                       R2 P1
        6 CAPTURE                          VAL R0
        7 CAPTURE                          VAL R1
        8 CAPTURE                          UPVAL U0
        9 GETTABLEKS                       R3 R0 K0 ["maskRef"]
       11 NAMECALL                         R3 R3 K1 ["getValue"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K2 ["AncestryChanged"]
       16 MOVE                             R6 R2
       17 NAMECALL                         R4 R4 K3 ["Connect"]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R0 K4 ["parentChanged"]
       22 MOVE                             R4 R2
       23 CALL                             R4 0 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+13]
        2 GETTABLEKS                       R1 R0 K0 ["parentChanged"]
        4 NAMECALL                         R1 R1 K1 ["Disconnect"]
        6 CALL                             R1 1 0
        7 GETTABLEKS                       R1 R0 K2 ["colorChanged"]
        9 JUMPIFNOT                        R1 ; [+5]
       10 GETTABLEKS                       R1 R0 K2 ["colorChanged"]
       12 NAMECALL                         R1 R1 K1 ["Disconnect"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["getThumbnail"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K1 ["props"]
        9 GETTABLEKS                       R4 R3 K2 ["Stylizer"]
       11 GETUPVAL                         R6 1
       12 GETTABLEKS                       R5 R6 K3 ["createElement"]
       14 LOADK                            R6 K4 ["ImageLabel"]
       15 DUPTABLE                         R7 K10 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "Image"}]
       16 GETIMPORT                        R8 K13 [UDim2.fromScale]
       18 LOADN                            R9 1
       19 LOADN                            R10 1
       20 CALL                             R8 2 1
       21 SETTABLEKS                       R8 R7 K5 ["Size"]
       23 GETTABLEKS                       R9 R4 K14 ["subjectThumbnail"]
       25 GETTABLEKS                       R8 R9 K15 ["background"]
       27 SETTABLEKS                       R8 R7 K6 ["BackgroundColor3"]
       29 LOADN                            R8 0
       30 SETTABLEKS                       R8 R7 K7 ["BackgroundTransparency"]
       32 LOADN                            R8 0
       33 SETTABLEKS                       R8 R7 K8 ["BorderSizePixel"]
       35 SETTABLEKS                       R2 R7 K9 ["Image"]
       37 DUPTABLE                         R8 K17 [{"Mask"}]
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R9 R10 K3 ["createElement"]
       41 LOADK                            R10 K4 ["ImageLabel"]
       42 NEWTABLE                         R11 8 0
       44 GETUPVAL                         R13 1
       45 GETTABLEKS                       R12 R13 K18 ["Ref"]
       47 GETUPVAL                         R14 2
       48 JUMPIFNOT                        R14 ; [+2]
       49 LOADNIL                          R13
       50 JUMP                             ; [+3]
       51 GETUPVAL                         R14 0
       52 GETTABLEKS                       R13 R14 K19 ["maskRef"]
       54 SETTABLE                         R13 R11 R12
       55 GETIMPORT                        R12 K13 [UDim2.fromScale]
       57 LOADN                            R13 1
       58 LOADN                            R14 1
       59 CALL                             R12 2 1
       60 SETTABLEKS                       R12 R11 K5 ["Size"]
       62 LOADN                            R12 1
       63 SETTABLEKS                       R12 R11 K7 ["BackgroundTransparency"]
       65 GETTABLEKS                       R13 R4 K14 ["subjectThumbnail"]
       67 GETTABLEKS                       R12 R13 K20 ["maskImage"]
       69 SETTABLEKS                       R12 R11 K9 ["Image"]
       71 GETUPVAL                         R13 2
       72 JUMPIFNOT                        R13 ; [+5]
       73 GETTABLEKS                       R13 R4 K14 ["subjectThumbnail"]
       75 GETTABLEKS                       R12 R13 K21 ["backgroundColor"]
       77 JUMP                             ; [+1]
       78 LOADNIL                          R12
       79 SETTABLEKS                       R12 R11 K22 ["ImageColor3"]
       81 CALL                             R9 2 1
       82 SETTABLEKS                       R9 R8 K16 ["Mask"]
       84 CALL                             R5 3 -1
       85 RETURN                           R5 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Id"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["AnchorPoint"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["ZIndex"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K7 ["createElement"]
       17 LOADK                            R9 K8 ["Frame"]
       18 DUPTABLE                         R10 K10 [{"BackgroundTransparency", "Size", "Position", "AnchorPoint", "LayoutOrder", "ZIndex"}]
       19 LOADN                            R11 1
       20 SETTABLEKS                       R11 R10 K9 ["BackgroundTransparency"]
       22 SETTABLEKS                       R3 R10 K2 ["Size"]
       24 SETTABLEKS                       R4 R10 K3 ["Position"]
       26 SETTABLEKS                       R5 R10 K4 ["AnchorPoint"]
       28 SETTABLEKS                       R6 R10 K5 ["LayoutOrder"]
       30 SETTABLEKS                       R7 R10 K6 ["ZIndex"]
       32 DUPTABLE                         R11 K12 [{"AutoThumbnail"}]
       33 GETUPVAL                         R13 0
       34 GETTABLEKS                       R12 R13 K7 ["createElement"]
       36 GETUPVAL                         R13 1
       37 DUPTABLE                         R14 K15 [{"Id", "ThumbnailType", "RenderContents"}]
       38 SETTABLEKS                       R2 R14 K1 ["Id"]
       40 LOADK                            R15 K16 ["AvatarHeadShot"]
       41 SETTABLEKS                       R15 R14 K13 ["ThumbnailType"]
       43 NEWCLOSURE                       R15 P0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U0
       46 CAPTURE                          UPVAL U2
       47 SETTABLEKS                       R15 R14 K14 ["RenderContents"]
       49 CALL                             R12 2 1
       50 SETTABLEKS                       R12 R11 K11 ["AutoThumbnail"]
       52 CALL                             R8 3 -1
       53 RETURN                           R8 -1

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
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R4 R2 K8 ["Style"]
       27 GETTABLEKS                       R3 R4 K9 ["Stylizer"]
       29 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       31 GETTABLEKS                       R5 R4 K11 ["withContext"]
       33 GETIMPORT                        R6 K4 [require]
       35 GETTABLEKS                       R10 R0 K12 ["Src"]
       37 GETTABLEKS                       R9 R10 K13 ["Components"]
       39 GETTABLEKS                       R8 R9 K14 ["Thumbnails"]
       41 GETTABLEKS                       R7 R8 K15 ["AutoThumbnail"]
       43 CALL                             R6 1 1
       44 GETTABLEKS                       R7 R1 K16 ["Component"]
       46 GETIMPORT                        R10 K1 [script]
       48 GETTABLEKS                       R9 R10 K17 ["Name"]
       50 NAMECALL                         R7 R7 K18 ["extend"]
       52 CALL                             R7 2 1
       53 GETIMPORT                        R8 K20 [game]
       55 LOADK                            R10 K21 ["FixThumbnailBackgroundManageCollaborators"]
       56 LOADB                            R11 0
       57 NAMECALL                         R8 R8 K22 ["DefineFastFlag"]
       59 CALL                             R8 3 1
       60 DUPCLOSURE                       R9 K23 [PROTO_0]
       61 SETTABLEKS                       R9 R7 K24 ["getThumbnail"]
       63 DUPCLOSURE                       R9 K25 [PROTO_2]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R1
       66 SETTABLEKS                       R9 R7 K26 ["init"]
       68 DUPCLOSURE                       R9 K27 [PROTO_5]
       69 CAPTURE                          VAL R8
       70 SETTABLEKS                       R9 R7 K28 ["didMount"]
       72 DUPCLOSURE                       R9 K29 [PROTO_6]
       73 CAPTURE                          VAL R8
       74 SETTABLEKS                       R9 R7 K30 ["willUnmount"]
       76 DUPCLOSURE                       R9 K31 [PROTO_8]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R8
       80 SETTABLEKS                       R9 R7 K32 ["render"]
       82 MOVE                             R9 R5
       83 DUPTABLE                         R10 K33 [{"Stylizer"}]
       84 SETTABLEKS                       R3 R10 K9 ["Stylizer"]
       86 CALL                             R9 1 1
       87 MOVE                             R10 R7
       88 CALL                             R9 1 1
       89 MOVE                             R7 R9
       90 RETURN                           R7 1
