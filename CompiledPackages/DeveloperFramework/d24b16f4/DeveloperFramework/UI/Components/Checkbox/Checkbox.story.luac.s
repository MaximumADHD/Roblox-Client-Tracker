PROTO_0:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 1 0
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R6 R7 K0 ["state"]
        6 GETTABLE                         R5 R6 R0
        7 NOT                              R4 R5
        8 SETTABLE                         R4 R3 R0
        9 NAMECALL                         R1 R1 K1 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K4 [{"KEY1", "KEY2", "KEY3", "KEY4"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["KEY1"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["KEY2"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K5 ["Indeterminate"]
       10 SETTABLEKS                       R2 R1 K2 ["KEY3"]
       12 LOADB                            R2 1
       13 SETTABLEKS                       R2 R1 K3 ["KEY4"]
       15 SETTABLEKS                       R1 R0 K6 ["state"]
       17 NEWCLOSURE                       R1 P0
       18 CAPTURE                          VAL R0
       19 SETTABLEKS                       R1 R0 K7 ["onClick"]
       21 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 1 0
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K1 ["Tag"]
        9 LOADK                            R5 K2 ["X-Column X-FitY X-Pad"]
       10 SETTABLE                         R5 R3 R4
       11 DUPTABLE                         R4 K10 [{"Disabled", "Default", "Indeterminate", "NoLabel", "WithTooltip", "WithHelpIcon", "Wrapped"}]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K0 ["createElement"]
       15 GETUPVAL                         R6 2
       16 DUPTABLE                         R7 K16 [{"Checked", "Disabled", "Key", "LayoutOrder", "OnClick", "Text"}]
       17 GETTABLEKS                       R9 R0 K18 ["state"]
       19 GETTABLEKS                       R8 R9 K17 ["KEY1"]
       21 SETTABLEKS                       R8 R7 K11 ["Checked"]
       23 LOADB                            R8 1
       24 SETTABLEKS                       R8 R7 K3 ["Disabled"]
       26 LOADK                            R8 K17 ["KEY1"]
       27 SETTABLEKS                       R8 R7 K12 ["Key"]
       29 LOADN                            R8 1
       30 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       32 GETTABLEKS                       R8 R0 K19 ["onClick"]
       34 SETTABLEKS                       R8 R7 K14 ["OnClick"]
       36 LOADK                            R8 K3 ["Disabled"]
       37 SETTABLEKS                       R8 R7 K15 ["Text"]
       39 CALL                             R5 2 1
       40 SETTABLEKS                       R5 R4 K3 ["Disabled"]
       42 GETUPVAL                         R6 0
       43 GETTABLEKS                       R5 R6 K0 ["createElement"]
       45 GETUPVAL                         R6 2
       46 DUPTABLE                         R7 K20 [{"Checked", "Key", "LayoutOrder", "OnClick", "Text"}]
       47 GETTABLEKS                       R9 R0 K18 ["state"]
       49 GETTABLEKS                       R8 R9 K21 ["KEY2"]
       51 SETTABLEKS                       R8 R7 K11 ["Checked"]
       53 LOADK                            R8 K21 ["KEY2"]
       54 SETTABLEKS                       R8 R7 K12 ["Key"]
       56 LOADN                            R8 2
       57 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       59 GETTABLEKS                       R8 R0 K19 ["onClick"]
       61 SETTABLEKS                       R8 R7 K14 ["OnClick"]
       63 LOADK                            R8 K22 ["Clickable"]
       64 SETTABLEKS                       R8 R7 K15 ["Text"]
       66 CALL                             R5 2 1
       67 SETTABLEKS                       R5 R4 K4 ["Default"]
       69 GETUPVAL                         R6 0
       70 GETTABLEKS                       R5 R6 K0 ["createElement"]
       72 GETUPVAL                         R6 2
       73 DUPTABLE                         R7 K20 [{"Checked", "Key", "LayoutOrder", "OnClick", "Text"}]
       74 GETTABLEKS                       R9 R0 K18 ["state"]
       76 GETTABLEKS                       R8 R9 K23 ["KEY3"]
       78 SETTABLEKS                       R8 R7 K11 ["Checked"]
       80 LOADK                            R8 K23 ["KEY3"]
       81 SETTABLEKS                       R8 R7 K12 ["Key"]
       83 LOADN                            R8 3
       84 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
       86 GETTABLEKS                       R8 R0 K19 ["onClick"]
       88 SETTABLEKS                       R8 R7 K14 ["OnClick"]
       90 LOADK                            R8 K24 ["Mixed"]
       91 SETTABLEKS                       R8 R7 K15 ["Text"]
       93 CALL                             R5 2 1
       94 SETTABLEKS                       R5 R4 K5 ["Indeterminate"]
       96 GETUPVAL                         R6 0
       97 GETTABLEKS                       R5 R6 K0 ["createElement"]
       99 GETUPVAL                         R6 2
      100 DUPTABLE                         R7 K25 [{"Checked", "Key", "LayoutOrder", "OnClick"}]
      101 GETTABLEKS                       R9 R0 K18 ["state"]
      103 GETTABLEKS                       R8 R9 K26 ["KEY4"]
      105 SETTABLEKS                       R8 R7 K11 ["Checked"]
      107 LOADK                            R8 K26 ["KEY4"]
      108 SETTABLEKS                       R8 R7 K12 ["Key"]
      110 LOADN                            R8 4
      111 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
      113 GETTABLEKS                       R8 R0 K19 ["onClick"]
      115 SETTABLEKS                       R8 R7 K14 ["OnClick"]
      117 CALL                             R5 2 1
      118 SETTABLEKS                       R5 R4 K6 ["NoLabel"]
      120 GETUPVAL                         R6 0
      121 GETTABLEKS                       R5 R6 K0 ["createElement"]
      123 GETUPVAL                         R6 2
      124 DUPTABLE                         R7 K20 [{"Checked", "Key", "LayoutOrder", "OnClick", "Text"}]
      125 GETTABLEKS                       R9 R0 K18 ["state"]
      127 GETTABLEKS                       R8 R9 K27 ["KEY5"]
      129 SETTABLEKS                       R8 R7 K11 ["Checked"]
      131 LOADK                            R8 K27 ["KEY5"]
      132 SETTABLEKS                       R8 R7 K12 ["Key"]
      134 LOADN                            R8 5
      135 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
      137 GETTABLEKS                       R8 R0 K19 ["onClick"]
      139 SETTABLEKS                       R8 R7 K14 ["OnClick"]
      141 LOADK                            R8 K28 ["Tooltip"]
      142 SETTABLEKS                       R8 R7 K15 ["Text"]
      144 DUPTABLE                         R8 K29 [{"Tooltip"}]
      145 GETUPVAL                         R10 0
      146 GETTABLEKS                       R9 R10 K0 ["createElement"]
      148 GETUPVAL                         R10 3
      149 DUPTABLE                         R11 K30 [{"Text"}]
      150 LOADK                            R12 K31 ["This checkbox has a tooltip"]
      151 SETTABLEKS                       R12 R11 K15 ["Text"]
      153 CALL                             R9 2 1
      154 SETTABLEKS                       R9 R8 K28 ["Tooltip"]
      156 CALL                             R5 3 1
      157 SETTABLEKS                       R5 R4 K7 ["WithTooltip"]
      159 GETUPVAL                         R6 0
      160 GETTABLEKS                       R5 R6 K0 ["createElement"]
      162 GETUPVAL                         R6 2
      163 DUPTABLE                         R7 K20 [{"Checked", "Key", "LayoutOrder", "OnClick", "Text"}]
      164 GETTABLEKS                       R9 R0 K18 ["state"]
      166 GETTABLEKS                       R8 R9 K32 ["KEY6"]
      168 SETTABLEKS                       R8 R7 K11 ["Checked"]
      170 LOADK                            R8 K32 ["KEY6"]
      171 SETTABLEKS                       R8 R7 K12 ["Key"]
      173 LOADN                            R8 6
      174 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
      176 GETTABLEKS                       R8 R0 K19 ["onClick"]
      178 SETTABLEKS                       R8 R7 K14 ["OnClick"]
      180 LOADK                            R8 K33 ["Help Icon"]
      181 SETTABLEKS                       R8 R7 K15 ["Text"]
      183 DUPTABLE                         R8 K35 [{"Image"}]
      184 GETUPVAL                         R10 0
      185 GETTABLEKS                       R9 R10 K0 ["createElement"]
      187 GETUPVAL                         R10 4
      188 DUPTABLE                         R11 K40 [{"AnchorPoint", "ImageColor3", "Image", "Position", "Size"}]
      189 GETIMPORT                        R12 K43 [Vector2.new]
      191 LOADN                            R13 0
      192 LOADK                            R14 K44 [0.5]
      193 CALL                             R12 2 1
      194 SETTABLEKS                       R12 R11 K36 ["AnchorPoint"]
      196 GETIMPORT                        R12 K46 [Color3.new]
      198 LOADN                            R13 1
      199 LOADN                            R14 1
      200 LOADN                            R15 1
      201 CALL                             R12 3 1
      202 SETTABLEKS                       R12 R11 K37 ["ImageColor3"]
      204 LOADK                            R12 K47 ["rbxasset://textures/AlignTool/Help.png"]
      205 SETTABLEKS                       R12 R11 K34 ["Image"]
      207 GETIMPORT                        R12 K49 [UDim2.new]
      209 LOADN                            R13 1
      210 LOADN                            R14 4
      211 LOADK                            R15 K44 [0.5]
      212 LOADN                            R16 0
      213 CALL                             R12 4 1
      214 SETTABLEKS                       R12 R11 K38 ["Position"]
      216 GETIMPORT                        R12 K51 [UDim2.fromOffset]
      218 LOADN                            R13 14
      219 LOADN                            R14 14
      220 CALL                             R12 2 1
      221 SETTABLEKS                       R12 R11 K39 ["Size"]
      223 CALL                             R9 2 1
      224 SETTABLEKS                       R9 R8 K34 ["Image"]
      226 CALL                             R5 3 1
      227 SETTABLEKS                       R5 R4 K8 ["WithHelpIcon"]
      229 GETUPVAL                         R6 0
      230 GETTABLEKS                       R5 R6 K0 ["createElement"]
      232 GETUPVAL                         R6 2
      233 DUPTABLE                         R7 K53 [{"Checked", "Key", "LayoutOrder", "OnClick", "Text", "TextWrapped"}]
      234 GETTABLEKS                       R9 R0 K18 ["state"]
      236 GETTABLEKS                       R8 R9 K54 ["KEY7"]
      238 SETTABLEKS                       R8 R7 K11 ["Checked"]
      240 LOADK                            R8 K54 ["KEY7"]
      241 SETTABLEKS                       R8 R7 K12 ["Key"]
      243 LOADN                            R8 7
      244 SETTABLEKS                       R8 R7 K13 ["LayoutOrder"]
      246 GETTABLEKS                       R8 R0 K19 ["onClick"]
      248 SETTABLEKS                       R8 R7 K14 ["OnClick"]
      250 LOADK                            R8 K55 ["Call me Ishmael. Some years ago—never mind how long precisely—having little or no money in my purse, and nothing particular to interest me on shore, I thought I would sail about a little and see the watery part of the world. It is a way I have of driving off the spleen and regulating the circulation."]
      251 SETTABLEKS                       R8 R7 K15 ["Text"]
      253 LOADB                            R8 1
      254 SETTABLEKS                       R8 R7 K52 ["TextWrapped"]
      256 CALL                             R5 2 1
      257 SETTABLEKS                       R5 R4 K9 ["Wrapped"]
      259 CALL                             R1 3 -1
      260 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K8 ["Components"]
       22 GETTABLEKS                       R3 R4 K9 ["Checkbox"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K8 ["Components"]
       31 GETTABLEKS                       R4 R5 K10 ["Image"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R7 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R7 K8 ["Components"]
       40 GETTABLEKS                       R5 R6 K11 ["Pane"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R8 R0 K2 ["UI"]
       47 GETTABLEKS                       R7 R8 K8 ["Components"]
       49 GETTABLEKS                       R6 R7 K12 ["Tooltip"]
       51 CALL                             R5 1 1
       52 GETTABLEKS                       R6 R1 K13 ["PureComponent"]
       54 LOADK                            R8 K14 ["Checkboxes"]
       55 NAMECALL                         R6 R6 K15 ["extend"]
       57 CALL                             R6 2 1
       58 DUPCLOSURE                       R7 K16 [PROTO_1]
       59 CAPTURE                          VAL R2
       60 SETTABLEKS                       R7 R6 K17 ["init"]
       62 DUPCLOSURE                       R7 K18 [PROTO_2]
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R3
       68 SETTABLEKS                       R7 R6 K19 ["render"]
       70 RETURN                           R6 1
