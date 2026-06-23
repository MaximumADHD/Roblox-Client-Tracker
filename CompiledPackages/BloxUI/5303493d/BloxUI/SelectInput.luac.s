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
       39 DUPTABLE                         R13 K21 [{"text", "options", "selectedValue", "onSelect"}]
       40 LOADK                            R14 K22 ["Select..."]
       41 SETTABLEKS                       R14 R13 K17 ["text"]
       43 NEWTABLE                         R14 0 0
       45 SETTABLEKS                       R14 R13 K18 ["options"]
       47 LOADK                            R14 K23 [""]
       48 SETTABLEKS                       R14 R13 K19 ["selectedValue"]
       50 DUPCLOSURE                       R14 K24 [PROTO_0]
       51 SETTABLEKS                       R14 R13 K20 ["onSelect"]
       53 NEWTABLE                         R14 0 1
       55 MOVE                             R15 R5
       56 NEWTABLE                         R16 4 2
       58 LOADK                            R19 K16 ["SelectInput"]
       59 SETTABLEKS                       R19 R16 K25 ["Name"]
       61 LOADK                            R19 K26 ["box auto-xy"]
       62 SETTABLEKS                       R19 R16 K27 ["Tags"]
       64 MOVE                             R19 R3
       65 LOADK                            R20 K28 ["api.childOrder"]
       66 CALL                             R19 1 1
       67 SETTABLEKS                       R19 R16 K29 ["LayoutOrder"]
       69 MOVE                             R17 R7
       70 NEWTABLE                         R18 4 2
       72 LOADK                            R21 K30 ["SelectTrigger"]
       73 SETTABLEKS                       R21 R18 K25 ["Name"]
       75 MOVE                             R21 R3
       76 LOADK                            R22 K31 ["{ \"select\", [\"state-open\"] = isOpen }"]
       77 CALL                             R21 1 1
       78 SETTABLEKS                       R21 R18 K27 ["Tags"]
       80 LOADK                            R21 K32 ["trigger"]
       81 SETTABLEKS                       R21 R18 K33 ["ref"]
       83 MOVE                             R21 R3
       84 LOADK                            R22 K34 ["fn() toggleOpen()"]
       85 CALL                             R21 1 1
       86 SETTABLEKS                       R21 R18 K35 ["OnActivated"]
       88 MOVE                             R19 R8
       89 DUPTABLE                         R20 K37 [{"Name", "Tags", "Text", "LayoutOrder"}]
       90 LOADK                            R21 K38 ["SelectValue"]
       91 SETTABLEKS                       R21 R20 K25 ["Name"]
       93 LOADK                            R21 K39 ["select-value"]
       94 SETTABLEKS                       R21 R20 K27 ["Tags"]
       96 MOVE                             R21 R3
       97 LOADK                            R22 K40 ["displayText"]
       98 CALL                             R21 1 1
       99 SETTABLEKS                       R21 R20 K36 ["Text"]
      101 LOADN                            R21 1
      102 SETTABLEKS                       R21 R20 K29 ["LayoutOrder"]
      104 CALL                             R19 1 1
      105 MOVE                             R20 R6
      106 DUPTABLE                         R21 K42 [{"Name", "Tags", "Image", "LayoutOrder"}]
      107 LOADK                            R22 K43 ["SelectArrow"]
      108 SETTABLEKS                       R22 R21 K25 ["Name"]
      110 LOADK                            R22 K44 ["select-arrow"]
      111 SETTABLEKS                       R22 R21 K27 ["Tags"]
      113 MOVE                             R22 R3
      114 LOADK                            R23 K45 ["arrowIcon"]
      115 CALL                             R22 1 1
      116 SETTABLEKS                       R22 R21 K41 ["Image"]
      118 LOADN                            R22 2
      119 SETTABLEKS                       R22 R21 K29 ["LayoutOrder"]
      121 CALL                             R20 1 -1
      122 SETLIST                          R18 R19 -1 [1]
      124 CALL                             R17 1 1
      125 MOVE                             R18 R9
      126 NEWTABLE                         R19 4 1
      128 MOVE                             R21 R3
      129 LOADK                            R22 K46 ["isOpen"]
      130 CALL                             R21 1 1
      131 SETTABLEKS                       R21 R19 K47 ["visible"]
      133 MOVE                             R21 R3
      134 LOADK                            R22 K48 ["triggerRef"]
      135 CALL                             R21 1 1
      136 SETTABLEKS                       R21 R19 K49 ["anchor"]
      138 LOADB                            R21 1
      139 SETTABLEKS                       R21 R19 K50 ["dismissOnBackdropClick"]
      141 MOVE                             R21 R3
      142 LOADK                            R22 K51 ["fn() close()"]
      143 CALL                             R21 1 1
      144 SETTABLEKS                       R21 R19 K52 ["onDismiss"]
      146 MOVE                             R20 R5
      147 NEWTABLE                         R21 4 1
      149 LOADK                            R23 K53 ["SelectDropdown"]
      150 SETTABLEKS                       R23 R21 K25 ["Name"]
      152 LOADK                            R23 K54 ["select-dropdown"]
      153 SETTABLEKS                       R23 R21 K27 ["Tags"]
      155 MOVE                             R23 R3
      156 LOADK                            R24 K55 ["dropdownWidth"]
      157 CALL                             R23 1 1
      158 SETTABLEKS                       R23 R21 K56 ["Size"]
      160 GETIMPORT                        R23 K60 [Enum.AutomaticSize.Y]
      162 SETTABLEKS                       R23 R21 K58 ["AutomaticSize"]
      164 MOVE                             R22 R10
      165 DUPTABLE                         R23 K64 [{"items", "keyBy", "Each"}]
      166 MOVE                             R24 R3
      167 LOADK                            R25 K65 ["optionRows"]
      168 CALL                             R24 1 1
      169 SETTABLEKS                       R24 R23 K61 ["items"]
      171 MOVE                             R24 R3
      172 LOADK                            R25 K66 ["fn(row) tostring(row.idx)"]
      173 CALL                             R24 1 1
      174 SETTABLEKS                       R24 R23 K62 ["keyBy"]
      176 MOVE                             R24 R4
      177 NEWTABLE                         R25 0 2
      179 LOADK                            R26 K67 ["_"]
      180 LOADK                            R27 K68 ["row"]
      181 SETLIST                          R25 R26 2 [1]
      183 NEWTABLE                         R26 0 1
      185 MOVE                             R27 R7
      186 NEWTABLE                         R28 4 1
      188 LOADK                            R30 K69 ["SelectOption"]
      189 SETTABLEKS                       R30 R28 K25 ["Name"]
      191 MOVE                             R30 R3
      192 LOADK                            R31 K70 ["{ \"select-option\", [\"state-selected\"] = (row.value == selectedValue) }"]
      193 CALL                             R30 1 1
      194 SETTABLEKS                       R30 R28 K27 ["Tags"]
      196 MOVE                             R30 R3
      197 LOADK                            R31 K71 ["fn() pickOption(row.value)"]
      198 CALL                             R30 1 1
      199 SETTABLEKS                       R30 R28 K35 ["OnActivated"]
      201 MOVE                             R30 R3
      202 LOADK                            R31 K72 ["row.idx"]
      203 CALL                             R30 1 1
      204 SETTABLEKS                       R30 R28 K29 ["LayoutOrder"]
      206 MOVE                             R29 R8
      207 DUPTABLE                         R30 K73 [{"Name", "Tags", "Text"}]
      208 LOADK                            R31 K74 ["SelectOptionLabel"]
      209 SETTABLEKS                       R31 R30 K25 ["Name"]
      211 LOADK                            R31 K39 ["select-value"]
      212 SETTABLEKS                       R31 R30 K27 ["Tags"]
      214 MOVE                             R31 R3
      215 LOADK                            R32 K75 ["row.label"]
      216 CALL                             R31 1 1
      217 SETTABLEKS                       R31 R30 K36 ["Text"]
      219 CALL                             R29 1 -1
      220 SETLIST                          R28 R29 -1 [1]
      222 CALL                             R27 1 -1
      223 SETLIST                          R26 R27 -1 [1]
      225 CALL                             R24 2 1
      226 SETTABLEKS                       R24 R23 K63 ["Each"]
      228 CALL                             R22 1 -1
      229 SETLIST                          R21 R22 -1 [1]
      231 CALL                             R20 1 -1
      232 SETLIST                          R19 R20 -1 [1]
      234 CALL                             R18 1 -1
      235 SETLIST                          R16 R17 -1 [1]
      237 CALL                             R15 1 -1
      238 SETLIST                          R14 R15 -1 [1]
      240 DUPCLOSURE                       R15 K76 [PROTO_8]
      241 CALL                             R11 4 1
      242 RETURN                           R11 1
