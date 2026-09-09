MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 MOVE                             R3 R2
       19 LOADK                            R4 K10 [".Explorer-UnderlaysRow"]
       20 NEWTABLE                         R5 0 0
       22 NEWTABLE                         R6 0 4
       24 MOVE                             R7 R2
       25 LOADK                            R8 K11 [">> .Explorer-UnderlaysRow-Corners"]
       26 DUPTABLE                         R9 K13 [{"Size"}]
       27 GETIMPORT                        R10 K16 [UDim2.fromScale]
       29 LOADN                            R11 1
       30 LOADN                            R12 1
       31 CALL                             R10 2 1
       32 SETTABLEKS                       R10 R9 K12 ["Size"]
       34 NEWTABLE                         R10 0 4
       36 MOVE                             R11 R2
       37 LOADK                            R12 K17 ["::UICorner"]
       38 DUPTABLE                         R13 K19 [{"CornerRadius"}]
       39 GETIMPORT                        R14 K22 [UDim.new]
       41 LOADN                            R15 0
       42 LOADN                            R16 6
       43 CALL                             R14 2 1
       44 SETTABLEKS                       R14 R13 K18 ["CornerRadius"]
       46 CALL                             R11 2 1
       47 MOVE                             R12 R2
       48 LOADK                            R13 K23 [".Explorer-SelectionSegment-Top"]
       49 DUPTABLE                         R14 K13 [{"Size"}]
       50 GETIMPORT                        R15 K16 [UDim2.fromScale]
       52 LOADN                            R16 1
       53 LOADN                            R17 2
       54 CALL                             R15 2 1
       55 SETTABLEKS                       R15 R14 K12 ["Size"]
       57 CALL                             R12 2 1
       58 MOVE                             R13 R2
       59 LOADK                            R14 K24 [".Explorer-SelectionSegment-Middle"]
       60 NEWTABLE                         R15 0 0
       62 NEWTABLE                         R16 0 1
       64 MOVE                             R17 R2
       65 LOADK                            R18 K17 ["::UICorner"]
       66 DUPTABLE                         R19 K19 [{"CornerRadius"}]
       67 GETIMPORT                        R20 K22 [UDim.new]
       69 LOADN                            R21 0
       70 LOADN                            R22 0
       71 CALL                             R20 2 1
       72 SETTABLEKS                       R20 R19 K18 ["CornerRadius"]
       74 CALL                             R17 2 -1
       75 SETLIST                          R16 R17 -1 [1]
       77 CALL                             R13 3 1
       78 MOVE                             R14 R2
       79 LOADK                            R15 K25 [".Explorer-SelectionSegment-Bottom"]
       80 DUPTABLE                         R16 K28 [{"AnchorPoint", "Position", "Size"}]
       81 GETIMPORT                        R17 K30 [Vector2.new]
       83 LOADN                            R18 0
       84 LOADN                            R19 1
       85 CALL                             R17 2 1
       86 SETTABLEKS                       R17 R16 K26 ["AnchorPoint"]
       88 GETIMPORT                        R17 K16 [UDim2.fromScale]
       90 LOADN                            R18 0
       91 LOADN                            R19 1
       92 CALL                             R17 2 1
       93 SETTABLEKS                       R17 R16 K27 ["Position"]
       95 GETIMPORT                        R17 K16 [UDim2.fromScale]
       97 LOADN                            R18 1
       98 LOADN                            R19 2
       99 CALL                             R17 2 1
      100 SETTABLEKS                       R17 R16 K12 ["Size"]
      102 CALL                             R14 2 -1
      103 SETLIST                          R10 R11 -1 [1]
      105 CALL                             R7 3 1
      106 MOVE                             R8 R2
      107 LOADK                            R9 K31 [">> .Explorer-UnderlaysRow-Background"]
      108 DUPTABLE                         R10 K34 [{["BackgroundTransparency"] = 1}]
      109 NEWTABLE                         R11 0 3
      111 MOVE                             R12 R2
      112 LOADK                            R13 K35 [".Explorer-HoveredKind-Hovered"]
      113 DUPTABLE                         R14 K39 [{["BackgroundColor3"] = "$RDLSemanticColorStatesHover", ["BackgroundTransparency"] = "$RDLSemanticColorStatesHoverTransparency"}]
      114 CALL                             R12 2 1
      115 MOVE                             R13 R2
      116 LOADK                            R14 K40 [".Explorer-SelectionKind-Selected"]
      117 DUPTABLE                         R15 K43 [{["BackgroundColor3"] = "$ExplorerSelected", ["BackgroundTransparency"] = 0}]
      118 CALL                             R13 2 1
      119 MOVE                             R14 R2
      120 LOADK                            R15 K44 [".Explorer-SelectionKind-ParentSelected"]
      121 DUPTABLE                         R16 K46 [{["BackgroundColor3"] = "$ExplorerSelected", ["BackgroundTransparency"] = 0.8}]
      122 CALL                             R14 2 -1
      123 SETLIST                          R11 R12 -1 [1]
      125 CALL                             R8 3 1
      126 MOVE                             R9 R2
      127 LOADK                            R10 K47 [">> .Explorer-UnderlaysRow-BackgroundOverlay"]
      128 DUPTABLE                         R11 K34 [{["BackgroundTransparency"] = 1}]
      129 NEWTABLE                         R12 0 1
      131 MOVE                             R13 R2
      132 LOADK                            R14 K48 [".Explorer-SelectionKind-ParentSelected .Explorer-HoveredKind-Hovered"]
      133 DUPTABLE                         R15 K50 [{["BackgroundColor3"] = "$RDLSemanticColorStatesHover", ["BackgroundTransparency"] = 0.94}]
      134 CALL                             R13 2 -1
      135 SETLIST                          R12 R13 -1 [1]
      137 CALL                             R9 3 1
      138 MOVE                             R10 R2
      139 LOADK                            R11 K51 [">> .Explorer-UnderlaysRow-Border"]
      140 DUPTABLE                         R12 K52 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      141 GETIMPORT                        R13 K30 [Vector2.new]
      143 LOADK                            R14 K53 [0.5]
      144 LOADK                            R15 K53 [0.5]
      145 CALL                             R13 2 1
      146 SETTABLEKS                       R13 R12 K26 ["AnchorPoint"]
      148 GETIMPORT                        R13 K16 [UDim2.fromScale]
      150 LOADK                            R14 K53 [0.5]
      151 LOADK                            R15 K53 [0.5]
      152 CALL                             R13 2 1
      153 SETTABLEKS                       R13 R12 K27 ["Position"]
      155 GETIMPORT                        R13 K54 [UDim2.new]
      157 LOADN                            R14 1
      158 LOADN                            R15 -5
      159 LOADN                            R16 1
      160 LOADN                            R17 -5
      161 CALL                             R13 4 1
      162 SETTABLEKS                       R13 R12 K12 ["Size"]
      164 NEWTABLE                         R13 0 3
      166 MOVE                             R14 R2
      167 LOADK                            R15 K17 ["::UICorner"]
      168 DUPTABLE                         R16 K19 [{"CornerRadius"}]
      169 GETIMPORT                        R17 K22 [UDim.new]
      171 LOADN                            R18 0
      172 LOADN                            R19 4
      173 CALL                             R17 2 1
      174 SETTABLEKS                       R17 R16 K18 ["CornerRadius"]
      176 CALL                             R14 2 1
      177 MOVE                             R15 R2
      178 LOADK                            R16 K55 [".Explorer-HoveredKind-HoveredWithin ::UIStroke"]
      179 DUPTABLE                         R17 K60 [{["Color"] = "$RDLSemanticColorStatesHover", ["Transparency"] = "$RDLSemanticColorStatesHoverTransparency", ["Thickness"] = 2.5}]
      180 CALL                             R15 2 1
      181 MOVE                             R16 R2
      182 LOADK                            R17 K61 [".Explorer-SelectedWithin ::UIStroke"]
      183 DUPTABLE                         R18 K64 [{["Color"] = "$RDLSemanticColorActionPrimaryBrandFill", ["Transparency"] = 0.84, ["Thickness"] = 2.5}]
      184 CALL                             R16 2 -1
      185 SETLIST                          R13 R14 -1 [1]
      187 CALL                             R10 3 -1
      188 SETLIST                          R6 R7 -1 [1]
      190 CALL                             R3 3 -1
      191 RETURN                           R3 -1
