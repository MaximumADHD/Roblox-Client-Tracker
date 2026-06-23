PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onItemChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["onCloseMenu"]
        8 CALL                             R1 0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["stopListening"]
       12 CALL                             R1 0 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopListening"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onOpenActivated"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["stopListening"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onCloseMenu"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onCloseMenu"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 GETTABLEKS                       R0 R0 K1 ["onControlActivated"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

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
       41 CALL                             R4 6 3
       42 GETUPVAL                         R7 3
       43 MOVE                             R8 R0
       44 CALL                             R7 1 1
       45 GETUPVAL                         R8 4
       46 MOVE                             R9 R0
       47 MOVE                             R10 R1
       48 CALL                             R8 2 1
       49 GETUPVAL                         R9 5
       50 MOVE                             R10 R0
       51 MOVE                             R11 R1
       52 MOVE                             R12 R2
       53 CALL                             R9 3 1
       54 GETUPVAL                         R10 1
       55 GETTABLEKS                       R10 R10 K13 ["useEventCallback"]
       57 NEWCLOSURE                       R11 P0
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R9
       60 CALL                             R10 1 1
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R11 R11 K13 ["useEventCallback"]
       64 NEWCLOSURE                       R12 P1
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R8
       67 CALL                             R11 1 1
       68 GETUPVAL                         R12 1
       69 GETTABLEKS                       R12 R12 K13 ["useEventCallback"]
       71 NEWCLOSURE                       R13 P2
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R8
       74 CALL                             R12 1 1
       75 GETUPVAL                         R13 1
       76 GETTABLEKS                       R13 R13 K13 ["useEventCallback"]
       78 NEWCLOSURE                       R14 P3
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R9
       81 CALL                             R13 1 1
       82 GETUPVAL                         R14 6
       83 GETTABLEKS                       R16 R0 K9 ["binding"]
       85 JUMPIFNOT                        R16 ; [+12]
       86 GETTABLEKS                       R16 R0 K9 ["binding"]
       88 GETTABLEKS                       R16 R16 K14 ["uiButton"]
       90 JUMPIFNOT                        R16 ; [+7]
       91 GETTABLEKS                       R15 R0 K9 ["binding"]
       93 GETTABLEKS                       R15 R15 K14 ["uiButton"]
       95 GETTABLEKS                       R15 R15 K3 ["type"]
       97 JUMP                             ; [+1]
       98 LOADK                            R15 K15 ["ImageButton"]
       99 CALL                             R14 1 1
      100 GETTABLEKS                       R15 R0 K9 ["binding"]
      102 JUMPIFNOT                        R15 ; [+11]
      103 GETTABLEKS                       R15 R0 K9 ["binding"]
      105 GETTABLEKS                       R15 R15 K14 ["uiButton"]
      107 JUMPIFNOT                        R15 ; [+6]
      108 GETTABLEKS                       R15 R0 K9 ["binding"]
      110 GETTABLEKS                       R15 R15 K14 ["uiButton"]
      112 GETTABLEKS                       R15 R15 K16 ["name"]
      114 GETUPVAL                         R16 7
      115 MOVE                             R17 R2
      116 GETTABLEKS                       R18 R0 K9 ["binding"]
      118 GETTABLEKS                       R19 R0 K0 ["property"]
      120 MOVE                             R20 R15
      121 CALL                             R16 4 1
      122 GETUPVAL                         R17 8
      123 GETTABLEKS                       R17 R17 K17 ["createElement"]
      125 GETUPVAL                         R18 9
      126 DUPTABLE                         R19 K31 [{"icon", "inputRef", "isHovered", "isOpen", "filterText", "onActivated", "onFilterTextChanged", "onOpenActivated", "onRemoveActivated", "onStateChanged", "property", "schema", "selected", "cellType", "text"}]
      127 DUPTABLE                         R20 K37 [{"buttonIcon", "cellType", "currentIcon", "message", "severity", "title"}]
      128 SETTABLEKS                       R14 R20 K32 ["buttonIcon"]
      130 SETTABLEKS                       R2 R20 K29 ["cellType"]
      132 GETTABLEKS                       R21 R8 K33 ["currentIcon"]
      134 SETTABLEKS                       R21 R20 K33 ["currentIcon"]
      136 SETTABLEKS                       R6 R20 K34 ["message"]
      138 SETTABLEKS                       R4 R20 K35 ["severity"]
      140 SETTABLEKS                       R5 R20 K36 ["title"]
      142 SETTABLEKS                       R20 R19 K18 ["icon"]
      144 GETTABLEKS                       R20 R8 K19 ["inputRef"]
      146 SETTABLEKS                       R20 R19 K19 ["inputRef"]
      148 GETTABLEKS                       R20 R7 K20 ["isHovered"]
      150 SETTABLEKS                       R20 R19 K20 ["isHovered"]
      152 GETTABLEKS                       R20 R8 K21 ["isOpen"]
      154 SETTABLEKS                       R20 R19 K21 ["isOpen"]
      156 GETTABLEKS                       R20 R8 K22 ["filterText"]
      158 SETTABLEKS                       R20 R19 K22 ["filterText"]
      160 JUMPIFNOTEQKS                    R2 K38 ["Instance"] ; [+4]
      162 GETTABLEKS                       R20 R7 K39 ["onButtonSelectorActivated"]
      164 JUMP                             ; [+8]
      165 JUMPIFNOTEQKS                    R2 K40 ["Dropdown"] ; [+6]
      167 GETTABLEKS                       R21 R8 K21 ["isOpen"]
      169 JUMPIF                           R21 ; [+2]
      170 MOVE                             R20 R13
      171 JUMP                             ; [+1]
      172 LOADNIL                          R20
      173 SETTABLEKS                       R20 R19 K23 ["onActivated"]
      175 GETTABLEKS                       R20 R8 K24 ["onFilterTextChanged"]
      177 SETTABLEKS                       R20 R19 K24 ["onFilterTextChanged"]
      179 SETTABLEKS                       R11 R19 K25 ["onOpenActivated"]
      181 GETTABLEKS                       R21 R0 K9 ["binding"]
      183 JUMPIFEQKNIL                     R21 ; [+4]
      185 GETTABLEKS                       R20 R7 K26 ["onRemoveActivated"]
      187 JUMP                             ; [+1]
      188 LOADNIL                          R20
      189 SETTABLEKS                       R20 R19 K26 ["onRemoveActivated"]
      191 GETTABLEKS                       R20 R7 K27 ["onStateChanged"]
      193 SETTABLEKS                       R20 R19 K27 ["onStateChanged"]
      195 GETTABLEKS                       R20 R0 K0 ["property"]
      197 SETTABLEKS                       R20 R19 K0 ["property"]
      199 GETTABLEKS                       R20 R0 K8 ["schema"]
      201 SETTABLEKS                       R20 R19 K8 ["schema"]
      203 JUMPIFNOTEQKS                    R2 K38 ["Instance"] ; [+4]
      205 GETTABLEKS                       R20 R7 K28 ["selected"]
      207 JUMP                             ; [+2]
      208 GETTABLEKS                       R20 R9 K41 ["isListening"]
      210 SETTABLEKS                       R20 R19 K28 ["selected"]
      212 SETTABLEKS                       R2 R19 K29 ["cellType"]
      214 SETTABLEKS                       R16 R19 K30 ["text"]
      216 CALL                             R17 2 1
      217 JUMPIFNOTEQKS                    R2 K40 ["Dropdown"] ; [+35]
      219 GETUPVAL                         R18 8
      220 GETTABLEKS                       R18 R18 K17 ["createElement"]
      222 GETUPVAL                         R19 10
      223 DUPTABLE                         R20 K46 [{"anchorRef", "isOpen", "items", "onCloseMenu", "onItemChanged", "property", "schema"}]
      224 GETTABLEKS                       R21 R8 K19 ["inputRef"]
      226 SETTABLEKS                       R21 R20 K42 ["anchorRef"]
      228 GETTABLEKS                       R21 R8 K21 ["isOpen"]
      230 SETTABLEKS                       R21 R20 K21 ["isOpen"]
      232 GETTABLEKS                       R21 R8 K43 ["items"]
      234 SETTABLEKS                       R21 R20 K43 ["items"]
      236 SETTABLEKS                       R12 R20 K44 ["onCloseMenu"]
      238 SETTABLEKS                       R10 R20 K45 ["onItemChanged"]
      240 GETTABLEKS                       R21 R0 K0 ["property"]
      242 SETTABLEKS                       R21 R20 K0 ["property"]
      244 GETTABLEKS                       R21 R0 K8 ["schema"]
      246 SETTABLEKS                       R21 R20 K8 ["schema"]
      248 DUPTABLE                         R21 K48 [{"Control"}]
      249 SETTABLEKS                       R17 R21 K47 ["Control"]
      251 CALL                             R18 3 1
      252 JUMP                             ; [+1]
      253 MOVE                             R18 R17
      254 GETUPVAL                         R19 8
      255 GETTABLEKS                       R19 R19 K17 ["createElement"]
      257 GETUPVAL                         R20 11
      258 DUPTABLE                         R21 K52 [{"LayoutOrder", "tag", "testId"}]
      259 GETTABLEKS                       R22 R0 K49 ["LayoutOrder"]
      261 SETTABLEKS                       R22 R21 K49 ["LayoutOrder"]
      263 LOADK                            R22 K53 ["size-0-full columns-input align-y-center col"]
      264 SETTABLEKS                       R22 R21 K50 ["tag"]
      266 LOADK                            R23 K54 ["%*-%*-cell"]
      267 GETTABLEKS                       R25 R0 K0 ["property"]
      269 GETTABLEKS                       R26 R0 K8 ["schema"]
      271 NAMECALL                         R23 R23 K55 ["format"]
      273 CALL                             R23 3 1
      274 MOVE                             R22 R23
      275 SETTABLEKS                       R22 R21 K51 ["testId"]
      277 DUPTABLE                         R22 K58 [{"Container", "Divider"}]
      278 GETUPVAL                         R23 8
      279 GETTABLEKS                       R23 R23 K17 ["createElement"]
      281 GETUPVAL                         R24 11
      282 DUPTABLE                         R25 K59 [{"LayoutOrder", "tag"}]
      283 MOVE                             R26 R3
      284 CALL                             R26 0 1
      285 SETTABLEKS                       R26 R25 K49 ["LayoutOrder"]
      287 LOADK                            R26 K60 ["size-full-full row align-y-center"]
      288 SETTABLEKS                       R26 R25 K50 ["tag"]
      290 DUPTABLE                         R26 K62 [{"Content"}]
      291 LOADB                            R27 0
      292 JUMPIFEQKNIL                     R2 ; [+2]
      294 MOVE                             R27 R18
      295 SETTABLEKS                       R27 R26 K61 ["Content"]
      297 CALL                             R23 3 1
      298 SETTABLEKS                       R23 R22 K56 ["Container"]
      300 GETUPVAL                         R23 8
      301 GETTABLEKS                       R23 R23 K17 ["createElement"]
      303 GETUPVAL                         R24 12
      304 DUPTABLE                         R25 K64 [{"LayoutOrder", "orientation", "tag"}]
      305 MOVE                             R26 R3
      306 CALL                             R26 0 1
      307 SETTABLEKS                       R26 R25 K49 ["LayoutOrder"]
      309 GETUPVAL                         R26 13
      310 GETTABLEKS                       R26 R26 K65 ["Horizontal"]
      312 SETTABLEKS                       R26 R25 K63 ["orientation"]
      314 LOADK                            R26 K66 ["auto-y"]
      315 SETTABLEKS                       R26 R25 K50 ["tag"]
      317 CALL                             R23 2 1
      318 SETTABLEKS                       R23 R22 K57 ["Divider"]
      320 CALL                             R19 3 -1
      321 RETURN                           R19 -1

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
      107 GETTABLEKS                       R15 R15 K25 ["useKeycodeCapture"]
      109 CALL                             R14 1 1
      110 GETIMPORT                        R15 K5 [require]
      112 GETTABLEKS                       R16 R0 K14 ["Src"]
      114 GETTABLEKS                       R16 R16 K22 ["Hooks"]
      116 GETTABLEKS                       R16 R16 K17 ["Cell"]
      118 GETTABLEKS                       R16 R16 K26 ["useKeycodeDropdown"]
      120 CALL                             R15 1 1
      121 GETIMPORT                        R16 K5 [require]
      123 GETTABLEKS                       R17 R0 K14 ["Src"]
      125 GETTABLEKS                       R17 R17 K22 ["Hooks"]
      127 GETTABLEKS                       R17 R17 K27 ["Binding"]
      129 GETTABLEKS                       R17 R17 K28 ["useStatus"]
      131 CALL                             R16 1 1
      132 DUPCLOSURE                       R17 K29 [PROTO_4]
      133 CAPTURE                          VAL R8
      134 CAPTURE                          VAL R2
      135 CAPTURE                          VAL R16
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R15
      138 CAPTURE                          VAL R14
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R1
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R11
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R6
      147 RETURN                           R17 1
