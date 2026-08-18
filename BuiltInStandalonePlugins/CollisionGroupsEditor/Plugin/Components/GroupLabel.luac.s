PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K4 ["props"]
        8 GETTABLEKS                       R0 R0 K5 ["Group"]
       10 GETTABLEKS                       R0 R0 K6 ["Name"]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K4 ["props"]
       15 GETTABLEKS                       R1 R1 K5 ["Group"]
       17 GETTABLEKS                       R1 R1 K7 ["UISelected"]
       19 JUMPIFNOT                        R1 ; [+16]
       20 JUMPIFEQKS                       R0 K8 ["Default"] ; [+15]
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R1 R1 K9 ["CursorGroupName"]
       25 JUMPIFEQ                         R0 R1 ; [+10]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R1 R1 K4 ["props"]
       30 GETTABLEKS                       R1 R1 K5 ["Group"]
       32 GETTABLEKS                       R1 R1 K10 ["OnRenamed"]
       34 CALL                             R1 0 0
       35 RETURN                           R0 0
       36 GETUPVAL                         R1 0
       37 GETTABLEKS                       R1 R1 K4 ["props"]
       39 GETTABLEKS                       R1 R1 K5 ["Group"]
       41 GETTABLEKS                       R1 R1 K11 ["OnSelected"]
       43 CALL                             R1 0 0
       44 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["OnRowHovered"]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K2 ["Group"]
       11 GETTABLEKS                       R4 R4 K3 ["Name"]
       13 LOADB                            R5 1
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["OnRowHovered"]
        5 MOVE                             R3 R0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K0 ["props"]
        9 GETTABLEKS                       R4 R4 K2 ["Group"]
       11 GETTABLEKS                       R4 R4 K3 ["Name"]
       13 LOADB                            R5 0
       14 CALL                             R2 3 0
       15 GETUPVAL                         R2 0
       16 DUPTABLE                         R4 K6 [{["pressed"] = False}]
       17 NAMECALL                         R2 R2 K7 ["setState"]
       19 CALL                             R2 2 0
       20 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U0
        6 SETTABLEKS                       R1 R0 K4 ["onClick"]
        8 NEWCLOSURE                       R1 P1
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K5 ["onPress"]
       12 NEWCLOSURE                       R1 P2
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K6 ["onMouseEnter"]
       16 NEWCLOSURE                       R1 P3
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K7 ["onMouseLeave"]
       20 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Group"]
        8 GETTABLEKS                       R4 R4 K4 ["Renaming"]
       10 LOADNIL                          R5
       11 GETTABLEKS                       R6 R0 K5 ["state"]
       13 GETTABLEKS                       R6 R6 K6 ["pressed"]
       15 JUMPIFNOT                        R6 ; [+4]
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R5 R6 K7 ["Pressed"]
       19 JUMP                             ; [+16]
       20 GETTABLEKS                       R6 R1 K3 ["Group"]
       22 GETTABLEKS                       R6 R6 K8 ["UISelected"]
       24 JUMPIFNOT                        R6 ; [+5]
       25 JUMPIF                           R4 ; [+4]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K9 ["Selected"]
       29 JUMP                             ; [+6]
       30 GETTABLEKS                       R6 R1 K10 ["Hovered"]
       32 JUMPIFNOT                        R6 ; [+3]
       33 GETUPVAL                         R6 0
       34 GETTABLEKS                       R5 R6 K11 ["Hover"]
       36 GETTABLEKS                       R6 R1 K3 ["Group"]
       38 GETTABLEKS                       R6 R6 K12 ["Name"]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K13 ["CursorGroupName"]
       43 JUMPIFEQ                         R6 R8 ; [+2]
       45 LOADB                            R7 0 +1
       46 LOADB                            R7 1
       47 JUMPIFNOT                        R7 ; [+5]
       48 GETTABLEKS                       R8 R2 K14 ["GroupLabelStyle"]
       50 GETTABLEKS                       R8 R8 K15 ["CursorGroupNameLabelSize"]
       52 JUMP                             ; [+4]
       53 GETTABLEKS                       R8 R2 K14 ["GroupLabelStyle"]
       55 GETTABLEKS                       R8 R8 K16 ["GroupNameLabelSize"]
       57 GETUPVAL                         R9 2
       58 GETTABLEKS                       R9 R9 K17 ["createElement"]
       60 GETUPVAL                         R10 3
       61 NEWTABLE                         R11 16 0
       63 LOADK                            R12 K18 ["GroupLabel"]
       64 SETTABLEKS                       R12 R11 K19 ["Style"]
       66 SETTABLEKS                       R5 R11 K20 ["StyleModifier"]
       68 GETUPVAL                         R12 1
       69 GETTABLEKS                       R12 R12 K21 ["GroupLabelFixedSize"]
       71 SETTABLEKS                       R12 R11 K22 ["Size"]
       73 GETTABLEKS                       R12 R1 K23 ["LayoutOrder"]
       75 SETTABLEKS                       R12 R11 K23 ["LayoutOrder"]
       77 GETIMPORT                        R12 K27 [Enum.FillDirection.Horizontal]
       79 SETTABLEKS                       R12 R11 K28 ["Layout"]
       81 GETTABLEKS                       R12 R0 K29 ["onClick"]
       83 SETTABLEKS                       R12 R11 K30 ["OnClick"]
       85 GETTABLEKS                       R12 R0 K31 ["onPress"]
       87 SETTABLEKS                       R12 R11 K32 ["OnPress"]
       89 GETUPVAL                         R12 2
       90 GETTABLEKS                       R12 R12 K33 ["Event"]
       92 GETTABLEKS                       R12 R12 K34 ["MouseEnter"]
       94 GETTABLEKS                       R13 R0 K35 ["onMouseEnter"]
       96 SETTABLE                         R13 R11 R12
       97 GETUPVAL                         R12 2
       98 GETTABLEKS                       R12 R12 K33 ["Event"]
      100 GETTABLEKS                       R12 R12 K36 ["MouseLeave"]
      102 GETTABLEKS                       R13 R0 K37 ["onMouseLeave"]
      104 SETTABLE                         R13 R11 R12
      105 DUPTABLE                         R12 K41 [{"SetMembershipButton", "GroupRenameTextBox", "Text"}]
      106 JUMPIF                           R7 ; [+36]
      107 GETIMPORT                        R14 K43 [game]
      109 LOADK                            R16 K44 ["CGELargeGroupNameEntryFix"]
      110 NAMECALL                         R14 R14 K45 ["GetFastFlag"]
      112 CALL                             R14 2 1
      113 JUMPIFNOT                        R14 ; [+1]
      114 JUMPIF                           R4 ; [+28]
      115 GETIMPORT                        R14 K43 [game]
      117 LOADK                            R16 K46 ["CGERenameGroupOverflowFix"]
      118 NAMECALL                         R14 R14 K45 ["GetFastFlag"]
      120 CALL                             R14 2 1
      121 JUMPIFNOT                        R14 ; [+1]
      122 JUMPIF                           R4 ; [+20]
      123 GETUPVAL                         R13 2
      124 GETTABLEKS                       R13 R13 K17 ["createElement"]
      126 GETUPVAL                         R14 4
      127 DUPTABLE                         R15 K50 [{["Style"] = "SetMembership", ["TooltipMessage"], ["OnClick"], ["LayoutOrder"] = 1}]
      128 LOADK                            R18 K51 ["Tooltip"]
      129 LOADK                            R19 K52 ["Add"]
      130 NAMECALL                         R16 R3 K53 ["getText"]
      132 CALL                             R16 3 1
      133 SETTABLEKS                       R16 R15 K48 ["TooltipMessage"]
      135 GETTABLEKS                       R16 R1 K3 ["Group"]
      137 GETTABLEKS                       R16 R16 K54 ["OnMembershipSet"]
      139 SETTABLEKS                       R16 R15 K30 ["OnClick"]
      141 CALL                             R13 2 1
      142 JUMP                             ; [+1]
      143 LOADNIL                          R13
      144 SETTABLEKS                       R13 R12 K38 ["SetMembershipButton"]
      146 MOVE                             R13 R4
      147 JUMPIFNOT                        R13 ; [+28]
      148 GETUPVAL                         R13 2
      149 GETTABLEKS                       R13 R13 K17 ["createElement"]
      151 GETUPVAL                         R14 5
      152 DUPTABLE                         R15 K56 [{["Size"], ["Group"], ["LayoutOrder"] = 2}]
      153 GETIMPORT                        R17 K43 [game]
      155 LOADK                            R19 K46 ["CGERenameGroupOverflowFix"]
      156 NAMECALL                         R17 R17 K45 ["GetFastFlag"]
      158 CALL                             R17 2 1
      159 JUMPIFNOT                        R17 ; [+5]
      160 GETTABLEKS                       R16 R2 K14 ["GroupLabelStyle"]
      162 GETTABLEKS                       R16 R16 K15 ["CursorGroupNameLabelSize"]
      164 JUMP                             ; [+4]
      165 GETTABLEKS                       R16 R2 K14 ["GroupLabelStyle"]
      167 GETTABLEKS                       R16 R16 K16 ["GroupNameLabelSize"]
      169 SETTABLEKS                       R16 R15 K22 ["Size"]
      171 GETTABLEKS                       R16 R1 K3 ["Group"]
      173 SETTABLEKS                       R16 R15 K3 ["Group"]
      175 CALL                             R13 2 1
      176 SETTABLEKS                       R13 R12 K39 ["GroupRenameTextBox"]
      178 NOT                              R13 R4
      179 JUMPIFNOT                        R13 ; [+29]
      180 GETUPVAL                         R13 2
      181 GETTABLEKS                       R13 R13 K17 ["createElement"]
      183 GETUPVAL                         R14 6
      184 DUPTABLE                         R15 K62 [{["Size"], ["Style"] = "GroupLabel", ["LayoutOrder"] = 3, ["Text"], ["TextWrapped"] = True, ["TextTruncate"], ["TextXAlignment"], ["StyleModifier"]}]
      185 SETTABLEKS                       R8 R15 K22 ["Size"]
      187 SETTABLEKS                       R6 R15 K40 ["Text"]
      189 GETIMPORT                        R16 K64 [Enum.TextTruncate.AtEnd]
      191 SETTABLEKS                       R16 R15 K60 ["TextTruncate"]
      193 GETIMPORT                        R16 K66 [Enum.TextXAlignment.Right]
      195 SETTABLEKS                       R16 R15 K61 ["TextXAlignment"]
      197 SETTABLEKS                       R5 R15 K20 ["StyleModifier"]
      199 DUPTABLE                         R16 K68 [{"HoverArea"}]
      200 GETUPVAL                         R17 2
      201 GETTABLEKS                       R17 R17 K17 ["createElement"]
      203 GETUPVAL                         R18 7
      204 DUPTABLE                         R19 K71 [{["Cursor"] = "PointingHand"}]
      205 CALL                             R17 2 1
      206 SETTABLEKS                       R17 R16 K67 ["HoverArea"]
      208 CALL                             R13 3 1
      209 SETTABLEKS                       R13 R12 K40 ["Text"]
      211 CALL                             R9 3 -1
      212 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["UI"]
       27 GETTABLEKS                       R5 R4 K10 ["HoverArea"]
       29 GETTABLEKS                       R6 R4 K11 ["Pane"]
       31 GETTABLEKS                       R7 R4 K12 ["TextLabel"]
       33 GETTABLEKS                       R8 R2 K13 ["Util"]
       35 GETTABLEKS                       R8 R8 K14 ["StyleModifier"]
       37 GETIMPORT                        R9 K4 [require]
       39 GETIMPORT                        R10 K1 [script]
       41 GETTABLEKS                       R10 R10 K2 ["Parent"]
       43 GETTABLEKS                       R10 R10 K2 ["Parent"]
       45 GETTABLEKS                       R10 R10 K15 ["Constants"]
       47 CALL                             R9 1 1
       48 GETIMPORT                        R10 K4 [require]
       50 GETIMPORT                        R11 K1 [script]
       52 GETTABLEKS                       R11 R11 K2 ["Parent"]
       54 GETTABLEKS                       R11 R11 K16 ["GroupRenameTextBox"]
       56 CALL                             R10 1 1
       57 GETIMPORT                        R11 K4 [require]
       59 GETIMPORT                        R12 K1 [script]
       61 GETTABLEKS                       R12 R12 K2 ["Parent"]
       63 GETTABLEKS                       R12 R12 K17 ["GroupButton"]
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
