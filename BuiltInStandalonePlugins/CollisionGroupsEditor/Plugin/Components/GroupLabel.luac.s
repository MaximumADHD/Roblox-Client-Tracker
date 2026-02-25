PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"pressed"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["pressed"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R2 R3 K3 ["props"]
       11 GETTABLEKS                       R1 R2 K4 ["Group"]
       13 GETTABLEKS                       R0 R1 K5 ["Name"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K3 ["props"]
       18 GETTABLEKS                       R2 R3 K4 ["Group"]
       20 GETTABLEKS                       R1 R2 K6 ["UISelected"]
       22 JUMPIFNOT                        R1 ; [+16]
       23 JUMPIFEQKS                       R0 K7 ["Default"] ; [+15]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R1 R2 K8 ["CursorGroupName"]
       28 JUMPIFEQ                         R0 R1 ; [+10]
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K3 ["props"]
       33 GETTABLEKS                       R2 R3 K4 ["Group"]
       35 GETTABLEKS                       R1 R2 K9 ["OnRenamed"]
       37 CALL                             R1 0 0
       38 RETURN                           R0 0
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R3 R4 K3 ["props"]
       42 GETTABLEKS                       R2 R3 K4 ["Group"]
       44 GETTABLEKS                       R1 R2 K10 ["OnSelected"]
       46 CALL                             R1 0 0
       47 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"pressed"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["pressed"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["OnRowHovered"]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["props"]
        9 GETTABLEKS                       R5 R6 K2 ["Group"]
       11 GETTABLEKS                       R4 R5 K3 ["Name"]
       13 LOADB                            R5 1
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["OnRowHovered"]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R6 R7 K0 ["props"]
        9 GETTABLEKS                       R5 R6 K2 ["Group"]
       11 GETTABLEKS                       R4 R5 K3 ["Name"]
       13 LOADB                            R5 0
       14 CALL                             R2 3 0
       15 GETUPVAL                         R2 0
       16 DUPTABLE                         R4 K5 [{"pressed"}]
       17 LOADB                            R5 0
       18 SETTABLEKS                       R5 R4 K4 ["pressed"]
       20 NAMECALL                         R2 R2 K6 ["setState"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"pressed"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["pressed"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R1 R0 K3 ["onClick"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K4 ["onPress"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K5 ["onMouseEnter"]
       19 NEWCLOSURE                       R1 P3
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K6 ["onMouseLeave"]
       23 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R5 R1 K3 ["Group"]
        8 GETTABLEKS                       R4 R5 K4 ["Renaming"]
       10 LOADNIL                          R5
       11 GETTABLEKS                       R7 R0 K5 ["state"]
       13 GETTABLEKS                       R6 R7 K6 ["pressed"]
       15 JUMPIFNOT                        R6 ; [+4]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K7 ["Pressed"]
       19 JUMP                             ; [+16]
       20 GETTABLEKS                       R7 R1 K3 ["Group"]
       22 GETTABLEKS                       R6 R7 K8 ["UISelected"]
       24 JUMPIFNOT                        R6 ; [+5]
       25 JUMPIF                           R4 ; [+4]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K9 ["Selected"]
       29 JUMP                             ; [+6]
       30 GETTABLEKS                       R6 R1 K10 ["Hovered"]
       32 JUMPIFNOT                        R6 ; [+3]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K11 ["Hover"]
       36 GETTABLEKS                       R7 R1 K3 ["Group"]
       38 GETTABLEKS                       R6 R7 K12 ["Name"]
       40 GETUPVAL                         R9 1
       41 GETTABLEKS                       R8 R9 K13 ["CursorGroupName"]
       43 JUMPIFEQ                         R6 R8 ; [+2]
       45 LOADB                            R7 0 +1
       46 LOADB                            R7 1
       47 JUMPIFNOT                        R7 ; [+5]
       48 GETTABLEKS                       R9 R2 K14 ["GroupLabelStyle"]
       50 GETTABLEKS                       R8 R9 K15 ["CursorGroupNameLabelSize"]
       52 JUMP                             ; [+4]
       53 GETTABLEKS                       R9 R2 K14 ["GroupLabelStyle"]
       55 GETTABLEKS                       R8 R9 K16 ["GroupNameLabelSize"]
       57 GETUPVAL                         R10 2
       58 GETTABLEKS                       R9 R10 K17 ["createElement"]
       60 GETUPVAL                         R10 3
       61 NEWTABLE                         R11 16 0
       63 LOADK                            R12 K18 ["GroupLabel"]
       64 SETTABLEKS                       R12 R11 K19 ["Style"]
       66 SETTABLEKS                       R5 R11 K20 ["StyleModifier"]
       68 GETUPVAL                         R13 1
       69 GETTABLEKS                       R12 R13 K21 ["GroupLabelFixedSize"]
       71 SETTABLEKS                       R12 R11 K22 ["Size"]
       73 GETTABLEKS                       R12 R1 K23 ["LayoutOrder"]
       75 SETTABLEKS                       R12 R11 K23 ["LayoutOrder"]
       77 GETIMPORT                        R12 K27 [Enum.FillDirection.Horizontal]
       79 SETTABLEKS                       R12 R11 K28 ["Layout"]
       81 GETTABLEKS                       R12 R0 K29 ["onClick"]
       83 SETTABLEKS                       R12 R11 K30 ["OnClick"]
       85 GETTABLEKS                       R12 R0 K31 ["onPress"]
       87 SETTABLEKS                       R12 R11 K32 ["OnPress"]
       89 GETUPVAL                         R14 2
       90 GETTABLEKS                       R13 R14 K33 ["Event"]
       92 GETTABLEKS                       R12 R13 K34 ["MouseEnter"]
       94 GETTABLEKS                       R13 R0 K35 ["onMouseEnter"]
       96 SETTABLE                         R13 R11 R12
       97 GETUPVAL                         R14 2
       98 GETTABLEKS                       R13 R14 K33 ["Event"]
      100 GETTABLEKS                       R12 R13 K36 ["MouseLeave"]
      102 GETTABLEKS                       R13 R0 K37 ["onMouseLeave"]
      104 SETTABLE                         R13 R11 R12
      105 DUPTABLE                         R12 K41 [{"SetMembershipButton", "GroupRenameTextBox", "Text"}]
      106 JUMPIF                           R7 ; [+34]
      107 GETIMPORT                        R14 K43 [game]
      109 LOADK                            R16 K44 ["CGELargeGroupNameEntryFix"]
      110 NAMECALL                         R14 R14 K45 ["GetFastFlag"]
      112 CALL                             R14 2 1
      113 JUMPIFNOT                        R14 ; [+1]
      114 JUMPIF                           R4 ; [+26]
      115 GETUPVAL                         R14 2
      116 GETTABLEKS                       R13 R14 K17 ["createElement"]
      118 GETUPVAL                         R14 4
      119 DUPTABLE                         R15 K47 [{"Style", "TooltipMessage", "OnClick", "LayoutOrder"}]
      120 LOADK                            R16 K48 ["SetMembership"]
      121 SETTABLEKS                       R16 R15 K19 ["Style"]
      123 LOADK                            R18 K49 ["Tooltip"]
      124 LOADK                            R19 K50 ["Add"]
      125 NAMECALL                         R16 R3 K51 ["getText"]
      127 CALL                             R16 3 1
      128 SETTABLEKS                       R16 R15 K46 ["TooltipMessage"]
      130 GETTABLEKS                       R17 R1 K3 ["Group"]
      132 GETTABLEKS                       R16 R17 K52 ["OnMembershipSet"]
      134 SETTABLEKS                       R16 R15 K30 ["OnClick"]
      136 LOADN                            R16 1
      137 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      139 CALL                             R13 2 1
      140 JUMP                             ; [+1]
      141 LOADNIL                          R13
      142 SETTABLEKS                       R13 R12 K38 ["SetMembershipButton"]
      144 MOVE                             R13 R4
      145 JUMPIFNOT                        R13 ; [+19]
      146 GETUPVAL                         R14 2
      147 GETTABLEKS                       R13 R14 K17 ["createElement"]
      149 GETUPVAL                         R14 5
      150 DUPTABLE                         R15 K53 [{"Size", "Group", "LayoutOrder"}]
      151 GETTABLEKS                       R17 R2 K14 ["GroupLabelStyle"]
      153 GETTABLEKS                       R16 R17 K16 ["GroupNameLabelSize"]
      155 SETTABLEKS                       R16 R15 K22 ["Size"]
      157 GETTABLEKS                       R16 R1 K3 ["Group"]
      159 SETTABLEKS                       R16 R15 K3 ["Group"]
      161 LOADN                            R16 2
      162 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      164 CALL                             R13 2 1
      165 SETTABLEKS                       R13 R12 K39 ["GroupRenameTextBox"]
      167 NOT                              R13 R4
      168 JUMPIFNOT                        R13 ; [+41]
      169 GETUPVAL                         R14 2
      170 GETTABLEKS                       R13 R14 K17 ["createElement"]
      172 GETUPVAL                         R14 6
      173 DUPTABLE                         R15 K57 [{"Size", "Style", "LayoutOrder", "Text", "TextWrapped", "TextTruncate", "TextXAlignment", "StyleModifier"}]
      174 SETTABLEKS                       R8 R15 K22 ["Size"]
      176 LOADK                            R16 K18 ["GroupLabel"]
      177 SETTABLEKS                       R16 R15 K19 ["Style"]
      179 LOADN                            R16 3
      180 SETTABLEKS                       R16 R15 K23 ["LayoutOrder"]
      182 SETTABLEKS                       R6 R15 K40 ["Text"]
      184 LOADB                            R16 1
      185 SETTABLEKS                       R16 R15 K54 ["TextWrapped"]
      187 GETIMPORT                        R16 K59 [Enum.TextTruncate.AtEnd]
      189 SETTABLEKS                       R16 R15 K55 ["TextTruncate"]
      191 GETIMPORT                        R16 K61 [Enum.TextXAlignment.Right]
      193 SETTABLEKS                       R16 R15 K56 ["TextXAlignment"]
      195 SETTABLEKS                       R5 R15 K20 ["StyleModifier"]
      197 DUPTABLE                         R16 K63 [{"HoverArea"}]
      198 GETUPVAL                         R18 2
      199 GETTABLEKS                       R17 R18 K17 ["createElement"]
      201 GETUPVAL                         R18 7
      202 DUPTABLE                         R19 K65 [{"Cursor"}]
      203 LOADK                            R20 K66 ["PointingHand"]
      204 SETTABLEKS                       R20 R19 K64 ["Cursor"]
      206 CALL                             R17 2 1
      207 SETTABLEKS                       R17 R16 K62 ["HoverArea"]
      209 CALL                             R13 3 1
      210 SETTABLEKS                       R13 R12 K40 ["Text"]
      212 CALL                             R9 3 -1
      213 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["HoverArea"]
       29 GETTABLEKS                       R6 R4 K11 ["Pane"]
       31 GETTABLEKS                       R7 R4 K12 ["TextLabel"]
       33 GETTABLEKS                       R9 R2 K13 ["Util"]
       35 GETTABLEKS                       R8 R9 K14 ["StyleModifier"]
       37 GETIMPORT                        R9 K4 [require]
       39 GETIMPORT                        R13 K1 [script]
       41 GETTABLEKS                       R12 R13 K2 ["Parent"]
       43 GETTABLEKS                       R11 R12 K2 ["Parent"]
       45 GETTABLEKS                       R10 R11 K15 ["Constants"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K4 [require]
       50 GETIMPORT                        R13 K1 [script]
       52 GETTABLEKS                       R12 R13 K2 ["Parent"]
       54 GETTABLEKS                       R11 R12 K16 ["GroupRenameTextBox"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K4 [require]
       59 GETIMPORT                        R14 K1 [script]
       61 GETTABLEKS                       R13 R14 K2 ["Parent"]
       63 GETTABLEKS                       R12 R13 K17 ["GroupButton"]
       65 CALL                             R11 1 1
       66 GETTABLEKS                       R12 R1 K18 ["PureComponent"]
       68 LOADK                            R14 K19 ["GroupLabel"]
       69 NAMECALL                         R12 R12 K20 ["extend"]
       71 CALL                             R12 2 1
       72 DUPCLOSURE                       R13 K21 [PROTO_4]
       73 CAPTURE                          VAL R9
       74 SETTABLEKS                       R13 R12 K22 ["init"]
       76 DUPCLOSURE                       R13 K23 [PROTO_5]
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R5
       85 SETTABLEKS                       R13 R12 K24 ["render"]
       87 GETTABLEKS                       R13 R3 K25 ["withContext"]
       89 DUPTABLE                         R14 K28 [{"Stylizer", "Localization"}]
       90 GETTABLEKS                       R15 R3 K26 ["Stylizer"]
       92 SETTABLEKS                       R15 R14 K26 ["Stylizer"]
       94 GETTABLEKS                       R15 R3 K27 ["Localization"]
       96 SETTABLEKS                       R15 R14 K27 ["Localization"]
       98 CALL                             R13 1 1
       99 MOVE                             R14 R12
      100 CALL                             R13 1 1
      101 MOVE                             R12 R13
      102 RETURN                           R12 1
