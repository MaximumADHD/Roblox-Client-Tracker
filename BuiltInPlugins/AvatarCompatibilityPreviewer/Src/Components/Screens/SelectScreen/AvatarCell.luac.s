PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Cell"]
        3 GETTABLEKS                       R0 R0 K1 ["Avatar"]
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
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K0 ["Cell"]
        6 GETTABLEKS                       R3 R3 K1 ["Avatar"]
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
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K4 ["new"]
       17 CALL                             R4 0 1
       18 GETUPVAL                         R5 3
       19 GETTABLEKS                       R5 R5 K5 ["useMemo"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          VAL R0
       23 NEWTABLE                         R7 0 1
       25 GETTABLEKS                       R8 R0 K6 ["Cell"]
       27 GETTABLEKS                       R8 R8 K3 ["Avatar"]
       29 SETLIST                          R7 R8 1 [1]
       31 CALL                             R5 2 1
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K7 ["createElement"]
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
       56 GETUPVAL                         R10 3
       57 GETTABLEKS                       R10 R10 K7 ["createElement"]
       59 GETUPVAL                         R11 5
       60 DUPTABLE                         R12 K19 [{"Layout", "Padding", "Spacing"}]
       61 GETIMPORT                        R13 K22 [Enum.FillDirection.Vertical]
       63 SETTABLEKS                       R13 R12 K16 ["Layout"]
       65 GETTABLEKS                       R13 R3 K23 ["InnerPadding"]
       67 SETTABLEKS                       R13 R12 K17 ["Padding"]
       69 GETTABLEKS                       R13 R3 K17 ["Padding"]
       71 SETTABLEKS                       R13 R12 K18 ["Spacing"]
       73 DUPTABLE                         R13 K26 [{"Preview", "Name"}]
       74 GETUPVAL                         R14 3
       75 GETTABLEKS                       R14 R14 K7 ["createElement"]
       77 GETUPVAL                         R15 6
       78 DUPTABLE                         R16 K35 [{["FocusDirection"], ["Model"], ["Static"] = True, ["Ambient"], ["LayoutOrder"], ["LightColor"], ["LightDirection"], ["Size"]}]
       79 GETTABLEKS                       R17 R5 K36 ["PrimaryPart"]
       81 GETTABLEKS                       R17 R17 K37 ["CFrame"]
       83 GETTABLEKS                       R17 R17 K38 ["LookVector"]
       85 SETTABLEKS                       R17 R16 K27 ["FocusDirection"]
       87 SETTABLEKS                       R5 R16 K28 ["Model"]
       89 GETTABLEKS                       R17 R3 K39 ["PreviewAmbient"]
       91 SETTABLEKS                       R17 R16 K31 ["Ambient"]
       93 NAMECALL                         R17 R4 K40 ["getNextOrder"]
       95 CALL                             R17 1 1
       96 SETTABLEKS                       R17 R16 K32 ["LayoutOrder"]
       98 GETIMPORT                        R17 K42 [Color3.new]
      100 LOADN                            R18 1
      101 LOADN                            R19 1
      102 LOADN                            R20 1
      103 CALL                             R17 3 1
      104 SETTABLEKS                       R17 R16 K33 ["LightColor"]
      106 GETTABLEKS                       R18 R5 K36 ["PrimaryPart"]
      108 GETTABLEKS                       R18 R18 K37 ["CFrame"]
      110 GETTABLEKS                       R18 R18 K38 ["LookVector"]
      112 MINUS                            R17 R18
      113 SETTABLEKS                       R17 R16 K34 ["LightDirection"]
      115 GETIMPORT                        R17 K45 [UDim2.fromOffset]
      117 GETTABLEKS                       R18 R3 K46 ["IconSize"]
      119 GETTABLEKS                       R19 R3 K46 ["IconSize"]
      121 CALL                             R17 2 1
      122 SETTABLEKS                       R17 R16 K11 ["Size"]
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K24 ["Preview"]
      127 GETUPVAL                         R14 3
      128 GETTABLEKS                       R14 R14 K7 ["createElement"]
      130 GETUPVAL                         R15 7
      131 DUPTABLE                         R16 K54 [{["LayoutOrder"], ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = True}]
      132 NAMECALL                         R17 R4 K40 ["getNextOrder"]
      134 CALL                             R17 1 1
      135 SETTABLEKS                       R17 R16 K32 ["LayoutOrder"]
      137 GETIMPORT                        R17 K55 [UDim2.new]
      139 LOADN                            R18 1
      140 LOADN                            R19 0
      141 LOADN                            R20 0
      142 GETTABLEKS                       R22 R3 K56 ["NameFontSize"]
      144 GETTABLEKS                       R23 R3 K57 ["NameLines"]
      146 MUL                              R21 R22 R23
      147 CALL                             R17 4 1
      148 SETTABLEKS                       R17 R16 K11 ["Size"]
      150 GETTABLEKS                       R17 R0 K6 ["Cell"]
      152 GETTABLEKS                       R17 R17 K3 ["Avatar"]
      154 GETTABLEKS                       R17 R17 K25 ["Name"]
      156 SETTABLEKS                       R17 R16 K47 ["Text"]
      158 GETTABLEKS                       R17 R3 K58 ["TitleColor"]
      160 SETTABLEKS                       R17 R16 K48 ["TextColor"]
      162 GETTABLEKS                       R17 R3 K56 ["NameFontSize"]
      164 SETTABLEKS                       R17 R16 K49 ["TextSize"]
      166 GETIMPORT                        R17 K60 [Enum.TextTruncate.AtEnd]
      168 SETTABLEKS                       R17 R16 K50 ["TextTruncate"]
      170 GETIMPORT                        R17 K62 [Enum.TextXAlignment.Left]
      172 SETTABLEKS                       R17 R16 K51 ["TextXAlignment"]
      174 GETIMPORT                        R17 K64 [Enum.TextYAlignment.Top]
      176 SETTABLEKS                       R17 R16 K52 ["TextYAlignment"]
      178 CALL                             R14 2 1
      179 SETTABLEKS                       R14 R13 K25 ["Name"]
      181 CALL                             R10 3 -1
      182 SETLIST                          R9 R10 -1 [1]
      184 CALL                             R6 3 -1
      185 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["SelectionWrapper"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Resources"]
       36 GETTABLEKS                       R5 R5 K13 ["Theme"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Types"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K15 ["UI"]
       48 GETTABLEKS                       R7 R6 K16 ["AssetRenderModel"]
       50 GETTABLEKS                       R8 R6 K17 ["Button"]
       52 GETTABLEKS                       R9 R6 K18 ["Pane"]
       54 GETTABLEKS                       R10 R6 K19 ["TextLabel"]
       56 GETTABLEKS                       R11 R1 K20 ["ContextServices"]
       58 GETTABLEKS                       R11 R11 K21 ["Stylizer"]
       60 GETTABLEKS                       R12 R1 K10 ["Util"]
       62 GETTABLEKS                       R12 R12 K22 ["LayoutOrderIterator"]
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
