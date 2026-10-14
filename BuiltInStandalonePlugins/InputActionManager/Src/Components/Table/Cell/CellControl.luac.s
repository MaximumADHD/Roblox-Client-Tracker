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
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 JUMPIFNOT                        R2 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["disabled"]
        5 JUMP                             ; [+1]
        6 LOADNIL                          R1
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
       10 CALL                             R2 0 1
       11 LOADB                            R3 0
       12 GETTABLEKS                       R4 R0 K2 ["cellType"]
       14 JUMPIFNOTEQKS                    R4 K3 ["Dropdown"] ; [+10]
       16 GETTABLEKS                       R3 R0 K4 ["isOpen"]
       18 JUMPIFNOT                        R3 ; [+6]
       19 GETTABLEKS                       R4 R0 K5 ["onFilterTextChanged"]
       21 JUMPIFNOTEQKNIL                  R4 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K6 ["useRef"]
       28 LOADNIL                          R5
       29 CALL                             R4 1 1
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       33 NEWCLOSURE                       R6 P0
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R4
       36 NEWTABLE                         R7 0 2
       38 MOVE                             R8 R3
       39 GETTABLEKS                       R9 R4 K8 ["current"]
       41 SETLIST                          R7 R8 2 [1]
       43 CALL                             R5 2 0
       44 LOADK                            R5 K9 ["%*-%*-%*"]
       45 GETTABLEKS                       R7 R0 K10 ["property"]
       47 GETTABLEKS                       R8 R0 K11 ["schema"]
       49 GETTABLEKS                       R9 R0 K2 ["cellType"]
       51 NAMECALL                         R5 R5 K12 ["format"]
       53 CALL                             R5 4 1
       54 GETUPVAL                         R6 2
       55 GETTABLEKS                       R6 R6 K13 ["createElement"]
       57 GETUPVAL                         R7 3
       58 DUPTABLE                         R8 K21 [{"isDisabled", "onActivated", "onSecondaryActivated", "onStateChanged", "ref", "tag", "testId"}]
       59 SETTABLEKS                       R1 R8 K14 ["isDisabled"]
       61 JUMPIF                           R1 ; [+3]
       62 GETTABLEKS                       R9 R0 K15 ["onActivated"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R9
       66 SETTABLEKS                       R9 R8 K15 ["onActivated"]
       68 JUMPIF                           R1 ; [+3]
       69 GETTABLEKS                       R9 R0 K16 ["onSecondaryActivated"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R9
       73 SETTABLEKS                       R9 R8 K16 ["onSecondaryActivated"]
       75 JUMPIF                           R1 ; [+3]
       76 GETTABLEKS                       R9 R0 K17 ["onStateChanged"]
       78 JUMP                             ; [+1]
       79 LOADNIL                          R9
       80 SETTABLEKS                       R9 R8 K17 ["onStateChanged"]
       82 GETTABLEKS                       R9 R0 K22 ["inputRef"]
       84 SETTABLEKS                       R9 R8 K18 ["ref"]
       86 GETTABLEKS                       R10 R0 K23 ["selected"]
       88 JUMPIFNOT                        R10 ; [+2]
       89 LOADK                            R9 K24 ["row align-y-center gap-small size-full-full padding-medium bg-system-emphasis"]
       90 JUMP                             ; [+1]
       91 LOADK                            R9 K25 ["row align-y-center gap-small size-full-full padding-medium"]
       92 SETTABLEKS                       R9 R8 K19 ["tag"]
       94 SETTABLEKS                       R5 R8 K20 ["testId"]
       96 DUPTABLE                         R9 K30 [{"Icon", "Text", "Remove", "Chevron"}]
       97 GETUPVAL                         R10 2
       98 GETTABLEKS                       R10 R10 K13 ["createElement"]
      100 GETUPVAL                         R11 4
      101 DUPTABLE                         R12 K37 [{"buttonIcon", "cellType", "currentIcon", "layoutOrder", "message", "severity", "title"}]
      102 GETTABLEKS                       R13 R0 K38 ["icon"]
      104 GETTABLEKS                       R13 R13 K31 ["buttonIcon"]
      106 SETTABLEKS                       R13 R12 K31 ["buttonIcon"]
      108 GETTABLEKS                       R13 R0 K38 ["icon"]
      110 GETTABLEKS                       R13 R13 K2 ["cellType"]
      112 SETTABLEKS                       R13 R12 K2 ["cellType"]
      114 GETTABLEKS                       R13 R0 K38 ["icon"]
      116 GETTABLEKS                       R13 R13 K32 ["currentIcon"]
      118 SETTABLEKS                       R13 R12 K32 ["currentIcon"]
      120 MOVE                             R13 R2
      121 CALL                             R13 0 1
      122 SETTABLEKS                       R13 R12 K33 ["layoutOrder"]
      124 GETTABLEKS                       R13 R0 K38 ["icon"]
      126 GETTABLEKS                       R13 R13 K34 ["message"]
      128 SETTABLEKS                       R13 R12 K34 ["message"]
      130 GETTABLEKS                       R13 R0 K38 ["icon"]
      132 GETTABLEKS                       R13 R13 K35 ["severity"]
      134 SETTABLEKS                       R13 R12 K35 ["severity"]
      136 GETTABLEKS                       R13 R0 K38 ["icon"]
      138 GETTABLEKS                       R13 R13 K36 ["title"]
      140 SETTABLEKS                       R13 R12 K36 ["title"]
      142 CALL                             R10 2 1
      143 SETTABLEKS                       R10 R9 K26 ["Icon"]
      145 JUMPIFNOT                        R3 ; [+57]
      146 GETTABLEKS                       R11 R0 K5 ["onFilterTextChanged"]
      148 JUMPIFNOT                        R11 ; [+54]
      149 GETUPVAL                         R10 2
      150 GETTABLEKS                       R10 R10 K13 ["createElement"]
      152 GETUPVAL                         R11 3
      153 DUPTABLE                         R12 K41 [{["LayoutOrder"], ["tag"] = "align-y-center grow size-0-full"}]
      154 MOVE                             R13 R2
      155 CALL                             R13 0 1
      156 SETTABLEKS                       R13 R12 K39 ["LayoutOrder"]
      158 DUPTABLE                         R13 K43 [{"TextInput"}]
      159 GETUPVAL                         R14 2
      160 GETTABLEKS                       R14 R14 K13 ["createElement"]
      162 GETUPVAL                         R15 5
      163 DUPTABLE                         R16 K53 [{["label"] = "", ["onChanged"], ["size"], ["tag"] = "size-full-full", ["testId"], ["text"], ["textBoxRef"], ["textInputType"], ["width"]}]
      164 GETTABLEKS                       R17 R0 K5 ["onFilterTextChanged"]
      166 SETTABLEKS                       R17 R16 K46 ["onChanged"]
      168 GETUPVAL                         R17 6
      169 GETTABLEKS                       R17 R17 K54 ["Small"]
      171 SETTABLEKS                       R17 R16 K47 ["size"]
      173 LOADK                            R17 K55 ["%*--filter"]
      174 MOVE                             R19 R5
      175 NAMECALL                         R17 R17 K12 ["format"]
      177 CALL                             R17 2 1
      178 SETTABLEKS                       R17 R16 K20 ["testId"]
      180 GETTABLEKS                       R18 R0 K56 ["filterText"]
      182 ORK                              R17 R18 K45 [""]
      183 SETTABLEKS                       R17 R16 K49 ["text"]
      185 SETTABLEKS                       R4 R16 K50 ["textBoxRef"]
      187 GETIMPORT                        R17 K60 [Enum.TextInputType.Default]
      189 SETTABLEKS                       R17 R16 K51 ["textInputType"]
      191 GETIMPORT                        R17 K63 [UDim.new]
      193 LOADN                            R18 1
      194 LOADN                            R19 0
      195 CALL                             R17 2 1
      196 SETTABLEKS                       R17 R16 K52 ["width"]
      198 CALL                             R14 2 1
      199 SETTABLEKS                       R14 R13 K42 ["TextInput"]
      201 CALL                             R10 3 1
      202 JUMP                             ; [+25]
      203 GETUPVAL                         R10 2
      204 GETTABLEKS                       R10 R10 K13 ["createElement"]
      206 GETUPVAL                         R11 7
      207 DUPTABLE                         R12 K66 [{["LayoutOrder"], ["tag"] = "grow size-0-full text-body-medium text-align-x-left", ["testId"], ["Text"], ["TextTruncate"]}]
      208 MOVE                             R13 R2
      209 CALL                             R13 0 1
      210 SETTABLEKS                       R13 R12 K39 ["LayoutOrder"]
      212 LOADK                            R13 K67 ["%*--text"]
      213 MOVE                             R15 R5
      214 NAMECALL                         R13 R13 K12 ["format"]
      216 CALL                             R13 2 1
      217 SETTABLEKS                       R13 R12 K20 ["testId"]
      219 GETTABLEKS                       R13 R0 K49 ["text"]
      221 SETTABLEKS                       R13 R12 K27 ["Text"]
      223 GETIMPORT                        R13 K69 [Enum.TextTruncate.AtEnd]
      225 SETTABLEKS                       R13 R12 K65 ["TextTruncate"]
      227 CALL                             R10 2 1
      228 SETTABLEKS                       R10 R9 K27 ["Text"]
      230 NOT                              R10 R1
      231 JUMPIFNOT                        R10 ; [+32]
      232 GETTABLEKS                       R10 R0 K70 ["isHovered"]
      234 JUMPIFNOT                        R10 ; [+29]
      235 GETTABLEKS                       R10 R0 K71 ["onRemoveActivated"]
      237 JUMPIFNOT                        R10 ; [+26]
      238 GETUPVAL                         R10 2
      239 GETTABLEKS                       R10 R10 K13 ["createElement"]
      241 GETUPVAL                         R11 8
      242 DUPTABLE                         R12 K74 [{["icon"] = "trash-can", ["LayoutOrder"], ["onActivated"], ["size"], ["tag"] = "icon padding-left-small", ["testId"]}]
      243 MOVE                             R13 R2
      244 CALL                             R13 0 1
      245 SETTABLEKS                       R13 R12 K39 ["LayoutOrder"]
      247 GETTABLEKS                       R13 R0 K71 ["onRemoveActivated"]
      249 SETTABLEKS                       R13 R12 K15 ["onActivated"]
      251 GETUPVAL                         R13 6
      252 GETTABLEKS                       R13 R13 K75 ["XSmall"]
      254 SETTABLEKS                       R13 R12 K47 ["size"]
      256 LOADK                            R13 K76 ["%*--remove"]
      257 MOVE                             R15 R5
      258 NAMECALL                         R13 R13 K12 ["format"]
      260 CALL                             R13 2 1
      261 SETTABLEKS                       R13 R12 K20 ["testId"]
      263 CALL                             R10 2 1
      264 SETTABLEKS                       R10 R9 K28 ["Remove"]
      266 LOADB                            R10 0
      267 GETTABLEKS                       R11 R0 K2 ["cellType"]
      269 JUMPIFNOTEQKS                    R11 K3 ["Dropdown"] ; [+23]
      271 GETUPVAL                         R10 2
      272 GETTABLEKS                       R10 R10 K13 ["createElement"]
      274 GETUPVAL                         R11 9
      275 DUPTABLE                         R12 K79 [{["LayoutOrder"], ["name"] = "chevron-large-down", ["size"], ["tag"] = "icon padding-left-small", ["testId"]}]
      276 MOVE                             R13 R2
      277 CALL                             R13 0 1
      278 SETTABLEKS                       R13 R12 K39 ["LayoutOrder"]
      280 GETUPVAL                         R13 6
      281 GETTABLEKS                       R13 R13 K75 ["XSmall"]
      283 SETTABLEKS                       R13 R12 K47 ["size"]
      285 LOADK                            R13 K80 ["%*--control"]
      286 MOVE                             R15 R5
      287 NAMECALL                         R13 R13 K12 ["format"]
      289 CALL                             R13 2 1
      290 SETTABLEKS                       R13 R12 K20 ["testId"]
      292 CALL                             R10 2 1
      293 SETTABLEKS                       R10 R9 K29 ["Chevron"]
      295 CALL                             R6 3 -1
      296 RETURN                           R6 -1

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
       64 GETTABLEKS                       R14 R12 K22 ["getFFlagIAMBooleanProperties"]
       66 CALL                             R13 1 1
       67 DUPCLOSURE                       R14 K23 [PROTO_1]
       68 CAPTURE                          VAL R13
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R10
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R9
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R5
       77 CAPTURE                          VAL R4
       78 RETURN                           R14 1
