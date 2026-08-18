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
       75 GETUPVAL                         R13 5
       76 GETTABLEKS                       R15 R0 K9 ["binding"]
       78 JUMPIFNOT                        R15 ; [+12]
       79 GETTABLEKS                       R15 R0 K9 ["binding"]
       81 GETTABLEKS                       R15 R15 K15 ["uiButton"]
       83 JUMPIFNOT                        R15 ; [+7]
       84 GETTABLEKS                       R14 R0 K9 ["binding"]
       86 GETTABLEKS                       R14 R14 K15 ["uiButton"]
       88 GETTABLEKS                       R14 R14 K3 ["type"]
       90 JUMP                             ; [+1]
       91 LOADK                            R14 K16 ["ImageButton"]
       92 CALL                             R13 1 1
       93 GETTABLEKS                       R14 R0 K9 ["binding"]
       95 JUMPIFNOT                        R14 ; [+11]
       96 GETTABLEKS                       R14 R0 K9 ["binding"]
       98 GETTABLEKS                       R14 R14 K15 ["uiButton"]
      100 JUMPIFNOT                        R14 ; [+6]
      101 GETTABLEKS                       R14 R0 K9 ["binding"]
      103 GETTABLEKS                       R14 R14 K15 ["uiButton"]
      105 GETTABLEKS                       R14 R14 K17 ["name"]
      107 GETUPVAL                         R15 6
      108 MOVE                             R16 R2
      109 GETTABLEKS                       R17 R0 K9 ["binding"]
      111 GETTABLEKS                       R18 R0 K0 ["property"]
      113 MOVE                             R19 R14
      114 CALL                             R15 4 1
      115 GETUPVAL                         R16 7
      116 GETTABLEKS                       R16 R16 K18 ["createElement"]
      118 GETUPVAL                         R17 8
      119 DUPTABLE                         R18 K32 [{"icon", "inputRef", "isHovered", "isOpen", "filterText", "onActivated", "onFilterTextChanged", "onOpenActivated", "onRemoveActivated", "onStateChanged", "property", "schema", "selected", "cellType", "text"}]
      120 DUPTABLE                         R19 K38 [{"buttonIcon", "cellType", "currentIcon", "message", "severity", "title"}]
      121 SETTABLEKS                       R13 R19 K33 ["buttonIcon"]
      123 SETTABLEKS                       R2 R19 K30 ["cellType"]
      125 GETTABLEKS                       R20 R8 K34 ["currentIcon"]
      127 SETTABLEKS                       R20 R19 K34 ["currentIcon"]
      129 SETTABLEKS                       R6 R19 K35 ["message"]
      131 SETTABLEKS                       R4 R19 K36 ["severity"]
      133 SETTABLEKS                       R5 R19 K37 ["title"]
      135 SETTABLEKS                       R19 R18 K19 ["icon"]
      137 GETTABLEKS                       R19 R8 K20 ["inputRef"]
      139 SETTABLEKS                       R19 R18 K20 ["inputRef"]
      141 GETTABLEKS                       R19 R7 K21 ["isHovered"]
      143 SETTABLEKS                       R19 R18 K21 ["isHovered"]
      145 GETTABLEKS                       R19 R8 K22 ["isOpen"]
      147 SETTABLEKS                       R19 R18 K22 ["isOpen"]
      149 GETTABLEKS                       R19 R8 K23 ["filterText"]
      151 SETTABLEKS                       R19 R18 K23 ["filterText"]
      153 JUMPIFNOTEQKS                    R2 K39 ["Instance"] ; [+4]
      155 GETTABLEKS                       R19 R7 K40 ["onButtonSelectorActivated"]
      157 JUMP                             ; [+8]
      158 JUMPIFNOTEQKS                    R2 K41 ["Dropdown"] ; [+6]
      160 GETTABLEKS                       R20 R8 K22 ["isOpen"]
      162 JUMPIF                           R20 ; [+2]
      163 MOVE                             R19 R12
      164 JUMP                             ; [+1]
      165 LOADNIL                          R19
      166 SETTABLEKS                       R19 R18 K24 ["onActivated"]
      168 GETTABLEKS                       R19 R8 K25 ["onFilterTextChanged"]
      170 SETTABLEKS                       R19 R18 K25 ["onFilterTextChanged"]
      172 SETTABLEKS                       R10 R18 K26 ["onOpenActivated"]
      174 GETTABLEKS                       R20 R0 K9 ["binding"]
      176 JUMPIFEQKNIL                     R20 ; [+4]
      178 GETTABLEKS                       R19 R7 K27 ["onRemoveActivated"]
      180 JUMP                             ; [+1]
      181 LOADNIL                          R19
      182 SETTABLEKS                       R19 R18 K27 ["onRemoveActivated"]
      184 GETTABLEKS                       R19 R7 K28 ["onStateChanged"]
      186 SETTABLEKS                       R19 R18 K28 ["onStateChanged"]
      188 GETTABLEKS                       R19 R0 K0 ["property"]
      190 SETTABLEKS                       R19 R18 K0 ["property"]
      192 GETTABLEKS                       R19 R0 K8 ["schema"]
      194 SETTABLEKS                       R19 R18 K8 ["schema"]
      196 JUMPIFNOTEQKS                    R2 K39 ["Instance"] ; [+4]
      198 GETTABLEKS                       R19 R7 K29 ["selected"]
      200 JUMP                             ; [+2]
      201 GETTABLEKS                       R19 R8 K22 ["isOpen"]
      203 SETTABLEKS                       R19 R18 K29 ["selected"]
      205 SETTABLEKS                       R2 R18 K30 ["cellType"]
      207 SETTABLEKS                       R15 R18 K31 ["text"]
      209 CALL                             R16 2 1
      210 JUMPIFNOTEQKS                    R2 K41 ["Dropdown"] ; [+35]
      212 GETUPVAL                         R17 7
      213 GETTABLEKS                       R17 R17 K18 ["createElement"]
      215 GETUPVAL                         R18 9
      216 DUPTABLE                         R19 K46 [{"anchorRef", "isOpen", "items", "onCloseMenu", "onItemChanged", "property", "schema"}]
      217 GETTABLEKS                       R20 R8 K20 ["inputRef"]
      219 SETTABLEKS                       R20 R19 K42 ["anchorRef"]
      221 GETTABLEKS                       R20 R8 K22 ["isOpen"]
      223 SETTABLEKS                       R20 R19 K22 ["isOpen"]
      225 GETTABLEKS                       R20 R8 K43 ["items"]
      227 SETTABLEKS                       R20 R19 K43 ["items"]
      229 SETTABLEKS                       R11 R19 K44 ["onCloseMenu"]
      231 SETTABLEKS                       R9 R19 K45 ["onItemChanged"]
      233 GETTABLEKS                       R20 R0 K0 ["property"]
      235 SETTABLEKS                       R20 R19 K0 ["property"]
      237 GETTABLEKS                       R20 R0 K8 ["schema"]
      239 SETTABLEKS                       R20 R19 K8 ["schema"]
      241 DUPTABLE                         R20 K48 [{"Control"}]
      242 SETTABLEKS                       R16 R20 K47 ["Control"]
      244 CALL                             R17 3 1
      245 JUMP                             ; [+1]
      246 MOVE                             R17 R16
      247 GETUPVAL                         R18 7
      248 GETTABLEKS                       R18 R18 K18 ["createElement"]
      250 GETUPVAL                         R19 10
      251 DUPTABLE                         R20 K53 [{["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full", ["testId"]}]
      252 GETTABLEKS                       R21 R0 K49 ["LayoutOrder"]
      254 SETTABLEKS                       R21 R20 K49 ["LayoutOrder"]
      256 LOADK                            R22 K54 ["%*-%*-cell"]
      257 GETTABLEKS                       R24 R0 K0 ["property"]
      259 GETTABLEKS                       R25 R0 K8 ["schema"]
      261 NAMECALL                         R22 R22 K55 ["format"]
      263 CALL                             R22 3 1
      264 MOVE                             R21 R22
      265 SETTABLEKS                       R21 R20 K52 ["testId"]
      267 DUPTABLE                         R21 K58 [{"Container", "Divider"}]
      268 GETUPVAL                         R22 7
      269 GETTABLEKS                       R22 R22 K18 ["createElement"]
      271 GETUPVAL                         R23 10
      272 DUPTABLE                         R24 K60 [{["LayoutOrder"], ["tag"] = "row align-y-center size-full-full"}]
      273 MOVE                             R25 R3
      274 CALL                             R25 0 1
      275 SETTABLEKS                       R25 R24 K49 ["LayoutOrder"]
      277 DUPTABLE                         R25 K62 [{"Content"}]
      278 LOADB                            R26 0
      279 JUMPIFEQKNIL                     R2 ; [+2]
      281 MOVE                             R26 R17
      282 SETTABLEKS                       R26 R25 K61 ["Content"]
      284 CALL                             R22 3 1
      285 SETTABLEKS                       R22 R21 K56 ["Container"]
      287 GETUPVAL                         R22 7
      288 GETTABLEKS                       R22 R22 K18 ["createElement"]
      290 GETUPVAL                         R23 11
      291 DUPTABLE                         R24 K65 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      292 MOVE                             R25 R3
      293 CALL                             R25 0 1
      294 SETTABLEKS                       R25 R24 K49 ["LayoutOrder"]
      296 GETUPVAL                         R25 12
      297 GETTABLEKS                       R25 R25 K66 ["Horizontal"]
      299 SETTABLEKS                       R25 R24 K63 ["orientation"]
      301 CALL                             R22 2 1
      302 SETTABLEKS                       R22 R21 K57 ["Divider"]
      304 CALL                             R18 3 -1
      305 RETURN                           R18 -1

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
       62 GETTABLEKS                       R10 R10 K19 ["getDisplayText"]
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
       83 GETTABLEKS                       R13 R13 K22 ["Hooks"]
       85 GETTABLEKS                       R13 R13 K17 ["Cell"]
       87 GETTABLEKS                       R13 R13 K23 ["useCellSelection"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K5 [require]
       92 GETTABLEKS                       R14 R0 K14 ["Src"]
       94 GETTABLEKS                       R14 R14 K22 ["Hooks"]
       96 GETTABLEKS                       R14 R14 K24 ["useIcon"]
       98 CALL                             R13 1 1
       99 GETIMPORT                        R14 K5 [require]
      101 GETTABLEKS                       R15 R0 K14 ["Src"]
      103 GETTABLEKS                       R15 R15 K22 ["Hooks"]
      105 GETTABLEKS                       R15 R15 K17 ["Cell"]
      107 GETTABLEKS                       R15 R15 K25 ["useKeycodeDropdown"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K5 [require]
      112 GETTABLEKS                       R16 R0 K14 ["Src"]
      114 GETTABLEKS                       R16 R16 K22 ["Hooks"]
      116 GETTABLEKS                       R16 R16 K26 ["Binding"]
      118 GETTABLEKS                       R16 R16 K27 ["useStatus"]
      120 CALL                             R15 1 1
      121 DUPCLOSURE                       R16 K28 [PROTO_4]
      122 CAPTURE                          VAL R8
      123 CAPTURE                          VAL R2
      124 CAPTURE                          VAL R15
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R1
      130 CAPTURE                          VAL R10
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R5
      133 CAPTURE                          VAL R4
      134 CAPTURE                          VAL R6
      135 RETURN                           R16 1
