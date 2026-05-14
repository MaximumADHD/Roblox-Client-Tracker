PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Icon"]
        2 GETTABLEKS                       R2 R0 K1 ["Key"]
        4 GETTABLEKS                       R3 R0 K2 ["Name"]
        6 GETTABLEKS                       R4 R0 K3 ["OnClick"]
        8 GETUPVAL                         R5 0
        9 CALL                             R5 0 1
       10 JUMPIFNOT                        R5 ; [+108]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K4 ["createElement"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R6 R6 K5 ["View"]
       17 DUPTABLE                         R7 K8 [{"Position", "tag"}]
       18 GETTABLEKS                       R8 R0 K6 ["Position"]
       20 SETTABLEKS                       R8 R7 K6 ["Position"]
       22 LOADK                            R8 K9 ["radius-small col align-y-center align-x-center size-2100-1500 gap-small"]
       23 SETTABLEKS                       R8 R7 K7 ["tag"]
       25 DUPTABLE                         R8 K12 [{"ButtonContainer", "Text"}]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K4 ["createElement"]
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R10 R10 K5 ["View"]
       32 DUPTABLE                         R11 K14 [{"tag", "LayoutOrder"}]
       33 NEWTABLE                         R12 2 0
       35 LOADB                            R13 1
       36 SETTABLEKS                       R13 R12 K15 ["auto-xy radius-small row align-y-center align-x-center"]
       38 GETTABLEKS                       R14 R0 K16 ["Selected"]
       40 JUMPIFEQ                         R2 R14 ; [+2]
       42 LOADB                            R13 0 +1
       43 LOADB                            R13 1
       44 SETTABLEKS                       R13 R12 K17 ["bg-action-standard"]
       46 SETTABLEKS                       R12 R11 K7 ["tag"]
       48 LOADN                            R12 1
       49 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
       51 DUPTABLE                         R12 K19 [{"Button"}]
       52 GETUPVAL                         R13 1
       53 GETTABLEKS                       R13 R13 K4 ["createElement"]
       55 GETUPVAL                         R14 2
       56 GETTABLEKS                       R14 R14 K5 ["View"]
       58 DUPTABLE                         R15 K21 [{"tag", "onActivated", "LayoutOrder"}]
       59 NEWTABLE                         R16 2 0
       61 LOADB                            R17 1
       62 SETTABLEKS                       R17 R16 K22 ["auto-xy radius-small align-y-center align-x-center row padding-xsmall"]
       64 GETTABLEKS                       R18 R0 K16 ["Selected"]
       66 JUMPIFEQ                         R2 R18 ; [+2]
       68 LOADB                            R17 0 +1
       69 LOADB                            R17 1
       70 SETTABLEKS                       R17 R16 K17 ["bg-action-standard"]
       72 SETTABLEKS                       R16 R15 K7 ["tag"]
       74 NEWCLOSURE                       R16 P0
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R2
       77 SETTABLEKS                       R16 R15 K20 ["onActivated"]
       79 LOADN                            R16 1
       80 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
       82 DUPTABLE                         R16 K24 [{"ButtonIcon"}]
       83 GETUPVAL                         R17 1
       84 GETTABLEKS                       R17 R17 K4 ["createElement"]
       86 GETUPVAL                         R18 2
       87 GETTABLEKS                       R18 R18 K25 ["Image"]
       89 MOVE                             R19 R1
       90 CALL                             R17 2 1
       91 SETTABLEKS                       R17 R16 K23 ["ButtonIcon"]
       93 CALL                             R13 3 1
       94 SETTABLEKS                       R13 R12 K18 ["Button"]
       96 CALL                             R9 3 1
       97 SETTABLEKS                       R9 R8 K10 ["ButtonContainer"]
       99 GETUPVAL                         R9 1
      100 GETTABLEKS                       R9 R9 K4 ["createElement"]
      102 GETUPVAL                         R10 2
      103 GETTABLEKS                       R10 R10 K11 ["Text"]
      105 DUPTABLE                         R11 K26 [{"LayoutOrder", "tag", "Text"}]
      106 LOADN                            R12 2
      107 SETTABLEKS                       R12 R11 K13 ["LayoutOrder"]
      109 LOADK                            R12 K27 ["text-caption-small"]
      110 SETTABLEKS                       R12 R11 K7 ["tag"]
      112 SETTABLEKS                       R3 R11 K11 ["Text"]
      114 CALL                             R9 2 1
      115 SETTABLEKS                       R9 R8 K11 ["Text"]
      117 CALL                             R5 3 -1
      118 RETURN                           R5 -1
      119 GETUPVAL                         R5 1
      120 GETTABLEKS                       R5 R5 K4 ["createElement"]
      122 GETUPVAL                         R6 3
      123 DUPTABLE                         R7 K31 [{"OnClick", "Position", "Size", "Style", "StyleModifier"}]
      124 NEWCLOSURE                       R8 P1
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R2
      127 SETTABLEKS                       R8 R7 K3 ["OnClick"]
      129 GETTABLEKS                       R8 R0 K6 ["Position"]
      131 SETTABLEKS                       R8 R7 K6 ["Position"]
      133 GETTABLEKS                       R8 R0 K28 ["Size"]
      135 SETTABLEKS                       R8 R7 K28 ["Size"]
      137 LOADK                            R8 K32 ["RoundSubtle"]
      138 SETTABLEKS                       R8 R7 K29 ["Style"]
      140 GETTABLEKS                       R9 R0 K16 ["Selected"]
      142 JUMPIFNOTEQ                      R2 R9 ; [+5]
      144 GETUPVAL                         R8 4
      145 GETTABLEKS                       R8 R8 K16 ["Selected"]
      147 JUMP                             ; [+1]
      148 LOADNIL                          R8
      149 SETTABLEKS                       R8 R7 K30 ["StyleModifier"]
      151 DUPTABLE                         R8 K34 [{"Pane"}]
      152 GETUPVAL                         R9 1
      153 GETTABLEKS                       R9 R9 K4 ["createElement"]
      155 GETUPVAL                         R10 5
      156 DUPTABLE                         R11 K39 [{"HorizontalAlignment", "Layout", "Padding", "Spacing"}]
      157 GETIMPORT                        R12 K42 [Enum.HorizontalAlignment.Center]
      159 SETTABLEKS                       R12 R11 K35 ["HorizontalAlignment"]
      161 GETIMPORT                        R12 K45 [Enum.FillDirection.Vertical]
      163 SETTABLEKS                       R12 R11 K36 ["Layout"]
      165 LOADN                            R12 2
      166 SETTABLEKS                       R12 R11 K37 ["Padding"]
      168 LOADN                            R12 2
      169 SETTABLEKS                       R12 R11 K38 ["Spacing"]
      171 DUPTABLE                         R12 K46 [{"Icon", "Text"}]
      172 GETUPVAL                         R13 1
      173 GETTABLEKS                       R13 R13 K4 ["createElement"]
      175 GETUPVAL                         R14 6
      176 MOVE                             R15 R1
      177 CALL                             R13 2 1
      178 SETTABLEKS                       R13 R12 K0 ["Icon"]
      180 GETUPVAL                         R13 1
      181 GETTABLEKS                       R13 R13 K4 ["createElement"]
      183 GETUPVAL                         R14 7
      184 DUPTABLE                         R15 K49 [{"AutomaticSize", "LayoutOrder", "Text", "TextSize"}]
      185 GETIMPORT                        R16 K51 [Enum.AutomaticSize.XY]
      187 SETTABLEKS                       R16 R15 K47 ["AutomaticSize"]
      189 LOADN                            R16 2
      190 SETTABLEKS                       R16 R15 K13 ["LayoutOrder"]
      192 SETTABLEKS                       R3 R15 K11 ["Text"]
      194 GETTABLEKS                       R16 R0 K48 ["TextSize"]
      196 SETTABLEKS                       R16 R15 K48 ["TextSize"]
      198 CALL                             R13 2 1
      199 SETTABLEKS                       R13 R12 K11 ["Text"]
      201 CALL                             R9 3 1
      202 SETTABLEKS                       R9 R8 K33 ["Pane"]
      204 CALL                             R5 3 -1
      205 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Flags"]
       34 GETTABLEKS                       R5 R5 K12 ["getFFlagTerrainEditorMigrateFoundationFonts"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K13 ["Util"]
       39 GETTABLEKS                       R5 R5 K14 ["StyleModifier"]
       41 GETTABLEKS                       R6 R2 K15 ["UI"]
       43 GETTABLEKS                       R7 R6 K16 ["Button"]
       45 GETTABLEKS                       R8 R6 K17 ["Pane"]
       47 GETTABLEKS                       R9 R6 K18 ["Image"]
       49 GETTABLEKS                       R10 R6 K19 ["TextLabel"]
       51 DUPCLOSURE                       R11 K20 [PROTO_2]
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R5
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R9
       59 CAPTURE                          VAL R10
       60 RETURN                           R11 1
