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
        9 DUPTABLE                         R2 K5 [{"Name", "Width"}]
       10 LOADK                            R3 K6 ["Animation"]
       11 SETTABLEKS                       R3 R2 K3 ["Name"]
       13 GETIMPORT                        R3 K9 [UDim.new]
       15 LOADK                            R4 K10 [0.5]
       16 LOADN                            R5 0
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K4 ["Width"]
       20 DUPTABLE                         R3 K5 [{"Name", "Width"}]
       21 LOADK                            R4 K11 ["Action"]
       22 SETTABLEKS                       R4 R3 K3 ["Name"]
       24 GETIMPORT                        R4 K9 [UDim.new]
       26 LOADK                            R5 K10 [0.5]
       27 LOADN                            R6 0
       28 CALL                             R4 2 1
       29 SETTABLEKS                       R4 R3 K4 ["Width"]
       31 SETLIST                          R1 R2 2 [1]
       33 SETTABLEKS                       R1 R0 K12 ["columns"]
       35 NEWCLOSURE                       R1 P0
       36 CAPTURE                          VAL R0
       37 CAPTURE                          UPVAL U0
       38 SETTABLEKS                       R1 R0 K13 ["onMigrate"]
       40 NEWCLOSURE                       R1 P1
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R1 R0 K14 ["onClose"]
       44 NEWCLOSURE                       R1 P2
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R1 R0 K15 ["onSizesChange"]
       48 NEWCLOSURE                       R1 P3
       49 CAPTURE                          VAL R0
       50 CAPTURE                          UPVAL U1
       51 SETTABLEKS                       R1 R0 K16 ["onActionClicked"]
       53 DUPCLOSURE                       R1 K17 [PROTO_4]
       54 CAPTURE                          UPVAL U2
       55 SETTABLEKS                       R1 R0 K18 ["onLearnMore"]
       57 RETURN                           R0 0

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
       39 JUMP                             ; [+61]
       40 GETUPVAL                         R5 0
       41 GETTABLEKS                       R5 R5 K4 ["createElement"]
       43 GETUPVAL                         R6 3
       44 DUPTABLE                         R7 K25 [{"Buttons", "FillDirection", "SelectedKey", "OnClick"}]
       45 NEWTABLE                         R8 0 3
       47 DUPTABLE                         R9 K27 [{"Key", "Text"}]
       48 LOADK                            R10 K28 ["Delete"]
       49 SETTABLEKS                       R10 R9 K26 ["Key"]
       51 GETUPVAL                         R10 2
       52 LOADK                            R12 K10 ["Migration"]
       53 LOADK                            R13 K28 ["Delete"]
       54 NAMECALL                         R10 R10 K12 ["getText"]
       56 CALL                             R10 3 1
       57 SETTABLEKS                       R10 R9 K5 ["Text"]
       59 DUPTABLE                         R10 K27 [{"Key", "Text"}]
       60 LOADK                            R11 K29 ["Migrate"]
       61 SETTABLEKS                       R11 R10 K26 ["Key"]
       63 GETUPVAL                         R11 2
       64 LOADK                            R13 K10 ["Migration"]
       65 LOADK                            R14 K29 ["Migrate"]
       66 NAMECALL                         R11 R11 K12 ["getText"]
       68 CALL                             R11 3 1
       69 SETTABLEKS                       R11 R10 K5 ["Text"]
       71 DUPTABLE                         R11 K27 [{"Key", "Text"}]
       72 LOADK                            R12 K30 ["Ignore"]
       73 SETTABLEKS                       R12 R11 K26 ["Key"]
       75 GETUPVAL                         R12 2
       76 LOADK                            R14 K10 ["Migration"]
       77 LOADK                            R15 K30 ["Ignore"]
       78 NAMECALL                         R12 R12 K12 ["getText"]
       80 CALL                             R12 3 1
       81 SETTABLEKS                       R12 R11 K5 ["Text"]
       83 SETLIST                          R8 R9 3 [1]
       85 SETTABLEKS                       R8 R7 K21 ["Buttons"]
       87 GETIMPORT                        R8 K32 [Enum.FillDirection.Horizontal]
       89 SETTABLEKS                       R8 R7 K22 ["FillDirection"]
       91 GETUPVAL                         R8 4
       92 SETTABLEKS                       R8 R7 K23 ["SelectedKey"]
       94 GETUPVAL                         R8 5
       95 GETTABLEKS                       R8 R8 K33 ["onActionClicked"]
       97 SETTABLEKS                       R8 R7 K24 ["OnClick"]
       99 CALL                             R5 2 1
      100 MOVE                             R4 R5
      101 GETUPVAL                         R5 0
      102 GETTABLEKS                       R5 R5 K4 ["createElement"]
      104 GETUPVAL                         R6 6
      105 GETUPVAL                         R7 7
      106 DUPTABLE                         R8 K38 [{"LayoutOrder", "BorderColor3", "BorderSizePixel", "Padding", "Style", "Size"}]
      107 SETTABLEKS                       R2 R8 K34 ["LayoutOrder"]
      109 GETTABLEKS                       R9 R3 K39 ["Border"]
      111 SETTABLEKS                       R9 R8 K35 ["BorderColor3"]
      113 LOADN                            R9 1
      114 SETTABLEKS                       R9 R8 K36 ["BorderSizePixel"]
      116 GETTABLEKS                       R9 R3 K40 ["HeaderCellPadding"]
      118 SETTABLEKS                       R9 R8 K37 ["Padding"]
      120 LOADK                            R9 K41 ["SubtleBox"]
      121 SETTABLEKS                       R9 R8 K2 ["Style"]
      123 GETIMPORT                        R9 K43 [UDim2.new]
      125 GETTABLEKS                       R10 R1 K44 ["Scale"]
      127 GETTABLEKS                       R11 R1 K45 ["Offset"]
      129 LOADN                            R12 1
      130 LOADN                            R13 0
      131 CALL                             R9 4 1
      132 SETTABLEKS                       R9 R8 K7 ["Size"]
      134 GETTABLEKS                       R9 R0 K46 ["WrapperProps"]
      136 CALL                             R7 2 1
      137 DUPTABLE                         R8 K48 [{"Content"}]
      138 SETTABLEKS                       R4 R8 K47 ["Content"]
      140 CALL                             R5 3 -1
      141 RETURN                           R5 -1

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
       14 DIVRK                            R5 R7 K6 [UDim.new]
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
       44 JUMP                             ; [+61]
       45 GETUPVAL                         R6 0
       46 GETTABLEKS                       R6 R6 K9 ["createElement"]
       48 GETUPVAL                         R7 2
       49 DUPTABLE                         R8 K27 [{"Buttons", "FillDirection", "SelectedKey", "OnClick"}]
       50 NEWTABLE                         R9 0 3
       52 DUPTABLE                         R10 K29 [{"Key", "Text"}]
       53 LOADK                            R11 K30 ["Delete"]
       54 SETTABLEKS                       R11 R10 K28 ["Key"]
       56 GETUPVAL                         R11 3
       57 LOADK                            R13 K31 ["Migration"]
       58 LOADK                            R14 K30 ["Delete"]
       59 NAMECALL                         R11 R11 K32 ["getText"]
       61 CALL                             R11 3 1
       62 SETTABLEKS                       R11 R10 K10 ["Text"]
       64 DUPTABLE                         R11 K29 [{"Key", "Text"}]
       65 LOADK                            R12 K33 ["Migrate"]
       66 SETTABLEKS                       R12 R11 K28 ["Key"]
       68 GETUPVAL                         R12 3
       69 LOADK                            R14 K31 ["Migration"]
       70 LOADK                            R15 K33 ["Migrate"]
       71 NAMECALL                         R12 R12 K32 ["getText"]
       73 CALL                             R12 3 1
       74 SETTABLEKS                       R12 R11 K10 ["Text"]
       76 DUPTABLE                         R12 K29 [{"Key", "Text"}]
       77 LOADK                            R13 K34 ["Ignore"]
       78 SETTABLEKS                       R13 R12 K28 ["Key"]
       80 GETUPVAL                         R13 3
       81 LOADK                            R15 K31 ["Migration"]
       82 LOADK                            R16 K34 ["Ignore"]
       83 NAMECALL                         R13 R13 K32 ["getText"]
       85 CALL                             R13 3 1
       86 SETTABLEKS                       R13 R12 K10 ["Text"]
       88 SETLIST                          R9 R10 3 [1]
       90 SETTABLEKS                       R9 R8 K23 ["Buttons"]
       92 GETIMPORT                        R9 K36 [Enum.FillDirection.Horizontal]
       94 SETTABLEKS                       R9 R8 K24 ["FillDirection"]
       96 GETTABLEKS                       R9 R2 K25 ["SelectedKey"]
       98 SETTABLEKS                       R9 R8 K25 ["SelectedKey"]
      100 GETTABLEKS                       R9 R2 K26 ["OnClick"]
      102 SETTABLEKS                       R9 R8 K26 ["OnClick"]
      104 CALL                             R6 2 1
      105 MOVE                             R5 R6
      106 GETUPVAL                         R6 0
      107 GETTABLEKS                       R6 R6 K9 ["createElement"]
      109 GETUPVAL                         R7 4
      110 DUPTABLE                         R8 K43 [{"LayoutOrder", "Padding", "Style", "BackgroundColor3", "BorderSizePixel", "BorderColor3", "Size", "ClipsDescendants"}]
      111 GETTABLEKS                       R9 R0 K0 ["ColumnIndex"]
      113 SETTABLEKS                       R9 R8 K37 ["LayoutOrder"]
      115 DUPTABLE                         R9 K47 [{"Top", "Bottom", "Left", "Right"}]
      116 LOADN                            R10 1
      117 SETTABLEKS                       R10 R9 K44 ["Top"]
      119 LOADN                            R10 1
      120 SETTABLEKS                       R10 R9 K45 ["Bottom"]
      122 LOADN                            R10 5
      123 SETTABLEKS                       R10 R9 K21 ["Left"]
      125 LOADN                            R10 5
      126 SETTABLEKS                       R10 R9 K46 ["Right"]
      128 SETTABLEKS                       R9 R8 K38 ["Padding"]
      130 LOADK                            R9 K48 ["Box"]
      131 SETTABLEKS                       R9 R8 K2 ["Style"]
      133 GETTABLEKS                       R9 R3 K49 ["BackgroundEven"]
      135 SETTABLEKS                       R9 R8 K39 ["BackgroundColor3"]
      137 LOADN                            R9 1
      138 SETTABLEKS                       R9 R8 K40 ["BorderSizePixel"]
      140 GETTABLEKS                       R9 R3 K50 ["Border"]
      142 SETTABLEKS                       R9 R8 K41 ["BorderColor3"]
      144 GETIMPORT                        R9 K51 [UDim2.new]
      146 GETTABLEKS                       R10 R4 K52 ["Scale"]
      148 GETTABLEKS                       R11 R4 K53 ["Offset"]
      150 LOADN                            R12 1
      151 LOADN                            R13 0
      152 CALL                             R9 4 1
      153 SETTABLEKS                       R9 R8 K12 ["Size"]
      155 LOADB                            R9 1
      156 SETTABLEKS                       R9 R8 K42 ["ClipsDescendants"]
      158 DUPTABLE                         R9 K55 [{"Content"}]
      159 SETTABLEKS                       R5 R9 K54 ["Content"]
      161 CALL                             R6 3 -1
      162 RETURN                           R6 -1

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
       12 DUPTABLE                         R5 K7 [{"Key", "Text", "Style"}]
       13 LOADB                            R6 0
       14 SETTABLEKS                       R6 R5 K4 ["Key"]
       16 LOADK                            R8 K8 ["Dialog"]
       17 LOADK                            R9 K9 ["Skip"]
       18 NAMECALL                         R6 R2 K10 ["getText"]
       20 CALL                             R6 3 1
       21 SETTABLEKS                       R6 R5 K5 ["Text"]
       23 LOADK                            R6 K11 ["Round"]
       24 SETTABLEKS                       R6 R5 K6 ["Style"]
       26 DUPTABLE                         R6 K7 [{"Key", "Text", "Style"}]
       27 LOADB                            R7 1
       28 SETTABLEKS                       R7 R6 K4 ["Key"]
       30 LOADK                            R9 K8 ["Dialog"]
       31 LOADK                            R10 K12 ["Ok"]
       32 NAMECALL                         R7 R2 K10 ["getText"]
       34 CALL                             R7 3 1
       35 SETTABLEKS                       R7 R6 K5 ["Text"]
       37 LOADK                            R7 K13 ["RoundPrimary"]
       38 SETTABLEKS                       R7 R6 K6 ["Style"]
       40 SETLIST                          R4 R5 2 [1]
       42 NAMECALL                         R5 R0 K14 ["makeRows"]
       44 CALL                             R5 1 1
       45 NAMECALL                         R6 R0 K15 ["findCommonAction"]
       47 CALL                             R6 1 1
       48 GETUPVAL                         R7 0
       49 GETTABLEKS                       R7 R7 K16 ["createElement"]
       51 GETUPVAL                         R8 1
       52 DUPTABLE                         R9 K25 [{"MinContentSize", "Size", "TextSize", "Resizable", "Buttons", "OnButtonPressed", "OnClose", "Title"}]
       53 GETIMPORT                        R10 K28 [Vector2.new]
       55 LOADN                            R11 88
       56 LOADN                            R12 250
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K17 ["MinContentSize"]
       60 GETIMPORT                        R10 K28 [Vector2.new]
       62 LOADN                            R11 88
       63 LOADN                            R12 250
       64 CALL                             R10 2 1
       65 SETTABLEKS                       R10 R9 K18 ["Size"]
       67 GETTABLEKS                       R10 R3 K29 ["textSize"]
       69 SETTABLEKS                       R10 R9 K19 ["TextSize"]
       71 LOADB                            R10 0
       72 SETTABLEKS                       R10 R9 K20 ["Resizable"]
       74 SETTABLEKS                       R4 R9 K21 ["Buttons"]
       76 NEWCLOSURE                       R10 P0
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R10 R9 K22 ["OnButtonPressed"]
       80 GETTABLEKS                       R10 R0 K30 ["onClose"]
       82 SETTABLEKS                       R10 R9 K23 ["OnClose"]
       84 LOADK                            R12 K24 ["Title"]
       85 LOADK                            R13 K31 ["MigrateAnimations"]
       86 NAMECALL                         R10 R2 K10 ["getText"]
       88 CALL                             R10 3 1
       89 SETTABLEKS                       R10 R9 K24 ["Title"]
       91 DUPTABLE                         R10 K35 [{"Layout", "Text", "Link", "Table"}]
       92 GETUPVAL                         R11 0
       93 GETTABLEKS                       R11 R11 K16 ["createElement"]
       95 LOADK                            R12 K36 ["UIListLayout"]
       96 DUPTABLE                         R13 K41 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
       97 GETIMPORT                        R14 K44 [Enum.FillDirection.Vertical]
       99 SETTABLEKS                       R14 R13 K37 ["FillDirection"]
      101 GETIMPORT                        R14 K46 [Enum.HorizontalAlignment.Left]
      103 SETTABLEKS                       R14 R13 K38 ["HorizontalAlignment"]
      105 GETIMPORT                        R14 K48 [Enum.SortOrder.LayoutOrder]
      107 SETTABLEKS                       R14 R13 K39 ["SortOrder"]
      109 GETIMPORT                        R14 K50 [Enum.VerticalAlignment.Top]
      111 SETTABLEKS                       R14 R13 K40 ["VerticalAlignment"]
      113 CALL                             R11 2 1
      114 SETTABLEKS                       R11 R10 K32 ["Layout"]
      116 GETUPVAL                         R11 0
      117 GETTABLEKS                       R11 R11 K16 ["createElement"]
      119 GETUPVAL                         R12 2
      120 DUPTABLE                         R13 K56 [{"Size", "TextXAlignment", "TextYAlignment", "Text", "TextColor3", "BackgroundTransparency", "TextWrapped", "LayoutOrder"}]
      121 GETIMPORT                        R14 K58 [UDim2.new]
      123 LOADN                            R15 1
      124 LOADN                            R16 0
      125 LOADN                            R17 0
      126 LOADN                            R18 75
      127 CALL                             R14 4 1
      128 SETTABLEKS                       R14 R13 K18 ["Size"]
      130 GETIMPORT                        R14 K59 [Enum.TextXAlignment.Left]
      132 SETTABLEKS                       R14 R13 K51 ["TextXAlignment"]
      134 GETIMPORT                        R14 K60 [Enum.TextYAlignment.Top]
      136 SETTABLEKS                       R14 R13 K52 ["TextYAlignment"]
      138 LOADK                            R16 K61 ["Migration"]
      139 LOADK                            R17 K31 ["MigrateAnimations"]
      140 NAMECALL                         R14 R2 K10 ["getText"]
      142 CALL                             R14 3 1
      143 SETTABLEKS                       R14 R13 K5 ["Text"]
      145 GETTABLEKS                       R14 R1 K62 ["TextColor"]
      147 SETTABLEKS                       R14 R13 K53 ["TextColor3"]
      149 LOADN                            R14 1
      150 SETTABLEKS                       R14 R13 K54 ["BackgroundTransparency"]
      152 LOADB                            R14 1
      153 SETTABLEKS                       R14 R13 K55 ["TextWrapped"]
      155 LOADN                            R14 1
      156 SETTABLEKS                       R14 R13 K47 ["LayoutOrder"]
      158 CALL                             R11 2 1
      159 SETTABLEKS                       R11 R10 K5 ["Text"]
      161 GETUPVAL                         R11 0
      162 GETTABLEKS                       R11 R11 K16 ["createElement"]
      164 GETUPVAL                         R12 3
      165 DUPTABLE                         R13 K64 [{"Size", "Text", "TextYAlignment", "OnClick", "LayoutOrder"}]
      166 GETIMPORT                        R14 K58 [UDim2.new]
      168 LOADN                            R15 1
      169 LOADN                            R16 0
      170 LOADN                            R17 0
      171 LOADN                            R18 30
      172 CALL                             R14 4 1
      173 SETTABLEKS                       R14 R13 K18 ["Size"]
      175 LOADK                            R16 K61 ["Migration"]
      176 LOADK                            R17 K65 ["LearnMore"]
      177 NAMECALL                         R14 R2 K10 ["getText"]
      179 CALL                             R14 3 1
      180 SETTABLEKS                       R14 R13 K5 ["Text"]
      182 GETIMPORT                        R14 K60 [Enum.TextYAlignment.Top]
      184 SETTABLEKS                       R14 R13 K52 ["TextYAlignment"]
      186 GETTABLEKS                       R14 R0 K66 ["onLearnMore"]
      188 SETTABLEKS                       R14 R13 K63 ["OnClick"]
      190 LOADN                            R14 2
      191 SETTABLEKS                       R14 R13 K47 ["LayoutOrder"]
      193 CALL                             R11 2 1
      194 SETTABLEKS                       R11 R10 K33 ["Link"]
      196 GETUPVAL                         R11 0
      197 GETTABLEKS                       R11 R11 K16 ["createElement"]
      199 GETUPVAL                         R12 4
      200 DUPTABLE                         R13 K75 [{"Size", "Scroll", "UseScale", "ClampSize", "Columns", "Rows", "CellComponent", "HeaderCellComponent", "ShowHeader", "LayoutOrder"}]
      201 GETIMPORT                        R14 K58 [UDim2.new]
      203 LOADN                            R15 1
      204 LOADN                            R16 0
      205 LOADN                            R17 1
      206 LOADN                            R18 151
      207 CALL                             R14 4 1
      208 SETTABLEKS                       R14 R13 K18 ["Size"]
      210 LOADB                            R14 1
      211 SETTABLEKS                       R14 R13 K67 ["Scroll"]
      213 LOADB                            R14 1
      214 SETTABLEKS                       R14 R13 K68 ["UseScale"]
      216 LOADB                            R14 1
      217 SETTABLEKS                       R14 R13 K69 ["ClampSize"]
      219 GETTABLEKS                       R14 R0 K76 ["columns"]
      221 SETTABLEKS                       R14 R13 K70 ["Columns"]
      223 SETTABLEKS                       R5 R13 K71 ["Rows"]
      225 NAMECALL                         R14 R0 K77 ["makeCell"]
      227 CALL                             R14 1 1
      228 SETTABLEKS                       R14 R13 K72 ["CellComponent"]
      230 MOVE                             R16 R6
      231 NAMECALL                         R14 R0 K78 ["makeHeader"]
      233 CALL                             R14 2 1
      234 SETTABLEKS                       R14 R13 K73 ["HeaderCellComponent"]
      236 LOADB                            R14 1
      237 SETTABLEKS                       R14 R13 K74 ["ShowHeader"]
      239 LOADN                            R14 3
      240 SETTABLEKS                       R14 R13 K47 ["LayoutOrder"]
      242 CALL                             R11 2 1
      243 SETTABLEKS                       R11 R10 K34 ["Table"]
      245 CALL                             R7 3 -1
      246 RETURN                           R7 -1

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
