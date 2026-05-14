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
        8 GETTABLEKS                       R6 R0 K4 ["state"]
       10 GETTABLEKS                       R6 R6 K5 ["isHovered"]
       12 JUMPIFNOT                        R6 ; [+2]
       13 LOADN                            R5 0
       14 JUMP                             ; [+1]
       15 LOADN                            R5 1
       16 GETUPVAL                         R6 0
       17 GETTABLEKS                       R6 R6 K6 ["createElement"]
       19 LOADK                            R7 K7 ["ImageButton"]
       20 NEWTABLE                         R8 16 0
       22 GETIMPORT                        R9 K10 [UDim2.new]
       24 LOADN                            R10 0
       25 GETTABLEKS                       R11 R4 K11 ["collaboratorItem"]
       27 GETTABLEKS                       R11 R11 K12 ["deleteButton"]
       29 GETTABLEKS                       R11 R11 K13 ["size"]
       31 LOADN                            R12 0
       32 GETTABLEKS                       R13 R4 K11 ["collaboratorItem"]
       34 GETTABLEKS                       R13 R13 K12 ["deleteButton"]
       36 GETTABLEKS                       R13 R13 K13 ["size"]
       38 CALL                             R9 4 1
       39 SETTABLEKS                       R9 R8 K14 ["Size"]
       41 GETIMPORT                        R9 K10 [UDim2.new]
       43 LOADN                            R10 1
       44 GETTABLEKS                       R11 R4 K11 ["collaboratorItem"]
       46 GETTABLEKS                       R11 R11 K15 ["xOffset"]
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
       66 GETTABLEKS                       R9 R4 K11 ["collaboratorItem"]
       68 GETTABLEKS                       R9 R9 K12 ["deleteButton"]
       70 GETTABLEKS                       R9 R9 K24 ["hovered"]
       72 SETTABLEKS                       R9 R8 K25 ["BackgroundColor3"]
       74 GETUPVAL                         R9 0
       75 GETTABLEKS                       R9 R9 K26 ["Event"]
       77 GETTABLEKS                       R9 R9 K27 ["Activated"]
       79 NEWCLOSURE                       R10 P0
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R3
       82 SETTABLE                         R10 R8 R9
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R9 R9 K26 ["Event"]
       86 GETTABLEKS                       R9 R9 K28 ["MouseEnter"]
       88 NEWCLOSURE                       R10 P1
       89 CAPTURE                          VAL R0
       90 SETTABLE                         R10 R8 R9
       91 GETUPVAL                         R9 0
       92 GETTABLEKS                       R9 R9 K26 ["Event"]
       94 GETTABLEKS                       R9 R9 K29 ["MouseLeave"]
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
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["MultipleKey"]
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
       56 GETUPVAL                         R7 4
       57 GETTABLEKS                       R7 R7 K13 ["reportUnknownPermission"]
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
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createElement"]
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
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K0 ["createElement"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Writable"]
        5 JUMPIFNOT                        R1 ; [+17]
        6 GETTABLEKS                       R1 R0 K2 ["Key"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["props"]
       11 GETTABLEKS                       R2 R2 K3 ["CurrentPermission"]
       13 JUMPIFEQ                         R1 R2 ; [+9]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K0 ["props"]
       18 GETTABLEKS                       R1 R1 K4 ["OnPermissionChanged"]
       20 GETTABLEKS                       R2 R0 K2 ["Key"]
       22 CALL                             R1 1 0
       23 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["Stylizer"]
        5 GETTABLEKS                       R4 R0 K2 ["Display"]
        7 GETTABLEKS                       R5 R0 K3 ["Description"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R6 R6 K4 ["createElement"]
       12 GETUPVAL                         R7 2
       13 DUPTABLE                         R8 K8 [{"Size", "LayoutOrder", "OnClick"}]
       14 GETIMPORT                        R9 K11 [UDim2.new]
       16 LOADN                            R10 1
       17 LOADN                            R11 0
       18 LOADN                            R12 0
       19 GETTABLEKS                       R13 R3 K12 ["selectInput"]
       21 GETTABLEKS                       R13 R13 K13 ["button"]
       23 GETTABLEKS                       R13 R13 K14 ["height"]
       25 CALL                             R9 4 1
       26 SETTABLEKS                       R9 R8 K5 ["Size"]
       28 SETTABLEKS                       R1 R8 K6 ["LayoutOrder"]
       30 SETTABLEKS                       R2 R8 K7 ["OnClick"]
       32 DUPTABLE                         R9 K18 [{"UILayout", "MainTextLabel", "DescriptionTextLabel"}]
       33 GETUPVAL                         R10 1
       34 GETTABLEKS                       R10 R10 K4 ["createElement"]
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
       64 GETTABLEKS                       R13 R3 K35 ["fontStyle"]
       66 GETTABLEKS                       R13 R13 K34 ["Normal"]
       68 GETTABLEKS                       R13 R13 K36 ["TextSize"]
       70 GETTABLEKS                       R14 R3 K12 ["selectInput"]
       72 GETTABLEKS                       R14 R14 K37 ["padding"]
       74 LOADN                            R15 0
       75 CALL                             R10 5 1
       76 SETTABLEKS                       R10 R9 K16 ["MainTextLabel"]
       78 GETGLOBAL                        R10 K33 ["createTextLabel"]
       80 MOVE                             R11 R5
       81 LOADK                            R12 K38 ["SubText"]
       82 GETTABLEKS                       R13 R3 K35 ["fontStyle"]
       84 GETTABLEKS                       R13 R13 K39 ["Subtext"]
       86 GETTABLEKS                       R13 R13 K36 ["TextSize"]
       88 GETTABLEKS                       R14 R3 K12 ["selectInput"]
       90 GETTABLEKS                       R14 R14 K37 ["padding"]
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
       64 GETTABLEKS                       R20 R17 K17 ["collaboratorItem"]
       66 GETTABLEKS                       R20 R20 K18 ["rolesetFrame"]
       68 JUMP                             ; [+4]
       69 GETTABLEKS                       R20 R17 K17 ["collaboratorItem"]
       71 GETTABLEKS                       R20 R20 K19 ["nonRolesetFrame"]
       73 JUMPIF                           R10 ; [+1]
       74 JUMPIF                           R19 ; [+2]
       75 LOADN                            R21 0
       76 JUMP                             ; [+1]
       77 LOADN                            R21 232
       78 JUMPIFNOT                        R4 ; [+9]
       79 GETTABLEKS                       R22 R17 K17 ["collaboratorItem"]
       81 GETTABLEKS                       R22 R22 K20 ["collaboratorName"]
       83 GETTABLEKS                       R22 R22 K21 ["withIcon"]
       85 GETTABLEKS                       R22 R22 K22 ["xOffset"]
       87 JUMP                             ; [+8]
       88 GETTABLEKS                       R22 R17 K17 ["collaboratorItem"]
       90 GETTABLEKS                       R22 R22 K20 ["collaboratorName"]
       92 GETTABLEKS                       R22 R22 K23 ["withoutIcon"]
       94 GETTABLEKS                       R22 R22 K22 ["xOffset"]
       96 JUMPIFNOT                        R15 ; [+9]
       97 GETTABLEKS                       R23 R17 K17 ["collaboratorItem"]
       99 GETTABLEKS                       R23 R23 K20 ["collaboratorName"]
      101 GETTABLEKS                       R23 R23 K24 ["withSubtext"]
      103 GETTABLEKS                       R23 R23 K25 ["yOffset"]
      105 JUMP                             ; [+8]
      106 GETTABLEKS                       R23 R17 K17 ["collaboratorItem"]
      108 GETTABLEKS                       R23 R23 K20 ["collaboratorName"]
      110 GETTABLEKS                       R23 R23 K26 ["withoutSubtext"]
      112 GETTABLEKS                       R23 R23 K25 ["yOffset"]
      114 JUMPIFNOT                        R4 ; [+9]
      115 GETTABLEKS                       R24 R17 K17 ["collaboratorItem"]
      117 GETTABLEKS                       R24 R24 K27 ["collaboratorSubText"]
      119 GETTABLEKS                       R24 R24 K21 ["withIcon"]
      121 GETTABLEKS                       R24 R24 K22 ["xOffset"]
      123 JUMP                             ; [+8]
      124 GETTABLEKS                       R24 R17 K17 ["collaboratorItem"]
      126 GETTABLEKS                       R24 R24 K27 ["collaboratorSubText"]
      128 GETTABLEKS                       R24 R24 K23 ["withoutIcon"]
      130 GETTABLEKS                       R24 R24 K22 ["xOffset"]
      132 JUMPIFNOT                        R4 ; [+9]
      133 GETTABLEKS                       R25 R17 K17 ["collaboratorItem"]
      135 GETTABLEKS                       R25 R25 K27 ["collaboratorSubText"]
      137 GETTABLEKS                       R25 R25 K21 ["withIcon"]
      139 GETTABLEKS                       R25 R25 K28 ["size"]
      141 JUMP                             ; [+8]
      142 GETTABLEKS                       R25 R17 K17 ["collaboratorItem"]
      144 GETTABLEKS                       R25 R25 K27 ["collaboratorSubText"]
      146 GETTABLEKS                       R25 R25 K23 ["withoutIcon"]
      148 GETTABLEKS                       R25 R25 K28 ["size"]
      150 GETTABLEKS                       R26 R17 K17 ["collaboratorItem"]
      152 GETTABLEKS                       R26 R26 K27 ["collaboratorSubText"]
      154 GETTABLEKS                       R26 R26 K25 ["yOffset"]
      156 GETUPVAL                         R27 1
      157 GETTABLEKS                       R27 R27 K29 ["new"]
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
      199 JUMPIFNOT                        R32 ; [+4]
      200 NAMECALL                         R31 R0 K35 ["getCurrentPermissionLabel"]
      202 CALL                             R31 1 1
      203 JUMP                             ; [+6]
      204 JUMPIFNOT                        R12 ; [+2]
      205 LOADK                            R31 K36 [""]
      206 JUMP                             ; [+3]
      207 NAMECALL                         R31 R0 K35 ["getCurrentPermissionLabel"]
      209 CALL                             R31 1 1
      210 GETUPVAL                         R33 3
      211 GETTABLEKS                       R33 R33 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      213 JUMPIFNOT                        R33 ; [+13]
      214 LOADB                            R32 0
      215 GETTABLEKS                       R33 R1 K38 ["CanCollaborateResponse"]
      217 GETUPVAL                         R34 4
      218 GETTABLEKS                       R34 R34 K39 ["PCBlock"]
      220 JUMPIFNOTEQ                      R33 R34 ; [+7]
      222 JUMPIFEQKS                       R31 K40 ["Edit"] ; [+2]
      224 LOADB                            R32 0 +1
      225 LOADB                            R32 1
      226 JUMP                             ; [+1]
      227 LOADB                            R32 0
      228 GETUPVAL                         R34 0
      229 JUMPIFNOT                        R34 ; [+9]
      230 NOT                              R33 R14
      231 JUMPIFNOT                        R33 ; [+16]
      232 GETUPVAL                         R34 3
      233 GETTABLEKS                       R34 R34 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      235 NOT                              R33 R34
      236 JUMPIF                           R33 ; [+11]
      237 NOT                              R33 R32
      238 JUMP                             ; [+9]
      239 JUMPIF                           R7 ; [+2]
      240 MOVE                             R33 R10
      241 JUMPIFNOT                        R33 ; [+6]
      242 GETUPVAL                         R34 3
      243 GETTABLEKS                       R34 R34 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      245 NOT                              R33 R34
      246 JUMPIF                           R33 ; [+1]
      247 NOT                              R33 R32
      248 GETUPVAL                         R35 0
      249 JUMPIFNOT                        R35 ; [+2]
      250 MOVE                             R34 R13
      251 JUMP                             ; [+1]
      252 MOVE                             R34 R28
      253 GETUPVAL                         R35 5
      254 GETTABLEKS                       R35 R35 K41 ["createElement"]
      256 LOADK                            R36 K42 ["Frame"]
      257 DUPTABLE                         R37 K48 [{"Size", "LayoutOrder", "BackgroundTransparency", "Position", "AnchorPoint", "BorderSizePixel"}]
      258 GETIMPORT                        R38 K50 [UDim2.new]
      260 LOADN                            R39 0
      261 GETTABLEKS                       R40 R20 K51 ["width"]
      263 LOADN                            R41 0
      264 GETTABLEKS                       R42 R20 K52 ["height"]
      266 CALL                             R38 4 1
      267 SETTABLEKS                       R38 R37 K43 ["Size"]
      269 SETTABLEKS                       R2 R37 K1 ["LayoutOrder"]
      271 LOADN                            R38 1
      272 SETTABLEKS                       R38 R37 K44 ["BackgroundTransparency"]
      274 GETTABLEKS                       R38 R20 K53 ["position"]
      276 SETTABLEKS                       R38 R37 K45 ["Position"]
      278 GETTABLEKS                       R38 R20 K54 ["anchorPoint"]
      280 SETTABLEKS                       R38 R37 K46 ["AnchorPoint"]
      282 LOADN                            R38 0
      283 SETTABLEKS                       R38 R37 K47 ["BorderSizePixel"]
      285 DUPTABLE                         R38 K63 [{"IconContainer", "CollaboratorName", "CollaboratorSubText", "OwnerLabel", "ActionNeededLabel", "PermissionEditor", "Delete", "Separator"}]
      286 MOVE                             R39 R4
      287 JUMPIFNOT                        R39 ; [+66]
      288 GETUPVAL                         R39 5
      289 GETTABLEKS                       R39 R39 K41 ["createElement"]
      291 GETUPVAL                         R41 3
      292 GETTABLEKS                       R41 R41 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      294 JUMPIFNOT                        R41 ; [+2]
      295 LOADK                            R40 K64 ["CanvasGroup"]
      296 JUMP                             ; [+1]
      297 LOADK                            R40 K42 ["Frame"]
      298 DUPTABLE                         R41 K66 [{"LayoutOrder", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "GroupTransparency"}]
      299 NAMECALL                         R42 R27 K67 ["getNextOrder"]
      301 CALL                             R42 1 1
      302 SETTABLEKS                       R42 R41 K1 ["LayoutOrder"]
      304 GETIMPORT                        R42 K50 [UDim2.new]
      306 LOADN                            R43 0
      307 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      309 GETTABLEKS                       R44 R44 K68 ["iconContainerSize"]
      311 LOADN                            R45 0
      312 GETTABLEKS                       R46 R17 K17 ["collaboratorItem"]
      314 GETTABLEKS                       R46 R46 K68 ["iconContainerSize"]
      316 CALL                             R42 4 1
      317 SETTABLEKS                       R42 R41 K43 ["Size"]
      319 GETIMPORT                        R42 K50 [UDim2.new]
      321 LOADN                            R43 0
      322 LOADN                            R44 0
      323 LOADK                            R45 K69 [0.5]
      324 LOADN                            R46 0
      325 CALL                             R42 4 1
      326 SETTABLEKS                       R42 R41 K45 ["Position"]
      328 GETIMPORT                        R42 K71 [Vector2.new]
      330 LOADN                            R43 0
      331 LOADK                            R44 K69 [0.5]
      332 CALL                             R42 2 1
      333 SETTABLEKS                       R42 R41 K46 ["AnchorPoint"]
      335 LOADN                            R42 1
      336 SETTABLEKS                       R42 R41 K44 ["BackgroundTransparency"]
      338 GETUPVAL                         R43 3
      339 GETTABLEKS                       R43 R43 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      341 JUMPIFNOT                        R43 ; [+5]
      342 JUMPIFNOT                        R32 ; [+2]
      343 LOADK                            R42 K72 [0.6]
      344 JUMP                             ; [+3]
      345 LOADN                            R42 0
      346 JUMP                             ; [+1]
      347 LOADNIL                          R42
      348 SETTABLEKS                       R42 R41 K65 ["GroupTransparency"]
      350 DUPTABLE                         R42 K73 [{"Icon"}]
      351 SETTABLEKS                       R4 R42 K3 ["Icon"]
      353 CALL                             R39 3 1
      354 SETTABLEKS                       R39 R38 K55 ["IconContainer"]
      356 GETUPVAL                         R39 5
      357 GETTABLEKS                       R39 R39 K41 ["createElement"]
      359 LOADK                            R40 K74 ["TextLabel"]
      360 GETUPVAL                         R41 6
      361 GETTABLEKS                       R41 R41 K75 ["Dictionary"]
      363 GETTABLEKS                       R41 R41 K76 ["join"]
      365 GETTABLEKS                       R42 R17 K77 ["fontStyle"]
      367 GETTABLEKS                       R42 R42 K78 ["Normal"]
      369 DUPTABLE                         R43 K82 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency", "Text", "TextXAlignment", "TextTransparency"}]
      370 NAMECALL                         R44 R27 K67 ["getNextOrder"]
      372 CALL                             R44 1 1
      373 SETTABLEKS                       R44 R43 K1 ["LayoutOrder"]
      375 JUMPIFNOT                        R4 ; [+9]
      376 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      378 GETTABLEKS                       R44 R44 K20 ["collaboratorName"]
      380 GETTABLEKS                       R44 R44 K21 ["withIcon"]
      382 GETTABLEKS                       R44 R44 K28 ["size"]
      384 JUMP                             ; [+8]
      385 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      387 GETTABLEKS                       R44 R44 K20 ["collaboratorName"]
      389 GETTABLEKS                       R44 R44 K23 ["withoutIcon"]
      391 GETTABLEKS                       R44 R44 K28 ["size"]
      393 SETTABLEKS                       R44 R43 K43 ["Size"]
      395 GETIMPORT                        R44 K71 [Vector2.new]
      397 LOADN                            R45 0
      398 LOADK                            R46 K69 [0.5]
      399 CALL                             R44 2 1
      400 SETTABLEKS                       R44 R43 K46 ["AnchorPoint"]
      402 GETIMPORT                        R44 K50 [UDim2.new]
      404 LOADN                            R45 0
      405 MOVE                             R46 R22
      406 LOADK                            R47 K69 [0.5]
      407 MOVE                             R48 R23
      408 CALL                             R44 4 1
      409 SETTABLEKS                       R44 R43 K45 ["Position"]
      411 LOADN                            R44 1
      412 SETTABLEKS                       R44 R43 K44 ["BackgroundTransparency"]
      414 SETTABLEKS                       R3 R43 K79 ["Text"]
      416 GETIMPORT                        R44 K85 [Enum.TextXAlignment.Left]
      418 SETTABLEKS                       R44 R43 K80 ["TextXAlignment"]
      420 GETUPVAL                         R45 3
      421 GETTABLEKS                       R45 R45 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      423 JUMPIFNOT                        R45 ; [+5]
      424 JUMPIFNOT                        R32 ; [+2]
      425 LOADK                            R44 K72 [0.6]
      426 JUMP                             ; [+3]
      427 LOADN                            R44 0
      428 JUMP                             ; [+1]
      429 LOADNIL                          R44
      430 SETTABLEKS                       R44 R43 K81 ["TextTransparency"]
      432 CALL                             R41 2 -1
      433 CALL                             R39 -1 1
      434 SETTABLEKS                       R39 R38 K56 ["CollaboratorName"]
      436 JUMPIFNOT                        R15 ; [+49]
      437 GETUPVAL                         R39 5
      438 GETTABLEKS                       R39 R39 K41 ["createElement"]
      440 LOADK                            R40 K74 ["TextLabel"]
      441 GETUPVAL                         R41 6
      442 GETTABLEKS                       R41 R41 K75 ["Dictionary"]
      444 GETTABLEKS                       R41 R41 K76 ["join"]
      446 GETTABLEKS                       R42 R17 K77 ["fontStyle"]
      448 GETTABLEKS                       R42 R42 K86 ["Subtext"]
      450 DUPTABLE                         R43 K87 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency", "Text", "TextXAlignment"}]
      451 NAMECALL                         R44 R27 K67 ["getNextOrder"]
      453 CALL                             R44 1 1
      454 SETTABLEKS                       R44 R43 K1 ["LayoutOrder"]
      456 SETTABLEKS                       R25 R43 K43 ["Size"]
      458 GETIMPORT                        R44 K71 [Vector2.new]
      460 LOADN                            R45 0
      461 LOADK                            R46 K69 [0.5]
      462 CALL                             R44 2 1
      463 SETTABLEKS                       R44 R43 K46 ["AnchorPoint"]
      465 GETIMPORT                        R44 K50 [UDim2.new]
      467 LOADN                            R45 0
      468 MOVE                             R46 R24
      469 LOADK                            R47 K69 [0.5]
      470 MOVE                             R48 R26
      471 CALL                             R44 4 1
      472 SETTABLEKS                       R44 R43 K45 ["Position"]
      474 LOADN                            R44 1
      475 SETTABLEKS                       R44 R43 K44 ["BackgroundTransparency"]
      477 SETTABLEKS                       R15 R43 K79 ["Text"]
      479 GETIMPORT                        R44 K85 [Enum.TextXAlignment.Left]
      481 SETTABLEKS                       R44 R43 K80 ["TextXAlignment"]
      483 CALL                             R41 2 -1
      484 CALL                             R39 -1 1
      485 JUMP                             ; [+1]
      486 LOADNIL                          R39
      487 SETTABLEKS                       R39 R38 K57 ["CollaboratorSubText"]
      489 JUMPIFNOT                        R30 ; [+67]
      490 GETUPVAL                         R39 5
      491 GETTABLEKS                       R39 R39 K41 ["createElement"]
      493 LOADK                            R40 K74 ["TextLabel"]
      494 GETUPVAL                         R41 6
      495 GETTABLEKS                       R41 R41 K75 ["Dictionary"]
      497 GETTABLEKS                       R41 R41 K76 ["join"]
      499 GETTABLEKS                       R42 R17 K77 ["fontStyle"]
      501 GETTABLEKS                       R42 R42 K78 ["Normal"]
      503 DUPTABLE                         R43 K88 [{"LayoutOrder", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "Text", "TextXAlignment"}]
      504 NAMECALL                         R44 R27 K67 ["getNextOrder"]
      506 CALL                             R44 1 1
      507 SETTABLEKS                       R44 R43 K1 ["LayoutOrder"]
      509 JUMPIFNOT                        R4 ; [+7]
      510 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      512 GETTABLEKS                       R44 R44 K89 ["ownerLabel"]
      514 GETTABLEKS                       R44 R44 K90 ["withIconSize"]
      516 JUMP                             ; [+6]
      517 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      519 GETTABLEKS                       R44 R44 K89 ["ownerLabel"]
      521 GETTABLEKS                       R44 R44 K91 ["withoutIconSize"]
      523 SETTABLEKS                       R44 R43 K43 ["Size"]
      525 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      527 GETTABLEKS                       R44 R44 K89 ["ownerLabel"]
      529 GETTABLEKS                       R44 R44 K53 ["position"]
      531 SETTABLEKS                       R44 R43 K45 ["Position"]
      533 GETIMPORT                        R44 K71 [Vector2.new]
      535 LOADN                            R45 1
      536 LOADK                            R46 K69 [0.5]
      537 CALL                             R44 2 1
      538 SETTABLEKS                       R44 R43 K46 ["AnchorPoint"]
      540 LOADN                            R44 1
      541 SETTABLEKS                       R44 R43 K44 ["BackgroundTransparency"]
      543 LOADK                            R46 K92 ["CollaboratorTypes"]
      544 LOADK                            R47 K93 ["Owner"]
      545 NAMECALL                         R44 R16 K32 ["getText"]
      547 CALL                             R44 3 1
      548 SETTABLEKS                       R44 R43 K79 ["Text"]
      550 GETIMPORT                        R44 K95 [Enum.TextXAlignment.Right]
      552 SETTABLEKS                       R44 R43 K80 ["TextXAlignment"]
      554 CALL                             R41 2 -1
      555 CALL                             R39 -1 1
      556 JUMP                             ; [+1]
      557 LOADNIL                          R39
      558 SETTABLEKS                       R39 R38 K58 ["OwnerLabel"]
      560 GETUPVAL                         R40 3
      561 GETTABLEKS                       R40 R40 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      563 JUMPIFNOT                        R40 ; [+53]
      564 JUMPIFNOT                        R32 ; [+52]
      565 GETUPVAL                         R39 5
      566 GETTABLEKS                       R39 R39 K41 ["createElement"]
      568 LOADK                            R40 K74 ["TextLabel"]
      569 GETUPVAL                         R41 6
      570 GETTABLEKS                       R41 R41 K75 ["Dictionary"]
      572 GETTABLEKS                       R41 R41 K76 ["join"]
      574 GETTABLEKS                       R42 R17 K77 ["fontStyle"]
      576 GETTABLEKS                       R42 R42 K78 ["Normal"]
      578 DUPTABLE                         R43 K96 [{"LayoutOrder", "Position", "AnchorPoint", "BackgroundTransparency", "Text", "TextXAlignment"}]
      579 NAMECALL                         R44 R27 K67 ["getNextOrder"]
      581 CALL                             R44 1 1
      582 SETTABLEKS                       R44 R43 K1 ["LayoutOrder"]
      584 GETIMPORT                        R44 K50 [UDim2.new]
      586 LOADN                            R45 1
      587 LOADN                            R46 236
      588 LOADK                            R47 K69 [0.5]
      589 LOADN                            R48 0
      590 CALL                             R44 4 1
      591 SETTABLEKS                       R44 R43 K45 ["Position"]
      593 GETIMPORT                        R44 K71 [Vector2.new]
      595 LOADN                            R45 1
      596 LOADK                            R46 K69 [0.5]
      597 CALL                             R44 2 1
      598 SETTABLEKS                       R44 R43 K46 ["AnchorPoint"]
      600 LOADN                            R44 1
      601 SETTABLEKS                       R44 R43 K44 ["BackgroundTransparency"]
      603 LOADK                            R46 K92 ["CollaboratorTypes"]
      604 LOADK                            R47 K97 ["ActionNeeded"]
      605 NAMECALL                         R44 R16 K32 ["getText"]
      607 CALL                             R44 3 1
      608 SETTABLEKS                       R44 R43 K79 ["Text"]
      610 GETIMPORT                        R44 K95 [Enum.TextXAlignment.Right]
      612 SETTABLEKS                       R44 R43 K80 ["TextXAlignment"]
      614 CALL                             R41 2 -1
      615 CALL                             R39 -1 1
      616 JUMP                             ; [+1]
      617 LOADNIL                          R39
      618 SETTABLEKS                       R39 R38 K59 ["ActionNeededLabel"]
      620 JUMPIFNOT                        R33 ; [+133]
      621 GETUPVAL                         R39 5
      622 GETTABLEKS                       R39 R39 K41 ["createElement"]
      624 LOADK                            R40 K42 ["Frame"]
      625 DUPTABLE                         R41 K98 [{"LayoutOrder", "BackgroundTransparency", "Size", "Position", "AnchorPoint"}]
      626 NAMECALL                         R42 R27 K67 ["getNextOrder"]
      628 CALL                             R42 1 1
      629 SETTABLEKS                       R42 R41 K1 ["LayoutOrder"]
      631 LOADN                            R42 1
      632 SETTABLEKS                       R42 R41 K44 ["BackgroundTransparency"]
      634 GETIMPORT                        R42 K50 [UDim2.new]
      636 LOADN                            R43 0
      637 GETTABLEKS                       R44 R17 K99 ["selectInput"]
      639 GETTABLEKS                       R44 R44 K51 ["width"]
      641 LOADN                            R45 0
      642 GETTABLEKS                       R46 R17 K17 ["collaboratorItem"]
      644 GETTABLEKS                       R46 R46 K100 ["permissionEditor"]
      646 GETTABLEKS                       R46 R46 K101 ["heightOffset"]
      648 CALL                             R42 4 1
      649 SETTABLEKS                       R42 R41 K43 ["Size"]
      651 GETIMPORT                        R42 K50 [UDim2.new]
      653 LOADN                            R43 1
      654 LOADN                            R44 0
      655 LOADK                            R45 K69 [0.5]
      656 GETTABLEKS                       R46 R17 K17 ["collaboratorItem"]
      658 GETTABLEKS                       R46 R46 K100 ["permissionEditor"]
      660 GETTABLEKS                       R46 R46 K25 ["yOffset"]
      662 CALL                             R42 4 1
      663 SETTABLEKS                       R42 R41 K45 ["Position"]
      665 GETIMPORT                        R42 K71 [Vector2.new]
      667 LOADN                            R43 1
      668 LOADK                            R44 K69 [0.5]
      669 CALL                             R42 2 1
      670 SETTABLEKS                       R42 R41 K46 ["AnchorPoint"]
      672 DUPTABLE                         R42 K105 [{"LoadingIndicator", "PermissionsDropdown", "Tooltip"}]
      673 MOVE                             R43 R6
      674 JUMPIFNOT                        R43 ; [+13]
      675 GETUPVAL                         R43 5
      676 GETTABLEKS                       R43 R43 K41 ["createElement"]
      678 GETUPVAL                         R44 7
      679 DUPTABLE                         R45 K106 [{"Size"}]
      680 GETIMPORT                        R46 K108 [UDim2.fromScale]
      682 LOADN                            R47 1
      683 LOADN                            R48 1
      684 CALL                             R46 2 1
      685 SETTABLEKS                       R46 R45 K43 ["Size"]
      687 CALL                             R43 2 1
      688 SETTABLEKS                       R43 R42 K102 ["LoadingIndicator"]
      690 JUMPIF                           R6 ; [+40]
      691 GETUPVAL                         R43 5
      692 GETTABLEKS                       R43 R43 K41 ["createElement"]
      694 GETUPVAL                         R44 8
      695 DUPTABLE                         R45 K116 [{"Enabled", "Items", "OnItemActivated", "OnRenderItem", "PlaceholderText", "Width", "Style"}]
      696 GETUPVAL                         R47 0
      697 JUMPIFNOT                        R47 ; [+2]
      698 MOVE                             R46 R18
      699 JUMP                             ; [+2]
      700 NOT                              R47 R12
      701 AND                              R46 R47 R18
      702 SETTABLEKS                       R46 R45 K109 ["Enabled"]
      704 SETTABLEKS                       R9 R45 K110 ["Items"]
      706 GETTABLEKS                       R46 R0 K117 ["onItemActivated"]
      708 SETTABLEKS                       R46 R45 K111 ["OnItemActivated"]
      710 GETTABLEKS                       R46 R0 K118 ["onRenderItem"]
      712 SETTABLEKS                       R46 R45 K112 ["OnRenderItem"]
      714 SETTABLEKS                       R31 R45 K113 ["PlaceholderText"]
      716 GETTABLEKS                       R47 R17 K99 ["selectInput"]
      718 GETTABLEKS                       R47 R47 K51 ["width"]
      720 ADD                              R46 R47 R21
      721 SETTABLEKS                       R46 R45 K114 ["Width"]
      723 JUMPIFNOT                        R18 ; [+2]
      724 LOADK                            R46 K119 ["Editable"]
      725 JUMP                             ; [+1]
      726 LOADK                            R46 K120 ["NonEditable"]
      727 SETTABLEKS                       R46 R45 K115 ["Style"]
      729 CALL                             R43 2 1
      730 JUMPIF                           R43 ; [+1]
      731 LOADNIL                          R43
      732 SETTABLEKS                       R43 R42 K103 ["PermissionsDropdown"]
      734 JUMPIFNOT                        R34 ; [+14]
      735 GETUPVAL                         R43 5
      736 GETTABLEKS                       R43 R43 K41 ["createElement"]
      738 GETUPVAL                         R44 9
      739 DUPTABLE                         R45 K121 [{"Text"}]
      740 GETUPVAL                         R47 0
      741 JUMPIFNOT                        R47 ; [+2]
      742 MOVE                             R46 R13
      743 JUMP                             ; [+1]
      744 MOVE                             R46 R29
      745 SETTABLEKS                       R46 R45 K79 ["Text"]
      747 CALL                             R43 2 1
      748 JUMP                             ; [+1]
      749 LOADNIL                          R43
      750 SETTABLEKS                       R43 R42 K104 ["Tooltip"]
      752 CALL                             R39 3 1
      753 JUMP                             ; [+1]
      754 LOADNIL                          R39
      755 SETTABLEKS                       R39 R38 K60 ["PermissionEditor"]
      757 MOVE                             R39 R19
      758 JUMPIFNOT                        R39 ; [+22]
      759 GETUPVAL                         R39 5
      760 GETTABLEKS                       R39 R39 K41 ["createElement"]
      762 GETUPVAL                         R40 10
      763 DUPTABLE                         R41 K123 [{"LayoutOrder", "Enabled", "OnClicked"}]
      764 NAMECALL                         R42 R27 K67 ["getNextOrder"]
      766 CALL                             R42 1 1
      767 SETTABLEKS                       R42 R41 K1 ["LayoutOrder"]
      769 GETUPVAL                         R43 0
      770 JUMPIFNOT                        R43 ; [+2]
      771 NOT                              R42 R6
      772 JUMP                             ; [+3]
      773 MOVE                             R42 R5
      774 JUMPIFNOT                        R42 ; [+1]
      775 NOT                              R42 R6
      776 SETTABLEKS                       R42 R41 K109 ["Enabled"]
      778 SETTABLEKS                       R8 R41 K122 ["OnClicked"]
      780 CALL                             R39 2 1
      781 SETTABLEKS                       R39 R38 K61 ["Delete"]
      783 GETUPVAL                         R40 11
      784 NOT                              R39 R40
      785 JUMPIFNOT                        R39 ; [+22]
      786 NOT                              R39 R11
      787 JUMPIFNOT                        R39 ; [+20]
      788 GETUPVAL                         R39 5
      789 GETTABLEKS                       R39 R39 K41 ["createElement"]
      791 GETUPVAL                         R40 12
      792 DUPTABLE                         R41 K124 [{"Position", "LayoutOrder"}]
      793 GETIMPORT                        R42 K50 [UDim2.new]
      795 LOADK                            R43 K69 [0.5]
      796 LOADN                            R44 0
      797 LOADN                            R45 1
      798 LOADN                            R46 0
      799 CALL                             R42 4 1
      800 SETTABLEKS                       R42 R41 K45 ["Position"]
      802 NAMECALL                         R42 R27 K67 ["getNextOrder"]
      804 CALL                             R42 1 1
      805 SETTABLEKS                       R42 R41 K1 ["LayoutOrder"]
      807 CALL                             R39 2 1
      808 SETTABLEKS                       R39 R38 K62 ["Separator"]
      810 CALL                             R35 3 -1
      811 RETURN                           R35 -1

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
       19 GETIMPORT                        R3 K7 [script]
       21 GETTABLEKS                       R3 R3 K8 ["Parent"]
       23 GETTABLEKS                       R3 R3 K8 ["Parent"]
       25 GETTABLEKS                       R3 R3 K8 ["Parent"]
       27 GETIMPORT                        R4 K10 [require]
       29 GETTABLEKS                       R5 R3 K11 ["Packages"]
       31 GETTABLEKS                       R5 R5 K12 ["Roact"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K10 [require]
       36 GETTABLEKS                       R6 R3 K11 ["Packages"]
       38 GETTABLEKS                       R6 R6 K13 ["Cryo"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K10 [require]
       43 GETTABLEKS                       R7 R3 K14 ["Bin"]
       45 GETTABLEKS                       R7 R7 K15 ["defineLuaFlags"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K10 [require]
       50 GETTABLEKS                       R8 R3 K11 ["Packages"]
       52 GETTABLEKS                       R8 R8 K16 ["Framework"]
       54 CALL                             R7 1 1
       55 GETTABLEKS                       R8 R7 K17 ["Style"]
       57 GETTABLEKS                       R8 R8 K18 ["Stylizer"]
       59 GETTABLEKS                       R9 R7 K19 ["ContextServices"]
       61 GETTABLEKS                       R10 R9 K20 ["withContext"]
       63 GETTABLEKS                       R11 R9 K21 ["Localization"]
       65 GETTABLEKS                       R12 R7 K22 ["UI"]
       67 GETTABLEKS                       R13 R7 K23 ["Util"]
       69 GETTABLEKS                       R14 R12 K24 ["SelectInput"]
       71 GETTABLEKS                       R15 R12 K25 ["Button"]
       73 GETTABLEKS                       R16 R12 K26 ["TextLabel"]
       75 GETTABLEKS                       R17 R12 K27 ["Separator"]
       77 GETTABLEKS                       R18 R12 K28 ["Tooltip"]
       79 GETTABLEKS                       R19 R7 K22 ["UI"]
       81 GETTABLEKS                       R19 R19 K29 ["LoadingIndicator"]
       83 GETTABLEKS                       R20 R13 K30 ["LayoutOrderIterator"]
       85 JUMPIFNOT                        R1 ; [+10]
       86 GETIMPORT                        R21 K10 [require]
       88 GETTABLEKS                       R22 R3 K31 ["Src"]
       90 GETTABLEKS                       R22 R22 K23 ["Util"]
       92 GETTABLEKS                       R22 R22 K32 ["Analytics"]
       94 CALL                             R21 1 1
       95 JUMP                             ; [+1]
       96 LOADNIL                          R21
       97 GETIMPORT                        R22 K10 [require]
       99 GETTABLEKS                       R23 R3 K31 ["Src"]
      101 GETTABLEKS                       R23 R23 K23 ["Util"]
      103 GETTABLEKS                       R23 R23 K33 ["PermissionsConstants"]
      105 CALL                             R22 1 1
      106 GETTABLEKS                       R23 R4 K34 ["PureComponent"]
      108 LOADK                            R25 K35 ["DeleteButton"]
      109 NAMECALL                         R23 R23 K36 ["extend"]
      111 CALL                             R23 2 1
      112 GETIMPORT                        R24 K10 [require]
      114 GETTABLEKS                       R25 R3 K31 ["Src"]
      116 GETTABLEKS                       R25 R25 K37 ["Enums"]
      118 GETTABLEKS                       R25 R25 K38 ["CanCollaborateError"]
      120 CALL                             R24 1 1
      121 GETIMPORT                        R25 K1 [game]
      123 LOADK                            R27 K39 ["StudioFriendToConnection"]
      124 NAMECALL                         R25 R25 K3 ["GetFastFlag"]
      126 CALL                             R25 2 1
      127 GETIMPORT                        R26 K1 [game]
      129 LOADK                            R28 K40 ["UpsellCollabSafety2"]
      130 NAMECALL                         R26 R26 K3 ["GetFastFlag"]
      132 CALL                             R26 2 1
      133 NEWTABLE                         R27 8 0
      135 GETTABLEKS                       R28 R22 K41 ["OwnerKey"]
      137 LOADK                            R29 K42 ["Owner"]
      138 SETTABLE                         R29 R27 R28
      139 GETTABLEKS                       R28 R22 K43 ["PlayKey"]
      141 LOADK                            R29 K44 ["Play"]
      142 SETTABLE                         R29 R27 R28
      143 GETTABLEKS                       R28 R22 K45 ["EditKey"]
      145 LOADK                            R29 K46 ["Edit"]
      146 SETTABLE                         R29 R27 R28
      147 GETTABLEKS                       R28 R22 K47 ["NoAccessKey"]
      149 LOADK                            R29 K48 ["NoAccess"]
      150 SETTABLE                         R29 R27 R28
      151 GETTABLEKS                       R28 R22 K49 ["AdminKey"]
      153 LOADK                            R29 K50 ["Admin"]
      154 SETTABLE                         R29 R27 R28
      155 DUPCLOSURE                       R28 K51 [PROTO_0]
      156 SETTABLEKS                       R28 R23 K52 ["init"]
      158 DUPCLOSURE                       R28 K53 [PROTO_4]
      159 CAPTURE                          VAL R4
      160 SETTABLEKS                       R28 R23 K54 ["render"]
      162 MOVE                             R28 R10
      163 DUPTABLE                         R29 K55 [{"Stylizer"}]
      164 SETTABLEKS                       R8 R29 K18 ["Stylizer"]
      166 CALL                             R28 1 1
      167 MOVE                             R29 R23
      168 CALL                             R28 1 1
      169 MOVE                             R23 R28
      170 GETTABLEKS                       R28 R4 K34 ["PureComponent"]
      172 LOADK                            R30 K56 ["CollaboratorItem"]
      173 NAMECALL                         R28 R28 K36 ["extend"]
      175 CALL                             R28 2 1
      176 DUPTABLE                         R29 K59 [{"Writable", "Loading"}]
      177 LOADB                            R30 1
      178 SETTABLEKS                       R30 R29 K57 ["Writable"]
      180 LOADB                            R30 0
      181 SETTABLEKS                       R30 R29 K58 ["Loading"]
      183 SETTABLEKS                       R29 R28 K60 ["defaultProps"]
      185 DUPCLOSURE                       R29 K61 [PROTO_5]
      186 CAPTURE                          VAL R22
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R2
      189 CAPTURE                          VAL R27
      190 CAPTURE                          VAL R21
      191 SETTABLEKS                       R29 R28 K62 ["getCurrentPermissionLabel"]
      193 DUPCLOSURE                       R29 K63 [PROTO_6]
      194 CAPTURE                          VAL R4
      195 CAPTURE                          VAL R16
      196 SETGLOBAL                        R29 K64 ["createTextLabel"]
      198 DUPCLOSURE                       R29 K65 [PROTO_9]
      199 CAPTURE                          VAL R4
      200 CAPTURE                          VAL R15
      201 SETTABLEKS                       R29 R28 K52 ["init"]
      203 NEWCLOSURE                       R29 P5
      204 CAPTURE                          VAL R0
      205 CAPTURE                          VAL R20
      206 CAPTURE                          VAL R25
      207 CAPTURE                          VAL R6
      208 CAPTURE                          VAL R24
      209 CAPTURE                          VAL R4
      210 CAPTURE                          VAL R5
      211 CAPTURE                          VAL R19
      212 CAPTURE                          VAL R14
      213 CAPTURE                          VAL R18
      214 CAPTURE                          REF R23
      215 CAPTURE                          VAL R26
      216 CAPTURE                          VAL R17
      217 SETTABLEKS                       R29 R28 K54 ["render"]
      219 MOVE                             R29 R10
      220 DUPTABLE                         R30 K66 [{"Stylizer", "Localization"}]
      221 SETTABLEKS                       R8 R30 K18 ["Stylizer"]
      223 SETTABLEKS                       R11 R30 K21 ["Localization"]
      225 CALL                             R29 1 1
      226 MOVE                             R30 R28
      227 CALL                             R29 1 1
      228 MOVE                             R28 R29
      229 CLOSEUPVALS                      R23
      230 RETURN                           R28 1
