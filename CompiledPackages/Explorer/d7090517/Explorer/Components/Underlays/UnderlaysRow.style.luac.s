MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Explorer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
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
      108 DUPTABLE                         R10 K33 [{"BackgroundTransparency"}]
      109 LOADN                            R11 1
      110 SETTABLEKS                       R11 R10 K32 ["BackgroundTransparency"]
      112 NEWTABLE                         R11 0 3
      114 MOVE                             R12 R2
      115 LOADK                            R13 K34 [".Explorer-HoveredKind-Hovered"]
      116 DUPTABLE                         R14 K36 [{"BackgroundColor3", "BackgroundTransparency"}]
      117 LOADK                            R15 K37 ["$RDLSemanticColorStatesHover"]
      118 SETTABLEKS                       R15 R14 K35 ["BackgroundColor3"]
      120 LOADK                            R15 K38 ["$RDLSemanticColorStatesHoverTransparency"]
      121 SETTABLEKS                       R15 R14 K32 ["BackgroundTransparency"]
      123 CALL                             R12 2 1
      124 MOVE                             R13 R2
      125 LOADK                            R14 K39 [".Explorer-SelectionKind-Selected"]
      126 DUPTABLE                         R15 K36 [{"BackgroundColor3", "BackgroundTransparency"}]
      127 LOADK                            R16 K40 ["$ExplorerSelected"]
      128 SETTABLEKS                       R16 R15 K35 ["BackgroundColor3"]
      130 LOADN                            R16 0
      131 SETTABLEKS                       R16 R15 K32 ["BackgroundTransparency"]
      133 CALL                             R13 2 1
      134 MOVE                             R14 R2
      135 LOADK                            R15 K41 [".Explorer-SelectionKind-ParentSelected"]
      136 DUPTABLE                         R16 K36 [{"BackgroundColor3", "BackgroundTransparency"}]
      137 LOADK                            R17 K40 ["$ExplorerSelected"]
      138 SETTABLEKS                       R17 R16 K35 ["BackgroundColor3"]
      140 LOADK                            R17 K42 [0.8]
      141 SETTABLEKS                       R17 R16 K32 ["BackgroundTransparency"]
      143 CALL                             R14 2 -1
      144 SETLIST                          R11 R12 -1 [1]
      146 CALL                             R8 3 1
      147 MOVE                             R9 R2
      148 LOADK                            R10 K43 [">> .Explorer-UnderlaysRow-BackgroundOverlay"]
      149 DUPTABLE                         R11 K33 [{"BackgroundTransparency"}]
      150 LOADN                            R12 1
      151 SETTABLEKS                       R12 R11 K32 ["BackgroundTransparency"]
      153 NEWTABLE                         R12 0 1
      155 MOVE                             R13 R2
      156 LOADK                            R14 K44 [".Explorer-SelectionKind-ParentSelected .Explorer-HoveredKind-Hovered"]
      157 DUPTABLE                         R15 K36 [{"BackgroundColor3", "BackgroundTransparency"}]
      158 LOADK                            R16 K37 ["$RDLSemanticColorStatesHover"]
      159 SETTABLEKS                       R16 R15 K35 ["BackgroundColor3"]
      161 LOADK                            R16 K45 [0.94]
      162 SETTABLEKS                       R16 R15 K32 ["BackgroundTransparency"]
      164 CALL                             R13 2 -1
      165 SETLIST                          R12 R13 -1 [1]
      167 CALL                             R9 3 1
      168 MOVE                             R10 R2
      169 LOADK                            R11 K46 [">> .Explorer-UnderlaysRow-Border"]
      170 DUPTABLE                         R12 K47 [{"AnchorPoint", "BackgroundTransparency", "Position", "Size"}]
      171 GETIMPORT                        R13 K30 [Vector2.new]
      173 LOADK                            R14 K48 [0.5]
      174 LOADK                            R15 K48 [0.5]
      175 CALL                             R13 2 1
      176 SETTABLEKS                       R13 R12 K26 ["AnchorPoint"]
      178 LOADN                            R13 1
      179 SETTABLEKS                       R13 R12 K32 ["BackgroundTransparency"]
      181 GETIMPORT                        R13 K16 [UDim2.fromScale]
      183 LOADK                            R14 K48 [0.5]
      184 LOADK                            R15 K48 [0.5]
      185 CALL                             R13 2 1
      186 SETTABLEKS                       R13 R12 K27 ["Position"]
      188 GETIMPORT                        R13 K49 [UDim2.new]
      190 LOADN                            R14 1
      191 LOADN                            R15 251
      192 LOADN                            R16 1
      193 LOADN                            R17 251
      194 CALL                             R13 4 1
      195 SETTABLEKS                       R13 R12 K12 ["Size"]
      197 NEWTABLE                         R13 0 3
      199 MOVE                             R14 R2
      200 LOADK                            R15 K17 ["::UICorner"]
      201 DUPTABLE                         R16 K19 [{"CornerRadius"}]
      202 GETIMPORT                        R17 K22 [UDim.new]
      204 LOADN                            R18 0
      205 LOADN                            R19 4
      206 CALL                             R17 2 1
      207 SETTABLEKS                       R17 R16 K18 ["CornerRadius"]
      209 CALL                             R14 2 1
      210 MOVE                             R15 R2
      211 LOADK                            R16 K50 [".Explorer-HoveredKind-HoveredWithin ::UIStroke"]
      212 DUPTABLE                         R17 K54 [{"Color", "Transparency", "Thickness"}]
      213 LOADK                            R18 K37 ["$RDLSemanticColorStatesHover"]
      214 SETTABLEKS                       R18 R17 K51 ["Color"]
      216 LOADK                            R18 K38 ["$RDLSemanticColorStatesHoverTransparency"]
      217 SETTABLEKS                       R18 R17 K52 ["Transparency"]
      219 LOADK                            R18 K55 [2.5]
      220 SETTABLEKS                       R18 R17 K53 ["Thickness"]
      222 CALL                             R15 2 1
      223 MOVE                             R16 R2
      224 LOADK                            R17 K56 [".Explorer-SelectedWithin ::UIStroke"]
      225 DUPTABLE                         R18 K54 [{"Color", "Transparency", "Thickness"}]
      226 LOADK                            R19 K57 ["$RDLSemanticColorActionPrimaryBrandFill"]
      227 SETTABLEKS                       R19 R18 K51 ["Color"]
      229 LOADK                            R19 K58 [0.84]
      230 SETTABLEKS                       R19 R18 K52 ["Transparency"]
      232 LOADK                            R19 K55 [2.5]
      233 SETTABLEKS                       R19 R18 K53 ["Thickness"]
      235 CALL                             R16 2 -1
      236 SETLIST                          R13 R14 -1 [1]
      238 CALL                             R10 3 -1
      239 SETLIST                          R6 R7 -1 [1]
      241 CALL                             R3 3 -1
      242 RETURN                           R3 -1
