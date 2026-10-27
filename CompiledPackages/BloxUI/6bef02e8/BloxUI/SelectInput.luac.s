PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["selectedValue"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+8]
        6 JUMPIFEQKS                       R1 K1 [""] ; [+7]
        8 FASTCALL1                        TOSTRING R1 ; [+3]
        9 MOVE                             R3 R1
       10 GETIMPORT                        R2 K3 [tostring]
       12 CALL                             R2 1 1
       13 RETURN                           R2 1
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K5 ["text"]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 1
       19 ORK                              R2 R3 K4 ["Select..."]
       20 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+2]
        4 LOADK                            R1 K0 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonDropDownArrowUpSmall.png"]
        5 RETURN                           R1 1
        6 LOADK                            R1 K1 ["rbxasset://studio_svg_textures/Shared/Ribbon/Dark/Standard/RibbonDropDownArrowDownSmall.png"]
        7 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIF                           R1 ; [+3]
        4 NEWTABLE                         R1 0 0
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K0 ["options"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 NEWTABLE                         R2 0 0
       14 JUMPIFNOT                        R1 ; [+24]
       15 MOVE                             R3 R1
       16 LOADNIL                          R4
       17 LOADNIL                          R5
       18 FORGPREP                         R3
       19 DUPTABLE                         R10 K4 [{"idx", "value", "label"}]
       20 SETTABLEKS                       R6 R10 K1 ["idx"]
       22 SETTABLEKS                       R7 R10 K2 ["value"]
       24 FASTCALL1                        TOSTRING R7 ; [+3]
       25 MOVE                             R12 R7
       26 GETIMPORT                        R11 K6 [tostring]
       28 CALL                             R11 1 1
       29 SETTABLEKS                       R11 R10 K3 ["label"]
       31 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       33 MOVE                             R9 R2
       34 GETIMPORT                        R8 K9 [table.insert]
       36 CALL                             R8 2 0
       37 FORGLOOP                         R3 2 ; [-19]
       39 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+20]
        4 LOADK                            R4 K0 ["GuiObject"]
        5 NAMECALL                         R2 R1 K1 ["IsA"]
        7 CALL                             R2 2 1
        8 JUMPIFNOT                        R2 ; [+15]
        9 GETIMPORT                        R2 K4 [UDim2.fromOffset]
       11 GETTABLEKS                       R4 R1 K5 ["AbsoluteSize"]
       13 GETTABLEKS                       R4 R4 K6 ["X"]
       15 FASTCALL2K                       MATH_MAX R4 K7 ; [+4]
       17 LOADK                            R5 K7 [120]
       18 GETIMPORT                        R3 K10 [math.max]
       20 CALL                             R3 2 1
       21 LOADN                            R4 0
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1
       24 GETIMPORT                        R2 K4 [UDim2.fromOffset]
       26 LOADN                            R3 120
       27 LOADN                            R4 0
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 CALL                             R2 1 1
        4 NOT                              R1 R2
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["onSelect"]
        4 CALL                             R1 1 1
        5 JUMPIFNOT                        R1 ; [+3]
        6 MOVE                             R2 R1
        7 MOVE                             R3 R0
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 2
       10 LOADB                            R3 0
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["peek"]
        2 GETTABLEKS                       R3 R1 K1 ["createSignal"]
        4 LOADB                            R4 0
        5 CALL                             R3 1 2
        6 GETTABLEKS                       R5 R1 K2 ["createRef"]
        8 LOADK                            R6 K3 ["trigger"]
        9 CALL                             R5 1 1
       10 GETTABLEKS                       R6 R1 K4 ["createComputed"]
       12 NEWCLOSURE                       R7 P0
       13 CAPTURE                          VAL R0
       14 LOADK                            R8 K5 ["select-display"]
       15 CALL                             R6 2 1
       16 GETTABLEKS                       R7 R1 K4 ["createComputed"]
       18 NEWCLOSURE                       R8 P1
       19 CAPTURE                          VAL R3
       20 LOADK                            R9 K6 ["select-arrow-icon"]
       21 CALL                             R7 2 1
       22 GETTABLEKS                       R8 R1 K4 ["createComputed"]
       24 NEWCLOSURE                       R9 P2
       25 CAPTURE                          VAL R3
       26 CAPTURE                          VAL R0
       27 LOADK                            R10 K7 ["select-option-rows"]
       28 CALL                             R8 2 1
       29 GETTABLEKS                       R9 R1 K4 ["createComputed"]
       31 NEWCLOSURE                       R10 P3
       32 CAPTURE                          VAL R5
       33 LOADK                            R11 K8 ["select-dropdown-width"]
       34 CALL                             R9 2 1
       35 NEWCLOSURE                       R10 P4
       36 CAPTURE                          VAL R4
       37 NEWCLOSURE                       R11 P5
       38 CAPTURE                          VAL R4
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R3
       41 NEWCLOSURE                       R12 P6
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R0
       44 CAPTURE                          VAL R4
       45 DUPTABLE                         R13 K18 [{"isOpen", "displayText", "arrowIcon", "triggerRef", "optionRows", "dropdownWidth", "toggleOpen", "close", "pickOption"}]
       46 SETTABLEKS                       R3 R13 K9 ["isOpen"]
       48 SETTABLEKS                       R6 R13 K10 ["displayText"]
       50 SETTABLEKS                       R7 R13 K11 ["arrowIcon"]
       52 SETTABLEKS                       R5 R13 K12 ["triggerRef"]
       54 SETTABLEKS                       R8 R13 K13 ["optionRows"]
       56 SETTABLEKS                       R9 R13 K14 ["dropdownWidth"]
       58 SETTABLEKS                       R11 R13 K15 ["toggleOpen"]
       60 SETTABLEKS                       R10 R13 K16 ["close"]
       62 SETTABLEKS                       R12 R13 K17 ["pickOption"]
       64 RETURN                           R13 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["BloxUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Blox"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["expr"]
       16 GETTABLEKS                       R4 R2 K9 ["template"]
       18 GETTABLEKS                       R5 R2 K10 ["Frame"]
       20 GETTABLEKS                       R6 R2 K11 ["ImageLabel"]
       22 GETTABLEKS                       R7 R2 K12 ["TextButton"]
       24 GETTABLEKS                       R8 R2 K13 ["TextLabel"]
       26 GETIMPORT                        R9 K6 [require]
       28 GETIMPORT                        R10 K1 [script]
       30 GETTABLEKS                       R10 R10 K4 ["Parent"]
       32 GETTABLEKS                       R10 R10 K14 ["Overlay"]
       34 CALL                             R9 1 1
       35 GETTABLEKS                       R10 R2 K15 ["For"]
       37 MOVE                             R11 R4
       38 LOADK                            R12 K16 ["SelectInput"]
       39 DUPTABLE                         R13 K23 [{["text"] = "Select...", ["options"], ["selectedValue"] = "", ["onSelect"]}]
       40 NEWTABLE                         R14 0 0
       42 SETTABLEKS                       R14 R13 K19 ["options"]
       44 DUPCLOSURE                       R14 K24 [PROTO_0]
       45 SETTABLEKS                       R14 R13 K22 ["onSelect"]
       47 NEWTABLE                         R14 0 1
       49 MOVE                             R15 R5
       50 NEWTABLE                         R16 4 2
       52 LOADK                            R19 K16 ["SelectInput"]
       53 SETTABLEKS                       R19 R16 K25 ["Name"]
       55 LOADK                            R19 K26 ["box auto-xy"]
       56 SETTABLEKS                       R19 R16 K27 ["Tags"]
       58 MOVE                             R19 R3
       59 LOADK                            R20 K28 ["api.childOrder"]
       60 CALL                             R19 1 1
       61 SETTABLEKS                       R19 R16 K29 ["LayoutOrder"]
       63 MOVE                             R17 R7
       64 NEWTABLE                         R18 4 2
       66 LOADK                            R21 K30 ["SelectTrigger"]
       67 SETTABLEKS                       R21 R18 K25 ["Name"]
       69 MOVE                             R21 R3
       70 LOADK                            R22 K31 ["{ \"select\", [\"state-open\"] = isOpen }"]
       71 CALL                             R21 1 1
       72 SETTABLEKS                       R21 R18 K27 ["Tags"]
       74 LOADK                            R21 K32 ["trigger"]
       75 SETTABLEKS                       R21 R18 K33 ["ref"]
       77 MOVE                             R21 R3
       78 LOADK                            R22 K34 ["fn() toggleOpen()"]
       79 CALL                             R21 1 1
       80 SETTABLEKS                       R21 R18 K35 ["OnActivated"]
       82 MOVE                             R19 R8
       83 DUPTABLE                         R20 K40 [{["Name"] = "SelectValue", ["Tags"] = "select-value", ["Text"], ["LayoutOrder"] = 1}]
       84 MOVE                             R21 R3
       85 LOADK                            R22 K41 ["displayText"]
       86 CALL                             R21 1 1
       87 SETTABLEKS                       R21 R20 K38 ["Text"]
       89 CALL                             R19 1 1
       90 MOVE                             R20 R6
       91 DUPTABLE                         R21 K46 [{["Name"] = "SelectArrow", ["Tags"] = "select-arrow", ["Image"], ["LayoutOrder"] = 2}]
       92 MOVE                             R22 R3
       93 LOADK                            R23 K47 ["arrowIcon"]
       94 CALL                             R22 1 1
       95 SETTABLEKS                       R22 R21 K44 ["Image"]
       97 CALL                             R20 1 -1
       98 SETLIST                          R18 R19 -1 [1]
      100 CALL                             R17 1 1
      101 MOVE                             R18 R9
      102 NEWTABLE                         R19 4 1
      104 MOVE                             R21 R3
      105 LOADK                            R22 K48 ["isOpen"]
      106 CALL                             R21 1 1
      107 SETTABLEKS                       R21 R19 K49 ["visible"]
      109 MOVE                             R21 R3
      110 LOADK                            R22 K50 ["triggerRef"]
      111 CALL                             R21 1 1
      112 SETTABLEKS                       R21 R19 K51 ["anchor"]
      114 LOADB                            R21 1
      115 SETTABLEKS                       R21 R19 K52 ["dismissOnBackdropClick"]
      117 MOVE                             R21 R3
      118 LOADK                            R22 K53 ["fn() close()"]
      119 CALL                             R21 1 1
      120 SETTABLEKS                       R21 R19 K54 ["onDismiss"]
      122 MOVE                             R20 R5
      123 NEWTABLE                         R21 4 1
      125 LOADK                            R23 K55 ["SelectDropdown"]
      126 SETTABLEKS                       R23 R21 K25 ["Name"]
      128 LOADK                            R23 K56 ["select-dropdown"]
      129 SETTABLEKS                       R23 R21 K27 ["Tags"]
      131 MOVE                             R23 R3
      132 LOADK                            R24 K57 ["dropdownWidth"]
      133 CALL                             R23 1 1
      134 SETTABLEKS                       R23 R21 K58 ["Size"]
      136 GETIMPORT                        R23 K62 [Enum.AutomaticSize.Y]
      138 SETTABLEKS                       R23 R21 K60 ["AutomaticSize"]
      140 MOVE                             R22 R10
      141 DUPTABLE                         R23 K66 [{"items", "keyBy", "Each"}]
      142 MOVE                             R24 R3
      143 LOADK                            R25 K67 ["optionRows"]
      144 CALL                             R24 1 1
      145 SETTABLEKS                       R24 R23 K63 ["items"]
      147 MOVE                             R24 R3
      148 LOADK                            R25 K68 ["fn(row) tostring(row.idx)"]
      149 CALL                             R24 1 1
      150 SETTABLEKS                       R24 R23 K64 ["keyBy"]
      152 MOVE                             R24 R4
      153 NEWTABLE                         R25 0 2
      155 LOADK                            R26 K69 ["_"]
      156 LOADK                            R27 K70 ["row"]
      157 SETLIST                          R25 R26 2 [1]
      159 NEWTABLE                         R26 0 1
      161 MOVE                             R27 R7
      162 NEWTABLE                         R28 4 1
      164 LOADK                            R30 K71 ["SelectOption"]
      165 SETTABLEKS                       R30 R28 K25 ["Name"]
      167 MOVE                             R30 R3
      168 LOADK                            R31 K72 ["{ \"select-option\", [\"state-selected\"] = (row.value == selectedValue) }"]
      169 CALL                             R30 1 1
      170 SETTABLEKS                       R30 R28 K27 ["Tags"]
      172 MOVE                             R30 R3
      173 LOADK                            R31 K73 ["fn() pickOption(row.value)"]
      174 CALL                             R30 1 1
      175 SETTABLEKS                       R30 R28 K35 ["OnActivated"]
      177 MOVE                             R30 R3
      178 LOADK                            R31 K74 ["row.idx"]
      179 CALL                             R30 1 1
      180 SETTABLEKS                       R30 R28 K29 ["LayoutOrder"]
      182 MOVE                             R29 R8
      183 DUPTABLE                         R30 K76 [{["Name"] = "SelectOptionLabel", ["Tags"] = "select-value", ["Text"]}]
      184 MOVE                             R31 R3
      185 LOADK                            R32 K77 ["row.label"]
      186 CALL                             R31 1 1
      187 SETTABLEKS                       R31 R30 K38 ["Text"]
      189 CALL                             R29 1 -1
      190 SETLIST                          R28 R29 -1 [1]
      192 CALL                             R27 1 -1
      193 SETLIST                          R26 R27 -1 [1]
      195 CALL                             R24 2 1
      196 SETTABLEKS                       R24 R23 K65 ["Each"]
      198 CALL                             R22 1 -1
      199 SETLIST                          R21 R22 -1 [1]
      201 CALL                             R20 1 -1
      202 SETLIST                          R19 R20 -1 [1]
      204 CALL                             R18 1 -1
      205 SETLIST                          R16 R17 -1 [1]
      207 CALL                             R15 1 -1
      208 SETLIST                          R14 R15 -1 [1]
      210 DUPCLOSURE                       R15 K78 [PROTO_8]
      211 CALL                             R11 4 1
      212 RETURN                           R11 1
