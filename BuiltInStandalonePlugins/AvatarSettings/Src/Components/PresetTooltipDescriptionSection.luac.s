PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 NEWTABLE                         R5 2 0
        4 GETUPVAL                         R6 2
        5 GETTABLEKS                       R6 R6 K0 ["Tag"]
        7 LOADK                            R7 K1 ["X-Row X-Middle VerticalFlex-Fill"]
        8 SETTABLE                         R7 R5 R6
        9 GETIMPORT                        R6 K4 [UDim2.new]
       11 LOADN                            R7 1
       12 LOADN                            R8 0
       13 LOADN                            R9 0
       14 LOADN                            R10 24
       15 CALL                             R6 4 1
       16 SETTABLEKS                       R6 R5 K5 ["Size"]
       18 DUPTABLE                         R6 K8 [{"Image", "Text"}]
       19 GETUPVAL                         R7 0
       20 LOADK                            R8 K9 ["ImageLabel"]
       21 NEWTABLE                         R9 4 0
       23 GETUPVAL                         R10 2
       24 GETTABLEKS                       R10 R10 K0 ["Tag"]
       26 JUMPIFNOT                        R2 ; [+2]
       27 LOADK                            R11 K10 ["PresetHoverTooltipXImage"]
       28 JUMP                             ; [+1]
       29 LOADK                            R11 K11 ["PresetHoverTooltipCheckImage"]
       30 SETTABLE                         R11 R9 R10
       31 GETIMPORT                        R10 K13 [UDim2.fromScale]
       33 LOADN                            R11 1
       34 LOADN                            R12 1
       35 CALL                             R10 2 1
       36 SETTABLEKS                       R10 R9 K5 ["Size"]
       38 GETIMPORT                        R10 K17 [Enum.SizeConstraint.RelativeYY]
       40 SETTABLEKS                       R10 R9 K15 ["SizeConstraint"]
       42 LOADN                            R10 1
       43 SETTABLEKS                       R10 R9 K18 ["BackgroundTransparency"]
       45 CALL                             R7 2 1
       46 SETTABLEKS                       R7 R6 K6 ["Image"]
       48 GETUPVAL                         R7 0
       49 LOADK                            R8 K19 ["TextLabel"]
       50 NEWTABLE                         R9 8 0
       52 GETUPVAL                         R10 2
       53 GETTABLEKS                       R10 R10 K0 ["Tag"]
       55 GETUPVAL                         R11 3
       56 GETTABLEKS                       R11 R11 K20 ["Styling"]
       58 GETTABLEKS                       R11 R11 K21 ["joinTags"]
       60 LOADK                            R12 K22 ["Component-TextLabel"]
       61 JUMPIFNOT                        R2 ; [+2]
       62 LOADK                            R13 K23 ["Disabled"]
       63 JUMP                             ; [+1]
       64 LOADK                            R13 K24 ["SubText"]
       65 CALL                             R11 2 1
       66 SETTABLE                         R11 R9 R10
       67 GETIMPORT                        R10 K27 [Enum.AutomaticSize.XY]
       69 SETTABLEKS                       R10 R9 K25 ["AutomaticSize"]
       71 SETTABLEKS                       R0 R9 K7 ["Text"]
       73 GETIMPORT                        R10 K30 [Enum.TextXAlignment.Left]
       75 SETTABLEKS                       R10 R9 K28 ["TextXAlignment"]
       77 LOADB                            R10 1
       78 SETTABLEKS                       R10 R9 K31 ["TextWrapped"]
       80 SETTABLEKS                       R1 R9 K32 ["LayoutOrder"]
       82 DUPTABLE                         R10 K34 [{"UIFlexItem"}]
       83 GETUPVAL                         R11 0
       84 LOADK                            R12 K33 ["UIFlexItem"]
       85 CALL                             R11 1 1
       86 SETTABLEKS                       R11 R10 K33 ["UIFlexItem"]
       88 CALL                             R7 3 1
       89 SETTABLEKS                       R7 R6 K7 ["Text"]
       91 CALL                             R3 3 -1
       92 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 3
        8 DUPTABLE                         R5 K3 [{"Size", "LayoutOrder"}]
        9 GETTABLEKS                       R6 R0 K4 ["size"]
       11 SETTABLEKS                       R6 R5 K1 ["Size"]
       13 GETTABLEKS                       R6 R0 K5 ["layoutOrder"]
       15 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       17 DUPTABLE                         R6 K11 [{"UIPadding", "UIListLayout", "RetainIntendedLook", "PhysicallyAccurateCollisions", "ConsistentSizeAndPhysics"}]
       18 GETTABLEKS                       R8 R0 K12 ["removePadding"]
       20 NOT                              R7 R8
       21 JUMPIFNOT                        R7 ; [+11]
       22 GETUPVAL                         R7 2
       23 LOADK                            R8 K6 ["UIPadding"]
       24 DUPTABLE                         R9 K14 [{"PaddingTop"}]
       25 GETIMPORT                        R10 K17 [UDim.new]
       27 LOADN                            R11 0
       28 LOADN                            R12 8
       29 CALL                             R10 2 1
       30 SETTABLEKS                       R10 R9 K13 ["PaddingTop"]
       32 CALL                             R7 2 1
       33 SETTABLEKS                       R7 R6 K6 ["UIPadding"]
       35 GETUPVAL                         R7 2
       36 LOADK                            R8 K7 ["UIListLayout"]
       37 DUPTABLE                         R9 K22 [{"HorizontalAlignment", "FillDirection", "SortOrder", "VerticalFlex"}]
       38 GETIMPORT                        R10 K25 [Enum.HorizontalAlignment.Left]
       40 SETTABLEKS                       R10 R9 K18 ["HorizontalAlignment"]
       42 GETIMPORT                        R10 K27 [Enum.FillDirection.Vertical]
       44 SETTABLEKS                       R10 R9 K19 ["FillDirection"]
       46 GETIMPORT                        R10 K28 [Enum.SortOrder.LayoutOrder]
       48 SETTABLEKS                       R10 R9 K20 ["SortOrder"]
       50 GETIMPORT                        R10 K31 [Enum.UIFlexAlignment.SpaceEvenly]
       52 SETTABLEKS                       R10 R9 K21 ["VerticalFlex"]
       54 CALL                             R7 2 1
       55 SETTABLEKS                       R7 R6 K7 ["UIListLayout"]
       57 GETUPVAL                         R7 4
       58 LOADK                            R10 K32 ["AvatarTypeSelector"]
       59 LOADK                            R11 K33 ["PresetTooltipRetainLook"]
       60 NAMECALL                         R8 R1 K34 ["getText"]
       62 CALL                             R8 3 1
       63 MOVE                             R9 R2
       64 CALL                             R9 0 -1
       65 CALL                             R7 -1 1
       66 SETTABLEKS                       R7 R6 K8 ["RetainIntendedLook"]
       68 GETUPVAL                         R7 4
       69 LOADK                            R10 K32 ["AvatarTypeSelector"]
       70 LOADK                            R11 K35 ["PresetTooltipAccurateCollision"]
       71 NAMECALL                         R8 R1 K34 ["getText"]
       73 CALL                             R8 3 1
       74 MOVE                             R9 R2
       75 CALL                             R9 0 1
       76 GETTABLEKS                       R11 R0 K36 ["currentPreset"]
       78 JUMPIFEQKS                       R11 K37 ["ConsistentGameplay"] ; [+2]
       80 LOADB                            R10 0 +1
       81 LOADB                            R10 1
       82 CALL                             R7 3 1
       83 SETTABLEKS                       R7 R6 K9 ["PhysicallyAccurateCollisions"]
       85 GETUPVAL                         R7 4
       86 LOADK                            R10 K32 ["AvatarTypeSelector"]
       87 LOADK                            R11 K38 ["PresetTooltipConsistentSizePhysics"]
       88 NAMECALL                         R8 R1 K34 ["getText"]
       90 CALL                             R8 3 1
       91 MOVE                             R9 R2
       92 CALL                             R9 0 1
       93 GETTABLEKS                       R11 R0 K36 ["currentPreset"]
       95 JUMPIFEQKS                       R11 K39 ["PlayerChoice"] ; [+2]
       97 LOADB                            R10 0 +1
       98 LOADB                            R10 1
       99 CALL                             R7 3 1
      100 SETTABLEKS                       R7 R6 K10 ["ConsistentSizeAndPhysics"]
      102 CALL                             R3 3 -1
      103 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["Localization"]
       32 GETTABLEKS                       R6 R1 K12 ["UI"]
       34 GETTABLEKS                       R7 R6 K13 ["Pane"]
       36 GETTABLEKS                       R8 R3 K14 ["createNextOrder"]
       38 GETTABLEKS                       R9 R2 K15 ["createElement"]
       40 DUPCLOSURE                       R10 K16 [PROTO_0]
       41 CAPTURE                          VAL R9
       42 CAPTURE                          VAL R7
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R1
       45 DUPCLOSURE                       R11 K17 [PROTO_1]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R8
       48 CAPTURE                          VAL R9
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R10
       51 RETURN                           R11 1
