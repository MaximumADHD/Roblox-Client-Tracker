PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["Stylizer"]
        4 GETIMPORT                        R5 K5 [Enum.AssetFetchStatus.Success]
        6 JUMPIFNOTEQ                      R2 R5 ; [+2]
        8 RETURN                           R1 1
        9 GETIMPORT                        R5 K7 [Enum.AssetFetchStatus.Failure]
       11 JUMPIFNOTEQ                      R2 R5 ; [+6]
       13 GETTABLEKS                       R5 R4 K8 ["subjectThumbnail"]
       15 GETTABLEKS                       R5 R5 K9 ["loadFailureImage"]
       17 RETURN                           R5 1
       18 GETTABLEKS                       R5 R4 K8 ["subjectThumbnail"]
       20 GETTABLEKS                       R5 R5 K10 ["loadingImage"]
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
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K5 ["getBackgroundParent"]
       19 MOVE                             R3 R1
       20 CALL                             R2 1 -1
       21 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["maskRef"]
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["maskBackgroundParent"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["parentChanged"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["colorChanged"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K5 ["getBackgroundParent"]
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["maskRef"]
        3 NAMECALL                         R0 R0 K1 ["getValue"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["maskBackgroundParent"]
       11 GETTABLEKS                       R1 R1 K3 ["BackgroundColor3"]
       13 SETTABLEKS                       R1 R0 K4 ["ImageColor3"]
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["maskRef"]
        3 NAMECALL                         R0 R0 K1 ["getValue"]
        5 CALL                             R0 1 1
        6 JUMPIF                           R0 ; [+1]
        7 RETURN                           R0 0
        8 GETUPVAL                         R1 0
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R2 R2 K2 ["getBackgroundParent"]
       12 GETTABLEKS                       R3 R0 K3 ["Parent"]
       14 CALL                             R2 1 1
       15 SETTABLEKS                       R2 R1 K4 ["maskBackgroundParent"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K5 ["colorChanged"]
       20 JUMPIFNOT                        R1 ; [+6]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K5 ["colorChanged"]
       24 NAMECALL                         R1 R1 K6 ["Disconnect"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K4 ["maskBackgroundParent"]
       30 JUMPIFNOT                        R1 ; [+29]
       31 GETUPVAL                         R1 0
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K4 ["maskBackgroundParent"]
       35 LOADK                            R4 K7 ["BackgroundColor3"]
       36 NAMECALL                         R2 R2 K8 ["GetPropertyChangedSignal"]
       38 CALL                             R2 2 1
       39 GETUPVAL                         R4 1
       40 NAMECALL                         R2 R2 K9 ["Connect"]
       42 CALL                             R2 2 1
       43 SETTABLEKS                       R2 R1 K5 ["colorChanged"]
       45 GETUPVAL                         R1 0
       46 GETTABLEKS                       R1 R1 K0 ["maskRef"]
       48 NAMECALL                         R1 R1 K1 ["getValue"]
       50 CALL                             R1 1 1
       51 JUMPIF                           R1 ; [+1]
       52 RETURN                           R0 0
       53 GETUPVAL                         R2 0
       54 GETTABLEKS                       R2 R2 K4 ["maskBackgroundParent"]
       56 GETTABLEKS                       R2 R2 K7 ["BackgroundColor3"]
       58 SETTABLEKS                       R2 R1 K10 ["ImageColor3"]
       60 RETURN                           R0 0

PROTO_5:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 NEWCLOSURE                       R2 P1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          VAL R1
        5 GETTABLEKS                       R3 R0 K0 ["maskRef"]
        7 NAMECALL                         R3 R3 K1 ["getValue"]
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R3 K2 ["AncestryChanged"]
       12 MOVE                             R6 R2
       13 NAMECALL                         R4 R4 K3 ["Connect"]
       15 CALL                             R4 2 1
       16 SETTABLEKS                       R4 R0 K4 ["parentChanged"]
       18 MOVE                             R4 R2
       19 CALL                             R4 0 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["parentChanged"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["colorChanged"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K2 ["colorChanged"]
       10 NAMECALL                         R1 R1 K1 ["Disconnect"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 NAMECALL                         R2 R2 K0 ["getThumbnail"]
        5 CALL                             R2 3 1
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K1 ["Stylizer"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R4 R4 K2 ["createElement"]
       12 LOADK                            R5 K3 ["ImageLabel"]
       13 DUPTABLE                         R6 K10 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Image"]}]
       14 GETIMPORT                        R7 K13 [UDim2.fromScale]
       16 LOADN                            R8 1
       17 LOADN                            R9 1
       18 CALL                             R7 2 1
       19 SETTABLEKS                       R7 R6 K4 ["Size"]
       21 GETTABLEKS                       R7 R3 K14 ["subjectThumbnail"]
       23 GETTABLEKS                       R7 R7 K15 ["background"]
       25 SETTABLEKS                       R7 R6 K5 ["BackgroundColor3"]
       27 SETTABLEKS                       R2 R6 K9 ["Image"]
       29 DUPTABLE                         R7 K17 [{"Mask"}]
       30 GETUPVAL                         R8 2
       31 GETTABLEKS                       R8 R8 K2 ["createElement"]
       33 LOADK                            R9 K3 ["ImageLabel"]
       34 NEWTABLE                         R10 4 0
       36 GETUPVAL                         R11 2
       37 GETTABLEKS                       R11 R11 K18 ["Ref"]
       39 GETUPVAL                         R12 0
       40 GETTABLEKS                       R12 R12 K19 ["maskRef"]
       42 SETTABLE                         R12 R10 R11
       43 GETIMPORT                        R11 K13 [UDim2.fromScale]
       45 LOADN                            R12 1
       46 LOADN                            R13 1
       47 CALL                             R11 2 1
       48 SETTABLEKS                       R11 R10 K4 ["Size"]
       50 LOADN                            R11 1
       51 SETTABLEKS                       R11 R10 K6 ["BackgroundTransparency"]
       53 GETTABLEKS                       R11 R3 K14 ["subjectThumbnail"]
       55 GETTABLEKS                       R11 R11 K20 ["maskImage"]
       57 SETTABLEKS                       R11 R10 K9 ["Image"]
       59 CALL                             R8 2 1
       60 SETTABLEKS                       R8 R7 K16 ["Mask"]
       62 CALL                             R4 3 -1
       63 RETURN                           R4 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Id"]
        4 GETTABLEKS                       R3 R1 K2 ["Size"]
        6 GETTABLEKS                       R4 R1 K3 ["Position"]
        8 GETTABLEKS                       R5 R1 K4 ["AnchorPoint"]
       10 GETTABLEKS                       R6 R1 K5 ["LayoutOrder"]
       12 GETTABLEKS                       R7 R1 K6 ["ZIndex"]
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R8 R8 K7 ["createElement"]
       17 LOADK                            R9 K8 ["Frame"]
       18 DUPTABLE                         R10 K11 [{["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"], ["LayoutOrder"], ["ZIndex"]}]
       19 SETTABLEKS                       R3 R10 K2 ["Size"]
       21 SETTABLEKS                       R4 R10 K3 ["Position"]
       23 SETTABLEKS                       R5 R10 K4 ["AnchorPoint"]
       25 SETTABLEKS                       R6 R10 K5 ["LayoutOrder"]
       27 SETTABLEKS                       R7 R10 K6 ["ZIndex"]
       29 DUPTABLE                         R11 K13 [{"AutoThumbnail"}]
       30 GETUPVAL                         R12 0
       31 GETTABLEKS                       R12 R12 K7 ["createElement"]
       33 GETUPVAL                         R13 1
       34 DUPTABLE                         R14 K17 [{["Id"], ["ThumbnailType"] = "AvatarHeadShot", ["RenderContents"]}]
       35 SETTABLEKS                       R2 R14 K1 ["Id"]
       37 NEWCLOSURE                       R15 P0
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R1
       40 CAPTURE                          UPVAL U0
       41 SETTABLEKS                       R15 R14 K16 ["RenderContents"]
       43 CALL                             R12 2 1
       44 SETTABLEKS                       R12 R11 K12 ["AutoThumbnail"]
       46 CALL                             R8 3 -1
       47 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K10 ["Src"]
       33 GETTABLEKS                       R6 R6 K11 ["Components"]
       35 GETTABLEKS                       R6 R6 K12 ["AutoThumbnails"]
       37 GETTABLEKS                       R6 R6 K13 ["AutoThumbnail"]
       39 CALL                             R5 1 1
       40 GETTABLEKS                       R6 R1 K14 ["Component"]
       42 GETIMPORT                        R8 K1 [script]
       44 GETTABLEKS                       R8 R8 K15 ["Name"]
       46 NAMECALL                         R6 R6 K16 ["extend"]
       48 CALL                             R6 2 1
       49 DUPCLOSURE                       R7 K17 [PROTO_0]
       50 SETTABLEKS                       R7 R6 K18 ["getThumbnail"]
       52 DUPCLOSURE                       R7 K19 [PROTO_2]
       53 CAPTURE                          VAL R1
       54 SETTABLEKS                       R7 R6 K20 ["init"]
       56 DUPCLOSURE                       R7 K21 [PROTO_5]
       57 SETTABLEKS                       R7 R6 K22 ["didMount"]
       59 DUPCLOSURE                       R7 K23 [PROTO_6]
       60 SETTABLEKS                       R7 R6 K24 ["willUnmount"]
       62 DUPCLOSURE                       R7 K25 [PROTO_8]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R5
       65 SETTABLEKS                       R7 R6 K26 ["render"]
       67 MOVE                             R7 R4
       68 DUPTABLE                         R8 K28 [{"Stylizer"}]
       69 GETTABLEKS                       R9 R3 K27 ["Stylizer"]
       71 SETTABLEKS                       R9 R8 K27 ["Stylizer"]
       73 CALL                             R7 1 1
       74 MOVE                             R8 R6
       75 CALL                             R7 1 1
       76 MOVE                             R6 R7
       77 RETURN                           R6 1
