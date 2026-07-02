PROTO_0:
        0 GETIMPORT                        R1 K1 [pairs]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 3
        4 FORGPREP_NEXT                    R1
        5 GETUPVAL                         R6 0
        6 LOADB                            R7 1
        7 SETTABLE                         R7 R6 R5
        8 NAMECALL                         R6 R5 K2 ["GetChildren"]
       10 CALL                             R6 1 1
       11 LENGTH                           R7 R6
       12 LOADN                            R8 0
       13 JUMPIFNOTLT                      R8 R7 ; [+4]
       15 GETUPVAL                         R7 1
       16 MOVE                             R8 R6
       17 CALL                             R7 1 0
       18 FORGLOOP                         R1 2 ; [-14]
       20 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NEWCLOSURE                       R2 P0
        3 CAPTURE                          VAL R1
        4 CAPTURE                          VAL R2
        5 MOVE                             R3 R2
        6 MOVE                             R4 R0
        7 CALL                             R3 1 0
        8 RETURN                           R1 1

PROTO_2:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["ImportName"]
        2 LOADNIL                          R2
        3 RETURN                           R1 2

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["SetChecked"]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 0
        7 GETTABLEKS                       R2 R1 K2 ["SelectedImportItem"]
        9 JUMPIFNOT                        R2 ; [+9]
       10 GETTABLEKS                       R2 R1 K2 ["SelectedImportItem"]
       12 NAMECALL                         R2 R2 K3 ["GetPreview"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R3 R1 K4 ["UpdatePreviewInstance"]
       17 MOVE                             R4 R2
       18 CALL                             R3 1 0
       19 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K2 ["props"]
        7 GETTABLEKS                       R2 R2 K3 ["SelectedImportItem"]
        9 JUMPIFNOTEQ                      R2 R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K2 ["props"]
       15 GETTABLEKS                       R2 R2 K4 ["SetSelectedImportItem"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 JUMPIFNOT                        R1 ; [+10]
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R2 R2 K2 ["props"]
       23 GETTABLEKS                       R2 R2 K5 ["UpdatePreviewInstance"]
       25 NAMECALL                         R3 R1 K6 ["GetPreview"]
       27 CALL                             R3 1 -1
       28 CALL                             R2 -1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R2 0
       31 GETTABLEKS                       R2 R2 K2 ["props"]
       33 GETTABLEKS                       R2 R2 K5 ["UpdatePreviewInstance"]
       35 LOADNIL                          R3
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K1 ["statusCounts"]
        5 GETTABLE                         R2 R3 R1
        6 JUMPIF                           R2 ; [+2]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K2 ["new"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 0
       14 MOVE                             R6 R2
       15 GETUPVAL                         R7 2
       16 GETTABLEKS                       R7 R7 K3 ["Error"]
       18 MOVE                             R8 R1
       19 GETTABLEKS                       R9 R0 K4 ["Expanded"]
       21 MOVE                             R10 R3
       22 NAMECALL                         R4 R4 K5 ["getStatusIcon"]
       24 CALL                             R4 6 1
       25 MOVE                             R5 R4
       26 JUMPIF                           R5 ; [+12]
       27 GETUPVAL                         R5 0
       28 MOVE                             R7 R2
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K6 ["Warning"]
       32 MOVE                             R9 R1
       33 GETTABLEKS                       R10 R0 K4 ["Expanded"]
       35 MOVE                             R11 R3
       36 NAMECALL                         R5 R5 K5 ["getStatusIcon"]
       38 CALL                             R5 6 1
       39 MOVE                             R4 R5
       40 JUMPIFNOT                        R4 ; [+2]
       41 LOADN                            R5 20
       42 JUMP                             ; [+1]
       43 LOADN                            R5 0
       44 GETUPVAL                         R6 3
       45 GETTABLEKS                       R6 R6 K7 ["createElement"]
       47 GETUPVAL                         R7 4
       48 DUPTABLE                         R8 K11 [{"Size", "LayoutOrder", "Layout"}]
       49 GETIMPORT                        R9 K13 [UDim2.new]
       51 LOADN                            R10 0
       52 MOVE                             R11 R5
       53 LOADN                            R12 0
       54 LOADN                            R13 20
       55 CALL                             R9 4 1
       56 SETTABLEKS                       R9 R8 K8 ["Size"]
       58 GETTABLEKS                       R9 R0 K9 ["LayoutOrder"]
       60 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       62 GETIMPORT                        R9 K17 [Enum.FillDirection.Horizontal]
       64 SETTABLEKS                       R9 R8 K10 ["Layout"]
       66 DUPTABLE                         R9 K19 [{"StatusCount"}]
       67 SETTABLEKS                       R4 R9 K18 ["StatusCount"]
       69 CALL                             R6 3 -1
       70 RETURN                           R6 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["applyImportDataToSession"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["props"]
       11 GETTABLEKS                       R2 R2 K3 ["Localization"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["props"]
       16 GETTABLEKS                       R3 R3 K4 ["PresetController"]
       18 NEWTABLE                         R4 0 1
       20 DUPTABLE                         R5 K7 [{"Text", "OnItemClicked"}]
       21 LOADK                            R8 K8 ["AssetImportTree"]
       22 LOADK                            R9 K9 ["RightClickApplyToAll1"]
       23 DUPTABLE                         R10 K11 [{"nodeName"}]
       24 GETTABLEKS                       R11 R0 K12 ["ImportName"]
       26 SETTABLEKS                       R11 R10 K10 ["nodeName"]
       28 NAMECALL                         R6 R2 K13 ["getText"]
       30 CALL                             R6 4 1
       31 SETTABLEKS                       R6 R5 K5 ["Text"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R6 R5 K6 ["OnItemClicked"]
       38 SETLIST                          R4 R5 1 [1]
       40 GETUPVAL                         R5 1
       41 MOVE                             R6 R1
       42 MOVE                             R7 R4
       43 CALL                             R5 2 0
       44 RETURN                           R0 0

PROTO_9:
        0 DUPCLOSURE                       R1 K0 [PROTO_2]
        1 SETTABLEKS                       R1 R0 K1 ["getChildren"]
        3 DUPCLOSURE                       R1 K2 [PROTO_3]
        4 SETTABLEKS                       R1 R0 K3 ["getContents"]
        6 NEWCLOSURE                       R1 P2
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K4 ["setChecked"]
       10 NEWCLOSURE                       R1 P3
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K5 ["SelectItem"]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K6 ["statusCounts"]
       18 NEWCLOSURE                       R1 P4
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U0
       21 CAPTURE                          UPVAL U1
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          UPVAL U3
       24 SETTABLEKS                       R1 R0 K7 ["afterItem"]
       26 NEWCLOSURE                       R1 P5
       27 CAPTURE                          VAL R0
       28 CAPTURE                          UPVAL U4
       29 SETTABLEKS                       R1 R0 K8 ["createContextMenu"]
       31 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 JUMPIFNOT                        R0 ; [+25]
        5 GETUPVAL                         R1 3
        6 GETTABLEKS                       R1 R1 K0 ["SelectItem"]
        8 NEWTABLE                         R2 1 0
       10 LOADB                            R3 1
       11 SETTABLE                         R3 R2 R0
       12 CALL                             R1 1 0
       13 NEWTABLE                         R1 0 0
       15 GETTABLEKS                       R2 R0 K1 ["Parent"]
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETTABLEKS                       R0 R0 K1 ["Parent"]
       20 LOADB                            R2 1
       21 SETTABLE                         R2 R1 R0
       22 JUMPBACK                         ; [-8]
       23 GETUPVAL                         R2 3
       24 GETTABLEKS                       R2 R2 K2 ["props"]
       26 GETTABLEKS                       R2 R2 K3 ["SetExpansion"]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_11:
        0 LOADNIL                          R6
        1 LOADNIL                          R7
        2 LOADNIL                          R8
        3 LOADNIL                          R9
        4 GETTABLEKS                       R10 R0 K0 ["props"]
        6 GETTABLEKS                       R10 R10 K1 ["Stylizer"]
        8 GETTABLEKS                       R11 R0 K0 ["props"]
       10 GETTABLEKS                       R11 R11 K2 ["Localization"]
       12 GETUPVAL                         R12 0
       13 GETTABLEKS                       R12 R12 K3 ["Error"]
       15 JUMPIFNOTEQ                      R2 R12 ; [+16]
       17 GETTABLEKS                       R12 R10 K4 ["ErrorIcon"]
       19 GETTABLEKS                       R6 R12 K5 ["Image"]
       21 LOADK                            R14 K6 ["AssetImportTree"]
       22 LOADK                            R15 K7 ["Errors"]
       23 NAMECALL                         R12 R11 K8 ["getText"]
       25 CALL                             R12 3 1
       26 MOVE                             R7 R12
       27 GETTABLEKS                       R8 R1 K9 ["errors"]
       29 GETTABLEKS                       R9 R1 K10 ["descErrors"]
       31 JUMP                             ; [+19]
       32 GETUPVAL                         R12 0
       33 GETTABLEKS                       R12 R12 K11 ["Warning"]
       35 JUMPIFNOTEQ                      R2 R12 ; [+15]
       37 GETTABLEKS                       R12 R10 K12 ["WarningIcon"]
       39 GETTABLEKS                       R6 R12 K5 ["Image"]
       41 LOADK                            R14 K6 ["AssetImportTree"]
       42 LOADK                            R15 K13 ["Warnings"]
       43 NAMECALL                         R12 R11 K8 ["getText"]
       45 CALL                             R12 3 1
       46 MOVE                             R7 R12
       47 GETTABLEKS                       R8 R1 K14 ["warnings"]
       49 GETTABLEKS                       R9 R1 K15 ["descWarnings"]
       51 LOADNIL                          R12
       52 LOADN                            R13 0
       53 JUMPIFNOTLT                      R13 R8 ; [+14]
       55 LOADK                            R15 K6 ["AssetImportTree"]
       56 LOADK                            R16 K16 ["Contains"]
       57 NAMECALL                         R13 R11 K8 ["getText"]
       59 CALL                             R13 3 1
       60 GETIMPORT                        R14 K19 [string.format]
       62 MOVE                             R15 R13
       63 MOVE                             R16 R8
       64 MOVE                             R17 R7
       65 CALL                             R14 3 1
       66 MOVE                             R12 R14
       67 JUMP                             ; [+19]
       68 LOADN                            R13 0
       69 JUMPIFNOTLT                      R13 R9 ; [+15]
       71 JUMPIF                           R4 ; [+13]
       72 LOADK                            R15 K6 ["AssetImportTree"]
       73 LOADK                            R16 K20 ["Descendants"]
       74 NAMECALL                         R13 R11 K8 ["getText"]
       76 CALL                             R13 3 1
       77 GETIMPORT                        R14 K19 [string.format]
       79 MOVE                             R15 R13
       80 MOVE                             R16 R9
       81 MOVE                             R17 R7
       82 CALL                             R14 3 1
       83 MOVE                             R12 R14
       84 JUMP                             ; [+2]
       85 LOADNIL                          R13
       86 RETURN                           R13 1
       87 GETUPVAL                         R13 1
       88 GETTABLEKS                       R13 R13 K21 ["createElement"]
       90 GETUPVAL                         R14 2
       91 DUPTABLE                         R15 K31 [{["LayoutOrder"], ["IconSize"] = 20, ["LeftIcon"], ["OnClick"], ["Style"] = "IconOnly", ["Size"], ["TooltipText"]}]
       92 NAMECALL                         R16 R5 K32 ["getNextOrder"]
       94 CALL                             R16 1 1
       95 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
       97 SETTABLEKS                       R6 R15 K25 ["LeftIcon"]
       99 NEWCLOSURE                       R16 P0
      100 CAPTURE                          UPVAL U3
      101 CAPTURE                          VAL R3
      102 CAPTURE                          VAL R2
      103 CAPTURE                          VAL R0
      104 SETTABLEKS                       R16 R15 K26 ["OnClick"]
      106 GETIMPORT                        R16 K35 [UDim2.new]
      108 LOADN                            R17 0
      109 LOADN                            R18 20
      110 LOADN                            R19 0
      111 LOADN                            R20 20
      112 CALL                             R16 4 1
      113 SETTABLEKS                       R16 R15 K29 ["Size"]
      115 SETTABLEKS                       R12 R15 K30 ["TooltipText"]
      117 CALL                             R13 2 -1
      118 RETURN                           R13 -1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createContextMenu"]
        3 GETTABLEKS                       R2 R0 K1 ["Item"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R2 K3 ["Sizes"]
        6 GETTABLEKS                       R4 R4 K4 ["ToolbarHeight"]
        8 ADDK                             R3 R4 K2 [1]
        9 GETTABLEKS                       R4 R1 K5 ["Checked"]
       11 JUMPIF                           R4 ; [+11]
       12 GETTABLEKS                       R5 R1 K6 ["Instances"]
       14 NEWTABLE                         R6 0 0
       16 NEWCLOSURE                       R7 P0
       17 CAPTURE                          VAL R6
       18 CAPTURE                          VAL R7
       19 MOVE                             R8 R7
       20 MOVE                             R9 R5
       21 CALL                             R8 1 0
       22 MOVE                             R4 R6
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K7 ["new"]
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R7 R1 K8 ["ImportTree"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R0 K9 ["statusCounts"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R0
       35 GETUPVAL                         R7 2
       36 GETTABLEKS                       R7 R7 K10 ["createElement"]
       38 GETUPVAL                         R8 3
       39 DUPTABLE                         R9 K12 [{"Layout"}]
       40 GETIMPORT                        R10 K16 [Enum.FillDirection.Vertical]
       42 SETTABLEKS                       R10 R9 K11 ["Layout"]
       44 DUPTABLE                         R10 K20 [{"Toolbar", "Separator", "TreeView"}]
       45 GETUPVAL                         R11 2
       46 GETTABLEKS                       R11 R11 K10 ["createElement"]
       48 GETUPVAL                         R12 4
       49 DUPTABLE                         R13 K25 [{"Expansion", "LayoutOrder", "OnExpansionChange", "Size"}]
       50 GETTABLEKS                       R14 R1 K21 ["Expansion"]
       52 SETTABLEKS                       R14 R13 K21 ["Expansion"]
       54 NAMECALL                         R14 R5 K26 ["getNextOrder"]
       56 CALL                             R14 1 1
       57 SETTABLEKS                       R14 R13 K22 ["LayoutOrder"]
       59 GETTABLEKS                       R14 R1 K27 ["SetExpansion"]
       61 SETTABLEKS                       R14 R13 K23 ["OnExpansionChange"]
       63 GETIMPORT                        R14 K29 [UDim2.new]
       65 LOADN                            R15 1
       66 LOADN                            R16 0
       67 LOADN                            R17 0
       68 MOVE                             R18 R3
       69 CALL                             R14 4 1
       70 SETTABLEKS                       R14 R13 K24 ["Size"]
       72 CALL                             R11 2 1
       73 SETTABLEKS                       R11 R10 K17 ["Toolbar"]
       75 GETUPVAL                         R11 2
       76 GETTABLEKS                       R11 R11 K10 ["createElement"]
       78 GETUPVAL                         R12 5
       79 DUPTABLE                         R13 K31 [{"DominantAxis", "LayoutOrder"}]
       80 GETIMPORT                        R14 K33 [Enum.DominantAxis.Width]
       82 SETTABLEKS                       R14 R13 K30 ["DominantAxis"]
       84 NAMECALL                         R14 R5 K26 ["getNextOrder"]
       86 CALL                             R14 1 1
       87 SETTABLEKS                       R14 R13 K22 ["LayoutOrder"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K18 ["Separator"]
       92 GETUPVAL                         R11 2
       93 GETTABLEKS                       R11 R11 K10 ["createElement"]
       95 GETUPVAL                         R12 6
       96 DUPTABLE                         R13 K44 [{["RootItems"], ["Selection"], ["Expansion"], ["Checked"], ["LayoutOrder"], ["Size"], ["OnSelectionChange"], ["OnExpansionChange"], ["OnCheck"], ["GetChildren"], ["GetContents"], ["ExpandableRoot"] = False, ["AfterItem"], ["OnRightClick"]}]
       97 GETTABLEKS                       R14 R1 K6 ["Instances"]
       99 JUMPIF                           R14 ; [+2]
      100 NEWTABLE                         R14 0 0
      102 SETTABLEKS                       R14 R13 K34 ["RootItems"]
      104 GETTABLEKS                       R15 R1 K45 ["SelectedImportItem"]
      106 JUMPIFNOT                        R15 ; [+7]
      107 NEWTABLE                         R14 1 0
      109 GETTABLEKS                       R15 R1 K45 ["SelectedImportItem"]
      111 LOADB                            R16 1
      112 SETTABLE                         R16 R14 R15
      113 JUMPIF                           R14 ; [+2]
      114 NEWTABLE                         R14 0 0
      116 SETTABLEKS                       R14 R13 K35 ["Selection"]
      118 GETTABLEKS                       R14 R1 K21 ["Expansion"]
      120 SETTABLEKS                       R14 R13 K21 ["Expansion"]
      122 SETTABLEKS                       R4 R13 K5 ["Checked"]
      124 NAMECALL                         R14 R5 K26 ["getNextOrder"]
      126 CALL                             R14 1 1
      127 SETTABLEKS                       R14 R13 K22 ["LayoutOrder"]
      129 GETIMPORT                        R14 K29 [UDim2.new]
      131 LOADN                            R15 1
      132 LOADN                            R16 0
      133 LOADN                            R17 1
      134 MINUS                            R18 R3
      135 CALL                             R14 4 1
      136 SETTABLEKS                       R14 R13 K24 ["Size"]
      138 GETTABLEKS                       R14 R0 K46 ["SelectItem"]
      140 SETTABLEKS                       R14 R13 K36 ["OnSelectionChange"]
      142 GETTABLEKS                       R14 R1 K27 ["SetExpansion"]
      144 SETTABLEKS                       R14 R13 K23 ["OnExpansionChange"]
      146 GETTABLEKS                       R14 R0 K47 ["setChecked"]
      148 SETTABLEKS                       R14 R13 K37 ["OnCheck"]
      150 GETTABLEKS                       R14 R0 K48 ["getChildren"]
      152 SETTABLEKS                       R14 R13 K38 ["GetChildren"]
      154 GETTABLEKS                       R14 R0 K49 ["getContents"]
      156 SETTABLEKS                       R14 R13 K39 ["GetContents"]
      158 GETTABLEKS                       R14 R0 K50 ["afterItem"]
      160 SETTABLEKS                       R14 R13 K42 ["AfterItem"]
      162 SETTABLEKS                       R6 R13 K43 ["OnRightClick"]
      164 CALL                             R11 2 1
      165 SETTABLEKS                       R11 R10 K19 ["TreeView"]
      167 CALL                             R7 3 -1
      168 RETURN                           R7 -1

PROTO_14:
        0 DUPTABLE                         R1 K5 [{"AssetImportSession", "ImportTree", "SelectedImportItem", "Expansion", "Checked"}]
        1 GETTABLEKS                       R2 R0 K6 ["Preview"]
        3 GETTABLEKS                       R2 R2 K7 ["assetImportSession"]
        5 SETTABLEKS                       R2 R1 K0 ["AssetImportSession"]
        7 GETTABLEKS                       R2 R0 K6 ["Preview"]
        9 GETTABLEKS                       R2 R2 K8 ["importTree"]
       11 SETTABLEKS                       R2 R1 K1 ["ImportTree"]
       13 GETTABLEKS                       R2 R0 K6 ["Preview"]
       15 GETTABLEKS                       R2 R2 K9 ["selectedImportItem"]
       17 SETTABLEKS                       R2 R1 K2 ["SelectedImportItem"]
       19 GETTABLEKS                       R2 R0 K6 ["Preview"]
       21 GETTABLEKS                       R2 R2 K10 ["importDataExpansion"]
       23 JUMPIF                           R2 ; [+2]
       24 NEWTABLE                         R2 0 0
       26 SETTABLEKS                       R2 R1 K3 ["Expansion"]
       28 GETTABLEKS                       R2 R0 K6 ["Preview"]
       30 GETTABLEKS                       R2 R2 K11 ["importDataChecked"]
       32 JUMPIF                           R2 ; [+2]
       33 NEWTABLE                         R2 0 0
       35 SETTABLEKS                       R2 R1 K4 ["Checked"]
       37 RETURN                           R1 1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_19:
        0 DUPTABLE                         R1 K4 [{"SetSelectedImportItem", "SetExpansion", "SetChecked", "UpdatePreviewInstance"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["SetSelectedImportItem"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetExpansion"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetChecked"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["UpdatePreviewInstance"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["ContextServices"]
       30 GETTABLEKS                       R5 R4 K11 ["withContext"]
       32 GETTABLEKS                       R6 R4 K12 ["Localization"]
       34 GETTABLEKS                       R7 R4 K13 ["Stylizer"]
       36 GETTABLEKS                       R8 R1 K14 ["UI"]
       38 GETTABLEKS                       R9 R8 K15 ["CheckboxTreeView"]
       40 GETTABLEKS                       R10 R8 K16 ["Pane"]
       42 GETTABLEKS                       R11 R8 K17 ["Separator"]
       44 GETTABLEKS                       R12 R8 K18 ["showContextMenu"]
       46 GETTABLEKS                       R13 R8 K19 ["IconButton"]
       48 GETTABLEKS                       R14 R1 K20 ["Util"]
       50 GETTABLEKS                       R15 R14 K21 ["LayoutOrderIterator"]
       52 GETIMPORT                        R16 K5 [require]
       54 GETTABLEKS                       R17 R0 K22 ["Src"]
       56 GETTABLEKS                       R17 R17 K23 ["Components"]
       58 GETTABLEKS                       R17 R17 K24 ["TreeViewToolbar"]
       60 CALL                             R16 1 1
       61 GETIMPORT                        R17 K5 [require]
       63 GETTABLEKS                       R18 R0 K22 ["Src"]
       65 GETTABLEKS                       R18 R18 K25 ["Actions"]
       67 GETTABLEKS                       R18 R18 K26 ["SetSelectedImportItem"]
       69 CALL                             R17 1 1
       70 GETIMPORT                        R18 K5 [require]
       72 GETTABLEKS                       R19 R0 K22 ["Src"]
       74 GETTABLEKS                       R19 R19 K25 ["Actions"]
       76 GETTABLEKS                       R19 R19 K27 ["SetTreeExpansion"]
       78 CALL                             R18 1 1
       79 GETIMPORT                        R19 K5 [require]
       81 GETTABLEKS                       R20 R0 K22 ["Src"]
       83 GETTABLEKS                       R20 R20 K28 ["Thunks"]
       85 GETTABLEKS                       R20 R20 K29 ["UpdateChecked"]
       87 CALL                             R19 1 1
       88 GETIMPORT                        R20 K5 [require]
       90 GETTABLEKS                       R21 R0 K22 ["Src"]
       92 GETTABLEKS                       R21 R21 K28 ["Thunks"]
       94 GETTABLEKS                       R21 R21 K30 ["UpdatePreviewInstance"]
       96 CALL                             R20 1 1
       97 GETIMPORT                        R21 K5 [require]
       99 GETTABLEKS                       R22 R0 K22 ["Src"]
      101 GETTABLEKS                       R22 R22 K31 ["Resources"]
      103 GETTABLEKS                       R22 R22 K32 ["StatusLevel"]
      105 CALL                             R21 1 1
      106 GETIMPORT                        R22 K5 [require]
      108 GETTABLEKS                       R23 R0 K22 ["Src"]
      110 GETTABLEKS                       R23 R23 K33 ["Utility"]
      112 GETTABLEKS                       R23 R23 K34 ["Status"]
      114 GETTABLEKS                       R23 R23 K35 ["countStatusLevelsForTree"]
      116 CALL                             R22 1 1
      117 GETIMPORT                        R23 K5 [require]
      119 GETTABLEKS                       R24 R0 K22 ["Src"]
      121 GETTABLEKS                       R24 R24 K33 ["Utility"]
      123 GETTABLEKS                       R24 R24 K34 ["Status"]
      125 GETTABLEKS                       R24 R24 K36 ["getFirstDescendantWithStatus"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K5 [require]
      130 GETTABLEKS                       R25 R0 K22 ["Src"]
      132 GETTABLEKS                       R25 R25 K37 ["Controllers"]
      134 GETTABLEKS                       R25 R25 K38 ["PresetController"]
      136 CALL                             R24 1 1
      137 GETTABLEKS                       R25 R2 K39 ["PureComponent"]
      139 LOADK                            R27 K40 ["AssetImportTree"]
      140 NAMECALL                         R25 R25 K41 ["extend"]
      142 CALL                             R25 2 1
      143 DUPCLOSURE                       R26 K42 [PROTO_1]
      144 DUPCLOSURE                       R27 K43 [PROTO_9]
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R21
      147 CAPTURE                          VAL R2
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R12
      150 SETTABLEKS                       R27 R25 K44 ["init"]
      152 DUPCLOSURE                       R27 K45 [PROTO_11]
      153 CAPTURE                          VAL R21
      154 CAPTURE                          VAL R2
      155 CAPTURE                          VAL R13
      156 CAPTURE                          VAL R23
      157 SETTABLEKS                       R27 R25 K46 ["getStatusIcon"]
      159 DUPCLOSURE                       R27 K47 [PROTO_13]
      160 CAPTURE                          VAL R15
      161 CAPTURE                          VAL R22
      162 CAPTURE                          VAL R2
      163 CAPTURE                          VAL R10
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R9
      167 SETTABLEKS                       R27 R25 K48 ["render"]
      169 MOVE                             R27 R5
      170 DUPTABLE                         R28 K50 [{"Localization", "Stylizer", "Plugin", "PresetController"}]
      171 SETTABLEKS                       R6 R28 K12 ["Localization"]
      173 SETTABLEKS                       R7 R28 K13 ["Stylizer"]
      175 GETTABLEKS                       R29 R4 K49 ["Plugin"]
      177 SETTABLEKS                       R29 R28 K49 ["Plugin"]
      179 SETTABLEKS                       R24 R28 K38 ["PresetController"]
      181 CALL                             R27 1 1
      182 MOVE                             R28 R25
      183 CALL                             R27 1 1
      184 MOVE                             R25 R27
      185 DUPCLOSURE                       R27 K51 [PROTO_14]
      186 DUPCLOSURE                       R28 K52 [PROTO_19]
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R18
      189 CAPTURE                          VAL R19
      190 CAPTURE                          VAL R20
      191 GETTABLEKS                       R29 R3 K53 ["connect"]
      193 MOVE                             R30 R27
      194 MOVE                             R31 R28
      195 CALL                             R29 2 1
      196 MOVE                             R30 R25
      197 CALL                             R29 1 -1
      198 RETURN                           R29 -1
