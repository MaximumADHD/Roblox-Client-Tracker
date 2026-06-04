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
      213 JUMPIFNOT                        R33 ; [+16]
      214 GETTABLEKS                       R32 R1 K38 ["CanCollaborateResponse"]
      216 JUMPIFNOT                        R32 ; [+14]
      217 LOADB                            R32 0
      218 GETTABLEKS                       R33 R1 K38 ["CanCollaborateResponse"]
      220 GETUPVAL                         R34 4
      221 GETTABLEKS                       R34 R34 K39 ["None"]
      223 JUMPIFEQ                         R33 R34 ; [+7]
      225 JUMPIFEQKS                       R31 K40 ["Edit"] ; [+2]
      227 LOADB                            R32 0 +1
      228 LOADB                            R32 1
      229 JUMP                             ; [+1]
      230 LOADB                            R32 0
      231 GETUPVAL                         R34 0
      232 JUMPIFNOT                        R34 ; [+9]
      233 NOT                              R33 R14
      234 JUMPIFNOT                        R33 ; [+16]
      235 GETUPVAL                         R34 3
      236 GETTABLEKS                       R34 R34 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      238 NOT                              R33 R34
      239 JUMPIF                           R33 ; [+11]
      240 NOT                              R33 R32
      241 JUMP                             ; [+9]
      242 JUMPIF                           R7 ; [+2]
      243 MOVE                             R33 R10
      244 JUMPIFNOT                        R33 ; [+6]
      245 GETUPVAL                         R34 3
      246 GETTABLEKS                       R34 R34 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      248 NOT                              R33 R34
      249 JUMPIF                           R33 ; [+1]
      250 NOT                              R33 R32
      251 GETUPVAL                         R35 0
      252 JUMPIFNOT                        R35 ; [+2]
      253 MOVE                             R34 R13
      254 JUMP                             ; [+1]
      255 MOVE                             R34 R28
      256 GETUPVAL                         R35 5
      257 GETTABLEKS                       R35 R35 K41 ["createElement"]
      259 LOADK                            R36 K42 ["Frame"]
      260 DUPTABLE                         R37 K48 [{"Size", "LayoutOrder", "BackgroundTransparency", "Position", "AnchorPoint", "BorderSizePixel"}]
      261 GETIMPORT                        R38 K50 [UDim2.new]
      263 LOADN                            R39 0
      264 GETTABLEKS                       R40 R20 K51 ["width"]
      266 LOADN                            R41 0
      267 GETTABLEKS                       R42 R20 K52 ["height"]
      269 CALL                             R38 4 1
      270 SETTABLEKS                       R38 R37 K43 ["Size"]
      272 SETTABLEKS                       R2 R37 K1 ["LayoutOrder"]
      274 LOADN                            R38 1
      275 SETTABLEKS                       R38 R37 K44 ["BackgroundTransparency"]
      277 GETTABLEKS                       R38 R20 K53 ["position"]
      279 SETTABLEKS                       R38 R37 K45 ["Position"]
      281 GETTABLEKS                       R38 R20 K54 ["anchorPoint"]
      283 SETTABLEKS                       R38 R37 K46 ["AnchorPoint"]
      285 LOADN                            R38 0
      286 SETTABLEKS                       R38 R37 K47 ["BorderSizePixel"]
      288 DUPTABLE                         R38 K63 [{"IconContainer", "CollaboratorName", "CollaboratorSubText", "OwnerLabel", "ActionNeededLabel", "PermissionEditor", "Delete", "Separator"}]
      289 MOVE                             R39 R4
      290 JUMPIFNOT                        R39 ; [+66]
      291 GETUPVAL                         R39 5
      292 GETTABLEKS                       R39 R39 K41 ["createElement"]
      294 GETUPVAL                         R41 3
      295 GETTABLEKS                       R41 R41 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      297 JUMPIFNOT                        R41 ; [+2]
      298 LOADK                            R40 K64 ["CanvasGroup"]
      299 JUMP                             ; [+1]
      300 LOADK                            R40 K42 ["Frame"]
      301 DUPTABLE                         R41 K66 [{"LayoutOrder", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "GroupTransparency"}]
      302 NAMECALL                         R42 R27 K67 ["getNextOrder"]
      304 CALL                             R42 1 1
      305 SETTABLEKS                       R42 R41 K1 ["LayoutOrder"]
      307 GETIMPORT                        R42 K50 [UDim2.new]
      309 LOADN                            R43 0
      310 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      312 GETTABLEKS                       R44 R44 K68 ["iconContainerSize"]
      314 LOADN                            R45 0
      315 GETTABLEKS                       R46 R17 K17 ["collaboratorItem"]
      317 GETTABLEKS                       R46 R46 K68 ["iconContainerSize"]
      319 CALL                             R42 4 1
      320 SETTABLEKS                       R42 R41 K43 ["Size"]
      322 GETIMPORT                        R42 K50 [UDim2.new]
      324 LOADN                            R43 0
      325 LOADN                            R44 0
      326 LOADK                            R45 K69 [0.5]
      327 LOADN                            R46 0
      328 CALL                             R42 4 1
      329 SETTABLEKS                       R42 R41 K45 ["Position"]
      331 GETIMPORT                        R42 K71 [Vector2.new]
      333 LOADN                            R43 0
      334 LOADK                            R44 K69 [0.5]
      335 CALL                             R42 2 1
      336 SETTABLEKS                       R42 R41 K46 ["AnchorPoint"]
      338 LOADN                            R42 1
      339 SETTABLEKS                       R42 R41 K44 ["BackgroundTransparency"]
      341 GETUPVAL                         R43 3
      342 GETTABLEKS                       R43 R43 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      344 JUMPIFNOT                        R43 ; [+5]
      345 JUMPIFNOT                        R32 ; [+2]
      346 LOADK                            R42 K72 [0.6]
      347 JUMP                             ; [+3]
      348 LOADN                            R42 0
      349 JUMP                             ; [+1]
      350 LOADNIL                          R42
      351 SETTABLEKS                       R42 R41 K65 ["GroupTransparency"]
      353 DUPTABLE                         R42 K73 [{"Icon"}]
      354 SETTABLEKS                       R4 R42 K3 ["Icon"]
      356 CALL                             R39 3 1
      357 SETTABLEKS                       R39 R38 K55 ["IconContainer"]
      359 GETUPVAL                         R39 5
      360 GETTABLEKS                       R39 R39 K41 ["createElement"]
      362 LOADK                            R40 K74 ["TextLabel"]
      363 GETUPVAL                         R41 6
      364 GETTABLEKS                       R41 R41 K75 ["Dictionary"]
      366 GETTABLEKS                       R41 R41 K76 ["join"]
      368 GETTABLEKS                       R42 R17 K77 ["fontStyle"]
      370 GETTABLEKS                       R42 R42 K78 ["Normal"]
      372 DUPTABLE                         R43 K82 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency", "Text", "TextXAlignment", "TextTransparency"}]
      373 NAMECALL                         R44 R27 K67 ["getNextOrder"]
      375 CALL                             R44 1 1
      376 SETTABLEKS                       R44 R43 K1 ["LayoutOrder"]
      378 JUMPIFNOT                        R4 ; [+9]
      379 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      381 GETTABLEKS                       R44 R44 K20 ["collaboratorName"]
      383 GETTABLEKS                       R44 R44 K21 ["withIcon"]
      385 GETTABLEKS                       R44 R44 K28 ["size"]
      387 JUMP                             ; [+8]
      388 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      390 GETTABLEKS                       R44 R44 K20 ["collaboratorName"]
      392 GETTABLEKS                       R44 R44 K23 ["withoutIcon"]
      394 GETTABLEKS                       R44 R44 K28 ["size"]
      396 SETTABLEKS                       R44 R43 K43 ["Size"]
      398 GETIMPORT                        R44 K71 [Vector2.new]
      400 LOADN                            R45 0
      401 LOADK                            R46 K69 [0.5]
      402 CALL                             R44 2 1
      403 SETTABLEKS                       R44 R43 K46 ["AnchorPoint"]
      405 GETIMPORT                        R44 K50 [UDim2.new]
      407 LOADN                            R45 0
      408 MOVE                             R46 R22
      409 LOADK                            R47 K69 [0.5]
      410 MOVE                             R48 R23
      411 CALL                             R44 4 1
      412 SETTABLEKS                       R44 R43 K45 ["Position"]
      414 LOADN                            R44 1
      415 SETTABLEKS                       R44 R43 K44 ["BackgroundTransparency"]
      417 SETTABLEKS                       R3 R43 K79 ["Text"]
      419 GETIMPORT                        R44 K85 [Enum.TextXAlignment.Left]
      421 SETTABLEKS                       R44 R43 K80 ["TextXAlignment"]
      423 GETUPVAL                         R45 3
      424 GETTABLEKS                       R45 R45 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      426 JUMPIFNOT                        R45 ; [+5]
      427 JUMPIFNOT                        R32 ; [+2]
      428 LOADK                            R44 K72 [0.6]
      429 JUMP                             ; [+3]
      430 LOADN                            R44 0
      431 JUMP                             ; [+1]
      432 LOADNIL                          R44
      433 SETTABLEKS                       R44 R43 K81 ["TextTransparency"]
      435 CALL                             R41 2 -1
      436 CALL                             R39 -1 1
      437 SETTABLEKS                       R39 R38 K56 ["CollaboratorName"]
      439 JUMPIFNOT                        R15 ; [+49]
      440 GETUPVAL                         R39 5
      441 GETTABLEKS                       R39 R39 K41 ["createElement"]
      443 LOADK                            R40 K74 ["TextLabel"]
      444 GETUPVAL                         R41 6
      445 GETTABLEKS                       R41 R41 K75 ["Dictionary"]
      447 GETTABLEKS                       R41 R41 K76 ["join"]
      449 GETTABLEKS                       R42 R17 K77 ["fontStyle"]
      451 GETTABLEKS                       R42 R42 K86 ["Subtext"]
      453 DUPTABLE                         R43 K87 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency", "Text", "TextXAlignment"}]
      454 NAMECALL                         R44 R27 K67 ["getNextOrder"]
      456 CALL                             R44 1 1
      457 SETTABLEKS                       R44 R43 K1 ["LayoutOrder"]
      459 SETTABLEKS                       R25 R43 K43 ["Size"]
      461 GETIMPORT                        R44 K71 [Vector2.new]
      463 LOADN                            R45 0
      464 LOADK                            R46 K69 [0.5]
      465 CALL                             R44 2 1
      466 SETTABLEKS                       R44 R43 K46 ["AnchorPoint"]
      468 GETIMPORT                        R44 K50 [UDim2.new]
      470 LOADN                            R45 0
      471 MOVE                             R46 R24
      472 LOADK                            R47 K69 [0.5]
      473 MOVE                             R48 R26
      474 CALL                             R44 4 1
      475 SETTABLEKS                       R44 R43 K45 ["Position"]
      477 LOADN                            R44 1
      478 SETTABLEKS                       R44 R43 K44 ["BackgroundTransparency"]
      480 SETTABLEKS                       R15 R43 K79 ["Text"]
      482 GETIMPORT                        R44 K85 [Enum.TextXAlignment.Left]
      484 SETTABLEKS                       R44 R43 K80 ["TextXAlignment"]
      486 CALL                             R41 2 -1
      487 CALL                             R39 -1 1
      488 JUMP                             ; [+1]
      489 LOADNIL                          R39
      490 SETTABLEKS                       R39 R38 K57 ["CollaboratorSubText"]
      492 JUMPIFNOT                        R30 ; [+67]
      493 GETUPVAL                         R39 5
      494 GETTABLEKS                       R39 R39 K41 ["createElement"]
      496 LOADK                            R40 K74 ["TextLabel"]
      497 GETUPVAL                         R41 6
      498 GETTABLEKS                       R41 R41 K75 ["Dictionary"]
      500 GETTABLEKS                       R41 R41 K76 ["join"]
      502 GETTABLEKS                       R42 R17 K77 ["fontStyle"]
      504 GETTABLEKS                       R42 R42 K78 ["Normal"]
      506 DUPTABLE                         R43 K88 [{"LayoutOrder", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "Text", "TextXAlignment"}]
      507 NAMECALL                         R44 R27 K67 ["getNextOrder"]
      509 CALL                             R44 1 1
      510 SETTABLEKS                       R44 R43 K1 ["LayoutOrder"]
      512 JUMPIFNOT                        R4 ; [+7]
      513 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      515 GETTABLEKS                       R44 R44 K89 ["ownerLabel"]
      517 GETTABLEKS                       R44 R44 K90 ["withIconSize"]
      519 JUMP                             ; [+6]
      520 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      522 GETTABLEKS                       R44 R44 K89 ["ownerLabel"]
      524 GETTABLEKS                       R44 R44 K91 ["withoutIconSize"]
      526 SETTABLEKS                       R44 R43 K43 ["Size"]
      528 GETTABLEKS                       R44 R17 K17 ["collaboratorItem"]
      530 GETTABLEKS                       R44 R44 K89 ["ownerLabel"]
      532 GETTABLEKS                       R44 R44 K53 ["position"]
      534 SETTABLEKS                       R44 R43 K45 ["Position"]
      536 GETIMPORT                        R44 K71 [Vector2.new]
      538 LOADN                            R45 1
      539 LOADK                            R46 K69 [0.5]
      540 CALL                             R44 2 1
      541 SETTABLEKS                       R44 R43 K46 ["AnchorPoint"]
      543 LOADN                            R44 1
      544 SETTABLEKS                       R44 R43 K44 ["BackgroundTransparency"]
      546 LOADK                            R46 K92 ["CollaboratorTypes"]
      547 LOADK                            R47 K93 ["Owner"]
      548 NAMECALL                         R44 R16 K32 ["getText"]
      550 CALL                             R44 3 1
      551 SETTABLEKS                       R44 R43 K79 ["Text"]
      553 GETIMPORT                        R44 K95 [Enum.TextXAlignment.Right]
      555 SETTABLEKS                       R44 R43 K80 ["TextXAlignment"]
      557 CALL                             R41 2 -1
      558 CALL                             R39 -1 1
      559 JUMP                             ; [+1]
      560 LOADNIL                          R39
      561 SETTABLEKS                       R39 R38 K58 ["OwnerLabel"]
      563 GETUPVAL                         R40 3
      564 GETTABLEKS                       R40 R40 K37 ["fflagManageCollaboratorsActionNeededLabel"]
      566 JUMPIFNOT                        R40 ; [+53]
      567 JUMPIFNOT                        R32 ; [+52]
      568 GETUPVAL                         R39 5
      569 GETTABLEKS                       R39 R39 K41 ["createElement"]
      571 LOADK                            R40 K74 ["TextLabel"]
      572 GETUPVAL                         R41 6
      573 GETTABLEKS                       R41 R41 K75 ["Dictionary"]
      575 GETTABLEKS                       R41 R41 K76 ["join"]
      577 GETTABLEKS                       R42 R17 K77 ["fontStyle"]
      579 GETTABLEKS                       R42 R42 K78 ["Normal"]
      581 DUPTABLE                         R43 K96 [{"LayoutOrder", "Position", "AnchorPoint", "BackgroundTransparency", "Text", "TextXAlignment"}]
      582 NAMECALL                         R44 R27 K67 ["getNextOrder"]
      584 CALL                             R44 1 1
      585 SETTABLEKS                       R44 R43 K1 ["LayoutOrder"]
      587 GETIMPORT                        R44 K50 [UDim2.new]
      589 LOADN                            R45 1
      590 LOADN                            R46 236
      591 LOADK                            R47 K69 [0.5]
      592 LOADN                            R48 0
      593 CALL                             R44 4 1
      594 SETTABLEKS                       R44 R43 K45 ["Position"]
      596 GETIMPORT                        R44 K71 [Vector2.new]
      598 LOADN                            R45 1
      599 LOADK                            R46 K69 [0.5]
      600 CALL                             R44 2 1
      601 SETTABLEKS                       R44 R43 K46 ["AnchorPoint"]
      603 LOADN                            R44 1
      604 SETTABLEKS                       R44 R43 K44 ["BackgroundTransparency"]
      606 LOADK                            R46 K92 ["CollaboratorTypes"]
      607 LOADK                            R47 K97 ["ActionNeeded"]
      608 NAMECALL                         R44 R16 K32 ["getText"]
      610 CALL                             R44 3 1
      611 SETTABLEKS                       R44 R43 K79 ["Text"]
      613 GETIMPORT                        R44 K95 [Enum.TextXAlignment.Right]
      615 SETTABLEKS                       R44 R43 K80 ["TextXAlignment"]
      617 CALL                             R41 2 -1
      618 CALL                             R39 -1 1
      619 JUMP                             ; [+1]
      620 LOADNIL                          R39
      621 SETTABLEKS                       R39 R38 K59 ["ActionNeededLabel"]
      623 JUMPIFNOT                        R33 ; [+133]
      624 GETUPVAL                         R39 5
      625 GETTABLEKS                       R39 R39 K41 ["createElement"]
      627 LOADK                            R40 K42 ["Frame"]
      628 DUPTABLE                         R41 K98 [{"LayoutOrder", "BackgroundTransparency", "Size", "Position", "AnchorPoint"}]
      629 NAMECALL                         R42 R27 K67 ["getNextOrder"]
      631 CALL                             R42 1 1
      632 SETTABLEKS                       R42 R41 K1 ["LayoutOrder"]
      634 LOADN                            R42 1
      635 SETTABLEKS                       R42 R41 K44 ["BackgroundTransparency"]
      637 GETIMPORT                        R42 K50 [UDim2.new]
      639 LOADN                            R43 0
      640 GETTABLEKS                       R44 R17 K99 ["selectInput"]
      642 GETTABLEKS                       R44 R44 K51 ["width"]
      644 LOADN                            R45 0
      645 GETTABLEKS                       R46 R17 K17 ["collaboratorItem"]
      647 GETTABLEKS                       R46 R46 K100 ["permissionEditor"]
      649 GETTABLEKS                       R46 R46 K101 ["heightOffset"]
      651 CALL                             R42 4 1
      652 SETTABLEKS                       R42 R41 K43 ["Size"]
      654 GETIMPORT                        R42 K50 [UDim2.new]
      656 LOADN                            R43 1
      657 LOADN                            R44 0
      658 LOADK                            R45 K69 [0.5]
      659 GETTABLEKS                       R46 R17 K17 ["collaboratorItem"]
      661 GETTABLEKS                       R46 R46 K100 ["permissionEditor"]
      663 GETTABLEKS                       R46 R46 K25 ["yOffset"]
      665 CALL                             R42 4 1
      666 SETTABLEKS                       R42 R41 K45 ["Position"]
      668 GETIMPORT                        R42 K71 [Vector2.new]
      670 LOADN                            R43 1
      671 LOADK                            R44 K69 [0.5]
      672 CALL                             R42 2 1
      673 SETTABLEKS                       R42 R41 K46 ["AnchorPoint"]
      675 DUPTABLE                         R42 K105 [{"LoadingIndicator", "PermissionsDropdown", "Tooltip"}]
      676 MOVE                             R43 R6
      677 JUMPIFNOT                        R43 ; [+13]
      678 GETUPVAL                         R43 5
      679 GETTABLEKS                       R43 R43 K41 ["createElement"]
      681 GETUPVAL                         R44 7
      682 DUPTABLE                         R45 K106 [{"Size"}]
      683 GETIMPORT                        R46 K108 [UDim2.fromScale]
      685 LOADN                            R47 1
      686 LOADN                            R48 1
      687 CALL                             R46 2 1
      688 SETTABLEKS                       R46 R45 K43 ["Size"]
      690 CALL                             R43 2 1
      691 SETTABLEKS                       R43 R42 K102 ["LoadingIndicator"]
      693 JUMPIF                           R6 ; [+40]
      694 GETUPVAL                         R43 5
      695 GETTABLEKS                       R43 R43 K41 ["createElement"]
      697 GETUPVAL                         R44 8
      698 DUPTABLE                         R45 K116 [{"Enabled", "Items", "OnItemActivated", "OnRenderItem", "PlaceholderText", "Width", "Style"}]
      699 GETUPVAL                         R47 0
      700 JUMPIFNOT                        R47 ; [+2]
      701 MOVE                             R46 R18
      702 JUMP                             ; [+2]
      703 NOT                              R47 R12
      704 AND                              R46 R47 R18
      705 SETTABLEKS                       R46 R45 K109 ["Enabled"]
      707 SETTABLEKS                       R9 R45 K110 ["Items"]
      709 GETTABLEKS                       R46 R0 K117 ["onItemActivated"]
      711 SETTABLEKS                       R46 R45 K111 ["OnItemActivated"]
      713 GETTABLEKS                       R46 R0 K118 ["onRenderItem"]
      715 SETTABLEKS                       R46 R45 K112 ["OnRenderItem"]
      717 SETTABLEKS                       R31 R45 K113 ["PlaceholderText"]
      719 GETTABLEKS                       R47 R17 K99 ["selectInput"]
      721 GETTABLEKS                       R47 R47 K51 ["width"]
      723 ADD                              R46 R47 R21
      724 SETTABLEKS                       R46 R45 K114 ["Width"]
      726 JUMPIFNOT                        R18 ; [+2]
      727 LOADK                            R46 K119 ["Editable"]
      728 JUMP                             ; [+1]
      729 LOADK                            R46 K120 ["NonEditable"]
      730 SETTABLEKS                       R46 R45 K115 ["Style"]
      732 CALL                             R43 2 1
      733 JUMPIF                           R43 ; [+1]
      734 LOADNIL                          R43
      735 SETTABLEKS                       R43 R42 K103 ["PermissionsDropdown"]
      737 JUMPIFNOT                        R34 ; [+14]
      738 GETUPVAL                         R43 5
      739 GETTABLEKS                       R43 R43 K41 ["createElement"]
      741 GETUPVAL                         R44 9
      742 DUPTABLE                         R45 K121 [{"Text"}]
      743 GETUPVAL                         R47 0
      744 JUMPIFNOT                        R47 ; [+2]
      745 MOVE                             R46 R13
      746 JUMP                             ; [+1]
      747 MOVE                             R46 R29
      748 SETTABLEKS                       R46 R45 K79 ["Text"]
      750 CALL                             R43 2 1
      751 JUMP                             ; [+1]
      752 LOADNIL                          R43
      753 SETTABLEKS                       R43 R42 K104 ["Tooltip"]
      755 CALL                             R39 3 1
      756 JUMP                             ; [+1]
      757 LOADNIL                          R39
      758 SETTABLEKS                       R39 R38 K60 ["PermissionEditor"]
      760 MOVE                             R39 R19
      761 JUMPIFNOT                        R39 ; [+22]
      762 GETUPVAL                         R39 5
      763 GETTABLEKS                       R39 R39 K41 ["createElement"]
      765 GETUPVAL                         R40 10
      766 DUPTABLE                         R41 K123 [{"LayoutOrder", "Enabled", "OnClicked"}]
      767 NAMECALL                         R42 R27 K67 ["getNextOrder"]
      769 CALL                             R42 1 1
      770 SETTABLEKS                       R42 R41 K1 ["LayoutOrder"]
      772 GETUPVAL                         R43 0
      773 JUMPIFNOT                        R43 ; [+2]
      774 NOT                              R42 R6
      775 JUMP                             ; [+3]
      776 MOVE                             R42 R5
      777 JUMPIFNOT                        R42 ; [+1]
      778 NOT                              R42 R6
      779 SETTABLEKS                       R42 R41 K109 ["Enabled"]
      781 SETTABLEKS                       R8 R41 K122 ["OnClicked"]
      783 CALL                             R39 2 1
      784 SETTABLEKS                       R39 R38 K61 ["Delete"]
      786 GETUPVAL                         R40 11
      787 NOT                              R39 R40
      788 JUMPIFNOT                        R39 ; [+22]
      789 NOT                              R39 R11
      790 JUMPIFNOT                        R39 ; [+20]
      791 GETUPVAL                         R39 5
      792 GETTABLEKS                       R39 R39 K41 ["createElement"]
      794 GETUPVAL                         R40 12
      795 DUPTABLE                         R41 K124 [{"Position", "LayoutOrder"}]
      796 GETIMPORT                        R42 K50 [UDim2.new]
      798 LOADK                            R43 K69 [0.5]
      799 LOADN                            R44 0
      800 LOADN                            R45 1
      801 LOADN                            R46 0
      802 CALL                             R42 4 1
      803 SETTABLEKS                       R42 R41 K45 ["Position"]
      805 NAMECALL                         R42 R27 K67 ["getNextOrder"]
      807 CALL                             R42 1 1
      808 SETTABLEKS                       R42 R41 K1 ["LayoutOrder"]
      810 CALL                             R39 2 1
      811 SETTABLEKS                       R39 R38 K62 ["Separator"]
      813 CALL                             R35 3 -1
      814 RETURN                           R35 -1

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
