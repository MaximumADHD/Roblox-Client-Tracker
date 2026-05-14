PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["FromText"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Conversions"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R5 R5 K3 ["PartsKey"]
       10 GETTABLE                         R3 R4 R5
       11 NEWTABLE                         R4 0 0
       13 GETTABLE                         R5 R3 R2
       14 JUMPIF                           R5 ; [+1]
       15 RETURN                           R0 0
       16 MOVE                             R6 R5
       17 LOADNIL                          R7
       18 LOADNIL                          R8
       19 FORGPREP                         R6
       20 LOADB                            R11 1
       21 SETTABLE                         R11 R4 R10
       22 FORGLOOP                         R6 2 ; [-3]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R6 R6 K4 ["Dictionary"]
       27 GETTABLEKS                       R6 R6 K5 ["keys"]
       29 MOVE                             R7 R4
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R0 K6 ["toItems"]
       33 GETIMPORT                        R6 K9 [table.sort]
       35 GETTABLEKS                       R7 R0 K6 ["toItems"]
       37 CALL                             R6 1 0
       38 RETURN                           R0 0

PROTO_1:
        0 MOVE                             R3 R2
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 FORGPREP                         R3
        4 JUMPIFNOTEQ                      R7 R1 ; [+2]
        6 RETURN                           R6 1
        7 FORGLOOP                         R3 2 ; [-4]
        9 LOADNIL                          R3
       10 RETURN                           R3 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["Enabled"]
        5 GETTABLEKS                       R4 R2 K2 ["FromText"]
        7 GETTABLEKS                       R5 R2 K3 ["Key"]
        9 GETTABLEKS                       R6 R2 K4 ["UpdateReplaceRules"]
       11 MOVE                             R7 R5
       12 MOVE                             R8 R4
       13 MOVE                             R9 R0
       14 MOVE                             R10 R3
       15 CALL                             R6 4 0
       16 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        5 GETTABLEKS                       R2 R0 K2 ["FromText"]
        7 GETTABLEKS                       R3 R0 K3 ["ToText"]
        9 GETTABLEKS                       R4 R0 K4 ["Key"]
       11 GETTABLEKS                       R5 R0 K5 ["UpdateReplaceRules"]
       13 MOVE                             R6 R4
       14 MOVE                             R7 R2
       15 MOVE                             R8 R3
       16 NOT                              R9 R1
       17 CALL                             R5 4 0
       18 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["buildItems"]
        2 CALL                             R1 1 0
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K1 ["onToSelected"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K2 ["onChecked"]
       11 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["FromText"]
        4 GETTABLEKS                       R3 R1 K2 ["ToText"]
        6 GETTABLEKS                       R4 R1 K3 ["Enabled"]
        8 GETTABLEKS                       R5 R1 K4 ["LayoutOrder"]
       10 GETTABLEKS                       R6 R1 K5 ["Size"]
       12 GETTABLEKS                       R7 R1 K6 ["Position"]
       14 GETTABLEKS                       R8 R1 K7 ["Selectable"]
       16 GETTABLEKS                       R9 R1 K8 ["Stylizer"]
       18 GETTABLEKS                       R10 R1 K9 ["Localization"]
       20 GETUPVAL                         R11 0
       21 GETTABLEKS                       R11 R11 K10 ["new"]
       23 CALL                             R11 0 1
       24 GETUPVAL                         R12 1
       25 GETTABLEKS                       R12 R12 K11 ["createElement"]
       27 GETUPVAL                         R13 2
       28 DUPTABLE                         R14 K12 [{"Size", "Position", "LayoutOrder"}]
       29 SETTABLEKS                       R6 R14 K5 ["Size"]
       31 SETTABLEKS                       R7 R14 K6 ["Position"]
       33 SETTABLEKS                       R5 R14 K4 ["LayoutOrder"]
       35 DUPTABLE                         R15 K14 [{"Container"}]
       36 GETUPVAL                         R16 1
       37 GETTABLEKS                       R16 R16 K11 ["createElement"]
       39 GETUPVAL                         R17 2
       40 DUPTABLE                         R18 K22 [{"Position", "AnchorPoint", "Size", "AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
       41 GETIMPORT                        R19 K25 [UDim2.fromScale]
       43 LOADK                            R20 K26 [0.5]
       44 LOADK                            R21 K26 [0.5]
       45 CALL                             R19 2 1
       46 SETTABLEKS                       R19 R18 K6 ["Position"]
       48 GETIMPORT                        R19 K28 [Vector2.new]
       50 LOADK                            R20 K26 [0.5]
       51 LOADK                            R21 K26 [0.5]
       52 CALL                             R19 2 1
       53 SETTABLEKS                       R19 R18 K15 ["AnchorPoint"]
       55 GETIMPORT                        R19 K29 [UDim2.new]
       57 LOADN                            R20 0
       58 LOADN                            R21 0
       59 LOADN                            R22 1
       60 LOADN                            R23 0
       61 CALL                             R19 4 1
       62 SETTABLEKS                       R19 R18 K5 ["Size"]
       64 GETIMPORT                        R19 K32 [Enum.AutomaticSize.X]
       66 SETTABLEKS                       R19 R18 K16 ["AutomaticSize"]
       68 GETIMPORT                        R19 K35 [Enum.FillDirection.Horizontal]
       70 SETTABLEKS                       R19 R18 K17 ["Layout"]
       72 GETIMPORT                        R19 K37 [Enum.HorizontalAlignment.Center]
       74 SETTABLEKS                       R19 R18 K18 ["HorizontalAlignment"]
       76 GETIMPORT                        R19 K38 [Enum.VerticalAlignment.Center]
       78 SETTABLEKS                       R19 R18 K19 ["VerticalAlignment"]
       80 GETTABLEKS                       R19 R9 K20 ["Spacing"]
       82 SETTABLEKS                       R19 R18 K20 ["Spacing"]
       84 GETTABLEKS                       R19 R9 K21 ["Padding"]
       86 SETTABLEKS                       R19 R18 K21 ["Padding"]
       88 DUPTABLE                         R19 K42 [{"EnabledToggle", "From", "To"}]
       89 GETUPVAL                         R20 1
       90 GETTABLEKS                       R20 R20 K11 ["createElement"]
       92 GETUPVAL                         R21 2
       93 DUPTABLE                         R22 K43 [{"Size", "AutomaticSize", "LayoutOrder"}]
       94 GETTABLEKS                       R23 R9 K44 ["ToggleSize"]
       96 SETTABLEKS                       R23 R22 K5 ["Size"]
       98 GETIMPORT                        R23 K46 [Enum.AutomaticSize.Y]
      100 SETTABLEKS                       R23 R22 K16 ["AutomaticSize"]
      102 NAMECALL                         R23 R11 K47 ["getNextOrder"]
      104 CALL                             R23 1 1
      105 SETTABLEKS                       R23 R22 K4 ["LayoutOrder"]
      107 DUPTABLE                         R23 K49 [{"Checkbox"}]
      108 JUMPIFNOT                        R8 ; [+13]
      109 GETUPVAL                         R24 1
      110 GETTABLEKS                       R24 R24 K11 ["createElement"]
      112 GETUPVAL                         R25 3
      113 DUPTABLE                         R26 K52 [{"Checked", "OnClick"}]
      114 SETTABLEKS                       R4 R26 K50 ["Checked"]
      116 GETTABLEKS                       R27 R0 K53 ["onChecked"]
      118 SETTABLEKS                       R27 R26 K51 ["OnClick"]
      120 CALL                             R24 2 1
      121 JUMP                             ; [+1]
      122 LOADNIL                          R24
      123 SETTABLEKS                       R24 R23 K48 ["Checkbox"]
      125 CALL                             R20 3 1
      126 SETTABLEKS                       R20 R19 K39 ["EnabledToggle"]
      128 GETUPVAL                         R20 1
      129 GETTABLEKS                       R20 R20 K11 ["createElement"]
      131 GETUPVAL                         R21 4
      132 DUPTABLE                         R22 K57 [{"Text", "Size", "LayoutOrder", "TextXAlignment", "Style"}]
      133 SETTABLEKS                       R2 R22 K54 ["Text"]
      135 GETTABLEKS                       R23 R9 K58 ["FromLabelSize"]
      137 SETTABLEKS                       R23 R22 K5 ["Size"]
      139 NAMECALL                         R23 R11 K47 ["getNextOrder"]
      141 CALL                             R23 1 1
      142 SETTABLEKS                       R23 R22 K4 ["LayoutOrder"]
      144 GETIMPORT                        R23 K60 [Enum.TextXAlignment.Left]
      146 SETTABLEKS                       R23 R22 K55 ["TextXAlignment"]
      148 JUMPIF                           R8 ; [+2]
      149 LOADK                            R23 K61 ["Bold"]
      150 JUMP                             ; [+1]
      151 LOADNIL                          R23
      152 SETTABLEKS                       R23 R22 K56 ["Style"]
      154 CALL                             R20 2 1
      155 SETTABLEKS                       R20 R19 K40 ["From"]
      157 JUMPIFNOT                        R8 ; [+39]
      158 GETUPVAL                         R20 1
      159 GETTABLEKS                       R20 R20 K11 ["createElement"]
      161 GETUPVAL                         R21 5
      162 DUPTABLE                         R22 K66 [{"PlaceholderText", "SelectedIndex", "Items", "OnItemActivated", "Size", "LayoutOrder"}]
      163 LOADK                            R25 K67 ["ReplaceRulesPane"]
      164 LOADK                            R26 K68 ["WithPlaceholder"]
      165 NAMECALL                         R23 R10 K69 ["getText"]
      167 CALL                             R23 3 1
      168 SETTABLEKS                       R23 R22 K62 ["PlaceholderText"]
      170 MOVE                             R25 R3
      171 GETTABLEKS                       R26 R0 K70 ["toItems"]
      173 NAMECALL                         R23 R0 K71 ["getIndex"]
      175 CALL                             R23 3 1
      176 SETTABLEKS                       R23 R22 K63 ["SelectedIndex"]
      178 GETTABLEKS                       R23 R0 K70 ["toItems"]
      180 SETTABLEKS                       R23 R22 K64 ["Items"]
      182 GETTABLEKS                       R23 R0 K72 ["onToSelected"]
      184 SETTABLEKS                       R23 R22 K65 ["OnItemActivated"]
      186 GETTABLEKS                       R23 R9 K73 ["TextInputSize"]
      188 SETTABLEKS                       R23 R22 K5 ["Size"]
      190 NAMECALL                         R23 R11 K47 ["getNextOrder"]
      192 CALL                             R23 1 1
      193 SETTABLEKS                       R23 R22 K4 ["LayoutOrder"]
      195 CALL                             R20 2 1
      196 JUMP                             ; [+27]
      197 GETUPVAL                         R20 1
      198 GETTABLEKS                       R20 R20 K11 ["createElement"]
      200 GETUPVAL                         R21 4
      201 DUPTABLE                         R22 K57 [{"Text", "Size", "LayoutOrder", "TextXAlignment", "Style"}]
      202 SETTABLEKS                       R3 R22 K54 ["Text"]
      204 GETTABLEKS                       R23 R9 K73 ["TextInputSize"]
      206 SETTABLEKS                       R23 R22 K5 ["Size"]
      208 NAMECALL                         R23 R11 K47 ["getNextOrder"]
      210 CALL                             R23 1 1
      211 SETTABLEKS                       R23 R22 K4 ["LayoutOrder"]
      213 GETIMPORT                        R23 K60 [Enum.TextXAlignment.Left]
      215 SETTABLEKS                       R23 R22 K55 ["TextXAlignment"]
      217 JUMPIF                           R8 ; [+2]
      218 LOADK                            R23 K61 ["Bold"]
      219 JUMP                             ; [+1]
      220 LOADNIL                          R23
      221 SETTABLEKS                       R23 R22 K56 ["Style"]
      223 CALL                             R20 2 1
      224 SETTABLEKS                       R20 R19 K41 ["To"]
      226 CALL                             R16 3 1
      227 SETTABLEKS                       R16 R15 K13 ["Container"]
      229 CALL                             R12 3 -1
      230 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Cryo"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R2 K11 ["UI"]
       32 GETTABLEKS                       R6 R5 K12 ["TextLabel"]
       34 GETTABLEKS                       R7 R5 K13 ["Pane"]
       36 GETTABLEKS                       R8 R5 K14 ["SelectInput"]
       38 GETTABLEKS                       R9 R5 K15 ["Checkbox"]
       40 GETIMPORT                        R10 K5 [require]
       42 GETTABLEKS                       R11 R0 K16 ["Src"]
       44 GETTABLEKS                       R11 R11 K17 ["Util"]
       46 GETTABLEKS                       R11 R11 K18 ["ScriptAnalysis"]
       48 GETTABLEKS                       R11 R11 K19 ["R6Info"]
       50 CALL                             R10 1 1
       51 GETTABLEKS                       R11 R2 K17 ["Util"]
       53 GETTABLEKS                       R12 R11 K20 ["LayoutOrderIterator"]
       55 GETTABLEKS                       R13 R1 K21 ["PureComponent"]
       57 LOADK                            R15 K22 ["ReplaceOptionItem"]
       58 NAMECALL                         R13 R13 K23 ["extend"]
       60 CALL                             R13 2 1
       61 DUPCLOSURE                       R14 K24 [PROTO_0]
       62 CAPTURE                          VAL R10
       63 CAPTURE                          VAL R3
       64 SETTABLEKS                       R14 R13 K25 ["buildItems"]
       66 DUPCLOSURE                       R14 K26 [PROTO_1]
       67 SETTABLEKS                       R14 R13 K27 ["getIndex"]
       69 DUPCLOSURE                       R14 K28 [PROTO_4]
       70 SETTABLEKS                       R14 R13 K29 ["init"]
       72 DUPCLOSURE                       R14 K30 [PROTO_5]
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R8
       79 SETTABLEKS                       R14 R13 K31 ["render"]
       81 GETTABLEKS                       R14 R4 K32 ["withContext"]
       83 DUPTABLE                         R15 K35 [{"Stylizer", "Localization"}]
       84 GETTABLEKS                       R16 R4 K33 ["Stylizer"]
       86 SETTABLEKS                       R16 R15 K33 ["Stylizer"]
       88 GETTABLEKS                       R16 R4 K34 ["Localization"]
       90 SETTABLEKS                       R16 R15 K34 ["Localization"]
       92 CALL                             R14 1 1
       93 MOVE                             R15 R13
       94 CALL                             R14 1 1
       95 MOVE                             R13 R14
       96 RETURN                           R13 1
