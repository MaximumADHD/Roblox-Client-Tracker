PROTO_0:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 RETURN                           R0 0

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
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
        4 DUPTABLE                         R7 K8 [{["LayoutOrder"], ["Size"], ["Style"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"]}]
        5 SETTABLEKS                       R4 R7 K1 ["LayoutOrder"]
        7 GETIMPORT                        R8 K11 [UDim2.new]
        9 LOADN                            R9 1
       10 LOADN                            R10 0
       11 LOADN                            R11 0
       12 MOVE                             R12 R2
       13 CALL                             R8 4 1
       14 SETTABLEKS                       R8 R7 K2 ["Size"]
       16 SETTABLEKS                       R1 R7 K3 ["Style"]
       18 SETTABLEKS                       R0 R7 K4 ["Text"]
       20 GETIMPORT                        R8 K14 [Enum.TextXAlignment.Left]
       22 SETTABLEKS                       R8 R7 K7 ["TextXAlignment"]
       24 DUPTABLE                         R8 K16 [{"Padding"}]
       25 GETUPVAL                         R9 0
       26 GETTABLEKS                       R9 R9 K0 ["createElement"]
       28 LOADK                            R10 K17 ["UIPadding"]
       29 DUPTABLE                         R11 K20 [{"PaddingTop", "PaddingLeft"}]
       30 GETIMPORT                        R12 K22 [UDim.new]
       32 LOADN                            R13 0
       33 MOVE                             R14 R3
       34 CALL                             R12 2 1
       35 SETTABLEKS                       R12 R11 K18 ["PaddingTop"]
       37 GETIMPORT                        R12 K22 [UDim.new]
       39 LOADN                            R13 0
       40 MOVE                             R14 R3
       41 CALL                             R12 2 1
       42 SETTABLEKS                       R12 R11 K19 ["PaddingLeft"]
       44 CALL                             R9 2 1
       45 SETTABLEKS                       R9 R8 K15 ["Padding"]
       47 CALL                             R5 3 -1
       48 RETURN                           R5 -1

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
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K2 ["DropdownItemTooltipText"]
       10 GETTABLEKS                       R5 R0 K3 ["Display"]
       12 GETTABLEKS                       R6 R0 K4 ["Description"]
       14 DUPTABLE                         R7 K8 [{"UILayout", "MainTextLabel", "DescriptionTextLabel"}]
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K9 ["createElement"]
       18 LOADK                            R9 K10 ["UIListLayout"]
       19 DUPTABLE                         R10 K15 [{"FillDirection", "Padding", "SortOrder", "VerticalAlignment"}]
       20 GETIMPORT                        R11 K18 [Enum.FillDirection.Vertical]
       22 SETTABLEKS                       R11 R10 K11 ["FillDirection"]
       24 GETIMPORT                        R11 K21 [UDim.new]
       26 LOADN                            R12 0
       27 LOADN                            R13 0
       28 CALL                             R11 2 1
       29 SETTABLEKS                       R11 R10 K12 ["Padding"]
       31 GETIMPORT                        R11 K23 [Enum.SortOrder.LayoutOrder]
       33 SETTABLEKS                       R11 R10 K13 ["SortOrder"]
       35 GETIMPORT                        R11 K25 [Enum.VerticalAlignment.Top]
       37 SETTABLEKS                       R11 R10 K14 ["VerticalAlignment"]
       39 CALL                             R8 2 1
       40 SETTABLEKS                       R8 R7 K5 ["UILayout"]
       42 GETGLOBAL                        R8 K26 ["createTextLabel"]
       44 MOVE                             R9 R5
       45 LOADK                            R10 K27 ["Normal"]
       46 GETTABLEKS                       R11 R3 K28 ["fontStyle"]
       48 GETTABLEKS                       R11 R11 K27 ["Normal"]
       50 GETTABLEKS                       R11 R11 K29 ["TextSize"]
       52 GETTABLEKS                       R12 R3 K30 ["selectInput"]
       54 GETTABLEKS                       R12 R12 K31 ["padding"]
       56 LOADN                            R13 0
       57 CALL                             R8 5 1
       58 SETTABLEKS                       R8 R7 K6 ["MainTextLabel"]
       60 GETGLOBAL                        R8 K26 ["createTextLabel"]
       62 MOVE                             R9 R6
       63 LOADK                            R10 K32 ["SubText"]
       64 GETTABLEKS                       R11 R3 K28 ["fontStyle"]
       66 GETTABLEKS                       R11 R11 K33 ["Subtext"]
       68 GETTABLEKS                       R11 R11 K29 ["TextSize"]
       70 GETTABLEKS                       R12 R3 K30 ["selectInput"]
       72 GETTABLEKS                       R12 R12 K31 ["padding"]
       74 LOADN                            R13 1
       75 CALL                             R8 5 1
       76 SETTABLEKS                       R8 R7 K7 ["DescriptionTextLabel"]
       78 GETUPVAL                         R8 0
       79 GETTABLEKS                       R8 R8 K0 ["props"]
       81 GETTABLEKS                       R8 R8 K34 ["DropdownTooltipItemKey"]
       83 JUMPIFNOT                        R4 ; [+57]
       84 JUMPIFNOT                        R8 ; [+56]
       85 GETTABLEKS                       R9 R0 K35 ["Key"]
       87 JUMPIFNOTEQ                      R9 R8 ; [+53]
       89 GETUPVAL                         R9 1
       90 GETTABLEKS                       R9 R9 K9 ["createElement"]
       92 LOADK                            R10 K36 ["Frame"]
       93 DUPTABLE                         R11 K40 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1}]
       94 GETIMPORT                        R12 K42 [UDim2.new]
       96 LOADN                            R13 1
       97 LOADN                            R14 0
       98 LOADN                            R15 0
       99 GETTABLEKS                       R16 R3 K30 ["selectInput"]
      101 GETTABLEKS                       R16 R16 K43 ["button"]
      103 GETTABLEKS                       R16 R16 K44 ["height"]
      105 CALL                             R12 4 1
      106 SETTABLEKS                       R12 R11 K37 ["Size"]
      108 SETTABLEKS                       R1 R11 K22 ["LayoutOrder"]
      110 DUPTABLE                         R12 K47 [{"ItemButton", "ItemTooltip"}]
      111 GETUPVAL                         R13 1
      112 GETTABLEKS                       R13 R13 K9 ["createElement"]
      114 GETUPVAL                         R14 2
      115 DUPTABLE                         R15 K49 [{"Size", "OnClick"}]
      116 GETIMPORT                        R16 K51 [UDim2.fromScale]
      118 LOADN                            R17 1
      119 LOADN                            R18 1
      120 CALL                             R16 2 1
      121 SETTABLEKS                       R16 R15 K37 ["Size"]
      123 SETTABLEKS                       R2 R15 K48 ["OnClick"]
      125 MOVE                             R16 R7
      126 CALL                             R13 3 1
      127 SETTABLEKS                       R13 R12 K45 ["ItemButton"]
      129 GETUPVAL                         R13 1
      130 GETTABLEKS                       R13 R13 K9 ["createElement"]
      132 GETUPVAL                         R14 3
      133 DUPTABLE                         R15 K53 [{"Text"}]
      134 SETTABLEKS                       R4 R15 K52 ["Text"]
      136 CALL                             R13 2 1
      137 SETTABLEKS                       R13 R12 K46 ["ItemTooltip"]
      139 CALL                             R9 3 -1
      140 RETURN                           R9 -1
      141 GETUPVAL                         R9 1
      142 GETTABLEKS                       R9 R9 K9 ["createElement"]
      144 GETUPVAL                         R10 2
      145 DUPTABLE                         R11 K54 [{"Size", "LayoutOrder", "OnClick"}]
      146 GETIMPORT                        R12 K42 [UDim2.new]
      148 LOADN                            R13 1
      149 LOADN                            R14 0
      150 LOADN                            R15 0
      151 GETTABLEKS                       R16 R3 K30 ["selectInput"]
      153 GETTABLEKS                       R16 R16 K43 ["button"]
      155 GETTABLEKS                       R16 R16 K44 ["height"]
      157 CALL                             R12 4 1
      158 SETTABLEKS                       R12 R11 K37 ["Size"]
      160 SETTABLEKS                       R1 R11 K22 ["LayoutOrder"]
      162 SETTABLEKS                       R2 R11 K48 ["OnClick"]
      164 MOVE                             R12 R7
      165 CALL                             R9 3 -1
      166 RETURN                           R9 -1

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["onItemActivated"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 SETTABLEKS                       R1 R0 K1 ["onRenderItem"]
       11 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fflagManageCollaboratorsAgeGatingTelemetry"]
        3 JUMPIF                           R2 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R1 K1 ["CanCollaborateResponse"]
        7 JUMPIFNOTEQKNIL                  R2 ; [+7]
        9 GETTABLEKS                       R2 R0 K2 ["props"]
       11 GETTABLEKS                       R2 R2 K1 ["CanCollaborateResponse"]
       13 JUMPIFNOTEQKNIL                  R2 ; [+2]
       15 RETURN                           R0 0
       16 GETTABLEKS                       R2 R0 K2 ["props"]
       18 GETUPVAL                         R4 1
       19 JUMPIF                           R4 ; [+3]
       20 GETTABLEKS                       R3 R2 K3 ["hidePermissionsForNonGroupOwner"]
       22 JUMP                             ; [+1]
       23 LOADNIL                          R3
       24 GETUPVAL                         R5 1
       25 JUMPIFNOT                        R5 ; [+4]
       26 NAMECALL                         R4 R0 K4 ["getCurrentPermissionLabel"]
       28 CALL                             R4 1 1
       29 JUMP                             ; [+6]
       30 JUMPIFNOT                        R3 ; [+2]
       31 LOADK                            R4 K5 [""]
       32 JUMP                             ; [+3]
       33 NAMECALL                         R4 R0 K4 ["getCurrentPermissionLabel"]
       35 CALL                             R4 1 1
       36 GETUPVAL                         R5 0
       37 GETTABLEKS                       R5 R5 K6 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       39 JUMPIFNOT                        R5 ; [+12]
       40 LOADB                            R5 0
       41 GETTABLEKS                       R6 R2 K7 ["CanCollaborateErrorEnum"]
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K8 ["AgeVerificationCountryBlocked"]
       46 JUMPIFNOTEQ                      R6 R7 ; [+5]
       48 JUMPIFEQKS                       R4 K9 ["Edit"] ; [+2]
       50 LOADB                            R5 0 +1
       51 LOADB                            R5 1
       52 GETUPVAL                         R7 0
       53 GETTABLEKS                       R7 R7 K10 ["fflagManageCollaboratorsActionNeededLabel"]
       55 JUMPIFNOT                        R7 ; [+10]
       56 LOADB                            R6 0
       57 GETTABLEKS                       R7 R2 K1 ["CanCollaborateResponse"]
       59 JUMPIFNOTEQKB                    R7 FALSE ; [+7]
       61 LOADB                            R6 0
       62 JUMPIFNOTEQKS                    R4 K9 ["Edit"] ; [+4]
       64 NOT                              R6 R5
       65 JUMP                             ; [+1]
       66 LOADB                            R6 0
       67 JUMPIFNOT                        R5 ; [+24]
       68 GETUPVAL                         R7 3
       69 GETUPVAL                         R9 4
       70 DUPTABLE                         R10 K18 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_region_not_supported_label", ["placeId"], ["universeId"]}]
       71 GETUPVAL                         R11 5
       72 NAMECALL                         R11 R11 K19 ["GetUserId"]
       74 CALL                             R11 1 1
       75 SETTABLEKS                       R11 R10 K11 ["userId"]
       77 GETIMPORT                        R11 K21 [game]
       79 GETTABLEKS                       R11 R11 K22 ["PlaceId"]
       81 SETTABLEKS                       R11 R10 K16 ["placeId"]
       83 GETIMPORT                        R11 K21 [game]
       85 GETTABLEKS                       R11 R11 K23 ["GameId"]
       87 SETTABLEKS                       R11 R10 K17 ["universeId"]
       89 NAMECALL                         R7 R7 K24 ["logRobloxTelemetryEvent"]
       91 CALL                             R7 3 0
       92 JUMPIFNOT                        R6 ; [+24]
       93 GETUPVAL                         R7 3
       94 GETUPVAL                         R9 4
       95 DUPTABLE                         R10 K26 [{["userId"], ["telemetryType"] = "load", ["upsellEntrySurface"] = "manage_collaborators_action_needed_label", ["placeId"], ["universeId"]}]
       96 GETUPVAL                         R11 5
       97 NAMECALL                         R11 R11 K19 ["GetUserId"]
       99 CALL                             R11 1 1
      100 SETTABLEKS                       R11 R10 K11 ["userId"]
      102 GETIMPORT                        R11 K21 [game]
      104 GETTABLEKS                       R11 R11 K22 ["PlaceId"]
      106 SETTABLEKS                       R11 R10 K16 ["placeId"]
      108 GETIMPORT                        R11 K21 [game]
      110 GETTABLEKS                       R11 R11 K23 ["GameId"]
      112 SETTABLEKS                       R11 R10 K17 ["universeId"]
      114 NAMECALL                         R7 R7 K24 ["logRobloxTelemetryEvent"]
      116 CALL                             R7 3 0
      117 RETURN                           R0 0

PROTO_11:
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
       46 GETUPVAL                         R19 1
       47 GETTABLEKS                       R19 R19 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
       49 JUMPIF                           R19 ; [+4]
       50 GETUPVAL                         R19 1
       51 GETTABLEKS                       R19 R19 K18 ["fflagManageCollaboratorsOwnerAgeVerificationBanner"]
       53 JUMPIFNOT                        R19 ; [+3]
       54 GETTABLEKS                       R18 R1 K19 ["DisableEditPermission"]
       56 JUMP                             ; [+1]
       57 LOADB                            R18 0
       58 GETUPVAL                         R20 0
       59 JUMPIFNOT                        R20 ; [+4]
       60 MOVE                             R19 R5
       61 JUMPIFNOT                        R19 ; [+10]
       62 NOT                              R19 R18
       63 JUMP                             ; [+8]
       64 MOVE                             R19 R5
       65 JUMPIFNOT                        R19 ; [+6]
       66 LOADB                            R19 0
       67 LENGTH                           R20 R9
       68 LOADN                            R21 1
       69 JUMPIFNOTLT                      R21 R20 ; [+2]
       71 NOT                              R19 R18
       72 GETUPVAL                         R21 0
       73 JUMPIFNOT                        R21 ; [+2]
       74 MOVE                             R20 R7
       75 JUMP                             ; [+1]
       76 AND                              R20 R5 R7
       77 JUMPIFNOT                        R10 ; [+5]
       78 GETTABLEKS                       R21 R17 K20 ["collaboratorItem"]
       80 GETTABLEKS                       R21 R21 K21 ["rolesetFrame"]
       82 JUMP                             ; [+4]
       83 GETTABLEKS                       R21 R17 K20 ["collaboratorItem"]
       85 GETTABLEKS                       R21 R21 K22 ["nonRolesetFrame"]
       87 JUMPIF                           R10 ; [+1]
       88 JUMPIF                           R20 ; [+2]
       89 LOADN                            R22 0
       90 JUMP                             ; [+1]
       91 LOADN                            R22 -24
       92 JUMPIFNOT                        R4 ; [+9]
       93 GETTABLEKS                       R23 R17 K20 ["collaboratorItem"]
       95 GETTABLEKS                       R23 R23 K23 ["collaboratorName"]
       97 GETTABLEKS                       R23 R23 K24 ["withIcon"]
       99 GETTABLEKS                       R23 R23 K25 ["xOffset"]
      101 JUMP                             ; [+8]
      102 GETTABLEKS                       R23 R17 K20 ["collaboratorItem"]
      104 GETTABLEKS                       R23 R23 K23 ["collaboratorName"]
      106 GETTABLEKS                       R23 R23 K26 ["withoutIcon"]
      108 GETTABLEKS                       R23 R23 K25 ["xOffset"]
      110 JUMPIFNOT                        R15 ; [+9]
      111 GETTABLEKS                       R24 R17 K20 ["collaboratorItem"]
      113 GETTABLEKS                       R24 R24 K23 ["collaboratorName"]
      115 GETTABLEKS                       R24 R24 K27 ["withSubtext"]
      117 GETTABLEKS                       R24 R24 K28 ["yOffset"]
      119 JUMP                             ; [+8]
      120 GETTABLEKS                       R24 R17 K20 ["collaboratorItem"]
      122 GETTABLEKS                       R24 R24 K23 ["collaboratorName"]
      124 GETTABLEKS                       R24 R24 K29 ["withoutSubtext"]
      126 GETTABLEKS                       R24 R24 K28 ["yOffset"]
      128 JUMPIFNOT                        R4 ; [+9]
      129 GETTABLEKS                       R25 R17 K20 ["collaboratorItem"]
      131 GETTABLEKS                       R25 R25 K30 ["collaboratorSubText"]
      133 GETTABLEKS                       R25 R25 K24 ["withIcon"]
      135 GETTABLEKS                       R25 R25 K25 ["xOffset"]
      137 JUMP                             ; [+8]
      138 GETTABLEKS                       R25 R17 K20 ["collaboratorItem"]
      140 GETTABLEKS                       R25 R25 K30 ["collaboratorSubText"]
      142 GETTABLEKS                       R25 R25 K26 ["withoutIcon"]
      144 GETTABLEKS                       R25 R25 K25 ["xOffset"]
      146 JUMPIFNOT                        R4 ; [+9]
      147 GETTABLEKS                       R26 R17 K20 ["collaboratorItem"]
      149 GETTABLEKS                       R26 R26 K30 ["collaboratorSubText"]
      151 GETTABLEKS                       R26 R26 K24 ["withIcon"]
      153 GETTABLEKS                       R26 R26 K31 ["size"]
      155 JUMP                             ; [+8]
      156 GETTABLEKS                       R26 R17 K20 ["collaboratorItem"]
      158 GETTABLEKS                       R26 R26 K30 ["collaboratorSubText"]
      160 GETTABLEKS                       R26 R26 K26 ["withoutIcon"]
      162 GETTABLEKS                       R26 R26 K31 ["size"]
      164 GETTABLEKS                       R27 R17 K20 ["collaboratorItem"]
      166 GETTABLEKS                       R27 R27 K30 ["collaboratorSubText"]
      168 GETTABLEKS                       R27 R27 K28 ["yOffset"]
      170 GETUPVAL                         R28 2
      171 GETTABLEKS                       R28 R28 K32 ["new"]
      173 CALL                             R28 0 1
      174 LOADNIL                          R29
      175 LOADNIL                          R30
      176 GETUPVAL                         R31 0
      177 JUMPIF                           R31 ; [+27]
      178 MOVE                             R31 R12
      179 JUMPIF                           R31 ; [+1]
      180 NOT                              R31 R19
      181 MOVE                             R29 R31
      182 JUMPIFNOT                        R12 ; [+7]
      183 LOADK                            R33 K33 ["PermissionDescriptions"]
      184 LOADK                            R34 K34 ["CannotViewGroupRoles"]
      185 NAMECALL                         R31 R16 K35 ["getText"]
      187 CALL                             R31 3 1
      188 MOVE                             R30 R31
      189 JUMP                             ; [+15]
      190 GETUPVAL                         R31 3
      191 JUMPIFNOT                        R31 ; [+7]
      192 LOADK                            R33 K33 ["PermissionDescriptions"]
      193 LOADK                            R34 K36 ["ConnectionToEdit"]
      194 NAMECALL                         R31 R16 K35 ["getText"]
      196 CALL                             R31 3 1
      197 MOVE                             R30 R31
      198 JUMP                             ; [+6]
      199 LOADK                            R33 K33 ["PermissionDescriptions"]
      200 LOADK                            R34 K37 ["FriendToEdit"]
      201 NAMECALL                         R31 R16 K35 ["getText"]
      203 CALL                             R31 3 1
      204 MOVE                             R30 R31
      205 GETUPVAL                         R32 0
      206 JUMPIFNOT                        R32 ; [+2]
      207 MOVE                             R31 R14
      208 JUMP                             ; [+3]
      209 NOT                              R31 R7
      210 JUMPIFNOT                        R31 ; [+1]
      211 NOT                              R31 R10
      212 GETUPVAL                         R33 0
      213 JUMPIFNOT                        R33 ; [+4]
      214 NAMECALL                         R32 R0 K38 ["getCurrentPermissionLabel"]
      216 CALL                             R32 1 1
      217 JUMP                             ; [+6]
      218 JUMPIFNOT                        R12 ; [+2]
      219 LOADK                            R32 K39 [""]
      220 JUMP                             ; [+3]
      221 NAMECALL                         R32 R0 K38 ["getCurrentPermissionLabel"]
      223 CALL                             R32 1 1
      224 GETUPVAL                         R33 1
      225 GETTABLEKS                       R33 R33 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      227 JUMPIFNOT                        R33 ; [+12]
      228 LOADB                            R33 0
      229 GETTABLEKS                       R34 R1 K40 ["CanCollaborateErrorEnum"]
      231 GETUPVAL                         R35 4
      232 GETTABLEKS                       R35 R35 K41 ["AgeVerificationCountryBlocked"]
      234 JUMPIFNOTEQ                      R34 R35 ; [+5]
      236 JUMPIFEQKS                       R32 K42 ["Edit"] ; [+2]
      238 LOADB                            R33 0 +1
      239 LOADB                            R33 1
      240 GETUPVAL                         R35 1
      241 GETTABLEKS                       R35 R35 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      243 JUMPIFNOT                        R35 ; [+10]
      244 LOADB                            R34 0
      245 GETTABLEKS                       R35 R1 K44 ["CanCollaborateResponse"]
      247 JUMPIFNOTEQKB                    R35 FALSE ; [+7]
      249 LOADB                            R34 0
      250 JUMPIFNOTEQKS                    R32 K42 ["Edit"] ; [+4]
      252 NOT                              R34 R33
      253 JUMP                             ; [+1]
      254 LOADB                            R34 0
      255 OR                               R35 R34 R33
      256 GETUPVAL                         R37 0
      257 JUMPIFNOT                        R37 ; [+4]
      258 NOT                              R36 R14
      259 JUMPIFNOT                        R36 ; [+6]
      260 NOT                              R36 R35
      261 JUMP                             ; [+4]
      262 JUMPIF                           R7 ; [+2]
      263 MOVE                             R36 R10
      264 JUMPIFNOT                        R36 ; [+1]
      265 NOT                              R36 R35
      266 GETUPVAL                         R38 0
      267 JUMPIFNOT                        R38 ; [+2]
      268 MOVE                             R37 R13
      269 JUMP                             ; [+1]
      270 MOVE                             R37 R29
      271 GETUPVAL                         R38 5
      272 GETTABLEKS                       R38 R38 K45 ["createElement"]
      274 LOADK                            R39 K46 ["Frame"]
      275 DUPTABLE                         R40 K54 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Position"], ["AnchorPoint"], ["BorderSizePixel"] = 0}]
      276 GETIMPORT                        R41 K56 [UDim2.new]
      278 LOADN                            R42 0
      279 GETTABLEKS                       R43 R21 K57 ["width"]
      281 LOADN                            R44 0
      282 GETTABLEKS                       R45 R21 K58 ["height"]
      284 CALL                             R41 4 1
      285 SETTABLEKS                       R41 R40 K47 ["Size"]
      287 SETTABLEKS                       R2 R40 K1 ["LayoutOrder"]
      289 GETTABLEKS                       R41 R21 K59 ["position"]
      291 SETTABLEKS                       R41 R40 K50 ["Position"]
      293 GETTABLEKS                       R41 R21 K60 ["anchorPoint"]
      295 SETTABLEKS                       R41 R40 K51 ["AnchorPoint"]
      297 DUPTABLE                         R41 K70 [{"IconContainer", "CollaboratorName", "CollaboratorSubText", "OwnerLabel", "ActionNeededLabel", "RegionNotSupportedLabel", "PermissionEditor", "Delete", "Separator"}]
      298 MOVE                             R42 R4
      299 JUMPIFNOT                        R42 ; [+71]
      300 GETUPVAL                         R42 5
      301 GETTABLEKS                       R42 R42 K45 ["createElement"]
      303 GETUPVAL                         R44 1
      304 GETTABLEKS                       R44 R44 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      306 JUMPIF                           R44 ; [+4]
      307 GETUPVAL                         R44 1
      308 GETTABLEKS                       R44 R44 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      310 JUMPIFNOT                        R44 ; [+2]
      311 LOADK                            R43 K71 ["CanvasGroup"]
      312 JUMP                             ; [+1]
      313 LOADK                            R43 K46 ["Frame"]
      314 DUPTABLE                         R44 K73 [{["LayoutOrder"], ["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["GroupTransparency"]}]
      315 NAMECALL                         R45 R28 K74 ["getNextOrder"]
      317 CALL                             R45 1 1
      318 SETTABLEKS                       R45 R44 K1 ["LayoutOrder"]
      320 GETIMPORT                        R45 K56 [UDim2.new]
      322 LOADN                            R46 0
      323 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      325 GETTABLEKS                       R47 R47 K75 ["iconContainerSize"]
      327 LOADN                            R48 0
      328 GETTABLEKS                       R49 R17 K20 ["collaboratorItem"]
      330 GETTABLEKS                       R49 R49 K75 ["iconContainerSize"]
      332 CALL                             R45 4 1
      333 SETTABLEKS                       R45 R44 K47 ["Size"]
      335 GETIMPORT                        R45 K56 [UDim2.new]
      337 LOADN                            R46 0
      338 LOADN                            R47 0
      339 LOADK                            R48 K76 [0.5]
      340 LOADN                            R49 0
      341 CALL                             R45 4 1
      342 SETTABLEKS                       R45 R44 K50 ["Position"]
      344 GETIMPORT                        R45 K78 [Vector2.new]
      346 LOADN                            R46 0
      347 LOADK                            R47 K76 [0.5]
      348 CALL                             R45 2 1
      349 SETTABLEKS                       R45 R44 K51 ["AnchorPoint"]
      351 GETUPVAL                         R46 1
      352 GETTABLEKS                       R46 R46 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      354 JUMPIF                           R46 ; [+4]
      355 GETUPVAL                         R46 1
      356 GETTABLEKS                       R46 R46 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      358 JUMPIFNOT                        R46 ; [+5]
      359 JUMPIFNOT                        R35 ; [+2]
      360 LOADK                            R45 K79 [0.6]
      361 JUMP                             ; [+3]
      362 LOADN                            R45 0
      363 JUMP                             ; [+1]
      364 LOADNIL                          R45
      365 SETTABLEKS                       R45 R44 K72 ["GroupTransparency"]
      367 DUPTABLE                         R45 K80 [{"Icon"}]
      368 SETTABLEKS                       R4 R45 K3 ["Icon"]
      370 CALL                             R42 3 1
      371 SETTABLEKS                       R42 R41 K61 ["IconContainer"]
      373 GETUPVAL                         R42 5
      374 GETTABLEKS                       R42 R42 K45 ["createElement"]
      376 LOADK                            R43 K81 ["TextLabel"]
      377 GETUPVAL                         R44 6
      378 GETTABLEKS                       R44 R44 K82 ["Dictionary"]
      380 GETTABLEKS                       R44 R44 K83 ["join"]
      382 GETTABLEKS                       R45 R17 K84 ["fontStyle"]
      384 GETTABLEKS                       R45 R45 K85 ["Normal"]
      386 DUPTABLE                         R46 K89 [{["LayoutOrder"], ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"], ["TextTransparency"]}]
      387 NAMECALL                         R47 R28 K74 ["getNextOrder"]
      389 CALL                             R47 1 1
      390 SETTABLEKS                       R47 R46 K1 ["LayoutOrder"]
      392 JUMPIFNOT                        R4 ; [+9]
      393 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      395 GETTABLEKS                       R47 R47 K23 ["collaboratorName"]
      397 GETTABLEKS                       R47 R47 K24 ["withIcon"]
      399 GETTABLEKS                       R47 R47 K31 ["size"]
      401 JUMP                             ; [+8]
      402 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      404 GETTABLEKS                       R47 R47 K23 ["collaboratorName"]
      406 GETTABLEKS                       R47 R47 K26 ["withoutIcon"]
      408 GETTABLEKS                       R47 R47 K31 ["size"]
      410 SETTABLEKS                       R47 R46 K47 ["Size"]
      412 GETIMPORT                        R47 K78 [Vector2.new]
      414 LOADN                            R48 0
      415 LOADK                            R49 K76 [0.5]
      416 CALL                             R47 2 1
      417 SETTABLEKS                       R47 R46 K51 ["AnchorPoint"]
      419 GETIMPORT                        R47 K56 [UDim2.new]
      421 LOADN                            R48 0
      422 MOVE                             R49 R23
      423 LOADK                            R50 K76 [0.5]
      424 MOVE                             R51 R24
      425 CALL                             R47 4 1
      426 SETTABLEKS                       R47 R46 K50 ["Position"]
      428 SETTABLEKS                       R3 R46 K86 ["Text"]
      430 GETIMPORT                        R47 K92 [Enum.TextXAlignment.Left]
      432 SETTABLEKS                       R47 R46 K87 ["TextXAlignment"]
      434 GETUPVAL                         R48 1
      435 GETTABLEKS                       R48 R48 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      437 JUMPIF                           R48 ; [+4]
      438 GETUPVAL                         R48 1
      439 GETTABLEKS                       R48 R48 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      441 JUMPIFNOT                        R48 ; [+5]
      442 JUMPIFNOT                        R35 ; [+2]
      443 LOADK                            R47 K79 [0.6]
      444 JUMP                             ; [+3]
      445 LOADN                            R47 0
      446 JUMP                             ; [+1]
      447 LOADNIL                          R47
      448 SETTABLEKS                       R47 R46 K88 ["TextTransparency"]
      450 CALL                             R44 2 -1
      451 CALL                             R42 -1 1
      452 SETTABLEKS                       R42 R41 K62 ["CollaboratorName"]
      454 JUMPIFNOT                        R15 ; [+46]
      455 GETUPVAL                         R42 5
      456 GETTABLEKS                       R42 R42 K45 ["createElement"]
      458 LOADK                            R43 K81 ["TextLabel"]
      459 GETUPVAL                         R44 6
      460 GETTABLEKS                       R44 R44 K82 ["Dictionary"]
      462 GETTABLEKS                       R44 R44 K83 ["join"]
      464 GETTABLEKS                       R45 R17 K84 ["fontStyle"]
      466 GETTABLEKS                       R45 R45 K93 ["Subtext"]
      468 DUPTABLE                         R46 K94 [{["LayoutOrder"], ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      469 NAMECALL                         R47 R28 K74 ["getNextOrder"]
      471 CALL                             R47 1 1
      472 SETTABLEKS                       R47 R46 K1 ["LayoutOrder"]
      474 SETTABLEKS                       R26 R46 K47 ["Size"]
      476 GETIMPORT                        R47 K78 [Vector2.new]
      478 LOADN                            R48 0
      479 LOADK                            R49 K76 [0.5]
      480 CALL                             R47 2 1
      481 SETTABLEKS                       R47 R46 K51 ["AnchorPoint"]
      483 GETIMPORT                        R47 K56 [UDim2.new]
      485 LOADN                            R48 0
      486 MOVE                             R49 R25
      487 LOADK                            R50 K76 [0.5]
      488 MOVE                             R51 R27
      489 CALL                             R47 4 1
      490 SETTABLEKS                       R47 R46 K50 ["Position"]
      492 SETTABLEKS                       R15 R46 K86 ["Text"]
      494 GETIMPORT                        R47 K92 [Enum.TextXAlignment.Left]
      496 SETTABLEKS                       R47 R46 K87 ["TextXAlignment"]
      498 CALL                             R44 2 -1
      499 CALL                             R42 -1 1
      500 JUMP                             ; [+1]
      501 LOADNIL                          R42
      502 SETTABLEKS                       R42 R41 K63 ["CollaboratorSubText"]
      504 JUMPIFNOT                        R31 ; [+64]
      505 GETUPVAL                         R42 5
      506 GETTABLEKS                       R42 R42 K45 ["createElement"]
      508 LOADK                            R43 K81 ["TextLabel"]
      509 GETUPVAL                         R44 6
      510 GETTABLEKS                       R44 R44 K82 ["Dictionary"]
      512 GETTABLEKS                       R44 R44 K83 ["join"]
      514 GETTABLEKS                       R45 R17 K84 ["fontStyle"]
      516 GETTABLEKS                       R45 R45 K85 ["Normal"]
      518 DUPTABLE                         R46 K95 [{["LayoutOrder"], ["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      519 NAMECALL                         R47 R28 K74 ["getNextOrder"]
      521 CALL                             R47 1 1
      522 SETTABLEKS                       R47 R46 K1 ["LayoutOrder"]
      524 JUMPIFNOT                        R4 ; [+7]
      525 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      527 GETTABLEKS                       R47 R47 K96 ["ownerLabel"]
      529 GETTABLEKS                       R47 R47 K97 ["withIconSize"]
      531 JUMP                             ; [+6]
      532 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      534 GETTABLEKS                       R47 R47 K96 ["ownerLabel"]
      536 GETTABLEKS                       R47 R47 K98 ["withoutIconSize"]
      538 SETTABLEKS                       R47 R46 K47 ["Size"]
      540 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      542 GETTABLEKS                       R47 R47 K96 ["ownerLabel"]
      544 GETTABLEKS                       R47 R47 K59 ["position"]
      546 SETTABLEKS                       R47 R46 K50 ["Position"]
      548 GETIMPORT                        R47 K78 [Vector2.new]
      550 LOADN                            R48 1
      551 LOADK                            R49 K76 [0.5]
      552 CALL                             R47 2 1
      553 SETTABLEKS                       R47 R46 K51 ["AnchorPoint"]
      555 LOADK                            R49 K99 ["CollaboratorTypes"]
      556 LOADK                            R50 K100 ["Owner"]
      557 NAMECALL                         R47 R16 K35 ["getText"]
      559 CALL                             R47 3 1
      560 SETTABLEKS                       R47 R46 K86 ["Text"]
      562 GETIMPORT                        R47 K102 [Enum.TextXAlignment.Right]
      564 SETTABLEKS                       R47 R46 K87 ["TextXAlignment"]
      566 CALL                             R44 2 -1
      567 CALL                             R42 -1 1
      568 JUMP                             ; [+1]
      569 LOADNIL                          R42
      570 SETTABLEKS                       R42 R41 K64 ["OwnerLabel"]
      572 GETUPVAL                         R43 1
      573 GETTABLEKS                       R43 R43 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      575 JUMPIFNOT                        R43 ; [+58]
      576 JUMPIFNOT                        R34 ; [+57]
      577 GETUPVAL                         R42 5
      578 GETTABLEKS                       R42 R42 K45 ["createElement"]
      580 LOADK                            R43 K81 ["TextLabel"]
      581 GETUPVAL                         R44 6
      582 GETTABLEKS                       R44 R44 K82 ["Dictionary"]
      584 GETTABLEKS                       R44 R44 K83 ["join"]
      586 GETTABLEKS                       R45 R17 K84 ["fontStyle"]
      588 GETTABLEKS                       R45 R45 K85 ["Normal"]
      590 DUPTABLE                         R46 K103 [{["LayoutOrder"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      591 NAMECALL                         R47 R28 K74 ["getNextOrder"]
      593 CALL                             R47 1 1
      594 SETTABLEKS                       R47 R46 K1 ["LayoutOrder"]
      596 JUMPIFNOT                        R20 ; [+8]
      597 GETIMPORT                        R47 K56 [UDim2.new]
      599 LOADN                            R48 1
      600 LOADN                            R49 -20
      601 LOADK                            R50 K76 [0.5]
      602 LOADN                            R51 0
      603 CALL                             R47 4 1
      604 JUMP                             ; [+6]
      605 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      607 GETTABLEKS                       R47 R47 K96 ["ownerLabel"]
      609 GETTABLEKS                       R47 R47 K59 ["position"]
      611 SETTABLEKS                       R47 R46 K50 ["Position"]
      613 GETIMPORT                        R47 K78 [Vector2.new]
      615 LOADN                            R48 1
      616 LOADK                            R49 K76 [0.5]
      617 CALL                             R47 2 1
      618 SETTABLEKS                       R47 R46 K51 ["AnchorPoint"]
      620 LOADK                            R49 K99 ["CollaboratorTypes"]
      621 LOADK                            R50 K104 ["ActionNeeded"]
      622 NAMECALL                         R47 R16 K35 ["getText"]
      624 CALL                             R47 3 1
      625 SETTABLEKS                       R47 R46 K86 ["Text"]
      627 GETIMPORT                        R47 K102 [Enum.TextXAlignment.Right]
      629 SETTABLEKS                       R47 R46 K87 ["TextXAlignment"]
      631 CALL                             R44 2 -1
      632 CALL                             R42 -1 1
      633 JUMP                             ; [+1]
      634 LOADNIL                          R42
      635 SETTABLEKS                       R42 R41 K65 ["ActionNeededLabel"]
      637 GETUPVAL                         R43 1
      638 GETTABLEKS                       R43 R43 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      640 JUMPIFNOT                        R43 ; [+58]
      641 JUMPIFNOT                        R33 ; [+57]
      642 GETUPVAL                         R42 5
      643 GETTABLEKS                       R42 R42 K45 ["createElement"]
      645 LOADK                            R43 K81 ["TextLabel"]
      646 GETUPVAL                         R44 6
      647 GETTABLEKS                       R44 R44 K82 ["Dictionary"]
      649 GETTABLEKS                       R44 R44 K83 ["join"]
      651 GETTABLEKS                       R45 R17 K84 ["fontStyle"]
      653 GETTABLEKS                       R45 R45 K85 ["Normal"]
      655 DUPTABLE                         R46 K103 [{["LayoutOrder"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      656 NAMECALL                         R47 R28 K74 ["getNextOrder"]
      658 CALL                             R47 1 1
      659 SETTABLEKS                       R47 R46 K1 ["LayoutOrder"]
      661 JUMPIFNOT                        R20 ; [+8]
      662 GETIMPORT                        R47 K56 [UDim2.new]
      664 LOADN                            R48 1
      665 LOADN                            R49 -20
      666 LOADK                            R50 K76 [0.5]
      667 LOADN                            R51 0
      668 CALL                             R47 4 1
      669 JUMP                             ; [+6]
      670 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      672 GETTABLEKS                       R47 R47 K96 ["ownerLabel"]
      674 GETTABLEKS                       R47 R47 K59 ["position"]
      676 SETTABLEKS                       R47 R46 K50 ["Position"]
      678 GETIMPORT                        R47 K78 [Vector2.new]
      680 LOADN                            R48 1
      681 LOADK                            R49 K76 [0.5]
      682 CALL                             R47 2 1
      683 SETTABLEKS                       R47 R46 K51 ["AnchorPoint"]
      685 LOADK                            R49 K99 ["CollaboratorTypes"]
      686 LOADK                            R50 K105 ["RegionNotSupported"]
      687 NAMECALL                         R47 R16 K35 ["getText"]
      689 CALL                             R47 3 1
      690 SETTABLEKS                       R47 R46 K86 ["Text"]
      692 GETIMPORT                        R47 K102 [Enum.TextXAlignment.Right]
      694 SETTABLEKS                       R47 R46 K87 ["TextXAlignment"]
      696 CALL                             R44 2 -1
      697 CALL                             R42 -1 1
      698 JUMP                             ; [+1]
      699 LOADNIL                          R42
      700 SETTABLEKS                       R42 R41 K66 ["RegionNotSupportedLabel"]
      702 JUMPIFNOT                        R36 ; [+130]
      703 GETUPVAL                         R42 5
      704 GETTABLEKS                       R42 R42 K45 ["createElement"]
      706 LOADK                            R43 K46 ["Frame"]
      707 DUPTABLE                         R44 K106 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"]}]
      708 NAMECALL                         R45 R28 K74 ["getNextOrder"]
      710 CALL                             R45 1 1
      711 SETTABLEKS                       R45 R44 K1 ["LayoutOrder"]
      713 GETIMPORT                        R45 K56 [UDim2.new]
      715 LOADN                            R46 0
      716 GETTABLEKS                       R47 R17 K107 ["selectInput"]
      718 GETTABLEKS                       R47 R47 K57 ["width"]
      720 LOADN                            R48 0
      721 GETTABLEKS                       R49 R17 K20 ["collaboratorItem"]
      723 GETTABLEKS                       R49 R49 K108 ["permissionEditor"]
      725 GETTABLEKS                       R49 R49 K109 ["heightOffset"]
      727 CALL                             R45 4 1
      728 SETTABLEKS                       R45 R44 K47 ["Size"]
      730 GETIMPORT                        R45 K56 [UDim2.new]
      732 LOADN                            R46 1
      733 LOADN                            R47 0
      734 LOADK                            R48 K76 [0.5]
      735 GETTABLEKS                       R49 R17 K20 ["collaboratorItem"]
      737 GETTABLEKS                       R49 R49 K108 ["permissionEditor"]
      739 GETTABLEKS                       R49 R49 K28 ["yOffset"]
      741 CALL                             R45 4 1
      742 SETTABLEKS                       R45 R44 K50 ["Position"]
      744 GETIMPORT                        R45 K78 [Vector2.new]
      746 LOADN                            R46 1
      747 LOADK                            R47 K76 [0.5]
      748 CALL                             R45 2 1
      749 SETTABLEKS                       R45 R44 K51 ["AnchorPoint"]
      751 DUPTABLE                         R45 K113 [{"LoadingIndicator", "PermissionsDropdown", "Tooltip"}]
      752 MOVE                             R46 R6
      753 JUMPIFNOT                        R46 ; [+13]
      754 GETUPVAL                         R46 5
      755 GETTABLEKS                       R46 R46 K45 ["createElement"]
      757 GETUPVAL                         R47 7
      758 DUPTABLE                         R48 K114 [{"Size"}]
      759 GETIMPORT                        R49 K116 [UDim2.fromScale]
      761 LOADN                            R50 1
      762 LOADN                            R51 1
      763 CALL                             R49 2 1
      764 SETTABLEKS                       R49 R48 K47 ["Size"]
      766 CALL                             R46 2 1
      767 SETTABLEKS                       R46 R45 K110 ["LoadingIndicator"]
      769 JUMPIF                           R6 ; [+40]
      770 GETUPVAL                         R46 5
      771 GETTABLEKS                       R46 R46 K45 ["createElement"]
      773 GETUPVAL                         R47 8
      774 DUPTABLE                         R48 K124 [{"Enabled", "Items", "OnItemActivated", "OnRenderItem", "PlaceholderText", "Width", "Style"}]
      775 GETUPVAL                         R50 0
      776 JUMPIFNOT                        R50 ; [+2]
      777 MOVE                             R49 R19
      778 JUMP                             ; [+2]
      779 NOT                              R50 R12
      780 AND                              R49 R50 R19
      781 SETTABLEKS                       R49 R48 K117 ["Enabled"]
      783 SETTABLEKS                       R9 R48 K118 ["Items"]
      785 GETTABLEKS                       R49 R0 K125 ["onItemActivated"]
      787 SETTABLEKS                       R49 R48 K119 ["OnItemActivated"]
      789 GETTABLEKS                       R49 R0 K126 ["onRenderItem"]
      791 SETTABLEKS                       R49 R48 K120 ["OnRenderItem"]
      793 SETTABLEKS                       R32 R48 K121 ["PlaceholderText"]
      795 GETTABLEKS                       R50 R17 K107 ["selectInput"]
      797 GETTABLEKS                       R50 R50 K57 ["width"]
      799 ADD                              R49 R50 R22
      800 SETTABLEKS                       R49 R48 K122 ["Width"]
      802 JUMPIFNOT                        R19 ; [+2]
      803 LOADK                            R49 K127 ["Editable"]
      804 JUMP                             ; [+1]
      805 LOADK                            R49 K128 ["NonEditable"]
      806 SETTABLEKS                       R49 R48 K123 ["Style"]
      808 CALL                             R46 2 1
      809 JUMPIF                           R46 ; [+1]
      810 LOADNIL                          R46
      811 SETTABLEKS                       R46 R45 K111 ["PermissionsDropdown"]
      813 JUMPIFNOT                        R37 ; [+14]
      814 GETUPVAL                         R46 5
      815 GETTABLEKS                       R46 R46 K45 ["createElement"]
      817 GETUPVAL                         R47 9
      818 DUPTABLE                         R48 K129 [{"Text"}]
      819 GETUPVAL                         R50 0
      820 JUMPIFNOT                        R50 ; [+2]
      821 MOVE                             R49 R13
      822 JUMP                             ; [+1]
      823 MOVE                             R49 R30
      824 SETTABLEKS                       R49 R48 K86 ["Text"]
      826 CALL                             R46 2 1
      827 JUMP                             ; [+1]
      828 LOADNIL                          R46
      829 SETTABLEKS                       R46 R45 K112 ["Tooltip"]
      831 CALL                             R42 3 1
      832 JUMP                             ; [+1]
      833 LOADNIL                          R42
      834 SETTABLEKS                       R42 R41 K67 ["PermissionEditor"]
      836 MOVE                             R42 R20
      837 JUMPIFNOT                        R42 ; [+22]
      838 GETUPVAL                         R42 5
      839 GETTABLEKS                       R42 R42 K45 ["createElement"]
      841 GETUPVAL                         R43 10
      842 DUPTABLE                         R44 K131 [{"LayoutOrder", "Enabled", "OnClicked"}]
      843 NAMECALL                         R45 R28 K74 ["getNextOrder"]
      845 CALL                             R45 1 1
      846 SETTABLEKS                       R45 R44 K1 ["LayoutOrder"]
      848 GETUPVAL                         R46 0
      849 JUMPIFNOT                        R46 ; [+2]
      850 NOT                              R45 R6
      851 JUMP                             ; [+3]
      852 MOVE                             R45 R5
      853 JUMPIFNOT                        R45 ; [+1]
      854 NOT                              R45 R6
      855 SETTABLEKS                       R45 R44 K117 ["Enabled"]
      857 SETTABLEKS                       R8 R44 K130 ["OnClicked"]
      859 CALL                             R42 2 1
      860 SETTABLEKS                       R42 R41 K68 ["Delete"]
      862 GETUPVAL                         R43 11
      863 NOT                              R42 R43
      864 JUMPIFNOT                        R42 ; [+22]
      865 NOT                              R42 R11
      866 JUMPIFNOT                        R42 ; [+20]
      867 GETUPVAL                         R42 5
      868 GETTABLEKS                       R42 R42 K45 ["createElement"]
      870 GETUPVAL                         R43 12
      871 DUPTABLE                         R44 K132 [{"Position", "LayoutOrder"}]
      872 GETIMPORT                        R45 K56 [UDim2.new]
      874 LOADK                            R46 K76 [0.5]
      875 LOADN                            R47 0
      876 LOADN                            R48 1
      877 LOADN                            R49 0
      878 CALL                             R45 4 1
      879 SETTABLEKS                       R45 R44 K50 ["Position"]
      881 NAMECALL                         R45 R28 K74 ["getNextOrder"]
      883 CALL                             R45 1 1
      884 SETTABLEKS                       R45 R44 K1 ["LayoutOrder"]
      886 CALL                             R42 2 1
      887 SETTABLEKS                       R42 R41 K69 ["Separator"]
      889 CALL                             R38 3 -1
      890 RETURN                           R38 -1

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
       97 GETIMPORT                        R22 K1 [game]
       99 LOADK                            R24 K33 ["StudioService"]
      100 NAMECALL                         R22 R22 K34 ["GetService"]
      102 CALL                             R22 2 1
      103 GETIMPORT                        R23 K10 [require]
      105 GETTABLEKS                       R24 R3 K11 ["Packages"]
      107 GETTABLEKS                       R24 R24 K35 ["TelemetryProtocol"]
      109 CALL                             R23 1 1
      110 GETIMPORT                        R24 K10 [require]
      112 GETTABLEKS                       R25 R3 K31 ["Src"]
      114 GETTABLEKS                       R25 R25 K23 ["Util"]
      116 GETTABLEKS                       R25 R25 K36 ["Telemetry"]
      118 GETTABLEKS                       R25 R25 K37 ["SafetyUpsellBannerShownEvent"]
      120 CALL                             R24 1 1
      121 GETTABLEKS                       R25 R23 K38 ["new"]
      123 CALL                             R25 0 1
      124 GETIMPORT                        R26 K10 [require]
      126 GETTABLEKS                       R27 R3 K31 ["Src"]
      128 GETTABLEKS                       R27 R27 K23 ["Util"]
      130 GETTABLEKS                       R27 R27 K39 ["PermissionsConstants"]
      132 CALL                             R26 1 1
      133 GETIMPORT                        R27 K10 [require]
      135 GETTABLEKS                       R28 R3 K31 ["Src"]
      137 GETTABLEKS                       R28 R28 K40 ["Enums"]
      139 GETTABLEKS                       R28 R28 K41 ["CanCollaborateError"]
      141 CALL                             R27 1 1
      142 GETTABLEKS                       R28 R4 K42 ["PureComponent"]
      144 LOADK                            R30 K43 ["DeleteButton"]
      145 NAMECALL                         R28 R28 K44 ["extend"]
      147 CALL                             R28 2 1
      148 GETIMPORT                        R29 K1 [game]
      150 LOADK                            R31 K45 ["StudioFriendToConnection"]
      151 NAMECALL                         R29 R29 K3 ["GetFastFlag"]
      153 CALL                             R29 2 1
      154 GETIMPORT                        R30 K1 [game]
      156 LOADK                            R32 K46 ["UpsellCollabSafety2"]
      157 NAMECALL                         R30 R30 K3 ["GetFastFlag"]
      159 CALL                             R30 2 1
      160 NEWTABLE                         R31 8 0
      162 GETTABLEKS                       R32 R26 K47 ["OwnerKey"]
      164 LOADK                            R33 K48 ["Owner"]
      165 SETTABLE                         R33 R31 R32
      166 GETTABLEKS                       R32 R26 K49 ["PlayKey"]
      168 LOADK                            R33 K50 ["Play"]
      169 SETTABLE                         R33 R31 R32
      170 GETTABLEKS                       R32 R26 K51 ["EditKey"]
      172 LOADK                            R33 K52 ["Edit"]
      173 SETTABLE                         R33 R31 R32
      174 GETTABLEKS                       R32 R26 K53 ["NoAccessKey"]
      176 LOADK                            R33 K54 ["NoAccess"]
      177 SETTABLE                         R33 R31 R32
      178 GETTABLEKS                       R32 R26 K55 ["AdminKey"]
      180 LOADK                            R33 K56 ["Admin"]
      181 SETTABLE                         R33 R31 R32
      182 DUPCLOSURE                       R32 K57 [PROTO_0]
      183 SETTABLEKS                       R32 R28 K58 ["init"]
      185 DUPCLOSURE                       R32 K59 [PROTO_4]
      186 CAPTURE                          VAL R4
      187 SETTABLEKS                       R32 R28 K60 ["render"]
      189 MOVE                             R32 R10
      190 DUPTABLE                         R33 K61 [{"Stylizer"}]
      191 SETTABLEKS                       R8 R33 K18 ["Stylizer"]
      193 CALL                             R32 1 1
      194 MOVE                             R33 R28
      195 CALL                             R32 1 1
      196 MOVE                             R28 R32
      197 GETTABLEKS                       R32 R4 K42 ["PureComponent"]
      199 LOADK                            R34 K62 ["CollaboratorItem"]
      200 NAMECALL                         R32 R32 K44 ["extend"]
      202 CALL                             R32 2 1
      203 DUPTABLE                         R33 K67 [{["Writable"] = True, ["Loading"] = False}]
      204 SETTABLEKS                       R33 R32 K68 ["defaultProps"]
      206 DUPCLOSURE                       R33 K69 [PROTO_5]
      207 CAPTURE                          VAL R26
      208 CAPTURE                          VAL R1
      209 CAPTURE                          VAL R2
      210 CAPTURE                          VAL R31
      211 CAPTURE                          VAL R21
      212 SETTABLEKS                       R33 R32 K70 ["getCurrentPermissionLabel"]
      214 DUPCLOSURE                       R33 K71 [PROTO_6]
      215 CAPTURE                          VAL R4
      216 CAPTURE                          VAL R16
      217 SETGLOBAL                        R33 K72 ["createTextLabel"]
      219 DUPCLOSURE                       R33 K73 [PROTO_9]
      220 CAPTURE                          VAL R4
      221 CAPTURE                          VAL R15
      222 CAPTURE                          VAL R18
      223 SETTABLEKS                       R33 R32 K58 ["init"]
      225 DUPCLOSURE                       R33 K74 [PROTO_10]
      226 CAPTURE                          VAL R6
      227 CAPTURE                          VAL R0
      228 CAPTURE                          VAL R27
      229 CAPTURE                          VAL R25
      230 CAPTURE                          VAL R24
      231 CAPTURE                          VAL R22
      232 SETTABLEKS                       R33 R32 K75 ["didUpdate"]
      234 NEWCLOSURE                       R33 P6
      235 CAPTURE                          VAL R0
      236 CAPTURE                          VAL R6
      237 CAPTURE                          VAL R20
      238 CAPTURE                          VAL R29
      239 CAPTURE                          VAL R27
      240 CAPTURE                          VAL R4
      241 CAPTURE                          VAL R5
      242 CAPTURE                          VAL R19
      243 CAPTURE                          VAL R14
      244 CAPTURE                          VAL R18
      245 CAPTURE                          REF R28
      246 CAPTURE                          VAL R30
      247 CAPTURE                          VAL R17
      248 SETTABLEKS                       R33 R32 K60 ["render"]
      250 MOVE                             R33 R10
      251 DUPTABLE                         R34 K76 [{"Stylizer", "Localization"}]
      252 SETTABLEKS                       R8 R34 K18 ["Stylizer"]
      254 SETTABLEKS                       R11 R34 K21 ["Localization"]
      256 CALL                             R33 1 1
      257 MOVE                             R34 R32
      258 CALL                             R33 1 1
      259 MOVE                             R32 R33
      260 CLOSEUPVALS                      R28
      261 RETURN                           R32 1
