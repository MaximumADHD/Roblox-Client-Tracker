PROTO_0:
        0 FASTCALL                         VECTOR ; [+2]
        1 GETIMPORT                        R3 K2 [Vector3.new]
        3 CALL                             R3 0 1
        4 NAMECALL                         R1 R0 K3 ["MoveTo"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["OnSelectionChange"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["props"]
        9 GETTABLEKS                       R1 R2 K1 ["OnSelectionChange"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_2:
        0 NAMECALL                         R2 R0 K0 ["GetDescendants"]
        2 CALL                             R2 1 3
        3 FORGPREP                         R2
        4 GETTABLEKS                       R7 R6 K1 ["Name"]
        6 JUMPIFNOTEQ                      R7 R1 ; [+8]
        8 GETUPVAL                         R8 0
        9 GETTABLEKS                       R7 R8 K2 ["isValidDisplayInstance"]
       11 MOVE                             R8 R6
       12 CALL                             R7 1 1
       13 JUMPIFNOT                        R7 ; [+1]
       14 RETURN                           R6 1
       15 FORGLOOP                         R2 2 ; [-12]
       17 LOADNIL                          R2
       18 RETURN                           R2 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R2
        4 RETURN                           R2 1
        5 LOADK                            R4 K1 ["SpecialMesh"]
        6 NAMECALL                         R2 R0 K2 ["FindFirstChildWhichIsA"]
        8 CALL                             R2 2 1
        9 JUMPIFNOT                        R2 ; [+1]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R3 R0 K3 ["Name"]
       13 LOADK                            R5 K4 ["%s+"]
       14 LOADK                            R6 K5 [""]
       15 NAMECALL                         R3 R3 K6 ["gsub"]
       17 CALL                             R3 3 1
       18 NAMECALL                         R4 R1 K7 ["GetChildren"]
       20 CALL                             R4 1 3
       21 FORGPREP                         R4
       22 LOADK                            R11 K8 ["CharacterMesh"]
       23 NAMECALL                         R9 R8 K9 ["IsA"]
       25 CALL                             R9 2 1
       26 JUMPIFNOT                        R9 ; [+8]
       27 GETTABLEKS                       R9 R8 K10 ["BodyPart"]
       29 JUMPIFNOT                        R9 ; [+5]
       30 GETTABLEKS                       R10 R9 K3 ["Name"]
       32 JUMPIFNOTEQ                      R10 R3 ; [+2]
       34 RETURN                           R8 1
       35 FORGLOOP                         R4 2 ; [-14]
       37 LOADNIL                          R4
       38 RETURN                           R4 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R1 R0 K0 ["Color"]
        3 GETIMPORT                        R1 K4 [Enum.Material.Neon]
        5 SETTABLEKS                       R1 R0 K2 ["Material"]
        7 LOADK                            R1 K5 [0.5]
        8 SETTABLEKS                       R1 R0 K6 ["Transparency"]
       10 LOADK                            R3 K7 ["MeshPart"]
       11 NAMECALL                         R1 R0 K8 ["IsA"]
       13 CALL                             R1 2 1
       14 JUMPIFNOT                        R1 ; [+3]
       15 LOADK                            R1 K9 [""]
       16 SETTABLEKS                       R1 R0 K10 ["TextureID"]
       18 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Part"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["SelectionPart"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 LOADB                            R2 1
        8 SETTABLEKS                       R2 R1 K6 ["Anchored"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K7 ["CanCollide"]
       13 GETTABLEKS                       R2 R0 K8 ["CFrame"]
       15 SETTABLEKS                       R2 R1 K8 ["CFrame"]
       17 LOADB                            R2 1
       18 SETTABLEKS                       R2 R1 K9 ["Locked"]
       20 GETTABLEKS                       R2 R0 K10 ["Size"]
       22 SETTABLEKS                       R2 R1 K10 ["Size"]
       24 GETTABLEKS                       R2 R0 K11 ["Parent"]
       26 SETTABLEKS                       R2 R1 K11 ["Parent"]
       28 GETUPVAL                         R2 0
       29 SETTABLEKS                       R2 R1 K12 ["Color"]
       31 GETIMPORT                        R2 K16 [Enum.Material.Neon]
       33 SETTABLEKS                       R2 R1 K14 ["Material"]
       35 LOADK                            R2 K17 [0.5]
       36 SETTABLEKS                       R2 R1 K18 ["Transparency"]
       38 LOADK                            R4 K19 ["MeshPart"]
       39 NAMECALL                         R2 R1 K20 ["IsA"]
       41 CALL                             R2 2 1
       42 JUMPIFNOT                        R2 ; [+3]
       43 LOADK                            R2 K21 [""]
       44 SETTABLEKS                       R2 R1 K22 ["TextureID"]
       46 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Stylizer"]
        5 GETTABLEKS                       R2 R1 K2 ["SelectionColor"]
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          VAL R2
       11 NEWCLOSURE                       R4 P1
       12 CAPTURE                          VAL R2
       13 LOADK                            R7 K3 ["MeshPart"]
       14 NAMECALL                         R5 R0 K4 ["IsA"]
       16 CALL                             R5 2 1
       17 JUMPIFNOT                        R5 ; [+30]
       18 SETTABLEKS                       R2 R0 K5 ["Color"]
       20 GETIMPORT                        R5 K9 [Enum.Material.Neon]
       22 SETTABLEKS                       R5 R0 K7 ["Material"]
       24 LOADK                            R5 K10 [0.5]
       25 SETTABLEKS                       R5 R0 K11 ["Transparency"]
       27 LOADK                            R7 K3 ["MeshPart"]
       28 NAMECALL                         R5 R0 K4 ["IsA"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+3]
       32 LOADK                            R5 K12 [""]
       33 SETTABLEKS                       R5 R0 K13 ["TextureID"]
       35 SETTABLEKS                       R2 R0 K5 ["Color"]
       37 GETIMPORT                        R5 K9 [Enum.Material.Neon]
       39 SETTABLEKS                       R5 R0 K7 ["Material"]
       41 LOADK                            R5 K12 [""]
       42 SETTABLEKS                       R5 R0 K13 ["TextureID"]
       44 LOADK                            R5 K10 [0.5]
       45 SETTABLEKS                       R5 R0 K11 ["Transparency"]
       47 RETURN                           R0 0
       48 LOADK                            R7 K14 ["BasePart"]
       49 NAMECALL                         R5 R0 K4 ["IsA"]
       51 CALL                             R5 2 1
       52 JUMPIFNOT                        R5 ; [+68]
       53 GETUPVAL                         R5 1
       54 MOVE                             R6 R0
       55 CALL                             R5 1 1
       56 JUMPIFNOT                        R5 ; [+46]
       57 GETIMPORT                        R6 K17 [Instance.new]
       59 LOADK                            R7 K18 ["Part"]
       60 CALL                             R6 1 1
       61 LOADK                            R7 K19 ["SelectionPart"]
       62 SETTABLEKS                       R7 R6 K20 ["Name"]
       64 LOADB                            R7 1
       65 SETTABLEKS                       R7 R6 K21 ["Anchored"]
       67 LOADB                            R7 0
       68 SETTABLEKS                       R7 R6 K22 ["CanCollide"]
       70 GETTABLEKS                       R7 R0 K23 ["CFrame"]
       72 SETTABLEKS                       R7 R6 K23 ["CFrame"]
       74 LOADB                            R7 1
       75 SETTABLEKS                       R7 R6 K24 ["Locked"]
       77 GETTABLEKS                       R7 R0 K25 ["Size"]
       79 SETTABLEKS                       R7 R6 K25 ["Size"]
       81 GETTABLEKS                       R7 R0 K26 ["Parent"]
       83 SETTABLEKS                       R7 R6 K26 ["Parent"]
       85 SETTABLEKS                       R2 R6 K5 ["Color"]
       87 GETIMPORT                        R7 K9 [Enum.Material.Neon]
       89 SETTABLEKS                       R7 R6 K7 ["Material"]
       91 LOADK                            R7 K10 [0.5]
       92 SETTABLEKS                       R7 R6 K11 ["Transparency"]
       94 LOADK                            R9 K3 ["MeshPart"]
       95 NAMECALL                         R7 R6 K4 ["IsA"]
       97 CALL                             R7 2 1
       98 JUMPIFNOT                        R7 ; [+100]
       99 LOADK                            R7 K12 [""]
      100 SETTABLEKS                       R7 R6 K13 ["TextureID"]
      102 RETURN                           R0 0
      103 SETTABLEKS                       R2 R0 K5 ["Color"]
      105 GETIMPORT                        R6 K9 [Enum.Material.Neon]
      107 SETTABLEKS                       R6 R0 K7 ["Material"]
      109 LOADK                            R6 K10 [0.5]
      110 SETTABLEKS                       R6 R0 K11 ["Transparency"]
      112 LOADK                            R8 K3 ["MeshPart"]
      113 NAMECALL                         R6 R0 K4 ["IsA"]
      115 CALL                             R6 2 1
      116 JUMPIFNOT                        R6 ; [+82]
      117 LOADK                            R6 K12 [""]
      118 SETTABLEKS                       R6 R0 K13 ["TextureID"]
      120 RETURN                           R0 0
      121 LOADK                            R7 K27 ["Accoutrement"]
      122 NAMECALL                         R5 R0 K4 ["IsA"]
      124 CALL                             R5 2 1
      125 JUMPIFNOT                        R5 ; [+73]
      126 LOADK                            R7 K28 ["Handle"]
      127 NAMECALL                         R5 R0 K29 ["FindFirstChild"]
      129 CALL                             R5 2 1
      130 JUMPIFNOT                        R5 ; [+68]
      131 LOADK                            R8 K3 ["MeshPart"]
      132 NAMECALL                         R6 R5 K4 ["IsA"]
      134 CALL                             R6 2 1
      135 JUMPIFNOT                        R6 ; [+18]
      136 SETTABLEKS                       R2 R5 K5 ["Color"]
      138 GETIMPORT                        R6 K9 [Enum.Material.Neon]
      140 SETTABLEKS                       R6 R5 K7 ["Material"]
      142 LOADK                            R6 K10 [0.5]
      143 SETTABLEKS                       R6 R5 K11 ["Transparency"]
      145 LOADK                            R8 K3 ["MeshPart"]
      146 NAMECALL                         R6 R5 K4 ["IsA"]
      148 CALL                             R6 2 1
      149 JUMPIFNOT                        R6 ; [+49]
      150 LOADK                            R6 K12 [""]
      151 SETTABLEKS                       R6 R5 K13 ["TextureID"]
      153 RETURN                           R0 0
      154 GETIMPORT                        R6 K17 [Instance.new]
      156 LOADK                            R7 K18 ["Part"]
      157 CALL                             R6 1 1
      158 LOADK                            R7 K19 ["SelectionPart"]
      159 SETTABLEKS                       R7 R6 K20 ["Name"]
      161 LOADB                            R7 1
      162 SETTABLEKS                       R7 R6 K21 ["Anchored"]
      164 LOADB                            R7 0
      165 SETTABLEKS                       R7 R6 K22 ["CanCollide"]
      167 GETTABLEKS                       R7 R5 K23 ["CFrame"]
      169 SETTABLEKS                       R7 R6 K23 ["CFrame"]
      171 LOADB                            R7 1
      172 SETTABLEKS                       R7 R6 K24 ["Locked"]
      174 GETTABLEKS                       R7 R5 K25 ["Size"]
      176 SETTABLEKS                       R7 R6 K25 ["Size"]
      178 GETTABLEKS                       R7 R5 K26 ["Parent"]
      180 SETTABLEKS                       R7 R6 K26 ["Parent"]
      182 SETTABLEKS                       R2 R6 K5 ["Color"]
      184 GETIMPORT                        R7 K9 [Enum.Material.Neon]
      186 SETTABLEKS                       R7 R6 K7 ["Material"]
      188 LOADK                            R7 K10 [0.5]
      189 SETTABLEKS                       R7 R6 K11 ["Transparency"]
      191 LOADK                            R9 K3 ["MeshPart"]
      192 NAMECALL                         R7 R6 K4 ["IsA"]
      194 CALL                             R7 2 1
      195 JUMPIFNOT                        R7 ; [+3]
      196 LOADK                            R7 K12 [""]
      197 SETTABLEKS                       R7 R6 K13 ["TextureID"]
      199 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K0 ["props"]
        6 GETTABLEKS                       R1 R2 K1 ["Selection"]
        8 NAMECALL                         R2 R0 K2 ["Clone"]
       10 CALL                             R2 1 1
       11 MOVE                             R3 R1
       12 LOADNIL                          R4
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 JUMPIFNOT                        R7 ; [+11]
       16 GETUPVAL                         R9 0
       17 GETTABLEKS                       R8 R9 K3 ["getMatchingInstance"]
       19 MOVE                             R9 R2
       20 MOVE                             R10 R6
       21 CALL                             R8 2 1
       22 GETUPVAL                         R10 0
       23 GETTABLEKS                       R9 R10 K4 ["applySelectionEffect"]
       25 MOVE                             R10 R8
       26 CALL                             R9 1 0
       27 FORGLOOP                         R3 2 ; [-13]
       29 RETURN                           R2 1

PROTO_8:
        0 DUPCLOSURE                       R2 K0 [PROTO_0]
        1 SETTABLEKS                       R2 R0 K1 ["onViewModelLoaded"]
        3 NEWCLOSURE                       R2 P1
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R2 R0 K2 ["onSelectionChanged"]
        7 DUPCLOSURE                       R2 K3 [PROTO_2]
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R2 R0 K4 ["getMatchingInstance"]
       11 DUPCLOSURE                       R2 K5 [PROTO_3]
       12 NEWCLOSURE                       R3 P4
       13 CAPTURE                          VAL R0
       14 CAPTURE                          VAL R2
       15 SETTABLEKS                       R3 R0 K6 ["applySelectionEffect"]
       17 NEWCLOSURE                       R3 P5
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R3 R0 K7 ["setupAssetRenderModel"]
       21 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Character"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R0 K3 ["setupAssetRenderModel"]
        8 MOVE                             R5 R2
        9 CALL                             R4 1 1
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K4 ["LayoutOrderIterator"]
       13 GETTABLEKS                       R5 R6 K5 ["new"]
       15 CALL                             R5 0 1
       16 GETUPVAL                         R7 1
       17 GETTABLEKS                       R6 R7 K6 ["createFragment"]
       19 DUPTABLE                         R7 K8 [{"ViewPortPane"}]
       20 GETUPVAL                         R9 1
       21 GETTABLEKS                       R8 R9 K9 ["createElement"]
       23 GETUPVAL                         R9 2
       24 DUPTABLE                         R10 K17 [{"BackgroundColor3", "BackgroundTransparency", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Size"}]
       25 GETTABLEKS                       R11 R3 K18 ["ViewportBackgroundColor"]
       27 SETTABLEKS                       R11 R10 K10 ["BackgroundColor3"]
       29 LOADN                            R11 0
       30 SETTABLEKS                       R11 R10 K11 ["BackgroundTransparency"]
       32 NAMECALL                         R11 R5 K19 ["getNextOrder"]
       34 CALL                             R11 1 1
       35 SETTABLEKS                       R11 R10 K12 ["LayoutOrder"]
       37 GETIMPORT                        R11 K23 [Enum.FillDirection.Vertical]
       39 SETTABLEKS                       R11 R10 K13 ["Layout"]
       41 GETIMPORT                        R11 K25 [Enum.HorizontalAlignment.Left]
       43 SETTABLEKS                       R11 R10 K14 ["HorizontalAlignment"]
       45 GETIMPORT                        R11 K27 [Enum.VerticalAlignment.Top]
       47 SETTABLEKS                       R11 R10 K15 ["VerticalAlignment"]
       49 GETIMPORT                        R11 K29 [UDim2.new]
       51 LOADN                            R12 1
       52 LOADN                            R13 0
       53 LOADN                            R14 0
       54 GETTABLEKS                       R15 R3 K30 ["ViewportHeight"]
       56 CALL                             R11 4 1
       57 SETTABLEKS                       R11 R10 K16 ["Size"]
       59 DUPTABLE                         R11 K32 [{"Viewport"}]
       60 GETUPVAL                         R13 1
       61 GETTABLEKS                       R12 R13 K9 ["createElement"]
       63 GETUPVAL                         R13 3
       64 DUPTABLE                         R14 K39 [{"DisablePan", "DisableZoom", "FocusDirection", "Model", "OnViewModelLoaded", "RecenterModelOnUpdate", "Size"}]
       65 LOADB                            R15 1
       66 SETTABLEKS                       R15 R14 K33 ["DisablePan"]
       68 LOADB                            R15 1
       69 SETTABLEKS                       R15 R14 K34 ["DisableZoom"]
       71 LOADK                            R15 K40 [{0, 0, -1}]
       72 SETTABLEKS                       R15 R14 K35 ["FocusDirection"]
       74 SETTABLEKS                       R4 R14 K36 ["Model"]
       76 GETTABLEKS                       R15 R0 K41 ["onViewModelLoaded"]
       78 SETTABLEKS                       R15 R14 K37 ["OnViewModelLoaded"]
       80 LOADB                            R15 0
       81 SETTABLEKS                       R15 R14 K38 ["RecenterModelOnUpdate"]
       83 GETIMPORT                        R15 K43 [UDim2.fromScale]
       85 LOADN                            R16 1
       86 LOADN                            R17 1
       87 CALL                             R15 2 1
       88 SETTABLEKS                       R15 R14 K16 ["Size"]
       90 CALL                             R12 2 1
       91 SETTABLEKS                       R12 R11 K31 ["Viewport"]
       93 CALL                             R8 3 1
       94 SETTABLEKS                       R8 R7 K7 ["ViewPortPane"]
       96 CALL                             R6 1 -1
       97 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R0 K9 ["Src"]
       23 GETTABLEKS                       R3 R4 K10 ["Components"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R6 R3 K11 ["CharacterConversion"]
       29 GETTABLEKS                       R5 R6 K12 ["InstanceTree"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R1 K13 ["ContextServices"]
       34 GETTABLEKS                       R6 R1 K14 ["UI"]
       36 GETTABLEKS                       R7 R1 K15 ["Util"]
       38 GETTABLEKS                       R8 R6 K16 ["AssetRenderModel"]
       40 GETTABLEKS                       R9 R6 K17 ["Pane"]
       42 GETTABLEKS                       R10 R2 K18 ["PureComponent"]
       44 LOADK                            R12 K19 ["CharacterPreview"]
       45 NAMECALL                         R10 R10 K20 ["extend"]
       47 CALL                             R10 2 1
       48 DUPCLOSURE                       R11 K21 [PROTO_8]
       49 CAPTURE                          VAL R4
       50 SETTABLEKS                       R11 R10 K22 ["init"]
       52 DUPCLOSURE                       R11 K23 [PROTO_9]
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R8
       57 SETTABLEKS                       R11 R10 K24 ["render"]
       59 GETTABLEKS                       R11 R5 K25 ["withContext"]
       61 DUPTABLE                         R12 K27 [{"Stylizer"}]
       62 GETTABLEKS                       R13 R5 K26 ["Stylizer"]
       64 SETTABLEKS                       R13 R12 K26 ["Stylizer"]
       66 CALL                             R11 1 1
       67 MOVE                             R12 R10
       68 CALL                             R11 1 1
       69 MOVE                             R10 R11
       70 RETURN                           R10 1
