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
        0 GETTABLEKS                       R1 R0 K0 ["disabled"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createNextOrder"]
        5 CALL                             R2 0 1
        6 LOADB                            R3 0
        7 GETTABLEKS                       R4 R0 K2 ["cellType"]
        9 JUMPIFNOTEQKS                    R4 K3 ["Dropdown"] ; [+10]
       11 GETTABLEKS                       R3 R0 K4 ["isOpen"]
       13 JUMPIFNOT                        R3 ; [+6]
       14 GETTABLEKS                       R4 R0 K5 ["onFilterTextChanged"]
       16 JUMPIFNOTEQKNIL                  R4 ; [+2]
       18 LOADB                            R3 0 +1
       19 LOADB                            R3 1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R4 R4 K6 ["useRef"]
       23 LOADNIL                          R5
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R5 R5 K7 ["useEffect"]
       28 NEWCLOSURE                       R6 P0
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 NEWTABLE                         R7 0 2
       33 MOVE                             R8 R3
       34 GETTABLEKS                       R9 R4 K8 ["current"]
       36 SETLIST                          R7 R8 2 [1]
       38 CALL                             R5 2 0
       39 LOADK                            R5 K9 ["%*-%*-%*"]
       40 GETTABLEKS                       R7 R0 K10 ["property"]
       42 GETTABLEKS                       R8 R0 K11 ["schema"]
       44 GETTABLEKS                       R9 R0 K2 ["cellType"]
       46 NAMECALL                         R5 R5 K12 ["format"]
       48 CALL                             R5 4 1
       49 GETUPVAL                         R6 1
       50 GETTABLEKS                       R6 R6 K13 ["createElement"]
       52 GETUPVAL                         R7 2
       53 DUPTABLE                         R8 K21 [{"isDisabled", "onActivated", "onSecondaryActivated", "onStateChanged", "ref", "tag", "testId"}]
       54 SETTABLEKS                       R1 R8 K14 ["isDisabled"]
       56 JUMPIF                           R1 ; [+3]
       57 GETTABLEKS                       R9 R0 K15 ["onActivated"]
       59 JUMP                             ; [+1]
       60 LOADNIL                          R9
       61 SETTABLEKS                       R9 R8 K15 ["onActivated"]
       63 JUMPIF                           R1 ; [+3]
       64 GETTABLEKS                       R9 R0 K16 ["onSecondaryActivated"]
       66 JUMP                             ; [+1]
       67 LOADNIL                          R9
       68 SETTABLEKS                       R9 R8 K16 ["onSecondaryActivated"]
       70 JUMPIF                           R1 ; [+3]
       71 GETTABLEKS                       R9 R0 K17 ["onStateChanged"]
       73 JUMP                             ; [+1]
       74 LOADNIL                          R9
       75 SETTABLEKS                       R9 R8 K17 ["onStateChanged"]
       77 GETTABLEKS                       R9 R0 K22 ["inputRef"]
       79 SETTABLEKS                       R9 R8 K18 ["ref"]
       81 GETTABLEKS                       R10 R0 K23 ["selected"]
       83 JUMPIFNOT                        R10 ; [+2]
       84 LOADK                            R9 K24 ["row align-y-center gap-small size-full-full padding-medium bg-system-emphasis"]
       85 JUMP                             ; [+1]
       86 LOADK                            R9 K25 ["row align-y-center gap-small size-full-full padding-medium"]
       87 SETTABLEKS                       R9 R8 K19 ["tag"]
       89 SETTABLEKS                       R5 R8 K20 ["testId"]
       91 DUPTABLE                         R9 K30 [{"Icon", "Text", "Remove", "Chevron"}]
       92 GETUPVAL                         R10 1
       93 GETTABLEKS                       R10 R10 K13 ["createElement"]
       95 GETUPVAL                         R11 3
       96 DUPTABLE                         R12 K38 [{"buttonIcon", "cellType", "currentIcon", "displayImage", "layoutOrder", "message", "severity", "title"}]
       97 GETTABLEKS                       R13 R0 K39 ["icon"]
       99 GETTABLEKS                       R13 R13 K31 ["buttonIcon"]
      101 SETTABLEKS                       R13 R12 K31 ["buttonIcon"]
      103 GETTABLEKS                       R13 R0 K39 ["icon"]
      105 GETTABLEKS                       R13 R13 K2 ["cellType"]
      107 SETTABLEKS                       R13 R12 K2 ["cellType"]
      109 GETTABLEKS                       R13 R0 K39 ["icon"]
      111 GETTABLEKS                       R13 R13 K32 ["currentIcon"]
      113 SETTABLEKS                       R13 R12 K32 ["currentIcon"]
      115 GETUPVAL                         R14 4
      116 CALL                             R14 0 1
      117 JUMPIFNOT                        R14 ; [+3]
      118 GETTABLEKS                       R13 R0 K33 ["displayImage"]
      120 JUMP                             ; [+1]
      121 LOADNIL                          R13
      122 SETTABLEKS                       R13 R12 K33 ["displayImage"]
      124 MOVE                             R13 R2
      125 CALL                             R13 0 1
      126 SETTABLEKS                       R13 R12 K34 ["layoutOrder"]
      128 GETTABLEKS                       R13 R0 K39 ["icon"]
      130 GETTABLEKS                       R13 R13 K35 ["message"]
      132 SETTABLEKS                       R13 R12 K35 ["message"]
      134 GETTABLEKS                       R13 R0 K39 ["icon"]
      136 GETTABLEKS                       R13 R13 K36 ["severity"]
      138 SETTABLEKS                       R13 R12 K36 ["severity"]
      140 GETTABLEKS                       R13 R0 K39 ["icon"]
      142 GETTABLEKS                       R13 R13 K37 ["title"]
      144 SETTABLEKS                       R13 R12 K37 ["title"]
      146 CALL                             R10 2 1
      147 SETTABLEKS                       R10 R9 K26 ["Icon"]
      149 JUMPIFNOT                        R3 ; [+57]
      150 GETTABLEKS                       R11 R0 K5 ["onFilterTextChanged"]
      152 JUMPIFNOT                        R11 ; [+54]
      153 GETUPVAL                         R10 1
      154 GETTABLEKS                       R10 R10 K13 ["createElement"]
      156 GETUPVAL                         R11 2
      157 DUPTABLE                         R12 K42 [{["LayoutOrder"], ["tag"] = "align-y-center grow size-0-full"}]
      158 MOVE                             R13 R2
      159 CALL                             R13 0 1
      160 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
      162 DUPTABLE                         R13 K44 [{"TextInput"}]
      163 GETUPVAL                         R14 1
      164 GETTABLEKS                       R14 R14 K13 ["createElement"]
      166 GETUPVAL                         R15 5
      167 DUPTABLE                         R16 K54 [{["label"] = "", ["onChanged"], ["size"], ["tag"] = "size-full-full", ["testId"], ["text"], ["textBoxRef"], ["textInputType"], ["width"]}]
      168 GETTABLEKS                       R17 R0 K5 ["onFilterTextChanged"]
      170 SETTABLEKS                       R17 R16 K47 ["onChanged"]
      172 GETUPVAL                         R17 6
      173 GETTABLEKS                       R17 R17 K55 ["Small"]
      175 SETTABLEKS                       R17 R16 K48 ["size"]
      177 LOADK                            R17 K56 ["%*--filter"]
      178 MOVE                             R19 R5
      179 NAMECALL                         R17 R17 K12 ["format"]
      181 CALL                             R17 2 1
      182 SETTABLEKS                       R17 R16 K20 ["testId"]
      184 GETTABLEKS                       R18 R0 K57 ["filterText"]
      186 ORK                              R17 R18 K46 [""]
      187 SETTABLEKS                       R17 R16 K50 ["text"]
      189 SETTABLEKS                       R4 R16 K51 ["textBoxRef"]
      191 GETIMPORT                        R17 K61 [Enum.TextInputType.Default]
      193 SETTABLEKS                       R17 R16 K52 ["textInputType"]
      195 GETIMPORT                        R17 K64 [UDim.new]
      197 LOADN                            R18 1
      198 LOADN                            R19 0
      199 CALL                             R17 2 1
      200 SETTABLEKS                       R17 R16 K53 ["width"]
      202 CALL                             R14 2 1
      203 SETTABLEKS                       R14 R13 K43 ["TextInput"]
      205 CALL                             R10 3 1
      206 JUMP                             ; [+25]
      207 GETUPVAL                         R10 1
      208 GETTABLEKS                       R10 R10 K13 ["createElement"]
      210 GETUPVAL                         R11 7
      211 DUPTABLE                         R12 K67 [{["LayoutOrder"], ["tag"] = "grow size-0-full text-body-medium text-align-x-left", ["testId"], ["Text"], ["TextTruncate"]}]
      212 MOVE                             R13 R2
      213 CALL                             R13 0 1
      214 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
      216 LOADK                            R13 K68 ["%*--text"]
      217 MOVE                             R15 R5
      218 NAMECALL                         R13 R13 K12 ["format"]
      220 CALL                             R13 2 1
      221 SETTABLEKS                       R13 R12 K20 ["testId"]
      223 GETTABLEKS                       R13 R0 K50 ["text"]
      225 SETTABLEKS                       R13 R12 K27 ["Text"]
      227 GETIMPORT                        R13 K70 [Enum.TextTruncate.AtEnd]
      229 SETTABLEKS                       R13 R12 K66 ["TextTruncate"]
      231 CALL                             R10 2 1
      232 SETTABLEKS                       R10 R9 K27 ["Text"]
      234 NOT                              R10 R1
      235 JUMPIFNOT                        R10 ; [+37]
      236 GETTABLEKS                       R10 R0 K71 ["isHovered"]
      238 JUMPIFNOT                        R10 ; [+34]
      239 GETTABLEKS                       R10 R0 K72 ["onRemoveActivated"]
      241 JUMPIFNOT                        R10 ; [+31]
      242 GETUPVAL                         R10 1
      243 GETTABLEKS                       R10 R10 K13 ["createElement"]
      245 GETUPVAL                         R11 8
      246 DUPTABLE                         R12 K74 [{["icon"], ["LayoutOrder"], ["onActivated"], ["size"], ["tag"] = "icon padding-left-small", ["testId"]}]
      247 GETUPVAL                         R13 9
      248 GETTABLEKS                       R13 R13 K75 ["TrashCan"]
      250 SETTABLEKS                       R13 R12 K39 ["icon"]
      252 MOVE                             R13 R2
      253 CALL                             R13 0 1
      254 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
      256 GETTABLEKS                       R13 R0 K72 ["onRemoveActivated"]
      258 SETTABLEKS                       R13 R12 K15 ["onActivated"]
      260 GETUPVAL                         R13 6
      261 GETTABLEKS                       R13 R13 K76 ["XSmall"]
      263 SETTABLEKS                       R13 R12 K48 ["size"]
      265 LOADK                            R13 K77 ["%*--remove"]
      266 MOVE                             R15 R5
      267 NAMECALL                         R13 R13 K12 ["format"]
      269 CALL                             R13 2 1
      270 SETTABLEKS                       R13 R12 K20 ["testId"]
      272 CALL                             R10 2 1
      273 SETTABLEKS                       R10 R9 K28 ["Remove"]
      275 LOADB                            R10 0
      276 GETTABLEKS                       R11 R0 K2 ["cellType"]
      278 JUMPIFNOTEQKS                    R11 K3 ["Dropdown"] ; [+23]
      280 GETUPVAL                         R10 1
      281 GETTABLEKS                       R10 R10 K13 ["createElement"]
      283 GETUPVAL                         R11 10
      284 DUPTABLE                         R12 K80 [{["LayoutOrder"], ["name"] = "chevron-large-down", ["size"], ["tag"] = "icon padding-left-small", ["testId"]}]
      285 MOVE                             R13 R2
      286 CALL                             R13 0 1
      287 SETTABLEKS                       R13 R12 K40 ["LayoutOrder"]
      289 GETUPVAL                         R13 6
      290 GETTABLEKS                       R13 R13 K76 ["XSmall"]
      292 SETTABLEKS                       R13 R12 K48 ["size"]
      294 LOADK                            R13 K81 ["%*--control"]
      295 MOVE                             R15 R5
      296 NAMECALL                         R13 R13 K12 ["format"]
      298 CALL                             R13 2 1
      299 SETTABLEKS                       R13 R12 K20 ["testId"]
      301 CALL                             R10 2 1
      302 SETTABLEKS                       R10 R9 K29 ["Chevron"]
      304 CALL                             R6 3 -1
      305 RETURN                           R6 -1

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
       40 GETTABLEKS                       R9 R9 K16 ["IconName"]
       42 GETTABLEKS                       R10 R1 K15 ["Enums"]
       44 GETTABLEKS                       R10 R10 K17 ["InputSize"]
       46 GETIMPORT                        R11 K5 [require]
       48 GETIMPORT                        R12 K1 [script]
       50 GETTABLEKS                       R12 R12 K18 ["Parent"]
       52 GETTABLEKS                       R12 R12 K19 ["CellIcon"]
       54 CALL                             R11 1 1
       55 GETIMPORT                        R12 K5 [require]
       57 GETTABLEKS                       R13 R0 K20 ["Src"]
       59 GETTABLEKS                       R13 R13 K21 ["Types"]
       61 CALL                             R12 1 1
       62 GETTABLEKS                       R13 R0 K20 ["Src"]
       64 GETTABLEKS                       R13 R13 K22 ["Flags"]
       66 GETIMPORT                        R14 K5 [require]
       68 GETTABLEKS                       R15 R13 K23 ["getFFlagIAMUseDisplayImageName"]
       70 CALL                             R14 1 1
       71 DUPCLOSURE                       R15 K24 [PROTO_1]
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R11
       76 CAPTURE                          VAL R14
       77 CAPTURE                          VAL R7
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R5
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R4
       83 RETURN                           R15 1
