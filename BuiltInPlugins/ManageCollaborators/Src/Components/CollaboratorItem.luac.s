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
       67 JUMPIFNOT                        R5 ; [+30]
       68 GETUPVAL                         R7 3
       69 GETUPVAL                         R9 4
       70 DUPTABLE                         R10 K16 [{"userId", "telemetryType", "upsellEntrySurface", "placeId", "universeId"}]
       71 GETUPVAL                         R11 5
       72 NAMECALL                         R11 R11 K17 ["GetUserId"]
       74 CALL                             R11 1 1
       75 SETTABLEKS                       R11 R10 K11 ["userId"]
       77 LOADK                            R11 K18 ["load"]
       78 SETTABLEKS                       R11 R10 K12 ["telemetryType"]
       80 LOADK                            R11 K19 ["manage_collaborators_region_not_supported_label"]
       81 SETTABLEKS                       R11 R10 K13 ["upsellEntrySurface"]
       83 GETIMPORT                        R11 K21 [game]
       85 GETTABLEKS                       R11 R11 K22 ["PlaceId"]
       87 SETTABLEKS                       R11 R10 K14 ["placeId"]
       89 GETIMPORT                        R11 K21 [game]
       91 GETTABLEKS                       R11 R11 K23 ["GameId"]
       93 SETTABLEKS                       R11 R10 K15 ["universeId"]
       95 NAMECALL                         R7 R7 K24 ["logRobloxTelemetryEvent"]
       97 CALL                             R7 3 0
       98 JUMPIFNOT                        R6 ; [+30]
       99 GETUPVAL                         R7 3
      100 GETUPVAL                         R9 4
      101 DUPTABLE                         R10 K16 [{"userId", "telemetryType", "upsellEntrySurface", "placeId", "universeId"}]
      102 GETUPVAL                         R11 5
      103 NAMECALL                         R11 R11 K17 ["GetUserId"]
      105 CALL                             R11 1 1
      106 SETTABLEKS                       R11 R10 K11 ["userId"]
      108 LOADK                            R11 K18 ["load"]
      109 SETTABLEKS                       R11 R10 K12 ["telemetryType"]
      111 LOADK                            R11 K25 ["manage_collaborators_action_needed_label"]
      112 SETTABLEKS                       R11 R10 K13 ["upsellEntrySurface"]
      114 GETIMPORT                        R11 K21 [game]
      116 GETTABLEKS                       R11 R11 K22 ["PlaceId"]
      118 SETTABLEKS                       R11 R10 K14 ["placeId"]
      120 GETIMPORT                        R11 K21 [game]
      122 GETTABLEKS                       R11 R11 K23 ["GameId"]
      124 SETTABLEKS                       R11 R10 K15 ["universeId"]
      126 NAMECALL                         R7 R7 K24 ["logRobloxTelemetryEvent"]
      128 CALL                             R7 3 0
      129 RETURN                           R0 0

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
       91 LOADN                            R22 232
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
      275 DUPTABLE                         R40 K52 [{"Size", "LayoutOrder", "BackgroundTransparency", "Position", "AnchorPoint", "BorderSizePixel"}]
      276 GETIMPORT                        R41 K54 [UDim2.new]
      278 LOADN                            R42 0
      279 GETTABLEKS                       R43 R21 K55 ["width"]
      281 LOADN                            R44 0
      282 GETTABLEKS                       R45 R21 K56 ["height"]
      284 CALL                             R41 4 1
      285 SETTABLEKS                       R41 R40 K47 ["Size"]
      287 SETTABLEKS                       R2 R40 K1 ["LayoutOrder"]
      289 LOADN                            R41 1
      290 SETTABLEKS                       R41 R40 K48 ["BackgroundTransparency"]
      292 GETTABLEKS                       R41 R21 K57 ["position"]
      294 SETTABLEKS                       R41 R40 K49 ["Position"]
      296 GETTABLEKS                       R41 R21 K58 ["anchorPoint"]
      298 SETTABLEKS                       R41 R40 K50 ["AnchorPoint"]
      300 LOADN                            R41 0
      301 SETTABLEKS                       R41 R40 K51 ["BorderSizePixel"]
      303 DUPTABLE                         R41 K68 [{"IconContainer", "CollaboratorName", "CollaboratorSubText", "OwnerLabel", "ActionNeededLabel", "RegionNotSupportedLabel", "PermissionEditor", "Delete", "Separator"}]
      304 MOVE                             R42 R4
      305 JUMPIFNOT                        R42 ; [+74]
      306 GETUPVAL                         R42 5
      307 GETTABLEKS                       R42 R42 K45 ["createElement"]
      309 GETUPVAL                         R44 1
      310 GETTABLEKS                       R44 R44 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      312 JUMPIF                           R44 ; [+4]
      313 GETUPVAL                         R44 1
      314 GETTABLEKS                       R44 R44 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      316 JUMPIFNOT                        R44 ; [+2]
      317 LOADK                            R43 K69 ["CanvasGroup"]
      318 JUMP                             ; [+1]
      319 LOADK                            R43 K46 ["Frame"]
      320 DUPTABLE                         R44 K71 [{"LayoutOrder", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "GroupTransparency"}]
      321 NAMECALL                         R45 R28 K72 ["getNextOrder"]
      323 CALL                             R45 1 1
      324 SETTABLEKS                       R45 R44 K1 ["LayoutOrder"]
      326 GETIMPORT                        R45 K54 [UDim2.new]
      328 LOADN                            R46 0
      329 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      331 GETTABLEKS                       R47 R47 K73 ["iconContainerSize"]
      333 LOADN                            R48 0
      334 GETTABLEKS                       R49 R17 K20 ["collaboratorItem"]
      336 GETTABLEKS                       R49 R49 K73 ["iconContainerSize"]
      338 CALL                             R45 4 1
      339 SETTABLEKS                       R45 R44 K47 ["Size"]
      341 GETIMPORT                        R45 K54 [UDim2.new]
      343 LOADN                            R46 0
      344 LOADN                            R47 0
      345 LOADK                            R48 K74 [0.5]
      346 LOADN                            R49 0
      347 CALL                             R45 4 1
      348 SETTABLEKS                       R45 R44 K49 ["Position"]
      350 GETIMPORT                        R45 K76 [Vector2.new]
      352 LOADN                            R46 0
      353 LOADK                            R47 K74 [0.5]
      354 CALL                             R45 2 1
      355 SETTABLEKS                       R45 R44 K50 ["AnchorPoint"]
      357 LOADN                            R45 1
      358 SETTABLEKS                       R45 R44 K48 ["BackgroundTransparency"]
      360 GETUPVAL                         R46 1
      361 GETTABLEKS                       R46 R46 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      363 JUMPIF                           R46 ; [+4]
      364 GETUPVAL                         R46 1
      365 GETTABLEKS                       R46 R46 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      367 JUMPIFNOT                        R46 ; [+5]
      368 JUMPIFNOT                        R35 ; [+2]
      369 LOADK                            R45 K77 [0.6]
      370 JUMP                             ; [+3]
      371 LOADN                            R45 0
      372 JUMP                             ; [+1]
      373 LOADNIL                          R45
      374 SETTABLEKS                       R45 R44 K70 ["GroupTransparency"]
      376 DUPTABLE                         R45 K78 [{"Icon"}]
      377 SETTABLEKS                       R4 R45 K3 ["Icon"]
      379 CALL                             R42 3 1
      380 SETTABLEKS                       R42 R41 K59 ["IconContainer"]
      382 GETUPVAL                         R42 5
      383 GETTABLEKS                       R42 R42 K45 ["createElement"]
      385 LOADK                            R43 K79 ["TextLabel"]
      386 GETUPVAL                         R44 6
      387 GETTABLEKS                       R44 R44 K80 ["Dictionary"]
      389 GETTABLEKS                       R44 R44 K81 ["join"]
      391 GETTABLEKS                       R45 R17 K82 ["fontStyle"]
      393 GETTABLEKS                       R45 R45 K83 ["Normal"]
      395 DUPTABLE                         R46 K87 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency", "Text", "TextXAlignment", "TextTransparency"}]
      396 NAMECALL                         R47 R28 K72 ["getNextOrder"]
      398 CALL                             R47 1 1
      399 SETTABLEKS                       R47 R46 K1 ["LayoutOrder"]
      401 JUMPIFNOT                        R4 ; [+9]
      402 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      404 GETTABLEKS                       R47 R47 K23 ["collaboratorName"]
      406 GETTABLEKS                       R47 R47 K24 ["withIcon"]
      408 GETTABLEKS                       R47 R47 K31 ["size"]
      410 JUMP                             ; [+8]
      411 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      413 GETTABLEKS                       R47 R47 K23 ["collaboratorName"]
      415 GETTABLEKS                       R47 R47 K26 ["withoutIcon"]
      417 GETTABLEKS                       R47 R47 K31 ["size"]
      419 SETTABLEKS                       R47 R46 K47 ["Size"]
      421 GETIMPORT                        R47 K76 [Vector2.new]
      423 LOADN                            R48 0
      424 LOADK                            R49 K74 [0.5]
      425 CALL                             R47 2 1
      426 SETTABLEKS                       R47 R46 K50 ["AnchorPoint"]
      428 GETIMPORT                        R47 K54 [UDim2.new]
      430 LOADN                            R48 0
      431 MOVE                             R49 R23
      432 LOADK                            R50 K74 [0.5]
      433 MOVE                             R51 R24
      434 CALL                             R47 4 1
      435 SETTABLEKS                       R47 R46 K49 ["Position"]
      437 LOADN                            R47 1
      438 SETTABLEKS                       R47 R46 K48 ["BackgroundTransparency"]
      440 SETTABLEKS                       R3 R46 K84 ["Text"]
      442 GETIMPORT                        R47 K90 [Enum.TextXAlignment.Left]
      444 SETTABLEKS                       R47 R46 K85 ["TextXAlignment"]
      446 GETUPVAL                         R48 1
      447 GETTABLEKS                       R48 R48 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      449 JUMPIF                           R48 ; [+4]
      450 GETUPVAL                         R48 1
      451 GETTABLEKS                       R48 R48 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      453 JUMPIFNOT                        R48 ; [+5]
      454 JUMPIFNOT                        R35 ; [+2]
      455 LOADK                            R47 K77 [0.6]
      456 JUMP                             ; [+3]
      457 LOADN                            R47 0
      458 JUMP                             ; [+1]
      459 LOADNIL                          R47
      460 SETTABLEKS                       R47 R46 K86 ["TextTransparency"]
      462 CALL                             R44 2 -1
      463 CALL                             R42 -1 1
      464 SETTABLEKS                       R42 R41 K60 ["CollaboratorName"]
      466 JUMPIFNOT                        R15 ; [+49]
      467 GETUPVAL                         R42 5
      468 GETTABLEKS                       R42 R42 K45 ["createElement"]
      470 LOADK                            R43 K79 ["TextLabel"]
      471 GETUPVAL                         R44 6
      472 GETTABLEKS                       R44 R44 K80 ["Dictionary"]
      474 GETTABLEKS                       R44 R44 K81 ["join"]
      476 GETTABLEKS                       R45 R17 K82 ["fontStyle"]
      478 GETTABLEKS                       R45 R45 K91 ["Subtext"]
      480 DUPTABLE                         R46 K92 [{"LayoutOrder", "Size", "AnchorPoint", "Position", "BackgroundTransparency", "Text", "TextXAlignment"}]
      481 NAMECALL                         R47 R28 K72 ["getNextOrder"]
      483 CALL                             R47 1 1
      484 SETTABLEKS                       R47 R46 K1 ["LayoutOrder"]
      486 SETTABLEKS                       R26 R46 K47 ["Size"]
      488 GETIMPORT                        R47 K76 [Vector2.new]
      490 LOADN                            R48 0
      491 LOADK                            R49 K74 [0.5]
      492 CALL                             R47 2 1
      493 SETTABLEKS                       R47 R46 K50 ["AnchorPoint"]
      495 GETIMPORT                        R47 K54 [UDim2.new]
      497 LOADN                            R48 0
      498 MOVE                             R49 R25
      499 LOADK                            R50 K74 [0.5]
      500 MOVE                             R51 R27
      501 CALL                             R47 4 1
      502 SETTABLEKS                       R47 R46 K49 ["Position"]
      504 LOADN                            R47 1
      505 SETTABLEKS                       R47 R46 K48 ["BackgroundTransparency"]
      507 SETTABLEKS                       R15 R46 K84 ["Text"]
      509 GETIMPORT                        R47 K90 [Enum.TextXAlignment.Left]
      511 SETTABLEKS                       R47 R46 K85 ["TextXAlignment"]
      513 CALL                             R44 2 -1
      514 CALL                             R42 -1 1
      515 JUMP                             ; [+1]
      516 LOADNIL                          R42
      517 SETTABLEKS                       R42 R41 K61 ["CollaboratorSubText"]
      519 JUMPIFNOT                        R31 ; [+67]
      520 GETUPVAL                         R42 5
      521 GETTABLEKS                       R42 R42 K45 ["createElement"]
      523 LOADK                            R43 K79 ["TextLabel"]
      524 GETUPVAL                         R44 6
      525 GETTABLEKS                       R44 R44 K80 ["Dictionary"]
      527 GETTABLEKS                       R44 R44 K81 ["join"]
      529 GETTABLEKS                       R45 R17 K82 ["fontStyle"]
      531 GETTABLEKS                       R45 R45 K83 ["Normal"]
      533 DUPTABLE                         R46 K93 [{"LayoutOrder", "Size", "Position", "AnchorPoint", "BackgroundTransparency", "Text", "TextXAlignment"}]
      534 NAMECALL                         R47 R28 K72 ["getNextOrder"]
      536 CALL                             R47 1 1
      537 SETTABLEKS                       R47 R46 K1 ["LayoutOrder"]
      539 JUMPIFNOT                        R4 ; [+7]
      540 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      542 GETTABLEKS                       R47 R47 K94 ["ownerLabel"]
      544 GETTABLEKS                       R47 R47 K95 ["withIconSize"]
      546 JUMP                             ; [+6]
      547 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      549 GETTABLEKS                       R47 R47 K94 ["ownerLabel"]
      551 GETTABLEKS                       R47 R47 K96 ["withoutIconSize"]
      553 SETTABLEKS                       R47 R46 K47 ["Size"]
      555 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      557 GETTABLEKS                       R47 R47 K94 ["ownerLabel"]
      559 GETTABLEKS                       R47 R47 K57 ["position"]
      561 SETTABLEKS                       R47 R46 K49 ["Position"]
      563 GETIMPORT                        R47 K76 [Vector2.new]
      565 LOADN                            R48 1
      566 LOADK                            R49 K74 [0.5]
      567 CALL                             R47 2 1
      568 SETTABLEKS                       R47 R46 K50 ["AnchorPoint"]
      570 LOADN                            R47 1
      571 SETTABLEKS                       R47 R46 K48 ["BackgroundTransparency"]
      573 LOADK                            R49 K97 ["CollaboratorTypes"]
      574 LOADK                            R50 K98 ["Owner"]
      575 NAMECALL                         R47 R16 K35 ["getText"]
      577 CALL                             R47 3 1
      578 SETTABLEKS                       R47 R46 K84 ["Text"]
      580 GETIMPORT                        R47 K100 [Enum.TextXAlignment.Right]
      582 SETTABLEKS                       R47 R46 K85 ["TextXAlignment"]
      584 CALL                             R44 2 -1
      585 CALL                             R42 -1 1
      586 JUMP                             ; [+1]
      587 LOADNIL                          R42
      588 SETTABLEKS                       R42 R41 K62 ["OwnerLabel"]
      590 GETUPVAL                         R43 1
      591 GETTABLEKS                       R43 R43 K43 ["fflagManageCollaboratorsActionNeededLabel"]
      593 JUMPIFNOT                        R43 ; [+61]
      594 JUMPIFNOT                        R34 ; [+60]
      595 GETUPVAL                         R42 5
      596 GETTABLEKS                       R42 R42 K45 ["createElement"]
      598 LOADK                            R43 K79 ["TextLabel"]
      599 GETUPVAL                         R44 6
      600 GETTABLEKS                       R44 R44 K80 ["Dictionary"]
      602 GETTABLEKS                       R44 R44 K81 ["join"]
      604 GETTABLEKS                       R45 R17 K82 ["fontStyle"]
      606 GETTABLEKS                       R45 R45 K83 ["Normal"]
      608 DUPTABLE                         R46 K101 [{"LayoutOrder", "Position", "AnchorPoint", "BackgroundTransparency", "Text", "TextXAlignment"}]
      609 NAMECALL                         R47 R28 K72 ["getNextOrder"]
      611 CALL                             R47 1 1
      612 SETTABLEKS                       R47 R46 K1 ["LayoutOrder"]
      614 JUMPIFNOT                        R20 ; [+8]
      615 GETIMPORT                        R47 K54 [UDim2.new]
      617 LOADN                            R48 1
      618 LOADN                            R49 236
      619 LOADK                            R50 K74 [0.5]
      620 LOADN                            R51 0
      621 CALL                             R47 4 1
      622 JUMP                             ; [+6]
      623 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      625 GETTABLEKS                       R47 R47 K94 ["ownerLabel"]
      627 GETTABLEKS                       R47 R47 K57 ["position"]
      629 SETTABLEKS                       R47 R46 K49 ["Position"]
      631 GETIMPORT                        R47 K76 [Vector2.new]
      633 LOADN                            R48 1
      634 LOADK                            R49 K74 [0.5]
      635 CALL                             R47 2 1
      636 SETTABLEKS                       R47 R46 K50 ["AnchorPoint"]
      638 LOADN                            R47 1
      639 SETTABLEKS                       R47 R46 K48 ["BackgroundTransparency"]
      641 LOADK                            R49 K97 ["CollaboratorTypes"]
      642 LOADK                            R50 K102 ["ActionNeeded"]
      643 NAMECALL                         R47 R16 K35 ["getText"]
      645 CALL                             R47 3 1
      646 SETTABLEKS                       R47 R46 K84 ["Text"]
      648 GETIMPORT                        R47 K100 [Enum.TextXAlignment.Right]
      650 SETTABLEKS                       R47 R46 K85 ["TextXAlignment"]
      652 CALL                             R44 2 -1
      653 CALL                             R42 -1 1
      654 JUMP                             ; [+1]
      655 LOADNIL                          R42
      656 SETTABLEKS                       R42 R41 K63 ["ActionNeededLabel"]
      658 GETUPVAL                         R43 1
      659 GETTABLEKS                       R43 R43 K17 ["fflagManageCollaboratorsOwnerCountryBlocked"]
      661 JUMPIFNOT                        R43 ; [+61]
      662 JUMPIFNOT                        R33 ; [+60]
      663 GETUPVAL                         R42 5
      664 GETTABLEKS                       R42 R42 K45 ["createElement"]
      666 LOADK                            R43 K79 ["TextLabel"]
      667 GETUPVAL                         R44 6
      668 GETTABLEKS                       R44 R44 K80 ["Dictionary"]
      670 GETTABLEKS                       R44 R44 K81 ["join"]
      672 GETTABLEKS                       R45 R17 K82 ["fontStyle"]
      674 GETTABLEKS                       R45 R45 K83 ["Normal"]
      676 DUPTABLE                         R46 K101 [{"LayoutOrder", "Position", "AnchorPoint", "BackgroundTransparency", "Text", "TextXAlignment"}]
      677 NAMECALL                         R47 R28 K72 ["getNextOrder"]
      679 CALL                             R47 1 1
      680 SETTABLEKS                       R47 R46 K1 ["LayoutOrder"]
      682 JUMPIFNOT                        R20 ; [+8]
      683 GETIMPORT                        R47 K54 [UDim2.new]
      685 LOADN                            R48 1
      686 LOADN                            R49 236
      687 LOADK                            R50 K74 [0.5]
      688 LOADN                            R51 0
      689 CALL                             R47 4 1
      690 JUMP                             ; [+6]
      691 GETTABLEKS                       R47 R17 K20 ["collaboratorItem"]
      693 GETTABLEKS                       R47 R47 K94 ["ownerLabel"]
      695 GETTABLEKS                       R47 R47 K57 ["position"]
      697 SETTABLEKS                       R47 R46 K49 ["Position"]
      699 GETIMPORT                        R47 K76 [Vector2.new]
      701 LOADN                            R48 1
      702 LOADK                            R49 K74 [0.5]
      703 CALL                             R47 2 1
      704 SETTABLEKS                       R47 R46 K50 ["AnchorPoint"]
      706 LOADN                            R47 1
      707 SETTABLEKS                       R47 R46 K48 ["BackgroundTransparency"]
      709 LOADK                            R49 K97 ["CollaboratorTypes"]
      710 LOADK                            R50 K103 ["RegionNotSupported"]
      711 NAMECALL                         R47 R16 K35 ["getText"]
      713 CALL                             R47 3 1
      714 SETTABLEKS                       R47 R46 K84 ["Text"]
      716 GETIMPORT                        R47 K100 [Enum.TextXAlignment.Right]
      718 SETTABLEKS                       R47 R46 K85 ["TextXAlignment"]
      720 CALL                             R44 2 -1
      721 CALL                             R42 -1 1
      722 JUMP                             ; [+1]
      723 LOADNIL                          R42
      724 SETTABLEKS                       R42 R41 K64 ["RegionNotSupportedLabel"]
      726 JUMPIFNOT                        R36 ; [+133]
      727 GETUPVAL                         R42 5
      728 GETTABLEKS                       R42 R42 K45 ["createElement"]
      730 LOADK                            R43 K46 ["Frame"]
      731 DUPTABLE                         R44 K104 [{"LayoutOrder", "BackgroundTransparency", "Size", "Position", "AnchorPoint"}]
      732 NAMECALL                         R45 R28 K72 ["getNextOrder"]
      734 CALL                             R45 1 1
      735 SETTABLEKS                       R45 R44 K1 ["LayoutOrder"]
      737 LOADN                            R45 1
      738 SETTABLEKS                       R45 R44 K48 ["BackgroundTransparency"]
      740 GETIMPORT                        R45 K54 [UDim2.new]
      742 LOADN                            R46 0
      743 GETTABLEKS                       R47 R17 K105 ["selectInput"]
      745 GETTABLEKS                       R47 R47 K55 ["width"]
      747 LOADN                            R48 0
      748 GETTABLEKS                       R49 R17 K20 ["collaboratorItem"]
      750 GETTABLEKS                       R49 R49 K106 ["permissionEditor"]
      752 GETTABLEKS                       R49 R49 K107 ["heightOffset"]
      754 CALL                             R45 4 1
      755 SETTABLEKS                       R45 R44 K47 ["Size"]
      757 GETIMPORT                        R45 K54 [UDim2.new]
      759 LOADN                            R46 1
      760 LOADN                            R47 0
      761 LOADK                            R48 K74 [0.5]
      762 GETTABLEKS                       R49 R17 K20 ["collaboratorItem"]
      764 GETTABLEKS                       R49 R49 K106 ["permissionEditor"]
      766 GETTABLEKS                       R49 R49 K28 ["yOffset"]
      768 CALL                             R45 4 1
      769 SETTABLEKS                       R45 R44 K49 ["Position"]
      771 GETIMPORT                        R45 K76 [Vector2.new]
      773 LOADN                            R46 1
      774 LOADK                            R47 K74 [0.5]
      775 CALL                             R45 2 1
      776 SETTABLEKS                       R45 R44 K50 ["AnchorPoint"]
      778 DUPTABLE                         R45 K111 [{"LoadingIndicator", "PermissionsDropdown", "Tooltip"}]
      779 MOVE                             R46 R6
      780 JUMPIFNOT                        R46 ; [+13]
      781 GETUPVAL                         R46 5
      782 GETTABLEKS                       R46 R46 K45 ["createElement"]
      784 GETUPVAL                         R47 7
      785 DUPTABLE                         R48 K112 [{"Size"}]
      786 GETIMPORT                        R49 K114 [UDim2.fromScale]
      788 LOADN                            R50 1
      789 LOADN                            R51 1
      790 CALL                             R49 2 1
      791 SETTABLEKS                       R49 R48 K47 ["Size"]
      793 CALL                             R46 2 1
      794 SETTABLEKS                       R46 R45 K108 ["LoadingIndicator"]
      796 JUMPIF                           R6 ; [+40]
      797 GETUPVAL                         R46 5
      798 GETTABLEKS                       R46 R46 K45 ["createElement"]
      800 GETUPVAL                         R47 8
      801 DUPTABLE                         R48 K122 [{"Enabled", "Items", "OnItemActivated", "OnRenderItem", "PlaceholderText", "Width", "Style"}]
      802 GETUPVAL                         R50 0
      803 JUMPIFNOT                        R50 ; [+2]
      804 MOVE                             R49 R19
      805 JUMP                             ; [+2]
      806 NOT                              R50 R12
      807 AND                              R49 R50 R19
      808 SETTABLEKS                       R49 R48 K115 ["Enabled"]
      810 SETTABLEKS                       R9 R48 K116 ["Items"]
      812 GETTABLEKS                       R49 R0 K123 ["onItemActivated"]
      814 SETTABLEKS                       R49 R48 K117 ["OnItemActivated"]
      816 GETTABLEKS                       R49 R0 K124 ["onRenderItem"]
      818 SETTABLEKS                       R49 R48 K118 ["OnRenderItem"]
      820 SETTABLEKS                       R32 R48 K119 ["PlaceholderText"]
      822 GETTABLEKS                       R50 R17 K105 ["selectInput"]
      824 GETTABLEKS                       R50 R50 K55 ["width"]
      826 ADD                              R49 R50 R22
      827 SETTABLEKS                       R49 R48 K120 ["Width"]
      829 JUMPIFNOT                        R19 ; [+2]
      830 LOADK                            R49 K125 ["Editable"]
      831 JUMP                             ; [+1]
      832 LOADK                            R49 K126 ["NonEditable"]
      833 SETTABLEKS                       R49 R48 K121 ["Style"]
      835 CALL                             R46 2 1
      836 JUMPIF                           R46 ; [+1]
      837 LOADNIL                          R46
      838 SETTABLEKS                       R46 R45 K109 ["PermissionsDropdown"]
      840 JUMPIFNOT                        R37 ; [+14]
      841 GETUPVAL                         R46 5
      842 GETTABLEKS                       R46 R46 K45 ["createElement"]
      844 GETUPVAL                         R47 9
      845 DUPTABLE                         R48 K127 [{"Text"}]
      846 GETUPVAL                         R50 0
      847 JUMPIFNOT                        R50 ; [+2]
      848 MOVE                             R49 R13
      849 JUMP                             ; [+1]
      850 MOVE                             R49 R30
      851 SETTABLEKS                       R49 R48 K84 ["Text"]
      853 CALL                             R46 2 1
      854 JUMP                             ; [+1]
      855 LOADNIL                          R46
      856 SETTABLEKS                       R46 R45 K110 ["Tooltip"]
      858 CALL                             R42 3 1
      859 JUMP                             ; [+1]
      860 LOADNIL                          R42
      861 SETTABLEKS                       R42 R41 K65 ["PermissionEditor"]
      863 MOVE                             R42 R20
      864 JUMPIFNOT                        R42 ; [+22]
      865 GETUPVAL                         R42 5
      866 GETTABLEKS                       R42 R42 K45 ["createElement"]
      868 GETUPVAL                         R43 10
      869 DUPTABLE                         R44 K129 [{"LayoutOrder", "Enabled", "OnClicked"}]
      870 NAMECALL                         R45 R28 K72 ["getNextOrder"]
      872 CALL                             R45 1 1
      873 SETTABLEKS                       R45 R44 K1 ["LayoutOrder"]
      875 GETUPVAL                         R46 0
      876 JUMPIFNOT                        R46 ; [+2]
      877 NOT                              R45 R6
      878 JUMP                             ; [+3]
      879 MOVE                             R45 R5
      880 JUMPIFNOT                        R45 ; [+1]
      881 NOT                              R45 R6
      882 SETTABLEKS                       R45 R44 K115 ["Enabled"]
      884 SETTABLEKS                       R8 R44 K128 ["OnClicked"]
      886 CALL                             R42 2 1
      887 SETTABLEKS                       R42 R41 K66 ["Delete"]
      889 GETUPVAL                         R43 11
      890 NOT                              R42 R43
      891 JUMPIFNOT                        R42 ; [+22]
      892 NOT                              R42 R11
      893 JUMPIFNOT                        R42 ; [+20]
      894 GETUPVAL                         R42 5
      895 GETTABLEKS                       R42 R42 K45 ["createElement"]
      897 GETUPVAL                         R43 12
      898 DUPTABLE                         R44 K130 [{"Position", "LayoutOrder"}]
      899 GETIMPORT                        R45 K54 [UDim2.new]
      901 LOADK                            R46 K74 [0.5]
      902 LOADN                            R47 0
      903 LOADN                            R48 1
      904 LOADN                            R49 0
      905 CALL                             R45 4 1
      906 SETTABLEKS                       R45 R44 K49 ["Position"]
      908 NAMECALL                         R45 R28 K72 ["getNextOrder"]
      910 CALL                             R45 1 1
      911 SETTABLEKS                       R45 R44 K1 ["LayoutOrder"]
      913 CALL                             R42 2 1
      914 SETTABLEKS                       R42 R41 K67 ["Separator"]
      916 CALL                             R38 3 -1
      917 RETURN                           R38 -1

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
      203 DUPTABLE                         R33 K65 [{"Writable", "Loading"}]
      204 LOADB                            R34 1
      205 SETTABLEKS                       R34 R33 K63 ["Writable"]
      207 LOADB                            R34 0
      208 SETTABLEKS                       R34 R33 K64 ["Loading"]
      210 SETTABLEKS                       R33 R32 K66 ["defaultProps"]
      212 DUPCLOSURE                       R33 K67 [PROTO_5]
      213 CAPTURE                          VAL R26
      214 CAPTURE                          VAL R1
      215 CAPTURE                          VAL R2
      216 CAPTURE                          VAL R31
      217 CAPTURE                          VAL R21
      218 SETTABLEKS                       R33 R32 K68 ["getCurrentPermissionLabel"]
      220 DUPCLOSURE                       R33 K69 [PROTO_6]
      221 CAPTURE                          VAL R4
      222 CAPTURE                          VAL R16
      223 SETGLOBAL                        R33 K70 ["createTextLabel"]
      225 DUPCLOSURE                       R33 K71 [PROTO_9]
      226 CAPTURE                          VAL R4
      227 CAPTURE                          VAL R15
      228 SETTABLEKS                       R33 R32 K58 ["init"]
      230 DUPCLOSURE                       R33 K72 [PROTO_10]
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R0
      233 CAPTURE                          VAL R27
      234 CAPTURE                          VAL R25
      235 CAPTURE                          VAL R24
      236 CAPTURE                          VAL R22
      237 SETTABLEKS                       R33 R32 K73 ["didUpdate"]
      239 NEWCLOSURE                       R33 P6
      240 CAPTURE                          VAL R0
      241 CAPTURE                          VAL R6
      242 CAPTURE                          VAL R20
      243 CAPTURE                          VAL R29
      244 CAPTURE                          VAL R27
      245 CAPTURE                          VAL R4
      246 CAPTURE                          VAL R5
      247 CAPTURE                          VAL R19
      248 CAPTURE                          VAL R14
      249 CAPTURE                          VAL R18
      250 CAPTURE                          REF R28
      251 CAPTURE                          VAL R30
      252 CAPTURE                          VAL R17
      253 SETTABLEKS                       R33 R32 K60 ["render"]
      255 MOVE                             R33 R10
      256 DUPTABLE                         R34 K74 [{"Stylizer", "Localization"}]
      257 SETTABLEKS                       R8 R34 K18 ["Stylizer"]
      259 SETTABLEKS                       R11 R34 K21 ["Localization"]
      261 CALL                             R33 1 1
      262 MOVE                             R34 R32
      263 CALL                             R33 1 1
      264 MOVE                             R32 R33
      265 CLOSEUPVALS                      R28
      266 RETURN                           R32 1
