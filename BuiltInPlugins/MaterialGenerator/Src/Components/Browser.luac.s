PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+9]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["Material"]
        6 JUMPIFNOTEQ                      R0 R1 ; [+4]
        8 GETUPVAL                         R0 2
        9 LOADNIL                          R1
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 0
       12 JUMPIFNOT                        R0 ; [+5]
       13 GETUPVAL                         R0 3
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K0 ["Material"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 CALL                             R0 0 0
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Plane"]
        3 GETTABLEKS                       R0 R0 K1 ["rawValue"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["setSetting"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Sphere"]
        3 GETTABLEKS                       R0 R0 K1 ["rawValue"]
        5 CALL                             R0 0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K2 ["setSetting"]
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R0
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R0 2 0
        4 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 5
        2 DUPTABLE                         R2 K3 [{"Text", "Enabled", "OnItemClicked"}]
        3 GETUPVAL                         R3 0
        4 LOADK                            R5 K4 ["Browser"]
        5 LOADK                            R6 K5 ["Remove"]
        6 NAMECALL                         R3 R3 K6 ["getText"]
        8 CALL                             R3 3 1
        9 SETTABLEKS                       R3 R2 K0 ["Text"]
       11 JUMPIFNOTEQKNIL                  R0 ; [+2]
       13 LOADB                            R3 0 +1
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K1 ["Enabled"]
       17 NEWCLOSURE                       R3 P0
       18 CAPTURE                          VAL R0
       19 CAPTURE                          UPVAL U1
       20 CAPTURE                          UPVAL U2
       21 CAPTURE                          UPVAL U3
       22 SETTABLEKS                       R3 R2 K2 ["OnItemClicked"]
       24 DUPTABLE                         R3 K3 [{"Text", "Enabled", "OnItemClicked"}]
       25 GETUPVAL                         R4 0
       26 LOADK                            R6 K4 ["Browser"]
       27 LOADK                            R7 K7 ["RemoveAll"]
       28 NAMECALL                         R4 R4 K6 ["getText"]
       30 CALL                             R4 3 1
       31 SETTABLEKS                       R4 R3 K0 ["Text"]
       33 GETUPVAL                         R6 4
       34 LENGTH                           R5 R6
       35 LOADN                            R6 0
       36 JUMPIFLT                         R6 R5 ; [+2]
       38 LOADB                            R4 0 +1
       39 LOADB                            R4 1
       40 SETTABLEKS                       R4 R3 K1 ["Enabled"]
       42 NEWCLOSURE                       R4 P1
       43 CAPTURE                          UPVAL U2
       44 CAPTURE                          UPVAL U5
       45 SETTABLEKS                       R4 R3 K2 ["OnItemClicked"]
       47 DUPTABLE                         R4 K10 [{["ShowSeparator"] = True}]
       48 DUPTABLE                         R5 K12 [{["Checked"], [2], ["Enabled"] = True, ["OnItemClicked"]}]
       49 GETUPVAL                         R7 6
       50 GETUPVAL                         R8 7
       51 GETTABLEKS                       R8 R8 K13 ["Plane"]
       53 JUMPIFEQ                         R7 R8 ; [+2]
       55 LOADB                            R6 0 +1
       56 LOADB                            R6 1
       57 SETTABLEKS                       R6 R5 K11 ["Checked"]
       59 GETUPVAL                         R6 0
       60 LOADK                            R8 K4 ["Browser"]
       61 LOADK                            R9 K14 ["PlanePreview"]
       62 NAMECALL                         R6 R6 K6 ["getText"]
       64 CALL                             R6 3 1
       65 SETTABLEKS                       R6 R5 K0 ["Text"]
       67 NEWCLOSURE                       R6 P2
       68 CAPTURE                          UPVAL U7
       69 CAPTURE                          UPVAL U8
       70 CAPTURE                          UPVAL U9
       71 SETTABLEKS                       R6 R5 K2 ["OnItemClicked"]
       73 DUPTABLE                         R6 K12 [{["Checked"], [2], ["Enabled"] = True, ["OnItemClicked"]}]
       74 GETUPVAL                         R8 6
       75 GETUPVAL                         R9 7
       76 GETTABLEKS                       R9 R9 K15 ["Sphere"]
       78 JUMPIFEQ                         R8 R9 ; [+2]
       80 LOADB                            R7 0 +1
       81 LOADB                            R7 1
       82 SETTABLEKS                       R7 R6 K11 ["Checked"]
       84 GETUPVAL                         R7 0
       85 LOADK                            R9 K4 ["Browser"]
       86 LOADK                            R10 K16 ["SpherePreview"]
       87 NAMECALL                         R7 R7 K6 ["getText"]
       89 CALL                             R7 3 1
       90 SETTABLEKS                       R7 R6 K0 ["Text"]
       92 NEWCLOSURE                       R7 P3
       93 CAPTURE                          UPVAL U7
       94 CAPTURE                          UPVAL U8
       95 CAPTURE                          UPVAL U9
       96 SETTABLEKS                       R7 R6 K2 ["OnItemClicked"]
       98 SETLIST                          R1 R2 5 [1]
      100 GETIMPORT                        R2 K19 [task.spawn]
      102 NEWCLOSURE                       R3 P4
      103 CAPTURE                          UPVAL U10
      104 CAPTURE                          UPVAL U11
      105 CAPTURE                          VAL R1
      106 CALL                             R2 1 0
      107 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 1
        3 MOVE                             R1 R0
        4 LOADNIL                          R2
        5 LOADNIL                          R3
        6 FORGPREP                         R1
        7 GETUPVAL                         R6 2
        8 GETTABLEKS                       R6 R6 K0 ["getMaterialStatus"]
       10 MOVE                             R7 R5
       11 CALL                             R6 1 1
       12 JUMPIFEQKS                       R6 K1 ["Uploaded"] ; [+7]
       14 GETUPVAL                         R7 3
       15 JUMPIFEQ                         R5 R7 ; [+4]
       17 LOADNIL                          R7
       18 SETTABLEKS                       R7 R5 K2 ["Parent"]
       20 FORGLOOP                         R1 2 ; [-14]
       22 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K4 [{[1], ["Loading"] = False, ["Material"]}]
        1 SETTABLEKS                       R0 R1 K0 ["Id"]
        3 SETTABLEKS                       R0 R1 K3 ["Material"]
        5 RETURN                           R1 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFNOT                        R1 ; [+12]
        4 LOADN                            R3 1
        5 GETUPVAL                         R1 1
        6 LOADN                            R2 1
        7 FORNPREP                         R1
        8 DUPTABLE                         R6 K2 [{[1] = True}]
        9 FASTCALL2                        TABLE_INSERT R0 R6 ; [+4]
       11 MOVE                             R5 R0
       12 GETIMPORT                        R4 K5 [table.insert]
       14 CALL                             R4 2 0
       15 FORNLOOP                         R1
       16 GETUPVAL                         R1 2
       17 GETUPVAL                         R2 3
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 4
       20 GETTABLEKS                       R2 R2 K6 ["append"]
       22 MOVE                             R3 R0
       23 GETUPVAL                         R4 4
       24 GETTABLEKS                       R4 R4 K7 ["map"]
       26 MOVE                             R5 R1
       27 DUPCLOSURE                       R6 K8 [PROTO_7]
       28 CALL                             R4 2 -1
       29 CALL                             R2 -1 0
       30 RETURN                           R0 1

PROTO_9:
        0 DUPTABLE                         R1 K2 [{"CellCount", "Text"}]
        1 GETTABLEKS                       R3 R0 K3 ["materialVariants"]
        3 LENGTH                           R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["CellCount"]
        6 GETTABLEKS                       R2 R0 K4 ["filteredPromptText"]
        8 JUMPIF                           R2 ; [+2]
        9 GETTABLEKS                       R2 R0 K5 ["promptText"]
       11 SETTABLEKS                       R2 R1 K1 ["Text"]
       13 RETURN                           R1 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["map"]
        3 GETUPVAL                         R1 1
        4 DUPCLOSURE                       R2 K1 [PROTO_9]
        5 CALL                             R0 2 1
        6 GETUPVAL                         R1 2
        7 JUMPIFNOT                        R1 ; [+31]
        8 GETUPVAL                         R2 1
        9 GETTABLEN                        R1 R2 1
       10 JUMPIFNOT                        R1 ; [+13]
       11 GETTABLEKS                       R2 R1 K2 ["promptText"]
       13 GETUPVAL                         R3 3
       14 JUMPIFNOTEQ                      R2 R3 ; [+9]
       16 GETTABLEN                        R2 R0 1
       17 GETTABLEKS                       R3 R2 K3 ["CellCount"]
       19 GETUPVAL                         R4 4
       20 ADD                              R3 R3 R4
       21 SETTABLEKS                       R3 R2 K3 ["CellCount"]
       23 RETURN                           R0 1
       24 DUPTABLE                         R2 K5 [{"CellCount", "Text"}]
       25 GETUPVAL                         R3 4
       26 SETTABLEKS                       R3 R2 K3 ["CellCount"]
       28 GETUPVAL                         R3 3
       29 SETTABLEKS                       R3 R2 K4 ["Text"]
       31 LOADN                            R5 1
       32 FASTCALL3                        TABLE_INSERT R0 R5 R2
       34 MOVE                             R4 R0
       35 MOVE                             R6 R2
       36 GETIMPORT                        R3 K8 [table.insert]
       38 CALL                             R3 3 0
       39 RETURN                           R0 1

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["Material"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K1 ["Loading"]
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADNIL                          R1
        7 RETURN                           R1 1
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["getMaterialStatus"]
       11 GETTABLEKS                       R2 R0 K0 ["Material"]
       13 CALL                             R1 1 1
       14 JUMPIFNOTEQKS                    R1 K3 ["Uploaded"] ; [+26]
       16 DUPTABLE                         R2 K5 [{"StatusIcon"}]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K6 ["createElement"]
       20 GETUPVAL                         R4 2
       21 DUPTABLE                         R5 K14 [{["BackgroundTransparency"] = 1, ["Image"] = "rbxasset://textures/StudioSharedUI/ready@2x.png", ["ImageColor3"], ["Position"], ["Size"]}]
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K15 ["StatusIconImageColor"]
       25 SETTABLEKS                       R6 R5 K11 ["ImageColor3"]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R6 R6 K16 ["StatusIconPosition"]
       30 SETTABLEKS                       R6 R5 K12 ["Position"]
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K17 ["StatusIconSize"]
       35 SETTABLEKS                       R6 R5 K13 ["Size"]
       37 CALL                             R3 2 1
       38 SETTABLEKS                       R3 R2 K4 ["StatusIcon"]
       40 RETURN                           R2 1
       41 LOADNIL                          R2
       42 RETURN                           R2 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Material"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K1 ["promptGroups"]
        7 GETTABLEKS                       R3 R1 K2 ["materialStates"]
        9 GETTABLEKS                       R4 R1 K3 ["removeMaterial"]
       11 GETTABLEKS                       R5 R1 K4 ["removeAllMaterials"]
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K0 ["useContext"]
       16 GETUPVAL                         R7 2
       17 CALL                             R6 1 1
       18 GETTABLEKS                       R7 R6 K5 ["lastGeneratedPromptText"]
       20 GETTABLEKS                       R8 R6 K6 ["isGenerating"]
       22 GETUPVAL                         R9 3
       23 GETTABLEKS                       R9 R9 K7 ["Plugin"]
       25 GETTABLEKS                       R9 R9 K8 ["use"]
       27 CALL                             R9 0 1
       28 NAMECALL                         R9 R9 K9 ["get"]
       30 CALL                             R9 1 1
       31 GETUPVAL                         R10 4
       32 NAMECALL                         R10 R10 K8 ["use"]
       34 CALL                             R10 1 1
       35 GETUPVAL                         R11 0
       36 GETTABLEKS                       R11 R11 K0 ["useContext"]
       38 GETUPVAL                         R12 5
       39 CALL                             R11 1 1
       40 GETTABLEKS                       R12 R11 K10 ["getSetting"]
       42 GETUPVAL                         R13 6
       43 CALL                             R12 1 1
       44 LOADNIL                          R13
       45 JUMPIFNOT                        R12 ; [+7]
       46 GETUPVAL                         R14 7
       47 GETTABLEKS                       R14 R14 K11 ["fromRawValue"]
       49 MOVE                             R15 R12
       50 CALL                             R14 1 1
       51 MOVE                             R13 R14
       52 JUMP                             ; [+5]
       53 GETTABLEKS                       R14 R11 K12 ["setSetting"]
       55 GETUPVAL                         R15 6
       56 GETUPVAL                         R16 8
       57 CALL                             R14 2 0
       58 GETUPVAL                         R14 0
       59 GETTABLEKS                       R14 R14 K0 ["useContext"]
       61 GETUPVAL                         R15 9
       62 CALL                             R14 1 1
       63 GETTABLEKS                       R15 R14 K13 ["selectedMaterial"]
       65 GETTABLEKS                       R16 R14 K14 ["setSelectedMaterial"]
       67 JUMPIFNOT                        R15 ; [+4]
       68 GETUPVAL                         R17 10
       69 MOVE                             R18 R15
       70 CALL                             R17 1 1
       71 JUMP                             ; [+1]
       72 LOADNIL                          R17
       73 GETUPVAL                         R18 0
       74 GETTABLEKS                       R18 R18 K15 ["useCallback"]
       76 NEWCLOSURE                       R19 P0
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R15
       79 CAPTURE                          VAL R16
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R5
       83 CAPTURE                          REF R13
       84 CAPTURE                          UPVAL U7
       85 CAPTURE                          VAL R11
       86 CAPTURE                          UPVAL U6
       87 CAPTURE                          UPVAL U11
       88 CAPTURE                          VAL R9
       89 NEWTABLE                         R20 0 5
       91 MOVE                             R21 R15
       92 MOVE                             R22 R2
       93 MOVE                             R23 R13
       94 MOVE                             R24 R4
       95 MOVE                             R25 R5
       96 SETLIST                          R20 R21 5 [1]
       98 CALL                             R18 2 1
       99 GETUPVAL                         R19 0
      100 GETTABLEKS                       R19 R19 K16 ["useEffect"]
      102 NEWCLOSURE                       R20 P1
      103 CAPTURE                          UPVAL U12
      104 CAPTURE                          VAL R2
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R15
      107 NEWTABLE                         R21 0 2
      109 MOVE                             R22 R2
      110 MOVE                             R23 R15
      111 SETLIST                          R21 R22 2 [1]
      113 CALL                             R19 2 0
      114 GETUPVAL                         R19 13
      115 CALL                             R19 0 1
      116 GETUPVAL                         R20 0
      117 GETTABLEKS                       R20 R20 K17 ["useMemo"]
      119 NEWCLOSURE                       R21 P2
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R19
      122 CAPTURE                          UPVAL U12
      123 CAPTURE                          VAL R2
      124 CAPTURE                          UPVAL U14
      125 NEWTABLE                         R22 0 2
      127 MOVE                             R23 R2
      128 MOVE                             R24 R8
      129 SETLIST                          R22 R23 2 [1]
      131 CALL                             R20 2 1
      132 GETUPVAL                         R21 15
      133 LOADK                            R23 K18 ["Browser"]
      134 NAMECALL                         R21 R21 K8 ["use"]
      136 CALL                             R21 2 1
      137 GETUPVAL                         R22 14
      138 GETTABLEKS                       R22 R22 K19 ["join"]
      140 GETTABLEKS                       R23 R21 K20 ["CellGroupHeader"]
      142 DUPTABLE                         R24 K22 [{"HeaderComponent"}]
      143 GETUPVAL                         R25 16
      144 SETTABLEKS                       R25 R24 K21 ["HeaderComponent"]
      146 CALL                             R22 2 1
      147 GETUPVAL                         R23 0
      148 GETTABLEKS                       R23 R23 K17 ["useMemo"]
      150 NEWCLOSURE                       R24 P3
      151 CAPTURE                          UPVAL U14
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R7
      155 CAPTURE                          VAL R19
      156 NEWTABLE                         R25 0 3
      158 MOVE                             R26 R2
      159 MOVE                             R27 R8
      160 MOVE                             R28 R7
      161 SETLIST                          R25 R26 3 [1]
      163 CALL                             R23 2 1
      164 GETUPVAL                         R24 0
      165 GETTABLEKS                       R24 R24 K15 ["useCallback"]
      167 NEWCLOSURE                       R25 P4
      168 CAPTURE                          VAL R1
      169 CAPTURE                          UPVAL U0
      170 CAPTURE                          UPVAL U17
      171 CAPTURE                          VAL R21
      172 NEWTABLE                         R26 0 3
      174 MOVE                             R27 R20
      175 MOVE                             R28 R3
      176 MOVE                             R29 R2
      177 SETLIST                          R26 R27 3 [1]
      179 CALL                             R24 2 1
      180 GETUPVAL                         R25 0
      181 GETTABLEKS                       R25 R25 K23 ["createElement"]
      183 GETUPVAL                         R26 18
      184 DUPTABLE                         R27 K26 [{"LayoutOrder", "Size"}]
      185 GETTABLEKS                       R28 R0 K24 ["LayoutOrder"]
      187 SETTABLEKS                       R28 R27 K24 ["LayoutOrder"]
      189 GETTABLEKS                       R28 R0 K25 ["Size"]
      191 SETTABLEKS                       R28 R27 K25 ["Size"]
      193 DUPTABLE                         R28 K28 [{"Grid"}]
      194 GETUPVAL                         R29 0
      195 GETTABLEKS                       R29 R29 K23 ["createElement"]
      197 GETUPVAL                         R30 19
      198 DUPTABLE                         R31 K40 [{["CellGroups"], ["CellGroupHeader"], ["Items"], ["MaterialPreviewGeometryType"], ["OnClick"], ["OnRenderItemChildren"], ["OnRightClick"], ["Padding"], ["ScrollingDirection"], ["SelectedItemId"], ["ShowGridLabels"] = False}]
      199 SETTABLEKS                       R23 R31 K29 ["CellGroups"]
      201 SETTABLEKS                       R22 R31 K20 ["CellGroupHeader"]
      203 SETTABLEKS                       R20 R31 K30 ["Items"]
      205 SETTABLEKS                       R13 R31 K31 ["MaterialPreviewGeometryType"]
      207 NEWCLOSURE                       R32 P5
      208 CAPTURE                          VAL R16
      209 SETTABLEKS                       R32 R31 K32 ["OnClick"]
      211 SETTABLEKS                       R24 R31 K33 ["OnRenderItemChildren"]
      213 SETTABLEKS                       R18 R31 K34 ["OnRightClick"]
      215 GETTABLEKS                       R32 R21 K35 ["Padding"]
      217 SETTABLEKS                       R32 R31 K35 ["Padding"]
      219 GETIMPORT                        R32 K43 [Enum.ScrollingDirection.Y]
      221 SETTABLEKS                       R32 R31 K36 ["ScrollingDirection"]
      223 SETTABLEKS                       R17 R31 K37 ["SelectedItemId"]
      225 CALL                             R29 2 1
      226 SETTABLEKS                       R29 R28 K27 ["Grid"]
      228 CALL                             R25 3 -1
      229 CLOSEUPVALS                      R13
      230 RETURN                           R25 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Dash"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["MaterialFramework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["React"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R2 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["Localization"]
       39 GETTABLEKS                       R7 R5 K13 ["Stylizer"]
       41 GETTABLEKS                       R8 R2 K14 ["UI"]
       43 GETTABLEKS                       R9 R8 K15 ["Image"]
       45 GETTABLEKS                       R10 R8 K16 ["Pane"]
       47 GETTABLEKS                       R11 R8 K17 ["showContextMenu"]
       49 GETTABLEKS                       R12 R3 K18 ["Components"]
       51 GETTABLEKS                       R12 R12 K19 ["MaterialGrid"]
       53 GETTABLEKS                       R13 R3 K20 ["Enums"]
       55 GETTABLEKS                       R13 R13 K21 ["MaterialPreviewGeometryType"]
       57 GETTABLEKS                       R14 R3 K22 ["Util"]
       59 GETTABLEKS                       R14 R14 K23 ["getSerializedMaterialIdentifier"]
       61 GETIMPORT                        R15 K5 [require]
       63 GETTABLEKS                       R16 R0 K24 ["Src"]
       65 GETTABLEKS                       R16 R16 K18 ["Components"]
       67 GETTABLEKS                       R16 R16 K25 ["PromptGroupFooter"]
       69 CALL                             R15 1 1
       70 GETIMPORT                        R16 K5 [require]
       72 GETTABLEKS                       R17 R0 K24 ["Src"]
       74 GETTABLEKS                       R17 R17 K26 ["Resources"]
       76 GETTABLEKS                       R17 R17 K27 ["Theme"]
       78 CALL                             R16 1 1
       79 GETTABLEKS                       R17 R0 K24 ["Src"]
       81 GETTABLEKS                       R17 R17 K22 ["Util"]
       83 GETIMPORT                        R18 K5 [require]
       85 GETTABLEKS                       R19 R17 K28 ["Constants"]
       87 CALL                             R18 1 1
       88 GETIMPORT                        R19 K5 [require]
       90 GETTABLEKS                       R20 R17 K29 ["GeneratedMaterialsContext"]
       92 CALL                             R19 1 1
       93 GETIMPORT                        R20 K5 [require]
       95 GETTABLEKS                       R21 R17 K30 ["GenerationContext"]
       97 CALL                             R20 1 1
       98 GETIMPORT                        R21 K5 [require]
      100 GETTABLEKS                       R22 R17 K31 ["PluginSettingsContext"]
      102 CALL                             R21 1 1
      103 GETIMPORT                        R22 K5 [require]
      105 GETTABLEKS                       R23 R17 K32 ["PreviewContext"]
      107 CALL                             R22 1 1
      108 GETIMPORT                        R23 K5 [require]
      110 GETTABLEKS                       R24 R17 K33 ["getAllMaterialVariants"]
      112 CALL                             R23 1 1
      113 GETIMPORT                        R24 K5 [require]
      115 GETTABLEKS                       R25 R17 K34 ["getSampleCount"]
      117 CALL                             R24 1 1
      118 GETTABLEKS                       R25 R18 K35 ["SETTING_GEOMETRY_TYPE"]
      120 GETTABLEKS                       R26 R18 K36 ["SETTING_GEOMETRY_TYPE_DEFAULT"]
      122 GETIMPORT                        R27 K5 [require]
      124 GETTABLEKS                       R28 R0 K24 ["Src"]
      126 GETTABLEKS                       R28 R28 K37 ["Types"]
      128 CALL                             R27 1 1
      129 DUPCLOSURE                       R28 K38 [PROTO_13]
      130 CAPTURE                          VAL R4
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R5
      134 CAPTURE                          VAL R6
      135 CAPTURE                          VAL R21
      136 CAPTURE                          VAL R25
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R26
      139 CAPTURE                          VAL R22
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R11
      142 CAPTURE                          VAL R23
      143 CAPTURE                          VAL R24
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R7
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R12
      150 RETURN                           R28 1
