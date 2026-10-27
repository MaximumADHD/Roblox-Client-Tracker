PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Style"]
        2 GETTABLEKS                       R3 R0 K1 ["Size"]
        4 GETTABLEKS                       R3 R3 K2 ["Y"]
        6 GETTABLEKS                       R3 R3 K3 ["Offset"]
        8 GETTABLEKS                       R4 R2 K4 ["ListItemSpacing"]
       10 GETIMPORT                        R5 K7 [UDim2.new]
       12 LOADN                            R6 1
       13 ADD                              R8 R3 R4
       14 MINUS                            R7 R8
       15 LOADN                            R8 1
       16 LOADN                            R9 0
       17 CALL                             R5 4 1
       18 LOADNIL                          R6
       19 GETTABLEKS                       R7 R0 K8 ["Selected"]
       21 JUMPIFNOT                        R7 ; [+5]
       22 GETTABLEKS                       R7 R0 K9 ["Applied"]
       24 JUMPIFNOT                        R7 ; [+2]
       25 LOADK                            R6 K10 ["RoundActiveApplied"]
       26 JUMP                             ; [+11]
       27 GETTABLEKS                       R7 R0 K8 ["Selected"]
       29 JUMPIFNOT                        R7 ; [+2]
       30 LOADK                            R6 K11 ["RoundActive"]
       31 JUMP                             ; [+6]
       32 GETTABLEKS                       R7 R0 K9 ["Applied"]
       34 JUMPIFNOT                        R7 ; [+2]
       35 LOADK                            R6 K12 ["RoundApplied"]
       36 JUMP                             ; [+1]
       37 LOADK                            R6 K13 ["Round"]
       38 GETTABLEKS                       R7 R0 K14 ["Loading"]
       40 JUMPIFNOT                        R7 ; [+32]
       41 GETUPVAL                         R7 0
       42 GETTABLEKS                       R7 R7 K15 ["createElement"]
       44 GETUPVAL                         R8 1
       45 DUPTABLE                         R9 K21 [{["ClipsDescendants"] = True, ["LayoutOrder"], ["Position"], ["Size"], [5] = "CornerBox"}]
       46 GETTABLEKS                       R10 R0 K18 ["LayoutOrder"]
       48 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
       50 GETTABLEKS                       R10 R0 K19 ["Position"]
       52 SETTABLEKS                       R10 R9 K19 ["Position"]
       54 GETIMPORT                        R10 K7 [UDim2.new]
       56 LOADN                            R11 1
       57 LOADN                            R12 -10
       58 LOADN                            R13 0
       59 MOVE                             R14 R3
       60 CALL                             R10 4 1
       61 SETTABLEKS                       R10 R9 K1 ["Size"]
       63 DUPTABLE                         R10 K23 [{"Shimmer"}]
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R11 R11 K15 ["createElement"]
       67 GETUPVAL                         R12 2
       68 CALL                             R11 1 1
       69 SETTABLEKS                       R11 R10 K22 ["Shimmer"]
       71 CALL                             R7 3 -1
       72 RETURN                           R7 -1
       73 GETUPVAL                         R7 0
       74 GETTABLEKS                       R7 R7 K15 ["createElement"]
       76 GETUPVAL                         R8 3
       77 DUPTABLE                         R9 K28 [{"LayoutOrder", "OnClick", "OnRightClick", "OnMouseEnter", "OnMouseLeave", "Position", "Size", "Style"}]
       78 GETTABLEKS                       R10 R0 K18 ["LayoutOrder"]
       80 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
       82 GETTABLEKS                       R10 R0 K24 ["OnClick"]
       84 SETTABLEKS                       R10 R9 K24 ["OnClick"]
       86 GETTABLEKS                       R10 R0 K25 ["OnRightClick"]
       88 SETTABLEKS                       R10 R9 K25 ["OnRightClick"]
       90 GETTABLEKS                       R10 R0 K26 ["OnMouseEnter"]
       92 SETTABLEKS                       R10 R9 K26 ["OnMouseEnter"]
       94 GETTABLEKS                       R10 R0 K27 ["OnMouseLeave"]
       96 SETTABLEKS                       R10 R9 K27 ["OnMouseLeave"]
       98 GETTABLEKS                       R10 R0 K19 ["Position"]
      100 SETTABLEKS                       R10 R9 K19 ["Position"]
      102 GETIMPORT                        R10 K7 [UDim2.new]
      104 LOADN                            R11 1
      105 LOADN                            R12 -10
      106 LOADN                            R13 0
      107 MOVE                             R14 R3
      108 CALL                             R10 4 1
      109 SETTABLEKS                       R10 R9 K1 ["Size"]
      111 SETTABLEKS                       R6 R9 K0 ["Style"]
      113 DUPTABLE                         R10 K30 [{"Content"}]
      114 GETUPVAL                         R11 0
      115 GETTABLEKS                       R11 R11 K15 ["createElement"]
      117 GETUPVAL                         R12 1
      118 DUPTABLE                         R13 K34 [{"HorizontalAlignment", "Layout", "Spacing"}]
      119 GETIMPORT                        R14 K37 [Enum.HorizontalAlignment.Left]
      121 SETTABLEKS                       R14 R13 K31 ["HorizontalAlignment"]
      123 GETIMPORT                        R14 K40 [Enum.FillDirection.Horizontal]
      125 SETTABLEKS                       R14 R13 K32 ["Layout"]
      127 SETTABLEKS                       R4 R13 K33 ["Spacing"]
      129 DUPTABLE                         R14 K43 [{"MaterialPreview", "Label"}]
      130 GETTABLEKS                       R16 R0 K44 ["CustomPreview"]
      132 JUMPIFNOT                        R16 ; [+15]
      133 GETUPVAL                         R15 0
      134 GETTABLEKS                       R15 R15 K15 ["createElement"]
      136 GETTABLEKS                       R16 R0 K44 ["CustomPreview"]
      138 DUPTABLE                         R17 K45 [{"Size"}]
      139 GETIMPORT                        R18 K47 [UDim2.fromOffset]
      141 MOVE                             R19 R3
      142 MOVE                             R20 R3
      143 CALL                             R18 2 1
      144 SETTABLEKS                       R18 R17 K1 ["Size"]
      146 CALL                             R15 2 1
      147 JUMP                             ; [+27]
      148 GETUPVAL                         R15 0
      149 GETTABLEKS                       R15 R15 K15 ["createElement"]
      151 GETUPVAL                         R16 4
      152 DUPTABLE                         R17 K55 [{["InitialDistance"], ["LayoutOrder"] = 1, ["Material"], ["MeshPartBackgroundColor"], ["Size"], ["Static"] = True, ["Transparent"] = True, ["ref"]}]
      153 GETTABLEKS                       R18 R0 K48 ["InitialDistance"]
      155 SETTABLEKS                       R18 R17 K48 ["InitialDistance"]
      157 GETTABLEKS                       R18 R0 K50 ["Material"]
      159 SETTABLEKS                       R18 R17 K50 ["Material"]
      161 GETTABLEKS                       R18 R2 K56 ["ListItemBackgroundColor"]
      163 SETTABLEKS                       R18 R17 K51 ["MeshPartBackgroundColor"]
      165 GETIMPORT                        R18 K47 [UDim2.fromOffset]
      167 MOVE                             R19 R3
      168 MOVE                             R20 R3
      169 CALL                             R18 2 1
      170 SETTABLEKS                       R18 R17 K1 ["Size"]
      172 SETTABLEKS                       R1 R17 K54 ["ref"]
      174 CALL                             R15 2 1
      175 SETTABLEKS                       R15 R14 K41 ["MaterialPreview"]
      177 GETUPVAL                         R15 0
      178 GETTABLEKS                       R15 R15 K15 ["createElement"]
      180 GETUPVAL                         R16 5
      181 DUPTABLE                         R17 K65 [{["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextSize"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = False}]
      182 SETTABLEKS                       R5 R17 K1 ["Size"]
      184 GETTABLEKS                       R18 R0 K58 ["Text"]
      186 SETTABLEKS                       R18 R17 K58 ["Text"]
      188 GETTABLEKS                       R18 R2 K59 ["TextSize"]
      190 SETTABLEKS                       R18 R17 K59 ["TextSize"]
      192 GETIMPORT                        R18 K67 [Enum.TextTruncate.AtEnd]
      194 SETTABLEKS                       R18 R17 K60 ["TextTruncate"]
      196 GETIMPORT                        R18 K68 [Enum.TextXAlignment.Left]
      198 SETTABLEKS                       R18 R17 K61 ["TextXAlignment"]
      200 GETIMPORT                        R18 K70 [Enum.TextYAlignment.Center]
      202 SETTABLEKS                       R18 R17 K62 ["TextYAlignment"]
      204 CALL                             R15 2 1
      205 SETTABLEKS                       R15 R14 K42 ["Label"]
      207 CALL                             R11 3 1
      208 SETTABLEKS                       R11 R10 K29 ["Content"]
      210 CALL                             R7 3 -1
      211 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Types"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R0 K2 ["Parent"]
       16 GETIMPORT                        R3 K4 [require]
       18 GETTABLEKS                       R4 R2 K6 ["Framework"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K4 [require]
       23 GETTABLEKS                       R5 R2 K7 ["React"]
       25 CALL                             R4 1 1
       26 GETTABLEKS                       R5 R4 K8 ["forwardRef"]
       28 GETTABLEKS                       R6 R3 K9 ["UI"]
       30 GETTABLEKS                       R7 R6 K10 ["Button"]
       32 GETTABLEKS                       R8 R6 K11 ["Pane"]
       34 GETTABLEKS                       R9 R6 K12 ["Shimmer"]
       36 GETTABLEKS                       R10 R6 K13 ["TextLabel"]
       38 GETIMPORT                        R11 K4 [require]
       40 GETTABLEKS                       R12 R0 K14 ["Components"]
       42 GETTABLEKS                       R12 R12 K15 ["MaterialPreview"]
       44 CALL                             R11 1 1
       45 MOVE                             R12 R5
       46 DUPCLOSURE                       R13 K16 [PROTO_0]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R9
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R11
       52 CAPTURE                          VAL R10
       53 CALL                             R12 1 1
       54 RETURN                           R12 1
