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
        3 LOADK                            R2 K2 ["Packages"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Blox"]
       11 CALL                             R1 1 1
       12 GETTABLEKS                       R2 R1 K7 ["expr"]
       14 GETTABLEKS                       R3 R1 K8 ["template"]
       16 GETTABLEKS                       R4 R1 K9 ["Frame"]
       18 GETTABLEKS                       R5 R1 K10 ["ImageLabel"]
       20 GETTABLEKS                       R6 R1 K11 ["TextButton"]
       22 GETTABLEKS                       R7 R1 K12 ["TextLabel"]
       24 GETIMPORT                        R8 K5 [require]
       26 GETIMPORT                        R9 K1 [script]
       28 GETTABLEKS                       R9 R9 K13 ["Parent"]
       30 GETTABLEKS                       R9 R9 K14 ["Overlay"]
       32 CALL                             R8 1 1
       33 GETTABLEKS                       R9 R1 K15 ["For"]
       35 MOVE                             R10 R3
       36 LOADK                            R11 K16 ["SelectInput"]
       37 DUPTABLE                         R12 K21 [{"text", "options", "selectedValue", "onSelect"}]
       38 LOADK                            R13 K22 ["Select..."]
       39 SETTABLEKS                       R13 R12 K17 ["text"]
       41 NEWTABLE                         R13 0 0
       43 SETTABLEKS                       R13 R12 K18 ["options"]
       45 LOADK                            R13 K23 [""]
       46 SETTABLEKS                       R13 R12 K19 ["selectedValue"]
       48 DUPCLOSURE                       R13 K24 [PROTO_0]
       49 SETTABLEKS                       R13 R12 K20 ["onSelect"]
       51 NEWTABLE                         R13 0 1
       53 MOVE                             R14 R4
       54 NEWTABLE                         R15 4 2
       56 LOADK                            R18 K16 ["SelectInput"]
       57 SETTABLEKS                       R18 R15 K25 ["Name"]
       59 LOADK                            R18 K26 ["box auto-xy"]
       60 SETTABLEKS                       R18 R15 K27 ["Tags"]
       62 MOVE                             R18 R2
       63 LOADK                            R19 K28 ["api.childOrder"]
       64 CALL                             R18 1 1
       65 SETTABLEKS                       R18 R15 K29 ["LayoutOrder"]
       67 MOVE                             R16 R6
       68 NEWTABLE                         R17 4 2
       70 LOADK                            R20 K30 ["SelectTrigger"]
       71 SETTABLEKS                       R20 R17 K25 ["Name"]
       73 MOVE                             R20 R2
       74 LOADK                            R21 K31 ["{ \"select\", [\"state-open\"] = isOpen }"]
       75 CALL                             R20 1 1
       76 SETTABLEKS                       R20 R17 K27 ["Tags"]
       78 LOADK                            R20 K32 ["trigger"]
       79 SETTABLEKS                       R20 R17 K33 ["ref"]
       81 MOVE                             R20 R2
       82 LOADK                            R21 K34 ["fn() toggleOpen()"]
       83 CALL                             R20 1 1
       84 SETTABLEKS                       R20 R17 K35 ["OnActivated"]
       86 MOVE                             R18 R7
       87 DUPTABLE                         R19 K37 [{"Name", "Tags", "Text", "LayoutOrder"}]
       88 LOADK                            R20 K38 ["SelectValue"]
       89 SETTABLEKS                       R20 R19 K25 ["Name"]
       91 LOADK                            R20 K39 ["select-value"]
       92 SETTABLEKS                       R20 R19 K27 ["Tags"]
       94 MOVE                             R20 R2
       95 LOADK                            R21 K40 ["displayText"]
       96 CALL                             R20 1 1
       97 SETTABLEKS                       R20 R19 K36 ["Text"]
       99 LOADN                            R20 1
      100 SETTABLEKS                       R20 R19 K29 ["LayoutOrder"]
      102 CALL                             R18 1 1
      103 MOVE                             R19 R5
      104 DUPTABLE                         R20 K42 [{"Name", "Tags", "Image", "LayoutOrder"}]
      105 LOADK                            R21 K43 ["SelectArrow"]
      106 SETTABLEKS                       R21 R20 K25 ["Name"]
      108 LOADK                            R21 K44 ["select-arrow"]
      109 SETTABLEKS                       R21 R20 K27 ["Tags"]
      111 MOVE                             R21 R2
      112 LOADK                            R22 K45 ["arrowIcon"]
      113 CALL                             R21 1 1
      114 SETTABLEKS                       R21 R20 K41 ["Image"]
      116 LOADN                            R21 2
      117 SETTABLEKS                       R21 R20 K29 ["LayoutOrder"]
      119 CALL                             R19 1 -1
      120 SETLIST                          R17 R18 -1 [1]
      122 CALL                             R16 1 1
      123 MOVE                             R17 R8
      124 NEWTABLE                         R18 4 1
      126 MOVE                             R20 R2
      127 LOADK                            R21 K46 ["isOpen"]
      128 CALL                             R20 1 1
      129 SETTABLEKS                       R20 R18 K47 ["visible"]
      131 MOVE                             R20 R2
      132 LOADK                            R21 K48 ["triggerRef"]
      133 CALL                             R20 1 1
      134 SETTABLEKS                       R20 R18 K49 ["anchor"]
      136 LOADB                            R20 1
      137 SETTABLEKS                       R20 R18 K50 ["dismissOnBackdropClick"]
      139 MOVE                             R20 R2
      140 LOADK                            R21 K51 ["fn() close()"]
      141 CALL                             R20 1 1
      142 SETTABLEKS                       R20 R18 K52 ["onDismiss"]
      144 MOVE                             R19 R4
      145 NEWTABLE                         R20 4 1
      147 LOADK                            R22 K53 ["SelectDropdown"]
      148 SETTABLEKS                       R22 R20 K25 ["Name"]
      150 LOADK                            R22 K54 ["select-dropdown"]
      151 SETTABLEKS                       R22 R20 K27 ["Tags"]
      153 MOVE                             R22 R2
      154 LOADK                            R23 K55 ["dropdownWidth"]
      155 CALL                             R22 1 1
      156 SETTABLEKS                       R22 R20 K56 ["Size"]
      158 GETIMPORT                        R22 K60 [Enum.AutomaticSize.Y]
      160 SETTABLEKS                       R22 R20 K58 ["AutomaticSize"]
      162 MOVE                             R21 R9
      163 DUPTABLE                         R22 K64 [{"items", "keyBy", "Each"}]
      164 MOVE                             R23 R2
      165 LOADK                            R24 K65 ["optionRows"]
      166 CALL                             R23 1 1
      167 SETTABLEKS                       R23 R22 K61 ["items"]
      169 MOVE                             R23 R2
      170 LOADK                            R24 K66 ["fn(row) tostring(row.idx)"]
      171 CALL                             R23 1 1
      172 SETTABLEKS                       R23 R22 K62 ["keyBy"]
      174 MOVE                             R23 R3
      175 NEWTABLE                         R24 0 2
      177 LOADK                            R25 K67 ["_"]
      178 LOADK                            R26 K68 ["row"]
      179 SETLIST                          R24 R25 2 [1]
      181 NEWTABLE                         R25 0 1
      183 MOVE                             R26 R6
      184 NEWTABLE                         R27 4 1
      186 LOADK                            R29 K69 ["SelectOption"]
      187 SETTABLEKS                       R29 R27 K25 ["Name"]
      189 MOVE                             R29 R2
      190 LOADK                            R30 K70 ["{ \"select-option\", [\"state-selected\"] = (row.value == selectedValue) }"]
      191 CALL                             R29 1 1
      192 SETTABLEKS                       R29 R27 K27 ["Tags"]
      194 MOVE                             R29 R2
      195 LOADK                            R30 K71 ["fn() pickOption(row.value)"]
      196 CALL                             R29 1 1
      197 SETTABLEKS                       R29 R27 K35 ["OnActivated"]
      199 MOVE                             R29 R2
      200 LOADK                            R30 K72 ["row.idx"]
      201 CALL                             R29 1 1
      202 SETTABLEKS                       R29 R27 K29 ["LayoutOrder"]
      204 MOVE                             R28 R7
      205 DUPTABLE                         R29 K73 [{"Name", "Tags", "Text"}]
      206 LOADK                            R30 K74 ["SelectOptionLabel"]
      207 SETTABLEKS                       R30 R29 K25 ["Name"]
      209 LOADK                            R30 K39 ["select-value"]
      210 SETTABLEKS                       R30 R29 K27 ["Tags"]
      212 MOVE                             R30 R2
      213 LOADK                            R31 K75 ["row.label"]
      214 CALL                             R30 1 1
      215 SETTABLEKS                       R30 R29 K36 ["Text"]
      217 CALL                             R28 1 -1
      218 SETLIST                          R27 R28 -1 [1]
      220 CALL                             R26 1 -1
      221 SETLIST                          R25 R26 -1 [1]
      223 CALL                             R23 2 1
      224 SETTABLEKS                       R23 R22 K63 ["Each"]
      226 CALL                             R21 1 -1
      227 SETLIST                          R20 R21 -1 [1]
      229 CALL                             R19 1 -1
      230 SETLIST                          R18 R19 -1 [1]
      232 CALL                             R17 1 -1
      233 SETLIST                          R15 R16 -1 [1]
      235 CALL                             R14 1 -1
      236 SETLIST                          R13 R14 -1 [1]
      238 DUPCLOSURE                       R14 K76 [PROTO_8]
      239 CALL                             R10 4 1
      240 RETURN                           R10 1
