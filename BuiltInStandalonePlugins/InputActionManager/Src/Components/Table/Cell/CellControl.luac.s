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
       58 DUPTABLE                         R8 K20 [{"isDisabled", "onActivated", "onStateChanged", "ref", "tag", "testId"}]
       59 SETTABLEKS                       R1 R8 K14 ["isDisabled"]
       61 JUMPIF                           R1 ; [+3]
       62 GETTABLEKS                       R9 R0 K15 ["onActivated"]
       64 JUMP                             ; [+1]
       65 LOADNIL                          R9
       66 SETTABLEKS                       R9 R8 K15 ["onActivated"]
       68 JUMPIF                           R1 ; [+3]
       69 GETTABLEKS                       R9 R0 K16 ["onStateChanged"]
       71 JUMP                             ; [+1]
       72 LOADNIL                          R9
       73 SETTABLEKS                       R9 R8 K16 ["onStateChanged"]
       75 GETTABLEKS                       R9 R0 K21 ["inputRef"]
       77 SETTABLEKS                       R9 R8 K17 ["ref"]
       79 GETTABLEKS                       R10 R0 K22 ["selected"]
       81 JUMPIFNOT                        R10 ; [+5]
       82 GETUPVAL                         R10 4
       83 CALL                             R10 0 1
       84 JUMPIFNOT                        R10 ; [+2]
       85 LOADK                            R9 K23 ["row align-y-center gap-small size-full-full padding-medium bg-system-emphasis"]
       86 JUMP                             ; [+6]
       87 GETTABLEKS                       R10 R0 K22 ["selected"]
       89 JUMPIFNOT                        R10 ; [+2]
       90 LOADK                            R9 K24 ["row align-y-center gap-small size-full-full padding-medium bg-shift-200"]
       91 JUMP                             ; [+1]
       92 LOADK                            R9 K25 ["row align-y-center gap-small size-full-full padding-medium"]
       93 SETTABLEKS                       R9 R8 K18 ["tag"]
       95 SETTABLEKS                       R5 R8 K19 ["testId"]
       97 DUPTABLE                         R9 K30 [{"Icon", "Text", "Remove", "Chevron"}]
       98 GETUPVAL                         R10 2
       99 GETTABLEKS                       R10 R10 K13 ["createElement"]
      101 GETUPVAL                         R11 5
      102 DUPTABLE                         R12 K37 [{"buttonIcon", "cellType", "currentIcon", "layoutOrder", "message", "severity", "title"}]
      103 GETTABLEKS                       R13 R0 K38 ["icon"]
      105 GETTABLEKS                       R13 R13 K31 ["buttonIcon"]
      107 SETTABLEKS                       R13 R12 K31 ["buttonIcon"]
      109 GETTABLEKS                       R13 R0 K38 ["icon"]
      111 GETTABLEKS                       R13 R13 K2 ["cellType"]
      113 SETTABLEKS                       R13 R12 K2 ["cellType"]
      115 GETTABLEKS                       R13 R0 K38 ["icon"]
      117 GETTABLEKS                       R13 R13 K32 ["currentIcon"]
      119 SETTABLEKS                       R13 R12 K32 ["currentIcon"]
      121 MOVE                             R13 R2
      122 CALL                             R13 0 1
      123 SETTABLEKS                       R13 R12 K33 ["layoutOrder"]
      125 GETTABLEKS                       R13 R0 K38 ["icon"]
      127 GETTABLEKS                       R13 R13 K34 ["message"]
      129 SETTABLEKS                       R13 R12 K34 ["message"]
      131 GETTABLEKS                       R13 R0 K38 ["icon"]
      133 GETTABLEKS                       R13 R13 K35 ["severity"]
      135 SETTABLEKS                       R13 R12 K35 ["severity"]
      137 GETTABLEKS                       R13 R0 K38 ["icon"]
      139 GETTABLEKS                       R13 R13 K36 ["title"]
      141 SETTABLEKS                       R13 R12 K36 ["title"]
      143 CALL                             R10 2 1
      144 SETTABLEKS                       R10 R9 K26 ["Icon"]
      146 JUMPIFNOT                        R3 ; [+57]
      147 GETTABLEKS                       R11 R0 K5 ["onFilterTextChanged"]
      149 JUMPIFNOT                        R11 ; [+54]
      150 GETUPVAL                         R10 2
      151 GETTABLEKS                       R10 R10 K13 ["createElement"]
      153 GETUPVAL                         R11 3
      154 DUPTABLE                         R12 K41 [{["LayoutOrder"], ["tag"] = "align-y-center grow size-0-full"}]
      155 MOVE                             R13 R2
      156 CALL                             R13 0 1
      157 SETTABLEKS                       R13 R12 K39 ["LayoutOrder"]
      159 DUPTABLE                         R13 K43 [{"TextInput"}]
      160 GETUPVAL                         R14 2
      161 GETTABLEKS                       R14 R14 K13 ["createElement"]
      163 GETUPVAL                         R15 6
      164 DUPTABLE                         R16 K53 [{["label"] = "", ["onChanged"], ["size"], ["tag"] = "size-full-full", ["testId"], ["text"], ["textBoxRef"], ["textInputType"], ["width"]}]
      165 GETTABLEKS                       R17 R0 K5 ["onFilterTextChanged"]
      167 SETTABLEKS                       R17 R16 K46 ["onChanged"]
      169 GETUPVAL                         R17 7
      170 GETTABLEKS                       R17 R17 K54 ["Small"]
      172 SETTABLEKS                       R17 R16 K47 ["size"]
      174 LOADK                            R17 K55 ["%*--filter"]
      175 MOVE                             R19 R5
      176 NAMECALL                         R17 R17 K12 ["format"]
      178 CALL                             R17 2 1
      179 SETTABLEKS                       R17 R16 K19 ["testId"]
      181 GETTABLEKS                       R18 R0 K56 ["filterText"]
      183 ORK                              R17 R18 K45 [""]
      184 SETTABLEKS                       R17 R16 K49 ["text"]
      186 SETTABLEKS                       R4 R16 K50 ["textBoxRef"]
      188 GETIMPORT                        R17 K60 [Enum.TextInputType.Default]
      190 SETTABLEKS                       R17 R16 K51 ["textInputType"]
      192 GETIMPORT                        R17 K63 [UDim.new]
      194 LOADN                            R18 1
      195 LOADN                            R19 0
      196 CALL                             R17 2 1
      197 SETTABLEKS                       R17 R16 K52 ["width"]
      199 CALL                             R14 2 1
      200 SETTABLEKS                       R14 R13 K42 ["TextInput"]
      202 CALL                             R10 3 1
      203 JUMP                             ; [+25]
      204 GETUPVAL                         R10 2
      205 GETTABLEKS                       R10 R10 K13 ["createElement"]
      207 GETUPVAL                         R11 8
      208 DUPTABLE                         R12 K66 [{["LayoutOrder"], ["tag"] = "grow size-0-full text-body-medium text-align-x-left", ["testId"], ["Text"], ["TextTruncate"]}]
      209 MOVE                             R13 R2
      210 CALL                             R13 0 1
      211 SETTABLEKS                       R13 R12 K39 ["LayoutOrder"]
      213 LOADK                            R13 K67 ["%*--text"]
      214 MOVE                             R15 R5
      215 NAMECALL                         R13 R13 K12 ["format"]
      217 CALL                             R13 2 1
      218 SETTABLEKS                       R13 R12 K19 ["testId"]
      220 GETTABLEKS                       R13 R0 K49 ["text"]
      222 SETTABLEKS                       R13 R12 K27 ["Text"]
      224 GETIMPORT                        R13 K69 [Enum.TextTruncate.AtEnd]
      226 SETTABLEKS                       R13 R12 K65 ["TextTruncate"]
      228 CALL                             R10 2 1
      229 SETTABLEKS                       R10 R9 K27 ["Text"]
      231 NOT                              R10 R1
      232 JUMPIFNOT                        R10 ; [+32]
      233 GETTABLEKS                       R10 R0 K70 ["isHovered"]
      235 JUMPIFNOT                        R10 ; [+29]
      236 GETTABLEKS                       R10 R0 K71 ["onRemoveActivated"]
      238 JUMPIFNOT                        R10 ; [+26]
      239 GETUPVAL                         R10 2
      240 GETTABLEKS                       R10 R10 K13 ["createElement"]
      242 GETUPVAL                         R11 9
      243 DUPTABLE                         R12 K74 [{["icon"] = "trash-can", ["LayoutOrder"], ["onActivated"], ["size"], ["tag"] = "icon padding-left-small", ["testId"]}]
      244 MOVE                             R13 R2
      245 CALL                             R13 0 1
      246 SETTABLEKS                       R13 R12 K39 ["LayoutOrder"]
      248 GETTABLEKS                       R13 R0 K71 ["onRemoveActivated"]
      250 SETTABLEKS                       R13 R12 K15 ["onActivated"]
      252 GETUPVAL                         R13 7
      253 GETTABLEKS                       R13 R13 K75 ["XSmall"]
      255 SETTABLEKS                       R13 R12 K47 ["size"]
      257 LOADK                            R13 K76 ["%*--remove"]
      258 MOVE                             R15 R5
      259 NAMECALL                         R13 R13 K12 ["format"]
      261 CALL                             R13 2 1
      262 SETTABLEKS                       R13 R12 K19 ["testId"]
      264 CALL                             R10 2 1
      265 SETTABLEKS                       R10 R9 K28 ["Remove"]
      267 LOADB                            R10 0
      268 GETTABLEKS                       R11 R0 K2 ["cellType"]
      270 JUMPIFNOTEQKS                    R11 K3 ["Dropdown"] ; [+23]
      272 GETUPVAL                         R10 2
      273 GETTABLEKS                       R10 R10 K13 ["createElement"]
      275 GETUPVAL                         R11 10
      276 DUPTABLE                         R12 K79 [{["LayoutOrder"], ["name"] = "chevron-large-down", ["size"], ["tag"] = "icon padding-left-small", ["testId"]}]
      277 MOVE                             R13 R2
      278 CALL                             R13 0 1
      279 SETTABLEKS                       R13 R12 K39 ["LayoutOrder"]
      281 GETUPVAL                         R13 7
      282 GETTABLEKS                       R13 R13 K75 ["XSmall"]
      284 SETTABLEKS                       R13 R12 K47 ["size"]
      286 LOADK                            R13 K80 ["%*--control"]
      287 MOVE                             R15 R5
      288 NAMECALL                         R13 R13 K12 ["format"]
      290 CALL                             R13 2 1
      291 SETTABLEKS                       R13 R12 K19 ["testId"]
      293 CALL                             R10 2 1
      294 SETTABLEKS                       R10 R9 K29 ["Chevron"]
      296 CALL                             R6 3 -1
      297 RETURN                           R6 -1

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
       67 GETIMPORT                        R14 K5 [require]
       69 GETTABLEKS                       R15 R12 K23 ["getFFlagIAMTouchButtonImprovements"]
       71 CALL                             R14 1 1
       72 DUPCLOSURE                       R15 K24 [PROTO_1]
       73 CAPTURE                          VAL R13
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R14
       78 CAPTURE                          VAL R10
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R6
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R4
       84 RETURN                           R15 1
