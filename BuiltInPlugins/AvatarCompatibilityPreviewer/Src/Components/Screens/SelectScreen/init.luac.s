PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEN                        R0 R1 1
        2 GETTABLEKS                       R2 R0 K0 ["Name"]
        4 LOADK                            R3 K1 ["_Geo"]
        5 CONCAT                           R1 R2 R3
        6 SETTABLEKS                       R1 R0 K0 ["Name"]
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["selectScreenChoice"]
        2 LOADK                            R3 K1 ["CurrentPlace"]
        3 NAMECALL                         R0 R0 K2 ["report"]
        5 CALL                             R0 3 0
        6 GETUPVAL                         R0 1
        7 LOADK                            R1 K1 ["CurrentPlace"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["use"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 1
        5 NAMECALL                         R1 R1 K0 ["use"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 2
        9 LOADK                            R4 K1 ["SelectScreen"]
       10 NAMECALL                         R2 R2 K0 ["use"]
       12 CALL                             R2 2 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R3 R4 K2 ["useState"]
       16 LOADNIL                          R4
       17 CALL                             R3 1 2
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R5 R6 K3 ["useCallback"]
       21 NEWCLOSURE                       R6 P0
       22 CAPTURE                          VAL R4
       23 NEWTABLE                         R7 0 0
       25 CALL                             R5 2 1
       26 GETUPVAL                         R6 4
       27 CALL                             R6 0 1
       28 JUMPIFNOTEQKS                    R3 K4 ["CurrentPlace"] ; [+10]
       30 GETUPVAL                         R8 3
       31 GETTABLEKS                       R7 R8 K5 ["createElement"]
       33 GETUPVAL                         R8 5
       34 DUPTABLE                         R9 K7 [{"GoBack"}]
       35 SETTABLEKS                       R5 R9 K6 ["GoBack"]
       37 CALL                             R7 2 -1
       38 RETURN                           R7 -1
       39 GETUPVAL                         R8 6
       40 GETTABLEKS                       R7 R8 K8 ["new"]
       42 CALL                             R7 0 1
       43 LENGTH                           R9 R6
       44 LOADN                            R10 1
       45 JUMPIFLE                         R10 R9 ; [+2]
       47 LOADB                            R8 0 +1
       48 LOADB                            R8 1
       49 GETUPVAL                         R10 3
       50 GETTABLEKS                       R9 R10 K5 ["createElement"]
       52 GETUPVAL                         R10 7
       53 DUPTABLE                         R11 K13 [{"Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment"}]
       54 GETIMPORT                        R12 K17 [Enum.FillDirection.Vertical]
       56 SETTABLEKS                       R12 R11 K9 ["Layout"]
       58 GETTABLEKS                       R12 R2 K10 ["Spacing"]
       60 SETTABLEKS                       R12 R11 K10 ["Spacing"]
       62 GETIMPORT                        R12 K19 [Enum.HorizontalAlignment.Center]
       64 SETTABLEKS                       R12 R11 K11 ["HorizontalAlignment"]
       66 GETIMPORT                        R12 K20 [Enum.VerticalAlignment.Center]
       68 SETTABLEKS                       R12 R11 K12 ["VerticalAlignment"]
       70 DUPTABLE                         R12 K22 [{"Buttons"}]
       71 GETUPVAL                         R14 3
       72 GETTABLEKS                       R13 R14 K5 ["createElement"]
       74 GETUPVAL                         R14 7
       75 DUPTABLE                         R15 K25 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
       76 GETIMPORT                        R16 K27 [Enum.AutomaticSize.XY]
       78 SETTABLEKS                       R16 R15 K23 ["AutomaticSize"]
       80 GETIMPORT                        R16 K17 [Enum.FillDirection.Vertical]
       82 SETTABLEKS                       R16 R15 K9 ["Layout"]
       84 GETTABLEKS                       R16 R2 K10 ["Spacing"]
       86 SETTABLEKS                       R16 R15 K10 ["Spacing"]
       88 GETIMPORT                        R16 K19 [Enum.HorizontalAlignment.Center]
       90 SETTABLEKS                       R16 R15 K11 ["HorizontalAlignment"]
       92 NAMECALL                         R16 R7 K28 ["getNextOrder"]
       94 CALL                             R16 1 1
       95 SETTABLEKS                       R16 R15 K24 ["LayoutOrder"]
       97 DUPTABLE                         R16 K30 [{"AddSelected", "CurrentPlace"}]
       98 GETUPVAL                         R18 3
       99 GETTABLEKS                       R17 R18 K5 ["createElement"]
      101 GETUPVAL                         R18 8
      102 DUPTABLE                         R19 K35 [{"AutomaticSize", "LayoutOrder", "OnClick", "Size", "Text", "TooltipText"}]
      103 GETIMPORT                        R20 K37 [Enum.AutomaticSize.X]
      105 SETTABLEKS                       R20 R19 K23 ["AutomaticSize"]
      107 NAMECALL                         R20 R7 K28 ["getNextOrder"]
      109 CALL                             R20 1 1
      110 SETTABLEKS                       R20 R19 K24 ["LayoutOrder"]
      112 JUMPIFNOT                        R8 ; [+3]
      113 NEWCLOSURE                       R20 P1
      114 CAPTURE                          VAL R6
      115 JUMP                             ; [+1]
      116 LOADNIL                          R20
      117 SETTABLEKS                       R20 R19 K31 ["OnClick"]
      119 GETIMPORT                        R20 K40 [UDim2.fromOffset]
      121 LOADN                            R21 0
      122 GETTABLEKS                       R22 R2 K41 ["ButtonHeight"]
      124 CALL                             R20 2 1
      125 SETTABLEKS                       R20 R19 K32 ["Size"]
      127 LOADK                            R22 K1 ["SelectScreen"]
      128 LOADK                            R23 K29 ["AddSelected"]
      129 NAMECALL                         R20 R1 K42 ["getText"]
      131 CALL                             R20 3 1
      132 SETTABLEKS                       R20 R19 K33 ["Text"]
      134 JUMPIF                           R8 ; [+6]
      135 LOADK                            R22 K1 ["SelectScreen"]
      136 LOADK                            R23 K43 ["AddSelectedTooltip"]
      137 NAMECALL                         R20 R1 K42 ["getText"]
      139 CALL                             R20 3 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R20
      142 SETTABLEKS                       R20 R19 K34 ["TooltipText"]
      144 CALL                             R17 2 1
      145 SETTABLEKS                       R17 R16 K29 ["AddSelected"]
      147 GETUPVAL                         R18 3
      148 GETTABLEKS                       R17 R18 K5 ["createElement"]
      150 GETUPVAL                         R18 8
      151 DUPTABLE                         R19 K44 [{"AutomaticSize", "LayoutOrder", "OnClick", "Size", "Text"}]
      152 GETIMPORT                        R20 K37 [Enum.AutomaticSize.X]
      154 SETTABLEKS                       R20 R19 K23 ["AutomaticSize"]
      156 NAMECALL                         R20 R7 K28 ["getNextOrder"]
      158 CALL                             R20 1 1
      159 SETTABLEKS                       R20 R19 K24 ["LayoutOrder"]
      161 NEWCLOSURE                       R20 P2
      162 CAPTURE                          VAL R0
      163 CAPTURE                          VAL R4
      164 SETTABLEKS                       R20 R19 K31 ["OnClick"]
      166 GETIMPORT                        R20 K40 [UDim2.fromOffset]
      168 LOADN                            R21 0
      169 GETTABLEKS                       R22 R2 K41 ["ButtonHeight"]
      171 CALL                             R20 2 1
      172 SETTABLEKS                       R20 R19 K32 ["Size"]
      174 LOADK                            R22 K1 ["SelectScreen"]
      175 LOADK                            R23 K45 ["BrowseCurrentPlace"]
      176 NAMECALL                         R20 R1 K42 ["getText"]
      178 CALL                             R20 3 1
      179 SETTABLEKS                       R20 R19 K33 ["Text"]
      181 CALL                             R17 2 1
      182 SETTABLEKS                       R17 R16 K4 ["CurrentPlace"]
      184 CALL                             R13 3 1
      185 SETTABLEKS                       R13 R12 K21 ["Buttons"]
      187 CALL                             R9 3 -1
      188 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R3 K1 [script]
       11 GETTABLEKS                       R2 R3 K6 ["CurrentPlacePage"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K7 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Resources"]
       34 GETTABLEKS                       R5 R6 K12 ["Theme"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K10 ["Src"]
       41 GETTABLEKS                       R7 R8 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R7 K14 ["useSelection"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K15 ["UI"]
       48 GETTABLEKS                       R7 R6 K16 ["IconButton"]
       50 GETTABLEKS                       R8 R6 K17 ["Pane"]
       52 GETTABLEKS                       R10 R2 K18 ["ContextServices"]
       54 GETTABLEKS                       R9 R10 K19 ["Analytics"]
       56 GETTABLEKS                       R11 R2 K18 ["ContextServices"]
       58 GETTABLEKS                       R10 R11 K20 ["Localization"]
       60 GETTABLEKS                       R12 R2 K18 ["ContextServices"]
       62 GETTABLEKS                       R11 R12 K21 ["Stylizer"]
       64 GETTABLEKS                       R13 R2 K22 ["Util"]
       66 GETTABLEKS                       R12 R13 K23 ["LayoutOrderIterator"]
       68 DUPCLOSURE                       R13 K24 [PROTO_3]
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R5
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R12
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R7
       78 RETURN                           R13 1
