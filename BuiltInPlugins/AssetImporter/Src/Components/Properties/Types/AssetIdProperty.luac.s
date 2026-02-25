PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isFocused"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isFocused"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isFocused"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isFocused"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["state"]
        3 GETTABLEKS                       R2 R3 K1 ["selectedId"]
        5 GETTABLEKS                       R3 R0 K2 ["AssetId"]
        7 JUMPIFNOTEQ                      R2 R3 ; [+9]
        9 GETUPVAL                         R2 0
       10 DUPTABLE                         R4 K3 [{"selectedId"}]
       11 LOADK                            R5 K4 [""]
       12 SETTABLEKS                       R5 R4 K1 ["selectedId"]
       14 NAMECALL                         R2 R2 K5 ["setState"]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 0
       18 DUPTABLE                         R4 K3 [{"selectedId"}]
       19 GETTABLEKS                       R5 R0 K2 ["AssetId"]
       21 SETTABLEKS                       R5 R4 K1 ["selectedId"]
       23 NAMECALL                         R2 R2 K5 ["setState"]
       25 CALL                             R2 2 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K2 [{"isOnDropdown", "dropdownHoveredIndex"}]
        2 LOADB                            R4 1
        3 SETTABLEKS                       R4 R3 K0 ["isOnDropdown"]
        5 SETTABLEKS                       R0 R3 K1 ["dropdownHoveredIndex"]
        7 NAMECALL                         R1 R1 K3 ["setState"]
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{"isOnDropdown", "dropdownHoveredIndex"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isOnDropdown"]
        5 LOADN                            R3 0
        6 SETTABLEKS                       R3 R2 K1 ["dropdownHoveredIndex"]
        8 NAMECALL                         R0 R0 K3 ["setState"]
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K1 ["dispatchSetHasInvalidPackageId"]
        8 NOT                              R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onHoveredItemChanged"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["props"]
        3 GETTABLEKS                       R5 R4 K1 ["Stylizer"]
        5 GETTABLEKS                       R6 R5 K2 ["SuggestionDropdown"]
        7 GETTABLEKS                       R7 R6 K3 ["DropdownHeight"]
        9 GETUPVAL                         R10 0
       10 GETTABLEKS                       R9 R10 K4 ["ref"]
       12 NAMECALL                         R9 R9 K5 ["getValue"]
       14 CALL                             R9 1 1
       15 JUMPIFNOT                        R9 ; [+11]
       16 GETUPVAL                         R11 0
       17 GETTABLEKS                       R10 R11 K4 ["ref"]
       19 NAMECALL                         R10 R10 K5 ["getValue"]
       21 CALL                             R10 1 1
       22 GETTABLEKS                       R9 R10 K6 ["AbsoluteSize"]
       24 GETTABLEKS                       R8 R9 K7 ["X"]
       26 JUMP                             ; [+1]
       27 LOADN                            R8 200
       28 GETUPVAL                         R9 1
       29 CALL                             R9 0 1
       30 JUMPIF                           R9 ; [+9]
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R10 R11 K8 ["state"]
       34 GETTABLEKS                       R9 R10 K9 ["dropdownHoveredIndex"]
       36 JUMPIFEQ                         R1 R9 ; [+2]
       38 LOADB                            R3 0 +1
       39 LOADB                            R3 1
       40 GETUPVAL                         R10 2
       41 GETTABLEKS                       R9 R10 K10 ["createElement"]
       43 GETUPVAL                         R10 3
       44 DUPTABLE                         R11 K16 [{"LayoutOrder", "OnClick", "OnMouseEnter", "Size", "StyleModifier"}]
       45 SETTABLEKS                       R1 R11 K11 ["LayoutOrder"]
       47 SETTABLEKS                       R2 R11 K12 ["OnClick"]
       49 NEWCLOSURE                       R12 P0
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          VAL R1
       52 SETTABLEKS                       R12 R11 K13 ["OnMouseEnter"]
       54 GETIMPORT                        R12 K19 [UDim2.new]
       56 LOADN                            R13 0
       57 GETTABLEKS                       R15 R6 K20 ["DropdownScrollbarSize"]
       59 SUB                              R14 R8 R15
       60 LOADN                            R15 0
       61 MOVE                             R16 R7
       62 CALL                             R12 4 1
       63 SETTABLEKS                       R12 R11 K14 ["Size"]
       65 JUMPIFNOT                        R3 ; [+4]
       66 GETUPVAL                         R13 4
       67 GETTABLEKS                       R12 R13 K21 ["Hover"]
       69 JUMP                             ; [+1]
       70 LOADNIL                          R12
       71 SETTABLEKS                       R12 R11 K15 ["StyleModifier"]
       73 DUPTABLE                         R12 K23 [{"ButtonComponents"}]
       74 GETUPVAL                         R14 2
       75 GETTABLEKS                       R13 R14 K10 ["createElement"]
       77 GETUPVAL                         R14 5
       78 DUPTABLE                         R15 K25 [{"Layout", "Size"}]
       79 GETIMPORT                        R16 K29 [Enum.FillDirection.Horizontal]
       81 SETTABLEKS                       R16 R15 K24 ["Layout"]
       83 GETIMPORT                        R16 K31 [UDim2.fromScale]
       85 LOADN                            R17 1
       86 LOADN                            R18 1
       87 CALL                             R16 2 1
       88 SETTABLEKS                       R16 R15 K14 ["Size"]
       90 DUPTABLE                         R16 K34 [{"ImageContainer", "NameText"}]
       91 GETUPVAL                         R18 2
       92 GETTABLEKS                       R17 R18 K10 ["createElement"]
       94 GETUPVAL                         R18 5
       95 DUPTABLE                         R19 K35 [{"LayoutOrder", "Size"}]
       96 LOADN                            R20 1
       97 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
       99 GETIMPORT                        R20 K37 [UDim2.fromOffset]
      101 MOVE                             R21 R7
      102 MOVE                             R22 R7
      103 CALL                             R20 2 1
      104 SETTABLEKS                       R20 R19 K14 ["Size"]
      106 DUPTABLE                         R20 K39 [{"Image"}]
      107 GETUPVAL                         R22 2
      108 GETTABLEKS                       R21 R22 K10 ["createElement"]
      110 GETUPVAL                         R22 6
      111 DUPTABLE                         R23 K41 [{"Style"}]
      112 DUPTABLE                         R24 K39 [{"Image"}]
      113 GETTABLEKS                       R25 R0 K38 ["Image"]
      115 SETTABLEKS                       R25 R24 K38 ["Image"]
      117 SETTABLEKS                       R24 R23 K40 ["Style"]
      119 CALL                             R21 2 1
      120 SETTABLEKS                       R21 R20 K38 ["Image"]
      122 CALL                             R17 3 1
      123 SETTABLEKS                       R17 R16 K32 ["ImageContainer"]
      125 GETUPVAL                         R18 2
      126 GETTABLEKS                       R17 R18 K10 ["createElement"]
      128 GETUPVAL                         R18 7
      129 DUPTABLE                         R19 K45 [{"LayoutOrder", "Size", "Text", "TextXAlignment", "SuffixLength"}]
      130 LOADN                            R20 2
      131 SETTABLEKS                       R20 R19 K11 ["LayoutOrder"]
      133 GETIMPORT                        R20 K19 [UDim2.new]
      135 LOADN                            R21 1
      136 MINUS                            R22 R7
      137 LOADN                            R23 1
      138 LOADN                            R24 0
      139 CALL                             R20 4 1
      140 SETTABLEKS                       R20 R19 K14 ["Size"]
      142 GETTABLEKS                       R20 R0 K46 ["Name"]
      144 SETTABLEKS                       R20 R19 K42 ["Text"]
      146 GETIMPORT                        R20 K48 [Enum.TextXAlignment.Left]
      148 SETTABLEKS                       R20 R19 K43 ["TextXAlignment"]
      150 LOADN                            R20 6
      151 SETTABLEKS                       R20 R19 K44 ["SuffixLength"]
      153 DUPTABLE                         R20 K50 [{"AssetIdText"}]
      154 GETUPVAL                         R22 2
      155 GETTABLEKS                       R21 R22 K10 ["createElement"]
      157 GETUPVAL                         R22 7
      158 DUPTABLE                         R23 K54 [{"Size", "TextXAlignment", "TextYAlignment", "Text", "TextColor", "TextSize"}]
      159 GETIMPORT                        R24 K19 [UDim2.new]
      161 LOADN                            R25 1
      162 LOADN                            R26 0
      163 LOADN                            R27 1
      164 GETTABLEKS                       R29 R6 K55 ["SubtextOffset"]
      166 MINUS                            R28 R29
      167 CALL                             R24 4 1
      168 SETTABLEKS                       R24 R23 K14 ["Size"]
      170 GETIMPORT                        R24 K48 [Enum.TextXAlignment.Left]
      172 SETTABLEKS                       R24 R23 K43 ["TextXAlignment"]
      174 GETIMPORT                        R24 K57 [Enum.TextYAlignment.Bottom]
      176 SETTABLEKS                       R24 R23 K51 ["TextYAlignment"]
      178 GETTABLEKS                       R24 R0 K58 ["AssetId"]
      180 SETTABLEKS                       R24 R23 K42 ["Text"]
      182 JUMPIF                           R3 ; [+3]
      183 GETTABLEKS                       R24 R6 K59 ["SubtextColor"]
      185 JUMP                             ; [+1]
      186 LOADNIL                          R24
      187 SETTABLEKS                       R24 R23 K52 ["TextColor"]
      189 GETTABLEKS                       R24 R6 K60 ["SubtextSize"]
      191 SETTABLEKS                       R24 R23 K53 ["TextSize"]
      193 CALL                             R21 2 1
      194 SETTABLEKS                       R21 R20 K49 ["AssetIdText"]
      196 CALL                             R17 3 1
      197 SETTABLEKS                       R17 R16 K33 ["NameText"]
      199 CALL                             R13 3 1
      200 SETTABLEKS                       R13 R12 K22 ["ButtonComponents"]
      202 CALL                             R9 3 -1
      203 RETURN                           R9 -1

PROTO_8:
        0 DUPTABLE                         R1 K5 [{"isFocused", "isOnDropdown", "suggestionList", "selectedId", "dropdownHoveredIndex"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isFocused"]
        4 LOADB                            R2 0
        5 SETTABLEKS                       R2 R1 K1 ["isOnDropdown"]
        7 GETUPVAL                         R2 0
        8 CALL                             R2 0 1
        9 SETTABLEKS                       R2 R1 K2 ["suggestionList"]
       11 LOADK                            R2 K6 [""]
       12 SETTABLEKS                       R2 R1 K3 ["selectedId"]
       14 LOADN                            R2 0
       15 SETTABLEKS                       R2 R1 K4 ["dropdownHoveredIndex"]
       17 SETTABLEKS                       R1 R0 K7 ["state"]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R1 R2 K8 ["createRef"]
       22 CALL                             R1 0 1
       23 SETTABLEKS                       R1 R0 K9 ["ref"]
       25 NEWCLOSURE                       R1 P0
       26 CAPTURE                          VAL R0
       27 SETTABLEKS                       R1 R0 K10 ["focused"]
       29 NEWCLOSURE                       R1 P1
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K11 ["unfocused"]
       33 NEWCLOSURE                       R1 P2
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K12 ["onItemActivated"]
       37 NEWCLOSURE                       R1 P3
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R1 R0 K13 ["onHoveredItemChanged"]
       41 NEWCLOSURE                       R1 P4
       42 CAPTURE                          VAL R0
       43 SETTABLEKS                       R1 R0 K14 ["onMouseLeave"]
       45 NEWCLOSURE                       R1 P5
       46 CAPTURE                          UPVAL U2
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K15 ["onValidateText"]
       50 NEWCLOSURE                       R1 P6
       51 CAPTURE                          VAL R0
       52 CAPTURE                          UPVAL U3
       53 CAPTURE                          UPVAL U1
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U5
       56 CAPTURE                          UPVAL U6
       57 CAPTURE                          UPVAL U7
       58 CAPTURE                          UPVAL U8
       59 SETTABLEKS                       R1 R0 K16 ["onRenderItem"]
       61 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Value"]
        6 GETTABLEKS                       R6 R2 K3 ["suggestionList"]
        8 LENGTH                           R5 R6
        9 JUMPIFNOTEQKN                    R5 K4 [0] ; [+2]
       11 LOADB                            R4 0 +1
       12 LOADB                            R4 1
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R5 R6 K5 ["createElement"]
       16 GETUPVAL                         R6 1
       17 DUPTABLE                         R7 K10 [{"Size", "LayoutOrder", "Layout", "HorizontalAlignment"}]
       18 GETTABLEKS                       R8 R1 K6 ["Size"]
       20 SETTABLEKS                       R8 R7 K6 ["Size"]
       22 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
       24 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       26 GETIMPORT                        R8 K14 [Enum.FillDirection.Horizontal]
       28 SETTABLEKS                       R8 R7 K8 ["Layout"]
       30 GETIMPORT                        R8 K16 [Enum.HorizontalAlignment.Left]
       32 SETTABLEKS                       R8 R7 K9 ["HorizontalAlignment"]
       34 DUPTABLE                         R8 K18 [{"AssetIdField"}]
       35 GETUPVAL                         R10 0
       36 GETTABLEKS                       R9 R10 K5 ["createElement"]
       38 GETUPVAL                         R10 1
       39 NEWTABLE                         R11 4 0
       41 GETIMPORT                        R12 K21 [UDim2.fromScale]
       43 LOADN                            R13 1
       44 LOADN                            R14 1
       45 CALL                             R12 2 1
       46 SETTABLEKS                       R12 R11 K6 ["Size"]
       48 GETTABLEKS                       R13 R1 K7 ["LayoutOrder"]
       50 ADDK                             R12 R13 K22 [1]
       51 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       53 GETUPVAL                         R13 0
       54 GETTABLEKS                       R12 R13 K23 ["Ref"]
       56 GETTABLEKS                       R13 R0 K24 ["ref"]
       58 SETTABLE                         R13 R11 R12
       59 DUPTABLE                         R12 K27 [{"TextInput", "AutocompleteDropdown"}]
       60 GETUPVAL                         R14 0
       61 GETTABLEKS                       R13 R14 K5 ["createElement"]
       63 GETUPVAL                         R14 2
       64 DUPTABLE                         R15 K33 [{"OnTextChanged", "OnValidateText", "Text", "OnFocused", "OnFocusLost"}]
       65 GETTABLEKS                       R16 R1 K34 ["OnSetItem"]
       67 SETTABLEKS                       R16 R15 K28 ["OnTextChanged"]
       69 GETTABLEKS                       R16 R0 K35 ["onValidateText"]
       71 SETTABLEKS                       R16 R15 K29 ["OnValidateText"]
       73 GETTABLEKS                       R17 R2 K36 ["selectedId"]
       75 JUMPIFEQKS                       R17 K37 [""] ; [+4]
       77 GETTABLEKS                       R16 R2 K36 ["selectedId"]
       79 JUMP                             ; [+1]
       80 MOVE                             R16 R3
       81 SETTABLEKS                       R16 R15 K30 ["Text"]
       83 GETTABLEKS                       R16 R0 K38 ["focused"]
       85 SETTABLEKS                       R16 R15 K31 ["OnFocused"]
       87 GETTABLEKS                       R16 R0 K39 ["unfocused"]
       89 SETTABLEKS                       R16 R15 K32 ["OnFocusLost"]
       91 CALL                             R13 2 1
       92 SETTABLEKS                       R13 R12 K25 ["TextInput"]
       94 GETUPVAL                         R14 0
       95 GETTABLEKS                       R13 R14 K5 ["createElement"]
       97 GETUPVAL                         R14 3
       98 DUPTABLE                         R15 K47 [{"Hide", "Items", "OnItemActivated", "OnMouseLeave", "OnRenderItem", "OnFocusLost", "HoveredItemIndex", "Width"}]
       99 GETTABLEKS                       R17 R2 K48 ["isFocused"]
      101 JUMPIF                           R17 ; [+4]
      102 GETTABLEKS                       R17 R2 K49 ["isOnDropdown"]
      104 NOT                              R16 R17
      105 JUMPIF                           R16 ; [+1]
      106 NOT                              R16 R4
      107 SETTABLEKS                       R16 R15 K40 ["Hide"]
      109 GETTABLEKS                       R16 R2 K3 ["suggestionList"]
      111 SETTABLEKS                       R16 R15 K41 ["Items"]
      113 GETTABLEKS                       R16 R0 K50 ["onItemActivated"]
      115 SETTABLEKS                       R16 R15 K42 ["OnItemActivated"]
      117 GETTABLEKS                       R16 R0 K51 ["onMouseLeave"]
      119 SETTABLEKS                       R16 R15 K43 ["OnMouseLeave"]
      121 GETTABLEKS                       R16 R0 K52 ["onRenderItem"]
      123 SETTABLEKS                       R16 R15 K44 ["OnRenderItem"]
      125 GETTABLEKS                       R16 R0 K39 ["unfocused"]
      127 SETTABLEKS                       R16 R15 K32 ["OnFocusLost"]
      129 GETTABLEKS                       R16 R2 K53 ["dropdownHoveredIndex"]
      131 SETTABLEKS                       R16 R15 K45 ["HoveredItemIndex"]
      133 GETTABLEKS                       R17 R0 K24 ["ref"]
      135 NAMECALL                         R17 R17 K54 ["getValue"]
      137 CALL                             R17 1 1
      138 JUMPIFNOT                        R17 ; [+10]
      139 GETTABLEKS                       R18 R0 K24 ["ref"]
      141 NAMECALL                         R18 R18 K54 ["getValue"]
      143 CALL                             R18 1 1
      144 GETTABLEKS                       R17 R18 K55 ["AbsoluteSize"]
      146 GETTABLEKS                       R16 R17 K56 ["X"]
      148 JUMP                             ; [+1]
      149 LOADN                            R16 200
      150 SETTABLEKS                       R16 R15 K46 ["Width"]
      152 CALL                             R13 2 1
      153 SETTABLEKS                       R13 R12 K26 ["AutocompleteDropdown"]
      155 CALL                             R9 3 1
      156 SETTABLEKS                       R9 R8 K17 ["AssetIdField"]
      158 CALL                             R5 3 -1
      159 RETURN                           R5 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K1 [{"dispatchSetHasInvalidPackageId"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["dispatchSetHasInvalidPackageId"]
        6 RETURN                           R1 1

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
       32 GETTABLEKS                       R6 R4 K12 ["Stylizer"]
       34 GETTABLEKS                       R8 R1 K13 ["Util"]
       36 GETTABLEKS                       R7 R8 K14 ["StyleModifier"]
       38 GETTABLEKS                       R8 R1 K15 ["UI"]
       40 GETTABLEKS                       R9 R8 K16 ["TextInput"]
       42 GETTABLEKS                       R10 R8 K17 ["TruncatedTextLabel"]
       44 GETTABLEKS                       R11 R8 K18 ["DropdownMenu"]
       46 GETTABLEKS                       R12 R8 K19 ["Button"]
       48 GETTABLEKS                       R13 R8 K20 ["Pane"]
       50 GETTABLEKS                       R14 R8 K21 ["Image"]
       52 GETIMPORT                        R15 K5 [require]
       54 GETTABLEKS                       R18 R0 K22 ["Src"]
       56 GETTABLEKS                       R17 R18 K23 ["Utility"]
       58 GETTABLEKS                       R16 R17 K24 ["getPackagesInPlace"]
       60 CALL                             R15 1 1
       61 GETIMPORT                        R16 K5 [require]
       63 GETTABLEKS                       R19 R0 K22 ["Src"]
       65 GETTABLEKS                       R18 R19 K23 ["Utility"]
       67 GETTABLEKS                       R17 R18 K25 ["isAssetIdFormatValid"]
       69 CALL                             R16 1 1
       70 GETIMPORT                        R17 K5 [require]
       72 GETTABLEKS                       R20 R0 K22 ["Src"]
       74 GETTABLEKS                       R19 R20 K26 ["Actions"]
       76 GETTABLEKS                       R18 R19 K27 ["SetHasInvalidPackageId"]
       78 CALL                             R17 1 1
       79 GETIMPORT                        R18 K5 [require]
       81 GETTABLEKS                       R21 R0 K22 ["Src"]
       83 GETTABLEKS                       R20 R21 K28 ["Flags"]
       85 GETTABLEKS                       R19 R20 K29 ["getFFlagDevFrameworkDropdownMenuHeight"]
       87 CALL                             R18 1 1
       88 GETTABLEKS                       R19 R2 K30 ["PureComponent"]
       90 LOADK                            R21 K31 ["AssetIdProperty"]
       91 NAMECALL                         R19 R19 K32 ["extend"]
       93 CALL                             R19 2 1
       94 DUPCLOSURE                       R20 K33 [PROTO_8]
       95 CAPTURE                          VAL R15
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R16
       98 CAPTURE                          VAL R18
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R10
      104 SETTABLEKS                       R20 R19 K34 ["init"]
      106 DUPCLOSURE                       R20 K35 [PROTO_9]
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R11
      111 SETTABLEKS                       R20 R19 K36 ["render"]
      113 MOVE                             R20 R5
      114 DUPTABLE                         R21 K37 [{"Stylizer"}]
      115 SETTABLEKS                       R6 R21 K12 ["Stylizer"]
      117 CALL                             R20 1 1
      118 MOVE                             R21 R19
      119 CALL                             R20 1 1
      120 MOVE                             R19 R20
      121 DUPCLOSURE                       R20 K38 [PROTO_11]
      122 CAPTURE                          VAL R17
      123 GETTABLEKS                       R21 R3 K39 ["connect"]
      125 LOADNIL                          R22
      126 MOVE                             R23 R20
      127 CALL                             R21 2 1
      128 MOVE                             R22 R19
      129 CALL                             R21 1 -1
      130 RETURN                           R21 -1
