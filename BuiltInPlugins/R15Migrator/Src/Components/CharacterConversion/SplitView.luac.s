PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETTABLEKS                       R7 R5 K0 ["Name"]
        8 SETTABLE                         R6 R1 R7
        9 FORGLOOP                         R2 2 ; [-4]
       11 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["previewModel"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 NEWTABLE                         R3 0 0
        9 MOVE                             R4 R0
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R9 R10 K2 ["GetLimbForR15Part"]
       16 GETTABLEKS                       R10 R7 K3 ["Name"]
       18 CALL                             R9 1 1
       19 JUMPIFNOT                        R9 ; [+2]
       20 LOADB                            R10 1
       21 SETTABLE                         R10 R3 R9
       22 FORGLOOP                         R4 1 ; [-10]
       24 GETUPVAL                         R4 0
       25 DUPTABLE                         R6 K6 [{"selectedOriginalParts", "selectedConvertedParts"}]
       26 SETTABLEKS                       R3 R6 K4 ["selectedOriginalParts"]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R7 R8 K7 ["mapToNames"]
       31 MOVE                             R8 R0
       32 CALL                             R7 1 1
       33 SETTABLEKS                       R7 R6 K5 ["selectedConvertedParts"]
       35 NAMECALL                         R4 R4 K8 ["setState"]
       37 CALL                             R4 2 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["convertedModel"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 NEWTABLE                         R3 0 0
        9 MOVE                             R4 R0
       10 LOADNIL                          R5
       11 LOADNIL                          R6
       12 FORGPREP                         R4
       13 GETUPVAL                         R10 1
       14 GETTABLEKS                       R9 R10 K2 ["GetBodyPartR6"]
       16 MOVE                             R10 R7
       17 CALL                             R9 1 1
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R10 R11 K3 ["GetR15PartsFromBodyPart"]
       21 MOVE                             R11 R9
       22 CALL                             R10 1 1
       23 JUMPIFNOT                        R10 ; [+8]
       24 MOVE                             R11 R10
       25 LOADNIL                          R12
       26 LOADNIL                          R13
       27 FORGPREP                         R11
       28 LOADB                            R16 1
       29 SETTABLE                         R16 R3 R15
       30 FORGLOOP                         R11 2 ; [-3]
       32 FORGLOOP                         R4 1 ; [-20]
       34 GETUPVAL                         R4 0
       35 DUPTABLE                         R6 K6 [{"selectedOriginalParts", "selectedConvertedParts"}]
       36 GETUPVAL                         R8 0
       37 GETTABLEKS                       R7 R8 K7 ["mapToNames"]
       39 MOVE                             R8 R0
       40 CALL                             R7 1 1
       41 SETTABLEKS                       R7 R6 K4 ["selectedOriginalParts"]
       43 SETTABLEKS                       R3 R6 K5 ["selectedConvertedParts"]
       45 NAMECALL                         R4 R4 K8 ["setState"]
       47 CALL                             R4 2 0
       48 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K2 [{"selectedOriginalParts", "selectedConvertedParts"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["selectedOriginalParts"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K1 ["selectedConvertedParts"]
        9 SETTABLEKS                       R1 R0 K3 ["state"]
       11 DUPCLOSURE                       R1 K4 [PROTO_0]
       12 SETTABLEKS                       R1 R0 K5 ["mapToNames"]
       14 NEWCLOSURE                       R1 P1
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R1 R0 K6 ["selectMatchingOriginalPart"]
       19 NEWCLOSURE                       R1 P2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 SETTABLEKS                       R1 R0 K7 ["selectMatchingConvertedParts"]
       24 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R2 R0 K1 ["props"]
        4 GETTABLEKS                       R3 R1 K2 ["selectedOriginalParts"]
        6 GETTABLEKS                       R4 R1 K3 ["selectedConvertedParts"]
        8 GETTABLEKS                       R5 R2 K4 ["previewModel"]
       10 GETTABLEKS                       R6 R2 K5 ["convertedModel"]
       12 GETTABLEKS                       R7 R2 K6 ["Stylizer"]
       14 GETTABLEKS                       R11 R7 K7 ["Arrow"]
       16 GETTABLEKS                       R10 R11 K8 ["Size"]
       18 GETTABLEKS                       R9 R10 K9 ["X"]
       20 GETTABLEKS                       R8 R9 K10 ["Offset"]
       22 GETTABLEKS                       R11 R7 K12 ["ArrowPadding"]
       24 MULK                             R10 R11 K11 [2]
       25 ADD                              R9 R8 R10
       26 GETUPVAL                         R12 0
       27 GETTABLEKS                       R11 R12 K13 ["LayoutOrderIterator"]
       29 GETTABLEKS                       R10 R11 K14 ["new"]
       31 CALL                             R10 0 1
       32 GETUPVAL                         R12 1
       33 GETTABLEKS                       R11 R12 K15 ["createElement"]
       35 GETUPVAL                         R12 2
       36 DUPTABLE                         R13 K21 [{"AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Size", "Spacing"}]
       37 GETIMPORT                        R14 K24 [Enum.AutomaticSize.Y]
       39 SETTABLEKS                       R14 R13 K16 ["AutomaticSize"]
       41 GETIMPORT                        R14 K27 [Enum.FillDirection.Horizontal]
       43 SETTABLEKS                       R14 R13 K17 ["Layout"]
       45 GETIMPORT                        R14 K29 [Enum.HorizontalAlignment.Left]
       47 SETTABLEKS                       R14 R13 K18 ["HorizontalAlignment"]
       49 GETIMPORT                        R14 K31 [Enum.VerticalAlignment.Center]
       51 SETTABLEKS                       R14 R13 K19 ["VerticalAlignment"]
       53 GETIMPORT                        R14 K34 [UDim2.fromScale]
       55 LOADN                            R15 1
       56 LOADN                            R16 0
       57 CALL                             R14 2 1
       58 SETTABLEKS                       R14 R13 K8 ["Size"]
       60 GETTABLEKS                       R14 R7 K35 ["HorizontalSpacing"]
       62 SETTABLEKS                       R14 R13 K20 ["Spacing"]
       64 DUPTABLE                         R14 K38 [{"Left", "ArrowFrame", "Right"}]
       65 GETUPVAL                         R16 1
       66 GETTABLEKS                       R15 R16 K15 ["createElement"]
       68 GETUPVAL                         R16 2
       69 DUPTABLE                         R17 K40 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "VerticalAlignment", "Spacing"}]
       70 GETIMPORT                        R18 K24 [Enum.AutomaticSize.Y]
       72 SETTABLEKS                       R18 R17 K16 ["AutomaticSize"]
       74 GETIMPORT                        R18 K29 [Enum.HorizontalAlignment.Left]
       76 SETTABLEKS                       R18 R17 K18 ["HorizontalAlignment"]
       78 GETIMPORT                        R18 K42 [Enum.FillDirection.Vertical]
       80 SETTABLEKS                       R18 R17 K17 ["Layout"]
       82 NAMECALL                         R18 R10 K43 ["getNextOrder"]
       84 CALL                             R18 1 1
       85 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
       87 GETIMPORT                        R18 K44 [UDim2.new]
       89 LOADN                            R19 0
       90 GETTABLEKS                       R20 R7 K45 ["Width"]
       92 LOADN                            R21 0
       93 LOADN                            R22 0
       94 CALL                             R18 4 1
       95 SETTABLEKS                       R18 R17 K8 ["Size"]
       97 GETIMPORT                        R18 K47 [Enum.VerticalAlignment.Top]
       99 SETTABLEKS                       R18 R17 K19 ["VerticalAlignment"]
      101 GETTABLEKS                       R18 R7 K48 ["VerticalSpacing"]
      103 SETTABLEKS                       R18 R17 K20 ["Spacing"]
      105 DUPTABLE                         R18 K50 [{"CharacterPreview"}]
      106 GETUPVAL                         R20 1
      107 GETTABLEKS                       R19 R20 K15 ["createElement"]
      109 GETUPVAL                         R20 3
      110 DUPTABLE                         R21 K54 [{"Character", "OnSelectionChange", "Selection"}]
      111 SETTABLEKS                       R5 R21 K51 ["Character"]
      113 GETTABLEKS                       R22 R0 K55 ["selectMatchingConvertedParts"]
      115 SETTABLEKS                       R22 R21 K52 ["OnSelectionChange"]
      117 SETTABLEKS                       R3 R21 K53 ["Selection"]
      119 CALL                             R19 2 1
      120 SETTABLEKS                       R19 R18 K49 ["CharacterPreview"]
      122 CALL                             R15 3 1
      123 SETTABLEKS                       R15 R14 K28 ["Left"]
      125 GETUPVAL                         R16 1
      126 GETTABLEKS                       R15 R16 K15 ["createElement"]
      128 LOADK                            R16 K56 ["Frame"]
      129 DUPTABLE                         R17 K58 [{"AutomaticSize", "BackgroundTransparency", "LayoutOrder", "Size"}]
      130 GETIMPORT                        R18 K24 [Enum.AutomaticSize.Y]
      132 SETTABLEKS                       R18 R17 K16 ["AutomaticSize"]
      134 LOADN                            R18 1
      135 SETTABLEKS                       R18 R17 K57 ["BackgroundTransparency"]
      137 NAMECALL                         R18 R10 K43 ["getNextOrder"]
      139 CALL                             R18 1 1
      140 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      142 GETIMPORT                        R18 K44 [UDim2.new]
      144 LOADN                            R19 0
      145 MOVE                             R20 R9
      146 LOADN                            R21 0
      147 LOADN                            R22 0
      148 CALL                             R18 4 1
      149 SETTABLEKS                       R18 R17 K8 ["Size"]
      151 DUPTABLE                         R18 K59 [{"Arrow"}]
      152 GETUPVAL                         R20 1
      153 GETTABLEKS                       R19 R20 K15 ["createElement"]
      155 GETUPVAL                         R20 4
      156 DUPTABLE                         R21 K66 [{"AnchorPoint", "Image", "ImageColor3", "ImageRectOffset", "ImageRectSize", "Position", "Size"}]
      157 GETIMPORT                        R22 K68 [Vector2.new]
      159 LOADK                            R23 K69 [0.5]
      160 LOADN                            R24 0
      161 CALL                             R22 2 1
      162 SETTABLEKS                       R22 R21 K60 ["AnchorPoint"]
      164 GETTABLEKS                       R23 R7 K7 ["Arrow"]
      166 GETTABLEKS                       R22 R23 K61 ["Image"]
      168 SETTABLEKS                       R22 R21 K61 ["Image"]
      170 GETTABLEKS                       R23 R7 K7 ["Arrow"]
      172 GETTABLEKS                       R22 R23 K70 ["Color"]
      174 SETTABLEKS                       R22 R21 K62 ["ImageColor3"]
      176 GETTABLEKS                       R23 R7 K7 ["Arrow"]
      178 GETTABLEKS                       R22 R23 K10 ["Offset"]
      180 SETTABLEKS                       R22 R21 K63 ["ImageRectOffset"]
      182 GETTABLEKS                       R23 R7 K7 ["Arrow"]
      184 GETTABLEKS                       R22 R23 K64 ["ImageRectSize"]
      186 SETTABLEKS                       R22 R21 K64 ["ImageRectSize"]
      188 GETIMPORT                        R22 K34 [UDim2.fromScale]
      190 LOADK                            R23 K69 [0.5]
      191 LOADN                            R24 0
      192 CALL                             R22 2 1
      193 SETTABLEKS                       R22 R21 K65 ["Position"]
      195 GETTABLEKS                       R23 R7 K7 ["Arrow"]
      197 GETTABLEKS                       R22 R23 K8 ["Size"]
      199 SETTABLEKS                       R22 R21 K8 ["Size"]
      201 CALL                             R19 2 1
      202 SETTABLEKS                       R19 R18 K7 ["Arrow"]
      204 CALL                             R15 3 1
      205 SETTABLEKS                       R15 R14 K36 ["ArrowFrame"]
      207 GETUPVAL                         R16 1
      208 GETTABLEKS                       R15 R16 K15 ["createElement"]
      210 GETUPVAL                         R16 2
      211 DUPTABLE                         R17 K40 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Size", "VerticalAlignment", "Spacing"}]
      212 GETIMPORT                        R18 K24 [Enum.AutomaticSize.Y]
      214 SETTABLEKS                       R18 R17 K16 ["AutomaticSize"]
      216 GETIMPORT                        R18 K29 [Enum.HorizontalAlignment.Left]
      218 SETTABLEKS                       R18 R17 K18 ["HorizontalAlignment"]
      220 GETIMPORT                        R18 K42 [Enum.FillDirection.Vertical]
      222 SETTABLEKS                       R18 R17 K17 ["Layout"]
      224 NAMECALL                         R18 R10 K43 ["getNextOrder"]
      226 CALL                             R18 1 1
      227 SETTABLEKS                       R18 R17 K39 ["LayoutOrder"]
      229 GETIMPORT                        R18 K44 [UDim2.new]
      231 LOADN                            R19 0
      232 GETTABLEKS                       R20 R7 K45 ["Width"]
      234 LOADN                            R21 0
      235 LOADN                            R22 0
      236 CALL                             R18 4 1
      237 SETTABLEKS                       R18 R17 K8 ["Size"]
      239 GETIMPORT                        R18 K47 [Enum.VerticalAlignment.Top]
      241 SETTABLEKS                       R18 R17 K19 ["VerticalAlignment"]
      243 GETTABLEKS                       R18 R7 K48 ["VerticalSpacing"]
      245 SETTABLEKS                       R18 R17 K20 ["Spacing"]
      247 DUPTABLE                         R18 K50 [{"CharacterPreview"}]
      248 GETUPVAL                         R20 1
      249 GETTABLEKS                       R19 R20 K15 ["createElement"]
      251 GETUPVAL                         R20 3
      252 DUPTABLE                         R21 K54 [{"Character", "OnSelectionChange", "Selection"}]
      253 SETTABLEKS                       R6 R21 K51 ["Character"]
      255 GETTABLEKS                       R22 R0 K71 ["selectMatchingOriginalPart"]
      257 SETTABLEKS                       R22 R21 K52 ["OnSelectionChange"]
      259 SETTABLEKS                       R4 R21 K53 ["Selection"]
      261 CALL                             R19 2 1
      262 SETTABLEKS                       R19 R18 K49 ["CharacterPreview"]
      264 CALL                             R15 3 1
      265 SETTABLEKS                       R15 R14 K37 ["Right"]
      267 CALL                             R11 3 -1
      268 RETURN                           R11 -1

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
       29 GETTABLEKS                       R5 R6 K12 ["Preview"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K9 ["Src"]
       36 GETTABLEKS                       R7 R8 K13 ["Modules"]
       38 GETTABLEKS                       R6 R7 K14 ["NpcManager"]
       40 CALL                             R5 1 1
       41 GETTABLEKS                       R6 R1 K15 ["ContextServices"]
       43 GETTABLEKS                       R7 R1 K16 ["UI"]
       45 GETTABLEKS                       R8 R1 K17 ["Util"]
       47 GETTABLEKS                       R9 R7 K18 ["Image"]
       49 GETTABLEKS                       R10 R7 K19 ["Pane"]
       51 GETTABLEKS                       R11 R2 K20 ["PureComponent"]
       53 LOADK                            R13 K21 ["CharacterSplitView"]
       54 NAMECALL                         R11 R11 K22 ["extend"]
       56 CALL                             R11 2 1
       57 DUPCLOSURE                       R12 K23 [PROTO_3]
       58 CAPTURE                          VAL R5
       59 SETTABLEKS                       R12 R11 K24 ["init"]
       61 DUPCLOSURE                       R12 K25 [PROTO_4]
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R2
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R9
       67 SETTABLEKS                       R12 R11 K26 ["render"]
       69 GETTABLEKS                       R12 R6 K27 ["withContext"]
       71 DUPTABLE                         R13 K29 [{"Stylizer"}]
       72 GETTABLEKS                       R14 R6 K28 ["Stylizer"]
       74 SETTABLEKS                       R14 R13 K28 ["Stylizer"]
       76 CALL                             R12 1 1
       77 MOVE                             R13 R11
       78 CALL                             R12 1 1
       79 MOVE                             R11 R12
       80 RETURN                           R11 1
