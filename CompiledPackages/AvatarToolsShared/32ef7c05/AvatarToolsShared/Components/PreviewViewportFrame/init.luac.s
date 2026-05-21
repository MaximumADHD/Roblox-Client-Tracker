PROTO_0:
        0 GETUPVAL                         R2 0
        1 NAMECALL                         R2 R2 K0 ["Disconnect"]
        3 CALL                             R2 1 0
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["props"]
        8 GETTABLEKS                       R2 R2 K2 ["PreviewContext"]
       10 NAMECALL                         R2 R2 K3 ["getAnimationTargetChangedSignal"]
       12 CALL                             R2 1 1
       13 NAMECALL                         R2 R2 K4 ["Fire"]
       15 CALL                             R2 1 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["PreviewContext"]
        8 NAMECALL                         R1 R1 K3 ["getAnimationTargetChangedSignal"]
       10 CALL                             R1 1 1
       11 NAMECALL                         R1 R1 K4 ["Fire"]
       13 CALL                             R1 1 0
       14 RETURN                           R0 0
       15 LOADNIL                          R1
       16 GETTABLEKS                       R2 R0 K5 ["AncestryChanged"]
       18 NEWCLOSURE                       R4 P0
       19 CAPTURE                          REF R1
       20 CAPTURE                          UPVAL U0
       21 NAMECALL                         R2 R2 K6 ["Connect"]
       23 CALL                             R2 2 1
       24 MOVE                             R1 R2
       25 CLOSEUPVALS                      R1
       26 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["worldModel"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["camera"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 0
       10 GETTABLEKS                       R0 R0 K0 ["worldModel"]
       12 NAMECALL                         R0 R0 K2 ["GetExtentsSize"]
       14 CALL                             R0 1 1
       15 GETTABLEKS                       R2 R0 K4 ["magnitude"]
       17 MULK                             R1 R2 K3 [0.8]
       18 GETUPVAL                         R2 0
       19 GETTABLEKS                       R2 R2 K5 ["props"]
       21 GETTABLEKS                       R2 R2 K6 ["FocusDirection"]
       23 GETTABLEKS                       R2 R2 K7 ["Unit"]
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K1 ["camera"]
       28 GETIMPORT                        R4 K10 [CFrame.new]
       30 CALL                             R4 0 1
       31 SETTABLEKS                       R4 R3 K11 ["Focus"]
       33 GETUPVAL                         R3 0
       34 GETTABLEKS                       R3 R3 K1 ["camera"]
       36 GETIMPORT                        R4 K10 [CFrame.new]
       38 MUL                              R5 R1 R2
       39 FASTCALL                         VECTOR ; [+2]
       40 GETIMPORT                        R6 K13 [Vector3.new]
       42 CALL                             R6 0 1
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K8 ["CFrame"]
       46 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PreviewContext"]
        5 NAMECALL                         R0 R0 K2 ["getAvatars"]
        7 CALL                             R0 1 1
        8 GETIMPORT                        R1 K4 [ipairs]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 3
       12 FORGPREP_INEXT                   R1
       13 GETTABLEKS                       R6 R5 K5 ["model"]
       15 JUMPIFNOT                        R6 ; [+46]
       16 GETTABLEKS                       R6 R5 K5 ["model"]
       18 GETTABLEKS                       R7 R5 K6 ["id"]
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K7 ["thumbnailModelClones"]
       23 GETTABLE                         R8 R9 R7
       24 JUMPIF                           R8 ; [+37]
       25 LOADB                            R8 1
       26 SETTABLEKS                       R8 R6 K8 ["Archivable"]
       28 GETIMPORT                        R8 K4 [ipairs]
       30 NAMECALL                         R9 R6 K9 ["GetDescendants"]
       32 CALL                             R9 1 -1
       33 CALL                             R8 -1 3
       34 FORGPREP_INEXT                   R8
       35 LOADB                            R13 1
       36 SETTABLEKS                       R13 R12 K8 ["Archivable"]
       38 FORGLOOP                         R8 2 [inext] ; [-4]
       40 NAMECALL                         R8 R6 K10 ["Clone"]
       42 CALL                             R8 1 1
       43 LOADB                            R9 1
       44 SETTABLEKS                       R9 R8 K8 ["Archivable"]
       46 GETIMPORT                        R9 K4 [ipairs]
       48 NAMECALL                         R10 R8 K9 ["GetDescendants"]
       50 CALL                             R10 1 -1
       51 CALL                             R9 -1 3
       52 FORGPREP_INEXT                   R9
       53 LOADB                            R14 1
       54 SETTABLEKS                       R14 R13 K8 ["Archivable"]
       56 FORGLOOP                         R9 2 [inext] ; [-4]
       58 GETUPVAL                         R9 0
       59 GETTABLEKS                       R9 R9 K7 ["thumbnailModelClones"]
       61 SETTABLE                         R8 R9 R7
       62 FORGLOOP                         R1 2 [inext] ; [-50]
       64 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PreviewContext"]
        5 NAMECALL                         R1 R0 K2 ["getAvatars"]
        7 CALL                             R1 1 1
        8 NAMECALL                         R2 R0 K3 ["getCurrentPreviewAvatarIndex"]
       10 CALL                             R2 1 1
       11 GETTABLE                         R3 R1 R2
       12 JUMPIFNOT                        R3 ; [+76]
       13 GETTABLE                         R3 R1 R2
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R4 R4 K4 ["currentAvatar"]
       17 JUMPIFEQ                         R3 R4 ; [+71]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["currentAvatar"]
       22 JUMPIFNOT                        R3 ; [+14]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K4 ["currentAvatar"]
       26 GETTABLEKS                       R3 R3 K5 ["model"]
       28 JUMPIFNOT                        R3 ; [+8]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K4 ["currentAvatar"]
       32 GETTABLEKS                       R3 R3 K5 ["model"]
       34 LOADNIL                          R4
       35 SETTABLEKS                       R4 R3 K6 ["Parent"]
       37 GETUPVAL                         R3 0
       38 GETTABLE                         R4 R1 R2
       39 SETTABLEKS                       R4 R3 K4 ["currentAvatar"]
       41 GETUPVAL                         R3 0
       42 GETTABLEKS                       R3 R3 K7 ["worldModel"]
       44 JUMPIFNOT                        R3 ; [+6]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R3 R3 K7 ["worldModel"]
       48 NAMECALL                         R3 R3 K8 ["Destroy"]
       50 CALL                             R3 1 0
       51 GETUPVAL                         R3 0
       52 GETIMPORT                        R4 K11 [Instance.new]
       54 LOADK                            R5 K12 ["WorldModel"]
       55 CALL                             R4 1 1
       56 SETTABLEKS                       R4 R3 K7 ["worldModel"]
       58 GETUPVAL                         R3 0
       59 GETTABLEKS                       R3 R3 K13 ["updateModelClones"]
       61 CALL                             R3 0 0
       62 GETUPVAL                         R3 0
       63 GETUPVAL                         R4 0
       64 GETTABLEKS                       R4 R4 K14 ["getAvatarThumbnailModels"]
       66 CALL                             R4 0 1
       67 SETTABLEKS                       R4 R3 K15 ["thumbnailModels"]
       69 GETUPVAL                         R3 0
       70 GETTABLEKS                       R3 R3 K4 ["currentAvatar"]
       72 GETTABLEKS                       R3 R3 K5 ["model"]
       74 GETUPVAL                         R4 0
       75 GETTABLEKS                       R4 R4 K7 ["worldModel"]
       77 SETTABLEKS                       R4 R3 K6 ["Parent"]
       79 GETUPVAL                         R3 0
       80 DUPTABLE                         R5 K17 [{"temp"}]
       81 NEWTABLE                         R6 0 0
       83 SETTABLEKS                       R6 R5 K16 ["temp"]
       85 NAMECALL                         R3 R3 K18 ["setState"]
       87 CALL                             R3 2 0
       88 RETURN                           R0 0
       89 LENGTH                           R3 R1
       90 JUMPIFNOTEQKN                    R3 K19 [0] ; [+24]
       92 GETUPVAL                         R3 0
       93 GETTABLEKS                       R3 R3 K7 ["worldModel"]
       95 JUMPIFNOT                        R3 ; [+6]
       96 GETUPVAL                         R3 0
       97 GETTABLEKS                       R3 R3 K7 ["worldModel"]
       99 NAMECALL                         R3 R3 K8 ["Destroy"]
      101 CALL                             R3 1 0
      102 GETUPVAL                         R3 0
      103 LOADNIL                          R4
      104 SETTABLEKS                       R4 R3 K4 ["currentAvatar"]
      106 GETUPVAL                         R3 0
      107 DUPTABLE                         R5 K17 [{"temp"}]
      108 NEWTABLE                         R6 0 0
      110 SETTABLEKS                       R6 R5 K16 ["temp"]
      112 NAMECALL                         R3 R3 K18 ["setState"]
      114 CALL                             R3 2 0
      115 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["PreviewContext"]
        5 NEWTABLE                         R1 0 0
        7 JUMPIFNOT                        R0 ; [+35]
        8 NAMECALL                         R2 R0 K2 ["getAvatars"]
       10 CALL                             R2 1 1
       11 GETIMPORT                        R3 K4 [ipairs]
       13 MOVE                             R4 R2
       14 CALL                             R3 1 3
       15 FORGPREP_INEXT                   R3
       16 GETTABLEKS                       R8 R7 K5 ["model"]
       18 GETTABLEKS                       R9 R7 K6 ["id"]
       20 JUMPIFNOT                        R8 ; [+20]
       21 LOADK                            R12 K7 ["Model"]
       22 NAMECALL                         R10 R8 K8 ["IsA"]
       24 CALL                             R10 2 1
       25 JUMPIFNOT                        R10 ; [+15]
       26 GETUPVAL                         R11 0
       27 GETTABLEKS                       R11 R11 K9 ["thumbnailModelClones"]
       29 GETTABLE                         R10 R11 R9
       30 JUMPIFNOT                        R10 ; [+10]
       31 GETUPVAL                         R13 0
       32 GETTABLEKS                       R13 R13 K9 ["thumbnailModelClones"]
       34 GETTABLE                         R12 R13 R9
       35 FASTCALL2                        TABLE_INSERT R1 R12 ; [+4]
       37 MOVE                             R11 R1
       38 GETIMPORT                        R10 K12 [table.insert]
       40 CALL                             R10 2 0
       41 FORGLOOP                         R3 2 [inext] ; [-26]
       43 RETURN                           R1 1

PROTO_6:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["currentAvatar"]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K1 ["thumbnailModels"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K2 ["thumbnailModelClones"]
       11 GETIMPORT                        R1 K5 [Instance.new]
       13 LOADK                            R2 K6 ["Camera"]
       14 CALL                             R1 1 1
       15 SETTABLEKS                       R1 R0 K7 ["camera"]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K8 ["onViewModelLoaded"]
       21 NEWCLOSURE                       R1 P1
       22 CAPTURE                          VAL R0
       23 SETTABLEKS                       R1 R0 K9 ["recenterCamera"]
       25 NEWCLOSURE                       R1 P2
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K10 ["updateModelClones"]
       29 NEWCLOSURE                       R1 P3
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K11 ["onPreviewModelChanged"]
       33 NEWCLOSURE                       R1 P4
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K12 ["getAvatarThumbnailModels"]
       37 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["PreviewContext"]
        4 GETTABLEKS                       R3 R1 K2 ["OnPopoutClicked"]
        6 GETTABLEKS                       R4 R1 K3 ["ShowPopoutButton"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETTABLEKS                       R6 R0 K5 ["currentAvatar"]
       12 JUMPIFNOT                        R6 ; [+5]
       13 GETTABLEKS                       R6 R0 K5 ["currentAvatar"]
       15 GETTABLEKS                       R6 R6 K6 ["model"]
       17 JUMPIF                           R6 ; [+2]
       18 LOADNIL                          R6
       19 RETURN                           R6 1
       20 GETTABLEKS                       R6 R0 K7 ["thumbnailModels"]
       22 GETTABLEKS                       R7 R0 K5 ["currentAvatar"]
       24 GETTABLEKS                       R7 R7 K8 ["clothing"]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R8 R8 K9 ["createElement"]
       29 GETUPVAL                         R9 1
       30 DUPTABLE                         R10 K12 [{"Size", "BackgroundColor3"}]
       31 GETIMPORT                        R11 K15 [UDim2.new]
       33 LOADN                            R12 1
       34 LOADN                            R13 0
       35 LOADN                            R14 1
       36 LOADN                            R15 0
       37 CALL                             R11 4 1
       38 SETTABLEKS                       R11 R10 K10 ["Size"]
       40 GETTABLEKS                       R11 R5 K16 ["BackgroundColor"]
       42 SETTABLEKS                       R11 R10 K11 ["BackgroundColor3"]
       44 DUPTABLE                         R11 K19 [{"PreviewRenderModel", "Overlay"}]
       45 GETUPVAL                         R12 0
       46 GETTABLEKS                       R12 R12 K9 ["createElement"]
       48 GETUPVAL                         R13 2
       49 DUPTABLE                         R14 K28 [{"Camera", "Model", "ShouldClone", "Size", "Position", "RecenterCameraOnUpdate", "RecenterModelOnUpdate", "FocusDirection", "OnViewModelLoaded"}]
       50 GETTABLEKS                       R15 R0 K29 ["camera"]
       52 SETTABLEKS                       R15 R14 K20 ["Camera"]
       54 GETTABLEKS                       R15 R0 K30 ["worldModel"]
       56 SETTABLEKS                       R15 R14 K21 ["Model"]
       58 LOADB                            R15 0
       59 SETTABLEKS                       R15 R14 K22 ["ShouldClone"]
       61 GETIMPORT                        R15 K15 [UDim2.new]
       63 LOADN                            R16 1
       64 LOADN                            R17 0
       65 LOADN                            R18 1
       66 LOADN                            R19 0
       67 CALL                             R15 4 1
       68 SETTABLEKS                       R15 R14 K10 ["Size"]
       70 GETIMPORT                        R15 K15 [UDim2.new]
       72 LOADN                            R16 0
       73 LOADN                            R17 0
       74 LOADN                            R18 0
       75 LOADN                            R19 0
       76 CALL                             R15 4 1
       77 SETTABLEKS                       R15 R14 K23 ["Position"]
       79 LOADB                            R15 0
       80 SETTABLEKS                       R15 R14 K24 ["RecenterCameraOnUpdate"]
       82 LOADB                            R15 0
       83 SETTABLEKS                       R15 R14 K25 ["RecenterModelOnUpdate"]
       85 GETTABLEKS                       R15 R1 K26 ["FocusDirection"]
       87 SETTABLEKS                       R15 R14 K26 ["FocusDirection"]
       89 GETTABLEKS                       R15 R0 K31 ["onViewModelLoaded"]
       91 SETTABLEKS                       R15 R14 K27 ["OnViewModelLoaded"]
       93 CALL                             R12 2 1
       94 SETTABLEKS                       R12 R11 K17 ["PreviewRenderModel"]
       96 GETUPVAL                         R12 0
       97 GETTABLEKS                       R12 R12 K9 ["createElement"]
       99 GETUPVAL                         R13 1
      100 DUPTABLE                         R14 K34 [{"ZIndex", "Size", "BackgroundTransparency"}]
      101 LOADN                            R15 99
      102 SETTABLEKS                       R15 R14 K32 ["ZIndex"]
      104 GETIMPORT                        R15 K15 [UDim2.new]
      106 LOADN                            R16 1
      107 LOADN                            R17 0
      108 LOADN                            R18 1
      109 LOADN                            R19 0
      110 CALL                             R15 4 1
      111 SETTABLEKS                       R15 R14 K10 ["Size"]
      113 LOADN                            R15 1
      114 SETTABLEKS                       R15 R14 K33 ["BackgroundTransparency"]
      116 DUPTABLE                         R15 K39 [{"LayerOrderManager", "PreviewAvatarWheel", "PopoutButton", "RecenterButton"}]
      117 GETUPVAL                         R16 0
      118 GETTABLEKS                       R16 R16 K9 ["createElement"]
      120 GETUPVAL                         R17 3
      121 DUPTABLE                         R18 K46 [{"PreviewClothing", "Size", "AnchorPoint", "Position", "Capacity", "ShowEmptyBoxes", "TileComponent", "OnCapacityReached"}]
      122 SETTABLEKS                       R7 R18 K40 ["PreviewClothing"]
      124 GETTABLEKS                       R19 R5 K47 ["LayerOrderManagerSize"]
      126 SETTABLEKS                       R19 R18 K10 ["Size"]
      128 GETTABLEKS                       R19 R5 K48 ["LayerOrderManagerAnchorPoint"]
      130 SETTABLEKS                       R19 R18 K41 ["AnchorPoint"]
      132 GETTABLEKS                       R19 R5 K49 ["LayerOrderManagerPosition"]
      134 SETTABLEKS                       R19 R18 K23 ["Position"]
      136 GETTABLEKS                       R19 R1 K50 ["LayerOrderManagerCapacity"]
      138 SETTABLEKS                       R19 R18 K42 ["Capacity"]
      140 GETTABLEKS                       R19 R1 K43 ["ShowEmptyBoxes"]
      142 SETTABLEKS                       R19 R18 K43 ["ShowEmptyBoxes"]
      144 GETUPVAL                         R19 4
      145 SETTABLEKS                       R19 R18 K44 ["TileComponent"]
      147 GETTABLEKS                       R19 R0 K0 ["props"]
      149 GETTABLEKS                       R19 R19 K45 ["OnCapacityReached"]
      151 SETTABLEKS                       R19 R18 K45 ["OnCapacityReached"]
      153 CALL                             R16 2 1
      154 SETTABLEKS                       R16 R15 K35 ["LayerOrderManager"]
      156 GETUPVAL                         R16 0
      157 GETTABLEKS                       R16 R16 K9 ["createElement"]
      159 GETUPVAL                         R17 5
      160 DUPTABLE                         R18 K53 [{"PreviewAvatars", "SelectedIndex", "Size", "Position", "AnchorPoint", "Capacity"}]
      161 SETTABLEKS                       R6 R18 K51 ["PreviewAvatars"]
      163 NAMECALL                         R19 R2 K54 ["getCurrentPreviewAvatarIndex"]
      165 CALL                             R19 1 1
      166 SETTABLEKS                       R19 R18 K52 ["SelectedIndex"]
      168 GETTABLEKS                       R19 R5 K55 ["PreviewAvatarWheelSize"]
      170 SETTABLEKS                       R19 R18 K10 ["Size"]
      172 GETTABLEKS                       R19 R5 K56 ["PreviewAvatarWheelPosition"]
      174 SETTABLEKS                       R19 R18 K23 ["Position"]
      176 GETTABLEKS                       R19 R5 K57 ["PreviewAvatarWheelAnchorPoint"]
      178 SETTABLEKS                       R19 R18 K41 ["AnchorPoint"]
      180 GETTABLEKS                       R19 R1 K58 ["PreviewAvatarWheelCapacity"]
      182 SETTABLEKS                       R19 R18 K42 ["Capacity"]
      184 CALL                             R16 2 1
      185 SETTABLEKS                       R16 R15 K36 ["PreviewAvatarWheel"]
      187 MOVE                             R16 R4
      188 JUMPIFNOT                        R16 ; [+44]
      189 GETUPVAL                         R16 0
      190 GETTABLEKS                       R16 R16 K9 ["createElement"]
      192 GETUPVAL                         R17 6
      193 DUPTABLE                         R18 K62 [{"LeftIcon", "IconSize", "Size", "Position", "AnchorPoint", "OnClick"}]
      194 GETTABLEKS                       R19 R5 K63 ["Icon"]
      196 SETTABLEKS                       R19 R18 K59 ["LeftIcon"]
      198 GETTABLEKS                       R19 R5 K60 ["IconSize"]
      200 SETTABLEKS                       R19 R18 K60 ["IconSize"]
      202 GETIMPORT                        R19 K65 [UDim2.fromOffset]
      204 GETTABLEKS                       R20 R5 K66 ["PopoutButtonSize"]
      206 GETTABLEKS                       R21 R5 K66 ["PopoutButtonSize"]
      208 CALL                             R19 2 1
      209 SETTABLEKS                       R19 R18 K10 ["Size"]
      211 GETIMPORT                        R19 K15 [UDim2.new]
      213 LOADN                            R20 0
      214 GETTABLEKS                       R21 R5 K67 ["PopoutButtonOffset"]
      216 LOADN                            R22 1
      217 GETTABLEKS                       R24 R5 K67 ["PopoutButtonOffset"]
      219 MINUS                            R23 R24
      220 CALL                             R19 4 1
      221 SETTABLEKS                       R19 R18 K23 ["Position"]
      223 GETIMPORT                        R19 K69 [Vector2.new]
      225 LOADN                            R20 0
      226 LOADN                            R21 1
      227 CALL                             R19 2 1
      228 SETTABLEKS                       R19 R18 K41 ["AnchorPoint"]
      230 SETTABLEKS                       R3 R18 K61 ["OnClick"]
      232 CALL                             R16 2 1
      233 SETTABLEKS                       R16 R15 K37 ["PopoutButton"]
      235 GETUPVAL                         R16 0
      236 GETTABLEKS                       R16 R16 K9 ["createElement"]
      238 GETUPVAL                         R17 6
      239 DUPTABLE                         R18 K70 [{"LeftIcon", "IconSize", "Size", "Position", "OnClick"}]
      240 GETTABLEKS                       R19 R5 K71 ["RecenterIcon"]
      242 SETTABLEKS                       R19 R18 K59 ["LeftIcon"]
      244 GETTABLEKS                       R19 R5 K60 ["IconSize"]
      246 SETTABLEKS                       R19 R18 K60 ["IconSize"]
      248 GETIMPORT                        R19 K65 [UDim2.fromOffset]
      250 GETTABLEKS                       R20 R5 K66 ["PopoutButtonSize"]
      252 GETTABLEKS                       R21 R5 K66 ["PopoutButtonSize"]
      254 CALL                             R19 2 1
      255 SETTABLEKS                       R19 R18 K10 ["Size"]
      257 GETIMPORT                        R19 K15 [UDim2.new]
      259 LOADN                            R20 0
      260 GETTABLEKS                       R21 R5 K67 ["PopoutButtonOffset"]
      262 LOADN                            R22 0
      263 GETTABLEKS                       R23 R5 K67 ["PopoutButtonOffset"]
      265 CALL                             R19 4 1
      266 SETTABLEKS                       R19 R18 K23 ["Position"]
      268 GETTABLEKS                       R19 R0 K72 ["recenterCamera"]
      270 SETTABLEKS                       R19 R18 K61 ["OnClick"]
      272 CALL                             R16 2 1
      273 SETTABLEKS                       R16 R15 K38 ["RecenterButton"]
      275 CALL                             R12 3 1
      276 SETTABLEKS                       R12 R11 K18 ["Overlay"]
      278 CALL                             R8 3 -1
      279 RETURN                           R8 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["PreviewContext"]
        4 NAMECALL                         R2 R2 K2 ["getPreviewModelChangedSignal"]
        6 CALL                             R2 1 1
        7 GETTABLEKS                       R4 R0 K3 ["onPreviewModelChanged"]
        9 NAMECALL                         R2 R2 K4 ["Connect"]
       11 CALL                             R2 2 1
       12 SETTABLEKS                       R2 R0 K5 ["PreviewModelChangedHandle"]
       14 GETTABLEKS                       R2 R0 K3 ["onPreviewModelChanged"]
       16 CALL                             R2 0 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["worldModel"]
        2 JUMPIFNOT                        R1 ; [+26]
        3 GETTABLEKS                       R1 R0 K1 ["currentAvatar"]
        5 JUMPIFNOT                        R1 ; [+23]
        6 GETTABLEKS                       R1 R0 K1 ["currentAvatar"]
        8 GETTABLEKS                       R1 R1 K2 ["model"]
       10 JUMPIFNOT                        R1 ; [+18]
       11 GETTABLEKS                       R1 R0 K0 ["worldModel"]
       13 GETIMPORT                        R3 K5 [CFrame.new]
       15 CALL                             R3 0 -1
       16 NAMECALL                         R1 R1 K6 ["PivotTo"]
       18 CALL                             R1 -1 0
       19 GETTABLEKS                       R1 R0 K1 ["currentAvatar"]
       21 GETTABLEKS                       R1 R1 K2 ["model"]
       23 GETIMPORT                        R3 K5 [CFrame.new]
       25 CALL                             R3 0 -1
       26 NAMECALL                         R1 R1 K6 ["PivotTo"]
       28 CALL                             R1 -1 0
       29 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["currentAvatar"]
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETTABLEKS                       R1 R0 K0 ["currentAvatar"]
        5 GETTABLEKS                       R1 R1 K1 ["model"]
        7 JUMPIFNOT                        R1 ; [+7]
        8 GETTABLEKS                       R1 R0 K0 ["currentAvatar"]
       10 GETTABLEKS                       R1 R1 K1 ["model"]
       12 LOADNIL                          R2
       13 SETTABLEKS                       R2 R1 K2 ["Parent"]
       15 LOADNIL                          R1
       16 SETTABLEKS                       R1 R0 K0 ["currentAvatar"]
       18 GETTABLEKS                       R1 R0 K3 ["worldModel"]
       20 JUMPIFNOT                        R1 ; [+8]
       21 GETTABLEKS                       R1 R0 K3 ["worldModel"]
       23 NAMECALL                         R1 R1 K4 ["Destroy"]
       25 CALL                             R1 1 0
       26 LOADNIL                          R1
       27 SETTABLEKS                       R1 R0 K3 ["worldModel"]
       29 GETTABLEKS                       R1 R0 K5 ["PreviewModelChangedHandle"]
       31 JUMPIFNOT                        R1 ; [+8]
       32 GETTABLEKS                       R1 R0 K5 ["PreviewModelChangedHandle"]
       34 NAMECALL                         R1 R1 K6 ["Disconnect"]
       36 CALL                             R1 1 0
       37 LOADNIL                          R1
       38 SETTABLEKS                       R1 R0 K5 ["PreviewModelChangedHandle"]
       40 GETTABLEKS                       R1 R0 K7 ["thumbnailModelClones"]
       42 JUMPIFNOT                        R1 ; [+15]
       43 GETIMPORT                        R1 K9 [ipairs]
       45 GETTABLEKS                       R2 R0 K7 ["thumbnailModelClones"]
       47 CALL                             R1 1 3
       48 FORGPREP_INEXT                   R1
       49 NAMECALL                         R6 R5 K4 ["Destroy"]
       51 CALL                             R6 1 0
       52 FORGLOOP                         R1 2 [inext] ; [-4]
       54 NEWTABLE                         R1 0 0
       56 SETTABLEKS                       R1 R0 K7 ["thumbnailModelClones"]
       58 GETTABLEKS                       R1 R0 K10 ["camera"]
       60 JUMPIFNOT                        R1 ; [+8]
       61 GETTABLEKS                       R1 R0 K10 ["camera"]
       63 NAMECALL                         R1 R1 K4 ["Destroy"]
       65 CALL                             R1 1 0
       66 LOADNIL                          R1
       67 SETTABLEKS                       R1 R0 K10 ["camera"]
       69 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K1 [script]
       16 GETTABLEKS                       R2 R2 K2 ["Parent"]
       18 GETTABLEKS                       R2 R2 K2 ["Parent"]
       20 GETTABLEKS                       R3 R2 K6 ["Util"]
       22 GETTABLEKS                       R3 R3 K7 ["AccessoryAndBodyToolShared"]
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R3 K8 ["Constants"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K9 ["Framework"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R5 K10 ["ContextServices"]
       36 GETTABLEKS                       R7 R6 K11 ["withContext"]
       38 GETTABLEKS                       R8 R5 K12 ["UI"]
       40 GETTABLEKS                       R8 R8 K13 ["Pane"]
       42 GETTABLEKS                       R9 R5 K12 ["UI"]
       44 GETTABLEKS                       R9 R9 K14 ["IconButton"]
       46 GETTABLEKS                       R10 R5 K12 ["UI"]
       48 GETTABLEKS                       R10 R10 K15 ["AssetRenderModel"]
       50 GETIMPORT                        R11 K4 [require]
       52 GETTABLEKS                       R12 R2 K16 ["Contexts"]
       54 GETTABLEKS                       R12 R12 K17 ["PreviewContext"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K4 [require]
       59 GETTABLEKS                       R13 R2 K18 ["Components"]
       61 GETTABLEKS                       R13 R13 K19 ["PreviewAvatarWheel"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K4 [require]
       66 GETTABLEKS                       R14 R2 K18 ["Components"]
       68 GETTABLEKS                       R14 R14 K20 ["PreviewRenderModel"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K4 [require]
       73 GETTABLEKS                       R15 R2 K18 ["Components"]
       75 GETTABLEKS                       R15 R15 K21 ["LayerOrderManager"]
       77 CALL                             R14 1 1
       78 GETIMPORT                        R15 K4 [require]
       80 GETTABLEKS                       R16 R2 K18 ["Components"]
       82 GETTABLEKS                       R16 R16 K22 ["LayerTile"]
       84 CALL                             R15 1 1
       85 GETTABLEKS                       R16 R1 K23 ["PureComponent"]
       87 LOADK                            R18 K24 ["PreviewViewportFrame"]
       88 NAMECALL                         R16 R16 K25 ["extend"]
       90 CALL                             R16 2 1
       91 DUPTABLE                         R17 K30 [{"LayerOrderManagerCapacity", "PreviewAvatarWheelCapacity", "ShowEmptyBoxes", "FocusDirection"}]
       92 GETTABLEKS                       R18 R4 K31 ["LAYER_LIMIT"]
       94 SETTABLEKS                       R18 R17 K26 ["LayerOrderManagerCapacity"]
       96 GETTABLEKS                       R18 R4 K32 ["AVATAR_LIMIT"]
       98 SETTABLEKS                       R18 R17 K27 ["PreviewAvatarWheelCapacity"]
      100 LOADB                            R18 1
      101 SETTABLEKS                       R18 R17 K28 ["ShowEmptyBoxes"]
      103 LOADK                            R18 K33 [{0, 0, -1}]
      104 SETTABLEKS                       R18 R17 K29 ["FocusDirection"]
      106 SETTABLEKS                       R17 R16 K34 ["defaultProps"]
      108 DUPCLOSURE                       R17 K35 [PROTO_6]
      109 SETTABLEKS                       R17 R16 K36 ["init"]
      111 DUPCLOSURE                       R17 K37 [PROTO_7]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R10
      115 CAPTURE                          VAL R14
      116 CAPTURE                          VAL R15
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R9
      119 SETTABLEKS                       R17 R16 K38 ["render"]
      121 DUPCLOSURE                       R17 K39 [PROTO_8]
      122 SETTABLEKS                       R17 R16 K40 ["didMount"]
      124 DUPCLOSURE                       R17 K41 [PROTO_9]
      125 SETTABLEKS                       R17 R16 K42 ["didUpdate"]
      127 DUPCLOSURE                       R17 K43 [PROTO_10]
      128 SETTABLEKS                       R17 R16 K44 ["willUnmount"]
      130 MOVE                             R17 R7
      131 DUPTABLE                         R18 K46 [{"Stylizer", "PreviewContext"}]
      132 GETTABLEKS                       R19 R6 K45 ["Stylizer"]
      134 SETTABLEKS                       R19 R18 K45 ["Stylizer"]
      136 SETTABLEKS                       R11 R18 K17 ["PreviewContext"]
      138 CALL                             R17 1 1
      139 MOVE                             R18 R16
      140 CALL                             R17 1 1
      141 MOVE                             R16 R17
      142 RETURN                           R16 1
