PROTO_0:
        0 GETUPVAL                         R1 0
        1 NEWTABLE                         R3 1 0
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R6 R6 K0 ["state"]
        6 GETTABLE                         R5 R6 R0
        7 NOT                              R4 R5
        8 SETTABLE                         R4 R3 R0
        9 NAMECALL                         R1 R1 K1 ["setState"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K6 [{[1] = False, ["KEY2"] = False, ["KEY3"], ["KEY4"] = True}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K7 ["Indeterminate"]
        4 SETTABLEKS                       R2 R1 K3 ["KEY3"]
        6 SETTABLEKS                       R1 R0 K8 ["state"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K9 ["onClick"]
       12 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 NEWTABLE                         R3 1 0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K1 ["Tag"]
        9 LOADK                            R5 K2 ["X-Column X-FitY X-Pad"]
       10 SETTABLE                         R5 R3 R4
       11 DUPTABLE                         R4 K10 [{"Disabled", "Default", "Indeterminate", "NoLabel", "WithTooltip", "WithHelpIcon", "Wrapped"}]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K0 ["createElement"]
       15 GETUPVAL                         R6 2
       16 DUPTABLE                         R7 K19 [{["Checked"], ["Disabled"] = True, ["Key"] = "KEY1", ["LayoutOrder"] = 1, ["OnClick"], ["Text"] = "Disabled"}]
       17 GETTABLEKS                       R9 R0 K20 ["state"]
       19 GETTABLEKS                       R8 R9 K14 ["KEY1"]
       21 SETTABLEKS                       R8 R7 K11 ["Checked"]
       23 GETTABLEKS                       R8 R0 K21 ["onClick"]
       25 SETTABLEKS                       R8 R7 K17 ["OnClick"]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K3 ["Disabled"]
       30 GETUPVAL                         R5 0
       31 GETTABLEKS                       R5 R5 K0 ["createElement"]
       33 GETUPVAL                         R6 2
       34 DUPTABLE                         R7 K25 [{["Checked"], ["Key"] = "KEY2", ["LayoutOrder"] = 2, ["OnClick"], ["Text"] = "Clickable"}]
       35 GETTABLEKS                       R9 R0 K20 ["state"]
       37 GETTABLEKS                       R8 R9 K22 ["KEY2"]
       39 SETTABLEKS                       R8 R7 K11 ["Checked"]
       41 GETTABLEKS                       R8 R0 K21 ["onClick"]
       43 SETTABLEKS                       R8 R7 K17 ["OnClick"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K4 ["Default"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R5 R5 K0 ["createElement"]
       51 GETUPVAL                         R6 2
       52 DUPTABLE                         R7 K29 [{["Checked"], ["Key"] = "KEY3", ["LayoutOrder"] = 3, ["OnClick"], ["Text"] = "Mixed"}]
       53 GETTABLEKS                       R9 R0 K20 ["state"]
       55 GETTABLEKS                       R8 R9 K26 ["KEY3"]
       57 SETTABLEKS                       R8 R7 K11 ["Checked"]
       59 GETTABLEKS                       R8 R0 K21 ["onClick"]
       61 SETTABLEKS                       R8 R7 K17 ["OnClick"]
       63 CALL                             R5 2 1
       64 SETTABLEKS                       R5 R4 K5 ["Indeterminate"]
       66 GETUPVAL                         R5 0
       67 GETTABLEKS                       R5 R5 K0 ["createElement"]
       69 GETUPVAL                         R6 2
       70 DUPTABLE                         R7 K32 [{["Checked"], ["Key"] = "KEY4", ["LayoutOrder"] = 4, ["OnClick"]}]
       71 GETTABLEKS                       R9 R0 K20 ["state"]
       73 GETTABLEKS                       R8 R9 K30 ["KEY4"]
       75 SETTABLEKS                       R8 R7 K11 ["Checked"]
       77 GETTABLEKS                       R8 R0 K21 ["onClick"]
       79 SETTABLEKS                       R8 R7 K17 ["OnClick"]
       81 CALL                             R5 2 1
       82 SETTABLEKS                       R5 R4 K6 ["NoLabel"]
       84 GETUPVAL                         R5 0
       85 GETTABLEKS                       R5 R5 K0 ["createElement"]
       87 GETUPVAL                         R6 2
       88 DUPTABLE                         R7 K36 [{["Checked"], ["Key"] = "KEY5", ["LayoutOrder"] = 5, ["OnClick"], ["Text"] = "Tooltip"}]
       89 GETTABLEKS                       R9 R0 K20 ["state"]
       91 GETTABLEKS                       R8 R9 K33 ["KEY5"]
       93 SETTABLEKS                       R8 R7 K11 ["Checked"]
       95 GETTABLEKS                       R8 R0 K21 ["onClick"]
       97 SETTABLEKS                       R8 R7 K17 ["OnClick"]
       99 DUPTABLE                         R8 K37 [{"Tooltip"}]
      100 GETUPVAL                         R9 0
      101 GETTABLEKS                       R9 R9 K0 ["createElement"]
      103 GETUPVAL                         R10 3
      104 DUPTABLE                         R11 K39 [{["Text"] = "This checkbox has a tooltip"}]
      105 CALL                             R9 2 1
      106 SETTABLEKS                       R9 R8 K35 ["Tooltip"]
      108 CALL                             R5 3 1
      109 SETTABLEKS                       R5 R4 K7 ["WithTooltip"]
      111 GETUPVAL                         R5 0
      112 GETTABLEKS                       R5 R5 K0 ["createElement"]
      114 GETUPVAL                         R6 2
      115 DUPTABLE                         R7 K43 [{["Checked"], ["Key"] = "KEY6", ["LayoutOrder"] = 6, ["OnClick"], ["Text"] = "Help Icon"}]
      116 GETTABLEKS                       R9 R0 K20 ["state"]
      118 GETTABLEKS                       R8 R9 K40 ["KEY6"]
      120 SETTABLEKS                       R8 R7 K11 ["Checked"]
      122 GETTABLEKS                       R8 R0 K21 ["onClick"]
      124 SETTABLEKS                       R8 R7 K17 ["OnClick"]
      126 DUPTABLE                         R8 K45 [{"Image"}]
      127 GETUPVAL                         R9 0
      128 GETTABLEKS                       R9 R9 K0 ["createElement"]
      130 GETUPVAL                         R10 4
      131 DUPTABLE                         R11 K51 [{["AnchorPoint"], ["ImageColor3"], ["Image"] = "rbxasset://textures/AlignTool/Help.png", ["Position"], ["Size"]}]
      132 GETIMPORT                        R12 K54 [Vector2.new]
      134 LOADN                            R13 0
      135 LOADK                            R14 K55 [0.5]
      136 CALL                             R12 2 1
      137 SETTABLEKS                       R12 R11 K46 ["AnchorPoint"]
      139 GETIMPORT                        R12 K57 [Color3.new]
      141 LOADN                            R13 1
      142 LOADN                            R14 1
      143 LOADN                            R15 1
      144 CALL                             R12 3 1
      145 SETTABLEKS                       R12 R11 K47 ["ImageColor3"]
      147 GETIMPORT                        R12 K59 [UDim2.new]
      149 LOADN                            R13 1
      150 LOADN                            R14 4
      151 LOADK                            R15 K55 [0.5]
      152 LOADN                            R16 0
      153 CALL                             R12 4 1
      154 SETTABLEKS                       R12 R11 K49 ["Position"]
      156 GETIMPORT                        R12 K61 [UDim2.fromOffset]
      158 LOADN                            R13 14
      159 LOADN                            R14 14
      160 CALL                             R12 2 1
      161 SETTABLEKS                       R12 R11 K50 ["Size"]
      163 CALL                             R9 2 1
      164 SETTABLEKS                       R9 R8 K44 ["Image"]
      166 CALL                             R5 3 1
      167 SETTABLEKS                       R5 R4 K8 ["WithHelpIcon"]
      169 GETUPVAL                         R5 0
      170 GETTABLEKS                       R5 R5 K0 ["createElement"]
      172 GETUPVAL                         R6 2
      173 DUPTABLE                         R7 K66 [{["Checked"], ["Key"] = "KEY7", ["LayoutOrder"] = 7, ["OnClick"], ["Text"] = "Call me Ishmael. Some years ago—never mind how long precisely—having little or no money in my purse, and nothing particular to interest me on shore, I thought I would sail about a little and see the watery part of the world. It is a way I have of driving off the spleen and regulating the circulation.", ["TextWrapped"] = True}]
      174 GETTABLEKS                       R9 R0 K20 ["state"]
      176 GETTABLEKS                       R8 R9 K62 ["KEY7"]
      178 SETTABLEKS                       R8 R7 K11 ["Checked"]
      180 GETTABLEKS                       R8 R0 K21 ["onClick"]
      182 SETTABLEKS                       R8 R7 K17 ["OnClick"]
      184 CALL                             R5 2 1
      185 SETTABLEKS                       R5 R4 K9 ["Wrapped"]
      187 CALL                             R1 3 -1
      188 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["Components"]
       22 GETTABLEKS                       R3 R3 K9 ["Checkbox"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K8 ["Components"]
       31 GETTABLEKS                       R4 R4 K10 ["Image"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K8 ["Components"]
       40 GETTABLEKS                       R5 R5 K11 ["Pane"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R6 R0 K2 ["UI"]
       47 GETTABLEKS                       R6 R6 K8 ["Components"]
       49 GETTABLEKS                       R6 R6 K12 ["Tooltip"]
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
