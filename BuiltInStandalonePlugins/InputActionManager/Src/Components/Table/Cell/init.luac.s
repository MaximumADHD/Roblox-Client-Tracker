PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onItemChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["onCloseMenu"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onOpenActivated"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCloseMenu"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onOpenActivated"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["disabled"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 GETTABLEKS                       R3 R0 K1 ["property"]
        9 JUMPIFNOTEQKS                    R3 K2 ["keyCode"] ; [+6]
       11 GETTABLEKS                       R2 R0 K3 ["action"]
       13 GETTABLEKS                       R2 R2 K4 ["type"]
       15 JUMP                             ; [+2]
       16 GETIMPORT                        R2 K8 [Enum.InputActionType.Bool]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R4 R0 K1 ["property"]
       21 GETTABLEKS                       R5 R0 K9 ["schema"]
       23 MOVE                             R6 R2
       24 GETTABLEKS                       R7 R0 K10 ["binding"]
       26 CALL                             R3 4 1
       27 GETUPVAL                         R4 2
       28 GETTABLEKS                       R4 R4 K11 ["createNextOrder"]
       30 CALL                             R4 0 1
       31 GETUPVAL                         R5 3
       32 GETTABLEKS                       R6 R0 K3 ["action"]
       34 GETTABLEKS                       R6 R6 K12 ["parentUuid"]
       36 GETTABLEKS                       R7 R0 K10 ["binding"]
       38 GETTABLEKS                       R8 R0 K1 ["property"]
       40 GETTABLEKS                       R9 R0 K9 ["schema"]
       42 GETTABLEKS                       R10 R0 K3 ["action"]
       44 GETTABLEKS                       R10 R10 K4 ["type"]
       46 GETTABLEKS                       R11 R0 K13 ["index"]
       48 GETTABLEKS                       R12 R0 K14 ["validBinding"]
       50 CALL                             R5 7 3
       51 GETUPVAL                         R8 4
       52 MOVE                             R9 R0
       53 CALL                             R8 1 1
       54 GETUPVAL                         R9 5
       55 MOVE                             R10 R0
       56 MOVE                             R11 R2
       57 CALL                             R9 2 1
       58 GETUPVAL                         R10 2
       59 GETTABLEKS                       R10 R10 K15 ["useEventCallback"]
       61 NEWCLOSURE                       R11 P0
       62 CAPTURE                          VAL R9
       63 CALL                             R10 1 1
       64 GETUPVAL                         R11 2
       65 GETTABLEKS                       R11 R11 K15 ["useEventCallback"]
       67 NEWCLOSURE                       R12 P1
       68 CAPTURE                          VAL R9
       69 CALL                             R11 1 1
       70 GETUPVAL                         R12 2
       71 GETTABLEKS                       R12 R12 K15 ["useEventCallback"]
       73 NEWCLOSURE                       R13 P2
       74 CAPTURE                          VAL R9
       75 CALL                             R12 1 1
       76 GETUPVAL                         R13 2
       77 GETTABLEKS                       R13 R13 K15 ["useEventCallback"]
       79 NEWCLOSURE                       R14 P3
       80 CAPTURE                          VAL R9
       81 CALL                             R13 1 1
       82 LOADNIL                          R14
       83 LOADNIL                          R15
       84 GETUPVAL                         R16 6
       85 CALL                             R16 0 1
       86 JUMPIFNOT                        R16 ; [+39]
       87 GETTABLEKS                       R17 R0 K1 ["property"]
       89 JUMPIFNOTEQKS                    R17 K16 ["primaryModifier"] ; [+9]
       91 GETTABLEKS                       R16 R0 K10 ["binding"]
       93 JUMPIFNOT                        R16 ; [+18]
       94 GETTABLEKS                       R16 R0 K10 ["binding"]
       96 GETTABLEKS                       R16 R16 K17 ["uiModifier"]
       98 JUMP                             ; [+13]
       99 GETTABLEKS                       R17 R0 K1 ["property"]
      101 JUMPIFNOTEQKS                    R17 K2 ["keyCode"] ; [+9]
      103 GETTABLEKS                       R16 R0 K10 ["binding"]
      105 JUMPIFNOT                        R16 ; [+6]
      106 GETTABLEKS                       R16 R0 K10 ["binding"]
      108 GETTABLEKS                       R16 R16 K18 ["uiButton"]
      110 JUMP                             ; [+1]
      111 LOADNIL                          R16
      112 GETUPVAL                         R17 7
      113 JUMPIFNOT                        R16 ; [+3]
      114 GETTABLEKS                       R18 R16 K4 ["type"]
      116 JUMP                             ; [+1]
      117 LOADK                            R18 K19 ["ImageButton"]
      118 CALL                             R17 1 1
      119 MOVE                             R14 R17
      120 MOVE                             R17 R16
      121 JUMPIFNOT                        R17 ; [+2]
      122 GETTABLEKS                       R17 R16 K20 ["name"]
      124 MOVE                             R15 R17
      125 JUMP                             ; [+34]
      126 GETUPVAL                         R16 7
      127 GETTABLEKS                       R18 R0 K10 ["binding"]
      129 JUMPIFNOT                        R18 ; [+12]
      130 GETTABLEKS                       R18 R0 K10 ["binding"]
      132 GETTABLEKS                       R18 R18 K18 ["uiButton"]
      134 JUMPIFNOT                        R18 ; [+7]
      135 GETTABLEKS                       R17 R0 K10 ["binding"]
      137 GETTABLEKS                       R17 R17 K18 ["uiButton"]
      139 GETTABLEKS                       R17 R17 K4 ["type"]
      141 JUMP                             ; [+1]
      142 LOADK                            R17 K19 ["ImageButton"]
      143 CALL                             R16 1 1
      144 MOVE                             R14 R16
      145 GETTABLEKS                       R16 R0 K10 ["binding"]
      147 JUMPIFNOT                        R16 ; [+11]
      148 GETTABLEKS                       R16 R0 K10 ["binding"]
      150 GETTABLEKS                       R16 R16 K18 ["uiButton"]
      152 JUMPIFNOT                        R16 ; [+6]
      153 GETTABLEKS                       R16 R0 K10 ["binding"]
      155 GETTABLEKS                       R16 R16 K18 ["uiButton"]
      157 GETTABLEKS                       R16 R16 K20 ["name"]
      159 MOVE                             R15 R16
      160 GETUPVAL                         R17 8
      161 CALL                             R17 0 1
      162 JUMPIFNOT                        R17 ; [+9]
      163 GETUPVAL                         R16 9
      164 MOVE                             R17 R3
      165 GETTABLEKS                       R18 R0 K10 ["binding"]
      167 GETTABLEKS                       R19 R0 K1 ["property"]
      169 MOVE                             R20 R15
      170 CALL                             R16 4 1
      171 JUMP                             ; [+8]
      172 GETUPVAL                         R16 10
      173 MOVE                             R17 R3
      174 GETTABLEKS                       R18 R0 K10 ["binding"]
      176 GETTABLEKS                       R19 R0 K1 ["property"]
      178 MOVE                             R20 R15
      179 CALL                             R16 4 1
      180 GETUPVAL                         R17 11
      181 GETTABLEKS                       R17 R17 K21 ["createElement"]
      183 GETUPVAL                         R18 12
      184 DUPTABLE                         R19 K35 [{"disabled", "icon", "inputRef", "isHovered", "isOpen", "filterText", "onActivated", "onFilterTextChanged", "onOpenActivated", "onRemoveActivated", "onStateChanged", "property", "schema", "selected", "cellType", "text"}]
      185 SETTABLEKS                       R1 R19 K0 ["disabled"]
      187 DUPTABLE                         R20 K41 [{"buttonIcon", "cellType", "currentIcon", "message", "severity", "title"}]
      188 SETTABLEKS                       R14 R20 K36 ["buttonIcon"]
      190 SETTABLEKS                       R3 R20 K33 ["cellType"]
      192 GETTABLEKS                       R21 R9 K37 ["currentIcon"]
      194 SETTABLEKS                       R21 R20 K37 ["currentIcon"]
      196 SETTABLEKS                       R7 R20 K38 ["message"]
      198 SETTABLEKS                       R5 R20 K39 ["severity"]
      200 SETTABLEKS                       R6 R20 K40 ["title"]
      202 SETTABLEKS                       R20 R19 K22 ["icon"]
      204 GETTABLEKS                       R20 R9 K23 ["inputRef"]
      206 SETTABLEKS                       R20 R19 K23 ["inputRef"]
      208 GETTABLEKS                       R20 R8 K24 ["isHovered"]
      210 SETTABLEKS                       R20 R19 K24 ["isHovered"]
      212 GETTABLEKS                       R20 R9 K25 ["isOpen"]
      214 SETTABLEKS                       R20 R19 K25 ["isOpen"]
      216 GETTABLEKS                       R20 R9 K26 ["filterText"]
      218 SETTABLEKS                       R20 R19 K26 ["filterText"]
      220 JUMPIFNOTEQKS                    R3 K42 ["Instance"] ; [+4]
      222 GETTABLEKS                       R20 R8 K43 ["onButtonSelectorActivated"]
      224 JUMP                             ; [+8]
      225 JUMPIFNOTEQKS                    R3 K44 ["Dropdown"] ; [+6]
      227 GETTABLEKS                       R21 R9 K25 ["isOpen"]
      229 JUMPIF                           R21 ; [+2]
      230 MOVE                             R20 R13
      231 JUMP                             ; [+1]
      232 LOADNIL                          R20
      233 SETTABLEKS                       R20 R19 K27 ["onActivated"]
      235 GETTABLEKS                       R20 R9 K28 ["onFilterTextChanged"]
      237 SETTABLEKS                       R20 R19 K28 ["onFilterTextChanged"]
      239 SETTABLEKS                       R11 R19 K29 ["onOpenActivated"]
      241 GETTABLEKS                       R21 R0 K10 ["binding"]
      243 JUMPIFEQKNIL                     R21 ; [+4]
      245 GETTABLEKS                       R20 R8 K30 ["onRemoveActivated"]
      247 JUMP                             ; [+1]
      248 LOADNIL                          R20
      249 SETTABLEKS                       R20 R19 K30 ["onRemoveActivated"]
      251 GETTABLEKS                       R20 R8 K31 ["onStateChanged"]
      253 SETTABLEKS                       R20 R19 K31 ["onStateChanged"]
      255 GETTABLEKS                       R20 R0 K1 ["property"]
      257 SETTABLEKS                       R20 R19 K1 ["property"]
      259 GETTABLEKS                       R20 R0 K9 ["schema"]
      261 SETTABLEKS                       R20 R19 K9 ["schema"]
      263 JUMPIFNOTEQKS                    R3 K42 ["Instance"] ; [+4]
      265 GETTABLEKS                       R20 R8 K32 ["selected"]
      267 JUMP                             ; [+2]
      268 GETTABLEKS                       R20 R9 K25 ["isOpen"]
      270 SETTABLEKS                       R20 R19 K32 ["selected"]
      272 SETTABLEKS                       R3 R19 K33 ["cellType"]
      274 SETTABLEKS                       R16 R19 K34 ["text"]
      276 CALL                             R17 2 1
      277 JUMPIFNOTEQKS                    R3 K44 ["Dropdown"] ; [+35]
      279 GETUPVAL                         R18 11
      280 GETTABLEKS                       R18 R18 K21 ["createElement"]
      282 GETUPVAL                         R19 13
      283 DUPTABLE                         R20 K49 [{"anchorRef", "isOpen", "items", "onCloseMenu", "onItemChanged", "property", "schema"}]
      284 GETTABLEKS                       R21 R9 K23 ["inputRef"]
      286 SETTABLEKS                       R21 R20 K45 ["anchorRef"]
      288 GETTABLEKS                       R21 R9 K25 ["isOpen"]
      290 SETTABLEKS                       R21 R20 K25 ["isOpen"]
      292 GETTABLEKS                       R21 R9 K46 ["items"]
      294 SETTABLEKS                       R21 R20 K46 ["items"]
      296 SETTABLEKS                       R12 R20 K47 ["onCloseMenu"]
      298 SETTABLEKS                       R10 R20 K48 ["onItemChanged"]
      300 GETTABLEKS                       R21 R0 K1 ["property"]
      302 SETTABLEKS                       R21 R20 K1 ["property"]
      304 GETTABLEKS                       R21 R0 K9 ["schema"]
      306 SETTABLEKS                       R21 R20 K9 ["schema"]
      308 DUPTABLE                         R21 K51 [{"Control"}]
      309 SETTABLEKS                       R17 R21 K50 ["Control"]
      311 CALL                             R18 3 1
      312 JUMP                             ; [+1]
      313 MOVE                             R18 R17
      314 GETUPVAL                         R19 11
      315 GETTABLEKS                       R19 R19 K21 ["createElement"]
      317 GETUPVAL                         R20 14
      318 DUPTABLE                         R21 K57 [{["GroupTransparency"], ["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full", ["testId"]}]
      319 JUMPIFNOT                        R1 ; [+2]
      320 LOADK                            R22 K58 [0.5]
      321 JUMP                             ; [+1]
      322 LOADNIL                          R22
      323 SETTABLEKS                       R22 R21 K52 ["GroupTransparency"]
      325 GETTABLEKS                       R22 R0 K53 ["LayoutOrder"]
      327 SETTABLEKS                       R22 R21 K53 ["LayoutOrder"]
      329 LOADK                            R22 K59 ["%*-%*-cell"]
      330 GETTABLEKS                       R24 R0 K1 ["property"]
      332 GETTABLEKS                       R25 R0 K9 ["schema"]
      334 NAMECALL                         R22 R22 K60 ["format"]
      336 CALL                             R22 3 1
      337 SETTABLEKS                       R22 R21 K56 ["testId"]
      339 DUPTABLE                         R22 K63 [{"Container", "Divider"}]
      340 GETUPVAL                         R23 11
      341 GETTABLEKS                       R23 R23 K21 ["createElement"]
      343 GETUPVAL                         R24 14
      344 DUPTABLE                         R25 K65 [{["LayoutOrder"], ["tag"] = "row align-y-center size-full-full"}]
      345 MOVE                             R26 R4
      346 CALL                             R26 0 1
      347 SETTABLEKS                       R26 R25 K53 ["LayoutOrder"]
      349 DUPTABLE                         R26 K67 [{"Content"}]
      350 LOADB                            R27 0
      351 JUMPIFEQKNIL                     R3 ; [+2]
      353 MOVE                             R27 R18
      354 SETTABLEKS                       R27 R26 K66 ["Content"]
      356 CALL                             R23 3 1
      357 SETTABLEKS                       R23 R22 K61 ["Container"]
      359 GETUPVAL                         R23 11
      360 GETTABLEKS                       R23 R23 K21 ["createElement"]
      362 GETUPVAL                         R24 15
      363 DUPTABLE                         R25 K70 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      364 MOVE                             R26 R4
      365 CALL                             R26 0 1
      366 SETTABLEKS                       R26 R25 K53 ["LayoutOrder"]
      368 GETUPVAL                         R26 16
      369 GETTABLEKS                       R26 R26 K71 ["Horizontal"]
      371 SETTABLEKS                       R26 R25 K68 ["orientation"]
      373 CALL                             R23 2 1
      374 SETTABLEKS                       R23 R22 K62 ["Divider"]
      376 CALL                             R19 3 -1
      377 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Divider"]
       30 GETTABLEKS                       R5 R3 K11 ["View"]
       32 GETTABLEKS                       R6 R3 K12 ["Enums"]
       34 GETTABLEKS                       R6 R6 K13 ["Orientation"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Types"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R9 R0 K14 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Util"]
       49 GETTABLEKS                       R9 R9 K17 ["Cell"]
       51 GETTABLEKS                       R9 R9 K18 ["getCellType"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R10 R0 K14 ["Src"]
       58 GETTABLEKS                       R10 R10 K16 ["Util"]
       60 GETTABLEKS                       R10 R10 K17 ["Cell"]
       62 GETTABLEKS                       R10 R10 K19 ["DEPRECATED_getDisplayText"]
       64 CALL                             R9 1 1
       65 GETIMPORT                        R10 K5 [require]
       67 GETIMPORT                        R11 K1 [script]
       69 GETTABLEKS                       R11 R11 K20 ["CellControl"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K5 [require]
       74 GETIMPORT                        R12 K1 [script]
       76 GETTABLEKS                       R12 R12 K21 ["KeycodeDropdown"]
       78 CALL                             R11 1 1
       79 GETIMPORT                        R12 K5 [require]
       81 GETTABLEKS                       R13 R0 K14 ["Src"]
       83 GETTABLEKS                       R13 R13 K22 ["Flags"]
       85 GETTABLEKS                       R13 R13 K23 ["getFFlagIAMUIModifier"]
       87 CALL                             R12 1 1
       88 GETIMPORT                        R13 K5 [require]
       90 GETTABLEKS                       R14 R0 K14 ["Src"]
       92 GETTABLEKS                       R14 R14 K24 ["Hooks"]
       94 GETTABLEKS                       R14 R14 K17 ["Cell"]
       96 GETTABLEKS                       R14 R14 K25 ["useCellSelection"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R15 R0 K14 ["Src"]
      103 GETTABLEKS                       R15 R15 K24 ["Hooks"]
      105 GETTABLEKS                       R15 R15 K17 ["Cell"]
      107 GETTABLEKS                       R15 R15 K26 ["useDisplayText"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K5 [require]
      112 GETTABLEKS                       R16 R0 K14 ["Src"]
      114 GETTABLEKS                       R16 R16 K24 ["Hooks"]
      116 GETTABLEKS                       R16 R16 K27 ["useIcon"]
      118 CALL                             R15 1 1
      119 GETIMPORT                        R16 K5 [require]
      121 GETTABLEKS                       R17 R0 K14 ["Src"]
      123 GETTABLEKS                       R17 R17 K24 ["Hooks"]
      125 GETTABLEKS                       R17 R17 K17 ["Cell"]
      127 GETTABLEKS                       R17 R17 K28 ["useKeycodeDropdown"]
      129 CALL                             R16 1 1
      130 GETIMPORT                        R17 K5 [require]
      132 GETTABLEKS                       R18 R0 K14 ["Src"]
      134 GETTABLEKS                       R18 R18 K24 ["Hooks"]
      136 GETTABLEKS                       R18 R18 K29 ["Binding"]
      138 GETTABLEKS                       R18 R18 K30 ["useStatus"]
      140 CALL                             R17 1 1
      141 GETTABLEKS                       R18 R0 K14 ["Src"]
      143 GETTABLEKS                       R18 R18 K22 ["Flags"]
      145 GETIMPORT                        R19 K5 [require]
      147 GETTABLEKS                       R20 R18 K31 ["getFFlagIAMBooleanProperties"]
      149 CALL                             R19 1 1
      150 GETIMPORT                        R20 K5 [require]
      152 GETTABLEKS                       R21 R18 K32 ["getFFlagIAMTouchButtonImprovements"]
      154 CALL                             R20 1 1
      155 DUPCLOSURE                       R21 K33 [PROTO_4]
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R8
      158 CAPTURE                          VAL R2
      159 CAPTURE                          VAL R17
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R15
      164 CAPTURE                          VAL R20
      165 CAPTURE                          VAL R14
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R11
      170 CAPTURE                          VAL R5
      171 CAPTURE                          VAL R4
      172 CAPTURE                          VAL R6
      173 RETURN                           R21 1
