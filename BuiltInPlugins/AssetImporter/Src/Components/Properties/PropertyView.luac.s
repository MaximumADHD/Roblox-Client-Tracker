PROTO_0:
        0 JUMPIFNOTEQKNIL                  R1 ; [+4]
        2 NEWTABLE                         R2 0 0
        4 RETURN                           R2 1
        5 NEWTABLE                         R2 0 0
        7 GETIMPORT                        R3 K1 [ipairs]
        9 MOVE                             R4 R1
       10 CALL                             R3 1 3
       11 FORGPREP_INEXT                   R3
       12 GETTABLE                         R8 R0 R7
       13 SETTABLE                         R8 R2 R7
       14 FORGLOOP                         R3 2 [inext] ; [-3]
       16 RETURN                           R2 1

PROTO_1:
        0 MOVE                             R2 R0
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLE                         R7 R1 R5
        5 JUMPIFEQ                         R7 R6 ; [+3]
        7 LOADB                            R7 1
        8 RETURN                           R7 1
        9 FORGLOOP                         R2 2 ; [-6]
       11 LOADB                            R2 0
       12 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["PropertyMetadata"]
        3 GETTABLEKS                       R1 R1 K1 ["Name"]
        5 JUMPIFEQ                         R0 R1 ; [+15]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K2 ["state"]
       10 GETTABLEKS                       R1 R1 K3 ["dependencies"]
       12 JUMPIFNOT                        R1 ; [+36]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K2 ["state"]
       16 GETTABLEKS                       R2 R2 K3 ["dependencies"]
       18 GETTABLE                         R1 R2 R0
       19 JUMPIFEQKNIL                     R1 ; [+29]
       21 GETUPVAL                         R1 1
       22 DUPTABLE                         R3 K5 [{"value", "dependencies"}]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K6 ["Instance"]
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K0 ["PropertyMetadata"]
       29 GETTABLEKS                       R6 R6 K1 ["Name"]
       31 GETTABLE                         R4 R5 R6
       32 SETTABLEKS                       R4 R3 K4 ["value"]
       34 GETUPVAL                         R4 2
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K6 ["Instance"]
       38 GETUPVAL                         R6 0
       39 GETTABLEKS                       R6 R6 K0 ["PropertyMetadata"]
       41 GETTABLEKS                       R6 R6 K7 ["Dependencies"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K3 ["dependencies"]
       46 NAMECALL                         R1 R1 K8 ["setState"]
       48 CALL                             R1 2 0
       49 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Instance"]
        4 JUMPIFNOT                        R1 ; [+15]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R1 K1 ["Instance"]
        9 GETTABLEKS                       R2 R2 K2 ["Changed"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 NAMECALL                         R3 R2 K3 ["Connect"]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R0 K4 ["_changedConnection"]
       20 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_changedConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["_changedConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["_changedConnection"]
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["UpdatePreviewInstance"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Instance"]
       10 NAMECALL                         R1 R1 K3 ["GetPreview"]
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["PropertyMetadata"]
        5 GETTABLEKS                       R2 R0 K2 ["Instance"]
        7 GETTABLEKS                       R3 R1 K3 ["Name"]
        9 GETTABLEKS                       R6 R0 K2 ["Instance"]
       11 GETTABLEKS                       R7 R1 K3 ["Name"]
       13 GETTABLE                         R5 R6 R7
       14 NOT                              R4 R5
       15 SETTABLE                         R4 R2 R3
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["props"]
       19 GETTABLEKS                       R2 R2 K4 ["UpdatePreviewInstance"]
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R3 R3 K0 ["props"]
       24 GETTABLEKS                       R3 R3 K2 ["Instance"]
       26 NAMECALL                         R3 R3 K5 ["GetPreview"]
       28 CALL                             R3 1 -1
       29 CALL                             R2 -1 0
       30 GETTABLEKS                       R2 R0 K6 ["SetErrorNodeChecked"]
       32 GETUPVAL                         R3 1
       33 GETTABLEKS                       R4 R0 K7 ["ImportTree"]
       35 CALL                             R3 1 -1
       36 CALL                             R2 -1 0
       37 GETTABLEKS                       R2 R0 K8 ["UpdateQueueItem"]
       39 GETTABLEKS                       R3 R0 K9 ["ActiveQueueItem"]
       41 DUPTABLE                         R4 K12 [{["settingsChanged"] = True}]
       42 CALL                             R2 2 0
       43 GETTABLEKS                       R2 R0 K13 ["OnInteract"]
       45 CALL                             R2 0 0
       46 GETUPVAL                         R2 0
       47 NEWTABLE                         R4 0 0
       49 NAMECALL                         R2 R2 K14 ["setState"]
       51 CALL                             R2 2 0
       52 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["PropertyMetadata"]
        5 GETTABLEKS                       R4 R1 K2 ["Instance"]
        7 GETTABLEKS                       R5 R2 K3 ["Name"]
        9 GETTABLE                         R3 R4 R5
       10 GETTABLEKS                       R4 R1 K2 ["Instance"]
       12 GETTABLEKS                       R5 R2 K3 ["Name"]
       14 SETTABLE                         R0 R4 R5
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R4 R4 K0 ["props"]
       18 GETTABLEKS                       R4 R4 K4 ["UpdatePreviewInstance"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K0 ["props"]
       23 GETTABLEKS                       R5 R5 K2 ["Instance"]
       25 NAMECALL                         R5 R5 K5 ["GetPreview"]
       27 CALL                             R5 1 -1
       28 CALL                             R4 -1 0
       29 GETIMPORT                        R4 K8 [table.find]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R6 R2 K3 ["Name"]
       34 CALL                             R4 2 1
       35 JUMPIFNOT                        R4 ; [+8]
       36 JUMPIFEQ                         R3 R0 ; [+7]
       38 GETTABLEKS                       R4 R1 K9 ["UpdateQueueItem"]
       40 GETTABLEKS                       R5 R1 K10 ["ActiveQueueItem"]
       42 DUPTABLE                         R6 K13 [{["settingsChanged"] = True}]
       43 CALL                             R4 2 0
       44 GETTABLEKS                       R4 R1 K14 ["SetErrorNodeChecked"]
       46 GETUPVAL                         R5 2
       47 GETTABLEKS                       R6 R1 K15 ["ImportTree"]
       49 CALL                             R5 1 -1
       50 CALL                             R4 -1 0
       51 GETTABLEKS                       R4 R1 K16 ["OnInteract"]
       53 CALL                             R4 0 0
       54 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["PropertyMetadata"]
        5 GETTABLEKS                       R5 R1 K2 ["Instance"]
        7 GETTABLEKS                       R6 R2 K3 ["Name"]
        9 GETTABLE                         R4 R5 R6
       10 GETTABLEKS                       R4 R4 K4 ["EnumType"]
       12 GETTABLE                         R3 R4 R0
       13 GETTABLEKS                       R5 R1 K2 ["Instance"]
       15 GETTABLEKS                       R6 R2 K3 ["Name"]
       17 GETTABLE                         R4 R5 R6
       18 JUMPIFNOTEQ                      R3 R4 ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R4 R1 K2 ["Instance"]
       23 GETTABLEKS                       R5 R2 K3 ["Name"]
       25 SETTABLE                         R3 R4 R5
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K0 ["props"]
       29 GETTABLEKS                       R4 R4 K5 ["UpdatePreviewInstance"]
       31 GETUPVAL                         R5 0
       32 GETTABLEKS                       R5 R5 K0 ["props"]
       34 GETTABLEKS                       R5 R5 K2 ["Instance"]
       36 NAMECALL                         R5 R5 K6 ["GetPreview"]
       38 CALL                             R5 1 -1
       39 CALL                             R4 -1 0
       40 GETTABLEKS                       R4 R1 K7 ["SetErrorNodeChecked"]
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R6 R1 K8 ["ImportTree"]
       45 CALL                             R5 1 -1
       46 CALL                             R4 -1 0
       47 GETTABLEKS                       R4 R1 K9 ["UpdateQueueItem"]
       49 GETTABLEKS                       R5 R1 K10 ["ActiveQueueItem"]
       51 DUPTABLE                         R6 K13 [{["settingsChanged"] = True}]
       52 CALL                             R4 2 0
       53 GETTABLEKS                       R4 R1 K14 ["OnInteract"]
       55 CALL                             R4 0 0
       56 RETURN                           R0 0

PROTO_9:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 NEWCLOSURE                       R2 P1
        3 CAPTURE                          VAL R0
        4 CAPTURE                          UPVAL U0
        5 SETTABLEKS                       R2 R0 K0 ["onToggleItem"]
        7 NEWCLOSURE                       R2 P2
        8 CAPTURE                          VAL R0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          UPVAL U0
       11 SETTABLEKS                       R2 R0 K1 ["onSetItem"]
       13 NEWCLOSURE                       R2 P3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          UPVAL U0
       16 SETTABLEKS                       R2 R0 K2 ["onSelectItem"]
       18 DUPTABLE                         R4 K5 [{"value", "dependencies"}]
       19 GETTABLEKS                       R6 R0 K6 ["props"]
       21 GETTABLEKS                       R6 R6 K7 ["Instance"]
       23 GETTABLEKS                       R7 R0 K6 ["props"]
       25 GETTABLEKS                       R7 R7 K8 ["PropertyMetadata"]
       27 GETTABLEKS                       R7 R7 K9 ["Name"]
       29 GETTABLE                         R5 R6 R7
       30 SETTABLEKS                       R5 R4 K3 ["value"]
       32 GETUPVAL                         R5 2
       33 GETTABLEKS                       R6 R0 K6 ["props"]
       35 GETTABLEKS                       R6 R6 K7 ["Instance"]
       37 GETTABLEKS                       R7 R0 K6 ["props"]
       39 GETTABLEKS                       R7 R7 K8 ["PropertyMetadata"]
       41 GETTABLEKS                       R7 R7 K10 ["Dependencies"]
       43 CALL                             R5 2 1
       44 SETTABLEKS                       R5 R4 K4 ["dependencies"]
       46 NAMECALL                         R2 R0 K11 ["setState"]
       48 CALL                             R2 2 0
       49 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R1 R0 K0 ["_connect"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R1 K1 ["connections"]
        5 NAMECALL                         R1 R0 K2 ["_disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R1 K0 ["Instance"]
        2 GETTABLEKS                       R4 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R4 K0 ["Instance"]
        6 JUMPIFEQ                         R3 R4 ; [+7]
        8 NAMECALL                         R3 R0 K2 ["_disconnect"]
       10 CALL                             R3 1 0
       11 NAMECALL                         R3 R0 K3 ["_connect"]
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R2 K2 [{"value", "dependencies"}]
        1 GETTABLEKS                       R4 R0 K3 ["Instance"]
        3 GETTABLEKS                       R5 R0 K4 ["PropertyMetadata"]
        5 GETTABLEKS                       R5 R5 K5 ["Name"]
        7 GETTABLE                         R3 R4 R5
        8 SETTABLEKS                       R3 R2 K0 ["value"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R4 R0 K3 ["Instance"]
       13 GETTABLEKS                       R5 R0 K4 ["PropertyMetadata"]
       15 GETTABLEKS                       R5 R5 K6 ["Dependencies"]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R2 K1 ["dependencies"]
       20 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K3 ["PropertyMetadata"]
        8 GETTABLEKS                       R5 R1 K4 ["Instance"]
       10 LOADNIL                          R6
       11 LOADNIL                          R7
       12 LOADNIL                          R8
       13 GETTABLEKS                       R9 R1 K5 ["Status"]
       15 JUMPIFNOT                        R9 ; [+12]
       16 GETTABLEKS                       R9 R1 K5 ["Status"]
       18 GETTABLEKS                       R6 R9 K6 ["Level"]
       20 GETTABLEKS                       R9 R1 K5 ["Status"]
       22 GETTABLEKS                       R7 R9 K7 ["Type"]
       24 GETTABLEKS                       R9 R1 K5 ["Status"]
       26 GETTABLEKS                       R8 R9 K8 ["Context"]
       28 JUMPIF                           R6 ; [+16]
       29 GETTABLEKS                       R9 R4 K9 ["Name"]
       31 JUMPIFNOTEQKS                    R9 K10 ["ScaleUnit"] ; [+13]
       33 GETTABLEKS                       R9 R5 K10 ["ScaleUnit"]
       35 JUMPIFNOT                        R9 ; [+9]
       36 GETTABLEKS                       R9 R5 K10 ["ScaleUnit"]
       38 GETTABLEKS                       R9 R9 K9 ["Name"]
       40 JUMPIFEQKS                       R9 K11 ["Stud"] ; [+4]
       42 LOADK                            R6 K12 ["Warning"]
       43 LOADK                            R7 K13 ["ScaleUnitNotStudWarning2"]
       44 LOADNIL                          R8
       45 GETTABLEKS                       R9 R4 K14 ["Editable"]
       47 GETTABLEKS                       R10 R4 K9 ["Name"]
       49 GETTABLEKS                       R11 R4 K15 ["AllowPickFile"]
       51 GETTABLE                         R12 R5 R10
       52 LOADNIL                          R13
       53 GETTABLEKS                       R14 R4 K16 ["Dependencies"]
       55 JUMPIFNOT                        R14 ; [+6]
       56 GETUPVAL                         R14 0
       57 MOVE                             R15 R5
       58 GETTABLEKS                       R16 R4 K16 ["Dependencies"]
       60 CALL                             R14 2 1
       61 MOVE                             R13 R14
       62 LOADNIL                          R14
       63 GETTABLEKS                       R15 R4 K17 ["ComponentFactory"]
       65 JUMPIFNOT                        R15 ; [+3]
       66 GETTABLEKS                       R14 R4 K17 ["ComponentFactory"]
       68 JUMP                             ; [+4]
       69 GETUPVAL                         R15 1
       70 MOVE                             R16 R12
       71 CALL                             R15 1 1
       72 MOVE                             R14 R15
       73 GETTABLEKS                       R15 R3 K18 ["PropertyView"]
       75 GETTABLEKS                       R15 R15 K19 ["IconSize"]
       77 GETTABLEKS                       R16 R3 K18 ["PropertyView"]
       79 GETTABLEKS                       R16 R16 K20 ["Spacing"]
       81 ADD                              R17 R15 R16
       82 NEWTABLE                         R18 1 0
       84 GETUPVAL                         R19 2
       85 GETTABLEKS                       R19 R19 K21 ["createElement"]
       87 GETUPVAL                         R20 3
       88 DUPTABLE                         R21 K23 [{"Text"}]
       89 LOADK                            R24 K24 ["PropertiesTooltip"]
       90 MOVE                             R25 R10
       91 NAMECALL                         R22 R2 K25 ["getText"]
       93 CALL                             R22 3 1
       94 SETTABLEKS                       R22 R21 K22 ["Text"]
       96 CALL                             R19 2 1
       97 SETTABLEKS                       R19 R18 K26 ["Tooltip"]
       99 GETUPVAL                         R19 2
      100 GETTABLEKS                       R19 R19 K21 ["createElement"]
      102 GETUPVAL                         R20 4
      103 DUPTABLE                         R21 K31 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "Spacing"}]
      104 GETTABLEKS                       R22 R1 K27 ["LayoutOrder"]
      106 SETTABLEKS                       R22 R21 K27 ["LayoutOrder"]
      108 GETIMPORT                        R22 K34 [UDim2.new]
      110 LOADN                            R23 1
      111 GETTABLEKS                       R25 R3 K18 ["PropertyView"]
      113 GETTABLEKS                       R25 R25 K35 ["ScrollBarOffset"]
      115 MINUS                            R24 R25
      116 LOADN                            R25 0
      117 GETTABLEKS                       R26 R3 K18 ["PropertyView"]
      119 GETTABLEKS                       R26 R26 K36 ["Height"]
      121 CALL                             R22 4 1
      122 SETTABLEKS                       R22 R21 K28 ["Size"]
      124 GETIMPORT                        R22 K40 [Enum.FillDirection.Horizontal]
      126 SETTABLEKS                       R22 R21 K29 ["Layout"]
      128 GETIMPORT                        R22 K42 [Enum.HorizontalAlignment.Left]
      130 SETTABLEKS                       R22 R21 K30 ["HorizontalAlignment"]
      132 SETTABLEKS                       R16 R21 K20 ["Spacing"]
      134 DUPTABLE                         R22 K46 [{"StatusArea", "Label", "Editor"}]
      135 GETUPVAL                         R23 2
      136 GETTABLEKS                       R23 R23 K21 ["createElement"]
      138 GETUPVAL                         R24 4
      139 DUPTABLE                         R25 K49 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 3, ["Size"], ["Padding"]}]
      140 GETIMPORT                        R26 K42 [Enum.HorizontalAlignment.Left]
      142 SETTABLEKS                       R26 R25 K30 ["HorizontalAlignment"]
      144 GETIMPORT                        R26 K40 [Enum.FillDirection.Horizontal]
      146 SETTABLEKS                       R26 R25 K29 ["Layout"]
      148 GETIMPORT                        R26 K34 [UDim2.new]
      150 LOADN                            R27 0
      151 MOVE                             R28 R17
      152 LOADN                            R29 1
      153 LOADN                            R30 0
      154 CALL                             R26 4 1
      155 SETTABLEKS                       R26 R25 K28 ["Size"]
      157 DUPTABLE                         R26 K50 [{"Left"}]
      158 SETTABLEKS                       R16 R26 K41 ["Left"]
      160 SETTABLEKS                       R26 R25 K48 ["Padding"]
      162 DUPTABLE                         R26 K52 [{"Icon"}]
      163 JUMPIFNOT                        R6 ; [+13]
      164 GETUPVAL                         R27 2
      165 GETTABLEKS                       R27 R27 K21 ["createElement"]
      167 GETUPVAL                         R28 5
      168 DUPTABLE                         R29 K56 [{"StatusLevel", "StatusMessage", "StatusContext"}]
      169 SETTABLEKS                       R6 R29 K53 ["StatusLevel"]
      171 SETTABLEKS                       R7 R29 K54 ["StatusMessage"]
      173 SETTABLEKS                       R8 R29 K55 ["StatusContext"]
      175 CALL                             R27 2 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R27
      178 SETTABLEKS                       R27 R26 K51 ["Icon"]
      180 CALL                             R23 3 1
      181 SETTABLEKS                       R23 R22 K43 ["StatusArea"]
      183 GETUPVAL                         R23 2
      184 GETTABLEKS                       R23 R23 K21 ["createElement"]
      186 GETUPVAL                         R24 6
      187 DUPTABLE                         R25 K62 [{["AutomaticSize"], ["Text"], ["TextWrapped"] = False, ["TextXAlignment"], ["LayoutOrder"] = 1, ["Size"]}]
      188 GETIMPORT                        R26 K64 [Enum.AutomaticSize.Y]
      190 SETTABLEKS                       R26 R25 K57 ["AutomaticSize"]
      192 LOADK                            R28 K65 ["Properties"]
      193 MOVE                             R29 R10
      194 NAMECALL                         R26 R2 K25 ["getText"]
      196 CALL                             R26 3 1
      197 SETTABLEKS                       R26 R25 K22 ["Text"]
      199 GETIMPORT                        R26 K66 [Enum.TextXAlignment.Left]
      201 SETTABLEKS                       R26 R25 K60 ["TextXAlignment"]
      203 GETIMPORT                        R26 K34 [UDim2.new]
      205 LOADK                            R27 K67 [0.5]
      206 MINUS                            R28 R17
      207 LOADN                            R29 0
      208 LOADN                            R30 0
      209 CALL                             R26 4 1
      210 SETTABLEKS                       R26 R25 K28 ["Size"]
      212 MOVE                             R26 R18
      213 CALL                             R23 3 1
      214 SETTABLEKS                       R23 R22 K44 ["Label"]
      216 GETUPVAL                         R23 2
      217 GETTABLEKS                       R23 R23 K21 ["createElement"]
      219 MOVE                             R24 R14
      220 DUPTABLE                         R25 K75 [{["DependentValues"], ["Editable"], ["LayoutOrder"] = 2, ["Name"], ["OnSelectItem"], ["OnSetItem"], ["OnToggleItem"], ["Size"], ["Value"], ["Localization"], ["PropertyMetadata"], ["AllowPickFile"], ["Instance"], ["AssetImportSession"]}]
      221 SETTABLEKS                       R13 R25 K68 ["DependentValues"]
      223 SETTABLEKS                       R9 R25 K14 ["Editable"]
      225 SETTABLEKS                       R10 R25 K9 ["Name"]
      227 GETTABLEKS                       R26 R0 K76 ["onSelectItem"]
      229 SETTABLEKS                       R26 R25 K70 ["OnSelectItem"]
      231 GETTABLEKS                       R26 R0 K77 ["onSetItem"]
      233 SETTABLEKS                       R26 R25 K71 ["OnSetItem"]
      235 GETTABLEKS                       R26 R0 K78 ["onToggleItem"]
      237 SETTABLEKS                       R26 R25 K72 ["OnToggleItem"]
      239 GETIMPORT                        R26 K34 [UDim2.new]
      241 LOADK                            R27 K67 [0.5]
      242 GETTABLEKS                       R29 R3 K18 ["PropertyView"]
      244 GETTABLEKS                       R29 R29 K35 ["ScrollBarOffset"]
      246 MINUS                            R28 R29
      247 LOADN                            R29 0
      248 GETTABLEKS                       R30 R3 K18 ["PropertyView"]
      250 GETTABLEKS                       R30 R30 K79 ["EditorHeight"]
      252 CALL                             R26 4 1
      253 SETTABLEKS                       R26 R25 K28 ["Size"]
      255 SETTABLEKS                       R12 R25 K73 ["Value"]
      257 SETTABLEKS                       R2 R25 K1 ["Localization"]
      259 SETTABLEKS                       R4 R25 K3 ["PropertyMetadata"]
      261 SETTABLEKS                       R11 R25 K15 ["AllowPickFile"]
      263 SETTABLEKS                       R5 R25 K4 ["Instance"]
      265 GETTABLEKS                       R26 R0 K0 ["props"]
      267 GETTABLEKS                       R26 R26 K74 ["AssetImportSession"]
      269 SETTABLEKS                       R26 R25 K74 ["AssetImportSession"]
      271 CALL                             R23 2 1
      272 SETTABLEKS                       R23 R22 K45 ["Editor"]
      274 CALL                             R19 3 -1
      275 RETURN                           R19 -1

PROTO_15:
        0 GETTABLEKS                       R3 R0 K0 ["state"]
        2 GETTABLEKS                       R4 R3 K1 ["value"]
        4 GETTABLEKS                       R5 R2 K1 ["value"]
        6 JUMPIFEQ                         R4 R5 ; [+3]
        8 LOADB                            R4 1
        9 RETURN                           R4 1
       10 GETTABLEKS                       R5 R3 K2 ["dependencies"]
       12 GETTABLEKS                       R6 R2 K2 ["dependencies"]
       14 MOVE                             R7 R5
       15 LOADNIL                          R8
       16 LOADNIL                          R9
       17 FORGPREP                         R7
       18 GETTABLE                         R12 R6 R10
       19 JUMPIFEQ                         R12 R11 ; [+3]
       21 LOADB                            R4 1
       22 JUMP                             ; [+3]
       23 FORGLOOP                         R7 2 ; [-6]
       25 LOADB                            R4 0
       26 JUMPIFNOT                        R4 ; [+2]
       27 LOADB                            R4 1
       28 RETURN                           R4 1
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R6 R0 K3 ["props"]
       32 MOVE                             R7 R1
       33 CALL                             R5 2 1
       34 NOT                              R4 R5
       35 RETURN                           R4 1

PROTO_16:
        0 DUPTABLE                         R1 K3 [{"AssetImportSession", "ImportTree", "ActiveQueueItem"}]
        1 GETTABLEKS                       R2 R0 K4 ["Preview"]
        3 GETTABLEKS                       R2 R2 K5 ["assetImportSession"]
        5 SETTABLEKS                       R2 R1 K0 ["AssetImportSession"]
        7 GETTABLEKS                       R2 R0 K4 ["Preview"]
        9 GETTABLEKS                       R2 R2 K6 ["importTree"]
       11 SETTABLEKS                       R2 R1 K1 ["ImportTree"]
       13 GETTABLEKS                       R2 R0 K4 ["Preview"]
       15 GETTABLEKS                       R2 R2 K7 ["activeQueueItem"]
       17 SETTABLEKS                       R2 R1 K2 ["ActiveQueueItem"]
       19 RETURN                           R1 1

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
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 MOVE                             R5 R1
        4 CALL                             R3 2 -1
        5 CALL                             R2 -1 0
        6 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K3 [{"UpdatePreviewInstance", "SetErrorNodeChecked", "UpdateQueueItem"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["UpdatePreviewInstance"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetErrorNodeChecked"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["UpdateQueueItem"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["Dash"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R3 K11 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K12 ["withContext"]
       39 GETTABLEKS                       R7 R5 K13 ["Localization"]
       41 GETTABLEKS                       R8 R5 K14 ["Stylizer"]
       43 GETTABLEKS                       R9 R3 K15 ["UI"]
       45 GETTABLEKS                       R10 R9 K16 ["Pane"]
       47 GETTABLEKS                       R11 R9 K17 ["TextLabel"]
       49 GETTABLEKS                       R12 R9 K18 ["Tooltip"]
       51 GETIMPORT                        R13 K5 [require]
       53 GETTABLEKS                       R14 R0 K19 ["Src"]
       55 GETTABLEKS                       R14 R14 K20 ["Components"]
       57 GETTABLEKS                       R14 R14 K21 ["Properties"]
       59 GETTABLEKS                       R14 R14 K22 ["PropertyStatus"]
       61 CALL                             R13 1 1
       62 GETIMPORT                        R14 K5 [require]
       64 GETTABLEKS                       R15 R0 K19 ["Src"]
       66 GETTABLEKS                       R15 R15 K23 ["Thunks"]
       68 GETTABLEKS                       R15 R15 K24 ["UpdatePreviewInstance"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K5 [require]
       73 GETTABLEKS                       R16 R0 K19 ["Src"]
       75 GETTABLEKS                       R16 R16 K23 ["Thunks"]
       77 GETTABLEKS                       R16 R16 K25 ["UpdateQueueItem"]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R16 R4 K26 ["shallowEqual"]
       82 GETTABLEKS                       R17 R0 K19 ["Src"]
       84 GETTABLEKS                       R17 R17 K27 ["Utility"]
       86 GETIMPORT                        R18 K5 [require]
       88 GETTABLEKS                       R19 R17 K28 ["GetEditorFromType"]
       90 CALL                             R18 1 1
       91 GETIMPORT                        R19 K5 [require]
       93 GETTABLEKS                       R20 R17 K29 ["GetErrorChecked"]
       95 CALL                             R19 1 1
       96 GETIMPORT                        R20 K5 [require]
       98 GETTABLEKS                       R21 R0 K19 ["Src"]
      100 GETTABLEKS                       R21 R21 K30 ["Actions"]
      102 GETTABLEKS                       R21 R21 K31 ["SetErrorNodeChecked"]
      104 CALL                             R20 1 1
      105 GETIMPORT                        R21 K5 [require]
      107 GETTABLEKS                       R22 R0 K19 ["Src"]
      109 GETTABLEKS                       R22 R22 K32 ["Types"]
      111 GETTABLEKS                       R22 R22 K33 ["QueuedSession"]
      113 CALL                             R21 1 1
      114 GETTABLEKS                       R22 R1 K34 ["PureComponent"]
      116 LOADK                            R24 K35 ["PropertyView"]
      117 NAMECALL                         R22 R22 K36 ["extend"]
      119 CALL                             R22 2 1
      120 DUPCLOSURE                       R23 K37 [PROTO_0]
      121 DUPCLOSURE                       R24 K38 [PROTO_1]
      122 DUPCLOSURE                       R25 K39 [PROTO_3]
      123 CAPTURE                          VAL R23
      124 SETTABLEKS                       R25 R22 K40 ["_connect"]
      126 DUPCLOSURE                       R25 K41 [PROTO_4]
      127 SETTABLEKS                       R25 R22 K42 ["_disconnect"]
      129 NEWTABLE                         R25 0 2
      131 LOADK                            R26 K43 ["ImportName"]
      132 LOADK                            R27 K44 ["PreferredUploadId"]
      133 SETLIST                          R25 R26 2 [1]
      135 DUPCLOSURE                       R26 K45 [PROTO_9]
      136 CAPTURE                          VAL R19
      137 CAPTURE                          VAL R25
      138 CAPTURE                          VAL R23
      139 SETTABLEKS                       R26 R22 K46 ["init"]
      141 DUPCLOSURE                       R26 K47 [PROTO_10]
      142 SETTABLEKS                       R26 R22 K48 ["didMount"]
      144 DUPCLOSURE                       R26 K49 [PROTO_11]
      145 SETTABLEKS                       R26 R22 K50 ["willUnmount"]
      147 DUPCLOSURE                       R26 K51 [PROTO_12]
      148 SETTABLEKS                       R26 R22 K52 ["didUpdate"]
      150 DUPCLOSURE                       R26 K53 [PROTO_13]
      151 CAPTURE                          VAL R23
      152 SETTABLEKS                       R26 R22 K54 ["getDerivedStateFromProps"]
      154 DUPCLOSURE                       R26 K55 [PROTO_14]
      155 CAPTURE                          VAL R23
      156 CAPTURE                          VAL R18
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R11
      162 SETTABLEKS                       R26 R22 K56 ["render"]
      164 DUPCLOSURE                       R26 K57 [PROTO_15]
      165 CAPTURE                          VAL R16
      166 SETTABLEKS                       R26 R22 K58 ["shouldUpdate"]
      168 MOVE                             R26 R6
      169 DUPTABLE                         R27 K59 [{"Localization", "Stylizer"}]
      170 SETTABLEKS                       R7 R27 K13 ["Localization"]
      172 SETTABLEKS                       R8 R27 K14 ["Stylizer"]
      174 CALL                             R26 1 1
      175 MOVE                             R27 R22
      176 CALL                             R26 1 1
      177 MOVE                             R22 R26
      178 DUPCLOSURE                       R26 K60 [PROTO_16]
      179 DUPCLOSURE                       R27 K61 [PROTO_20]
      180 CAPTURE                          VAL R14
      181 CAPTURE                          VAL R20
      182 CAPTURE                          VAL R15
      183 GETTABLEKS                       R28 R2 K62 ["connect"]
      185 MOVE                             R29 R26
      186 MOVE                             R30 R27
      187 CALL                             R28 2 1
      188 MOVE                             R29 R22
      189 CALL                             R28 1 -1
      190 RETURN                           R28 -1
