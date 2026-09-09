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
        0 GETTABLEKS                       R2 R0 K0 ["property"]
        2 JUMPIFNOTEQKS                    R2 K1 ["keyCode"] ; [+6]
        4 GETTABLEKS                       R1 R0 K2 ["action"]
        6 GETTABLEKS                       R1 R1 K3 ["type"]
        8 JUMP                             ; [+2]
        9 GETIMPORT                        R1 K7 [Enum.InputActionType.Bool]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R3 R0 K0 ["property"]
       14 GETTABLEKS                       R4 R0 K8 ["schema"]
       16 MOVE                             R5 R1
       17 GETTABLEKS                       R6 R0 K9 ["binding"]
       19 CALL                             R2 4 1
       20 GETUPVAL                         R3 1
       21 GETTABLEKS                       R3 R3 K10 ["createNextOrder"]
       23 CALL                             R3 0 1
       24 GETUPVAL                         R4 2
       25 GETTABLEKS                       R5 R0 K2 ["action"]
       27 GETTABLEKS                       R5 R5 K11 ["parentUuid"]
       29 GETTABLEKS                       R6 R0 K9 ["binding"]
       31 GETTABLEKS                       R7 R0 K0 ["property"]
       33 GETTABLEKS                       R8 R0 K8 ["schema"]
       35 GETTABLEKS                       R9 R0 K2 ["action"]
       37 GETTABLEKS                       R9 R9 K3 ["type"]
       39 GETTABLEKS                       R10 R0 K12 ["index"]
       41 GETTABLEKS                       R11 R0 K13 ["validBinding"]
       43 CALL                             R4 7 3
       44 GETUPVAL                         R7 3
       45 MOVE                             R8 R0
       46 CALL                             R7 1 1
       47 GETUPVAL                         R8 4
       48 MOVE                             R9 R0
       49 MOVE                             R10 R1
       50 CALL                             R8 2 1
       51 GETUPVAL                         R9 1
       52 GETTABLEKS                       R9 R9 K14 ["useEventCallback"]
       54 NEWCLOSURE                       R10 P0
       55 CAPTURE                          VAL R8
       56 CALL                             R9 1 1
       57 GETUPVAL                         R10 1
       58 GETTABLEKS                       R10 R10 K14 ["useEventCallback"]
       60 NEWCLOSURE                       R11 P1
       61 CAPTURE                          VAL R8
       62 CALL                             R10 1 1
       63 GETUPVAL                         R11 1
       64 GETTABLEKS                       R11 R11 K14 ["useEventCallback"]
       66 NEWCLOSURE                       R12 P2
       67 CAPTURE                          VAL R8
       68 CALL                             R11 1 1
       69 GETUPVAL                         R12 1
       70 GETTABLEKS                       R12 R12 K14 ["useEventCallback"]
       72 NEWCLOSURE                       R13 P3
       73 CAPTURE                          VAL R8
       74 CALL                             R12 1 1
       75 LOADNIL                          R13
       76 LOADNIL                          R14
       77 GETUPVAL                         R15 5
       78 CALL                             R15 0 1
       79 JUMPIFNOT                        R15 ; [+39]
       80 GETTABLEKS                       R16 R0 K0 ["property"]
       82 JUMPIFNOTEQKS                    R16 K15 ["primaryModifier"] ; [+9]
       84 GETTABLEKS                       R15 R0 K9 ["binding"]
       86 JUMPIFNOT                        R15 ; [+18]
       87 GETTABLEKS                       R15 R0 K9 ["binding"]
       89 GETTABLEKS                       R15 R15 K16 ["uiModifier"]
       91 JUMP                             ; [+13]
       92 GETTABLEKS                       R16 R0 K0 ["property"]
       94 JUMPIFNOTEQKS                    R16 K1 ["keyCode"] ; [+9]
       96 GETTABLEKS                       R15 R0 K9 ["binding"]
       98 JUMPIFNOT                        R15 ; [+6]
       99 GETTABLEKS                       R15 R0 K9 ["binding"]
      101 GETTABLEKS                       R15 R15 K17 ["uiButton"]
      103 JUMP                             ; [+1]
      104 LOADNIL                          R15
      105 GETUPVAL                         R16 6
      106 JUMPIFNOT                        R15 ; [+3]
      107 GETTABLEKS                       R17 R15 K3 ["type"]
      109 JUMP                             ; [+1]
      110 LOADK                            R17 K18 ["ImageButton"]
      111 CALL                             R16 1 1
      112 MOVE                             R13 R16
      113 MOVE                             R16 R15
      114 JUMPIFNOT                        R16 ; [+2]
      115 GETTABLEKS                       R16 R15 K19 ["name"]
      117 MOVE                             R14 R16
      118 JUMP                             ; [+34]
      119 GETUPVAL                         R15 6
      120 GETTABLEKS                       R17 R0 K9 ["binding"]
      122 JUMPIFNOT                        R17 ; [+12]
      123 GETTABLEKS                       R17 R0 K9 ["binding"]
      125 GETTABLEKS                       R17 R17 K17 ["uiButton"]
      127 JUMPIFNOT                        R17 ; [+7]
      128 GETTABLEKS                       R16 R0 K9 ["binding"]
      130 GETTABLEKS                       R16 R16 K17 ["uiButton"]
      132 GETTABLEKS                       R16 R16 K3 ["type"]
      134 JUMP                             ; [+1]
      135 LOADK                            R16 K18 ["ImageButton"]
      136 CALL                             R15 1 1
      137 MOVE                             R13 R15
      138 GETTABLEKS                       R15 R0 K9 ["binding"]
      140 JUMPIFNOT                        R15 ; [+11]
      141 GETTABLEKS                       R15 R0 K9 ["binding"]
      143 GETTABLEKS                       R15 R15 K17 ["uiButton"]
      145 JUMPIFNOT                        R15 ; [+6]
      146 GETTABLEKS                       R15 R0 K9 ["binding"]
      148 GETTABLEKS                       R15 R15 K17 ["uiButton"]
      150 GETTABLEKS                       R15 R15 K19 ["name"]
      152 MOVE                             R14 R15
      153 GETUPVAL                         R16 7
      154 CALL                             R16 0 1
      155 JUMPIFNOT                        R16 ; [+9]
      156 GETUPVAL                         R15 8
      157 MOVE                             R16 R2
      158 GETTABLEKS                       R17 R0 K9 ["binding"]
      160 GETTABLEKS                       R18 R0 K0 ["property"]
      162 MOVE                             R19 R14
      163 CALL                             R15 4 1
      164 JUMP                             ; [+8]
      165 GETUPVAL                         R15 9
      166 MOVE                             R16 R2
      167 GETTABLEKS                       R17 R0 K9 ["binding"]
      169 GETTABLEKS                       R18 R0 K0 ["property"]
      171 MOVE                             R19 R14
      172 CALL                             R15 4 1
      173 GETUPVAL                         R16 10
      174 GETTABLEKS                       R16 R16 K20 ["createElement"]
      176 GETUPVAL                         R17 11
      177 DUPTABLE                         R18 K34 [{"icon", "inputRef", "isHovered", "isOpen", "filterText", "onActivated", "onFilterTextChanged", "onOpenActivated", "onRemoveActivated", "onStateChanged", "property", "schema", "selected", "cellType", "text"}]
      178 DUPTABLE                         R19 K40 [{"buttonIcon", "cellType", "currentIcon", "message", "severity", "title"}]
      179 SETTABLEKS                       R13 R19 K35 ["buttonIcon"]
      181 SETTABLEKS                       R2 R19 K32 ["cellType"]
      183 GETTABLEKS                       R20 R8 K36 ["currentIcon"]
      185 SETTABLEKS                       R20 R19 K36 ["currentIcon"]
      187 SETTABLEKS                       R6 R19 K37 ["message"]
      189 SETTABLEKS                       R4 R19 K38 ["severity"]
      191 SETTABLEKS                       R5 R19 K39 ["title"]
      193 SETTABLEKS                       R19 R18 K21 ["icon"]
      195 GETTABLEKS                       R19 R8 K22 ["inputRef"]
      197 SETTABLEKS                       R19 R18 K22 ["inputRef"]
      199 GETTABLEKS                       R19 R7 K23 ["isHovered"]
      201 SETTABLEKS                       R19 R18 K23 ["isHovered"]
      203 GETTABLEKS                       R19 R8 K24 ["isOpen"]
      205 SETTABLEKS                       R19 R18 K24 ["isOpen"]
      207 GETTABLEKS                       R19 R8 K25 ["filterText"]
      209 SETTABLEKS                       R19 R18 K25 ["filterText"]
      211 JUMPIFNOTEQKS                    R2 K41 ["Instance"] ; [+4]
      213 GETTABLEKS                       R19 R7 K42 ["onButtonSelectorActivated"]
      215 JUMP                             ; [+8]
      216 JUMPIFNOTEQKS                    R2 K43 ["Dropdown"] ; [+6]
      218 GETTABLEKS                       R20 R8 K24 ["isOpen"]
      220 JUMPIF                           R20 ; [+2]
      221 MOVE                             R19 R12
      222 JUMP                             ; [+1]
      223 LOADNIL                          R19
      224 SETTABLEKS                       R19 R18 K26 ["onActivated"]
      226 GETTABLEKS                       R19 R8 K27 ["onFilterTextChanged"]
      228 SETTABLEKS                       R19 R18 K27 ["onFilterTextChanged"]
      230 SETTABLEKS                       R10 R18 K28 ["onOpenActivated"]
      232 GETTABLEKS                       R20 R0 K9 ["binding"]
      234 JUMPIFEQKNIL                     R20 ; [+4]
      236 GETTABLEKS                       R19 R7 K29 ["onRemoveActivated"]
      238 JUMP                             ; [+1]
      239 LOADNIL                          R19
      240 SETTABLEKS                       R19 R18 K29 ["onRemoveActivated"]
      242 GETTABLEKS                       R19 R7 K30 ["onStateChanged"]
      244 SETTABLEKS                       R19 R18 K30 ["onStateChanged"]
      246 GETTABLEKS                       R19 R0 K0 ["property"]
      248 SETTABLEKS                       R19 R18 K0 ["property"]
      250 GETTABLEKS                       R19 R0 K8 ["schema"]
      252 SETTABLEKS                       R19 R18 K8 ["schema"]
      254 JUMPIFNOTEQKS                    R2 K41 ["Instance"] ; [+4]
      256 GETTABLEKS                       R19 R7 K31 ["selected"]
      258 JUMP                             ; [+2]
      259 GETTABLEKS                       R19 R8 K24 ["isOpen"]
      261 SETTABLEKS                       R19 R18 K31 ["selected"]
      263 SETTABLEKS                       R2 R18 K32 ["cellType"]
      265 SETTABLEKS                       R15 R18 K33 ["text"]
      267 CALL                             R16 2 1
      268 JUMPIFNOTEQKS                    R2 K43 ["Dropdown"] ; [+35]
      270 GETUPVAL                         R17 10
      271 GETTABLEKS                       R17 R17 K20 ["createElement"]
      273 GETUPVAL                         R18 12
      274 DUPTABLE                         R19 K48 [{"anchorRef", "isOpen", "items", "onCloseMenu", "onItemChanged", "property", "schema"}]
      275 GETTABLEKS                       R20 R8 K22 ["inputRef"]
      277 SETTABLEKS                       R20 R19 K44 ["anchorRef"]
      279 GETTABLEKS                       R20 R8 K24 ["isOpen"]
      281 SETTABLEKS                       R20 R19 K24 ["isOpen"]
      283 GETTABLEKS                       R20 R8 K45 ["items"]
      285 SETTABLEKS                       R20 R19 K45 ["items"]
      287 SETTABLEKS                       R11 R19 K46 ["onCloseMenu"]
      289 SETTABLEKS                       R9 R19 K47 ["onItemChanged"]
      291 GETTABLEKS                       R20 R0 K0 ["property"]
      293 SETTABLEKS                       R20 R19 K0 ["property"]
      295 GETTABLEKS                       R20 R0 K8 ["schema"]
      297 SETTABLEKS                       R20 R19 K8 ["schema"]
      299 DUPTABLE                         R20 K50 [{"Control"}]
      300 SETTABLEKS                       R16 R20 K49 ["Control"]
      302 CALL                             R17 3 1
      303 JUMP                             ; [+1]
      304 MOVE                             R17 R16
      305 GETUPVAL                         R18 10
      306 GETTABLEKS                       R18 R18 K20 ["createElement"]
      308 GETUPVAL                         R19 13
      309 DUPTABLE                         R20 K55 [{["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full", ["testId"]}]
      310 GETTABLEKS                       R21 R0 K51 ["LayoutOrder"]
      312 SETTABLEKS                       R21 R20 K51 ["LayoutOrder"]
      314 LOADK                            R22 K56 ["%*-%*-cell"]
      315 GETTABLEKS                       R24 R0 K0 ["property"]
      317 GETTABLEKS                       R25 R0 K8 ["schema"]
      319 NAMECALL                         R22 R22 K57 ["format"]
      321 CALL                             R22 3 1
      322 MOVE                             R21 R22
      323 SETTABLEKS                       R21 R20 K54 ["testId"]
      325 DUPTABLE                         R21 K60 [{"Container", "Divider"}]
      326 GETUPVAL                         R22 10
      327 GETTABLEKS                       R22 R22 K20 ["createElement"]
      329 GETUPVAL                         R23 13
      330 DUPTABLE                         R24 K62 [{["LayoutOrder"], ["tag"] = "row align-y-center size-full-full"}]
      331 MOVE                             R25 R3
      332 CALL                             R25 0 1
      333 SETTABLEKS                       R25 R24 K51 ["LayoutOrder"]
      335 DUPTABLE                         R25 K64 [{"Content"}]
      336 LOADB                            R26 0
      337 JUMPIFEQKNIL                     R2 ; [+2]
      339 MOVE                             R26 R17
      340 SETTABLEKS                       R26 R25 K63 ["Content"]
      342 CALL                             R22 3 1
      343 SETTABLEKS                       R22 R21 K58 ["Container"]
      345 GETUPVAL                         R22 10
      346 GETTABLEKS                       R22 R22 K20 ["createElement"]
      348 GETUPVAL                         R23 14
      349 DUPTABLE                         R24 K67 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      350 MOVE                             R25 R3
      351 CALL                             R25 0 1
      352 SETTABLEKS                       R25 R24 K51 ["LayoutOrder"]
      354 GETUPVAL                         R25 15
      355 GETTABLEKS                       R25 R25 K68 ["Horizontal"]
      357 SETTABLEKS                       R25 R24 K65 ["orientation"]
      359 CALL                             R22 2 1
      360 SETTABLEKS                       R22 R21 K59 ["Divider"]
      362 CALL                             R18 3 -1
      363 RETURN                           R18 -1

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
      147 GETTABLEKS                       R20 R18 K31 ["getFFlagIAMTouchButtonImprovements"]
      149 CALL                             R19 1 1
      150 DUPCLOSURE                       R20 K32 [PROTO_4]
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R13
      155 CAPTURE                          VAL R16
      156 CAPTURE                          VAL R12
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R19
      159 CAPTURE                          VAL R14
      160 CAPTURE                          VAL R9
      161 CAPTURE                          VAL R1
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R5
      165 CAPTURE                          VAL R4
      166 CAPTURE                          VAL R6
      167 RETURN                           R20 1
