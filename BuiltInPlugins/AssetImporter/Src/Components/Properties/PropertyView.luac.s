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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["PropertyMetadata"]
        3 GETTABLEKS                       R1 R2 K1 ["Name"]
        5 JUMPIFEQ                         R0 R1 ; [+15]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R2 R3 K2 ["state"]
       10 GETTABLEKS                       R1 R2 K3 ["dependencies"]
       12 JUMPIFNOT                        R1 ; [+36]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K2 ["state"]
       16 GETTABLEKS                       R2 R3 K3 ["dependencies"]
       18 GETTABLE                         R1 R2 R0
       19 JUMPIFEQKNIL                     R1 ; [+29]
       21 GETUPVAL                         R1 1
       22 DUPTABLE                         R3 K5 [{"value", "dependencies"}]
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R5 R6 K6 ["Instance"]
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R7 R8 K0 ["PropertyMetadata"]
       29 GETTABLEKS                       R6 R7 K1 ["Name"]
       31 GETTABLE                         R4 R5 R6
       32 SETTABLEKS                       R4 R3 K4 ["value"]
       34 GETUPVAL                         R4 2
       35 GETUPVAL                         R6 0
       36 GETTABLEKS                       R5 R6 K6 ["Instance"]
       38 GETUPVAL                         R8 0
       39 GETTABLEKS                       R7 R8 K0 ["PropertyMetadata"]
       41 GETTABLEKS                       R6 R7 K7 ["Dependencies"]
       43 CALL                             R4 2 1
       44 SETTABLEKS                       R4 R3 K3 ["dependencies"]
       46 NAMECALL                         R1 R1 K8 ["setState"]
       48 CALL                             R1 2 0
       49 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Instance"]
        4 JUMPIFNOT                        R1 ; [+15]
        5 GETTABLEKS                       R1 R0 K0 ["props"]
        7 GETTABLEKS                       R3 R1 K1 ["Instance"]
        9 GETTABLEKS                       R2 R3 K2 ["Changed"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["UpdatePreviewInstance"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["Instance"]
       10 NAMECALL                         R1 R1 K3 ["GetPreview"]
       12 CALL                             R1 1 -1
       13 CALL                             R0 -1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["PropertyMetadata"]
        5 GETTABLEKS                       R2 R0 K2 ["Instance"]
        7 GETTABLEKS                       R3 R1 K3 ["Name"]
        9 GETTABLEKS                       R6 R0 K2 ["Instance"]
       11 GETTABLEKS                       R7 R1 K3 ["Name"]
       13 GETTABLE                         R5 R6 R7
       14 NOT                              R4 R5
       15 SETTABLE                         R4 R2 R3
       16 GETUPVAL                         R4 0
       17 GETTABLEKS                       R3 R4 K0 ["props"]
       19 GETTABLEKS                       R2 R3 K4 ["UpdatePreviewInstance"]
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K0 ["props"]
       24 GETTABLEKS                       R3 R4 K2 ["Instance"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["PropertyMetadata"]
        5 GETTABLEKS                       R3 R2 K2 ["Name"]
        7 JUMPIFNOTEQKS                    R3 K3 ["ImportName"] ; [+16]
        9 GETTABLEKS                       R4 R1 K4 ["Instance"]
       11 GETTABLEKS                       R3 R4 K3 ["ImportName"]
       13 JUMPIFEQ                         R3 R0 ; [+10]
       15 GETTABLEKS                       R3 R1 K5 ["UpdateQueueItem"]
       17 GETTABLEKS                       R4 R1 K6 ["ActiveQueueItem"]
       19 DUPTABLE                         R5 K8 [{"settingsChanged"}]
       20 LOADB                            R6 1
       21 SETTABLEKS                       R6 R5 K7 ["settingsChanged"]
       23 CALL                             R3 2 0
       24 GETTABLEKS                       R3 R1 K4 ["Instance"]
       26 GETTABLEKS                       R4 R2 K2 ["Name"]
       28 SETTABLE                         R0 R3 R4
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R4 R5 K0 ["props"]
       32 GETTABLEKS                       R3 R4 K9 ["UpdatePreviewInstance"]
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R5 R6 K0 ["props"]
       37 GETTABLEKS                       R4 R5 K4 ["Instance"]
       39 NAMECALL                         R4 R4 K10 ["GetPreview"]
       41 CALL                             R4 1 -1
       42 CALL                             R3 -1 0
       43 GETTABLEKS                       R3 R1 K11 ["SetErrorNodeChecked"]
       45 GETUPVAL                         R4 1
       46 GETTABLEKS                       R5 R1 K12 ["ImportTree"]
       48 CALL                             R4 1 -1
       49 CALL                             R3 -1 0
       50 GETTABLEKS                       R3 R1 K13 ["OnInteract"]
       52 CALL                             R3 0 0
       53 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["PropertyMetadata"]
        5 GETTABLEKS                       R6 R1 K2 ["Instance"]
        7 GETTABLEKS                       R7 R2 K3 ["Name"]
        9 GETTABLE                         R5 R6 R7
       10 GETTABLEKS                       R4 R5 K4 ["EnumType"]
       12 GETTABLE                         R3 R4 R0
       13 GETTABLEKS                       R5 R1 K2 ["Instance"]
       15 GETTABLEKS                       R6 R2 K3 ["Name"]
       17 GETTABLE                         R4 R5 R6
       18 JUMPIFNOTEQ                      R3 R4 ; [+2]
       20 RETURN                           R0 0
       21 GETTABLEKS                       R4 R1 K2 ["Instance"]
       23 GETTABLEKS                       R5 R2 K3 ["Name"]
       25 SETTABLE                         R3 R4 R5
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R5 R6 K0 ["props"]
       29 GETTABLEKS                       R4 R5 K5 ["UpdatePreviewInstance"]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K0 ["props"]
       34 GETTABLEKS                       R5 R6 K2 ["Instance"]
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
        9 CAPTURE                          UPVAL U0
       10 SETTABLEKS                       R2 R0 K1 ["onSetItem"]
       12 NEWCLOSURE                       R2 P3
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U0
       15 SETTABLEKS                       R2 R0 K2 ["onSelectItem"]
       17 DUPTABLE                         R4 K5 [{"value", "dependencies"}]
       18 GETTABLEKS                       R7 R0 K6 ["props"]
       20 GETTABLEKS                       R6 R7 K7 ["Instance"]
       22 GETTABLEKS                       R9 R0 K6 ["props"]
       24 GETTABLEKS                       R8 R9 K8 ["PropertyMetadata"]
       26 GETTABLEKS                       R7 R8 K9 ["Name"]
       28 GETTABLE                         R5 R6 R7
       29 SETTABLEKS                       R5 R4 K3 ["value"]
       31 GETUPVAL                         R5 1
       32 GETTABLEKS                       R7 R0 K6 ["props"]
       34 GETTABLEKS                       R6 R7 K7 ["Instance"]
       36 GETTABLEKS                       R9 R0 K6 ["props"]
       38 GETTABLEKS                       R8 R9 K8 ["PropertyMetadata"]
       40 GETTABLEKS                       R7 R8 K10 ["Dependencies"]
       42 CALL                             R5 2 1
       43 SETTABLEKS                       R5 R4 K4 ["dependencies"]
       45 NAMECALL                         R2 R0 K11 ["setState"]
       47 CALL                             R2 2 0
       48 RETURN                           R0 0

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
        2 GETTABLEKS                       R5 R0 K1 ["props"]
        4 GETTABLEKS                       R4 R5 K0 ["Instance"]
        6 JUMPIFEQ                         R3 R4 ; [+7]
        8 NAMECALL                         R3 R0 K2 ["_disconnect"]
       10 CALL                             R3 1 0
       11 NAMECALL                         R3 R0 K3 ["_connect"]
       13 CALL                             R3 1 0
       14 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R2 K2 [{"value", "dependencies"}]
        1 GETTABLEKS                       R4 R0 K3 ["Instance"]
        3 GETTABLEKS                       R6 R0 K4 ["PropertyMetadata"]
        5 GETTABLEKS                       R5 R6 K5 ["Name"]
        7 GETTABLE                         R3 R4 R5
        8 SETTABLEKS                       R3 R2 K0 ["value"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R4 R0 K3 ["Instance"]
       13 GETTABLEKS                       R6 R0 K4 ["PropertyMetadata"]
       15 GETTABLEKS                       R5 R6 K6 ["Dependencies"]
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
       28 GETTABLEKS                       R9 R4 K9 ["Editable"]
       30 GETTABLEKS                       R10 R4 K10 ["Name"]
       32 GETTABLEKS                       R11 R4 K11 ["AllowPickFile"]
       34 GETTABLE                         R12 R5 R10
       35 LOADNIL                          R13
       36 GETTABLEKS                       R14 R4 K12 ["Dependencies"]
       38 JUMPIFNOT                        R14 ; [+6]
       39 GETUPVAL                         R14 0
       40 MOVE                             R15 R5
       41 GETTABLEKS                       R16 R4 K12 ["Dependencies"]
       43 CALL                             R14 2 1
       44 MOVE                             R13 R14
       45 LOADNIL                          R14
       46 GETTABLEKS                       R15 R4 K13 ["ComponentFactory"]
       48 JUMPIFNOT                        R15 ; [+3]
       49 GETTABLEKS                       R14 R4 K13 ["ComponentFactory"]
       51 JUMP                             ; [+4]
       52 GETUPVAL                         R15 1
       53 MOVE                             R16 R12
       54 CALL                             R15 1 1
       55 MOVE                             R14 R15
       56 GETTABLEKS                       R16 R3 K14 ["PropertyView"]
       58 GETTABLEKS                       R15 R16 K15 ["IconSize"]
       60 GETTABLEKS                       R17 R3 K14 ["PropertyView"]
       62 GETTABLEKS                       R16 R17 K16 ["Spacing"]
       64 ADD                              R17 R15 R16
       65 NEWTABLE                         R18 1 0
       67 GETUPVAL                         R19 2
       68 CALL                             R19 0 1
       69 JUMPIF                           R19 ; [+13]
       70 GETTABLEKS                       R19 R4 K17 ["Callouts"]
       72 JUMPIFNOT                        R19 ; [+10]
       73 GETUPVAL                         R19 3
       74 GETTABLEKS                       R20 R4 K17 ["Callouts"]
       76 MOVE                             R21 R10
       77 GETTABLEKS                       R23 R0 K0 ["props"]
       79 GETTABLEKS                       R22 R23 K18 ["AssetImportSession"]
       81 CALL                             R19 3 1
       82 MOVE                             R18 R19
       83 GETUPVAL                         R20 4
       84 GETTABLEKS                       R19 R20 K19 ["createElement"]
       86 GETUPVAL                         R20 5
       87 DUPTABLE                         R21 K21 [{"Text"}]
       88 LOADK                            R24 K22 ["PropertiesTooltip"]
       89 MOVE                             R25 R10
       90 NAMECALL                         R22 R2 K23 ["getText"]
       92 CALL                             R22 3 1
       93 SETTABLEKS                       R22 R21 K20 ["Text"]
       95 CALL                             R19 2 1
       96 SETTABLEKS                       R19 R18 K24 ["Tooltip"]
       98 GETUPVAL                         R20 4
       99 GETTABLEKS                       R19 R20 K19 ["createElement"]
      101 GETUPVAL                         R20 6
      102 DUPTABLE                         R21 K29 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "Spacing"}]
      103 GETTABLEKS                       R22 R1 K25 ["LayoutOrder"]
      105 SETTABLEKS                       R22 R21 K25 ["LayoutOrder"]
      107 GETIMPORT                        R22 K32 [UDim2.new]
      109 LOADN                            R23 1
      110 GETTABLEKS                       R26 R3 K14 ["PropertyView"]
      112 GETTABLEKS                       R25 R26 K33 ["ScrollBarOffset"]
      114 MINUS                            R24 R25
      115 LOADN                            R25 0
      116 GETTABLEKS                       R27 R3 K14 ["PropertyView"]
      118 GETTABLEKS                       R26 R27 K34 ["Height"]
      120 CALL                             R22 4 1
      121 SETTABLEKS                       R22 R21 K26 ["Size"]
      123 GETIMPORT                        R22 K38 [Enum.FillDirection.Horizontal]
      125 SETTABLEKS                       R22 R21 K27 ["Layout"]
      127 GETIMPORT                        R22 K40 [Enum.HorizontalAlignment.Left]
      129 SETTABLEKS                       R22 R21 K28 ["HorizontalAlignment"]
      131 SETTABLEKS                       R16 R21 K16 ["Spacing"]
      133 DUPTABLE                         R22 K44 [{"StatusArea", "Label", "Editor"}]
      134 GETUPVAL                         R24 4
      135 GETTABLEKS                       R23 R24 K19 ["createElement"]
      137 GETUPVAL                         R24 6
      138 DUPTABLE                         R25 K46 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size", "Padding"}]
      139 GETIMPORT                        R26 K40 [Enum.HorizontalAlignment.Left]
      141 SETTABLEKS                       R26 R25 K28 ["HorizontalAlignment"]
      143 GETIMPORT                        R26 K38 [Enum.FillDirection.Horizontal]
      145 SETTABLEKS                       R26 R25 K27 ["Layout"]
      147 LOADN                            R26 3
      148 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      150 GETIMPORT                        R26 K32 [UDim2.new]
      152 LOADN                            R27 0
      153 MOVE                             R28 R17
      154 LOADN                            R29 1
      155 LOADN                            R30 0
      156 CALL                             R26 4 1
      157 SETTABLEKS                       R26 R25 K26 ["Size"]
      159 DUPTABLE                         R26 K47 [{"Left"}]
      160 SETTABLEKS                       R16 R26 K39 ["Left"]
      162 SETTABLEKS                       R26 R25 K45 ["Padding"]
      164 DUPTABLE                         R26 K49 [{"Icon"}]
      165 JUMPIFNOT                        R6 ; [+13]
      166 GETUPVAL                         R28 4
      167 GETTABLEKS                       R27 R28 K19 ["createElement"]
      169 GETUPVAL                         R28 7
      170 DUPTABLE                         R29 K53 [{"StatusLevel", "StatusMessage", "StatusContext"}]
      171 SETTABLEKS                       R6 R29 K50 ["StatusLevel"]
      173 SETTABLEKS                       R7 R29 K51 ["StatusMessage"]
      175 SETTABLEKS                       R8 R29 K52 ["StatusContext"]
      177 CALL                             R27 2 1
      178 JUMP                             ; [+1]
      179 LOADNIL                          R27
      180 SETTABLEKS                       R27 R26 K48 ["Icon"]
      182 CALL                             R23 3 1
      183 SETTABLEKS                       R23 R22 K41 ["StatusArea"]
      185 GETUPVAL                         R24 4
      186 GETTABLEKS                       R23 R24 K19 ["createElement"]
      188 GETUPVAL                         R24 8
      189 DUPTABLE                         R25 K57 [{"AutomaticSize", "Text", "TextWrapped", "TextXAlignment", "LayoutOrder", "Size"}]
      190 GETIMPORT                        R26 K59 [Enum.AutomaticSize.Y]
      192 SETTABLEKS                       R26 R25 K54 ["AutomaticSize"]
      194 LOADK                            R28 K60 ["Properties"]
      195 MOVE                             R29 R10
      196 NAMECALL                         R26 R2 K23 ["getText"]
      198 CALL                             R26 3 1
      199 SETTABLEKS                       R26 R25 K20 ["Text"]
      201 LOADB                            R26 0
      202 SETTABLEKS                       R26 R25 K55 ["TextWrapped"]
      204 GETIMPORT                        R26 K61 [Enum.TextXAlignment.Left]
      206 SETTABLEKS                       R26 R25 K56 ["TextXAlignment"]
      208 LOADN                            R26 1
      209 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      211 GETIMPORT                        R26 K32 [UDim2.new]
      213 LOADK                            R27 K62 [0.5]
      214 MINUS                            R28 R17
      215 LOADN                            R29 0
      216 LOADN                            R30 0
      217 CALL                             R26 4 1
      218 SETTABLEKS                       R26 R25 K26 ["Size"]
      220 MOVE                             R26 R18
      221 CALL                             R23 3 1
      222 SETTABLEKS                       R23 R22 K42 ["Label"]
      224 GETUPVAL                         R24 4
      225 GETTABLEKS                       R23 R24 K19 ["createElement"]
      227 MOVE                             R24 R14
      228 DUPTABLE                         R25 K68 [{"DependentValues", "Editable", "LayoutOrder", "Name", "OnSelectItem", "OnSetItem", "OnToggleItem", "Size", "Value", "Localization", "PropertyMetadata", "AllowPickFile", "Instance", "AssetImportSession"}]
      229 SETTABLEKS                       R13 R25 K63 ["DependentValues"]
      231 SETTABLEKS                       R9 R25 K9 ["Editable"]
      233 LOADN                            R26 2
      234 SETTABLEKS                       R26 R25 K25 ["LayoutOrder"]
      236 SETTABLEKS                       R10 R25 K10 ["Name"]
      238 GETTABLEKS                       R26 R0 K69 ["onSelectItem"]
      240 SETTABLEKS                       R26 R25 K64 ["OnSelectItem"]
      242 GETTABLEKS                       R26 R0 K70 ["onSetItem"]
      244 SETTABLEKS                       R26 R25 K65 ["OnSetItem"]
      246 GETTABLEKS                       R26 R0 K71 ["onToggleItem"]
      248 SETTABLEKS                       R26 R25 K66 ["OnToggleItem"]
      250 GETIMPORT                        R26 K32 [UDim2.new]
      252 LOADK                            R27 K62 [0.5]
      253 GETTABLEKS                       R30 R3 K14 ["PropertyView"]
      255 GETTABLEKS                       R29 R30 K33 ["ScrollBarOffset"]
      257 MINUS                            R28 R29
      258 LOADN                            R29 0
      259 GETTABLEKS                       R31 R3 K14 ["PropertyView"]
      261 GETTABLEKS                       R30 R31 K72 ["EditorHeight"]
      263 CALL                             R26 4 1
      264 SETTABLEKS                       R26 R25 K26 ["Size"]
      266 SETTABLEKS                       R12 R25 K67 ["Value"]
      268 SETTABLEKS                       R2 R25 K1 ["Localization"]
      270 SETTABLEKS                       R4 R25 K3 ["PropertyMetadata"]
      272 SETTABLEKS                       R11 R25 K11 ["AllowPickFile"]
      274 SETTABLEKS                       R5 R25 K4 ["Instance"]
      276 GETTABLEKS                       R27 R0 K0 ["props"]
      278 GETTABLEKS                       R26 R27 K18 ["AssetImportSession"]
      280 SETTABLEKS                       R26 R25 K18 ["AssetImportSession"]
      282 CALL                             R23 2 1
      283 SETTABLEKS                       R23 R22 K43 ["Editor"]
      285 CALL                             R19 3 -1
      286 RETURN                           R19 -1

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
        1 GETTABLEKS                       R3 R0 K4 ["Preview"]
        3 GETTABLEKS                       R2 R3 K5 ["assetImportSession"]
        5 SETTABLEKS                       R2 R1 K0 ["AssetImportSession"]
        7 GETTABLEKS                       R3 R0 K4 ["Preview"]
        9 GETTABLEKS                       R2 R3 K6 ["importTree"]
       11 SETTABLEKS                       R2 R1 K1 ["ImportTree"]
       13 GETTABLEKS                       R3 R0 K4 ["Preview"]
       15 GETTABLEKS                       R2 R3 K7 ["activeQueueItem"]
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
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["Dash"]
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
       53 GETTABLEKS                       R17 R0 K19 ["Src"]
       55 GETTABLEKS                       R16 R17 K20 ["Components"]
       57 GETTABLEKS                       R15 R16 K21 ["Properties"]
       59 GETTABLEKS                       R14 R15 K22 ["PropertyStatus"]
       61 CALL                             R13 1 1
       62 GETIMPORT                        R14 K5 [require]
       64 GETTABLEKS                       R17 R0 K19 ["Src"]
       66 GETTABLEKS                       R16 R17 K23 ["Thunks"]
       68 GETTABLEKS                       R15 R16 K24 ["UpdatePreviewInstance"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K5 [require]
       73 GETTABLEKS                       R18 R0 K19 ["Src"]
       75 GETTABLEKS                       R17 R18 K23 ["Thunks"]
       77 GETTABLEKS                       R16 R17 K25 ["UpdateQueueItem"]
       79 CALL                             R15 1 1
       80 GETTABLEKS                       R16 R4 K26 ["shallowEqual"]
       82 GETTABLEKS                       R18 R0 K19 ["Src"]
       84 GETTABLEKS                       R17 R18 K27 ["Utility"]
       86 GETIMPORT                        R18 K5 [require]
       88 GETTABLEKS                       R19 R17 K28 ["createCalloutComponents"]
       90 CALL                             R18 1 1
       91 GETIMPORT                        R19 K5 [require]
       93 GETTABLEKS                       R20 R17 K29 ["GetEditorFromType"]
       95 CALL                             R19 1 1
       96 GETIMPORT                        R20 K5 [require]
       98 GETTABLEKS                       R21 R17 K30 ["GetErrorChecked"]
      100 CALL                             R20 1 1
      101 GETIMPORT                        R21 K5 [require]
      103 GETTABLEKS                       R24 R0 K19 ["Src"]
      105 GETTABLEKS                       R23 R24 K31 ["Actions"]
      107 GETTABLEKS                       R22 R23 K32 ["SetErrorNodeChecked"]
      109 CALL                             R21 1 1
      110 GETIMPORT                        R22 K5 [require]
      112 GETTABLEKS                       R25 R0 K19 ["Src"]
      114 GETTABLEKS                       R24 R25 K33 ["Types"]
      116 GETTABLEKS                       R23 R24 K34 ["QueuedSession"]
      118 CALL                             R22 1 1
      119 GETIMPORT                        R23 K5 [require]
      121 GETTABLEKS                       R26 R0 K19 ["Src"]
      123 GETTABLEKS                       R25 R26 K35 ["Flags"]
      125 GETTABLEKS                       R24 R25 K36 ["getFFlagUnlinkImporterAndAvatarPreview"]
      127 CALL                             R23 1 1
      128 GETTABLEKS                       R24 R1 K37 ["PureComponent"]
      130 LOADK                            R26 K38 ["PropertyView"]
      131 NAMECALL                         R24 R24 K39 ["extend"]
      133 CALL                             R24 2 1
      134 DUPCLOSURE                       R25 K40 [PROTO_0]
      135 DUPCLOSURE                       R26 K41 [PROTO_1]
      136 DUPCLOSURE                       R27 K42 [PROTO_3]
      137 CAPTURE                          VAL R25
      138 SETTABLEKS                       R27 R24 K43 ["_connect"]
      140 DUPCLOSURE                       R27 K44 [PROTO_4]
      141 SETTABLEKS                       R27 R24 K45 ["_disconnect"]
      143 DUPCLOSURE                       R27 K46 [PROTO_9]
      144 CAPTURE                          VAL R20
      145 CAPTURE                          VAL R25
      146 SETTABLEKS                       R27 R24 K47 ["init"]
      148 DUPCLOSURE                       R27 K48 [PROTO_10]
      149 SETTABLEKS                       R27 R24 K49 ["didMount"]
      151 DUPCLOSURE                       R27 K50 [PROTO_11]
      152 SETTABLEKS                       R27 R24 K51 ["willUnmount"]
      154 DUPCLOSURE                       R27 K52 [PROTO_12]
      155 SETTABLEKS                       R27 R24 K53 ["didUpdate"]
      157 DUPCLOSURE                       R27 K54 [PROTO_13]
      158 CAPTURE                          VAL R25
      159 SETTABLEKS                       R27 R24 K55 ["getDerivedStateFromProps"]
      161 DUPCLOSURE                       R27 K56 [PROTO_14]
      162 CAPTURE                          VAL R25
      163 CAPTURE                          VAL R19
      164 CAPTURE                          VAL R23
      165 CAPTURE                          VAL R18
      166 CAPTURE                          VAL R1
      167 CAPTURE                          VAL R12
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R13
      170 CAPTURE                          VAL R11
      171 SETTABLEKS                       R27 R24 K57 ["render"]
      173 DUPCLOSURE                       R27 K58 [PROTO_15]
      174 CAPTURE                          VAL R16
      175 SETTABLEKS                       R27 R24 K59 ["shouldUpdate"]
      177 MOVE                             R27 R6
      178 DUPTABLE                         R28 K60 [{"Localization", "Stylizer"}]
      179 SETTABLEKS                       R7 R28 K13 ["Localization"]
      181 SETTABLEKS                       R8 R28 K14 ["Stylizer"]
      183 CALL                             R27 1 1
      184 MOVE                             R28 R24
      185 CALL                             R27 1 1
      186 MOVE                             R24 R27
      187 DUPCLOSURE                       R27 K61 [PROTO_16]
      188 DUPCLOSURE                       R28 K62 [PROTO_20]
      189 CAPTURE                          VAL R14
      190 CAPTURE                          VAL R21
      191 CAPTURE                          VAL R15
      192 GETTABLEKS                       R29 R2 K63 ["connect"]
      194 MOVE                             R30 R27
      195 MOVE                             R31 R28
      196 CALL                             R29 2 1
      197 MOVE                             R30 R24
      198 CALL                             R29 1 -1
      199 RETURN                           R29 -1
