PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+10]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+6]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["current"]
        9 NAMECALL                         R0 R0 K1 ["focus"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 LOADB                            R2 0
        5 GETTABLEKS                       R3 R0 K1 ["cellType"]
        7 JUMPIFNOTEQKS                    R3 K2 ["Dropdown"] ; [+10]
        9 GETTABLEKS                       R2 R0 K3 ["isOpen"]
       11 JUMPIFNOT                        R2 ; [+6]
       12 GETTABLEKS                       R3 R0 K4 ["onFilterTextChanged"]
       14 JUMPIFNOTEQKNIL                  R3 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K5 ["useRef"]
       21 LOADNIL                          R4
       22 CALL                             R3 1 1
       23 GETUPVAL                         R4 1
       24 GETTABLEKS                       R4 R4 K6 ["useEffect"]
       26 NEWCLOSURE                       R5 P0
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 NEWTABLE                         R6 0 2
       31 MOVE                             R7 R2
       32 GETTABLEKS                       R8 R3 K7 ["current"]
       34 SETLIST                          R6 R7 2 [1]
       36 CALL                             R4 2 0
       37 LOADK                            R4 K8 ["%*-%*-%*"]
       38 GETTABLEKS                       R6 R0 K9 ["property"]
       40 GETTABLEKS                       R7 R0 K10 ["schema"]
       42 GETTABLEKS                       R8 R0 K1 ["cellType"]
       44 NAMECALL                         R4 R4 K11 ["format"]
       46 CALL                             R4 4 1
       47 GETUPVAL                         R5 1
       48 GETTABLEKS                       R5 R5 K12 ["createElement"]
       50 GETUPVAL                         R6 2
       51 DUPTABLE                         R7 K18 [{"onActivated", "onStateChanged", "ref", "tag", "testId"}]
       52 GETTABLEKS                       R8 R0 K13 ["onActivated"]
       54 SETTABLEKS                       R8 R7 K13 ["onActivated"]
       56 GETTABLEKS                       R8 R0 K14 ["onStateChanged"]
       58 SETTABLEKS                       R8 R7 K14 ["onStateChanged"]
       60 GETTABLEKS                       R8 R0 K19 ["inputRef"]
       62 SETTABLEKS                       R8 R7 K15 ["ref"]
       64 GETTABLEKS                       R9 R0 K20 ["selected"]
       66 JUMPIFNOT                        R9 ; [+5]
       67 GETUPVAL                         R9 3
       68 CALL                             R9 0 1
       69 JUMPIFNOT                        R9 ; [+2]
       70 LOADK                            R8 K21 ["row align-y-center gap-small size-full-full padding-medium bg-system-emphasis"]
       71 JUMP                             ; [+6]
       72 GETTABLEKS                       R9 R0 K20 ["selected"]
       74 JUMPIFNOT                        R9 ; [+2]
       75 LOADK                            R8 K22 ["row align-y-center gap-small size-full-full padding-medium bg-shift-200"]
       76 JUMP                             ; [+1]
       77 LOADK                            R8 K23 ["row align-y-center gap-small size-full-full padding-medium"]
       78 SETTABLEKS                       R8 R7 K16 ["tag"]
       80 SETTABLEKS                       R4 R7 K17 ["testId"]
       82 DUPTABLE                         R8 K28 [{"Icon", "Text", "Remove", "Chevron"}]
       83 GETUPVAL                         R9 1
       84 GETTABLEKS                       R9 R9 K12 ["createElement"]
       86 GETUPVAL                         R10 4
       87 DUPTABLE                         R11 K35 [{"buttonIcon", "cellType", "currentIcon", "layoutOrder", "message", "severity", "title"}]
       88 GETTABLEKS                       R12 R0 K36 ["icon"]
       90 GETTABLEKS                       R12 R12 K29 ["buttonIcon"]
       92 SETTABLEKS                       R12 R11 K29 ["buttonIcon"]
       94 GETTABLEKS                       R12 R0 K36 ["icon"]
       96 GETTABLEKS                       R12 R12 K1 ["cellType"]
       98 SETTABLEKS                       R12 R11 K1 ["cellType"]
      100 GETTABLEKS                       R12 R0 K36 ["icon"]
      102 GETTABLEKS                       R12 R12 K30 ["currentIcon"]
      104 SETTABLEKS                       R12 R11 K30 ["currentIcon"]
      106 MOVE                             R12 R1
      107 CALL                             R12 0 1
      108 SETTABLEKS                       R12 R11 K31 ["layoutOrder"]
      110 GETTABLEKS                       R12 R0 K36 ["icon"]
      112 GETTABLEKS                       R12 R12 K32 ["message"]
      114 SETTABLEKS                       R12 R11 K32 ["message"]
      116 GETTABLEKS                       R12 R0 K36 ["icon"]
      118 GETTABLEKS                       R12 R12 K33 ["severity"]
      120 SETTABLEKS                       R12 R11 K33 ["severity"]
      122 GETTABLEKS                       R12 R0 K36 ["icon"]
      124 GETTABLEKS                       R12 R12 K34 ["title"]
      126 SETTABLEKS                       R12 R11 K34 ["title"]
      128 CALL                             R9 2 1
      129 SETTABLEKS                       R9 R8 K24 ["Icon"]
      131 JUMPIFNOT                        R2 ; [+57]
      132 GETTABLEKS                       R10 R0 K4 ["onFilterTextChanged"]
      134 JUMPIFNOT                        R10 ; [+54]
      135 GETUPVAL                         R9 1
      136 GETTABLEKS                       R9 R9 K12 ["createElement"]
      138 GETUPVAL                         R10 2
      139 DUPTABLE                         R11 K39 [{["LayoutOrder"], ["tag"] = "align-y-center grow size-0-full"}]
      140 MOVE                             R12 R1
      141 CALL                             R12 0 1
      142 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      144 DUPTABLE                         R12 K41 [{"TextInput"}]
      145 GETUPVAL                         R13 1
      146 GETTABLEKS                       R13 R13 K12 ["createElement"]
      148 GETUPVAL                         R14 5
      149 DUPTABLE                         R15 K51 [{["label"] = "", ["onChanged"], ["size"], ["tag"] = "size-full-full", ["testId"], ["text"], ["textBoxRef"], ["textInputType"], ["width"]}]
      150 GETTABLEKS                       R16 R0 K4 ["onFilterTextChanged"]
      152 SETTABLEKS                       R16 R15 K44 ["onChanged"]
      154 GETUPVAL                         R16 6
      155 GETTABLEKS                       R16 R16 K52 ["Small"]
      157 SETTABLEKS                       R16 R15 K45 ["size"]
      159 LOADK                            R16 K53 ["%*--filter"]
      160 MOVE                             R18 R4
      161 NAMECALL                         R16 R16 K11 ["format"]
      163 CALL                             R16 2 1
      164 SETTABLEKS                       R16 R15 K17 ["testId"]
      166 GETTABLEKS                       R17 R0 K54 ["filterText"]
      168 ORK                              R16 R17 K43 [""]
      169 SETTABLEKS                       R16 R15 K47 ["text"]
      171 SETTABLEKS                       R3 R15 K48 ["textBoxRef"]
      173 GETIMPORT                        R16 K58 [Enum.TextInputType.Default]
      175 SETTABLEKS                       R16 R15 K49 ["textInputType"]
      177 GETIMPORT                        R16 K61 [UDim.new]
      179 LOADN                            R17 1
      180 LOADN                            R18 0
      181 CALL                             R16 2 1
      182 SETTABLEKS                       R16 R15 K50 ["width"]
      184 CALL                             R13 2 1
      185 SETTABLEKS                       R13 R12 K40 ["TextInput"]
      187 CALL                             R9 3 1
      188 JUMP                             ; [+25]
      189 GETUPVAL                         R9 1
      190 GETTABLEKS                       R9 R9 K12 ["createElement"]
      192 GETUPVAL                         R10 7
      193 DUPTABLE                         R11 K64 [{["LayoutOrder"], ["tag"] = "grow size-0-full text-body-medium text-align-x-left", ["testId"], ["Text"], ["TextTruncate"]}]
      194 MOVE                             R12 R1
      195 CALL                             R12 0 1
      196 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      198 LOADK                            R12 K65 ["%*--text"]
      199 MOVE                             R14 R4
      200 NAMECALL                         R12 R12 K11 ["format"]
      202 CALL                             R12 2 1
      203 SETTABLEKS                       R12 R11 K17 ["testId"]
      205 GETTABLEKS                       R12 R0 K47 ["text"]
      207 SETTABLEKS                       R12 R11 K25 ["Text"]
      209 GETIMPORT                        R12 K67 [Enum.TextTruncate.AtEnd]
      211 SETTABLEKS                       R12 R11 K63 ["TextTruncate"]
      213 CALL                             R9 2 1
      214 SETTABLEKS                       R9 R8 K25 ["Text"]
      216 GETTABLEKS                       R9 R0 K68 ["isHovered"]
      218 JUMPIFNOT                        R9 ; [+29]
      219 GETTABLEKS                       R9 R0 K69 ["onRemoveActivated"]
      221 JUMPIFNOT                        R9 ; [+26]
      222 GETUPVAL                         R9 1
      223 GETTABLEKS                       R9 R9 K12 ["createElement"]
      225 GETUPVAL                         R10 8
      226 DUPTABLE                         R11 K72 [{["icon"] = "trash-can", ["LayoutOrder"], ["onActivated"], ["size"], ["tag"] = "icon padding-left-small", ["testId"]}]
      227 MOVE                             R12 R1
      228 CALL                             R12 0 1
      229 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      231 GETTABLEKS                       R12 R0 K69 ["onRemoveActivated"]
      233 SETTABLEKS                       R12 R11 K13 ["onActivated"]
      235 GETUPVAL                         R12 6
      236 GETTABLEKS                       R12 R12 K73 ["XSmall"]
      238 SETTABLEKS                       R12 R11 K45 ["size"]
      240 LOADK                            R12 K74 ["%*--remove"]
      241 MOVE                             R14 R4
      242 NAMECALL                         R12 R12 K11 ["format"]
      244 CALL                             R12 2 1
      245 SETTABLEKS                       R12 R11 K17 ["testId"]
      247 CALL                             R9 2 1
      248 SETTABLEKS                       R9 R8 K26 ["Remove"]
      250 LOADB                            R9 0
      251 GETTABLEKS                       R10 R0 K1 ["cellType"]
      253 JUMPIFNOTEQKS                    R10 K2 ["Dropdown"] ; [+23]
      255 GETUPVAL                         R9 1
      256 GETTABLEKS                       R9 R9 K12 ["createElement"]
      258 GETUPVAL                         R10 9
      259 DUPTABLE                         R11 K77 [{["LayoutOrder"], ["name"] = "chevron-large-down", ["size"], ["tag"] = "icon padding-left-small", ["testId"]}]
      260 MOVE                             R12 R1
      261 CALL                             R12 0 1
      262 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      264 GETUPVAL                         R12 6
      265 GETTABLEKS                       R12 R12 K73 ["XSmall"]
      267 SETTABLEKS                       R12 R11 K45 ["size"]
      269 LOADK                            R12 K78 ["%*--control"]
      270 MOVE                             R14 R4
      271 NAMECALL                         R12 R12 K11 ["format"]
      273 CALL                             R12 2 1
      274 SETTABLEKS                       R12 R11 K17 ["testId"]
      276 CALL                             R9 2 1
      277 SETTABLEKS                       R9 R8 K27 ["Chevron"]
      279 CALL                             R5 3 -1
      280 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["Icon"]
       30 GETTABLEKS                       R5 R1 K11 ["IconButton"]
       32 GETTABLEKS                       R6 R1 K12 ["Text"]
       34 GETTABLEKS                       R7 R1 K13 ["TextInput"]
       36 GETTABLEKS                       R8 R1 K14 ["View"]
       38 GETTABLEKS                       R9 R1 K15 ["Enums"]
       40 GETTABLEKS                       R9 R9 K16 ["InputSize"]
       42 GETIMPORT                        R10 K5 [require]
       44 GETIMPORT                        R11 K1 [script]
       46 GETTABLEKS                       R11 R11 K17 ["Parent"]
       48 GETTABLEKS                       R11 R11 K18 ["CellIcon"]
       50 CALL                             R10 1 1
       51 GETIMPORT                        R11 K5 [require]
       53 GETTABLEKS                       R12 R0 K19 ["Src"]
       55 GETTABLEKS                       R12 R12 K20 ["Types"]
       57 CALL                             R11 1 1
       58 GETTABLEKS                       R12 R0 K19 ["Src"]
       60 GETTABLEKS                       R12 R12 K21 ["Flags"]
       62 GETIMPORT                        R13 K5 [require]
       64 GETTABLEKS                       R14 R12 K22 ["getFFlagIAMTouchButtonImprovements"]
       66 CALL                             R13 1 1
       67 DUPCLOSURE                       R14 K23 [PROTO_1]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R4
       78 RETURN                           R14 1
