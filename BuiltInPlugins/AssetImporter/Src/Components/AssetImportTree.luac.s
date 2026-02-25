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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["RunningUnderCLI"]
        3 CALL                             R1 0 1
        4 NOT                              R0 R1
        5 RETURN                           R0 1

PROTO_3:
        0 DUPCLOSURE                       R0 K0 [PROTO_2]
        1 CAPTURE                          UPVAL U0
        2 NEWTABLE                         R1 0 1
        4 DUPTABLE                         R2 K3 [{"Name", "ShouldShow"}]
        5 LOADK                            R3 K4 ["ApplyToAllCallout"]
        6 SETTABLEKS                       R3 R2 K1 ["Name"]
        8 SETTABLEKS                       R0 R2 K2 ["ShouldShow"]
       10 SETLIST                          R1 R2 1 [1]
       12 RETURN                           R1 1

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["GetChildren"]
        2 CALL                             R1 1 -1
        3 RETURN                           R1 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["ImportName"]
        2 LOADNIL                          R2
        3 RETURN                           R1 2

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
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

PROTO_7:
        0 GETIMPORT                        R1 K1 [next]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["props"]
        7 GETTABLEKS                       R2 R3 K3 ["SelectedImportItem"]
        9 JUMPIFNOTEQ                      R2 R1 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K2 ["props"]
       15 GETTABLEKS                       R2 R3 K4 ["SetSelectedImportItem"]
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 JUMPIFNOT                        R1 ; [+10]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K2 ["props"]
       23 GETTABLEKS                       R2 R3 K5 ["UpdatePreviewInstance"]
       25 NAMECALL                         R3 R1 K6 ["GetPreview"]
       27 CALL                             R3 1 -1
       28 CALL                             R2 -1 0
       29 RETURN                           R0 0
       30 GETUPVAL                         R4 0
       31 GETTABLEKS                       R3 R4 K2 ["props"]
       33 GETTABLEKS                       R2 R3 K5 ["UpdatePreviewInstance"]
       35 LOADNIL                          R3
       36 CALL                             R2 1 0
       37 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["statusCounts"]
        5 GETTABLE                         R2 R3 R1
        6 JUMPIF                           R2 ; [+2]
        7 LOADNIL                          R3
        8 RETURN                           R3 1
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R3 R4 K2 ["new"]
       12 CALL                             R3 0 1
       13 GETUPVAL                         R4 0
       14 MOVE                             R6 R2
       15 GETUPVAL                         R8 2
       16 GETTABLEKS                       R7 R8 K3 ["Error"]
       18 MOVE                             R8 R1
       19 GETTABLEKS                       R9 R0 K4 ["Expanded"]
       21 MOVE                             R10 R3
       22 NAMECALL                         R4 R4 K5 ["getStatusIcon"]
       24 CALL                             R4 6 1
       25 MOVE                             R5 R4
       26 JUMPIF                           R5 ; [+12]
       27 GETUPVAL                         R5 0
       28 MOVE                             R7 R2
       29 GETUPVAL                         R9 2
       30 GETTABLEKS                       R8 R9 K6 ["Warning"]
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
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R6 R7 K7 ["createElement"]
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

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["applyImportDataToSession"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["Plugin"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K0 ["props"]
       11 GETTABLEKS                       R2 R3 K3 ["Localization"]
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K0 ["props"]
       16 GETTABLEKS                       R3 R4 K4 ["PresetController"]
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

PROTO_11:
        0 DUPCLOSURE                       R1 K0 [PROTO_4]
        1 SETTABLEKS                       R1 R0 K1 ["getChildren"]
        3 DUPCLOSURE                       R1 K2 [PROTO_5]
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

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 1
        4 JUMPIFNOT                        R0 ; [+25]
        5 GETUPVAL                         R2 3
        6 GETTABLEKS                       R1 R2 K0 ["SelectItem"]
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
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R3 R4 K2 ["props"]
       26 GETTABLEKS                       R2 R3 K3 ["SetExpansion"]
       28 MOVE                             R3 R1
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_13:
        0 LOADNIL                          R6
        1 LOADNIL                          R7
        2 LOADNIL                          R8
        3 LOADNIL                          R9
        4 GETTABLEKS                       R11 R0 K0 ["props"]
        6 GETTABLEKS                       R10 R11 K1 ["Stylizer"]
        8 GETTABLEKS                       R12 R0 K0 ["props"]
       10 GETTABLEKS                       R11 R12 K2 ["Localization"]
       12 GETUPVAL                         R13 0
       13 GETTABLEKS                       R12 R13 K3 ["Error"]
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
       32 GETUPVAL                         R13 0
       33 GETTABLEKS                       R12 R13 K11 ["Warning"]
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
       87 GETUPVAL                         R14 1
       88 GETTABLEKS                       R13 R14 K21 ["createElement"]
       90 GETUPVAL                         R14 2
       91 DUPTABLE                         R15 K29 [{"LayoutOrder", "IconSize", "LeftIcon", "OnClick", "Style", "Size", "TooltipText"}]
       92 NAMECALL                         R16 R5 K30 ["getNextOrder"]
       94 CALL                             R16 1 1
       95 SETTABLEKS                       R16 R15 K22 ["LayoutOrder"]
       97 LOADN                            R16 20
       98 SETTABLEKS                       R16 R15 K23 ["IconSize"]
      100 SETTABLEKS                       R6 R15 K24 ["LeftIcon"]
      102 NEWCLOSURE                       R16 P0
      103 CAPTURE                          UPVAL U3
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R16 R15 K25 ["OnClick"]
      109 LOADK                            R16 K31 ["IconOnly"]
      110 SETTABLEKS                       R16 R15 K26 ["Style"]
      112 GETIMPORT                        R16 K34 [UDim2.new]
      114 LOADN                            R17 0
      115 LOADN                            R18 20
      116 LOADN                            R19 0
      117 LOADN                            R20 20
      118 CALL                             R16 4 1
      119 SETTABLEKS                       R16 R15 K27 ["Size"]
      121 SETTABLEKS                       R12 R15 K28 ["TooltipText"]
      123 CALL                             R13 2 -1
      124 RETURN                           R13 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createContextMenu"]
        3 GETTABLEKS                       R2 R0 K1 ["Item"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R5 R2 K3 ["Sizes"]
        6 GETTABLEKS                       R4 R5 K4 ["ToolbarHeight"]
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
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K7 ["new"]
       26 CALL                             R5 0 1
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R7 R1 K8 ["ImportTree"]
       30 CALL                             R6 1 1
       31 SETTABLEKS                       R6 R0 K9 ["statusCounts"]
       33 NEWCLOSURE                       R6 P1
       34 CAPTURE                          VAL R0
       35 GETUPVAL                         R7 2
       36 GETUPVAL                         R8 3
       37 CALL                             R8 0 1
       38 LOADK                            R9 K10 ["AssetImportTree"]
       39 GETTABLEKS                       R10 R1 K11 ["AssetImportSession"]
       41 CALL                             R7 3 1
       42 GETUPVAL                         R9 4
       43 GETTABLEKS                       R8 R9 K12 ["createElement"]
       45 GETUPVAL                         R9 5
       46 DUPTABLE                         R10 K14 [{"Layout"}]
       47 GETIMPORT                        R11 K18 [Enum.FillDirection.Vertical]
       49 SETTABLEKS                       R11 R10 K13 ["Layout"]
       51 DUPTABLE                         R11 K23 [{"Toolbar", "Callout", "Separator", "TreeView"}]
       52 GETUPVAL                         R13 4
       53 GETTABLEKS                       R12 R13 K12 ["createElement"]
       55 GETUPVAL                         R13 6
       56 DUPTABLE                         R14 K28 [{"Expansion", "LayoutOrder", "OnExpansionChange", "Size"}]
       57 GETTABLEKS                       R15 R1 K24 ["Expansion"]
       59 SETTABLEKS                       R15 R14 K24 ["Expansion"]
       61 NAMECALL                         R15 R5 K29 ["getNextOrder"]
       63 CALL                             R15 1 1
       64 SETTABLEKS                       R15 R14 K25 ["LayoutOrder"]
       66 GETTABLEKS                       R15 R1 K30 ["SetExpansion"]
       68 SETTABLEKS                       R15 R14 K26 ["OnExpansionChange"]
       70 GETIMPORT                        R15 K32 [UDim2.new]
       72 LOADN                            R16 1
       73 LOADN                            R17 0
       74 LOADN                            R18 0
       75 MOVE                             R19 R3
       76 CALL                             R15 4 1
       77 SETTABLEKS                       R15 R14 K27 ["Size"]
       79 CALL                             R12 2 1
       80 SETTABLEKS                       R12 R11 K19 ["Toolbar"]
       82 GETUPVAL                         R13 4
       83 GETTABLEKS                       R12 R13 K12 ["createElement"]
       85 GETUPVAL                         R13 5
       86 DUPTABLE                         R14 K33 [{"LayoutOrder", "Size"}]
       87 NAMECALL                         R15 R5 K29 ["getNextOrder"]
       89 CALL                             R15 1 1
       90 SETTABLEKS                       R15 R14 K25 ["LayoutOrder"]
       92 GETIMPORT                        R15 K35 [UDim2.fromScale]
       94 LOADN                            R16 1
       95 LOADN                            R17 0
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K27 ["Size"]
       99 MOVE                             R15 R7
      100 CALL                             R12 3 1
      101 SETTABLEKS                       R12 R11 K20 ["Callout"]
      103 GETUPVAL                         R13 4
      104 GETTABLEKS                       R12 R13 K12 ["createElement"]
      106 GETUPVAL                         R13 7
      107 DUPTABLE                         R14 K37 [{"DominantAxis", "LayoutOrder"}]
      108 GETIMPORT                        R15 K39 [Enum.DominantAxis.Width]
      110 SETTABLEKS                       R15 R14 K36 ["DominantAxis"]
      112 NAMECALL                         R15 R5 K29 ["getNextOrder"]
      114 CALL                             R15 1 1
      115 SETTABLEKS                       R15 R14 K25 ["LayoutOrder"]
      117 CALL                             R12 2 1
      118 SETTABLEKS                       R12 R11 K21 ["Separator"]
      120 GETUPVAL                         R13 4
      121 GETTABLEKS                       R12 R13 K12 ["createElement"]
      123 GETUPVAL                         R13 8
      124 DUPTABLE                         R14 K49 [{"RootItems", "Selection", "Expansion", "Checked", "LayoutOrder", "Size", "OnSelectionChange", "OnExpansionChange", "OnCheck", "GetChildren", "GetContents", "ExpandableRoot", "AfterItem", "OnRightClick"}]
      125 GETTABLEKS                       R15 R1 K6 ["Instances"]
      127 JUMPIF                           R15 ; [+2]
      128 NEWTABLE                         R15 0 0
      130 SETTABLEKS                       R15 R14 K40 ["RootItems"]
      132 GETTABLEKS                       R16 R1 K50 ["SelectedImportItem"]
      134 JUMPIFNOT                        R16 ; [+7]
      135 NEWTABLE                         R15 1 0
      137 GETTABLEKS                       R16 R1 K50 ["SelectedImportItem"]
      139 LOADB                            R17 1
      140 SETTABLE                         R17 R15 R16
      141 JUMPIF                           R15 ; [+2]
      142 NEWTABLE                         R15 0 0
      144 SETTABLEKS                       R15 R14 K41 ["Selection"]
      146 GETTABLEKS                       R15 R1 K24 ["Expansion"]
      148 SETTABLEKS                       R15 R14 K24 ["Expansion"]
      150 SETTABLEKS                       R4 R14 K5 ["Checked"]
      152 NAMECALL                         R15 R5 K29 ["getNextOrder"]
      154 CALL                             R15 1 1
      155 SETTABLEKS                       R15 R14 K25 ["LayoutOrder"]
      157 GETIMPORT                        R15 K32 [UDim2.new]
      159 LOADN                            R16 1
      160 LOADN                            R17 0
      161 LOADN                            R18 1
      162 MINUS                            R19 R3
      163 CALL                             R15 4 1
      164 SETTABLEKS                       R15 R14 K27 ["Size"]
      166 GETTABLEKS                       R15 R0 K51 ["SelectItem"]
      168 SETTABLEKS                       R15 R14 K42 ["OnSelectionChange"]
      170 GETTABLEKS                       R15 R1 K30 ["SetExpansion"]
      172 SETTABLEKS                       R15 R14 K26 ["OnExpansionChange"]
      174 GETTABLEKS                       R15 R0 K52 ["setChecked"]
      176 SETTABLEKS                       R15 R14 K43 ["OnCheck"]
      178 GETTABLEKS                       R15 R0 K53 ["getChildren"]
      180 SETTABLEKS                       R15 R14 K44 ["GetChildren"]
      182 GETTABLEKS                       R15 R0 K54 ["getContents"]
      184 SETTABLEKS                       R15 R14 K45 ["GetContents"]
      186 LOADB                            R15 0
      187 SETTABLEKS                       R15 R14 K46 ["ExpandableRoot"]
      189 GETTABLEKS                       R15 R0 K55 ["afterItem"]
      191 SETTABLEKS                       R15 R14 K47 ["AfterItem"]
      193 SETTABLEKS                       R6 R14 K48 ["OnRightClick"]
      195 CALL                             R12 2 1
      196 SETTABLEKS                       R12 R11 K22 ["TreeView"]
      198 CALL                             R8 3 -1
      199 RETURN                           R8 -1

PROTO_16:
        0 DUPTABLE                         R1 K5 [{"AssetImportSession", "ImportTree", "SelectedImportItem", "Expansion", "Checked"}]
        1 GETTABLEKS                       R3 R0 K6 ["Preview"]
        3 GETTABLEKS                       R2 R3 K7 ["assetImportSession"]
        5 SETTABLEKS                       R2 R1 K0 ["AssetImportSession"]
        7 GETTABLEKS                       R3 R0 K6 ["Preview"]
        9 GETTABLEKS                       R2 R3 K8 ["importTree"]
       11 SETTABLEKS                       R2 R1 K1 ["ImportTree"]
       13 GETTABLEKS                       R3 R0 K6 ["Preview"]
       15 GETTABLEKS                       R2 R3 K9 ["selectedImportItem"]
       17 SETTABLEKS                       R2 R1 K2 ["SelectedImportItem"]
       19 GETTABLEKS                       R3 R0 K6 ["Preview"]
       21 GETTABLEKS                       R2 R3 K10 ["importDataExpansion"]
       23 JUMPIF                           R2 ; [+2]
       24 NEWTABLE                         R2 0 0
       26 SETTABLEKS                       R2 R1 K3 ["Expansion"]
       28 GETTABLEKS                       R3 R0 K6 ["Preview"]
       30 GETTABLEKS                       R2 R3 K11 ["importDataChecked"]
       32 JUMPIF                           R2 ; [+2]
       33 NEWTABLE                         R2 0 0
       35 SETTABLEKS                       R2 R1 K4 ["Checked"]
       37 RETURN                           R1 1

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
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_21:
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["RoactRodux"]
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
       54 GETTABLEKS                       R19 R0 K22 ["Src"]
       56 GETTABLEKS                       R18 R19 K23 ["Components"]
       58 GETTABLEKS                       R17 R18 K24 ["TreeViewToolbar"]
       60 CALL                             R16 1 1
       61 GETIMPORT                        R17 K5 [require]
       63 GETTABLEKS                       R20 R0 K22 ["Src"]
       65 GETTABLEKS                       R19 R20 K25 ["Actions"]
       67 GETTABLEKS                       R18 R19 K26 ["SetSelectedImportItem"]
       69 CALL                             R17 1 1
       70 GETIMPORT                        R18 K5 [require]
       72 GETTABLEKS                       R21 R0 K22 ["Src"]
       74 GETTABLEKS                       R20 R21 K25 ["Actions"]
       76 GETTABLEKS                       R19 R20 K27 ["SetTreeExpansion"]
       78 CALL                             R18 1 1
       79 GETIMPORT                        R19 K5 [require]
       81 GETTABLEKS                       R22 R0 K22 ["Src"]
       83 GETTABLEKS                       R21 R22 K28 ["Thunks"]
       85 GETTABLEKS                       R20 R21 K29 ["UpdateChecked"]
       87 CALL                             R19 1 1
       88 GETIMPORT                        R20 K5 [require]
       90 GETTABLEKS                       R23 R0 K22 ["Src"]
       92 GETTABLEKS                       R22 R23 K28 ["Thunks"]
       94 GETTABLEKS                       R21 R22 K30 ["UpdatePreviewInstance"]
       96 CALL                             R20 1 1
       97 GETIMPORT                        R21 K5 [require]
       99 GETTABLEKS                       R24 R0 K22 ["Src"]
      101 GETTABLEKS                       R23 R24 K31 ["Resources"]
      103 GETTABLEKS                       R22 R23 K32 ["StatusLevel"]
      105 CALL                             R21 1 1
      106 GETIMPORT                        R22 K5 [require]
      108 GETTABLEKS                       R26 R0 K22 ["Src"]
      110 GETTABLEKS                       R25 R26 K33 ["Utility"]
      112 GETTABLEKS                       R24 R25 K34 ["Status"]
      114 GETTABLEKS                       R23 R24 K35 ["countStatusLevelsForTree"]
      116 CALL                             R22 1 1
      117 GETIMPORT                        R23 K5 [require]
      119 GETTABLEKS                       R27 R0 K22 ["Src"]
      121 GETTABLEKS                       R26 R27 K33 ["Utility"]
      123 GETTABLEKS                       R25 R26 K34 ["Status"]
      125 GETTABLEKS                       R24 R25 K36 ["getFirstDescendantWithStatus"]
      127 CALL                             R23 1 1
      128 GETIMPORT                        R24 K5 [require]
      130 GETTABLEKS                       R27 R0 K22 ["Src"]
      132 GETTABLEKS                       R26 R27 K37 ["Controllers"]
      134 GETTABLEKS                       R25 R26 K38 ["PresetController"]
      136 CALL                             R24 1 1
      137 GETIMPORT                        R25 K5 [require]
      139 GETTABLEKS                       R28 R0 K22 ["Src"]
      141 GETTABLEKS                       R27 R28 K33 ["Utility"]
      143 GETTABLEKS                       R26 R27 K39 ["DebugFlags"]
      145 CALL                             R25 1 1
      146 GETIMPORT                        R26 K5 [require]
      148 GETTABLEKS                       R29 R0 K22 ["Src"]
      150 GETTABLEKS                       R28 R29 K33 ["Utility"]
      152 GETTABLEKS                       R27 R28 K40 ["createCalloutComponents"]
      154 CALL                             R26 1 1
      155 GETTABLEKS                       R27 R2 K41 ["PureComponent"]
      157 LOADK                            R29 K42 ["AssetImportTree"]
      158 NAMECALL                         R27 R27 K43 ["extend"]
      160 CALL                             R27 2 1
      161 DUPCLOSURE                       R28 K44 [PROTO_1]
      162 DUPCLOSURE                       R29 K45 [PROTO_3]
      163 CAPTURE                          VAL R25
      164 DUPCLOSURE                       R30 K46 [PROTO_11]
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R21
      167 CAPTURE                          VAL R2
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R12
      170 SETTABLEKS                       R30 R27 K47 ["init"]
      172 DUPCLOSURE                       R30 K48 [PROTO_13]
      173 CAPTURE                          VAL R21
      174 CAPTURE                          VAL R2
      175 CAPTURE                          VAL R13
      176 CAPTURE                          VAL R23
      177 SETTABLEKS                       R30 R27 K49 ["getStatusIcon"]
      179 DUPCLOSURE                       R30 K50 [PROTO_15]
      180 CAPTURE                          VAL R15
      181 CAPTURE                          VAL R22
      182 CAPTURE                          VAL R26
      183 CAPTURE                          VAL R29
      184 CAPTURE                          VAL R2
      185 CAPTURE                          VAL R10
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R11
      188 CAPTURE                          VAL R9
      189 SETTABLEKS                       R30 R27 K51 ["render"]
      191 MOVE                             R30 R5
      192 DUPTABLE                         R31 K53 [{"Localization", "Stylizer", "Plugin", "PresetController"}]
      193 SETTABLEKS                       R6 R31 K12 ["Localization"]
      195 SETTABLEKS                       R7 R31 K13 ["Stylizer"]
      197 GETTABLEKS                       R32 R4 K52 ["Plugin"]
      199 SETTABLEKS                       R32 R31 K52 ["Plugin"]
      201 SETTABLEKS                       R24 R31 K38 ["PresetController"]
      203 CALL                             R30 1 1
      204 MOVE                             R31 R27
      205 CALL                             R30 1 1
      206 MOVE                             R27 R30
      207 DUPCLOSURE                       R30 K54 [PROTO_16]
      208 DUPCLOSURE                       R31 K55 [PROTO_21]
      209 CAPTURE                          VAL R17
      210 CAPTURE                          VAL R18
      211 CAPTURE                          VAL R19
      212 CAPTURE                          VAL R20
      213 GETTABLEKS                       R32 R3 K56 ["connect"]
      215 MOVE                             R33 R30
      216 MOVE                             R34 R31
      217 CALL                             R32 2 1
      218 MOVE                             R33 R27
      219 CALL                             R32 1 -1
      220 RETURN                           R32 -1
