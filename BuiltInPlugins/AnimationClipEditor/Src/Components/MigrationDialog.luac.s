PROTO_0:
        0 LOADNIL                          R0
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["state"]
        4 GETTABLEKS                       R1 R1 K1 ["choices"]
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 JUMPIFNOTEQKS                    R5 K2 ["Migrate"] ; [+17]
       11 JUMPIFNOTEQKNIL                  R0 ; [+12]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R6 R6 K3 ["getAnimSavesFolder"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R7 R7 K4 ["props"]
       19 GETTABLEKS                       R7 R7 K5 ["RootInstance"]
       21 LOADB                            R8 1
       22 CALL                             R6 2 1
       23 MOVE                             R0 R6
       24 SETTABLEKS                       R0 R4 K6 ["Parent"]
       26 JUMP                             ; [+5]
       27 JUMPIFNOTEQKS                    R5 K7 ["Delete"] ; [+4]
       29 NAMECALL                         R6 R4 K8 ["Destroy"]
       31 CALL                             R6 1 0
       32 FORGLOOP                         R1 2 ; [-24]
       34 GETUPVAL                         R1 0
       35 GETTABLEKS                       R1 R1 K9 ["onClose"]
       37 CALL                             R1 0 0
       38 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ClearLegacyAnimationInstances"]
        5 CALL                             R0 0 0
        6 GETUPVAL                         R0 0
        7 GETTABLEKS                       R0 R0 K0 ["props"]
        9 GETTABLEKS                       R0 R0 K2 ["LoadLatestAnimation"]
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["props"]
       14 GETTABLEKS                       R1 R1 K3 ["RootInstance"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["props"]
       19 GETTABLEKS                       R2 R2 K4 ["Analytics"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["props"]
       24 GETTABLEKS                       R3 R3 K5 ["Localization"]
       26 CALL                             R0 3 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R1 ; [+18]
        1 GETUPVAL                         R2 0
        2 DUPTABLE                         R4 K1 [{"choices"}]
        3 GETUPVAL                         R5 1
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R6 R6 K2 ["state"]
        7 GETTABLEKS                       R6 R6 K0 ["choices"]
        9 NEWTABLE                         R7 1 0
       11 SETTABLE                         R0 R7 R1
       12 CALL                             R5 2 1
       13 SETTABLEKS                       R5 R4 K0 ["choices"]
       15 NAMECALL                         R2 R2 K3 ["setState"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0
       19 NEWTABLE                         R2 0 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K4 ["props"]
       24 GETTABLEKS                       R3 R3 K5 ["LegacyAnimationInstances"]
       26 LOADNIL                          R4
       27 LOADNIL                          R5
       28 FORGPREP                         R3
       29 GETTABLEKS                       R8 R7 K6 ["animation"]
       31 SETTABLE                         R0 R2 R8
       32 FORGLOOP                         R3 2 ; [-4]
       34 GETUPVAL                         R3 0
       35 DUPTABLE                         R5 K1 [{"choices"}]
       36 SETTABLEKS                       R2 R5 K0 ["choices"]
       38 NAMECALL                         R3 R3 K3 ["setState"]
       40 CALL                             R3 2 0
       41 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 LOADK                            R4 K0 ["https://create.roblox.com/docs/animation/editor#save-an-animation"]
        2 NAMECALL                         R2 R2 K1 ["OpenBrowserWindow"]
        4 CALL                             R2 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"choices"}]
        1 NEWTABLE                         R2 0 0
        3 SETTABLEKS                       R2 R1 K0 ["choices"]
        5 SETTABLEKS                       R1 R0 K2 ["state"]
        7 NEWTABLE                         R1 0 2
        9 DUPTABLE                         R2 K6 [{["Name"] = "Animation", ["Width"]}]
       10 GETIMPORT                        R3 K9 [UDim.new]
       12 LOADK                            R4 K10 [0.5]
       13 LOADN                            R5 0
       14 CALL                             R3 2 1
       15 SETTABLEKS                       R3 R2 K5 ["Width"]
       17 DUPTABLE                         R3 K12 [{["Name"] = "Action", ["Width"]}]
       18 GETIMPORT                        R4 K9 [UDim.new]
       20 LOADK                            R5 K10 [0.5]
       21 LOADN                            R6 0
       22 CALL                             R4 2 1
       23 SETTABLEKS                       R4 R3 K5 ["Width"]
       25 SETLIST                          R1 R2 2 [1]
       27 SETTABLEKS                       R1 R0 K13 ["columns"]
       29 NEWCLOSURE                       R1 P0
       30 CAPTURE                          VAL R0
       31 CAPTURE                          UPVAL U0
       32 SETTABLEKS                       R1 R0 K14 ["onMigrate"]
       34 NEWCLOSURE                       R1 P1
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K15 ["onClose"]
       38 NEWCLOSURE                       R1 P2
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K16 ["onSizesChange"]
       42 NEWCLOSURE                       R1 P3
       43 CAPTURE                          VAL R0
       44 CAPTURE                          UPVAL U1
       45 SETTABLEKS                       R1 R0 K17 ["onActionClicked"]
       47 DUPCLOSURE                       R1 K18 [PROTO_4]
       48 CAPTURE                          UPVAL U2
       49 SETTABLEKS                       R1 R0 K19 ["onLearnMore"]
       51 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Width"]
        2 GETTABLEKS                       R2 R0 K1 ["ColumnIndex"]
        4 GETTABLEKS                       R3 R0 K2 ["Style"]
        6 LOADNIL                          R4
        7 JUMPIFNOTEQKN                    R2 K3 [1] ; [+32]
        9 GETUPVAL                         R5 0
       10 GETTABLEKS                       R5 R5 K4 ["createElement"]
       12 GETUPVAL                         R6 1
       13 DUPTABLE                         R7 K9 [{"Text", "TextTruncate", "Size", "TextXAlignment"}]
       14 GETUPVAL                         R8 2
       15 LOADK                            R10 K10 ["Migration"]
       16 LOADK                            R11 K11 ["AnimationClip"]
       17 NAMECALL                         R8 R8 K12 ["getText"]
       19 CALL                             R8 3 1
       20 SETTABLEKS                       R8 R7 K5 ["Text"]
       22 GETIMPORT                        R8 K15 [Enum.TextTruncate.AtEnd]
       24 SETTABLEKS                       R8 R7 K6 ["TextTruncate"]
       26 GETIMPORT                        R8 K18 [UDim2.fromScale]
       28 LOADN                            R9 1
       29 LOADN                            R10 1
       30 CALL                             R8 2 1
       31 SETTABLEKS                       R8 R7 K7 ["Size"]
       33 GETIMPORT                        R8 K20 [Enum.TextXAlignment.Left]
       35 SETTABLEKS                       R8 R7 K8 ["TextXAlignment"]
       37 CALL                             R5 2 1
       38 MOVE                             R4 R5
       39 JUMP                             ; [+52]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K4 ["createElement"]
       43 GETUPVAL                         R6 3
       44 DUPTABLE                         R7 K25 [{"Buttons", "FillDirection", "SelectedKey", "OnClick"}]
       45 NEWTABLE                         R8 0 3
       47 DUPTABLE                         R9 K28 [{["Key"] = "Delete", ["Text"]}]
       48 GETUPVAL                         R10 2
       49 LOADK                            R12 K10 ["Migration"]
       50 LOADK                            R13 K27 ["Delete"]
       51 NAMECALL                         R10 R10 K12 ["getText"]
       53 CALL                             R10 3 1
       54 SETTABLEKS                       R10 R9 K5 ["Text"]
       56 DUPTABLE                         R10 K30 [{["Key"] = "Migrate", ["Text"]}]
       57 GETUPVAL                         R11 2
       58 LOADK                            R13 K10 ["Migration"]
       59 LOADK                            R14 K29 ["Migrate"]
       60 NAMECALL                         R11 R11 K12 ["getText"]
       62 CALL                             R11 3 1
       63 SETTABLEKS                       R11 R10 K5 ["Text"]
       65 DUPTABLE                         R11 K32 [{["Key"] = "Ignore", ["Text"]}]
       66 GETUPVAL                         R12 2
       67 LOADK                            R14 K10 ["Migration"]
       68 LOADK                            R15 K31 ["Ignore"]
       69 NAMECALL                         R12 R12 K12 ["getText"]
       71 CALL                             R12 3 1
       72 SETTABLEKS                       R12 R11 K5 ["Text"]
       74 SETLIST                          R8 R9 3 [1]
       76 SETTABLEKS                       R8 R7 K21 ["Buttons"]
       78 GETIMPORT                        R8 K34 [Enum.FillDirection.Horizontal]
       80 SETTABLEKS                       R8 R7 K22 ["FillDirection"]
       82 GETUPVAL                         R8 4
       83 SETTABLEKS                       R8 R7 K23 ["SelectedKey"]
       85 GETUPVAL                         R8 5
       86 GETTABLEKS                       R8 R8 K35 ["onActionClicked"]
       88 SETTABLEKS                       R8 R7 K24 ["OnClick"]
       90 CALL                             R5 2 1
       91 MOVE                             R4 R5
       92 GETUPVAL                         R5 0
       93 GETTABLEKS                       R5 R5 K4 ["createElement"]
       95 GETUPVAL                         R6 6
       96 GETUPVAL                         R7 7
       97 DUPTABLE                         R8 K41 [{["LayoutOrder"], ["BorderColor3"], ["BorderSizePixel"] = 1, ["Padding"], ["Style"] = "SubtleBox", ["Size"]}]
       98 SETTABLEKS                       R2 R8 K36 ["LayoutOrder"]
      100 GETTABLEKS                       R9 R3 K42 ["Border"]
      102 SETTABLEKS                       R9 R8 K37 ["BorderColor3"]
      104 GETTABLEKS                       R9 R3 K43 ["HeaderCellPadding"]
      106 SETTABLEKS                       R9 R8 K39 ["Padding"]
      108 GETIMPORT                        R9 K45 [UDim2.new]
      110 GETTABLEKS                       R10 R1 K46 ["Scale"]
      112 GETTABLEKS                       R11 R1 K47 ["Offset"]
      114 LOADN                            R12 1
      115 LOADN                            R13 0
      116 CALL                             R9 4 1
      117 SETTABLEKS                       R9 R8 K7 ["Size"]
      119 GETTABLEKS                       R9 R0 K48 ["WrapperProps"]
      121 CALL                             R7 2 1
      122 DUPTABLE                         R8 K50 [{"Content"}]
      123 SETTABLEKS                       R4 R8 K49 ["Content"]
      125 CALL                             R5 3 -1
      126 RETURN                           R5 -1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["Localization"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          VAL R2
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 RETURN                           R3 1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["ColumnIndex"]
        2 GETTABLEKS                       R2 R0 K1 ["Value"]
        4 GETTABLEKS                       R3 R0 K2 ["Style"]
        6 GETTABLEKS                       R4 R0 K3 ["Width"]
        8 JUMPIF                           R4 ; [+8]
        9 GETIMPORT                        R4 K6 [UDim.new]
       11 GETTABLEKS                       R7 R0 K8 ["Columns"]
       13 LENGTH                           R6 R7
       14 DIVRK                            R5 K7 [1] R6
       15 LOADN                            R6 0
       16 CALL                             R4 2 1
       17 LOADNIL                          R5
       18 JUMPIFNOTEQKN                    R1 K7 [1] ; [+26]
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R6 R6 K9 ["createElement"]
       23 GETUPVAL                         R7 1
       24 DUPTABLE                         R8 K14 [{"Text", "TextTruncate", "Size", "TextXAlignment"}]
       25 SETTABLEKS                       R2 R8 K10 ["Text"]
       27 GETIMPORT                        R9 K17 [Enum.TextTruncate.AtEnd]
       29 SETTABLEKS                       R9 R8 K11 ["TextTruncate"]
       31 GETIMPORT                        R9 K20 [UDim2.fromScale]
       33 LOADN                            R10 1
       34 LOADN                            R11 1
       35 CALL                             R9 2 1
       36 SETTABLEKS                       R9 R8 K12 ["Size"]
       38 GETIMPORT                        R9 K22 [Enum.TextXAlignment.Left]
       40 SETTABLEKS                       R9 R8 K13 ["TextXAlignment"]
       42 CALL                             R6 2 1
       43 MOVE                             R5 R6
       44 JUMP                             ; [+52]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K9 ["createElement"]
       48 GETUPVAL                         R7 2
       49 DUPTABLE                         R8 K27 [{"Buttons", "FillDirection", "SelectedKey", "OnClick"}]
       50 NEWTABLE                         R9 0 3
       52 DUPTABLE                         R10 K30 [{["Key"] = "Delete", ["Text"]}]
       53 GETUPVAL                         R11 3
       54 LOADK                            R13 K31 ["Migration"]
       55 LOADK                            R14 K29 ["Delete"]
       56 NAMECALL                         R11 R11 K32 ["getText"]
       58 CALL                             R11 3 1
       59 SETTABLEKS                       R11 R10 K10 ["Text"]
       61 DUPTABLE                         R11 K34 [{["Key"] = "Migrate", ["Text"]}]
       62 GETUPVAL                         R12 3
       63 LOADK                            R14 K31 ["Migration"]
       64 LOADK                            R15 K33 ["Migrate"]
       65 NAMECALL                         R12 R12 K32 ["getText"]
       67 CALL                             R12 3 1
       68 SETTABLEKS                       R12 R11 K10 ["Text"]
       70 DUPTABLE                         R12 K36 [{["Key"] = "Ignore", ["Text"]}]
       71 GETUPVAL                         R13 3
       72 LOADK                            R15 K31 ["Migration"]
       73 LOADK                            R16 K35 ["Ignore"]
       74 NAMECALL                         R13 R13 K32 ["getText"]
       76 CALL                             R13 3 1
       77 SETTABLEKS                       R13 R12 K10 ["Text"]
       79 SETLIST                          R9 R10 3 [1]
       81 SETTABLEKS                       R9 R8 K23 ["Buttons"]
       83 GETIMPORT                        R9 K38 [Enum.FillDirection.Horizontal]
       85 SETTABLEKS                       R9 R8 K24 ["FillDirection"]
       87 GETTABLEKS                       R9 R2 K25 ["SelectedKey"]
       89 SETTABLEKS                       R9 R8 K25 ["SelectedKey"]
       91 GETTABLEKS                       R9 R2 K26 ["OnClick"]
       93 SETTABLEKS                       R9 R8 K26 ["OnClick"]
       95 CALL                             R6 2 1
       96 MOVE                             R5 R6
       97 GETUPVAL                         R6 0
       98 GETTABLEKS                       R6 R6 K9 ["createElement"]
      100 GETUPVAL                         R7 4
      101 DUPTABLE                         R8 K47 [{["LayoutOrder"], ["Padding"], ["Style"] = "Box", ["BackgroundColor3"], ["BorderSizePixel"] = 1, ["BorderColor3"], ["Size"], ["ClipsDescendants"] = True}]
      102 GETTABLEKS                       R9 R0 K0 ["ColumnIndex"]
      104 SETTABLEKS                       R9 R8 K39 ["LayoutOrder"]
      106 DUPTABLE                         R9 K52 [{["Top"] = 1, ["Bottom"] = 1, ["Left"] = 5, ["Right"] = 5}]
      107 SETTABLEKS                       R9 R8 K40 ["Padding"]
      109 GETTABLEKS                       R9 R3 K53 ["BackgroundEven"]
      111 SETTABLEKS                       R9 R8 K42 ["BackgroundColor3"]
      113 GETTABLEKS                       R9 R3 K54 ["Border"]
      115 SETTABLEKS                       R9 R8 K44 ["BorderColor3"]
      117 GETIMPORT                        R9 K55 [UDim2.new]
      119 GETTABLEKS                       R10 R4 K56 ["Scale"]
      121 GETTABLEKS                       R11 R4 K57 ["Offset"]
      123 LOADN                            R12 1
      124 LOADN                            R13 0
      125 CALL                             R9 4 1
      126 SETTABLEKS                       R9 R8 K12 ["Size"]
      128 DUPTABLE                         R9 K59 [{"Content"}]
      129 SETTABLEKS                       R5 R9 K58 ["Content"]
      131 CALL                             R6 3 -1
      132 RETURN                           R6 -1

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U3
       10 RETURN                           R2 1

PROTO_10:
        0 LOADNIL                          R1
        1 GETTABLEKS                       R2 R0 K0 ["state"]
        3 GETTABLEKS                       R2 R2 K1 ["choices"]
        5 LOADNIL                          R3
        6 LOADNIL                          R4
        7 FORGPREP                         R2
        8 JUMPIFEQKNIL                     R1 ; [+5]
       10 JUMPIFEQ                         R6 R1 ; [+3]
       12 LOADNIL                          R7
       13 RETURN                           R7 1
       14 MOVE                             R1 R6
       15 FORGLOOP                         R2 2 ; [-8]
       17 ORK                              R2 R1 K2 ["Ignore"]
       18 RETURN                           R2 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onActionClicked"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["animation"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["Animation"]
        2 GETTABLEKS                       R4 R1 K0 ["Animation"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_13:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["LegacyAnimationInstances"]
        6 LOADNIL                          R3
        7 LOADNIL                          R4
        8 FORGPREP                         R2
        9 DUPTABLE                         R9 K4 [{"Animation", "Action"}]
       10 GETTABLEKS                       R10 R6 K5 ["animation"]
       12 GETTABLEKS                       R10 R10 K6 ["Name"]
       14 SETTABLEKS                       R10 R9 K2 ["Animation"]
       16 DUPTABLE                         R10 K9 [{"SelectedKey", "OnClick"}]
       17 GETTABLEKS                       R13 R0 K11 ["state"]
       19 GETTABLEKS                       R13 R13 K12 ["choices"]
       21 GETTABLEKS                       R14 R6 K5 ["animation"]
       23 GETTABLE                         R12 R13 R14
       24 ORK                              R11 R12 K10 ["Ignore"]
       25 SETTABLEKS                       R11 R10 K7 ["SelectedKey"]
       27 NEWCLOSURE                       R11 P0
       28 CAPTURE                          VAL R0
       29 CAPTURE                          VAL R6
       30 SETTABLEKS                       R11 R10 K8 ["OnClick"]
       32 SETTABLEKS                       R10 R9 K3 ["Action"]
       34 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       36 MOVE                             R8 R1
       37 GETIMPORT                        R7 K15 [table.insert]
       39 CALL                             R7 2 0
       40 FORGLOOP                         R2 2 ; [-32]
       42 GETIMPORT                        R2 K17 [table.sort]
       44 MOVE                             R3 R1
       45 DUPCLOSURE                       R4 K18 [PROTO_12]
       46 CALL                             R2 2 0
       47 RETURN                           R1 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["LegacyAnimationInstances"]
        6 JUMPIF                           R2 ; [+2]
        7 NEWTABLE                         R2 0 0
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R7 R6 K2 ["animation"]
       14 LOADK                            R8 K3 ["Ignore"]
       15 SETTABLE                         R8 R1 R7
       16 FORGLOOP                         R2 2 ; [-5]
       18 DUPTABLE                         R4 K5 [{"choices"}]
       19 SETTABLEKS                       R1 R4 K4 ["choices"]
       21 NAMECALL                         R2 R0 K6 ["setState"]
       23 CALL                             R2 2 0
       24 RETURN                           R0 0

PROTO_15:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["onMigrate"]
        4 CALL                             R1 0 0
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K1 ["onClose"]
        9 CALL                             R1 0 0
       10 RETURN                           R0 0

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["Localization"]
        8 GETTABLEKS                       R3 R1 K3 ["dialogTheme"]
       10 NEWTABLE                         R4 0 2
       12 DUPTABLE                         R5 K9 [{["Key"] = False, ["Text"], ["Style"] = "Round"}]
       13 LOADK                            R8 K10 ["Dialog"]
       14 LOADK                            R9 K11 ["Skip"]
       15 NAMECALL                         R6 R2 K12 ["getText"]
       17 CALL                             R6 3 1
       18 SETTABLEKS                       R6 R5 K6 ["Text"]
       20 DUPTABLE                         R6 K15 [{["Key"] = True, ["Text"], ["Style"] = "RoundPrimary"}]
       21 LOADK                            R9 K10 ["Dialog"]
       22 LOADK                            R10 K16 ["Ok"]
       23 NAMECALL                         R7 R2 K12 ["getText"]
       25 CALL                             R7 3 1
       26 SETTABLEKS                       R7 R6 K6 ["Text"]
       28 SETLIST                          R4 R5 2 [1]
       30 NAMECALL                         R5 R0 K17 ["makeRows"]
       32 CALL                             R5 1 1
       33 NAMECALL                         R6 R0 K18 ["findCommonAction"]
       35 CALL                             R6 1 1
       36 GETUPVAL                         R7 0
       37 GETTABLEKS                       R7 R7 K19 ["createElement"]
       39 GETUPVAL                         R8 1
       40 DUPTABLE                         R9 K28 [{["MinContentSize"], ["Size"], ["TextSize"], ["Resizable"] = False, ["Buttons"], ["OnButtonPressed"], ["OnClose"], ["Title"]}]
       41 GETIMPORT                        R10 K31 [Vector2.new]
       43 LOADN                            R11 600
       44 LOADN                            R12 250
       45 CALL                             R10 2 1
       46 SETTABLEKS                       R10 R9 K20 ["MinContentSize"]
       48 GETIMPORT                        R10 K31 [Vector2.new]
       50 LOADN                            R11 600
       51 LOADN                            R12 250
       52 CALL                             R10 2 1
       53 SETTABLEKS                       R10 R9 K21 ["Size"]
       55 GETTABLEKS                       R10 R3 K32 ["textSize"]
       57 SETTABLEKS                       R10 R9 K22 ["TextSize"]
       59 SETTABLEKS                       R4 R9 K24 ["Buttons"]
       61 NEWCLOSURE                       R10 P0
       62 CAPTURE                          VAL R0
       63 SETTABLEKS                       R10 R9 K25 ["OnButtonPressed"]
       65 GETTABLEKS                       R10 R0 K33 ["onClose"]
       67 SETTABLEKS                       R10 R9 K26 ["OnClose"]
       69 LOADK                            R12 K27 ["Title"]
       70 LOADK                            R13 K34 ["MigrateAnimations"]
       71 NAMECALL                         R10 R2 K12 ["getText"]
       73 CALL                             R10 3 1
       74 SETTABLEKS                       R10 R9 K27 ["Title"]
       76 DUPTABLE                         R10 K38 [{"Layout", "Text", "Link", "Table"}]
       77 GETUPVAL                         R11 0
       78 GETTABLEKS                       R11 R11 K19 ["createElement"]
       80 LOADK                            R12 K39 ["UIListLayout"]
       81 DUPTABLE                         R13 K44 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
       82 GETIMPORT                        R14 K47 [Enum.FillDirection.Vertical]
       84 SETTABLEKS                       R14 R13 K40 ["FillDirection"]
       86 GETIMPORT                        R14 K49 [Enum.HorizontalAlignment.Left]
       88 SETTABLEKS                       R14 R13 K41 ["HorizontalAlignment"]
       90 GETIMPORT                        R14 K51 [Enum.SortOrder.LayoutOrder]
       92 SETTABLEKS                       R14 R13 K42 ["SortOrder"]
       94 GETIMPORT                        R14 K53 [Enum.VerticalAlignment.Top]
       96 SETTABLEKS                       R14 R13 K43 ["VerticalAlignment"]
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K35 ["Layout"]
      101 GETUPVAL                         R11 0
      102 GETTABLEKS                       R11 R11 K19 ["createElement"]
      104 GETUPVAL                         R12 2
      105 DUPTABLE                         R13 K60 [{["Size"], ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["TextWrapped"] = True, ["LayoutOrder"] = 1}]
      106 GETIMPORT                        R14 K62 [UDim2.new]
      108 LOADN                            R15 1
      109 LOADN                            R16 0
      110 LOADN                            R17 0
      111 LOADN                            R18 75
      112 CALL                             R14 4 1
      113 SETTABLEKS                       R14 R13 K21 ["Size"]
      115 GETIMPORT                        R14 K63 [Enum.TextXAlignment.Left]
      117 SETTABLEKS                       R14 R13 K54 ["TextXAlignment"]
      119 GETIMPORT                        R14 K64 [Enum.TextYAlignment.Top]
      121 SETTABLEKS                       R14 R13 K55 ["TextYAlignment"]
      123 LOADK                            R16 K65 ["Migration"]
      124 LOADK                            R17 K34 ["MigrateAnimations"]
      125 NAMECALL                         R14 R2 K12 ["getText"]
      127 CALL                             R14 3 1
      128 SETTABLEKS                       R14 R13 K6 ["Text"]
      130 GETTABLEKS                       R14 R1 K66 ["TextColor"]
      132 SETTABLEKS                       R14 R13 K56 ["TextColor3"]
      134 CALL                             R11 2 1
      135 SETTABLEKS                       R11 R10 K6 ["Text"]
      137 GETUPVAL                         R11 0
      138 GETTABLEKS                       R11 R11 K19 ["createElement"]
      140 GETUPVAL                         R12 3
      141 DUPTABLE                         R13 K69 [{["Size"], ["Text"], ["TextYAlignment"], ["OnClick"], ["LayoutOrder"] = 2}]
      142 GETIMPORT                        R14 K62 [UDim2.new]
      144 LOADN                            R15 1
      145 LOADN                            R16 0
      146 LOADN                            R17 0
      147 LOADN                            R18 30
      148 CALL                             R14 4 1
      149 SETTABLEKS                       R14 R13 K21 ["Size"]
      151 LOADK                            R16 K65 ["Migration"]
      152 LOADK                            R17 K70 ["LearnMore"]
      153 NAMECALL                         R14 R2 K12 ["getText"]
      155 CALL                             R14 3 1
      156 SETTABLEKS                       R14 R13 K6 ["Text"]
      158 GETIMPORT                        R14 K64 [Enum.TextYAlignment.Top]
      160 SETTABLEKS                       R14 R13 K55 ["TextYAlignment"]
      162 GETTABLEKS                       R14 R0 K71 ["onLearnMore"]
      164 SETTABLEKS                       R14 R13 K67 ["OnClick"]
      166 CALL                             R11 2 1
      167 SETTABLEKS                       R11 R10 K36 ["Link"]
      169 GETUPVAL                         R11 0
      170 GETTABLEKS                       R11 R11 K19 ["createElement"]
      172 GETUPVAL                         R12 4
      173 DUPTABLE                         R13 K81 [{["Size"], ["Scroll"] = True, ["UseScale"] = True, ["ClampSize"] = True, ["Columns"], ["Rows"], ["CellComponent"], ["HeaderCellComponent"], ["ShowHeader"] = True, ["LayoutOrder"] = 3}]
      174 GETIMPORT                        R14 K62 [UDim2.new]
      176 LOADN                            R15 1
      177 LOADN                            R16 0
      178 LOADN                            R17 1
      179 LOADN                            R18 -105
      180 CALL                             R14 4 1
      181 SETTABLEKS                       R14 R13 K21 ["Size"]
      183 GETTABLEKS                       R14 R0 K82 ["columns"]
      185 SETTABLEKS                       R14 R13 K75 ["Columns"]
      187 SETTABLEKS                       R5 R13 K76 ["Rows"]
      189 NAMECALL                         R14 R0 K83 ["makeCell"]
      191 CALL                             R14 1 1
      192 SETTABLEKS                       R14 R13 K77 ["CellComponent"]
      194 MOVE                             R16 R6
      195 NAMECALL                         R14 R0 K84 ["makeHeader"]
      197 CALL                             R14 2 1
      198 SETTABLEKS                       R14 R13 K78 ["HeaderCellComponent"]
      200 CALL                             R11 2 1
      201 SETTABLEKS                       R11 R10 K37 ["Table"]
      203 CALL                             R7 3 -1
      204 RETURN                           R7 -1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["Status"]
        2 DUPTABLE                         R2 K3 [{"LegacyAnimationInstances", "RootInstance"}]
        3 GETTABLEKS                       R3 R1 K1 ["LegacyAnimationInstances"]
        5 SETTABLEKS                       R3 R2 K1 ["LegacyAnimationInstances"]
        7 GETTABLEKS                       R3 R1 K2 ["RootInstance"]
        9 SETTABLEKS                       R3 R2 K2 ["RootInstance"]
       11 RETURN                           R2 1

PROTO_18:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 NEWTABLE                         R2 0 0
        4 CALL                             R1 1 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 MOVE                             R5 R0
        3 MOVE                             R6 R1
        4 MOVE                             R7 R2
        5 CALL                             R4 3 -1
        6 CALL                             R3 -1 0
        7 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K2 [{"ClearLegacyAnimationInstances", "LoadLatestAnimation"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ClearLegacyAnimationInstances"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["LoadLatestAnimation"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["BrowserService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationClipEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Framework"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Roact"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["RoactRodux"]
       33 CALL                             R4 1 1
       34 GETTABLEKS                       R5 R1 K14 ["Src"]
       36 GETTABLEKS                       R5 R5 K15 ["Actions"]
       38 GETIMPORT                        R6 K9 [require]
       40 GETTABLEKS                       R7 R5 K16 ["SetLegacyAnimationInstances"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R7 R1 K14 ["Src"]
       45 GETTABLEKS                       R7 R7 K17 ["Thunks"]
       47 GETIMPORT                        R8 K9 [require]
       49 GETTABLEKS                       R9 R7 K18 ["LoadLatestAnimation"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R9 R1 K14 ["Src"]
       54 GETTABLEKS                       R9 R9 K19 ["Util"]
       56 GETIMPORT                        R10 K9 [require]
       58 GETTABLEKS                       R11 R9 K20 ["RigUtils"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R11 R2 K21 ["ContextServices"]
       63 GETTABLEKS                       R12 R11 K22 ["withContext"]
       65 GETTABLEKS                       R13 R2 K23 ["Dash"]
       67 GETTABLEKS                       R14 R13 K24 ["assign"]
       69 GETTABLEKS                       R15 R13 K25 ["join"]
       71 GETTABLEKS                       R16 R2 K26 ["UI"]
       73 GETTABLEKS                       R17 R16 K27 ["LinkText"]
       75 GETTABLEKS                       R18 R16 K28 ["Pane"]
       77 GETTABLEKS                       R19 R16 K29 ["RadioButtonList"]
       79 GETTABLEKS                       R20 R16 K30 ["Table"]
       81 GETTABLEKS                       R21 R16 K31 ["StyledDialog"]
       83 GETTABLEKS                       R22 R16 K32 ["TextLabel"]
       85 GETTABLEKS                       R23 R3 K33 ["PureComponent"]
       87 LOADK                            R25 K34 ["MigrationDialog"]
       88 NAMECALL                         R23 R23 K35 ["extend"]
       90 CALL                             R23 2 1
       91 DUPCLOSURE                       R24 K36 [PROTO_5]
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R15
       94 CAPTURE                          VAL R0
       95 SETTABLEKS                       R24 R23 K37 ["init"]
       97 DUPCLOSURE                       R24 K38 [PROTO_7]
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R22
      100 CAPTURE                          VAL R19
      101 CAPTURE                          VAL R18
      102 CAPTURE                          VAL R14
      103 SETTABLEKS                       R24 R23 K39 ["makeHeader"]
      105 DUPCLOSURE                       R24 K40 [PROTO_9]
      106 CAPTURE                          VAL R3
      107 CAPTURE                          VAL R22
      108 CAPTURE                          VAL R19
      109 CAPTURE                          VAL R18
      110 SETTABLEKS                       R24 R23 K41 ["makeCell"]
      112 DUPCLOSURE                       R24 K42 [PROTO_10]
      113 SETTABLEKS                       R24 R23 K43 ["findCommonAction"]
      115 DUPCLOSURE                       R24 K44 [PROTO_13]
      116 SETTABLEKS                       R24 R23 K45 ["makeRows"]
      118 DUPCLOSURE                       R24 K46 [PROTO_14]
      119 SETTABLEKS                       R24 R23 K47 ["didMount"]
      121 DUPCLOSURE                       R24 K48 [PROTO_16]
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R21
      124 CAPTURE                          VAL R22
      125 CAPTURE                          VAL R17
      126 CAPTURE                          VAL R20
      127 SETTABLEKS                       R24 R23 K49 ["render"]
      129 DUPCLOSURE                       R24 K50 [PROTO_17]
      130 DUPCLOSURE                       R25 K51 [PROTO_20]
      131 CAPTURE                          VAL R6
      132 CAPTURE                          VAL R8
      133 MOVE                             R26 R12
      134 DUPTABLE                         R27 K56 [{"Analytics", "Localization", "Plugin", "Stylizer"}]
      135 GETTABLEKS                       R28 R11 K52 ["Analytics"]
      137 SETTABLEKS                       R28 R27 K52 ["Analytics"]
      139 GETTABLEKS                       R28 R11 K53 ["Localization"]
      141 SETTABLEKS                       R28 R27 K53 ["Localization"]
      143 GETTABLEKS                       R28 R11 K54 ["Plugin"]
      145 SETTABLEKS                       R28 R27 K54 ["Plugin"]
      147 GETTABLEKS                       R28 R11 K55 ["Stylizer"]
      149 SETTABLEKS                       R28 R27 K55 ["Stylizer"]
      151 CALL                             R26 1 1
      152 MOVE                             R27 R23
      153 CALL                             R26 1 1
      154 MOVE                             R23 R26
      155 GETTABLEKS                       R26 R4 K57 ["connect"]
      157 MOVE                             R27 R24
      158 MOVE                             R28 R25
      159 CALL                             R26 2 1
      160 MOVE                             R27 R23
      161 CALL                             R26 1 -1
      162 RETURN                           R26 -1
