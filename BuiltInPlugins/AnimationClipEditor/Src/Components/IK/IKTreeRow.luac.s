PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["OnInputBegan"]
        5 MOVE                             R3 R1
        6 GETUPVAL                         R4 1
        7 CALL                             R2 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Item"]
        6 GETTABLEKS                       R4 R1 K3 ["IKMode"]
        8 GETTABLEKS                       R5 R1 K4 ["IsSelected"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K5 ["createElement"]
       13 LOADK                            R7 K6 ["ImageButton"]
       14 NEWTABLE                         R8 8 0
       16 GETTABLEKS                       R9 R1 K7 ["Position"]
       18 SETTABLEKS                       R9 R8 K7 ["Position"]
       20 GETIMPORT                        R9 K10 [UDim2.new]
       22 LOADN                            R10 1
       23 LOADN                            R11 248
       24 LOADN                            R12 0
       25 GETUPVAL                         R14 1
       26 GETTABLEKS                       R13 R14 K11 ["TRACK_HEIGHT"]
       28 CALL                             R9 4 1
       29 SETTABLEKS                       R9 R8 K12 ["Size"]
       31 LOADN                            R9 1
       32 SETTABLEKS                       R9 R8 K13 ["ImageTransparency"]
       34 LOADB                            R9 0
       35 SETTABLEKS                       R9 R8 K14 ["AutoButtonColor"]
       37 JUMPIFNOT                        R5 ; [+5]
       38 GETTABLEKS                       R10 R2 K15 ["ikTheme"]
       40 GETTABLEKS                       R9 R10 K16 ["selected"]
       42 JUMP                             ; [+2]
       43 GETTABLEKS                       R9 R2 K17 ["backgroundColor"]
       45 SETTABLEKS                       R9 R8 K18 ["BackgroundColor3"]
       47 LOADN                            R9 0
       48 SETTABLEKS                       R9 R8 K19 ["BorderSizePixel"]
       50 LOADN                            R9 1
       51 SETTABLEKS                       R9 R8 K20 ["ZIndex"]
       53 GETUPVAL                         R11 0
       54 GETTABLEKS                       R10 R11 K21 ["Event"]
       56 GETTABLEKS                       R9 R10 K22 ["InputBegan"]
       58 NEWCLOSURE                       R10 P0
       59 CAPTURE                          VAL R0
       60 CAPTURE                          VAL R3
       61 SETTABLE                         R10 R8 R9
       62 DUPTABLE                         R9 K25 [{"Pin", "Container"}]
       63 LOADB                            R10 0
       64 GETUPVAL                         R13 1
       65 GETTABLEKS                       R12 R13 K26 ["IK_MODE"]
       67 GETTABLEKS                       R11 R12 K27 ["FullBody"]
       69 JUMPIFNOTEQ                      R4 R11 ; [+4]
       71 NAMECALL                         R10 R0 K28 ["renderPinButton"]
       73 CALL                             R10 1 1
       74 SETTABLEKS                       R10 R9 K23 ["Pin"]
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R10 R11 K5 ["createElement"]
       79 GETUPVAL                         R11 2
       80 DUPTABLE                         R12 K33 [{"HorizontalAlignment", "Layout", "Spacing", "VerticalAlignment"}]
       81 GETIMPORT                        R13 K36 [Enum.HorizontalAlignment.Left]
       83 SETTABLEKS                       R13 R12 K29 ["HorizontalAlignment"]
       85 GETIMPORT                        R13 K39 [Enum.FillDirection.Horizontal]
       87 SETTABLEKS                       R13 R12 K30 ["Layout"]
       89 LOADN                            R13 14
       90 SETTABLEKS                       R13 R12 K31 ["Spacing"]
       92 GETIMPORT                        R13 K41 [Enum.VerticalAlignment.Center]
       94 SETTABLEKS                       R13 R12 K32 ["VerticalAlignment"]
       96 DUPTABLE                         R13 K44 [{"HierarchyLines", "TextLabel"}]
       97 NAMECALL                         R14 R0 K45 ["renderHierarchyLines"]
       99 CALL                             R14 1 1
      100 SETTABLEKS                       R14 R13 K42 ["HierarchyLines"]
      102 NAMECALL                         R14 R0 K46 ["renderJointLabel"]
      104 CALL                             R14 1 1
      105 SETTABLEKS                       R14 R13 K43 ["TextLabel"]
      107 CALL                             R10 3 1
      108 SETTABLEKS                       R10 R9 K24 ["Container"]
      110 CALL                             R6 3 -1
      111 RETURN                           R6 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+3]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Item"]
        6 GETTABLEKS                       R4 R1 K3 ["IsSelected"]
        8 GETTABLEKS                       R5 R1 K4 ["RootInstance"]
       10 GETTABLEKS                       R6 R1 K5 ["PinnedParts"]
       12 GETTABLEKS                       R7 R1 K6 ["TogglePinnedPart"]
       14 GETUPVAL                         R9 0
       15 GETTABLEKS                       R8 R9 K7 ["getPartByName"]
       17 MOVE                             R9 R5
       18 MOVE                             R10 R3
       19 CALL                             R8 2 1
       20 JUMPIFNOT                        R8 ; [+2]
       21 GETTABLE                         R9 R6 R8
       22 JUMP                             ; [+1]
       23 LOADNIL                          R9
       24 GETUPVAL                         R11 1
       25 GETTABLEKS                       R10 R11 K8 ["createElement"]
       27 GETUPVAL                         R11 2
       28 DUPTABLE                         R12 K16 [{"Position", "AnchorPoint", "ZIndex", "IsRound", "Size", "BorderSizePixel", "OnClick"}]
       29 GETIMPORT                        R13 K19 [UDim2.new]
       31 LOADN                            R14 1
       32 LOADN                            R15 246
       33 LOADK                            R16 K20 [0.5]
       34 LOADN                            R17 0
       35 CALL                             R13 4 1
       36 SETTABLEKS                       R13 R12 K9 ["Position"]
       38 GETIMPORT                        R13 K22 [Vector2.new]
       40 LOADN                            R14 1
       41 LOADK                            R15 K20 [0.5]
       42 CALL                             R13 2 1
       43 SETTABLEKS                       R13 R12 K10 ["AnchorPoint"]
       45 LOADN                            R13 1
       46 SETTABLEKS                       R13 R12 K11 ["ZIndex"]
       48 LOADB                            R13 0
       49 SETTABLEKS                       R13 R12 K12 ["IsRound"]
       51 GETIMPORT                        R13 K24 [UDim2.fromOffset]
       53 LOADN                            R14 11
       54 LOADN                            R15 11
       55 CALL                             R13 2 1
       56 SETTABLEKS                       R13 R12 K13 ["Size"]
       58 LOADN                            R13 0
       59 SETTABLEKS                       R13 R12 K14 ["BorderSizePixel"]
       61 NEWCLOSURE                       R13 P0
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R7
       64 SETTABLEKS                       R13 R12 K15 ["OnClick"]
       66 DUPTABLE                         R13 K26 [{"Image"}]
       67 GETUPVAL                         R15 1
       68 GETTABLEKS                       R14 R15 K8 ["createElement"]
       70 LOADK                            R15 K27 ["ImageLabel"]
       71 DUPTABLE                         R16 K30 [{"BackgroundColor3", "BorderSizePixel", "Size", "Image", "ImageColor3"}]
       72 JUMPIFNOT                        R4 ; [+5]
       73 GETTABLEKS                       R18 R2 K31 ["ikTheme"]
       75 GETTABLEKS                       R17 R18 K32 ["selected"]
       77 JUMPIF                           R17 ; [+2]
       78 GETTABLEKS                       R17 R2 K33 ["backgroundColor"]
       80 SETTABLEKS                       R17 R16 K28 ["BackgroundColor3"]
       82 LOADN                            R17 0
       83 SETTABLEKS                       R17 R16 K14 ["BorderSizePixel"]
       85 GETIMPORT                        R17 K35 [UDim2.fromScale]
       87 LOADN                            R18 1
       88 LOADN                            R19 1
       89 CALL                             R17 2 1
       90 SETTABLEKS                       R17 R16 K13 ["Size"]
       92 GETTABLEKS                       R18 R2 K31 ["ikTheme"]
       94 GETTABLEKS                       R17 R18 K36 ["pinImage"]
       96 SETTABLEKS                       R17 R16 K25 ["Image"]
       98 JUMPIFNOT                        R9 ; [+5]
       99 GETTABLEKS                       R18 R2 K31 ["ikTheme"]
      101 GETTABLEKS                       R17 R18 K37 ["pinHover"]
      103 JUMPIF                           R17 ; [+4]
      104 GETTABLEKS                       R18 R2 K31 ["ikTheme"]
      106 GETTABLEKS                       R17 R18 K38 ["iconColor"]
      108 SETTABLEKS                       R17 R16 K29 ["ImageColor3"]
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K25 ["Image"]
      113 CALL                             R10 3 -1
      114 RETURN                           R10 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Item"]
        4 GETTABLEKS                       R3 R1 K2 ["IsLeafNode"]
        6 GETTABLEKS                       R4 R1 K3 ["Depth"]
        8 GETTABLEKS                       R5 R1 K4 ["GetVerticalLineHeight"]
       10 GETTABLEKS                       R6 R1 K5 ["Chain"]
       12 SUBK                             R7 R4 K6 [1]
       13 GETTABLEKS                       R8 R1 K7 ["IsExpanded"]
       15 GETTABLEKS                       R9 R1 K8 ["OnToggleExpanded"]
       17 GETUPVAL                         R11 0
       18 GETTABLEKS                       R10 R11 K9 ["createElement"]
       20 GETUPVAL                         R11 1
       21 DUPTABLE                         R12 K20 [{"Highlight", "IsSelected", "InActiveChain", "IsLeafNode", "IsChildNode", "IsExpanded", "Indent", "Height", "IKHeight", "LayoutOrder", "ToggleExpanded", "Element"}]
       22 GETTABLE                         R14 R6 R2
       23 JUMPIFNOTEQKNIL                  R14 ; [+2]
       25 LOADB                            R13 0 +1
       26 LOADB                            R13 1
       27 SETTABLEKS                       R13 R12 K10 ["Highlight"]
       29 GETTABLEKS                       R13 R1 K11 ["IsSelected"]
       31 SETTABLEKS                       R13 R12 K11 ["IsSelected"]
       33 GETTABLE                         R13 R6 R2
       34 SETTABLEKS                       R13 R12 K12 ["InActiveChain"]
       36 SETTABLEKS                       R3 R12 K2 ["IsLeafNode"]
       38 LOADN                            R14 0
       39 JUMPIFLT                         R14 R7 ; [+2]
       41 LOADB                            R13 0 +1
       42 LOADB                            R13 1
       43 SETTABLEKS                       R13 R12 K13 ["IsChildNode"]
       45 SETTABLEKS                       R8 R12 K7 ["IsExpanded"]
       47 SETTABLEKS                       R7 R12 K14 ["Indent"]
       49 MOVE                             R13 R5
       50 MOVE                             R14 R2
       51 LOADB                            R15 0
       52 CALL                             R13 2 1
       53 SETTABLEKS                       R13 R12 K15 ["Height"]
       55 MOVE                             R13 R5
       56 MOVE                             R14 R2
       57 LOADB                            R15 1
       58 CALL                             R13 2 1
       59 SETTABLEKS                       R13 R12 K16 ["IKHeight"]
       61 LOADN                            R13 1
       62 SETTABLEKS                       R13 R12 K17 ["LayoutOrder"]
       64 SETTABLEKS                       R9 R12 K18 ["ToggleExpanded"]
       66 SETTABLEKS                       R2 R12 K19 ["Element"]
       68 CALL                             R10 2 -1
       69 RETURN                           R10 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Item"]
        6 GETTABLEKS                       R4 R1 K3 ["IsSelected"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["createElement"]
       11 LOADK                            R6 K5 ["TextLabel"]
       12 DUPTABLE                         R7 K16 [{"Text", "TextSize", "Font", "TextColor3", "TextXAlignment", "TextYAlignment", "Size", "TextTruncate", "BackgroundTransparency", "LayoutOrder"}]
       13 SETTABLEKS                       R3 R7 K6 ["Text"]
       15 GETTABLEKS                       R9 R2 K17 ["ikTheme"]
       17 GETTABLEKS                       R8 R9 K18 ["textSize"]
       19 SETTABLEKS                       R8 R7 K7 ["TextSize"]
       21 GETTABLEKS                       R8 R2 K19 ["font"]
       23 SETTABLEKS                       R8 R7 K8 ["Font"]
       25 JUMPIFNOT                        R4 ; [+5]
       26 GETTABLEKS                       R9 R2 K17 ["ikTheme"]
       28 GETTABLEKS                       R8 R9 K20 ["primaryTextColor"]
       30 JUMPIF                           R8 ; [+4]
       31 GETTABLEKS                       R9 R2 K17 ["ikTheme"]
       33 GETTABLEKS                       R8 R9 K21 ["textColor"]
       35 SETTABLEKS                       R8 R7 K9 ["TextColor3"]
       37 GETIMPORT                        R8 K24 [Enum.TextXAlignment.Left]
       39 SETTABLEKS                       R8 R7 K10 ["TextXAlignment"]
       41 GETIMPORT                        R8 K26 [Enum.TextYAlignment.Center]
       43 SETTABLEKS                       R8 R7 K11 ["TextYAlignment"]
       45 GETIMPORT                        R8 K29 [UDim2.new]
       47 LOADN                            R9 0
       48 LOADN                            R10 160
       49 LOADN                            R11 1
       50 LOADN                            R12 0
       51 CALL                             R8 4 1
       52 SETTABLEKS                       R8 R7 K12 ["Size"]
       54 GETIMPORT                        R8 K31 [Enum.TextTruncate.AtEnd]
       56 SETTABLEKS                       R8 R7 K13 ["TextTruncate"]
       58 LOADN                            R8 1
       59 SETTABLEKS                       R8 R7 K14 ["BackgroundTransparency"]
       61 LOADN                            R8 3
       62 SETTABLEKS                       R8 R7 K15 ["LayoutOrder"]
       64 CALL                             R5 2 -1
       65 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["Constants"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R5 R0 K6 ["Src"]
       20 GETTABLEKS                       R4 R5 K7 ["Util"]
       22 GETTABLEKS                       R3 R4 K9 ["RigInfo"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R5 K11 ["Roact"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R6 R0 K10 ["Packages"]
       36 GETTABLEKS                       R5 R6 K12 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K14 ["withContext"]
       43 GETTABLEKS                       R7 R4 K15 ["UI"]
       45 GETTABLEKS                       R8 R7 K16 ["Button"]
       47 GETTABLEKS                       R9 R7 K17 ["Pane"]
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R14 R0 K6 ["Src"]
       53 GETTABLEKS                       R13 R14 K18 ["Components"]
       55 GETTABLEKS                       R12 R13 K19 ["IK"]
       57 GETTABLEKS                       R11 R12 K20 ["HierarchyLines"]
       59 CALL                             R10 1 1
       60 GETTABLEKS                       R11 R3 K21 ["PureComponent"]
       62 LOADK                            R13 K22 ["IKTreeRow"]
       63 NAMECALL                         R11 R11 K23 ["extend"]
       65 CALL                             R11 2 1
       66 DUPCLOSURE                       R12 K24 [PROTO_1]
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R9
       70 SETTABLEKS                       R12 R11 K25 ["render"]
       72 DUPCLOSURE                       R12 K26 [PROTO_3]
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R8
       76 SETTABLEKS                       R12 R11 K27 ["renderPinButton"]
       78 DUPCLOSURE                       R12 K28 [PROTO_4]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R10
       81 SETTABLEKS                       R12 R11 K29 ["renderHierarchyLines"]
       83 DUPCLOSURE                       R12 K30 [PROTO_5]
       84 CAPTURE                          VAL R3
       85 SETTABLEKS                       R12 R11 K31 ["renderJointLabel"]
       87 MOVE                             R12 R6
       88 DUPTABLE                         R13 K33 [{"Stylizer"}]
       89 GETTABLEKS                       R14 R5 K32 ["Stylizer"]
       91 SETTABLEKS                       R14 R13 K32 ["Stylizer"]
       93 CALL                             R12 1 1
       94 MOVE                             R13 R11
       95 CALL                             R12 1 1
       96 MOVE                             R11 R12
       97 RETURN                           R11 1
