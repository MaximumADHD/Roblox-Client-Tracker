PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["GroupName"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R2 R0 K1 ["GroupName"]
        8 JUMPIFNOTEQKS                    R2 K2 [""] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 GETTABLEKS                       R3 R0 K3 ["Disabled"]
       14 NOT                              R2 R3
       15 JUMPIFNOT                        R1 ; [+26]
       16 JUMPIFNOT                        R2 ; [+49]
       17 GETTABLEKS                       R3 R0 K4 ["groupMenu"]
       19 JUMPIFEQKNIL                     R3 ; [+46]
       21 GETTABLEKS                       R3 R0 K4 ["groupMenu"]
       23 GETTABLEKS                       R4 R0 K1 ["GroupName"]
       25 JUMPIFNOTEQ                      R3 R4 ; [+40]
       27 GETTABLEKS                       R4 R0 K5 ["renamingGroup"]
       29 GETTABLEKS                       R5 R0 K1 ["GroupName"]
       31 JUMPIFNOTEQ                      R4 R5 ; [+2]
       33 LOADB                            R3 0 +1
       34 LOADB                            R3 1
       35 GETTABLEKS                       R4 R0 K6 ["setRenamingGroup"]
       37 GETTABLEKS                       R5 R0 K1 ["GroupName"]
       39 MOVE                             R6 R3
       40 CALL                             R4 2 0
       41 RETURN                           R0 0
       42 GETTABLEKS                       R3 R0 K7 ["tagMenu"]
       44 JUMPIFEQKNIL                     R3 ; [+21]
       46 GETTABLEKS                       R3 R0 K7 ["tagMenu"]
       48 GETTABLEKS                       R4 R0 K8 ["TagName"]
       50 JUMPIFNOTEQ                      R3 R4 ; [+15]
       52 GETTABLEKS                       R4 R0 K9 ["renamingTag"]
       54 GETTABLEKS                       R5 R0 K8 ["TagName"]
       56 JUMPIFNOTEQ                      R4 R5 ; [+2]
       58 LOADB                            R3 0 +1
       59 LOADB                            R3 1
       60 GETTABLEKS                       R4 R0 K10 ["setRenaming"]
       62 GETTABLEKS                       R5 R0 K8 ["TagName"]
       64 MOVE                             R6 R3
       65 CALL                             R4 2 0
       66 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["GroupName"]
        5 JUMPIFNOT                        R1 ; [+6]
        6 GETTABLEKS                       R2 R0 K1 ["GroupName"]
        8 JUMPIFNOTEQKS                    R2 K2 [""] ; [+2]
       10 LOADB                            R1 0 +1
       11 LOADB                            R1 1
       12 GETTABLEKS                       R3 R0 K3 ["Disabled"]
       14 NOT                              R2 R3
       15 JUMPIFNOT                        R1 ; [+17]
       16 JUMPIFNOT                        R2 ; [+31]
       17 GETTABLEKS                       R3 R0 K4 ["groupMenu"]
       19 JUMPIFEQKNIL                     R3 ; [+7]
       21 GETTABLEKS                       R3 R0 K4 ["groupMenu"]
       23 GETTABLEKS                       R4 R0 K1 ["GroupName"]
       25 JUMPIFEQ                         R3 R4 ; [+22]
       27 GETTABLEKS                       R3 R0 K5 ["openGroupMenu"]
       29 GETTABLEKS                       R4 R0 K1 ["GroupName"]
       31 CALL                             R3 1 0
       32 RETURN                           R0 0
       33 GETTABLEKS                       R3 R0 K6 ["tagMenu"]
       35 JUMPIFEQKNIL                     R3 ; [+7]
       37 GETTABLEKS                       R3 R0 K6 ["tagMenu"]
       39 GETTABLEKS                       R4 R0 K7 ["TagName"]
       41 JUMPIFEQ                         R3 R4 ; [+6]
       43 GETTABLEKS                       R3 R0 K8 ["openTagMenu"]
       45 GETTABLEKS                       R4 R0 K7 ["TagName"]
       47 CALL                             R3 1 0
       48 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["TagGroup"]
        5 GETTABLEKS                       R3 R0 K2 ["assigningGroup"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 1
       12 GETTABLEKS                       R2 R2 K3 ["Get"]
       14 CALL                             R2 0 1
       15 GETTABLEKS                       R4 R0 K4 ["TagName"]
       17 JUMPIFNOT                        R1 ; [+2]
       18 LOADK                            R5 K5 [""]
       19 JUMP                             ; [+2]
       20 GETTABLEKS                       R5 R0 K2 ["assigningGroup"]
       22 NAMECALL                         R2 R2 K6 ["SetGroup"]
       24 CALL                             R2 3 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Get"]
        6 CALL                             R1 0 1
        7 GETTABLEKS                       R3 R0 K2 ["TagName"]
        9 GETTABLEKS                       R5 R0 K3 ["IsTagAssignedToAll"]
       11 NOT                              R4 R5
       12 NAMECALL                         R1 R1 K4 ["SetTag"]
       14 CALL                             R1 3 0
       15 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["GroupName"]
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETTABLEKS                       R1 R0 K1 ["GroupName"]
        8 JUMPIFEQKS                       R1 K2 [""] ; [+14]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R1 R1 K3 ["Get"]
       13 CALL                             R1 0 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K0 ["props"]
       17 GETTABLEKS                       R3 R3 K1 ["GroupName"]
       19 NAMECALL                         R1 R1 K4 ["ToggleGroupVisibility"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K3 ["Get"]
       26 CALL                             R1 0 1
       27 GETTABLEKS                       R3 R0 K5 ["TagName"]
       29 GETTABLEKS                       R5 R0 K6 ["IsVisibleToggled"]
       31 NOT                              R4 R5
       32 NAMECALL                         R1 R1 K7 ["SetVisible"]
       34 CALL                             R1 3 0
       35 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["ToggleGroup"]
        5 GETTABLEKS                       R2 R0 K2 ["GroupName"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["GroupName"]
        5 GETTABLEKS                       R3 R0 K2 ["assigningGroup"]
        7 JUMPIFEQ                         R2 R3 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 JUMPIF                           R1 ; [+5]
       12 GETTABLEKS                       R2 R0 K3 ["openGroupMenu"]
       14 GETTABLEKS                       R3 R0 K1 ["GroupName"]
       16 CALL                             R2 1 0
       17 GETTABLEKS                       R2 R0 K4 ["setAssigningGroup"]
       19 JUMPIFNOT                        R1 ; [+2]
       20 LOADK                            R3 K5 [""]
       21 JUMP                             ; [+2]
       22 GETTABLEKS                       R3 R0 K1 ["GroupName"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_7:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onPress"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["onClick"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R1 R0 K2 ["toggleGroupMembership"]
       13 NEWCLOSURE                       R1 P3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U0
       16 SETTABLEKS                       R1 R0 K3 ["toggleAssignment"]
       18 NEWCLOSURE                       R1 P4
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 SETTABLEKS                       R1 R0 K4 ["toggleVisible"]
       23 NEWCLOSURE                       R1 P5
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K5 ["toggleGroup"]
       27 NEWCLOSURE                       R1 P6
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K6 ["editGroupMembership"]
       31 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["hovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["hovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["TagListRow"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETTABLEKS                       R5 R1 K2 ["Stylizer"]
       14 GETTABLEKS                       R5 R5 K5 ["VisibleIcon"]
       16 GETTABLEKS                       R6 R1 K2 ["Stylizer"]
       18 GETTABLEKS                       R6 R6 K6 ["VisibleOffIcon"]
       20 GETTABLEKS                       R7 R1 K7 ["GroupName"]
       22 JUMPIFNOT                        R7 ; [+6]
       23 GETTABLEKS                       R8 R1 K7 ["GroupName"]
       25 JUMPIFNOTEQKS                    R8 K8 [""] ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 GETTABLEKS                       R9 R1 K9 ["Disabled"]
       31 NOT                              R8 R9
       32 LOADB                            R9 0
       33 GETTABLEKS                       R10 R1 K10 ["assigningGroup"]
       35 JUMPIFEQKNIL                     R10 ; [+7]
       37 GETTABLEKS                       R10 R1 K10 ["assigningGroup"]
       39 JUMPIFNOTEQKS                    R10 K8 [""] ; [+2]
       41 LOADB                            R9 0 +1
       42 LOADB                            R9 1
       43 GETTABLEKS                       R11 R1 K11 ["TagGroup"]
       45 GETTABLEKS                       R12 R1 K10 ["assigningGroup"]
       47 JUMPIFEQ                         R11 R12 ; [+2]
       49 LOADB                            R10 0 +1
       50 LOADB                            R10 1
       51 GETTABLEKS                       R12 R1 K7 ["GroupName"]
       53 GETTABLEKS                       R13 R1 K10 ["assigningGroup"]
       55 JUMPIFEQ                         R12 R13 ; [+2]
       57 LOADB                            R11 0 +1
       58 LOADB                            R11 1
       59 MOVE                             R12 R9
       60 JUMPIFNOT                        R12 ; [+1]
       61 NOT                              R12 R11
       62 NOT                              R13 R7
       63 NOT                              R14 R7
       64 MOVE                             R15 R7
       65 JUMPIFNOT                        R15 ; [+1]
       66 NOT                              R15 R12
       67 NOT                              R16 R9
       68 LOADB                            R17 0
       69 GETTABLEKS                       R18 R1 K12 ["renamingGroup"]
       71 JUMPIFEQKNIL                     R18 ; [+9]
       73 GETTABLEKS                       R18 R1 K12 ["renamingGroup"]
       75 GETTABLEKS                       R19 R1 K7 ["GroupName"]
       77 JUMPIFNOTEQ                      R18 R19 ; [+3]
       79 LOADB                            R17 1
       80 JUMP                             ; [+11]
       81 GETTABLEKS                       R18 R1 K13 ["renamingTag"]
       83 JUMPIFEQKNIL                     R18 ; [+8]
       85 GETTABLEKS                       R18 R1 K13 ["renamingTag"]
       87 GETTABLEKS                       R19 R1 K14 ["TagName"]
       89 JUMPIFNOTEQ                      R18 R19 ; [+2]
       91 LOADB                            R17 1
       92 JUMPIFNOT                        R10 ; [+6]
       93 LOADK                            R20 K15 ["Tooltip"]
       94 LOADK                            R21 K16 ["UnassignFromGroup"]
       95 NAMECALL                         R18 R2 K17 ["getText"]
       97 CALL                             R18 3 1
       98 JUMP                             ; [+5]
       99 LOADK                            R20 K15 ["Tooltip"]
      100 LOADK                            R21 K18 ["AssignToGroup"]
      101 NAMECALL                         R18 R2 K17 ["getText"]
      103 CALL                             R18 3 1
      104 GETTABLEKS                       R20 R1 K19 ["IsTagAssignedToAll"]
      106 JUMPIFNOT                        R20 ; [+6]
      107 LOADK                            R21 K15 ["Tooltip"]
      108 LOADK                            R22 K20 ["RemoveTag"]
      109 NAMECALL                         R19 R2 K17 ["getText"]
      111 CALL                             R19 3 1
      112 JUMP                             ; [+5]
      113 LOADK                            R21 K15 ["Tooltip"]
      114 LOADK                            R22 K21 ["ApplyTag"]
      115 NAMECALL                         R19 R2 K17 ["getText"]
      117 CALL                             R19 3 1
      118 LOADNIL                          R20
      119 LOADB                            R21 0
      120 JUMPIFNOT                        R7 ; [+9]
      121 GETTABLEKS                       R22 R1 K22 ["groupMenu"]
      123 GETTABLEKS                       R23 R1 K7 ["GroupName"]
      125 JUMPIFEQ                         R22 R23 ; [+2]
      127 LOADB                            R21 0 +1
      128 LOADB                            R21 1
      129 JUMP                             ; [+8]
      130 GETTABLEKS                       R22 R1 K23 ["tagMenu"]
      132 GETTABLEKS                       R23 R1 K14 ["TagName"]
      134 JUMPIFEQ                         R22 R23 ; [+2]
      136 LOADB                            R21 0 +1
      137 LOADB                            R21 1
      138 JUMPIFNOT                        R21 ; [+2]
      139 LOADK                            R20 K24 ["SelectedTag"]
      140 JUMP                             ; [+6]
      141 GETTABLEKS                       R22 R0 K25 ["state"]
      143 GETTABLEKS                       R22 R22 K26 ["hovered"]
      145 JUMPIFNOT                        R22 ; [+1]
      146 LOADK                            R20 K27 ["PaneHover"]
      147 ORK                              R22 R20 K28 ["None"]
      148 GETUPVAL                         R23 1
      149 GETTABLEKS                       R23 R23 K29 ["createElement"]
      151 GETUPVAL                         R24 2
      152 DUPTABLE                         R25 K32 [{"LayoutOrder", "Size"}]
      153 GETTABLEKS                       R26 R1 K30 ["LayoutOrder"]
      155 SETTABLEKS                       R26 R25 K30 ["LayoutOrder"]
      157 GETTABLEKS                       R26 R3 K31 ["Size"]
      159 SETTABLEKS                       R26 R25 K31 ["Size"]
      161 DUPTABLE                         R26 K35 [{"HoverArea", "RootPane"}]
      162 GETUPVAL                         R27 1
      163 GETTABLEKS                       R27 R27 K29 ["createElement"]
      165 GETUPVAL                         R28 3
      166 DUPTABLE                         R29 K39 [{"Cursor", "MouseEnter", "MouseLeave"}]
      167 LOADK                            R30 K40 ["PointingHand"]
      168 SETTABLEKS                       R30 R29 K36 ["Cursor"]
      170 NEWCLOSURE                       R30 P0
      171 CAPTURE                          VAL R0
      172 SETTABLEKS                       R30 R29 K37 ["MouseEnter"]
      174 NEWCLOSURE                       R30 P1
      175 CAPTURE                          VAL R0
      176 SETTABLEKS                       R30 R29 K38 ["MouseLeave"]
      178 CALL                             R27 2 1
      179 SETTABLEKS                       R27 R26 K33 ["HoverArea"]
      181 GETUPVAL                         R27 1
      182 GETTABLEKS                       R27 R27 K29 ["createElement"]
      184 GETUPVAL                         R28 2
      185 DUPTABLE                         R29 K48 [{"Layout", "HorizontalAlignment", "Spacing", "Padding", "Style", "OnPress", "OnClick"}]
      186 GETIMPORT                        R30 K52 [Enum.FillDirection.Horizontal]
      188 SETTABLEKS                       R30 R29 K41 ["Layout"]
      190 GETIMPORT                        R30 K54 [Enum.HorizontalAlignment.Left]
      192 SETTABLEKS                       R30 R29 K42 ["HorizontalAlignment"]
      194 GETTABLEKS                       R30 R3 K43 ["Spacing"]
      196 SETTABLEKS                       R30 R29 K43 ["Spacing"]
      198 JUMPIF                           R7 ; [+4]
      199 GETTABLEKS                       R31 R1 K11 ["TagGroup"]
      201 JUMPIFNOTEQKS                    R31 K8 [""] ; [+4]
      203 GETTABLEKS                       R30 R3 K55 ["PaddingUnindented"]
      205 JUMP                             ; [+2]
      206 GETTABLEKS                       R30 R3 K56 ["PaddingIndented"]
      208 SETTABLEKS                       R30 R29 K44 ["Padding"]
      210 SETTABLEKS                       R20 R29 K45 ["Style"]
      212 GETTABLEKS                       R30 R0 K57 ["onPress"]
      214 SETTABLEKS                       R30 R29 K46 ["OnPress"]
      216 GETTABLEKS                       R30 R0 K58 ["onClick"]
      218 SETTABLEKS                       R30 R29 K47 ["OnClick"]
      220 DUPTABLE                         R30 K66 [{"ArrowImage", "CheckboxPane", "TagImage", "NameText", "RenameTextInput", "EditGroupMembership", "VisibleToggleButton"}]
      221 MOVE                             R31 R7
      222 JUMPIFNOT                        R31 ; [+27]
      223 GETUPVAL                         R31 1
      224 GETTABLEKS                       R31 R31 K29 ["createElement"]
      226 GETUPVAL                         R32 4
      227 DUPTABLE                         R33 K69 [{"BackgroundStyle", "LeftIcon", "OnClick", "LayoutOrder"}]
      228 SETTABLEKS                       R22 R33 K67 ["BackgroundStyle"]
      230 GETTABLEKS                       R35 R1 K70 ["IsGroupCollapsed"]
      232 JUMPIFNOT                        R35 ; [+3]
      233 GETTABLEKS                       R34 R3 K71 ["ClosedArrowImage"]
      235 JUMP                             ; [+2]
      236 GETTABLEKS                       R34 R3 K72 ["OpenArrowImage"]
      238 SETTABLEKS                       R34 R33 K68 ["LeftIcon"]
      240 GETTABLEKS                       R34 R0 K73 ["toggleGroup"]
      242 SETTABLEKS                       R34 R33 K47 ["OnClick"]
      244 NAMECALL                         R34 R4 K74 ["getNextOrder"]
      246 CALL                             R34 1 1
      247 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      249 CALL                             R31 2 1
      250 SETTABLEKS                       R31 R30 K59 ["ArrowImage"]
      252 MOVE                             R31 R13
      253 JUMPIFNOT                        R31 ; [+90]
      254 GETUPVAL                         R31 1
      255 GETTABLEKS                       R31 R31 K29 ["createElement"]
      257 GETUPVAL                         R32 2
      258 DUPTABLE                         R33 K75 [{"LayoutOrder", "Size", "Layout"}]
      259 NAMECALL                         R34 R4 K74 ["getNextOrder"]
      261 CALL                             R34 1 1
      262 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      264 GETTABLEKS                       R34 R3 K76 ["CheckboxSize"]
      266 SETTABLEKS                       R34 R33 K31 ["Size"]
      268 GETIMPORT                        R34 K52 [Enum.FillDirection.Horizontal]
      270 SETTABLEKS                       R34 R33 K41 ["Layout"]
      272 DUPTABLE                         R34 K79 [{"ToggleGroupMembershipButton", "Checkbox"}]
      273 MOVE                             R35 R9
      274 JUMPIFNOT                        R35 ; [+30]
      275 GETUPVAL                         R35 1
      276 GETTABLEKS                       R35 R35 K29 ["createElement"]
      278 GETUPVAL                         R36 4
      279 DUPTABLE                         R37 K82 [{"BackgroundStyle", "LeftIcon", "OnClick", "IconColor", "TooltipText"}]
      280 SETTABLEKS                       R22 R37 K67 ["BackgroundStyle"]
      282 JUMPIFNOT                        R10 ; [+3]
      283 GETTABLEKS                       R38 R3 K83 ["UnassignIcon"]
      285 JUMP                             ; [+2]
      286 GETTABLEKS                       R38 R3 K84 ["AssignIcon"]
      288 SETTABLEKS                       R38 R37 K68 ["LeftIcon"]
      290 GETTABLEKS                       R38 R0 K85 ["toggleGroupMembership"]
      292 SETTABLEKS                       R38 R37 K47 ["OnClick"]
      294 JUMPIFNOT                        R10 ; [+3]
      295 GETTABLEKS                       R38 R3 K86 ["UnassignIconColor"]
      297 JUMP                             ; [+2]
      298 GETTABLEKS                       R38 R3 K87 ["AssignIconColor"]
      300 SETTABLEKS                       R38 R37 K80 ["IconColor"]
      302 SETTABLEKS                       R18 R37 K81 ["TooltipText"]
      304 CALL                             R35 2 1
      305 SETTABLEKS                       R35 R34 K77 ["ToggleGroupMembershipButton"]
      307 NOT                              R35 R9
      308 JUMPIFNOT                        R35 ; [+32]
      309 GETUPVAL                         R35 1
      310 GETTABLEKS                       R35 R35 K29 ["createElement"]
      312 GETUPVAL                         R36 5
      313 DUPTABLE                         R37 K89 [{"Checked", "OnClick"}]
      314 GETTABLEKS                       R39 R1 K90 ["IsTagAssignedToSome"]
      316 JUMPIFNOT                        R39 ; [+4]
      317 GETUPVAL                         R38 5
      318 GETTABLEKS                       R38 R38 K91 ["Indeterminate"]
      320 JUMP                             ; [+2]
      321 GETTABLEKS                       R38 R1 K19 ["IsTagAssignedToAll"]
      323 SETTABLEKS                       R38 R37 K88 ["Checked"]
      325 GETTABLEKS                       R38 R0 K92 ["toggleAssignment"]
      327 SETTABLEKS                       R38 R37 K47 ["OnClick"]
      329 DUPTABLE                         R38 K93 [{"Tooltip"}]
      330 GETUPVAL                         R39 1
      331 GETTABLEKS                       R39 R39 K29 ["createElement"]
      333 GETUPVAL                         R40 6
      334 DUPTABLE                         R41 K95 [{"Text"}]
      335 SETTABLEKS                       R19 R41 K94 ["Text"]
      337 CALL                             R39 2 1
      338 SETTABLEKS                       R39 R38 K15 ["Tooltip"]
      340 CALL                             R35 3 1
      341 SETTABLEKS                       R35 R34 K78 ["Checkbox"]
      343 CALL                             R31 3 1
      344 SETTABLEKS                       R31 R30 K60 ["CheckboxPane"]
      346 MOVE                             R31 R14
      347 JUMPIFNOT                        R31 ; [+19]
      348 GETUPVAL                         R31 1
      349 GETTABLEKS                       R31 R31 K29 ["createElement"]
      351 GETUPVAL                         R32 7
      352 DUPTABLE                         R33 K97 [{"Name", "OnClick", "LayoutOrder"}]
      353 GETTABLEKS                       R34 R1 K98 ["TagIcon"]
      355 SETTABLEKS                       R34 R33 K96 ["Name"]
      357 GETTABLEKS                       R34 R0 K99 ["OnButtonClicked"]
      359 SETTABLEKS                       R34 R33 K47 ["OnClick"]
      361 NAMECALL                         R34 R4 K74 ["getNextOrder"]
      363 CALL                             R34 1 1
      364 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      366 CALL                             R31 2 1
      367 SETTABLEKS                       R31 R30 K61 ["TagImage"]
      369 NOT                              R31 R17
      370 JUMPIFNOT                        R31 ; [+35]
      371 GETUPVAL                         R31 1
      372 GETTABLEKS                       R31 R31 K29 ["createElement"]
      374 GETUPVAL                         R32 8
      375 DUPTABLE                         R33 K102 [{"LayoutOrder", "Text", "Size", "TextXAlignment", "TextTruncate"}]
      376 NAMECALL                         R34 R4 K74 ["getNextOrder"]
      378 CALL                             R34 1 1
      379 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      381 JUMPIFNOT                        R7 ; [+3]
      382 GETTABLEKS                       R34 R1 K7 ["GroupName"]
      384 JUMP                             ; [+2]
      385 GETTABLEKS                       R34 R1 K14 ["TagName"]
      387 SETTABLEKS                       R34 R33 K94 ["Text"]
      389 JUMPIFNOT                        R7 ; [+3]
      390 GETTABLEKS                       R34 R3 K103 ["GroupTextSize"]
      392 JUMP                             ; [+2]
      393 GETTABLEKS                       R34 R3 K104 ["TextSize"]
      395 SETTABLEKS                       R34 R33 K31 ["Size"]
      397 GETIMPORT                        R34 K105 [Enum.TextXAlignment.Left]
      399 SETTABLEKS                       R34 R33 K100 ["TextXAlignment"]
      401 GETIMPORT                        R34 K107 [Enum.TextTruncate.AtEnd]
      403 SETTABLEKS                       R34 R33 K101 ["TextTruncate"]
      405 CALL                             R31 2 1
      406 SETTABLEKS                       R31 R30 K62 ["NameText"]
      408 MOVE                             R31 R17
      409 JUMPIFNOT                        R31 ; [+19]
      410 GETUPVAL                         R31 1
      411 GETTABLEKS                       R31 R31 K29 ["createElement"]
      413 GETUPVAL                         R32 9
      414 DUPTABLE                         R33 K32 [{"LayoutOrder", "Size"}]
      415 NAMECALL                         R34 R4 K74 ["getNextOrder"]
      417 CALL                             R34 1 1
      418 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      420 JUMPIFNOT                        R7 ; [+3]
      421 GETTABLEKS                       R34 R3 K103 ["GroupTextSize"]
      423 JUMP                             ; [+2]
      424 GETTABLEKS                       R34 R3 K104 ["TextSize"]
      426 SETTABLEKS                       R34 R33 K31 ["Size"]
      428 CALL                             R31 2 1
      429 SETTABLEKS                       R31 R30 K63 ["RenameTextInput"]
      431 MOVE                             R31 R15
      432 JUMPIFNOT                        R31 ; [+43]
      433 GETUPVAL                         R31 1
      434 GETTABLEKS                       R31 R31 K29 ["createElement"]
      436 GETUPVAL                         R32 4
      437 DUPTABLE                         R33 K108 [{"BackgroundStyle", "LeftIcon", "OnClick", "LayoutOrder", "TooltipText"}]
      438 SETTABLEKS                       R22 R33 K67 ["BackgroundStyle"]
      440 JUMPIFNOT                        R8 ; [+8]
      441 JUMPIF                           R12 ; [+7]
      442 JUMPIFNOT                        R11 ; [+3]
      443 GETTABLEKS                       R34 R3 K109 ["StopAssigningIcon"]
      445 JUMP                             ; [+4]
      446 GETTABLEKS                       R34 R3 K110 ["EditAssignmentsIcon"]
      448 JUMP                             ; [+1]
      449 LOADNIL                          R34
      450 SETTABLEKS                       R34 R33 K68 ["LeftIcon"]
      452 GETTABLEKS                       R34 R0 K111 ["editGroupMembership"]
      454 SETTABLEKS                       R34 R33 K47 ["OnClick"]
      456 NAMECALL                         R34 R4 K74 ["getNextOrder"]
      458 CALL                             R34 1 1
      459 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      461 JUMPIFNOT                        R11 ; [+6]
      462 LOADK                            R36 K15 ["Tooltip"]
      463 LOADK                            R37 K112 ["EndGroupAssignment"]
      464 NAMECALL                         R34 R2 K17 ["getText"]
      466 CALL                             R34 3 1
      467 JUMP                             ; [+5]
      468 LOADK                            R36 K15 ["Tooltip"]
      469 LOADK                            R37 K113 ["StartGroupAssignment"]
      470 NAMECALL                         R34 R2 K17 ["getText"]
      472 CALL                             R34 3 1
      473 SETTABLEKS                       R34 R33 K81 ["TooltipText"]
      475 CALL                             R31 2 1
      476 SETTABLEKS                       R31 R30 K64 ["EditGroupMembership"]
      478 MOVE                             R31 R16
      479 JUMPIFNOT                        R31 ; [+32]
      480 GETUPVAL                         R31 1
      481 GETTABLEKS                       R31 R31 K29 ["createElement"]
      483 GETUPVAL                         R32 4
      484 DUPTABLE                         R33 K108 [{"BackgroundStyle", "LeftIcon", "OnClick", "LayoutOrder", "TooltipText"}]
      485 SETTABLEKS                       R22 R33 K67 ["BackgroundStyle"]
      487 GETTABLEKS                       R35 R1 K114 ["IsVisibleToggled"]
      489 JUMPIFNOT                        R35 ; [+2]
      490 MOVE                             R34 R5
      491 JUMP                             ; [+1]
      492 MOVE                             R34 R6
      493 SETTABLEKS                       R34 R33 K68 ["LeftIcon"]
      495 GETTABLEKS                       R34 R0 K115 ["toggleVisible"]
      497 SETTABLEKS                       R34 R33 K47 ["OnClick"]
      499 NAMECALL                         R34 R4 K74 ["getNextOrder"]
      501 CALL                             R34 1 1
      502 SETTABLEKS                       R34 R33 K30 ["LayoutOrder"]
      504 LOADK                            R36 K15 ["Tooltip"]
      505 LOADK                            R37 K116 ["ToggleVisibility"]
      506 NAMECALL                         R34 R2 K17 ["getText"]
      508 CALL                             R34 3 1
      509 SETTABLEKS                       R34 R33 K81 ["TooltipText"]
      511 CALL                             R31 2 1
      512 SETTABLEKS                       R31 R30 K65 ["VisibleToggleButton"]
      514 CALL                             R27 3 1
      515 SETTABLEKS                       R27 R26 K34 ["RootPane"]
      517 CALL                             R23 3 -1
      518 RETURN                           R23 -1

PROTO_11:
        0 DUPTABLE                         R2 K5 [{"assigningGroup", "groupMenu", "renamingGroup", "tagMenu", "renamingTag"}]
        1 GETTABLEKS                       R3 R0 K6 ["AssigningGroup"]
        3 SETTABLEKS                       R3 R2 K0 ["assigningGroup"]
        5 GETTABLEKS                       R3 R0 K7 ["GroupMenu"]
        7 SETTABLEKS                       R3 R2 K1 ["groupMenu"]
        9 GETTABLEKS                       R3 R0 K8 ["RenamingGroup"]
       11 SETTABLEKS                       R3 R2 K2 ["renamingGroup"]
       13 GETTABLEKS                       R3 R0 K9 ["TagMenu"]
       15 SETTABLEKS                       R3 R2 K3 ["tagMenu"]
       17 GETTABLEKS                       R3 R0 K10 ["RenamingTag"]
       19 SETTABLEKS                       R3 R2 K4 ["renamingTag"]
       21 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["OpenTagMenu"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["SetRenaming"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SetAssigningGroup"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["SetRenamingGroup"]
        4 MOVE                             R4 R0
        5 MOVE                             R5 R1
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 0
        8 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["OpenGroupMenu"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_17:
        0 DUPTABLE                         R1 K5 [{"openTagMenu", "setRenaming", "setAssigningGroup", "setRenamingGroup", "openGroupMenu"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["openTagMenu"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R2 R1 K1 ["setRenaming"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 SETTABLEKS                       R2 R1 K2 ["setAssigningGroup"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U0
       19 SETTABLEKS                       R2 R1 K3 ["setRenamingGroup"]
       21 NEWCLOSURE                       R2 P4
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U0
       24 SETTABLEKS                       R2 R1 K4 ["openGroupMenu"]
       26 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Packages"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Packages"]
       27 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K7 ["Packages"]
       34 GETTABLEKS                       R5 R5 K10 ["Framework"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       39 GETTABLEKS                       R6 R5 K12 ["withContext"]
       41 GETTABLEKS                       R7 R5 K13 ["Analytics"]
       43 GETTABLEKS                       R8 R5 K14 ["Localization"]
       45 GETTABLEKS                       R9 R4 K15 ["Style"]
       47 GETTABLEKS                       R9 R9 K16 ["Stylizer"]
       49 GETIMPORT                        R10 K4 [require]
       51 GETTABLEKS                       R11 R0 K5 ["Src"]
       53 GETTABLEKS                       R11 R11 K17 ["Actions"]
       55 CALL                             R10 1 1
       56 GETIMPORT                        R11 K4 [require]
       58 GETTABLEKS                       R12 R0 K5 ["Src"]
       60 GETTABLEKS                       R12 R12 K18 ["TagManager"]
       62 CALL                             R11 1 1
       63 GETTABLEKS                       R12 R4 K19 ["UI"]
       65 GETTABLEKS                       R13 R12 K20 ["Checkbox"]
       67 GETTABLEKS                       R14 R12 K21 ["HoverArea"]
       69 GETTABLEKS                       R15 R12 K22 ["IconButton"]
       71 GETTABLEKS                       R16 R12 K23 ["Pane"]
       73 GETTABLEKS                       R17 R12 K24 ["TextLabel"]
       75 GETTABLEKS                       R18 R12 K25 ["Tooltip"]
       77 GETTABLEKS                       R19 R4 K26 ["Util"]
       79 GETTABLEKS                       R20 R19 K27 ["LayoutOrderIterator"]
       81 GETIMPORT                        R21 K4 [require]
       83 GETIMPORT                        R22 K1 [script]
       85 GETTABLEKS                       R22 R22 K2 ["Parent"]
       87 GETTABLEKS                       R22 R22 K28 ["Icon"]
       89 CALL                             R21 1 1
       90 GETIMPORT                        R22 K4 [require]
       92 GETIMPORT                        R23 K1 [script]
       94 GETTABLEKS                       R23 R23 K2 ["Parent"]
       96 GETTABLEKS                       R23 R23 K29 ["TagRenameTextInput"]
       98 CALL                             R22 1 1
       99 GETTABLEKS                       R23 R2 K30 ["PureComponent"]
      101 LOADK                            R25 K31 ["TagListRow"]
      102 NAMECALL                         R23 R23 K32 ["extend"]
      104 CALL                             R23 2 1
      105 DUPCLOSURE                       R24 K33 [PROTO_7]
      106 CAPTURE                          VAL R11
      107 SETTABLEKS                       R24 R23 K34 ["init"]
      109 DUPCLOSURE                       R24 K35 [PROTO_10]
      110 CAPTURE                          VAL R20
      111 CAPTURE                          VAL R2
      112 CAPTURE                          VAL R16
      113 CAPTURE                          VAL R14
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R18
      117 CAPTURE                          VAL R21
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R22
      120 SETTABLEKS                       R24 R23 K36 ["render"]
      122 MOVE                             R24 R6
      123 DUPTABLE                         R25 K37 [{"Analytics", "Localization", "Stylizer"}]
      124 SETTABLEKS                       R7 R25 K13 ["Analytics"]
      126 SETTABLEKS                       R8 R25 K14 ["Localization"]
      128 SETTABLEKS                       R9 R25 K16 ["Stylizer"]
      130 CALL                             R24 1 1
      131 MOVE                             R25 R23
      132 CALL                             R24 1 1
      133 MOVE                             R23 R24
      134 DUPCLOSURE                       R24 K38 [PROTO_11]
      135 DUPCLOSURE                       R25 K39 [PROTO_17]
      136 CAPTURE                          VAL R10
      137 GETTABLEKS                       R26 R3 K40 ["connect"]
      139 MOVE                             R27 R24
      140 MOVE                             R28 R25
      141 CALL                             R26 2 1
      142 MOVE                             R27 R23
      143 CALL                             R26 1 -1
      144 RETURN                           R26 -1
