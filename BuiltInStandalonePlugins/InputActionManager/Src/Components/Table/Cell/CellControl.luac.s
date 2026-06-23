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
       67 JUMPIFNOT                        R9 ; [+2]
       68 LOADK                            R8 K21 ["row gap-small size-full-full padding-medium bg-shift-200 align-y-center padding-right-xsmall"]
       69 JUMP                             ; [+1]
       70 LOADK                            R8 K22 ["row gap-small size-full-full padding-medium align-y-center padding-right-xsmall"]
       71 SETTABLEKS                       R8 R7 K16 ["tag"]
       73 SETTABLEKS                       R4 R7 K17 ["testId"]
       75 DUPTABLE                         R8 K27 [{"Icon", "Text", "Remove", "Open"}]
       76 GETUPVAL                         R9 1
       77 GETTABLEKS                       R9 R9 K12 ["createElement"]
       79 GETUPVAL                         R10 3
       80 DUPTABLE                         R11 K34 [{"buttonIcon", "cellType", "currentIcon", "layoutOrder", "message", "severity", "title"}]
       81 GETTABLEKS                       R12 R0 K35 ["icon"]
       83 GETTABLEKS                       R12 R12 K28 ["buttonIcon"]
       85 SETTABLEKS                       R12 R11 K28 ["buttonIcon"]
       87 GETTABLEKS                       R12 R0 K35 ["icon"]
       89 GETTABLEKS                       R12 R12 K1 ["cellType"]
       91 SETTABLEKS                       R12 R11 K1 ["cellType"]
       93 GETTABLEKS                       R12 R0 K35 ["icon"]
       95 GETTABLEKS                       R12 R12 K29 ["currentIcon"]
       97 SETTABLEKS                       R12 R11 K29 ["currentIcon"]
       99 MOVE                             R12 R1
      100 CALL                             R12 0 1
      101 SETTABLEKS                       R12 R11 K30 ["layoutOrder"]
      103 GETTABLEKS                       R12 R0 K35 ["icon"]
      105 GETTABLEKS                       R12 R12 K31 ["message"]
      107 SETTABLEKS                       R12 R11 K31 ["message"]
      109 GETTABLEKS                       R12 R0 K35 ["icon"]
      111 GETTABLEKS                       R12 R12 K32 ["severity"]
      113 SETTABLEKS                       R12 R11 K32 ["severity"]
      115 GETTABLEKS                       R12 R0 K35 ["icon"]
      117 GETTABLEKS                       R12 R12 K33 ["title"]
      119 SETTABLEKS                       R12 R11 K33 ["title"]
      121 CALL                             R9 2 1
      122 SETTABLEKS                       R9 R8 K23 ["Icon"]
      124 JUMPIFNOT                        R2 ; [+67]
      125 GETTABLEKS                       R10 R0 K4 ["onFilterTextChanged"]
      127 JUMPIFNOT                        R10 ; [+64]
      128 GETUPVAL                         R9 1
      129 GETTABLEKS                       R9 R9 K12 ["createElement"]
      131 GETUPVAL                         R10 2
      132 DUPTABLE                         R11 K37 [{"LayoutOrder", "tag"}]
      133 MOVE                             R12 R1
      134 CALL                             R12 0 1
      135 SETTABLEKS                       R12 R11 K36 ["LayoutOrder"]
      137 LOADK                            R12 K38 ["grow size-0-full align-y-center"]
      138 SETTABLEKS                       R12 R11 K16 ["tag"]
      140 DUPTABLE                         R12 K40 [{"TextInput"}]
      141 GETUPVAL                         R13 1
      142 GETTABLEKS                       R13 R13 K12 ["createElement"]
      144 GETUPVAL                         R14 4
      145 DUPTABLE                         R15 K48 [{"label", "onChanged", "size", "tag", "testId", "text", "textBoxRef", "textInputType", "width"}]
      146 LOADK                            R16 K49 [""]
      147 SETTABLEKS                       R16 R15 K41 ["label"]
      149 GETTABLEKS                       R16 R0 K4 ["onFilterTextChanged"]
      151 SETTABLEKS                       R16 R15 K42 ["onChanged"]
      153 GETUPVAL                         R16 5
      154 GETTABLEKS                       R16 R16 K50 ["Small"]
      156 SETTABLEKS                       R16 R15 K43 ["size"]
      158 LOADK                            R16 K51 ["grow size-0-full"]
      159 SETTABLEKS                       R16 R15 K16 ["tag"]
      161 LOADK                            R17 K52 ["%*--filter"]
      162 MOVE                             R19 R4
      163 NAMECALL                         R17 R17 K11 ["format"]
      165 CALL                             R17 2 1
      166 MOVE                             R16 R17
      167 SETTABLEKS                       R16 R15 K17 ["testId"]
      169 GETTABLEKS                       R17 R0 K53 ["filterText"]
      171 ORK                              R16 R17 K49 [""]
      172 SETTABLEKS                       R16 R15 K44 ["text"]
      174 SETTABLEKS                       R3 R15 K45 ["textBoxRef"]
      176 GETIMPORT                        R16 K57 [Enum.TextInputType.Default]
      178 SETTABLEKS                       R16 R15 K46 ["textInputType"]
      180 GETIMPORT                        R16 K60 [UDim.new]
      182 LOADN                            R17 1
      183 LOADN                            R18 0
      184 CALL                             R16 2 1
      185 SETTABLEKS                       R16 R15 K47 ["width"]
      187 CALL                             R13 2 1
      188 SETTABLEKS                       R13 R12 K39 ["TextInput"]
      190 CALL                             R9 3 1
      191 JUMP                             ; [+29]
      192 GETUPVAL                         R9 1
      193 GETTABLEKS                       R9 R9 K12 ["createElement"]
      195 GETUPVAL                         R10 6
      196 DUPTABLE                         R11 K62 [{"LayoutOrder", "tag", "testId", "Text", "TextTruncate"}]
      197 MOVE                             R12 R1
      198 CALL                             R12 0 1
      199 SETTABLEKS                       R12 R11 K36 ["LayoutOrder"]
      201 LOADK                            R12 K63 ["text-body-small grow size-0-full text-align-x-left"]
      202 SETTABLEKS                       R12 R11 K16 ["tag"]
      204 LOADK                            R13 K64 ["%*--text"]
      205 MOVE                             R15 R4
      206 NAMECALL                         R13 R13 K11 ["format"]
      208 CALL                             R13 2 1
      209 MOVE                             R12 R13
      210 SETTABLEKS                       R12 R11 K17 ["testId"]
      212 GETTABLEKS                       R12 R0 K44 ["text"]
      214 SETTABLEKS                       R12 R11 K24 ["Text"]
      216 GETIMPORT                        R12 K66 [Enum.TextTruncate.AtEnd]
      218 SETTABLEKS                       R12 R11 K61 ["TextTruncate"]
      220 CALL                             R9 2 1
      221 SETTABLEKS                       R9 R8 K24 ["Text"]
      223 GETTABLEKS                       R9 R0 K67 ["isHovered"]
      225 JUMPIFNOT                        R9 ; [+36]
      226 GETTABLEKS                       R9 R0 K68 ["onRemoveActivated"]
      228 JUMPIFNOT                        R9 ; [+33]
      229 GETUPVAL                         R9 1
      230 GETTABLEKS                       R9 R9 K12 ["createElement"]
      232 GETUPVAL                         R10 7
      233 DUPTABLE                         R11 K69 [{"icon", "LayoutOrder", "onActivated", "size", "tag", "testId"}]
      234 LOADK                            R12 K70 ["trash-can"]
      235 SETTABLEKS                       R12 R11 K35 ["icon"]
      237 MOVE                             R12 R1
      238 CALL                             R12 0 1
      239 SETTABLEKS                       R12 R11 K36 ["LayoutOrder"]
      241 GETTABLEKS                       R12 R0 K68 ["onRemoveActivated"]
      243 SETTABLEKS                       R12 R11 K13 ["onActivated"]
      245 GETUPVAL                         R12 5
      246 GETTABLEKS                       R12 R12 K71 ["XSmall"]
      248 SETTABLEKS                       R12 R11 K43 ["size"]
      250 LOADK                            R12 K72 ["icon padding-left-small"]
      251 SETTABLEKS                       R12 R11 K16 ["tag"]
      253 LOADK                            R13 K73 ["%*--remove"]
      254 MOVE                             R15 R4
      255 NAMECALL                         R13 R13 K11 ["format"]
      257 CALL                             R13 2 1
      258 MOVE                             R12 R13
      259 SETTABLEKS                       R12 R11 K17 ["testId"]
      261 CALL                             R9 2 1
      262 SETTABLEKS                       R9 R8 K25 ["Remove"]
      264 LOADB                            R9 0
      265 GETTABLEKS                       R10 R0 K1 ["cellType"]
      267 JUMPIFNOTEQKS                    R10 K2 ["Dropdown"] ; [+37]
      269 GETTABLEKS                       R9 R0 K74 ["onOpenActivated"]
      271 JUMPIFNOT                        R9 ; [+33]
      272 GETUPVAL                         R9 1
      273 GETTABLEKS                       R9 R9 K12 ["createElement"]
      275 GETUPVAL                         R10 7
      276 DUPTABLE                         R11 K69 [{"icon", "LayoutOrder", "onActivated", "size", "tag", "testId"}]
      277 LOADK                            R12 K75 ["chevron-large-down"]
      278 SETTABLEKS                       R12 R11 K35 ["icon"]
      280 MOVE                             R12 R1
      281 CALL                             R12 0 1
      282 SETTABLEKS                       R12 R11 K36 ["LayoutOrder"]
      284 GETTABLEKS                       R12 R0 K74 ["onOpenActivated"]
      286 SETTABLEKS                       R12 R11 K13 ["onActivated"]
      288 GETUPVAL                         R12 5
      289 GETTABLEKS                       R12 R12 K71 ["XSmall"]
      291 SETTABLEKS                       R12 R11 K43 ["size"]
      293 LOADK                            R12 K72 ["icon padding-left-small"]
      294 SETTABLEKS                       R12 R11 K16 ["tag"]
      296 LOADK                            R13 K76 ["%*--control"]
      297 MOVE                             R15 R4
      298 NAMECALL                         R13 R13 K11 ["format"]
      300 CALL                             R13 2 1
      301 MOVE                             R12 R13
      302 SETTABLEKS                       R12 R11 K17 ["testId"]
      304 CALL                             R9 2 1
      305 SETTABLEKS                       R9 R8 K26 ["Open"]
      307 CALL                             R5 3 -1
      308 RETURN                           R5 -1

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
       28 GETTABLEKS                       R4 R1 K10 ["IconButton"]
       30 GETTABLEKS                       R5 R1 K11 ["Text"]
       32 GETTABLEKS                       R6 R1 K12 ["TextInput"]
       34 GETTABLEKS                       R7 R1 K13 ["View"]
       36 GETTABLEKS                       R8 R1 K14 ["Enums"]
       38 GETTABLEKS                       R8 R8 K15 ["InputSize"]
       40 GETIMPORT                        R9 K5 [require]
       42 GETIMPORT                        R10 K1 [script]
       44 GETTABLEKS                       R10 R10 K16 ["Parent"]
       46 GETTABLEKS                       R10 R10 K17 ["CellIcon"]
       48 CALL                             R9 1 1
       49 GETIMPORT                        R10 K5 [require]
       51 GETTABLEKS                       R11 R0 K18 ["Src"]
       53 GETTABLEKS                       R11 R11 K19 ["Types"]
       55 CALL                             R10 1 1
       56 DUPCLOSURE                       R11 K20 [PROTO_1]
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R6
       62 CAPTURE                          VAL R8
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R4
       65 RETURN                           R11 1
