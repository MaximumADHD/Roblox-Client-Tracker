PROTO_0:
        0 DUPTABLE                         R1 K1 [{"isHovered"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isHovered"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 1
        3 JUMPIFNOT                        R0 ; [+2]
        4 GETUPVAL                         R0 1
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovered"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovered"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isHovered"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Enabled"]
        4 GETTABLEKS                       R3 R1 K2 ["OnClicked"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R7 R0 K4 ["state"]
       10 GETTABLEKS                       R6 R7 K5 ["isHovered"]
       12 JUMPIFNOT                        R6 ; [+2]
       13 LOADN                            R5 0
       14 JUMP                             ; [+1]
       15 LOADN                            R5 1
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K6 ["createElement"]
       19 LOADK                            R7 K7 ["ImageButton"]
       20 NEWTABLE                         R8 16 0
       22 GETIMPORT                        R9 K10 [UDim2.new]
       24 LOADN                            R10 0
       25 GETTABLEKS                       R13 R4 K11 ["collaboratorItem"]
       27 GETTABLEKS                       R12 R13 K12 ["deleteButton"]
       29 GETTABLEKS                       R11 R12 K13 ["size"]
       31 LOADN                            R12 0
       32 GETTABLEKS                       R15 R4 K11 ["collaboratorItem"]
       34 GETTABLEKS                       R14 R15 K12 ["deleteButton"]
       36 GETTABLEKS                       R13 R14 K13 ["size"]
       38 CALL                             R9 4 1
       39 SETTABLEKS                       R9 R8 K14 ["Size"]
       41 GETIMPORT                        R9 K10 [UDim2.new]
       43 LOADN                            R10 1
       44 GETTABLEKS                       R12 R4 K11 ["collaboratorItem"]
       46 GETTABLEKS                       R11 R12 K15 ["xOffset"]
       48 LOADK                            R12 K16 [0.5]
       49 LOADN                            R13 0
       50 CALL                             R9 4 1
       51 SETTABLEKS                       R9 R8 K17 ["Position"]
       53 GETIMPORT                        R9 K19 [Vector2.new]
       55 LOADN                            R10 1
       56 LOADK                            R11 K16 [0.5]
       57 CALL                             R9 2 1
       58 SETTABLEKS                       R9 R8 K20 ["AnchorPoint"]
       60 GETTABLEKS                       R9 R4 K21 ["deleteIcon"]
       62 SETTABLEKS                       R9 R8 K22 ["Image"]
       64 SETTABLEKS                       R5 R8 K23 ["BackgroundTransparency"]
       66 GETTABLEKS                       R11 R4 K11 ["collaboratorItem"]
       68 GETTABLEKS                       R10 R11 K12 ["deleteButton"]
       70 GETTABLEKS                       R9 R10 K24 ["hovered"]
       72 SETTABLEKS                       R9 R8 K25 ["BackgroundColor3"]
       74 GETUPVAL                         R11 0
       75 GETTABLEKS                       R10 R11 K26 ["Event"]
       77 GETTABLEKS                       R9 R10 K27 ["Activated"]
       79 NEWCLOSURE                       R10 P0
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 SETTABLE                         R10 R8 R9
       83 GETUPVAL                         R11 0
       84 GETTABLEKS                       R10 R11 K26 ["Event"]
       86 GETTABLEKS                       R9 R10 K28 ["MouseEnter"]
       88 NEWCLOSURE                       R10 P1
       89 CAPTURE                          VAL R0
       90 SETTABLE                         R10 R8 R9
       91 GETUPVAL                         R11 0
       92 GETTABLEKS                       R10 R11 K26 ["Event"]
       94 GETTABLEKS                       R9 R10 K29 ["MouseLeave"]
       96 NEWCLOSURE                       R10 P2
       97 CAPTURE                          VAL R0
       98 SETTABLE                         R10 R8 R9
       99 CALL                             R6 2 -1
      100 RETURN                           R6 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["CurrentPermission"]
        4 GETTABLEKS                       R3 R1 K2 ["AvailablePermissions"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["MultipleKey"]
       11 JUMPIFNOTEQ                      R2 R5 ; [+7]
       13 LOADK                            R7 K5 ["PermissionLabels"]
       14 LOADK                            R8 K6 ["Multiple"]
       15 NAMECALL                         R5 R4 K7 ["getText"]
       17 CALL                             R5 3 -1
       18 RETURN                           R5 -1
       19 MOVE                             R5 R3
       20 LOADNIL                          R6
       21 LOADNIL                          R7
       22 FORGPREP                         R5
       23 GETTABLEKS                       R10 R9 K8 ["Key"]
       25 JUMPIFNOTEQ                      R10 R2 ; [+4]
       27 GETTABLEKS                       R10 R9 K9 ["Display"]
       29 RETURN                           R10 1
       30 FORGLOOP                         R5 2 ; [-8]
       32 GETUPVAL                         R5 1
       33 JUMPIFNOT                        R5 ; [+34]
       34 GETUPVAL                         R5 2
       35 JUMPIFNOT                        R5 ; [+26]
       36 GETUPVAL                         R6 3
       37 GETTABLE                         R5 R6 R2
       38 NEWTABLE                         R6 0 0
       40 MOVE                             R7 R3
       41 LOADNIL                          R8
       42 LOADNIL                          R9
       43 FORGPREP                         R7
       44 GETUPVAL                         R15 3
       45 GETTABLEKS                       R16 R11 K8 ["Key"]
       47 GETTABLE                         R14 R15 R16
       48 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       50 MOVE                             R13 R6
       51 GETIMPORT                        R12 K12 [table.insert]
       53 CALL                             R12 2 0
       54 FORGLOOP                         R7 2 ; [-11]
       56 GETUPVAL                         R8 4
       57 GETTABLEKS                       R7 R8 K13 ["reportUnknownPermission"]
       59 MOVE                             R8 R5
       60 MOVE                             R9 R6
       61 CALL                             R7 2 0
       62 LOADK                            R7 K5 ["PermissionLabels"]
       63 LOADK                            R8 K14 ["Edit"]
       64 NAMECALL                         R5 R4 K7 ["getText"]
       66 CALL                             R5 3 -1
       67 RETURN                           R5 -1
       68 LOADB                            R6 0
       69 FASTCALL1                        ASSERT R6 ; [+2]
       70 GETIMPORT                        R5 K16 [assert]
       72 CALL                             R5 1 0
       73 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["createElement"]
        3 GETUPVAL                         R6 1
        4 DUPTABLE                         R7 K7 [{"LayoutOrder", "Size", "Style", "Text", "TextWrapped", "TextXAlignment"}]
        5 SETTABLEKS                       R4 R7 K1 ["LayoutOrder"]
        7 GETIMPORT                        R8 K10 [UDim2.new]
        9 LOADN                            R9 1
       10 LOADN                            R10 0
       11 LOADN                            R11 0
       12 MOVE                             R12 R2
       13 CALL                             R8 4 1
       14 SETTABLEKS                       R8 R7 K2 ["Size"]
       16 SETTABLEKS                       R1 R7 K3 ["Style"]
       18 SETTABLEKS                       R0 R7 K4 ["Text"]
       20 LOADB                            R8 1
       21 SETTABLEKS                       R8 R7 K5 ["TextWrapped"]
       23 GETIMPORT                        R8 K13 [Enum.TextXAlignment.Left]
       25 SETTABLEKS                       R8 R7 K6 ["TextXAlignment"]
       27 DUPTABLE                         R8 K15 [{"Padding"}]
       28 GETUPVAL                         R10 0
       29 GETTABLEKS                       R9 R10 K0 ["createElement"]
       31 LOADK                            R10 K16 ["UIPadding"]
       32 DUPTABLE                         R11 K19 [{"PaddingTop", "PaddingLeft"}]
       33 GETIMPORT                        R12 K21 [UDim.new]
       35 LOADN                            R13 0
       36 MOVE                             R14 R3
       37 CALL                             R12 2 1
       38 SETTABLEKS                       R12 R11 K17 ["PaddingTop"]
       40 GETIMPORT                        R12 K21 [UDim.new]
       42 LOADN                            R13 0
       43 MOVE                             R14 R3
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R11 K18 ["PaddingLeft"]
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K14 ["Padding"]
       50 CALL                             R5 3 -1
       51 RETURN                           R5 -1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Writable"]
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETTABLEKS                       R1 R0 K2 ["Key"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["props"]
       11 GETTABLEKS                       R2 R3 K3 ["CurrentPermission"]
       13 JUMPIFEQ                         R1 R2 ; [+9]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K0 ["props"]
       18 GETTABLEKS                       R1 R2 K4 ["OnPermissionChanged"]
       20 GETTABLEKS                       R2 R0 K2 ["Key"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R3 R4 K1 ["Stylizer"]
        5 GETTABLEKS                       R4 R0 K2 ["Display"]
        7 GETTABLEKS                       R5 R0 K3 ["Description"]
        9 GETUPVAL                         R7 1
       10 GETTABLEKS                       R6 R7 K4 ["createElement"]
       12 GETUPVAL                         R7 2
       13 DUPTABLE                         R8 K8 [{"Size", "LayoutOrder", "OnClick"}]
       14 GETIMPORT                        R9 K11 [UDim2.new]
       16 LOADN                            R10 1
       17 LOADN                            R11 0
       18 LOADN                            R12 0
       19 GETTABLEKS                       R15 R3 K12 ["selectInput"]
       21 GETTABLEKS                       R14 R15 K13 ["button"]
       23 GETTABLEKS                       R13 R14 K14 ["height"]
       25 CALL                             R9 4 1
       26 SETTABLEKS                       R9 R8 K5 ["Size"]
       28 SETTABLEKS                       R1 R8 K6 ["LayoutOrder"]
       30 SETTABLEKS                       R2 R8 K7 ["OnClick"]
       32 DUPTABLE                         R9 K18 [{"UILayout", "MainTextLabel", "DescriptionTextLabel"}]
       33 GETUPVAL                         R11 1
       34 GETTABLEKS                       R10 R11 K4 ["createElement"]
       36 LOADK                            R11 K19 ["UIListLayout"]
       37 DUPTABLE                         R12 K24 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
       38 GETIMPORT                        R13 K27 [Enum.FillDirection.Vertical]
       40 SETTABLEKS                       R13 R12 K20 ["FillDirection"]
       42 GETIMPORT                        R13 K29 [UDim.new]
       44 LOADN                            R14 0
       45 LOADN                            R15 0
       46 CALL                             R13 2 1
       47 SETTABLEKS                       R13 R12 K21 ["Padding"]
       49 GETIMPORT                        R13 K30 [Enum.SortOrder.LayoutOrder]
       51 SETTABLEKS                       R13 R12 K22 ["SortOrder"]
       53 GETIMPORT                        R13 K32 [Enum.VerticalAlignment.Top]
       55 SETTABLEKS                       R13 R12 K23 ["VerticalAlignment"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K15 ["UILayout"]
       60 GETGLOBAL                        R10 K33 ["createTextLabel"]
       62 MOVE                             R11 R4
       63 LOADK                            R12 K34 ["Normal"]
       64 GETTABLEKS                       R15 R3 K35 ["fontStyle"]
       66 GETTABLEKS                       R14 R15 K34 ["Normal"]
       68 GETTABLEKS                       R13 R14 K36 ["TextSize"]
       70 GETTABLEKS                       R15 R3 K12 ["selectInput"]
       72 GETTABLEKS                       R14 R15 K37 ["padding"]
       74 LOADN                            R15 0
       75 CALL                             R10 5 1
       76 SETTABLEKS                       R10 R9 K16 ["MainTextLabel"]
       78 GETGLOBAL                        R10 K33 ["createTextLabel"]
       80 MOVE                             R11 R5
       81 LOADK                            R12 K38 ["SubText"]
       82 GETTABLEKS                       R15 R3 K35 ["fontStyle"]
       84 GETTABLEKS                       R14 R15 K39 ["Subtext"]
       86 GETTABLEKS                       R13 R14 K36 ["TextSize"]
       88 GETTABLEKS                       R15 R3 K12 ["selectInput"]
       90 GETTABLEKS                       R14 R15 K37 ["padding"]
       92 LOADN                            R15 1
       93 CALL                             R10 5 1
       94 SETTABLEKS                       R10 R9 K17 ["DescriptionTextLabel"]
       96 CALL                             R6 3 -1
       97 RETURN                           R6 -1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onItemActivated"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 SETTABLEKS                       R1 R0 K1 ["onRenderItem"]
       10 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["LayoutOrder"]
        4 GETTABLEKS                       R3 R1 K2 ["Name"]
        6 GETTABLEKS                       R4 R1 K3 ["Icon"]
        8 GETTABLEKS                       R5 R1 K4 ["Writable"]
       10 GETTABLEKS                       R6 R1 K5 ["Loading"]
       12 GETTABLEKS                       R7 R1 K6 ["Removable"]
       14 GETTABLEKS                       R8 R1 K7 ["OnRemoved"]
       16 GETTABLEKS                       R9 R1 K8 ["AvailablePermissions"]
       18 GETTABLEKS                       R10 R1 K9 ["IsRolesetCollaborator"]
       20 GETTABLEKS                       R11 R1 K10 ["HideSeparator"]
       22 GETUPVAL                         R13 0
       23 JUMPIF                           R13 ; [+3]
       24 GETTABLEKS                       R12 R1 K11 ["hidePermissionsForNonGroupOwner"]
       26 JUMP                             ; [+1]
       27 LOADNIL                          R12
       28 GETUPVAL                         R14 0
       29 JUMPIFNOT                        R14 ; [+3]
       30 GETTABLEKS                       R13 R1 K12 ["TooltipText"]
       32 JUMP                             ; [+1]
       33 LOADNIL                          R13
       34 GETUPVAL                         R15 0
       35 JUMPIFNOT                        R15 ; [+3]
       36 GETTABLEKS                       R14 R1 K13 ["IsOwner"]
       38 JUMP                             ; [+1]
       39 LOADNIL                          R14
       40 GETTABLEKS                       R15 R1 K14 ["SubText"]
       42 GETTABLEKS                       R16 R1 K15 ["Localization"]
       44 GETTABLEKS                       R17 R1 K16 ["Stylizer"]
       46 GETUPVAL                         R19 0
       47 JUMPIFNOT                        R19 ; [+2]
       48 MOVE                             R18 R5
       49 JUMP                             ; [+8]
       50 MOVE                             R18 R5
       51 JUMPIFNOT                        R18 ; [+6]
       52 LENGTH                           R19 R9
       53 LOADN                            R20 1
       54 JUMPIFLT                         R20 R19 ; [+2]
       56 LOADB                            R18 0 +1
       57 LOADB                            R18 1
       58 GETUPVAL                         R20 0
       59 JUMPIFNOT                        R20 ; [+2]
       60 MOVE                             R19 R7
       61 JUMP                             ; [+1]
       62 AND                              R19 R5 R7
       63 JUMPIFNOT                        R10 ; [+5]
       64 GETTABLEKS                       R21 R17 K17 ["collaboratorItem"]
       66 GETTABLEKS                       R20 R21 K18 ["rolesetFrame"]
       68 JUMP                             ; [+4]
       69 GETTABLEKS                       R21 R17 K17 ["collaboratorItem"]
       71 GETTABLEKS                       R20 R21 K19 ["nonRolesetFrame"]
       73 JUMPIF                           R10 ; [+1]
       74 JUMPIF                           R19 ; [+2]
       75 LOADN                            R21 0
       76 JUMP                             ; [+1]
       77 LOADN                            R21 232
       78 JUMPIFNOT                        R4 ; [+9]
       79 GETTABLEKS                       R25 R17 K17 ["collaboratorItem"]
       81 GETTABLEKS                       R24 R25 K20 ["collaboratorName"]
       83 GETTABLEKS                       R23 R24 K21 ["withIcon"]
       85 GETTABLEKS                       R22 R23 K22 ["xOffset"]
       87 JUMP                             ; [+8]
       88 GETTABLEKS                       R25 R17 K17 ["collaboratorItem"]
       90 GETTABLEKS                       R24 R25 K20 ["collaboratorName"]
       92 GETTABLEKS                       R23 R24 K23 ["withoutIcon"]
       94 GETTABLEKS                       R22 R23 K22 ["xOffset"]
       96 JUMPIFNOT                        R15 ; [+9]
       97 GETTABLEKS                       R26 R17 K17 ["collaboratorItem"]
       99 GETTABLEKS                       R25 R26 K20 ["collaboratorName"]
      101 GETTABLEKS                       R24 R25 K24 ["withSubtext"]
      103 GETTABLEKS                       R23 R24 K25 ["yOffset"]
      105 JUMP                             ; [+8]
      106 GETTABLEKS                       R26 R17 K17 ["collaboratorItem"]
      108 GETTABLEKS                       R25 R26 K20 ["collaboratorName"]
      110 GETTABLEKS                       R24 R25 K26 ["withoutSubtext"]
      112 GETTABLEKS                       R23 R24 K25 ["yOffset"]
      114 JUMPIFNOT                        R4 ; [+9]
      115 GETTABLEKS                       R27 R17 K17 ["collaboratorItem"]
      117 GETTABLEKS                       R26 R27 K27 ["collaboratorSubText"]
      119 GETTABLEKS                       R25 R26 K21 ["withIcon"]
      121 GETTABLEKS                       R24 R25 K22 ["xOffset"]
      123 JUMP                             ; [+8]
      124 GETTABLEKS                       R27 R17 K17 ["collaboratorItem"]
      126 GETTABLEKS                       R26 R27 K27 ["collaboratorSubText"]
      128 GETTABLEKS                       R25 R26 K23 ["withoutIcon"]
      130 GETTABLEKS                       R24 R25 K22 ["xOffset"]
      132 JUMPIFNOT                        R4 ; [+9]
      133 GETTABLEKS                       R28 R17 K17 ["collaboratorItem"]
      135 GETTABLEKS                       R27 R28 K27 ["collaboratorSubText"]
      137 GETTABLEKS                       R26 R27 K21 ["withIcon"]
      139 GETTABLEKS                       R25 R26 K28 ["size"]
      141 JUMP                             ; [+8]
      142 GETTABLEKS                       R28 R17 K17 ["collaboratorItem"]
      144 GETTABLEKS                       R27 R28 K27 ["collaboratorSubText"]
      146 GETTABLEKS                       R26 R27 K23 ["withoutIcon"]
      148 GETTABLEKS                       R25 R26 K28 ["size"]
      150 GETTABLEKS                       R28 R17 K17 ["collaboratorItem"]
      152 GETTABLEKS                       R27 R28 K27 ["collaboratorSubText"]
      154 GETTABLEKS                       R26 R27 K25 ["yOffset"]
      156 GETUPVAL                         R28 1
      157 GETTABLEKS                       R27 R28 K29 ["new"]
      159 CALL                             R27 0 1
      160 LOADNIL                          R28
      161 LOADNIL                          R29
      162 GETUPVAL                         R30 0
      163 JUMPIF                           R30 ; [+27]
      164 MOVE                             R30 R12
      165 JUMPIF                           R30 ; [+1]
      166 NOT                              R30 R18
      167 MOVE                             R28 R30
      168 JUMPIFNOT                        R12 ; [+7]
      169 LOADK                            R32 K30 ["PermissionDescriptions"]
      170 LOADK                            R33 K31 ["CannotViewGroupRoles"]
      171 NAMECALL                         R30 R16 K32 ["getText"]
      173 CALL                             R30 3 1
      174 MOVE                             R29 R30
      175 JUMP                             ; [+15]
      176 GETUPVAL                         R30 2
      177 JUMPIFNOT                        R30 ; [+7]
      178 LOADK                            R32 K30 ["PermissionDescriptions"]
      179 LOADK                            R33 K33 ["ConnectionToEdit"]
      180 NAMECALL                         R30 R16 K32 ["getText"]
      182 CALL                             R30 3 1
      183 MOVE                             R29 R30
      184 JUMP                             ; [+6]
      185 LOADK                            R32 K30 ["PermissionDescriptions"]
      186 LOADK                            R33 K34 ["FriendToEdit"]
      187 NAMECALL                         R30 R16 K32 ["getText"]
      189 CALL                             R30 3 1
      190 MOVE                             R29 R30
      191 GETUPVAL                         R31 0
      192 JUMPIFNOT                        R31 ; [+2]
      193 MOVE                             R30 R14
      194 JUMP                             ; [+3]
      195 NOT                              R30 R7
      196 JUMPIFNOT                        R30 ; [+1]
      197 NOT                              R30 R10
      198 GETUPVAL                         R32 0
      199 JUMPIFNOT                        R32 ; [+2]
      200 NOT                              R31 R14
      201 JUMP                             ; [+1]
      202 OR                               R31 R7 R10
      203 GETUPVAL                         R33 0
      204 JUMPIFNOT                        R33 ; [+4]
      205 NAMECALL                         R32 R0 K35 ["getCurrentPermissionLabel"]
      207 CALL                             R32 1 1
      208 JUMP                             ; [+6]
      209 JUMPIFNOT                        R12 ; [+2]
      210 LOADK                            R32 K36 [""]
      211 JUMP                             ; [+3]
      212 NAMECALL                         R32 R0 K35 ["getCurrentPermissionLabel"]
      214 CALL                             R32 1 1
      215 GETUPVAL                         R34 0
      216 JUMPIFNOT                        R34 ; [+2]
      217 MOVE                             R33 R13
      218 JUMP                             ; [+1]
      219 MOVE                             R33 R28
      220 GETUPVAL                         R35 3
      221 GETTABLEKS                       R34 R35 K37 ["createElement"]
      223 LOADK                            R35 K38 ["Frame"]
      224 DUPTABLE                         R36 K44 [{"Size", "LayoutOrder", "BackgroundTransparency", "Position", "AnchorPoint", "BorderSizePixel"}]
      225 GETIMPORT                        R37 K46 [UDim2.new]
      227 LOADN                            R38 0
      228 GETTABLEKS                       R39 R20 K47 ["width"]
      230 LOADN                            R40 0
      231 GETTABLEKS                       R41 R20 K48 ["height"]
      233 CALL                             R37 4 1
      234 SETTABLEKS                       R37 R36 K39 ["Size"]
      236 SETTABLEKS                       R2 R36 K1 ["LayoutOrder"]
      238 LOADN                            R37 1
      239 SETTABLEKS                       R37 R36 K40 ["BackgroundTransparency"]
      241 GETTABLEKS                       R37 R20 K49 ["position"]
      243 SETTABLEKS                       R37 R36 K41 ["Position"]
      245 GETTABLEKS                       R37 R20 K50 ["anchorPoint"]
      247 SETTABLEKS                       R37 R36 K42 ["AnchorPoint"]
      249 LOADN                            R37 0
      250 SETTABLEKS                       R37 R36 K43 ["BorderSizePixel"]
      252 DUPTABLE                         R37 K58 [{"IconContainer", "CollaboratorName", "CollaboratorSubText", "OwnerLabel", "PermissionEditor", "Delete", "Separator"}]
      253 MOVE                             R38 R4
      254 JUMPIFNOT                        R38 ; [+48]
      255 GETUPVAL                         R39 3
      256 GETTABLEKS                       R38 R39 K37 ["createElement"]
      258 LOADK                            R39 K38 ["Frame"]
      259 DUPTABLE                         R40 K59 [{"LayoutOrder", "Size", "Position", "AnchorPoint", "BackgroundTransparency"}]
      260 NAMECALL                         R41 R27 K60 ["getNextOrder"]
      262 CALL                             R41 1 1
      263 SETTABLEKS                       R41 R40 K1 ["LayoutOrder"]
      265 GETIMPORT                        R41 K46 [UDim2.new]
      267 LOADN                            R42 0
      268 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      270 GETTABLEKS                       R43 R44 K61 ["iconContainerSize"]
      272 LOADN                            R44 0
      273 GETTABLEKS                       R46 R17 K17 ["collaboratorItem"]
      275 GETTABLEKS                       R45 R46 K61 ["iconContainerSize"]
      277 CALL                             R41 4 1
      278 SETTABLEKS                       R41 R40 K39 ["Size"]
      280 GETIMPORT                        R41 K46 [UDim2.new]
      282 LOADN                            R42 0
      283 LOADN                            R43 0
      284 LOADK                            R44 K62 [0.5]
      285 LOADN                            R45 0
      286 CALL                             R41 4 1
      287 SETTABLEKS                       R41 R40 K41 ["Position"]
      289 GETIMPORT                        R41 K64 [Vector2.new]
      291 LOADN                            R42 0
      292 LOADK                            R43 K62 [0.5]
      293 CALL                             R41 2 1
      294 SETTABLEKS                       R41 R40 K42 ["AnchorPoint"]
      296 LOADN                            R41 1
      297 SETTABLEKS                       R41 R40 K40 ["BackgroundTransparency"]
      299 DUPTABLE                         R41 K65 [{"Icon"}]
      300 SETTABLEKS                       R4 R41 K3 ["Icon"]
      302 CALL                             R38 3 1
      303 SETTABLEKS                       R38 R37 K51 ["IconContainer"]
      305 GETUPVAL                         R39 3
      306 GETTABLEKS                       R38 R39 K37 ["createElement"]
      308 LOADK                            R39 K66 ["TextLabel"]
      309 GETUPVAL                         R42 4
      310 GETTABLEKS                       R41 R42 K67 ["Dictionary"]
      312 GETTABLEKS                       R40 R41 K68 ["join"]
      314 GETTABLEKS                       R42 R17 K69 ["fontStyle"]
      316 GETTABLEKS                       R41 R42 K70 ["Normal"]
      318 DUPTABLE                         R42 K73 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency", "Text", "TextXAlignment"}]
      319 NAMECALL                         R43 R27 K60 ["getNextOrder"]
      321 CALL                             R43 1 1
      322 SETTABLEKS                       R43 R42 K1 ["LayoutOrder"]
      324 JUMPIFNOT                        R4 ; [+9]
      325 GETTABLEKS                       R46 R17 K17 ["collaboratorItem"]
      327 GETTABLEKS                       R45 R46 K20 ["collaboratorName"]
      329 GETTABLEKS                       R44 R45 K21 ["withIcon"]
      331 GETTABLEKS                       R43 R44 K28 ["size"]
      333 JUMP                             ; [+8]
      334 GETTABLEKS                       R46 R17 K17 ["collaboratorItem"]
      336 GETTABLEKS                       R45 R46 K20 ["collaboratorName"]
      338 GETTABLEKS                       R44 R45 K23 ["withoutIcon"]
      340 GETTABLEKS                       R43 R44 K28 ["size"]
      342 SETTABLEKS                       R43 R42 K39 ["Size"]
      344 GETIMPORT                        R43 K64 [Vector2.new]
      346 LOADN                            R44 0
      347 LOADK                            R45 K62 [0.5]
      348 CALL                             R43 2 1
      349 SETTABLEKS                       R43 R42 K42 ["AnchorPoint"]
      351 GETIMPORT                        R43 K46 [UDim2.new]
      353 LOADN                            R44 0
      354 MOVE                             R45 R22
      355 LOADK                            R46 K62 [0.5]
      356 MOVE                             R47 R23
      357 CALL                             R43 4 1
      358 SETTABLEKS                       R43 R42 K41 ["Position"]
      360 LOADN                            R43 1
      361 SETTABLEKS                       R43 R42 K40 ["BackgroundTransparency"]
      363 SETTABLEKS                       R3 R42 K71 ["Text"]
      365 GETIMPORT                        R43 K76 [Enum.TextXAlignment.Left]
      367 SETTABLEKS                       R43 R42 K72 ["TextXAlignment"]
      369 CALL                             R40 2 -1
      370 CALL                             R38 -1 1
      371 SETTABLEKS                       R38 R37 K52 ["CollaboratorName"]
      373 JUMPIFNOT                        R15 ; [+49]
      374 GETUPVAL                         R39 3
      375 GETTABLEKS                       R38 R39 K37 ["createElement"]
      377 LOADK                            R39 K66 ["TextLabel"]
      378 GETUPVAL                         R42 4
      379 GETTABLEKS                       R41 R42 K67 ["Dictionary"]
      381 GETTABLEKS                       R40 R41 K68 ["join"]
      383 GETTABLEKS                       R42 R17 K69 ["fontStyle"]
      385 GETTABLEKS                       R41 R42 K77 ["Subtext"]
      387 DUPTABLE                         R42 K73 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency", "Text", "TextXAlignment"}]
      388 NAMECALL                         R43 R27 K60 ["getNextOrder"]
      390 CALL                             R43 1 1
      391 SETTABLEKS                       R43 R42 K1 ["LayoutOrder"]
      393 SETTABLEKS                       R25 R42 K39 ["Size"]
      395 GETIMPORT                        R43 K64 [Vector2.new]
      397 LOADN                            R44 0
      398 LOADK                            R45 K62 [0.5]
      399 CALL                             R43 2 1
      400 SETTABLEKS                       R43 R42 K42 ["AnchorPoint"]
      402 GETIMPORT                        R43 K46 [UDim2.new]
      404 LOADN                            R44 0
      405 MOVE                             R45 R24
      406 LOADK                            R46 K62 [0.5]
      407 MOVE                             R47 R26
      408 CALL                             R43 4 1
      409 SETTABLEKS                       R43 R42 K41 ["Position"]
      411 LOADN                            R43 1
      412 SETTABLEKS                       R43 R42 K40 ["BackgroundTransparency"]
      414 SETTABLEKS                       R15 R42 K71 ["Text"]
      416 GETIMPORT                        R43 K76 [Enum.TextXAlignment.Left]
      418 SETTABLEKS                       R43 R42 K72 ["TextXAlignment"]
      420 CALL                             R40 2 -1
      421 CALL                             R38 -1 1
      422 JUMP                             ; [+1]
      423 LOADNIL                          R38
      424 SETTABLEKS                       R38 R37 K53 ["CollaboratorSubText"]
      426 JUMPIFNOT                        R30 ; [+67]
      427 GETUPVAL                         R39 3
      428 GETTABLEKS                       R38 R39 K37 ["createElement"]
      430 LOADK                            R39 K66 ["TextLabel"]
      431 GETUPVAL                         R42 4
      432 GETTABLEKS                       R41 R42 K67 ["Dictionary"]
      434 GETTABLEKS                       R40 R41 K68 ["join"]
      436 GETTABLEKS                       R42 R17 K69 ["fontStyle"]
      438 GETTABLEKS                       R41 R42 K70 ["Normal"]
      440 DUPTABLE                         R42 K78 [{"LayoutOrder", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "Text", "TextXAlignment"}]
      441 NAMECALL                         R43 R27 K60 ["getNextOrder"]
      443 CALL                             R43 1 1
      444 SETTABLEKS                       R43 R42 K1 ["LayoutOrder"]
      446 JUMPIFNOT                        R4 ; [+7]
      447 GETTABLEKS                       R45 R17 K17 ["collaboratorItem"]
      449 GETTABLEKS                       R44 R45 K79 ["ownerLabel"]
      451 GETTABLEKS                       R43 R44 K80 ["withIconSize"]
      453 JUMP                             ; [+6]
      454 GETTABLEKS                       R45 R17 K17 ["collaboratorItem"]
      456 GETTABLEKS                       R44 R45 K79 ["ownerLabel"]
      458 GETTABLEKS                       R43 R44 K81 ["withoutIconSize"]
      460 SETTABLEKS                       R43 R42 K39 ["Size"]
      462 GETTABLEKS                       R45 R17 K17 ["collaboratorItem"]
      464 GETTABLEKS                       R44 R45 K79 ["ownerLabel"]
      466 GETTABLEKS                       R43 R44 K49 ["position"]
      468 SETTABLEKS                       R43 R42 K41 ["Position"]
      470 GETIMPORT                        R43 K64 [Vector2.new]
      472 LOADN                            R44 1
      473 LOADK                            R45 K62 [0.5]
      474 CALL                             R43 2 1
      475 SETTABLEKS                       R43 R42 K42 ["AnchorPoint"]
      477 LOADN                            R43 1
      478 SETTABLEKS                       R43 R42 K40 ["BackgroundTransparency"]
      480 LOADK                            R45 K82 ["CollaboratorTypes"]
      481 LOADK                            R46 K83 ["Owner"]
      482 NAMECALL                         R43 R16 K32 ["getText"]
      484 CALL                             R43 3 1
      485 SETTABLEKS                       R43 R42 K71 ["Text"]
      487 GETIMPORT                        R43 K85 [Enum.TextXAlignment.Right]
      489 SETTABLEKS                       R43 R42 K72 ["TextXAlignment"]
      491 CALL                             R40 2 -1
      492 CALL                             R38 -1 1
      493 JUMP                             ; [+1]
      494 LOADNIL                          R38
      495 SETTABLEKS                       R38 R37 K54 ["OwnerLabel"]
      497 JUMPIFNOT                        R31 ; [+133]
      498 GETUPVAL                         R39 3
      499 GETTABLEKS                       R38 R39 K37 ["createElement"]
      501 LOADK                            R39 K38 ["Frame"]
      502 DUPTABLE                         R40 K86 [{"LayoutOrder", "BackgroundTransparency", "Size", "Position", "AnchorPoint"}]
      503 NAMECALL                         R41 R27 K60 ["getNextOrder"]
      505 CALL                             R41 1 1
      506 SETTABLEKS                       R41 R40 K1 ["LayoutOrder"]
      508 LOADN                            R41 1
      509 SETTABLEKS                       R41 R40 K40 ["BackgroundTransparency"]
      511 GETIMPORT                        R41 K46 [UDim2.new]
      513 LOADN                            R42 0
      514 GETTABLEKS                       R44 R17 K87 ["selectInput"]
      516 GETTABLEKS                       R43 R44 K47 ["width"]
      518 LOADN                            R44 0
      519 GETTABLEKS                       R47 R17 K17 ["collaboratorItem"]
      521 GETTABLEKS                       R46 R47 K88 ["permissionEditor"]
      523 GETTABLEKS                       R45 R46 K89 ["heightOffset"]
      525 CALL                             R41 4 1
      526 SETTABLEKS                       R41 R40 K39 ["Size"]
      528 GETIMPORT                        R41 K46 [UDim2.new]
      530 LOADN                            R42 1
      531 LOADN                            R43 0
      532 LOADK                            R44 K62 [0.5]
      533 GETTABLEKS                       R47 R17 K17 ["collaboratorItem"]
      535 GETTABLEKS                       R46 R47 K88 ["permissionEditor"]
      537 GETTABLEKS                       R45 R46 K25 ["yOffset"]
      539 CALL                             R41 4 1
      540 SETTABLEKS                       R41 R40 K41 ["Position"]
      542 GETIMPORT                        R41 K64 [Vector2.new]
      544 LOADN                            R42 1
      545 LOADK                            R43 K62 [0.5]
      546 CALL                             R41 2 1
      547 SETTABLEKS                       R41 R40 K42 ["AnchorPoint"]
      549 DUPTABLE                         R41 K93 [{"LoadingIndicator", "PermissionsDropdown", "Tooltip"}]
      550 MOVE                             R42 R6
      551 JUMPIFNOT                        R42 ; [+13]
      552 GETUPVAL                         R43 3
      553 GETTABLEKS                       R42 R43 K37 ["createElement"]
      555 GETUPVAL                         R43 5
      556 DUPTABLE                         R44 K94 [{"Size"}]
      557 GETIMPORT                        R45 K96 [UDim2.fromScale]
      559 LOADN                            R46 1
      560 LOADN                            R47 1
      561 CALL                             R45 2 1
      562 SETTABLEKS                       R45 R44 K39 ["Size"]
      564 CALL                             R42 2 1
      565 SETTABLEKS                       R42 R41 K90 ["LoadingIndicator"]
      567 JUMPIF                           R6 ; [+40]
      568 GETUPVAL                         R43 3
      569 GETTABLEKS                       R42 R43 K37 ["createElement"]
      571 GETUPVAL                         R43 6
      572 DUPTABLE                         R44 K104 [{"Enabled", "Items", "OnItemActivated", "OnRenderItem", "PlaceholderText", "Width", "Style"}]
      573 GETUPVAL                         R46 0
      574 JUMPIFNOT                        R46 ; [+2]
      575 MOVE                             R45 R18
      576 JUMP                             ; [+2]
      577 NOT                              R46 R12
      578 AND                              R45 R46 R18
      579 SETTABLEKS                       R45 R44 K97 ["Enabled"]
      581 SETTABLEKS                       R9 R44 K98 ["Items"]
      583 GETTABLEKS                       R45 R0 K105 ["onItemActivated"]
      585 SETTABLEKS                       R45 R44 K99 ["OnItemActivated"]
      587 GETTABLEKS                       R45 R0 K106 ["onRenderItem"]
      589 SETTABLEKS                       R45 R44 K100 ["OnRenderItem"]
      591 SETTABLEKS                       R32 R44 K101 ["PlaceholderText"]
      593 GETTABLEKS                       R47 R17 K87 ["selectInput"]
      595 GETTABLEKS                       R46 R47 K47 ["width"]
      597 ADD                              R45 R46 R21
      598 SETTABLEKS                       R45 R44 K102 ["Width"]
      600 JUMPIFNOT                        R18 ; [+2]
      601 LOADK                            R45 K107 ["Editable"]
      602 JUMP                             ; [+1]
      603 LOADK                            R45 K108 ["NonEditable"]
      604 SETTABLEKS                       R45 R44 K103 ["Style"]
      606 CALL                             R42 2 1
      607 JUMPIF                           R42 ; [+1]
      608 LOADNIL                          R42
      609 SETTABLEKS                       R42 R41 K91 ["PermissionsDropdown"]
      611 JUMPIFNOT                        R33 ; [+14]
      612 GETUPVAL                         R43 3
      613 GETTABLEKS                       R42 R43 K37 ["createElement"]
      615 GETUPVAL                         R43 7
      616 DUPTABLE                         R44 K109 [{"Text"}]
      617 GETUPVAL                         R46 0
      618 JUMPIFNOT                        R46 ; [+2]
      619 MOVE                             R45 R13
      620 JUMP                             ; [+1]
      621 MOVE                             R45 R29
      622 SETTABLEKS                       R45 R44 K71 ["Text"]
      624 CALL                             R42 2 1
      625 JUMP                             ; [+1]
      626 LOADNIL                          R42
      627 SETTABLEKS                       R42 R41 K92 ["Tooltip"]
      629 CALL                             R38 3 1
      630 JUMP                             ; [+1]
      631 LOADNIL                          R38
      632 SETTABLEKS                       R38 R37 K55 ["PermissionEditor"]
      634 MOVE                             R38 R19
      635 JUMPIFNOT                        R38 ; [+22]
      636 GETUPVAL                         R39 3
      637 GETTABLEKS                       R38 R39 K37 ["createElement"]
      639 GETUPVAL                         R39 8
      640 DUPTABLE                         R40 K111 [{"LayoutOrder", "Enabled", "OnClicked"}]
      641 NAMECALL                         R41 R27 K60 ["getNextOrder"]
      643 CALL                             R41 1 1
      644 SETTABLEKS                       R41 R40 K1 ["LayoutOrder"]
      646 GETUPVAL                         R42 0
      647 JUMPIFNOT                        R42 ; [+2]
      648 NOT                              R41 R6
      649 JUMP                             ; [+3]
      650 MOVE                             R41 R5
      651 JUMPIFNOT                        R41 ; [+1]
      652 NOT                              R41 R6
      653 SETTABLEKS                       R41 R40 K97 ["Enabled"]
      655 SETTABLEKS                       R8 R40 K110 ["OnClicked"]
      657 CALL                             R38 2 1
      658 SETTABLEKS                       R38 R37 K56 ["Delete"]
      660 GETUPVAL                         R39 9
      661 NOT                              R38 R39
      662 JUMPIFNOT                        R38 ; [+22]
      663 NOT                              R38 R11
      664 JUMPIFNOT                        R38 ; [+20]
      665 GETUPVAL                         R39 3
      666 GETTABLEKS                       R38 R39 K37 ["createElement"]
      668 GETUPVAL                         R39 10
      669 DUPTABLE                         R40 K112 [{"Position", "LayoutOrder"}]
      670 GETIMPORT                        R41 K46 [UDim2.new]
      672 LOADK                            R42 K62 [0.5]
      673 LOADN                            R43 0
      674 LOADN                            R44 1
      675 LOADN                            R45 0
      676 CALL                             R41 4 1
      677 SETTABLEKS                       R41 R40 K41 ["Position"]
      679 NAMECALL                         R41 R27 K60 ["getNextOrder"]
      681 CALL                             R41 1 1
      682 SETTABLEKS                       R41 R40 K1 ["LayoutOrder"]
      684 CALL                             R38 2 1
      685 SETTABLEKS                       R38 R37 K57 ["Separator"]
      687 CALL                             R34 3 -1
      688 RETURN                           R34 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["COLLAB2850_FixMcTooltips"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Collab7855_HandleUnknownPermission2"]
       10 NAMECALL                         R1 R1 K3 ["GetFastFlag"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["Collab7855_LogUnknownPermissions"]
       16 NAMECALL                         R2 R2 K3 ["GetFastFlag"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R6 K7 [script]
       21 GETTABLEKS                       R5 R6 K8 ["Parent"]
       23 GETTABLEKS                       R4 R5 K8 ["Parent"]
       25 GETTABLEKS                       R3 R4 K8 ["Parent"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R6 R3 K11 ["Packages"]
       31 GETTABLEKS                       R5 R6 K12 ["Roact"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K10 [require]
       36 GETTABLEKS                       R7 R3 K11 ["Packages"]
       38 GETTABLEKS                       R6 R7 K13 ["Cryo"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K10 [require]
       43 GETTABLEKS                       R8 R3 K11 ["Packages"]
       45 GETTABLEKS                       R7 R8 K14 ["Framework"]
       47 CALL                             R6 1 1
       48 GETTABLEKS                       R8 R6 K15 ["Style"]
       50 GETTABLEKS                       R7 R8 K16 ["Stylizer"]
       52 GETTABLEKS                       R8 R6 K17 ["ContextServices"]
       54 GETTABLEKS                       R9 R8 K18 ["withContext"]
       56 GETTABLEKS                       R10 R8 K19 ["Localization"]
       58 GETTABLEKS                       R11 R6 K20 ["UI"]
       60 GETTABLEKS                       R12 R6 K21 ["Util"]
       62 GETTABLEKS                       R13 R11 K22 ["SelectInput"]
       64 GETTABLEKS                       R14 R11 K23 ["Button"]
       66 GETTABLEKS                       R15 R11 K24 ["TextLabel"]
       68 GETTABLEKS                       R16 R11 K25 ["Separator"]
       70 GETTABLEKS                       R17 R11 K26 ["Tooltip"]
       72 GETTABLEKS                       R19 R6 K20 ["UI"]
       74 GETTABLEKS                       R18 R19 K27 ["LoadingIndicator"]
       76 GETTABLEKS                       R19 R12 K28 ["LayoutOrderIterator"]
       78 JUMPIFNOT                        R1 ; [+10]
       79 GETIMPORT                        R20 K10 [require]
       81 GETTABLEKS                       R23 R3 K29 ["Src"]
       83 GETTABLEKS                       R22 R23 K21 ["Util"]
       85 GETTABLEKS                       R21 R22 K30 ["Analytics"]
       87 CALL                             R20 1 1
       88 JUMP                             ; [+1]
       89 LOADNIL                          R20
       90 GETIMPORT                        R21 K10 [require]
       92 GETTABLEKS                       R24 R3 K29 ["Src"]
       94 GETTABLEKS                       R23 R24 K21 ["Util"]
       96 GETTABLEKS                       R22 R23 K31 ["PermissionsConstants"]
       98 CALL                             R21 1 1
       99 GETTABLEKS                       R22 R4 K32 ["PureComponent"]
      101 LOADK                            R24 K33 ["DeleteButton"]
      102 NAMECALL                         R22 R22 K34 ["extend"]
      104 CALL                             R22 2 1
      105 GETIMPORT                        R23 K1 [game]
      107 LOADK                            R25 K35 ["StudioFriendToConnection"]
      108 NAMECALL                         R23 R23 K3 ["GetFastFlag"]
      110 CALL                             R23 2 1
      111 GETIMPORT                        R24 K1 [game]
      113 LOADK                            R26 K36 ["UpsellCollabSafety2"]
      114 NAMECALL                         R24 R24 K3 ["GetFastFlag"]
      116 CALL                             R24 2 1
      117 NEWTABLE                         R25 8 0
      119 GETTABLEKS                       R26 R21 K37 ["OwnerKey"]
      121 LOADK                            R27 K38 ["Owner"]
      122 SETTABLE                         R27 R25 R26
      123 GETTABLEKS                       R26 R21 K39 ["PlayKey"]
      125 LOADK                            R27 K40 ["Play"]
      126 SETTABLE                         R27 R25 R26
      127 GETTABLEKS                       R26 R21 K41 ["EditKey"]
      129 LOADK                            R27 K42 ["Edit"]
      130 SETTABLE                         R27 R25 R26
      131 GETTABLEKS                       R26 R21 K43 ["NoAccessKey"]
      133 LOADK                            R27 K44 ["NoAccess"]
      134 SETTABLE                         R27 R25 R26
      135 GETTABLEKS                       R26 R21 K45 ["AdminKey"]
      137 LOADK                            R27 K46 ["Admin"]
      138 SETTABLE                         R27 R25 R26
      139 DUPCLOSURE                       R26 K47 [PROTO_0]
      140 SETTABLEKS                       R26 R22 K48 ["init"]
      142 DUPCLOSURE                       R26 K49 [PROTO_4]
      143 CAPTURE                          VAL R4
      144 SETTABLEKS                       R26 R22 K50 ["render"]
      146 MOVE                             R26 R9
      147 DUPTABLE                         R27 K51 [{"Stylizer"}]
      148 SETTABLEKS                       R7 R27 K16 ["Stylizer"]
      150 CALL                             R26 1 1
      151 MOVE                             R27 R22
      152 CALL                             R26 1 1
      153 MOVE                             R22 R26
      154 GETTABLEKS                       R26 R4 K32 ["PureComponent"]
      156 LOADK                            R28 K52 ["CollaboratorItem"]
      157 NAMECALL                         R26 R26 K34 ["extend"]
      159 CALL                             R26 2 1
      160 DUPTABLE                         R27 K55 [{"Writable", "Loading"}]
      161 LOADB                            R28 1
      162 SETTABLEKS                       R28 R27 K53 ["Writable"]
      164 LOADB                            R28 0
      165 SETTABLEKS                       R28 R27 K54 ["Loading"]
      167 SETTABLEKS                       R27 R26 K56 ["defaultProps"]
      169 DUPCLOSURE                       R27 K57 [PROTO_5]
      170 CAPTURE                          VAL R21
      171 CAPTURE                          VAL R1
      172 CAPTURE                          VAL R2
      173 CAPTURE                          VAL R25
      174 CAPTURE                          VAL R20
      175 SETTABLEKS                       R27 R26 K58 ["getCurrentPermissionLabel"]
      177 DUPCLOSURE                       R27 K59 [PROTO_6]
      178 CAPTURE                          VAL R4
      179 CAPTURE                          VAL R15
      180 SETGLOBAL                        R27 K60 ["createTextLabel"]
      182 DUPCLOSURE                       R27 K61 [PROTO_9]
      183 CAPTURE                          VAL R4
      184 CAPTURE                          VAL R14
      185 SETTABLEKS                       R27 R26 K48 ["init"]
      187 NEWCLOSURE                       R27 P5
      188 CAPTURE                          VAL R0
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R23
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R5
      193 CAPTURE                          VAL R18
      194 CAPTURE                          VAL R13
      195 CAPTURE                          VAL R17
      196 CAPTURE                          REF R22
      197 CAPTURE                          VAL R24
      198 CAPTURE                          VAL R16
      199 SETTABLEKS                       R27 R26 K50 ["render"]
      201 MOVE                             R27 R9
      202 DUPTABLE                         R28 K62 [{"Stylizer", "Localization"}]
      203 SETTABLEKS                       R7 R28 K16 ["Stylizer"]
      205 SETTABLEKS                       R10 R28 K19 ["Localization"]
      207 CALL                             R27 1 1
      208 MOVE                             R28 R26
      209 CALL                             R27 1 1
      210 MOVE                             R26 R27
      211 CLOSEUPVALS                      R22
      212 RETURN                           R26 1
