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
       28 GETUPVAL                         R9 0
       29 CALL                             R9 0 1
       30 JUMPIFNOT                        R9 ; [+22]
       31 JUMPIF                           R6 ; [+21]
       32 GETTABLEKS                       R9 R4 K9 ["Name"]
       34 JUMPIFNOTEQKS                    R9 K10 ["ScaleUnit"] ; [+18]
       36 GETTABLEKS                       R9 R5 K10 ["ScaleUnit"]
       38 JUMPIFNOT                        R9 ; [+14]
       39 GETTABLEKS                       R9 R5 K10 ["ScaleUnit"]
       41 GETTABLEKS                       R9 R9 K9 ["Name"]
       43 JUMPIFEQKS                       R9 K11 ["Stud"] ; [+9]
       45 LOADK                            R6 K12 ["Warning"]
       46 GETUPVAL                         R9 1
       47 CALL                             R9 0 1
       48 JUMPIF                           R9 ; [+2]
       49 LOADK                            R7 K13 ["ScaleUnitNotStudWarning"]
       50 JUMP                             ; [+1]
       51 LOADK                            R7 K14 ["ScaleUnitNotStudWarning2"]
       52 LOADNIL                          R8
       53 GETTABLEKS                       R9 R4 K15 ["Editable"]
       55 GETTABLEKS                       R10 R4 K9 ["Name"]
       57 GETTABLEKS                       R11 R4 K16 ["AllowPickFile"]
       59 GETTABLE                         R12 R5 R10
       60 LOADNIL                          R13
       61 GETTABLEKS                       R14 R4 K17 ["Dependencies"]
       63 JUMPIFNOT                        R14 ; [+6]
       64 GETUPVAL                         R14 2
       65 MOVE                             R15 R5
       66 GETTABLEKS                       R16 R4 K17 ["Dependencies"]
       68 CALL                             R14 2 1
       69 MOVE                             R13 R14
       70 LOADNIL                          R14
       71 GETTABLEKS                       R15 R4 K18 ["ComponentFactory"]
       73 JUMPIFNOT                        R15 ; [+3]
       74 GETTABLEKS                       R14 R4 K18 ["ComponentFactory"]
       76 JUMP                             ; [+4]
       77 GETUPVAL                         R15 3
       78 MOVE                             R16 R12
       79 CALL                             R15 1 1
       80 MOVE                             R14 R15
       81 GETTABLEKS                       R15 R3 K19 ["PropertyView"]
       83 GETTABLEKS                       R15 R15 K20 ["IconSize"]
       85 GETTABLEKS                       R16 R3 K19 ["PropertyView"]
       87 GETTABLEKS                       R16 R16 K21 ["Spacing"]
       89 ADD                              R17 R15 R16
       90 NEWTABLE                         R18 1 0
       92 GETUPVAL                         R19 4
       93 GETTABLEKS                       R19 R19 K22 ["createElement"]
       95 GETUPVAL                         R20 5
       96 DUPTABLE                         R21 K24 [{"Text"}]
       97 LOADK                            R24 K25 ["PropertiesTooltip"]
       98 MOVE                             R25 R10
       99 NAMECALL                         R22 R2 K26 ["getText"]
      101 CALL                             R22 3 1
      102 SETTABLEKS                       R22 R21 K23 ["Text"]
      104 CALL                             R19 2 1
      105 SETTABLEKS                       R19 R18 K27 ["Tooltip"]
      107 GETUPVAL                         R19 4
      108 GETTABLEKS                       R19 R19 K22 ["createElement"]
      110 GETUPVAL                         R20 6
      111 DUPTABLE                         R21 K32 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "Spacing"}]
      112 GETTABLEKS                       R22 R1 K28 ["LayoutOrder"]
      114 SETTABLEKS                       R22 R21 K28 ["LayoutOrder"]
      116 GETIMPORT                        R22 K35 [UDim2.new]
      118 LOADN                            R23 1
      119 GETTABLEKS                       R25 R3 K19 ["PropertyView"]
      121 GETTABLEKS                       R25 R25 K36 ["ScrollBarOffset"]
      123 MINUS                            R24 R25
      124 LOADN                            R25 0
      125 GETTABLEKS                       R26 R3 K19 ["PropertyView"]
      127 GETTABLEKS                       R26 R26 K37 ["Height"]
      129 CALL                             R22 4 1
      130 SETTABLEKS                       R22 R21 K29 ["Size"]
      132 GETIMPORT                        R22 K41 [Enum.FillDirection.Horizontal]
      134 SETTABLEKS                       R22 R21 K30 ["Layout"]
      136 GETIMPORT                        R22 K43 [Enum.HorizontalAlignment.Left]
      138 SETTABLEKS                       R22 R21 K31 ["HorizontalAlignment"]
      140 SETTABLEKS                       R16 R21 K21 ["Spacing"]
      142 DUPTABLE                         R22 K47 [{"StatusArea", "Label", "Editor"}]
      143 GETUPVAL                         R23 4
      144 GETTABLEKS                       R23 R23 K22 ["createElement"]
      146 GETUPVAL                         R24 6
      147 DUPTABLE                         R25 K50 [{["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 3, ["Size"], ["Padding"]}]
      148 GETIMPORT                        R26 K43 [Enum.HorizontalAlignment.Left]
      150 SETTABLEKS                       R26 R25 K31 ["HorizontalAlignment"]
      152 GETIMPORT                        R26 K41 [Enum.FillDirection.Horizontal]
      154 SETTABLEKS                       R26 R25 K30 ["Layout"]
      156 GETIMPORT                        R26 K35 [UDim2.new]
      158 LOADN                            R27 0
      159 MOVE                             R28 R17
      160 LOADN                            R29 1
      161 LOADN                            R30 0
      162 CALL                             R26 4 1
      163 SETTABLEKS                       R26 R25 K29 ["Size"]
      165 DUPTABLE                         R26 K51 [{"Left"}]
      166 SETTABLEKS                       R16 R26 K42 ["Left"]
      168 SETTABLEKS                       R26 R25 K49 ["Padding"]
      170 DUPTABLE                         R26 K53 [{"Icon"}]
      171 JUMPIFNOT                        R6 ; [+13]
      172 GETUPVAL                         R27 4
      173 GETTABLEKS                       R27 R27 K22 ["createElement"]
      175 GETUPVAL                         R28 7
      176 DUPTABLE                         R29 K57 [{"StatusLevel", "StatusMessage", "StatusContext"}]
      177 SETTABLEKS                       R6 R29 K54 ["StatusLevel"]
      179 SETTABLEKS                       R7 R29 K55 ["StatusMessage"]
      181 SETTABLEKS                       R8 R29 K56 ["StatusContext"]
      183 CALL                             R27 2 1
      184 JUMP                             ; [+1]
      185 LOADNIL                          R27
      186 SETTABLEKS                       R27 R26 K52 ["Icon"]
      188 CALL                             R23 3 1
      189 SETTABLEKS                       R23 R22 K44 ["StatusArea"]
      191 GETUPVAL                         R23 4
      192 GETTABLEKS                       R23 R23 K22 ["createElement"]
      194 GETUPVAL                         R24 8
      195 DUPTABLE                         R25 K63 [{["AutomaticSize"], ["Text"], ["TextWrapped"] = False, ["TextXAlignment"], ["LayoutOrder"] = 1, ["Size"]}]
      196 GETIMPORT                        R26 K65 [Enum.AutomaticSize.Y]
      198 SETTABLEKS                       R26 R25 K58 ["AutomaticSize"]
      200 LOADK                            R28 K66 ["Properties"]
      201 MOVE                             R29 R10
      202 NAMECALL                         R26 R2 K26 ["getText"]
      204 CALL                             R26 3 1
      205 SETTABLEKS                       R26 R25 K23 ["Text"]
      207 GETIMPORT                        R26 K67 [Enum.TextXAlignment.Left]
      209 SETTABLEKS                       R26 R25 K61 ["TextXAlignment"]
      211 GETIMPORT                        R26 K35 [UDim2.new]
      213 LOADK                            R27 K68 [0.5]
      214 MINUS                            R28 R17
      215 LOADN                            R29 0
      216 LOADN                            R30 0
      217 CALL                             R26 4 1
      218 SETTABLEKS                       R26 R25 K29 ["Size"]
      220 MOVE                             R26 R18
      221 CALL                             R23 3 1
      222 SETTABLEKS                       R23 R22 K45 ["Label"]
      224 GETUPVAL                         R23 4
      225 GETTABLEKS                       R23 R23 K22 ["createElement"]
      227 MOVE                             R24 R14
      228 DUPTABLE                         R25 K76 [{["DependentValues"], ["Editable"], ["LayoutOrder"] = 2, ["Name"], ["OnSelectItem"], ["OnSetItem"], ["OnToggleItem"], ["Size"], ["Value"], ["Localization"], ["PropertyMetadata"], ["AllowPickFile"], ["Instance"], ["AssetImportSession"]}]
      229 SETTABLEKS                       R13 R25 K69 ["DependentValues"]
      231 SETTABLEKS                       R9 R25 K15 ["Editable"]
      233 SETTABLEKS                       R10 R25 K9 ["Name"]
      235 GETTABLEKS                       R26 R0 K77 ["onSelectItem"]
      237 SETTABLEKS                       R26 R25 K71 ["OnSelectItem"]
      239 GETTABLEKS                       R26 R0 K78 ["onSetItem"]
      241 SETTABLEKS                       R26 R25 K72 ["OnSetItem"]
      243 GETTABLEKS                       R26 R0 K79 ["onToggleItem"]
      245 SETTABLEKS                       R26 R25 K73 ["OnToggleItem"]
      247 GETIMPORT                        R26 K35 [UDim2.new]
      249 LOADK                            R27 K68 [0.5]
      250 GETTABLEKS                       R29 R3 K19 ["PropertyView"]
      252 GETTABLEKS                       R29 R29 K36 ["ScrollBarOffset"]
      254 MINUS                            R28 R29
      255 LOADN                            R29 0
      256 GETTABLEKS                       R30 R3 K19 ["PropertyView"]
      258 GETTABLEKS                       R30 R30 K80 ["EditorHeight"]
      260 CALL                             R26 4 1
      261 SETTABLEKS                       R26 R25 K29 ["Size"]
      263 SETTABLEKS                       R12 R25 K74 ["Value"]
      265 SETTABLEKS                       R2 R25 K1 ["Localization"]
      267 SETTABLEKS                       R4 R25 K3 ["PropertyMetadata"]
      269 SETTABLEKS                       R11 R25 K16 ["AllowPickFile"]
      271 SETTABLEKS                       R5 R25 K4 ["Instance"]
      273 GETTABLEKS                       R26 R0 K0 ["props"]
      275 GETTABLEKS                       R26 R26 K75 ["AssetImportSession"]
      277 SETTABLEKS                       R26 R25 K75 ["AssetImportSession"]
      279 CALL                             R23 2 1
      280 SETTABLEKS                       R23 R22 K46 ["Editor"]
      282 CALL                             R19 3 -1
      283 RETURN                           R19 -1

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
      114 GETIMPORT                        R22 K5 [require]
      116 GETTABLEKS                       R23 R0 K19 ["Src"]
      118 GETTABLEKS                       R23 R23 K34 ["Flags"]
      120 GETTABLEKS                       R23 R23 K35 ["getFFlagMeshImporterStudsPerMeterUseNewValue"]
      122 CALL                             R22 1 1
      123 GETIMPORT                        R23 K5 [require]
      125 GETTABLEKS                       R24 R0 K19 ["Src"]
      127 GETTABLEKS                       R24 R24 K34 ["Flags"]
      129 GETTABLEKS                       R24 R24 K36 ["getFFlagShowScaleUnitChangeWarnings"]
      131 CALL                             R23 1 1
      132 GETTABLEKS                       R24 R1 K37 ["PureComponent"]
      134 LOADK                            R26 K38 ["PropertyView"]
      135 NAMECALL                         R24 R24 K39 ["extend"]
      137 CALL                             R24 2 1
      138 DUPCLOSURE                       R25 K40 [PROTO_0]
      139 DUPCLOSURE                       R26 K41 [PROTO_1]
      140 DUPCLOSURE                       R27 K42 [PROTO_3]
      141 CAPTURE                          VAL R25
      142 SETTABLEKS                       R27 R24 K43 ["_connect"]
      144 DUPCLOSURE                       R27 K44 [PROTO_4]
      145 SETTABLEKS                       R27 R24 K45 ["_disconnect"]
      147 NEWTABLE                         R27 0 2
      149 LOADK                            R28 K46 ["ImportName"]
      150 LOADK                            R29 K47 ["PreferredUploadId"]
      151 SETLIST                          R27 R28 2 [1]
      153 DUPCLOSURE                       R28 K48 [PROTO_9]
      154 CAPTURE                          VAL R19
      155 CAPTURE                          VAL R27
      156 CAPTURE                          VAL R25
      157 SETTABLEKS                       R28 R24 K49 ["init"]
      159 DUPCLOSURE                       R28 K50 [PROTO_10]
      160 SETTABLEKS                       R28 R24 K51 ["didMount"]
      162 DUPCLOSURE                       R28 K52 [PROTO_11]
      163 SETTABLEKS                       R28 R24 K53 ["willUnmount"]
      165 DUPCLOSURE                       R28 K54 [PROTO_12]
      166 SETTABLEKS                       R28 R24 K55 ["didUpdate"]
      168 DUPCLOSURE                       R28 K56 [PROTO_13]
      169 CAPTURE                          VAL R25
      170 SETTABLEKS                       R28 R24 K57 ["getDerivedStateFromProps"]
      172 DUPCLOSURE                       R28 K58 [PROTO_14]
      173 CAPTURE                          VAL R23
      174 CAPTURE                          VAL R22
      175 CAPTURE                          VAL R25
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R1
      178 CAPTURE                          VAL R12
      179 CAPTURE                          VAL R10
      180 CAPTURE                          VAL R13
      181 CAPTURE                          VAL R11
      182 SETTABLEKS                       R28 R24 K59 ["render"]
      184 DUPCLOSURE                       R28 K60 [PROTO_15]
      185 CAPTURE                          VAL R16
      186 SETTABLEKS                       R28 R24 K61 ["shouldUpdate"]
      188 MOVE                             R28 R6
      189 DUPTABLE                         R29 K62 [{"Localization", "Stylizer"}]
      190 SETTABLEKS                       R7 R29 K13 ["Localization"]
      192 SETTABLEKS                       R8 R29 K14 ["Stylizer"]
      194 CALL                             R28 1 1
      195 MOVE                             R29 R24
      196 CALL                             R28 1 1
      197 MOVE                             R24 R28
      198 DUPCLOSURE                       R28 K63 [PROTO_16]
      199 DUPCLOSURE                       R29 K64 [PROTO_20]
      200 CAPTURE                          VAL R14
      201 CAPTURE                          VAL R20
      202 CAPTURE                          VAL R15
      203 GETTABLEKS                       R30 R2 K65 ["connect"]
      205 MOVE                             R31 R28
      206 MOVE                             R32 R29
      207 CALL                             R30 2 1
      208 MOVE                             R31 R24
      209 CALL                             R30 1 -1
      210 RETURN                           R30 -1
