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
       37 LOADK                            R5 K8 ["%*-%*-%*"]
       38 GETTABLEKS                       R7 R0 K9 ["property"]
       40 GETTABLEKS                       R8 R0 K10 ["schema"]
       42 GETTABLEKS                       R9 R0 K1 ["cellType"]
       44 NAMECALL                         R5 R5 K11 ["format"]
       46 CALL                             R5 4 1
       47 MOVE                             R4 R5
       48 GETUPVAL                         R5 1
       49 GETTABLEKS                       R5 R5 K12 ["createElement"]
       51 GETUPVAL                         R6 2
       52 DUPTABLE                         R7 K18 [{"onActivated", "onStateChanged", "ref", "tag", "testId"}]
       53 GETTABLEKS                       R8 R0 K13 ["onActivated"]
       55 SETTABLEKS                       R8 R7 K13 ["onActivated"]
       57 GETTABLEKS                       R8 R0 K14 ["onStateChanged"]
       59 SETTABLEKS                       R8 R7 K14 ["onStateChanged"]
       61 GETTABLEKS                       R8 R0 K19 ["inputRef"]
       63 SETTABLEKS                       R8 R7 K15 ["ref"]
       65 GETTABLEKS                       R9 R0 K20 ["selected"]
       67 JUMPIFNOT                        R9 ; [+5]
       68 GETUPVAL                         R9 3
       69 CALL                             R9 0 1
       70 JUMPIFNOT                        R9 ; [+2]
       71 LOADK                            R8 K21 ["row align-y-center gap-small size-full-full padding-medium bg-system-emphasis"]
       72 JUMP                             ; [+6]
       73 GETTABLEKS                       R9 R0 K20 ["selected"]
       75 JUMPIFNOT                        R9 ; [+2]
       76 LOADK                            R8 K22 ["row align-y-center gap-small size-full-full padding-medium bg-shift-200"]
       77 JUMP                             ; [+1]
       78 LOADK                            R8 K23 ["row align-y-center gap-small size-full-full padding-medium"]
       79 SETTABLEKS                       R8 R7 K16 ["tag"]
       81 SETTABLEKS                       R4 R7 K17 ["testId"]
       83 DUPTABLE                         R8 K28 [{"Icon", "Text", "Remove", "Chevron"}]
       84 GETUPVAL                         R9 1
       85 GETTABLEKS                       R9 R9 K12 ["createElement"]
       87 GETUPVAL                         R10 4
       88 DUPTABLE                         R11 K35 [{"buttonIcon", "cellType", "currentIcon", "layoutOrder", "message", "severity", "title"}]
       89 GETTABLEKS                       R12 R0 K36 ["icon"]
       91 GETTABLEKS                       R12 R12 K29 ["buttonIcon"]
       93 SETTABLEKS                       R12 R11 K29 ["buttonIcon"]
       95 GETTABLEKS                       R12 R0 K36 ["icon"]
       97 GETTABLEKS                       R12 R12 K1 ["cellType"]
       99 SETTABLEKS                       R12 R11 K1 ["cellType"]
      101 GETTABLEKS                       R12 R0 K36 ["icon"]
      103 GETTABLEKS                       R12 R12 K30 ["currentIcon"]
      105 SETTABLEKS                       R12 R11 K30 ["currentIcon"]
      107 MOVE                             R12 R1
      108 CALL                             R12 0 1
      109 SETTABLEKS                       R12 R11 K31 ["layoutOrder"]
      111 GETTABLEKS                       R12 R0 K36 ["icon"]
      113 GETTABLEKS                       R12 R12 K32 ["message"]
      115 SETTABLEKS                       R12 R11 K32 ["message"]
      117 GETTABLEKS                       R12 R0 K36 ["icon"]
      119 GETTABLEKS                       R12 R12 K33 ["severity"]
      121 SETTABLEKS                       R12 R11 K33 ["severity"]
      123 GETTABLEKS                       R12 R0 K36 ["icon"]
      125 GETTABLEKS                       R12 R12 K34 ["title"]
      127 SETTABLEKS                       R12 R11 K34 ["title"]
      129 CALL                             R9 2 1
      130 SETTABLEKS                       R9 R8 K24 ["Icon"]
      132 JUMPIFNOT                        R2 ; [+58]
      133 GETTABLEKS                       R10 R0 K4 ["onFilterTextChanged"]
      135 JUMPIFNOT                        R10 ; [+55]
      136 GETUPVAL                         R9 1
      137 GETTABLEKS                       R9 R9 K12 ["createElement"]
      139 GETUPVAL                         R10 2
      140 DUPTABLE                         R11 K39 [{["LayoutOrder"], ["tag"] = "align-y-center grow size-0-full"}]
      141 MOVE                             R12 R1
      142 CALL                             R12 0 1
      143 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      145 DUPTABLE                         R12 K41 [{"TextInput"}]
      146 GETUPVAL                         R13 1
      147 GETTABLEKS                       R13 R13 K12 ["createElement"]
      149 GETUPVAL                         R14 5
      150 DUPTABLE                         R15 K51 [{["label"] = "", ["onChanged"], ["size"], ["tag"] = "size-full-full", ["testId"], ["text"], ["textBoxRef"], ["textInputType"], ["width"]}]
      151 GETTABLEKS                       R16 R0 K4 ["onFilterTextChanged"]
      153 SETTABLEKS                       R16 R15 K44 ["onChanged"]
      155 GETUPVAL                         R16 6
      156 GETTABLEKS                       R16 R16 K52 ["Small"]
      158 SETTABLEKS                       R16 R15 K45 ["size"]
      160 LOADK                            R17 K53 ["%*--filter"]
      161 MOVE                             R19 R4
      162 NAMECALL                         R17 R17 K11 ["format"]
      164 CALL                             R17 2 1
      165 MOVE                             R16 R17
      166 SETTABLEKS                       R16 R15 K17 ["testId"]
      168 GETTABLEKS                       R17 R0 K54 ["filterText"]
      170 ORK                              R16 R17 K43 [""]
      171 SETTABLEKS                       R16 R15 K47 ["text"]
      173 SETTABLEKS                       R3 R15 K48 ["textBoxRef"]
      175 GETIMPORT                        R16 K58 [Enum.TextInputType.Default]
      177 SETTABLEKS                       R16 R15 K49 ["textInputType"]
      179 GETIMPORT                        R16 K61 [UDim.new]
      181 LOADN                            R17 1
      182 LOADN                            R18 0
      183 CALL                             R16 2 1
      184 SETTABLEKS                       R16 R15 K50 ["width"]
      186 CALL                             R13 2 1
      187 SETTABLEKS                       R13 R12 K40 ["TextInput"]
      189 CALL                             R9 3 1
      190 JUMP                             ; [+26]
      191 GETUPVAL                         R9 1
      192 GETTABLEKS                       R9 R9 K12 ["createElement"]
      194 GETUPVAL                         R10 7
      195 DUPTABLE                         R11 K64 [{["LayoutOrder"], ["tag"] = "grow size-0-full text-body-medium text-align-x-left", ["testId"], ["Text"], ["TextTruncate"]}]
      196 MOVE                             R12 R1
      197 CALL                             R12 0 1
      198 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      200 LOADK                            R13 K65 ["%*--text"]
      201 MOVE                             R15 R4
      202 NAMECALL                         R13 R13 K11 ["format"]
      204 CALL                             R13 2 1
      205 MOVE                             R12 R13
      206 SETTABLEKS                       R12 R11 K17 ["testId"]
      208 GETTABLEKS                       R12 R0 K47 ["text"]
      210 SETTABLEKS                       R12 R11 K25 ["Text"]
      212 GETIMPORT                        R12 K67 [Enum.TextTruncate.AtEnd]
      214 SETTABLEKS                       R12 R11 K63 ["TextTruncate"]
      216 CALL                             R9 2 1
      217 SETTABLEKS                       R9 R8 K25 ["Text"]
      219 GETTABLEKS                       R9 R0 K68 ["isHovered"]
      221 JUMPIFNOT                        R9 ; [+30]
      222 GETTABLEKS                       R9 R0 K69 ["onRemoveActivated"]
      224 JUMPIFNOT                        R9 ; [+27]
      225 GETUPVAL                         R9 1
      226 GETTABLEKS                       R9 R9 K12 ["createElement"]
      228 GETUPVAL                         R10 8
      229 DUPTABLE                         R11 K72 [{["icon"] = "trash-can", ["LayoutOrder"], ["onActivated"], ["size"], ["tag"] = "icon padding-left-small", ["testId"]}]
      230 MOVE                             R12 R1
      231 CALL                             R12 0 1
      232 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      234 GETTABLEKS                       R12 R0 K69 ["onRemoveActivated"]
      236 SETTABLEKS                       R12 R11 K13 ["onActivated"]
      238 GETUPVAL                         R12 6
      239 GETTABLEKS                       R12 R12 K73 ["XSmall"]
      241 SETTABLEKS                       R12 R11 K45 ["size"]
      243 LOADK                            R13 K74 ["%*--remove"]
      244 MOVE                             R15 R4
      245 NAMECALL                         R13 R13 K11 ["format"]
      247 CALL                             R13 2 1
      248 MOVE                             R12 R13
      249 SETTABLEKS                       R12 R11 K17 ["testId"]
      251 CALL                             R9 2 1
      252 SETTABLEKS                       R9 R8 K26 ["Remove"]
      254 LOADB                            R9 0
      255 GETTABLEKS                       R10 R0 K1 ["cellType"]
      257 JUMPIFNOTEQKS                    R10 K2 ["Dropdown"] ; [+24]
      259 GETUPVAL                         R9 1
      260 GETTABLEKS                       R9 R9 K12 ["createElement"]
      262 GETUPVAL                         R10 9
      263 DUPTABLE                         R11 K77 [{["LayoutOrder"], ["name"] = "chevron-large-down", ["size"], ["tag"] = "icon padding-left-small", ["testId"]}]
      264 MOVE                             R12 R1
      265 CALL                             R12 0 1
      266 SETTABLEKS                       R12 R11 K37 ["LayoutOrder"]
      268 GETUPVAL                         R12 6
      269 GETTABLEKS                       R12 R12 K73 ["XSmall"]
      271 SETTABLEKS                       R12 R11 K45 ["size"]
      273 LOADK                            R13 K78 ["%*--control"]
      274 MOVE                             R15 R4
      275 NAMECALL                         R13 R13 K11 ["format"]
      277 CALL                             R13 2 1
      278 MOVE                             R12 R13
      279 SETTABLEKS                       R12 R11 K17 ["testId"]
      281 CALL                             R9 2 1
      282 SETTABLEKS                       R9 R8 K27 ["Chevron"]
      284 CALL                             R5 3 -1
      285 RETURN                           R5 -1

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
