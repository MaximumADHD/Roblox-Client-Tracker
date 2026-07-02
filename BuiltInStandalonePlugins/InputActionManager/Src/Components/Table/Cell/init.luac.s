PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onItemChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["onCloseMenu"]
        8 CALL                             R1 0 0
        9 GETUPVAL                         R1 1
       10 CALL                             R1 0 1
       11 JUMPIF                           R1 ; [+4]
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R1 R1 K2 ["stopListening"]
       15 CALL                             R1 0 0
       16 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["stopListening"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["onOpenActivated"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIF                           R0 ; [+4]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["stopListening"]
        6 CALL                             R0 0 0
        7 GETUPVAL                         R0 2
        8 GETTABLEKS                       R0 R0 K1 ["onCloseMenu"]
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 JUMPIFNOT                        R0 ; [+5]
        3 GETUPVAL                         R0 1
        4 GETTABLEKS                       R0 R0 K0 ["onOpenActivated"]
        6 CALL                             R0 0 0
        7 RETURN                           R0 0
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K1 ["onCloseMenu"]
       11 CALL                             R0 0 0
       12 GETUPVAL                         R0 2
       13 GETTABLEKS                       R0 R0 K2 ["stopListening"]
       15 CALL                             R0 0 0
       16 RETURN                           R0 0

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
       51 GETUPVAL                         R10 5
       52 CALL                             R10 0 1
       53 JUMPIF                           R10 ; [+6]
       54 GETUPVAL                         R9 6
       55 MOVE                             R10 R0
       56 MOVE                             R11 R1
       57 MOVE                             R12 R2
       58 CALL                             R9 3 1
       59 JUMP                             ; [+1]
       60 LOADNIL                          R9
       61 GETUPVAL                         R10 1
       62 GETTABLEKS                       R10 R10 K14 ["useEventCallback"]
       64 NEWCLOSURE                       R11 P0
       65 CAPTURE                          VAL R8
       66 CAPTURE                          UPVAL U5
       67 CAPTURE                          VAL R9
       68 CALL                             R10 1 1
       69 GETUPVAL                         R11 1
       70 GETTABLEKS                       R11 R11 K14 ["useEventCallback"]
       72 NEWCLOSURE                       R12 P1
       73 CAPTURE                          UPVAL U5
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R8
       76 CALL                             R11 1 1
       77 GETUPVAL                         R12 1
       78 GETTABLEKS                       R12 R12 K14 ["useEventCallback"]
       80 NEWCLOSURE                       R13 P2
       81 CAPTURE                          UPVAL U5
       82 CAPTURE                          VAL R9
       83 CAPTURE                          VAL R8
       84 CALL                             R12 1 1
       85 GETUPVAL                         R13 1
       86 GETTABLEKS                       R13 R13 K14 ["useEventCallback"]
       88 NEWCLOSURE                       R14 P3
       89 CAPTURE                          UPVAL U5
       90 CAPTURE                          VAL R8
       91 CAPTURE                          VAL R9
       92 CALL                             R13 1 1
       93 GETUPVAL                         R14 7
       94 GETTABLEKS                       R16 R0 K9 ["binding"]
       96 JUMPIFNOT                        R16 ; [+12]
       97 GETTABLEKS                       R16 R0 K9 ["binding"]
       99 GETTABLEKS                       R16 R16 K15 ["uiButton"]
      101 JUMPIFNOT                        R16 ; [+7]
      102 GETTABLEKS                       R15 R0 K9 ["binding"]
      104 GETTABLEKS                       R15 R15 K15 ["uiButton"]
      106 GETTABLEKS                       R15 R15 K3 ["type"]
      108 JUMP                             ; [+1]
      109 LOADK                            R15 K16 ["ImageButton"]
      110 CALL                             R14 1 1
      111 GETTABLEKS                       R15 R0 K9 ["binding"]
      113 JUMPIFNOT                        R15 ; [+11]
      114 GETTABLEKS                       R15 R0 K9 ["binding"]
      116 GETTABLEKS                       R15 R15 K15 ["uiButton"]
      118 JUMPIFNOT                        R15 ; [+6]
      119 GETTABLEKS                       R15 R0 K9 ["binding"]
      121 GETTABLEKS                       R15 R15 K15 ["uiButton"]
      123 GETTABLEKS                       R15 R15 K17 ["name"]
      125 GETUPVAL                         R16 8
      126 MOVE                             R17 R2
      127 GETTABLEKS                       R18 R0 K9 ["binding"]
      129 GETTABLEKS                       R19 R0 K0 ["property"]
      131 MOVE                             R20 R15
      132 CALL                             R16 4 1
      133 GETUPVAL                         R17 9
      134 GETTABLEKS                       R17 R17 K18 ["createElement"]
      136 GETUPVAL                         R18 10
      137 DUPTABLE                         R19 K32 [{"icon", "inputRef", "isHovered", "isOpen", "filterText", "onActivated", "onFilterTextChanged", "onOpenActivated", "onRemoveActivated", "onStateChanged", "property", "schema", "selected", "cellType", "text"}]
      138 DUPTABLE                         R20 K38 [{"buttonIcon", "cellType", "currentIcon", "message", "severity", "title"}]
      139 SETTABLEKS                       R14 R20 K33 ["buttonIcon"]
      141 SETTABLEKS                       R2 R20 K30 ["cellType"]
      143 GETTABLEKS                       R21 R8 K34 ["currentIcon"]
      145 SETTABLEKS                       R21 R20 K34 ["currentIcon"]
      147 SETTABLEKS                       R6 R20 K35 ["message"]
      149 SETTABLEKS                       R4 R20 K36 ["severity"]
      151 SETTABLEKS                       R5 R20 K37 ["title"]
      153 SETTABLEKS                       R20 R19 K19 ["icon"]
      155 GETTABLEKS                       R20 R8 K20 ["inputRef"]
      157 SETTABLEKS                       R20 R19 K20 ["inputRef"]
      159 GETTABLEKS                       R20 R7 K21 ["isHovered"]
      161 SETTABLEKS                       R20 R19 K21 ["isHovered"]
      163 GETTABLEKS                       R20 R8 K22 ["isOpen"]
      165 SETTABLEKS                       R20 R19 K22 ["isOpen"]
      167 GETTABLEKS                       R20 R8 K23 ["filterText"]
      169 SETTABLEKS                       R20 R19 K23 ["filterText"]
      171 JUMPIFNOTEQKS                    R2 K39 ["Instance"] ; [+4]
      173 GETTABLEKS                       R20 R7 K40 ["onButtonSelectorActivated"]
      175 JUMP                             ; [+8]
      176 JUMPIFNOTEQKS                    R2 K41 ["Dropdown"] ; [+6]
      178 GETTABLEKS                       R21 R8 K22 ["isOpen"]
      180 JUMPIF                           R21 ; [+2]
      181 MOVE                             R20 R13
      182 JUMP                             ; [+1]
      183 LOADNIL                          R20
      184 SETTABLEKS                       R20 R19 K24 ["onActivated"]
      186 GETTABLEKS                       R20 R8 K25 ["onFilterTextChanged"]
      188 SETTABLEKS                       R20 R19 K25 ["onFilterTextChanged"]
      190 SETTABLEKS                       R11 R19 K26 ["onOpenActivated"]
      192 GETTABLEKS                       R21 R0 K9 ["binding"]
      194 JUMPIFEQKNIL                     R21 ; [+4]
      196 GETTABLEKS                       R20 R7 K27 ["onRemoveActivated"]
      198 JUMP                             ; [+1]
      199 LOADNIL                          R20
      200 SETTABLEKS                       R20 R19 K27 ["onRemoveActivated"]
      202 GETTABLEKS                       R20 R7 K28 ["onStateChanged"]
      204 SETTABLEKS                       R20 R19 K28 ["onStateChanged"]
      206 GETTABLEKS                       R20 R0 K0 ["property"]
      208 SETTABLEKS                       R20 R19 K0 ["property"]
      210 GETTABLEKS                       R20 R0 K8 ["schema"]
      212 SETTABLEKS                       R20 R19 K8 ["schema"]
      214 JUMPIFNOTEQKS                    R2 K39 ["Instance"] ; [+4]
      216 GETTABLEKS                       R20 R7 K29 ["selected"]
      218 JUMP                             ; [+8]
      219 GETUPVAL                         R21 5
      220 CALL                             R21 0 1
      221 JUMPIFNOT                        R21 ; [+3]
      222 GETTABLEKS                       R20 R8 K22 ["isOpen"]
      224 JUMP                             ; [+2]
      225 GETTABLEKS                       R20 R9 K42 ["isListening"]
      227 SETTABLEKS                       R20 R19 K29 ["selected"]
      229 SETTABLEKS                       R2 R19 K30 ["cellType"]
      231 SETTABLEKS                       R16 R19 K31 ["text"]
      233 CALL                             R17 2 1
      234 JUMPIFNOTEQKS                    R2 K41 ["Dropdown"] ; [+35]
      236 GETUPVAL                         R18 9
      237 GETTABLEKS                       R18 R18 K18 ["createElement"]
      239 GETUPVAL                         R19 11
      240 DUPTABLE                         R20 K47 [{"anchorRef", "isOpen", "items", "onCloseMenu", "onItemChanged", "property", "schema"}]
      241 GETTABLEKS                       R21 R8 K20 ["inputRef"]
      243 SETTABLEKS                       R21 R20 K43 ["anchorRef"]
      245 GETTABLEKS                       R21 R8 K22 ["isOpen"]
      247 SETTABLEKS                       R21 R20 K22 ["isOpen"]
      249 GETTABLEKS                       R21 R8 K44 ["items"]
      251 SETTABLEKS                       R21 R20 K44 ["items"]
      253 SETTABLEKS                       R12 R20 K45 ["onCloseMenu"]
      255 SETTABLEKS                       R10 R20 K46 ["onItemChanged"]
      257 GETTABLEKS                       R21 R0 K0 ["property"]
      259 SETTABLEKS                       R21 R20 K0 ["property"]
      261 GETTABLEKS                       R21 R0 K8 ["schema"]
      263 SETTABLEKS                       R21 R20 K8 ["schema"]
      265 DUPTABLE                         R21 K49 [{"Control"}]
      266 SETTABLEKS                       R17 R21 K48 ["Control"]
      268 CALL                             R18 3 1
      269 JUMP                             ; [+1]
      270 MOVE                             R18 R17
      271 GETUPVAL                         R19 9
      272 GETTABLEKS                       R19 R19 K18 ["createElement"]
      274 GETUPVAL                         R20 12
      275 DUPTABLE                         R21 K54 [{["LayoutOrder"], ["tag"] = "columns-input col align-y-center size-0-full", ["testId"]}]
      276 GETTABLEKS                       R22 R0 K50 ["LayoutOrder"]
      278 SETTABLEKS                       R22 R21 K50 ["LayoutOrder"]
      280 LOADK                            R23 K55 ["%*-%*-cell"]
      281 GETTABLEKS                       R25 R0 K0 ["property"]
      283 GETTABLEKS                       R26 R0 K8 ["schema"]
      285 NAMECALL                         R23 R23 K56 ["format"]
      287 CALL                             R23 3 1
      288 MOVE                             R22 R23
      289 SETTABLEKS                       R22 R21 K53 ["testId"]
      291 DUPTABLE                         R22 K59 [{"Container", "Divider"}]
      292 GETUPVAL                         R23 9
      293 GETTABLEKS                       R23 R23 K18 ["createElement"]
      295 GETUPVAL                         R24 12
      296 DUPTABLE                         R25 K61 [{["LayoutOrder"], ["tag"] = "row align-y-center size-full-full"}]
      297 MOVE                             R26 R3
      298 CALL                             R26 0 1
      299 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      301 DUPTABLE                         R26 K63 [{"Content"}]
      302 LOADB                            R27 0
      303 JUMPIFEQKNIL                     R2 ; [+2]
      305 MOVE                             R27 R18
      306 SETTABLEKS                       R27 R26 K62 ["Content"]
      308 CALL                             R23 3 1
      309 SETTABLEKS                       R23 R22 K57 ["Container"]
      311 GETUPVAL                         R23 9
      312 GETTABLEKS                       R23 R23 K18 ["createElement"]
      314 GETUPVAL                         R24 13
      315 DUPTABLE                         R25 K66 [{["LayoutOrder"], ["orientation"], ["tag"] = "auto-y"}]
      316 MOVE                             R26 R3
      317 CALL                             R26 0 1
      318 SETTABLEKS                       R26 R25 K50 ["LayoutOrder"]
      320 GETUPVAL                         R26 14
      321 GETTABLEKS                       R26 R26 K67 ["Horizontal"]
      323 SETTABLEKS                       R26 R25 K64 ["orientation"]
      325 CALL                             R23 2 1
      326 SETTABLEKS                       R23 R22 K58 ["Divider"]
      328 CALL                             R19 3 -1
      329 RETURN                           R19 -1

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
      132 GETTABLEKS                       R17 R0 K14 ["Src"]
      134 GETTABLEKS                       R17 R17 K29 ["Flags"]
      136 GETIMPORT                        R18 K5 [require]
      138 GETTABLEKS                       R19 R17 K30 ["getFFlagIAMDropdownStabilityImprovements"]
      140 CALL                             R18 1 1
      141 DUPCLOSURE                       R19 K31 [PROTO_4]
      142 CAPTURE                          VAL R8
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R16
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R15
      147 CAPTURE                          VAL R18
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R13
      150 CAPTURE                          VAL R9
      151 CAPTURE                          VAL R1
      152 CAPTURE                          VAL R10
      153 CAPTURE                          VAL R11
      154 CAPTURE                          VAL R5
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R6
      157 RETURN                           R19 1
