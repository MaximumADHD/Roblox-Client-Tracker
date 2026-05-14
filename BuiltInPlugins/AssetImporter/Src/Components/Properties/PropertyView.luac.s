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
       41 DUPTABLE                         R4 K11 [{"settingsChanged"}]
       42 LOADB                            R5 1
       43 SETTABLEKS                       R5 R4 K10 ["settingsChanged"]
       45 CALL                             R2 2 0
       46 GETTABLEKS                       R2 R0 K12 ["OnInteract"]
       48 CALL                             R2 0 0
       49 GETUPVAL                         R2 0
       50 NEWTABLE                         R4 0 0
       52 NAMECALL                         R2 R2 K13 ["setState"]
       54 CALL                             R2 2 0
       55 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["PropertyMetadata"]
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 JUMPIF                           R3 ; [+19]
        8 GETTABLEKS                       R3 R2 K2 ["Name"]
       10 JUMPIFNOTEQKS                    R3 K3 ["ImportName"] ; [+16]
       12 GETTABLEKS                       R3 R1 K4 ["Instance"]
       14 GETTABLEKS                       R3 R3 K3 ["ImportName"]
       16 JUMPIFEQ                         R3 R0 ; [+10]
       18 GETTABLEKS                       R3 R1 K5 ["UpdateQueueItem"]
       20 GETTABLEKS                       R4 R1 K6 ["ActiveQueueItem"]
       22 DUPTABLE                         R5 K8 [{"settingsChanged"}]
       23 LOADB                            R6 1
       24 SETTABLEKS                       R6 R5 K7 ["settingsChanged"]
       26 CALL                             R3 2 0
       27 GETTABLEKS                       R4 R1 K4 ["Instance"]
       29 GETTABLEKS                       R5 R2 K2 ["Name"]
       31 GETTABLE                         R3 R4 R5
       32 GETTABLEKS                       R4 R1 K4 ["Instance"]
       34 GETTABLEKS                       R5 R2 K2 ["Name"]
       36 SETTABLE                         R0 R4 R5
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K0 ["props"]
       40 GETTABLEKS                       R4 R4 K9 ["UpdatePreviewInstance"]
       42 GETUPVAL                         R5 0
       43 GETTABLEKS                       R5 R5 K0 ["props"]
       45 GETTABLEKS                       R5 R5 K4 ["Instance"]
       47 NAMECALL                         R5 R5 K10 ["GetPreview"]
       49 CALL                             R5 1 -1
       50 CALL                             R4 -1 0
       51 GETUPVAL                         R4 1
       52 CALL                             R4 0 1
       53 JUMPIFNOT                        R4 ; [+18]
       54 GETIMPORT                        R4 K13 [table.find]
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R6 R2 K2 ["Name"]
       59 CALL                             R4 2 1
       60 JUMPIFNOT                        R4 ; [+11]
       61 JUMPIFEQ                         R3 R0 ; [+10]
       63 GETTABLEKS                       R4 R1 K5 ["UpdateQueueItem"]
       65 GETTABLEKS                       R5 R1 K6 ["ActiveQueueItem"]
       67 DUPTABLE                         R6 K8 [{"settingsChanged"}]
       68 LOADB                            R7 1
       69 SETTABLEKS                       R7 R6 K7 ["settingsChanged"]
       71 CALL                             R4 2 0
       72 GETTABLEKS                       R4 R1 K14 ["SetErrorNodeChecked"]
       74 GETUPVAL                         R5 3
       75 GETTABLEKS                       R6 R1 K15 ["ImportTree"]
       77 CALL                             R5 1 -1
       78 CALL                             R4 -1 0
       79 GETTABLEKS                       R4 R1 K16 ["OnInteract"]
       81 CALL                             R4 0 0
       82 RETURN                           R0 0

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
       51 DUPTABLE                         R6 K12 [{"settingsChanged"}]
       52 LOADB                            R7 1
       53 SETTABLEKS                       R7 R6 K11 ["settingsChanged"]
       55 CALL                             R4 2 0
       56 GETTABLEKS                       R4 R1 K13 ["OnInteract"]
       58 CALL                             R4 0 0
       59 RETURN                           R0 0

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
       10 CAPTURE                          UPVAL U2
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R2 R0 K1 ["onSetItem"]
       14 NEWCLOSURE                       R2 P3
       15 CAPTURE                          VAL R0
       16 CAPTURE                          UPVAL U0
       17 SETTABLEKS                       R2 R0 K2 ["onSelectItem"]
       19 DUPTABLE                         R4 K5 [{"value", "dependencies"}]
       20 GETTABLEKS                       R6 R0 K6 ["props"]
       22 GETTABLEKS                       R6 R6 K7 ["Instance"]
       24 GETTABLEKS                       R7 R0 K6 ["props"]
       26 GETTABLEKS                       R7 R7 K8 ["PropertyMetadata"]
       28 GETTABLEKS                       R7 R7 K9 ["Name"]
       30 GETTABLE                         R5 R6 R7
       31 SETTABLEKS                       R5 R4 K3 ["value"]
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R6 R0 K6 ["props"]
       36 GETTABLEKS                       R6 R6 K7 ["Instance"]
       38 GETTABLEKS                       R7 R0 K6 ["props"]
       40 GETTABLEKS                       R7 R7 K8 ["PropertyMetadata"]
       42 GETTABLEKS                       R7 R7 K10 ["Dependencies"]
       44 CALL                             R5 2 1
       45 SETTABLEKS                       R5 R4 K4 ["dependencies"]
       47 NAMECALL                         R2 R0 K11 ["setState"]
       49 CALL                             R2 2 0
       50 RETURN                           R0 0

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
      147 DUPTABLE                         R25 K49 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Padding"}]
      148 GETIMPORT                        R26 K43 [Enum.HorizontalAlignment.Left]
      150 SETTABLEKS                       R26 R25 K31 ["HorizontalAlignment"]
      152 GETIMPORT                        R26 K41 [Enum.FillDirection.Horizontal]
      154 SETTABLEKS                       R26 R25 K30 ["Layout"]
      156 LOADN                            R26 3
      157 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      159 GETIMPORT                        R26 K35 [UDim2.new]
      161 LOADN                            R27 0
      162 MOVE                             R28 R17
      163 LOADN                            R29 1
      164 LOADN                            R30 0
      165 CALL                             R26 4 1
      166 SETTABLEKS                       R26 R25 K29 ["Size"]
      168 DUPTABLE                         R26 K50 [{"Left"}]
      169 SETTABLEKS                       R16 R26 K42 ["Left"]
      171 SETTABLEKS                       R26 R25 K48 ["Padding"]
      173 DUPTABLE                         R26 K52 [{"Icon"}]
      174 JUMPIFNOT                        R6 ; [+13]
      175 GETUPVAL                         R27 4
      176 GETTABLEKS                       R27 R27 K22 ["createElement"]
      178 GETUPVAL                         R28 7
      179 DUPTABLE                         R29 K56 [{"StatusLevel", "StatusMessage", "StatusContext"}]
      180 SETTABLEKS                       R6 R29 K53 ["StatusLevel"]
      182 SETTABLEKS                       R7 R29 K54 ["StatusMessage"]
      184 SETTABLEKS                       R8 R29 K55 ["StatusContext"]
      186 CALL                             R27 2 1
      187 JUMP                             ; [+1]
      188 LOADNIL                          R27
      189 SETTABLEKS                       R27 R26 K51 ["Icon"]
      191 CALL                             R23 3 1
      192 SETTABLEKS                       R23 R22 K44 ["StatusArea"]
      194 GETUPVAL                         R23 4
      195 GETTABLEKS                       R23 R23 K22 ["createElement"]
      197 GETUPVAL                         R24 8
      198 DUPTABLE                         R25 K60 [{"AutomaticSize", "Text", "TextWrapped", "TextXAlignment", "LayoutOrder", "Size"}]
      199 GETIMPORT                        R26 K62 [Enum.AutomaticSize.Y]
      201 SETTABLEKS                       R26 R25 K57 ["AutomaticSize"]
      203 LOADK                            R28 K63 ["Properties"]
      204 MOVE                             R29 R10
      205 NAMECALL                         R26 R2 K26 ["getText"]
      207 CALL                             R26 3 1
      208 SETTABLEKS                       R26 R25 K23 ["Text"]
      210 LOADB                            R26 0
      211 SETTABLEKS                       R26 R25 K58 ["TextWrapped"]
      213 GETIMPORT                        R26 K64 [Enum.TextXAlignment.Left]
      215 SETTABLEKS                       R26 R25 K59 ["TextXAlignment"]
      217 LOADN                            R26 1
      218 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      220 GETIMPORT                        R26 K35 [UDim2.new]
      222 LOADK                            R27 K65 [0.5]
      223 MINUS                            R28 R17
      224 LOADN                            R29 0
      225 LOADN                            R30 0
      226 CALL                             R26 4 1
      227 SETTABLEKS                       R26 R25 K29 ["Size"]
      229 MOVE                             R26 R18
      230 CALL                             R23 3 1
      231 SETTABLEKS                       R23 R22 K45 ["Label"]
      233 GETUPVAL                         R23 4
      234 GETTABLEKS                       R23 R23 K22 ["createElement"]
      236 MOVE                             R24 R14
      237 DUPTABLE                         R25 K72 [{"DependentValues", "Editable", "LayoutOrder", "Name", "OnSelectItem", "OnSetItem", "OnToggleItem", "Size", "Value", "Localization", "PropertyMetadata", "AllowPickFile", "Instance", "AssetImportSession"}]
      238 SETTABLEKS                       R13 R25 K66 ["DependentValues"]
      240 SETTABLEKS                       R9 R25 K15 ["Editable"]
      242 LOADN                            R26 2
      243 SETTABLEKS                       R26 R25 K28 ["LayoutOrder"]
      245 SETTABLEKS                       R10 R25 K9 ["Name"]
      247 GETTABLEKS                       R26 R0 K73 ["onSelectItem"]
      249 SETTABLEKS                       R26 R25 K67 ["OnSelectItem"]
      251 GETTABLEKS                       R26 R0 K74 ["onSetItem"]
      253 SETTABLEKS                       R26 R25 K68 ["OnSetItem"]
      255 GETTABLEKS                       R26 R0 K75 ["onToggleItem"]
      257 SETTABLEKS                       R26 R25 K69 ["OnToggleItem"]
      259 GETIMPORT                        R26 K35 [UDim2.new]
      261 LOADK                            R27 K65 [0.5]
      262 GETTABLEKS                       R29 R3 K19 ["PropertyView"]
      264 GETTABLEKS                       R29 R29 K36 ["ScrollBarOffset"]
      266 MINUS                            R28 R29
      267 LOADN                            R29 0
      268 GETTABLEKS                       R30 R3 K19 ["PropertyView"]
      270 GETTABLEKS                       R30 R30 K76 ["EditorHeight"]
      272 CALL                             R26 4 1
      273 SETTABLEKS                       R26 R25 K29 ["Size"]
      275 SETTABLEKS                       R12 R25 K70 ["Value"]
      277 SETTABLEKS                       R2 R25 K1 ["Localization"]
      279 SETTABLEKS                       R4 R25 K3 ["PropertyMetadata"]
      281 SETTABLEKS                       R11 R25 K16 ["AllowPickFile"]
      283 SETTABLEKS                       R5 R25 K4 ["Instance"]
      285 GETTABLEKS                       R26 R0 K0 ["props"]
      287 GETTABLEKS                       R26 R26 K71 ["AssetImportSession"]
      289 SETTABLEKS                       R26 R25 K71 ["AssetImportSession"]
      291 CALL                             R23 2 1
      292 SETTABLEKS                       R23 R22 K46 ["Editor"]
      294 CALL                             R19 3 -1
      295 RETURN                           R19 -1

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
      120 GETTABLEKS                       R23 R23 K35 ["getFFlagAssetImporterQueueUpdates"]
      122 CALL                             R22 1 1
      123 GETIMPORT                        R23 K5 [require]
      125 GETTABLEKS                       R24 R0 K19 ["Src"]
      127 GETTABLEKS                       R24 R24 K34 ["Flags"]
      129 GETTABLEKS                       R24 R24 K36 ["getFFlagMeshImporterStudsPerMeterUseNewValue"]
      131 CALL                             R23 1 1
      132 GETIMPORT                        R24 K5 [require]
      134 GETTABLEKS                       R25 R0 K19 ["Src"]
      136 GETTABLEKS                       R25 R25 K34 ["Flags"]
      138 GETTABLEKS                       R25 R25 K37 ["getFFlagShowScaleUnitChangeWarnings"]
      140 CALL                             R24 1 1
      141 GETTABLEKS                       R25 R1 K38 ["PureComponent"]
      143 LOADK                            R27 K39 ["PropertyView"]
      144 NAMECALL                         R25 R25 K40 ["extend"]
      146 CALL                             R25 2 1
      147 DUPCLOSURE                       R26 K41 [PROTO_0]
      148 DUPCLOSURE                       R27 K42 [PROTO_1]
      149 DUPCLOSURE                       R28 K43 [PROTO_3]
      150 CAPTURE                          VAL R26
      151 SETTABLEKS                       R28 R25 K44 ["_connect"]
      153 DUPCLOSURE                       R28 K45 [PROTO_4]
      154 SETTABLEKS                       R28 R25 K46 ["_disconnect"]
      156 NEWTABLE                         R28 0 2
      158 LOADK                            R29 K47 ["ImportName"]
      159 LOADK                            R30 K48 ["PreferredUploadId"]
      160 SETLIST                          R28 R29 2 [1]
      162 DUPCLOSURE                       R29 K49 [PROTO_9]
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R22
      165 CAPTURE                          VAL R28
      166 CAPTURE                          VAL R26
      167 SETTABLEKS                       R29 R25 K50 ["init"]
      169 DUPCLOSURE                       R29 K51 [PROTO_10]
      170 SETTABLEKS                       R29 R25 K52 ["didMount"]
      172 DUPCLOSURE                       R29 K53 [PROTO_11]
      173 SETTABLEKS                       R29 R25 K54 ["willUnmount"]
      175 DUPCLOSURE                       R29 K55 [PROTO_12]
      176 SETTABLEKS                       R29 R25 K56 ["didUpdate"]
      178 DUPCLOSURE                       R29 K57 [PROTO_13]
      179 CAPTURE                          VAL R26
      180 SETTABLEKS                       R29 R25 K58 ["getDerivedStateFromProps"]
      182 DUPCLOSURE                       R29 K59 [PROTO_14]
      183 CAPTURE                          VAL R24
      184 CAPTURE                          VAL R23
      185 CAPTURE                          VAL R26
      186 CAPTURE                          VAL R18
      187 CAPTURE                          VAL R1
      188 CAPTURE                          VAL R12
      189 CAPTURE                          VAL R10
      190 CAPTURE                          VAL R13
      191 CAPTURE                          VAL R11
      192 SETTABLEKS                       R29 R25 K60 ["render"]
      194 DUPCLOSURE                       R29 K61 [PROTO_15]
      195 CAPTURE                          VAL R16
      196 SETTABLEKS                       R29 R25 K62 ["shouldUpdate"]
      198 MOVE                             R29 R6
      199 DUPTABLE                         R30 K63 [{"Localization", "Stylizer"}]
      200 SETTABLEKS                       R7 R30 K13 ["Localization"]
      202 SETTABLEKS                       R8 R30 K14 ["Stylizer"]
      204 CALL                             R29 1 1
      205 MOVE                             R30 R25
      206 CALL                             R29 1 1
      207 MOVE                             R25 R29
      208 DUPCLOSURE                       R29 K64 [PROTO_16]
      209 DUPCLOSURE                       R30 K65 [PROTO_20]
      210 CAPTURE                          VAL R14
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R15
      213 GETTABLEKS                       R31 R2 K66 ["connect"]
      215 MOVE                             R32 R29
      216 MOVE                             R33 R30
      217 CALL                             R31 2 1
      218 MOVE                             R32 R25
      219 CALL                             R31 1 -1
      220 RETURN                           R31 -1
