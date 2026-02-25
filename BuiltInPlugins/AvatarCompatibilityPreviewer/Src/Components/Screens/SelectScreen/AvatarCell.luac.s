PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Cell"]
        3 GETTABLEKS                       R0 R1 K1 ["Avatar"]
        5 NAMECALL                         R0 R0 K2 ["Clone"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R1 R0 K3 ["GetDescendants"]
       10 CALL                             R1 1 3
       11 FORGPREP                         R1
       12 LOADK                            R8 K4 ["LuaSourceContainer"]
       13 NAMECALL                         R6 R5 K5 ["IsA"]
       15 CALL                             R6 2 1
       16 JUMPIF                           R6 ; [+5]
       17 LOADK                            R8 K6 ["Sound"]
       18 NAMECALL                         R6 R5 K5 ["IsA"]
       20 CALL                             R6 2 1
       21 JUMPIFNOT                        R6 ; [+3]
       22 NAMECALL                         R6 R5 K7 ["Destroy"]
       24 CALL                             R6 1 0
       25 FORGLOOP                         R1 2 ; [-14]
       27 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NEWTABLE                         R2 0 1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["Cell"]
        6 GETTABLEKS                       R3 R4 K1 ["Avatar"]
        8 SETLIST                          R2 R3 1 [1]
       10 NAMECALL                         R0 R0 K2 ["Set"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 NAMECALL                         R1 R1 K1 ["get"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 1
        8 LOADK                            R4 K2 ["ImportPage"]
        9 NAMECALL                         R2 R2 K0 ["use"]
       11 CALL                             R2 2 1
       12 GETTABLEKS                       R3 R2 K3 ["Avatar"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K4 ["new"]
       17 CALL                             R4 0 1
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R5 R6 K5 ["useMemo"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R7 0 1
       25 GETTABLEKS                       R9 R0 K6 ["Cell"]
       27 GETTABLEKS                       R8 R9 K3 ["Avatar"]
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R6 R7 K7 ["createElement"]
       35 GETUPVAL                         R7 4
       36 DUPTABLE                         R8 K12 [{"AutomaticSize", "Position", "OnClick", "Size"}]
       37 GETIMPORT                        R9 K15 [Enum.AutomaticSize.XY]
       39 SETTABLEKS                       R9 R8 K8 ["AutomaticSize"]
       41 GETTABLEKS                       R9 R0 K9 ["Position"]
       43 SETTABLEKS                       R9 R8 K9 ["Position"]
       45 NEWCLOSURE                       R9 P1
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R9 R8 K10 ["OnClick"]
       50 GETTABLEKS                       R9 R0 K11 ["Size"]
       52 SETTABLEKS                       R9 R8 K11 ["Size"]
       54 NEWTABLE                         R9 0 1
       56 GETUPVAL                         R11 3
       57 GETTABLEKS                       R10 R11 K7 ["createElement"]
       59 GETUPVAL                         R11 5
       60 DUPTABLE                         R12 K19 [{"Layout", "Padding", "Spacing"}]
       61 GETIMPORT                        R13 K22 [Enum.FillDirection.Vertical]
       63 SETTABLEKS                       R13 R12 K16 ["Layout"]
       65 GETTABLEKS                       R13 R3 K23 ["InnerPadding"]
       67 SETTABLEKS                       R13 R12 K17 ["Padding"]
       69 GETTABLEKS                       R13 R3 K17 ["Padding"]
       71 SETTABLEKS                       R13 R12 K18 ["Spacing"]
       73 DUPTABLE                         R13 K26 [{"Preview", "Name"}]
       74 GETUPVAL                         R15 3
       75 GETTABLEKS                       R14 R15 K7 ["createElement"]
       77 GETUPVAL                         R15 6
       78 DUPTABLE                         R16 K34 [{"FocusDirection", "Model", "Static", "Ambient", "LayoutOrder", "LightColor", "LightDirection", "Size"}]
       79 GETTABLEKS                       R19 R5 K35 ["PrimaryPart"]
       81 GETTABLEKS                       R18 R19 K36 ["CFrame"]
       83 GETTABLEKS                       R17 R18 K37 ["LookVector"]
       85 SETTABLEKS                       R17 R16 K27 ["FocusDirection"]
       87 SETTABLEKS                       R5 R16 K28 ["Model"]
       89 LOADB                            R17 1
       90 SETTABLEKS                       R17 R16 K29 ["Static"]
       92 GETTABLEKS                       R17 R3 K38 ["PreviewAmbient"]
       94 SETTABLEKS                       R17 R16 K30 ["Ambient"]
       96 NAMECALL                         R17 R4 K39 ["getNextOrder"]
       98 CALL                             R17 1 1
       99 SETTABLEKS                       R17 R16 K31 ["LayoutOrder"]
      101 GETIMPORT                        R17 K41 [Color3.new]
      103 LOADN                            R18 1
      104 LOADN                            R19 1
      105 LOADN                            R20 1
      106 CALL                             R17 3 1
      107 SETTABLEKS                       R17 R16 K32 ["LightColor"]
      109 GETTABLEKS                       R20 R5 K35 ["PrimaryPart"]
      111 GETTABLEKS                       R19 R20 K36 ["CFrame"]
      113 GETTABLEKS                       R18 R19 K37 ["LookVector"]
      115 MINUS                            R17 R18
      116 SETTABLEKS                       R17 R16 K33 ["LightDirection"]
      118 GETIMPORT                        R17 K44 [UDim2.fromOffset]
      120 GETTABLEKS                       R18 R3 K45 ["IconSize"]
      122 GETTABLEKS                       R19 R3 K45 ["IconSize"]
      124 CALL                             R17 2 1
      125 SETTABLEKS                       R17 R16 K11 ["Size"]
      127 CALL                             R14 2 1
      128 SETTABLEKS                       R14 R13 K24 ["Preview"]
      130 GETUPVAL                         R15 3
      131 GETTABLEKS                       R14 R15 K7 ["createElement"]
      133 GETUPVAL                         R15 7
      134 DUPTABLE                         R16 K53 [{"LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      135 NAMECALL                         R17 R4 K39 ["getNextOrder"]
      137 CALL                             R17 1 1
      138 SETTABLEKS                       R17 R16 K31 ["LayoutOrder"]
      140 GETIMPORT                        R17 K54 [UDim2.new]
      142 LOADN                            R18 1
      143 LOADN                            R19 0
      144 LOADN                            R20 0
      145 GETTABLEKS                       R22 R3 K55 ["NameFontSize"]
      147 GETTABLEKS                       R23 R3 K56 ["NameLines"]
      149 MUL                              R21 R22 R23
      150 CALL                             R17 4 1
      151 SETTABLEKS                       R17 R16 K11 ["Size"]
      153 GETTABLEKS                       R19 R0 K6 ["Cell"]
      155 GETTABLEKS                       R18 R19 K3 ["Avatar"]
      157 GETTABLEKS                       R17 R18 K25 ["Name"]
      159 SETTABLEKS                       R17 R16 K46 ["Text"]
      161 GETTABLEKS                       R17 R3 K57 ["TitleColor"]
      163 SETTABLEKS                       R17 R16 K47 ["TextColor"]
      165 GETTABLEKS                       R17 R3 K55 ["NameFontSize"]
      167 SETTABLEKS                       R17 R16 K48 ["TextSize"]
      169 GETIMPORT                        R17 K59 [Enum.TextTruncate.AtEnd]
      171 SETTABLEKS                       R17 R16 K49 ["TextTruncate"]
      173 GETIMPORT                        R17 K61 [Enum.TextXAlignment.Left]
      175 SETTABLEKS                       R17 R16 K50 ["TextXAlignment"]
      177 GETIMPORT                        R17 K63 [Enum.TextYAlignment.Top]
      179 SETTABLEKS                       R17 R16 K51 ["TextYAlignment"]
      181 LOADB                            R17 1
      182 SETTABLEKS                       R17 R16 K52 ["TextWrapped"]
      184 CALL                             R14 2 1
      185 SETTABLEKS                       R14 R13 K25 ["Name"]
      187 CALL                             R10 3 -1
      188 SETLIST                          R9 R10 -1 [1]
      190 CALL                             R6 3 -1
      191 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Util"]
       27 GETTABLEKS                       R4 R5 K11 ["SelectionWrapper"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Resources"]
       36 GETTABLEKS                       R5 R6 K13 ["Theme"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R7 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R7 K14 ["Types"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K15 ["UI"]
       48 GETTABLEKS                       R7 R6 K16 ["AssetRenderModel"]
       50 GETTABLEKS                       R8 R6 K17 ["Button"]
       52 GETTABLEKS                       R9 R6 K18 ["Pane"]
       54 GETTABLEKS                       R10 R6 K19 ["TextLabel"]
       56 GETTABLEKS                       R12 R1 K20 ["ContextServices"]
       58 GETTABLEKS                       R11 R12 K21 ["Stylizer"]
       60 GETTABLEKS                       R13 R1 K10 ["Util"]
       62 GETTABLEKS                       R12 R13 K22 ["LayoutOrderIterator"]
       64 DUPCLOSURE                       R13 K23 [PROTO_2]
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R9
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R10
       73 RETURN                           R13 1
