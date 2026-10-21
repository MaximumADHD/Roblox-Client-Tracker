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
        2 GETTABLEKS                       R2 R1 K1 ["HidePermissionEditor"]
        4 JUMPIFNOT                        R2 ; [+2]
        5 LOADK                            R2 K2 [""]
        6 RETURN                           R2 1
        7 GETTABLEKS                       R2 R1 K3 ["CurrentPermission"]
        9 GETTABLEKS                       R3 R1 K4 ["AvailablePermissions"]
       11 GETTABLEKS                       R4 R1 K5 ["Localization"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R5 R5 K6 ["MultipleKey"]
       16 JUMPIFNOTEQ                      R2 R5 ; [+7]
       18 LOADK                            R7 K7 ["PermissionLabels"]
       19 LOADK                            R8 K8 ["Multiple"]
       20 NAMECALL                         R5 R4 K9 ["getText"]
       22 CALL                             R5 3 -1
       23 RETURN                           R5 -1
       24 MOVE                             R5 R3
       25 LOADNIL                          R6
       26 LOADNIL                          R7
       27 FORGPREP                         R5
       28 GETTABLEKS                       R10 R9 K10 ["Key"]
       30 JUMPIFNOTEQ                      R10 R2 ; [+4]
       32 GETTABLEKS                       R10 R9 K11 ["Display"]
       34 RETURN                           R10 1
       35 FORGLOOP                         R5 2 ; [-8]
       37 GETUPVAL                         R5 1
       38 JUMPIFNOT                        R5 ; [+34]
       39 GETUPVAL                         R5 2
       40 JUMPIFNOT                        R5 ; [+26]
       41 GETUPVAL                         R6 3
       42 GETTABLE                         R5 R6 R2
       43 NEWTABLE                         R6 0 0
       45 MOVE                             R7 R3
       46 LOADNIL                          R8
       47 LOADNIL                          R9
       48 FORGPREP                         R7
       49 GETUPVAL                         R15 3
       50 GETTABLEKS                       R16 R11 K10 ["Key"]
       52 GETTABLE                         R14 R15 R16
       53 FASTCALL2                        TABLE_INSERT R6 R14 ; [+4]
       55 MOVE                             R13 R6
       56 GETIMPORT                        R12 K14 [table.insert]
       58 CALL                             R12 2 0
       59 FORGLOOP                         R7 2 ; [-11]
       61 GETUPVAL                         R7 4
       62 GETTABLEKS                       R7 R7 K15 ["reportUnknownPermission"]
       64 MOVE                             R8 R5
       65 MOVE                             R9 R6
       66 CALL                             R7 2 0
       67 LOADK                            R7 K7 ["PermissionLabels"]
       68 LOADK                            R8 K16 ["Edit"]
       69 NAMECALL                         R5 R4 K9 ["getText"]
       71 CALL                             R5 3 -1
       72 RETURN                           R5 -1
       73 LOADB                            R6 0
       74 FASTCALL1                        ASSERT R6 ; [+2]
       75 GETIMPORT                        R5 K18 [assert]
       77 CALL                             R5 1 0
       78 RETURN                           R0 0

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
      256 GETTABLEKS                       R37 R1 K45 ["HidePermissionEditor"]
      258 JUMPIFEQKB                       R37 TRUE ; [+2]
      260 LOADB                            R36 0 +1
      261 LOADB                            R36 1
      262 JUMPIFNOT                        R36 ; [+2]
      263 LOADB                            R37 0
      264 JUMP                             ; [+10]
      265 GETUPVAL                         R38 0
      266 JUMPIFNOT                        R38 ; [+4]
      267 NOT                              R37 R14
      268 JUMPIFNOT                        R37 ; [+6]
      269 NOT                              R37 R35
      270 JUMP                             ; [+4]
      271 JUMPIF                           R7 ; [+2]
      272 MOVE                             R37 R10
      273 JUMPIFNOT                        R37 ; [+1]
      274 NOT                              R37 R35
      275 GETUPVAL                         R39 0
      276 JUMPIFNOT                        R39 ; [+2]
      277 MOVE                             R38 R13
      278 JUMP                             ; [+1]
      279 MOVE                             R38 R29
      280 GETUPVAL                         R39 5
      281 GETTABLEKS                       R39 R39 K46 ["createElement"]
      283 LOADK                            R40 K47 ["Frame"]
      284 DUPTABLE                         R41 K55 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Position"], ["AnchorPoint"], ["BorderSizePixel"] = 0}]
      285 GETIMPORT                        R42 K57 [UDim2.new]
      287 LOADN                            R43 0
      288 GETTABLEKS                       R44 R21 K58 ["width"]
      290 LOADN                            R45 0
      291 GETTABLEKS                       R46 R21 K59 ["height"]
      293 CALL                             R42 4 1
      294 SETTABLEKS                       R42 R41 K48 ["Size"]
      296 SETTABLEKS                       R2 R41 K1 ["LayoutOrder"]
      298 GETTABLEKS                       R42 R21 K60 ["position"]
      300 SETTABLEKS                       R42 R41 K51 ["Position"]
      302 GETTABLEKS                       R42 R21 K61 ["anchorPoint"]
      304 SETTABLEKS                       R42 R41 K52 ["AnchorPoint"]
      306 DUPTABLE                         R42 K72 [{"IconContainer", "CollaboratorName", "CollaboratorSubText", "OwnerLabel", "ActionNeededLabel", "RegionNotSupportedLabel", "CantInviteLabel", "PermissionEditor", "Delete", "Separator"}]
      307 MOVE                             R43 R4
      308 JUMPIFNOT                        R43 ; [+71]
      309 GETUPVAL                         R43 5
      310 GETTABLEKS                       R43 R43 K46 ["createElement"]
      312 GETUPVAL                         R45 1
      313 GETTABLEKS                       R45 R45 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      315 JUMPIF                           R45 ; [+4]
      316 GETUPVAL                         R45 1
      317 GETTABLEKS                       R45 R45 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      319 JUMPIFNOT                        R45 ; [+2]
      320 LOADK                            R44 K73 ["CanvasGroup"]
      321 JUMP                             ; [+1]
      322 LOADK                            R44 K47 ["Frame"]
      323 DUPTABLE                         R45 K75 [{["LayoutOrder"], ["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["GroupTransparency"]}]
      324 NAMECALL                         R46 R28 K76 ["getNextOrder"]
      326 CALL                             R46 1 1
      327 SETTABLEKS                       R46 R45 K1 ["LayoutOrder"]
      329 GETIMPORT                        R46 K57 [UDim2.new]
      331 LOADN                            R47 0
      332 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      334 GETTABLEKS                       R48 R48 K77 ["iconContainerSize"]
      336 LOADN                            R49 0
      337 GETTABLEKS                       R50 R17 K20 ["collaboratorItem"]
      339 GETTABLEKS                       R50 R50 K77 ["iconContainerSize"]
      341 CALL                             R46 4 1
      342 SETTABLEKS                       R46 R45 K48 ["Size"]
      344 GETIMPORT                        R46 K57 [UDim2.new]
      346 LOADN                            R47 0
      347 LOADN                            R48 0
      348 LOADK                            R49 K78 [0.5]
      349 LOADN                            R50 0
      350 CALL                             R46 4 1
      351 SETTABLEKS                       R46 R45 K51 ["Position"]
      353 GETIMPORT                        R46 K80 [Vector2.new]
      355 LOADN                            R47 0
      356 LOADK                            R48 K78 [0.5]
      357 CALL                             R46 2 1
      358 SETTABLEKS                       R46 R45 K52 ["AnchorPoint"]
      360 GETUPVAL                         R47 1
      361 GETTABLEKS                       R47 R47 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      363 JUMPIF                           R47 ; [+4]
      364 GETUPVAL                         R47 1
      365 GETTABLEKS                       R47 R47 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      367 JUMPIFNOT                        R47 ; [+5]
      368 JUMPIFNOT                        R35 ; [+2]
      369 LOADK                            R46 K81 [0.6]
      370 JUMP                             ; [+3]
      371 LOADN                            R46 0
      372 JUMP                             ; [+1]
      373 LOADNIL                          R46
      374 SETTABLEKS                       R46 R45 K74 ["GroupTransparency"]
      376 DUPTABLE                         R46 K82 [{"Icon"}]
      377 SETTABLEKS                       R4 R46 K3 ["Icon"]
      379 CALL                             R43 3 1
      380 SETTABLEKS                       R43 R42 K62 ["IconContainer"]
      382 GETUPVAL                         R43 5
      383 GETTABLEKS                       R43 R43 K46 ["createElement"]
      385 LOADK                            R44 K83 ["TextLabel"]
      386 GETUPVAL                         R45 6
      387 GETTABLEKS                       R45 R45 K84 ["Dictionary"]
      389 GETTABLEKS                       R45 R45 K85 ["join"]
      391 GETTABLEKS                       R46 R17 K86 ["fontStyle"]
      393 GETTABLEKS                       R46 R46 K87 ["Normal"]
      395 DUPTABLE                         R47 K91 [{["LayoutOrder"], ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"], ["TextTransparency"]}]
      396 NAMECALL                         R48 R28 K76 ["getNextOrder"]
      398 CALL                             R48 1 1
      399 SETTABLEKS                       R48 R47 K1 ["LayoutOrder"]
      401 JUMPIFNOT                        R4 ; [+9]
      402 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      404 GETTABLEKS                       R48 R48 K23 ["collaboratorName"]
      406 GETTABLEKS                       R48 R48 K24 ["withIcon"]
      408 GETTABLEKS                       R48 R48 K31 ["size"]
      410 JUMP                             ; [+8]
      411 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      413 GETTABLEKS                       R48 R48 K23 ["collaboratorName"]
      415 GETTABLEKS                       R48 R48 K26 ["withoutIcon"]
      417 GETTABLEKS                       R48 R48 K31 ["size"]
      419 SETTABLEKS                       R48 R47 K48 ["Size"]
      421 GETIMPORT                        R48 K80 [Vector2.new]
      423 LOADN                            R49 0
      424 LOADK                            R50 K78 [0.5]
      425 CALL                             R48 2 1
      426 SETTABLEKS                       R48 R47 K52 ["AnchorPoint"]
      428 GETIMPORT                        R48 K57 [UDim2.new]
      430 LOADN                            R49 0
      431 MOVE                             R50 R23
      432 LOADK                            R51 K78 [0.5]
      433 MOVE                             R52 R24
      434 CALL                             R48 4 1
      435 SETTABLEKS                       R48 R47 K51 ["Position"]
      437 SETTABLEKS                       R3 R47 K88 ["Text"]
      439 GETIMPORT                        R48 K94 [Enum.TextXAlignment.Left]
      441 SETTABLEKS                       R48 R47 K89 ["TextXAlignment"]
      443 GETUPVAL                         R49 1
      444 GETTABLEKS                       R49 R49 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      446 JUMPIF                           R49 ; [+4]
      447 GETUPVAL                         R49 1
      448 GETTABLEKS                       R49 R49 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      450 JUMPIFNOT                        R49 ; [+5]
      451 JUMPIFNOT                        R35 ; [+2]
      452 LOADK                            R48 K81 [0.6]
      453 JUMP                             ; [+3]
      454 LOADN                            R48 0
      455 JUMP                             ; [+1]
      456 LOADNIL                          R48
      457 SETTABLEKS                       R48 R47 K90 ["TextTransparency"]
      459 CALL                             R45 2 -1
      460 CALL                             R43 -1 1
      461 SETTABLEKS                       R43 R42 K63 ["CollaboratorName"]
      463 JUMPIFNOT                        R15 ; [+46]
      464 GETUPVAL                         R43 5
      465 GETTABLEKS                       R43 R43 K46 ["createElement"]
      467 LOADK                            R44 K83 ["TextLabel"]
      468 GETUPVAL                         R45 6
      469 GETTABLEKS                       R45 R45 K84 ["Dictionary"]
      471 GETTABLEKS                       R45 R45 K85 ["join"]
      473 GETTABLEKS                       R46 R17 K86 ["fontStyle"]
      475 GETTABLEKS                       R46 R46 K95 ["Subtext"]
      477 DUPTABLE                         R47 K96 [{["LayoutOrder"], ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      478 NAMECALL                         R48 R28 K76 ["getNextOrder"]
      480 CALL                             R48 1 1
      481 SETTABLEKS                       R48 R47 K1 ["LayoutOrder"]
      483 SETTABLEKS                       R26 R47 K48 ["Size"]
      485 GETIMPORT                        R48 K80 [Vector2.new]
      487 LOADN                            R49 0
      488 LOADK                            R50 K78 [0.5]
      489 CALL                             R48 2 1
      490 SETTABLEKS                       R48 R47 K52 ["AnchorPoint"]
      492 GETIMPORT                        R48 K57 [UDim2.new]
      494 LOADN                            R49 0
      495 MOVE                             R50 R25
      496 LOADK                            R51 K78 [0.5]
      497 MOVE                             R52 R27
      498 CALL                             R48 4 1
      499 SETTABLEKS                       R48 R47 K51 ["Position"]
      501 SETTABLEKS                       R15 R47 K88 ["Text"]
      503 GETIMPORT                        R48 K94 [Enum.TextXAlignment.Left]
      505 SETTABLEKS                       R48 R47 K89 ["TextXAlignment"]
      507 CALL                             R45 2 -1
      508 CALL                             R43 -1 1
      509 JUMP                             ; [+1]
      510 LOADNIL                          R43
      511 SETTABLEKS                       R43 R42 K64 ["CollaboratorSubText"]
      513 JUMPIFNOT                        R31 ; [+64]
      514 GETUPVAL                         R43 5
      515 GETTABLEKS                       R43 R43 K46 ["createElement"]
      517 LOADK                            R44 K83 ["TextLabel"]
      518 GETUPVAL                         R45 6
      519 GETTABLEKS                       R45 R45 K84 ["Dictionary"]
      521 GETTABLEKS                       R45 R45 K85 ["join"]
      523 GETTABLEKS                       R46 R17 K86 ["fontStyle"]
      525 GETTABLEKS                       R46 R46 K87 ["Normal"]
      527 DUPTABLE                         R47 K97 [{["LayoutOrder"], ["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      528 NAMECALL                         R48 R28 K76 ["getNextOrder"]
      530 CALL                             R48 1 1
      531 SETTABLEKS                       R48 R47 K1 ["LayoutOrder"]
      533 JUMPIFNOT                        R4 ; [+7]
      534 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      536 GETTABLEKS                       R48 R48 K98 ["ownerLabel"]
      538 GETTABLEKS                       R48 R48 K99 ["withIconSize"]
      540 JUMP                             ; [+6]
      541 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      543 GETTABLEKS                       R48 R48 K98 ["ownerLabel"]
      545 GETTABLEKS                       R48 R48 K100 ["withoutIconSize"]
      547 SETTABLEKS                       R48 R47 K48 ["Size"]
      549 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      551 GETTABLEKS                       R48 R48 K98 ["ownerLabel"]
      553 GETTABLEKS                       R48 R48 K60 ["position"]
      555 SETTABLEKS                       R48 R47 K51 ["Position"]
      557 GETIMPORT                        R48 K80 [Vector2.new]
      559 LOADN                            R49 1
      560 LOADK                            R50 K78 [0.5]
      561 CALL                             R48 2 1
      562 SETTABLEKS                       R48 R47 K52 ["AnchorPoint"]
      564 LOADK                            R50 K101 ["CollaboratorTypes"]
      565 LOADK                            R51 K102 ["Owner"]
      566 NAMECALL                         R48 R16 K35 ["getText"]
      568 CALL                             R48 3 1
      569 SETTABLEKS                       R48 R47 K88 ["Text"]
      571 GETIMPORT                        R48 K104 [Enum.TextXAlignment.Right]
      573 SETTABLEKS                       R48 R47 K89 ["TextXAlignment"]
      575 CALL                             R45 2 -1
      576 CALL                             R43 -1 1
      577 JUMP                             ; [+1]
      578 LOADNIL                          R43
      579 SETTABLEKS                       R43 R42 K65 ["OwnerLabel"]
      581 GETUPVAL                         R44 1
      582 GETTABLEKS                       R44 R44 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      584 JUMPIFNOT                        R44 ; [+58]
      585 JUMPIFNOT                        R34 ; [+57]
      586 GETUPVAL                         R43 5
      587 GETTABLEKS                       R43 R43 K46 ["createElement"]
      589 LOADK                            R44 K83 ["TextLabel"]
      590 GETUPVAL                         R45 6
      591 GETTABLEKS                       R45 R45 K84 ["Dictionary"]
      593 GETTABLEKS                       R45 R45 K85 ["join"]
      595 GETTABLEKS                       R46 R17 K86 ["fontStyle"]
      597 GETTABLEKS                       R46 R46 K87 ["Normal"]
      599 DUPTABLE                         R47 K105 [{["LayoutOrder"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      600 NAMECALL                         R48 R28 K76 ["getNextOrder"]
      602 CALL                             R48 1 1
      603 SETTABLEKS                       R48 R47 K1 ["LayoutOrder"]
      605 JUMPIFNOT                        R20 ; [+8]
      606 GETIMPORT                        R48 K57 [UDim2.new]
      608 LOADN                            R49 1
      609 LOADN                            R50 -20
      610 LOADK                            R51 K78 [0.5]
      611 LOADN                            R52 0
      612 CALL                             R48 4 1
      613 JUMP                             ; [+6]
      614 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      616 GETTABLEKS                       R48 R48 K98 ["ownerLabel"]
      618 GETTABLEKS                       R48 R48 K60 ["position"]
      620 SETTABLEKS                       R48 R47 K51 ["Position"]
      622 GETIMPORT                        R48 K80 [Vector2.new]
      624 LOADN                            R49 1
      625 LOADK                            R50 K78 [0.5]
      626 CALL                             R48 2 1
      627 SETTABLEKS                       R48 R47 K52 ["AnchorPoint"]
      629 LOADK                            R50 K101 ["CollaboratorTypes"]
      630 LOADK                            R51 K106 ["ActionNeeded"]
      631 NAMECALL                         R48 R16 K35 ["getText"]
      633 CALL                             R48 3 1
      634 SETTABLEKS                       R48 R47 K88 ["Text"]
      636 GETIMPORT                        R48 K104 [Enum.TextXAlignment.Right]
      638 SETTABLEKS                       R48 R47 K89 ["TextXAlignment"]
      640 CALL                             R45 2 -1
      641 CALL                             R43 -1 1
      642 JUMP                             ; [+1]
      643 LOADNIL                          R43
      644 SETTABLEKS                       R43 R42 K66 ["ActionNeededLabel"]
      646 GETUPVAL                         R44 1
      647 GETTABLEKS                       R44 R44 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      649 JUMPIFNOT                        R44 ; [+58]
      650 JUMPIFNOT                        R33 ; [+57]
      651 GETUPVAL                         R43 5
      652 GETTABLEKS                       R43 R43 K46 ["createElement"]
      654 LOADK                            R44 K83 ["TextLabel"]
      655 GETUPVAL                         R45 6
      656 GETTABLEKS                       R45 R45 K84 ["Dictionary"]
      658 GETTABLEKS                       R45 R45 K85 ["join"]
      660 GETTABLEKS                       R46 R17 K86 ["fontStyle"]
      662 GETTABLEKS                       R46 R46 K87 ["Normal"]
      664 DUPTABLE                         R47 K105 [{["LayoutOrder"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Text"], ["TextXAlignment"]}]
      665 NAMECALL                         R48 R28 K76 ["getNextOrder"]
      667 CALL                             R48 1 1
      668 SETTABLEKS                       R48 R47 K1 ["LayoutOrder"]
      670 JUMPIFNOT                        R20 ; [+8]
      671 GETIMPORT                        R48 K57 [UDim2.new]
      673 LOADN                            R49 1
      674 LOADN                            R50 -20
      675 LOADK                            R51 K78 [0.5]
      676 LOADN                            R52 0
      677 CALL                             R48 4 1
      678 JUMP                             ; [+6]
      679 GETTABLEKS                       R48 R17 K20 ["collaboratorItem"]
      681 GETTABLEKS                       R48 R48 K98 ["ownerLabel"]
      683 GETTABLEKS                       R48 R48 K60 ["position"]
      685 SETTABLEKS                       R48 R47 K51 ["Position"]
      687 GETIMPORT                        R48 K80 [Vector2.new]
      689 LOADN                            R49 1
      690 LOADK                            R50 K78 [0.5]
      691 CALL                             R48 2 1
      692 SETTABLEKS                       R48 R47 K52 ["AnchorPoint"]
      694 LOADK                            R50 K101 ["CollaboratorTypes"]
      695 LOADK                            R51 K107 ["RegionNotSupported"]
      696 NAMECALL                         R48 R16 K35 ["getText"]
      698 CALL                             R48 3 1
      699 SETTABLEKS                       R48 R47 K88 ["Text"]
      701 GETIMPORT                        R48 K104 [Enum.TextXAlignment.Right]
      703 SETTABLEKS                       R48 R47 K89 ["TextXAlignment"]
      705 CALL                             R45 2 -1
      706 CALL                             R43 -1 1
      707 JUMP                             ; [+1]
      708 LOADNIL                          R43
      709 SETTABLEKS                       R43 R42 K67 ["RegionNotSupportedLabel"]
      711 GETTABLEKS                       R44 R1 K108 ["ShowCantInviteLabel"]
      713 JUMPIFNOT                        R44 ; [+51]
      714 GETUPVAL                         R43 5
      715 GETTABLEKS                       R43 R43 K46 ["createElement"]
      717 LOADK                            R44 K47 ["Frame"]
      718 DUPTABLE                         R45 K110 [{["LayoutOrder"], ["Position"], ["AnchorPoint"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
      719 NAMECALL                         R46 R28 K76 ["getNextOrder"]
      721 CALL                             R46 1 1
      722 SETTABLEKS                       R46 R45 K1 ["LayoutOrder"]
      724 JUMPIFNOT                        R20 ; [+8]
      725 GETIMPORT                        R46 K57 [UDim2.new]
      727 LOADN                            R47 1
      728 LOADN                            R48 -20
      729 LOADK                            R49 K78 [0.5]
      730 LOADN                            R50 0
      731 CALL                             R46 4 1
      732 JUMP                             ; [+6]
      733 GETTABLEKS                       R46 R17 K20 ["collaboratorItem"]
      735 GETTABLEKS                       R46 R46 K98 ["ownerLabel"]
      737 GETTABLEKS                       R46 R46 K60 ["position"]
      739 SETTABLEKS                       R46 R45 K51 ["Position"]
      741 GETIMPORT                        R46 K80 [Vector2.new]
      743 LOADN                            R47 1
      744 LOADK                            R48 K78 [0.5]
      745 CALL                             R46 2 1
      746 SETTABLEKS                       R46 R45 K52 ["AnchorPoint"]
      748 GETIMPORT                        R46 K112 [Enum.AutomaticSize.XY]
      750 SETTABLEKS                       R46 R45 K109 ["AutomaticSize"]
      752 DUPTABLE                         R46 K114 [{"Label"}]
      753 GETUPVAL                         R47 5
      754 GETTABLEKS                       R47 R47 K46 ["createElement"]
      756 GETUPVAL                         R48 7
      757 DUPTABLE                         R49 K115 [{"Localization"}]
      758 SETTABLEKS                       R16 R49 K15 ["Localization"]
      760 CALL                             R47 2 1
      761 SETTABLEKS                       R47 R46 K113 ["Label"]
      763 CALL                             R43 3 1
      764 JUMP                             ; [+1]
      765 LOADNIL                          R43
      766 SETTABLEKS                       R43 R42 K68 ["CantInviteLabel"]
      768 JUMPIFNOT                        R37 ; [+130]
      769 GETUPVAL                         R43 5
      770 GETTABLEKS                       R43 R43 K46 ["createElement"]
      772 LOADK                            R44 K47 ["Frame"]
      773 DUPTABLE                         R45 K116 [{["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Size"], ["Position"], ["AnchorPoint"]}]
      774 NAMECALL                         R46 R28 K76 ["getNextOrder"]
      776 CALL                             R46 1 1
      777 SETTABLEKS                       R46 R45 K1 ["LayoutOrder"]
      779 GETIMPORT                        R46 K57 [UDim2.new]
      781 LOADN                            R47 0
      782 GETTABLEKS                       R48 R17 K117 ["selectInput"]
      784 GETTABLEKS                       R48 R48 K58 ["width"]
      786 LOADN                            R49 0
      787 GETTABLEKS                       R50 R17 K20 ["collaboratorItem"]
      789 GETTABLEKS                       R50 R50 K118 ["permissionEditor"]
      791 GETTABLEKS                       R50 R50 K119 ["heightOffset"]
      793 CALL                             R46 4 1
      794 SETTABLEKS                       R46 R45 K48 ["Size"]
      796 GETIMPORT                        R46 K57 [UDim2.new]
      798 LOADN                            R47 1
      799 LOADN                            R48 0
      800 LOADK                            R49 K78 [0.5]
      801 GETTABLEKS                       R50 R17 K20 ["collaboratorItem"]
      803 GETTABLEKS                       R50 R50 K118 ["permissionEditor"]
      805 GETTABLEKS                       R50 R50 K28 ["yOffset"]
      807 CALL                             R46 4 1
      808 SETTABLEKS                       R46 R45 K51 ["Position"]
      810 GETIMPORT                        R46 K80 [Vector2.new]
      812 LOADN                            R47 1
      813 LOADK                            R48 K78 [0.5]
      814 CALL                             R46 2 1
      815 SETTABLEKS                       R46 R45 K52 ["AnchorPoint"]
      817 DUPTABLE                         R46 K123 [{"LoadingIndicator", "PermissionsDropdown", "Tooltip"}]
      818 MOVE                             R47 R6
      819 JUMPIFNOT                        R47 ; [+13]
      820 GETUPVAL                         R47 5
      821 GETTABLEKS                       R47 R47 K46 ["createElement"]
      823 GETUPVAL                         R48 8
      824 DUPTABLE                         R49 K124 [{"Size"}]
      825 GETIMPORT                        R50 K126 [UDim2.fromScale]
      827 LOADN                            R51 1
      828 LOADN                            R52 1
      829 CALL                             R50 2 1
      830 SETTABLEKS                       R50 R49 K48 ["Size"]
      832 CALL                             R47 2 1
      833 SETTABLEKS                       R47 R46 K120 ["LoadingIndicator"]
      835 JUMPIF                           R6 ; [+40]
      836 GETUPVAL                         R47 5
      837 GETTABLEKS                       R47 R47 K46 ["createElement"]
      839 GETUPVAL                         R48 9
      840 DUPTABLE                         R49 K134 [{"Enabled", "Items", "OnItemActivated", "OnRenderItem", "PlaceholderText", "Width", "Style"}]
      841 GETUPVAL                         R51 0
      842 JUMPIFNOT                        R51 ; [+2]
      843 MOVE                             R50 R19
      844 JUMP                             ; [+2]
      845 NOT                              R51 R12
      846 AND                              R50 R51 R19
      847 SETTABLEKS                       R50 R49 K127 ["Enabled"]
      849 SETTABLEKS                       R9 R49 K128 ["Items"]
      851 GETTABLEKS                       R50 R0 K135 ["onItemActivated"]
      853 SETTABLEKS                       R50 R49 K129 ["OnItemActivated"]
      855 GETTABLEKS                       R50 R0 K136 ["onRenderItem"]
      857 SETTABLEKS                       R50 R49 K130 ["OnRenderItem"]
      859 SETTABLEKS                       R32 R49 K131 ["PlaceholderText"]
      861 GETTABLEKS                       R51 R17 K117 ["selectInput"]
      863 GETTABLEKS                       R51 R51 K58 ["width"]
      865 ADD                              R50 R51 R22
      866 SETTABLEKS                       R50 R49 K132 ["Width"]
      868 JUMPIFNOT                        R19 ; [+2]
      869 LOADK                            R50 K137 ["Editable"]
      870 JUMP                             ; [+1]
      871 LOADK                            R50 K138 ["NonEditable"]
      872 SETTABLEKS                       R50 R49 K133 ["Style"]
      874 CALL                             R47 2 1
      875 JUMPIF                           R47 ; [+1]
      876 LOADNIL                          R47
      877 SETTABLEKS                       R47 R46 K121 ["PermissionsDropdown"]
      879 JUMPIFNOT                        R38 ; [+14]
      880 GETUPVAL                         R47 5
      881 GETTABLEKS                       R47 R47 K46 ["createElement"]
      883 GETUPVAL                         R48 10
      884 DUPTABLE                         R49 K139 [{"Text"}]
      885 GETUPVAL                         R51 0
      886 JUMPIFNOT                        R51 ; [+2]
      887 MOVE                             R50 R13
      888 JUMP                             ; [+1]
      889 MOVE                             R50 R30
      890 SETTABLEKS                       R50 R49 K88 ["Text"]
      892 CALL                             R47 2 1
      893 JUMP                             ; [+1]
      894 LOADNIL                          R47
      895 SETTABLEKS                       R47 R46 K122 ["Tooltip"]
      897 CALL                             R43 3 1
      898 JUMP                             ; [+1]
      899 LOADNIL                          R43
      900 SETTABLEKS                       R43 R42 K69 ["PermissionEditor"]
      902 MOVE                             R43 R20
      903 JUMPIFNOT                        R43 ; [+22]
      904 GETUPVAL                         R43 5
      905 GETTABLEKS                       R43 R43 K46 ["createElement"]
      907 GETUPVAL                         R44 11
      908 DUPTABLE                         R45 K141 [{"LayoutOrder", "Enabled", "OnClicked"}]
      909 NAMECALL                         R46 R28 K76 ["getNextOrder"]
      911 CALL                             R46 1 1
      912 SETTABLEKS                       R46 R45 K1 ["LayoutOrder"]
      914 GETUPVAL                         R47 0
      915 JUMPIFNOT                        R47 ; [+2]
      916 NOT                              R46 R6
      917 JUMP                             ; [+3]
      918 MOVE                             R46 R5
      919 JUMPIFNOT                        R46 ; [+1]
      920 NOT                              R46 R6
      921 SETTABLEKS                       R46 R45 K127 ["Enabled"]
      923 SETTABLEKS                       R8 R45 K140 ["OnClicked"]
      925 CALL                             R43 2 1
      926 SETTABLEKS                       R43 R42 K70 ["Delete"]
      928 GETUPVAL                         R44 12
      929 NOT                              R43 R44
      930 JUMPIFNOT                        R43 ; [+22]
      931 NOT                              R43 R11
      932 JUMPIFNOT                        R43 ; [+20]
      933 GETUPVAL                         R43 5
      934 GETTABLEKS                       R43 R43 K46 ["createElement"]
      936 GETUPVAL                         R44 13
      937 DUPTABLE                         R45 K142 [{"Position", "LayoutOrder"}]
      938 GETIMPORT                        R46 K57 [UDim2.new]
      940 LOADK                            R47 K78 [0.5]
      941 LOADN                            R48 0
      942 LOADN                            R49 1
      943 LOADN                            R50 0
      944 CALL                             R46 4 1
      945 SETTABLEKS                       R46 R45 K51 ["Position"]
      947 NAMECALL                         R46 R28 K76 ["getNextOrder"]
      949 CALL                             R46 1 1
      950 SETTABLEKS                       R46 R45 K1 ["LayoutOrder"]
      952 CALL                             R43 2 1
      953 SETTABLEKS                       R43 R42 K71 ["Separator"]
      955 CALL                             R39 3 -1
      956 RETURN                           R39 -1

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
      137 GETTABLEKS                       R28 R28 K40 ["Components"]
      139 GETTABLEKS                       R28 R28 K41 ["EarlyTesters"]
      141 GETTABLEKS                       R28 R28 K42 ["CantInviteLabel"]
      143 CALL                             R27 1 1
      144 GETIMPORT                        R28 K10 [require]
      146 GETTABLEKS                       R29 R3 K31 ["Src"]
      148 GETTABLEKS                       R29 R29 K43 ["Enums"]
      150 GETTABLEKS                       R29 R29 K44 ["CanCollaborateError"]
      152 CALL                             R28 1 1
      153 GETTABLEKS                       R29 R4 K45 ["PureComponent"]
      155 LOADK                            R31 K46 ["DeleteButton"]
      156 NAMECALL                         R29 R29 K47 ["extend"]
      158 CALL                             R29 2 1
      159 GETIMPORT                        R30 K1 [game]
      161 LOADK                            R32 K48 ["StudioFriendToConnection"]
      162 NAMECALL                         R30 R30 K3 ["GetFastFlag"]
      164 CALL                             R30 2 1
      165 GETIMPORT                        R31 K1 [game]
      167 LOADK                            R33 K49 ["UpsellCollabSafety2"]
      168 NAMECALL                         R31 R31 K3 ["GetFastFlag"]
      170 CALL                             R31 2 1
      171 NEWTABLE                         R32 8 0
      173 GETTABLEKS                       R33 R26 K50 ["OwnerKey"]
      175 LOADK                            R34 K51 ["Owner"]
      176 SETTABLE                         R34 R32 R33
      177 GETTABLEKS                       R33 R26 K52 ["PlayKey"]
      179 LOADK                            R34 K53 ["Play"]
      180 SETTABLE                         R34 R32 R33
      181 GETTABLEKS                       R33 R26 K54 ["PlayTestKey"]
      183 LOADK                            R34 K55 ["PlayTest"]
      184 SETTABLE                         R34 R32 R33
      185 GETTABLEKS                       R33 R26 K56 ["EditKey"]
      187 LOADK                            R34 K57 ["Edit"]
      188 SETTABLE                         R34 R32 R33
      189 GETTABLEKS                       R33 R26 K58 ["NoAccessKey"]
      191 LOADK                            R34 K59 ["NoAccess"]
      192 SETTABLE                         R34 R32 R33
      193 GETTABLEKS                       R33 R26 K60 ["AdminKey"]
      195 LOADK                            R34 K61 ["Admin"]
      196 SETTABLE                         R34 R32 R33
      197 DUPCLOSURE                       R33 K62 [PROTO_0]
      198 SETTABLEKS                       R33 R29 K63 ["init"]
      200 DUPCLOSURE                       R33 K64 [PROTO_4]
      201 CAPTURE                          VAL R4
      202 SETTABLEKS                       R33 R29 K65 ["render"]
      204 MOVE                             R33 R10
      205 DUPTABLE                         R34 K66 [{"Stylizer"}]
      206 SETTABLEKS                       R8 R34 K18 ["Stylizer"]
      208 CALL                             R33 1 1
      209 MOVE                             R34 R29
      210 CALL                             R33 1 1
      211 MOVE                             R29 R33
      212 GETTABLEKS                       R33 R4 K45 ["PureComponent"]
      214 LOADK                            R35 K67 ["CollaboratorItem"]
      215 NAMECALL                         R33 R33 K47 ["extend"]
      217 CALL                             R33 2 1
      218 DUPTABLE                         R34 K72 [{["Writable"] = True, ["Loading"] = False}]
      219 SETTABLEKS                       R34 R33 K73 ["defaultProps"]
      221 DUPCLOSURE                       R34 K74 [PROTO_5]
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R1
      224 CAPTURE                          VAL R2
      225 CAPTURE                          VAL R32
      226 CAPTURE                          VAL R21
      227 SETTABLEKS                       R34 R33 K75 ["getCurrentPermissionLabel"]
      229 DUPCLOSURE                       R34 K76 [PROTO_6]
      230 CAPTURE                          VAL R4
      231 CAPTURE                          VAL R16
      232 SETGLOBAL                        R34 K77 ["createTextLabel"]
      234 DUPCLOSURE                       R34 K78 [PROTO_9]
      235 CAPTURE                          VAL R4
      236 CAPTURE                          VAL R15
      237 CAPTURE                          VAL R18
      238 SETTABLEKS                       R34 R33 K63 ["init"]
      240 DUPCLOSURE                       R34 K79 [PROTO_10]
      241 CAPTURE                          VAL R6
      242 CAPTURE                          VAL R0
      243 CAPTURE                          VAL R28
      244 CAPTURE                          VAL R25
      245 CAPTURE                          VAL R24
      246 CAPTURE                          VAL R22
      247 SETTABLEKS                       R34 R33 K80 ["didUpdate"]
      249 NEWCLOSURE                       R34 P6
      250 CAPTURE                          VAL R0
      251 CAPTURE                          VAL R6
      252 CAPTURE                          VAL R20
      253 CAPTURE                          VAL R30
      254 CAPTURE                          VAL R28
      255 CAPTURE                          VAL R4
      256 CAPTURE                          VAL R5
      257 CAPTURE                          VAL R27
      258 CAPTURE                          VAL R19
      259 CAPTURE                          VAL R14
      260 CAPTURE                          VAL R18
      261 CAPTURE                          REF R29
      262 CAPTURE                          VAL R31
      263 CAPTURE                          VAL R17
      264 SETTABLEKS                       R34 R33 K65 ["render"]
      266 MOVE                             R34 R10
      267 DUPTABLE                         R35 K81 [{"Stylizer", "Localization"}]
      268 SETTABLEKS                       R8 R35 K18 ["Stylizer"]
      270 SETTABLEKS                       R11 R35 K21 ["Localization"]
      272 CALL                             R34 1 1
      273 MOVE                             R35 R33
      274 CALL                             R34 1 1
      275 MOVE                             R33 R34
      276 CLOSEUPVALS                      R29
      277 RETURN                           R33 1
