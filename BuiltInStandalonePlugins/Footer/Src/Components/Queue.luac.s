PROTO_0:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+3]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 0
        6 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["clear-completed"] ; [+13]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["onClearCompleted"]
        5 JUMPIFNOT                        R1 ; [+8]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["hasCompletedTasks"]
        9 JUMPIFNOT                        R1 ; [+4]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K1 ["onClearCompleted"]
       13 CALL                             R1 0 0
       14 GETUPVAL                         R1 1
       15 LOADB                            R2 0
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETUPVAL                         R3 0
        6 GETTABLE                         R1 R2 R3
        7 JUMP                             ; [+1]
        8 LOADNIL                          R1
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 LOADB                            R3 1
       12 GETIMPORT                        R4 K1 [ipairs]
       14 GETUPVAL                         R5 3
       15 GETTABLEKS                       R5 R5 K2 ["items"]
       17 CALL                             R4 1 3
       18 FORGPREP_INEXT                   R4
       19 GETTABLEKS                       R9 R8 K3 ["signals"]
       21 GETTABLEKS                       R9 R9 K4 ["getStatus"]
       23 LOADB                            R10 0
       24 CALL                             R9 1 1
       25 GETUPVAL                         R12 4
       26 GETTABLE                         R11 R12 R9
       27 LOADK                            R13 K5 ["Unexpected queue item status: %*"]
       28 MOVE                             R15 R9
       29 NAMECALL                         R13 R13 K6 ["format"]
       31 CALL                             R13 2 1
       32 MOVE                             R12 R13
       33 FASTCALL2                        ASSERT R11 R12 ; [+3]
       35 GETIMPORT                        R10 K8 [assert]
       37 CALL                             R10 2 0
       38 JUMPIFNOT                        R1 ; [+2]
       39 JUMPIFNOTEQ                      R9 R1 ; [+51]
       41 JUMPIF                           R3 ; [+24]
       42 MOVE                             R11 R0
       43 GETUPVAL                         R12 5
       44 GETUPVAL                         R13 6
       45 GETTABLEKS                       R13 R13 K9 ["Divider"]
       47 DUPTABLE                         R14 K12 [{"key", "LayoutOrder"}]
       48 LOADK                            R16 K13 ["divider-%*"]
       49 GETTABLEKS                       R18 R8 K14 ["id"]
       51 NAMECALL                         R16 R16 K6 ["format"]
       53 CALL                             R16 2 1
       54 MOVE                             R15 R16
       55 SETTABLEKS                       R15 R14 K10 ["key"]
       57 MOVE                             R15 R2
       58 CALL                             R15 0 1
       59 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
       61 CALL                             R12 2 -1
       62 FASTCALL                         TABLE_INSERT ; [+2]
       63 GETIMPORT                        R10 K17 [table.insert]
       65 CALL                             R10 -1 0
       66 LOADB                            R3 0
       67 MOVE                             R11 R0
       68 GETUPVAL                         R12 5
       69 GETUPVAL                         R13 7
       70 DUPTABLE                         R14 K20 [{"key", "session", "onView", "LayoutOrder"}]
       71 GETTABLEKS                       R15 R8 K14 ["id"]
       73 SETTABLEKS                       R15 R14 K10 ["key"]
       75 SETTABLEKS                       R8 R14 K18 ["session"]
       77 GETUPVAL                         R15 3
       78 GETTABLEKS                       R15 R15 K21 ["onViewItem"]
       80 SETTABLEKS                       R15 R14 K19 ["onView"]
       82 MOVE                             R15 R2
       83 CALL                             R15 0 1
       84 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
       86 CALL                             R12 2 -1
       87 FASTCALL                         TABLE_INSERT ; [+2]
       88 GETIMPORT                        R10 K17 [table.insert]
       90 CALL                             R10 -1 0
       91 FORGLOOP                         R4 2 [inext] ; [-73]
       93 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Failed"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Active"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["Completed"]
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["title"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["useState"]
        7 LOADNIL                          R4
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K1 ["useState"]
       12 LOADB                            R6 0
       13 CALL                             R5 1 2
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K2 ["useCallback"]
       17 NEWCLOSURE                       R8 P0
       18 CAPTURE                          VAL R4
       19 NEWTABLE                         R9 0 0
       21 CALL                             R7 2 1
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K2 ["useCallback"]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R6
       28 NEWTABLE                         R10 0 2
       30 GETTABLEKS                       R11 R0 K3 ["onClearCompleted"]
       32 GETTABLEKS                       R12 R0 K4 ["hasCompletedTasks"]
       34 SETLIST                          R10 R11 2 [1]
       36 CALL                             R8 2 1
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       40 NEWCLOSURE                       R10 P2
       41 CAPTURE                          VAL R3
       42 CAPTURE                          UPVAL U2
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          UPVAL U6
       49 NEWTABLE                         R11 0 3
       51 GETTABLEKS                       R12 R0 K6 ["items"]
       53 GETTABLEKS                       R13 R0 K7 ["onViewItem"]
       55 MOVE                             R14 R3
       56 SETLIST                          R11 R12 3 [1]
       58 CALL                             R9 2 1
       59 GETUPVAL                         R10 4
       60 GETUPVAL                         R11 5
       61 GETTABLEKS                       R11 R11 K8 ["View"]
       63 DUPTABLE                         R12 K13 [{["tag"] = "col size-full-full", ["testId"] = "--queue"}]
       64 DUPTABLE                         R13 K18 [{"Header", "HeaderSeparator", "TabsRow", "ItemsContainer"}]
       65 GETUPVAL                         R14 4
       66 GETUPVAL                         R15 5
       67 GETTABLEKS                       R15 R15 K8 ["View"]
       69 DUPTABLE                         R16 K22 [{["tag"] = "row flex-x-between items-center size-full-0 auto-y padding-small", ["LayoutOrder"], ["testId"] = "--queue-header"}]
       70 MOVE                             R17 R1
       71 CALL                             R17 0 1
       72 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
       74 DUPTABLE                         R17 K25 [{"Title", "HeaderButtons"}]
       75 GETUPVAL                         R18 4
       76 GETUPVAL                         R19 5
       77 GETTABLEKS                       R19 R19 K26 ["Text"]
       79 DUPTABLE                         R20 K30 [{["tag"] = "auto-xy padding-x-medium text-title-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1, ["testId"] = "--queue-title"}]
       80 SETTABLEKS                       R2 R20 K26 ["Text"]
       82 CALL                             R18 2 1
       83 SETTABLEKS                       R18 R17 K23 ["Title"]
       85 GETUPVAL                         R18 4
       86 GETUPVAL                         R19 5
       87 GETTABLEKS                       R19 R19 K8 ["View"]
       89 DUPTABLE                         R20 K33 [{["tag"] = "row items-center gap-xsmall auto-xy", ["LayoutOrder"] = 2}]
       90 DUPTABLE                         R21 K36 [{"OverflowMenu", "CloseButton"}]
       91 GETTABLEKS                       R23 R0 K3 ["onClearCompleted"]
       93 JUMPIFNOT                        R23 ; [+74]
       94 GETUPVAL                         R22 4
       95 GETUPVAL                         R23 5
       96 GETTABLEKS                       R23 R23 K37 ["Menu"]
       98 DUPTABLE                         R24 K45 [{["isOpen"], ["items"], ["width"], ["size"], ["side"], ["align"], ["onPressedOutside"], ["onActivated"], ["LayoutOrder"] = 1}]
       99 SETTABLEKS                       R5 R24 K38 ["isOpen"]
      101 NEWTABLE                         R25 0 1
      103 DUPTABLE                         R26 K51 [{["id"] = "clear-completed", ["text"] = "Clear completed tasks", ["isDisabled"]}]
      104 GETTABLEKS                       R28 R0 K4 ["hasCompletedTasks"]
      106 NOT                              R27 R28
      107 SETTABLEKS                       R27 R26 K50 ["isDisabled"]
      109 SETLIST                          R25 R26 1 [1]
      111 SETTABLEKS                       R25 R24 K6 ["items"]
      113 GETUPVAL                         R25 7
      114 SETTABLEKS                       R25 R24 K39 ["width"]
      116 GETUPVAL                         R25 8
      117 GETTABLEKS                       R25 R25 K52 ["XSmall"]
      119 SETTABLEKS                       R25 R24 K40 ["size"]
      121 GETUPVAL                         R25 5
      122 GETTABLEKS                       R25 R25 K53 ["Enums"]
      124 GETTABLEKS                       R25 R25 K54 ["PopoverSide"]
      126 GETTABLEKS                       R25 R25 K55 ["Bottom"]
      128 SETTABLEKS                       R25 R24 K41 ["side"]
      130 GETUPVAL                         R25 5
      131 GETTABLEKS                       R25 R25 K53 ["Enums"]
      133 GETTABLEKS                       R25 R25 K56 ["PopoverAlign"]
      135 GETTABLEKS                       R25 R25 K57 ["End"]
      137 SETTABLEKS                       R25 R24 K42 ["align"]
      139 NEWCLOSURE                       R25 P3
      140 CAPTURE                          VAL R6
      141 SETTABLEKS                       R25 R24 K43 ["onPressedOutside"]
      143 SETTABLEKS                       R8 R24 K44 ["onActivated"]
      145 GETUPVAL                         R25 4
      146 GETUPVAL                         R26 5
      147 GETTABLEKS                       R26 R26 K58 ["IconButton"]
      149 DUPTABLE                         R27 K61 [{["icon"], ["size"], ["onActivated"], ["testId"] = "--queue-overflow-menu-button"}]
      150 GETUPVAL                         R28 9
      151 GETTABLEKS                       R28 R28 K62 ["ThreeDotsVertical"]
      153 SETTABLEKS                       R28 R27 K59 ["icon"]
      155 GETUPVAL                         R28 8
      156 GETTABLEKS                       R28 R28 K52 ["XSmall"]
      158 SETTABLEKS                       R28 R27 K40 ["size"]
      160 NEWCLOSURE                       R28 P4
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R5
      163 SETTABLEKS                       R28 R27 K44 ["onActivated"]
      165 CALL                             R25 2 -1
      166 CALL                             R22 -1 1
      167 JUMP                             ; [+1]
      168 LOADNIL                          R22
      169 SETTABLEKS                       R22 R21 K34 ["OverflowMenu"]
      171 GETTABLEKS                       R23 R0 K63 ["onClose"]
      173 JUMPIFNOT                        R23 ; [+21]
      174 GETUPVAL                         R22 4
      175 GETUPVAL                         R23 5
      176 GETTABLEKS                       R23 R23 K58 ["IconButton"]
      178 DUPTABLE                         R24 K65 [{["icon"], ["size"], ["onActivated"], ["LayoutOrder"] = 2, ["testId"] = "--queue-close-button"}]
      179 GETUPVAL                         R25 9
      180 GETTABLEKS                       R25 R25 K66 ["X"]
      182 SETTABLEKS                       R25 R24 K59 ["icon"]
      184 GETUPVAL                         R25 8
      185 GETTABLEKS                       R25 R25 K52 ["XSmall"]
      187 SETTABLEKS                       R25 R24 K40 ["size"]
      189 GETTABLEKS                       R25 R0 K63 ["onClose"]
      191 SETTABLEKS                       R25 R24 K44 ["onActivated"]
      193 CALL                             R22 2 1
      194 JUMP                             ; [+1]
      195 LOADNIL                          R22
      196 SETTABLEKS                       R22 R21 K35 ["CloseButton"]
      198 CALL                             R18 3 1
      199 SETTABLEKS                       R18 R17 K24 ["HeaderButtons"]
      201 CALL                             R14 3 1
      202 SETTABLEKS                       R14 R13 K14 ["Header"]
      204 GETUPVAL                         R14 4
      205 GETUPVAL                         R15 5
      206 GETTABLEKS                       R15 R15 K67 ["Divider"]
      208 DUPTABLE                         R16 K68 [{"LayoutOrder"}]
      209 MOVE                             R17 R1
      210 CALL                             R17 0 1
      211 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
      213 CALL                             R14 2 1
      214 SETTABLEKS                       R14 R13 K15 ["HeaderSeparator"]
      216 GETUPVAL                         R14 4
      217 GETUPVAL                         R15 5
      218 GETTABLEKS                       R15 R15 K8 ["View"]
      220 DUPTABLE                         R16 K71 [{["tag"] = "row gap-xsmall size-full-0 auto-y padding-x-medium padding-bottom-xsmall padding-top-small", ["LayoutOrder"], ["testId"] = "--queue-tabs"}]
      221 MOVE                             R17 R1
      222 CALL                             R17 0 1
      223 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
      225 DUPTABLE                         R17 K75 [{"FailedTab", "ActiveTab", "CompletedTab"}]
      226 GETUPVAL                         R18 4
      227 GETUPVAL                         R19 5
      228 GETTABLEKS                       R19 R19 K76 ["Chip"]
      230 DUPTABLE                         R20 K80 [{["text"] = "Failed", ["size"], ["isChecked"], ["onActivated"], ["LayoutOrder"] = 1, ["testId"] = "--queue-tab-failed"}]
      231 GETUPVAL                         R21 10
      232 GETTABLEKS                       R21 R21 K81 ["Small"]
      234 SETTABLEKS                       R21 R20 K40 ["size"]
      236 JUMPIFEQKS                       R3 K77 ["Failed"] ; [+2]
      238 LOADB                            R21 0 +1
      239 LOADB                            R21 1
      240 SETTABLEKS                       R21 R20 K78 ["isChecked"]
      242 NEWCLOSURE                       R21 P5
      243 CAPTURE                          VAL R7
      244 SETTABLEKS                       R21 R20 K44 ["onActivated"]
      246 CALL                             R18 2 1
      247 SETTABLEKS                       R18 R17 K72 ["FailedTab"]
      249 GETUPVAL                         R18 4
      250 GETUPVAL                         R19 5
      251 GETTABLEKS                       R19 R19 K76 ["Chip"]
      253 DUPTABLE                         R20 K84 [{["text"] = "Active", ["size"], ["isChecked"], ["onActivated"], ["LayoutOrder"] = 2, ["testId"] = "--queue-tab-active"}]
      254 GETUPVAL                         R21 10
      255 GETTABLEKS                       R21 R21 K81 ["Small"]
      257 SETTABLEKS                       R21 R20 K40 ["size"]
      259 JUMPIFEQKS                       R3 K82 ["Active"] ; [+2]
      261 LOADB                            R21 0 +1
      262 LOADB                            R21 1
      263 SETTABLEKS                       R21 R20 K78 ["isChecked"]
      265 NEWCLOSURE                       R21 P6
      266 CAPTURE                          VAL R7
      267 SETTABLEKS                       R21 R20 K44 ["onActivated"]
      269 CALL                             R18 2 1
      270 SETTABLEKS                       R18 R17 K73 ["ActiveTab"]
      272 GETUPVAL                         R18 4
      273 GETUPVAL                         R19 5
      274 GETTABLEKS                       R19 R19 K76 ["Chip"]
      276 DUPTABLE                         R20 K88 [{["text"] = "Completed", ["size"], ["isChecked"], ["onActivated"], ["LayoutOrder"] = 3, ["testId"] = "--queue-tab-completed"}]
      277 GETUPVAL                         R21 10
      278 GETTABLEKS                       R21 R21 K81 ["Small"]
      280 SETTABLEKS                       R21 R20 K40 ["size"]
      282 JUMPIFEQKS                       R3 K85 ["Completed"] ; [+2]
      284 LOADB                            R21 0 +1
      285 LOADB                            R21 1
      286 SETTABLEKS                       R21 R20 K78 ["isChecked"]
      288 NEWCLOSURE                       R21 P7
      289 CAPTURE                          VAL R7
      290 SETTABLEKS                       R21 R20 K44 ["onActivated"]
      292 CALL                             R18 2 1
      293 SETTABLEKS                       R18 R17 K74 ["CompletedTab"]
      295 CALL                             R14 3 1
      296 SETTABLEKS                       R14 R13 K16 ["TabsRow"]
      298 GETUPVAL                         R14 4
      299 GETUPVAL                         R15 5
      300 GETTABLEKS                       R15 R15 K89 ["ScrollView"]
      302 DUPTABLE                         R16 K94 [{["tag"] = "size-full-full", ["Native"], ["LayoutOrder"], ["scroll"], ["testId"] = "--queue-items-container"}]
      303 DUPTABLE                         R17 K96 [{["BackgroundTransparency"] = 1}]
      304 SETTABLEKS                       R17 R16 K91 ["Native"]
      306 MOVE                             R17 R1
      307 CALL                             R17 0 1
      308 SETTABLEKS                       R17 R16 K20 ["LayoutOrder"]
      310 DUPTABLE                         R17 K101 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility"}]
      311 GETIMPORT                        R18 K104 [Enum.ScrollingDirection.Y]
      313 SETTABLEKS                       R18 R17 K97 ["ScrollingDirection"]
      315 GETIMPORT                        R18 K106 [Enum.AutomaticSize.Y]
      317 SETTABLEKS                       R18 R17 K98 ["AutomaticCanvasSize"]
      319 GETIMPORT                        R18 K109 [UDim2.fromScale]
      321 LOADN                            R19 0
      322 LOADN                            R20 0
      323 CALL                             R18 2 1
      324 SETTABLEKS                       R18 R17 K99 ["CanvasSize"]
      326 GETUPVAL                         R18 5
      327 GETTABLEKS                       R18 R18 K53 ["Enums"]
      329 GETTABLEKS                       R18 R18 K110 ["ScrollBarVisibility"]
      331 GETTABLEKS                       R18 R18 K111 ["Auto"]
      333 SETTABLEKS                       R18 R17 K100 ["scrollBarVisibility"]
      335 SETTABLEKS                       R17 R16 K92 ["scroll"]
      337 DUPTABLE                         R17 K113 [{"ItemsWrapper"}]
      338 GETUPVAL                         R18 4
      339 GETUPVAL                         R19 5
      340 GETTABLEKS                       R19 R19 K8 ["View"]
      342 DUPTABLE                         R20 K115 [{["tag"] = "col size-full-0 auto-y"}]
      343 MOVE                             R21 R9
      344 CALL                             R18 3 1
      345 SETTABLEKS                       R18 R17 K112 ["ItemsWrapper"]
      347 CALL                             R14 3 1
      348 SETTABLEKS                       R14 R13 K17 ["ItemsContainer"]
      350 CALL                             R10 3 -1
      351 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Footer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K10 ["Parent"]
       34 GETTABLEKS                       R5 R5 K11 ["QueueItem"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R2 K12 ["Util"]
       39 GETTABLEKS                       R5 R5 K13 ["counter"]
       41 GETTABLEKS                       R6 R3 K14 ["createElement"]
       43 GETTABLEKS                       R7 R1 K15 ["Enums"]
       45 GETTABLEKS                       R7 R7 K16 ["ChipSize"]
       47 GETTABLEKS                       R8 R1 K15 ["Enums"]
       49 GETTABLEKS                       R8 R8 K17 ["IconName"]
       51 GETTABLEKS                       R9 R1 K15 ["Enums"]
       53 GETTABLEKS                       R9 R9 K18 ["InputSize"]
       55 DUPTABLE                         R10 K25 [{["Active"] = "Loading", ["Failed"] = "Error", ["Completed"] = "Complete"}]
       56 DUPTABLE                         R11 K27 [{["Loading"] = True, ["Complete"] = True, ["Error"] = True}]
       57 GETIMPORT                        R12 K30 [UDim.new]
       59 LOADN                            R13 0
       60 LOADN                            R14 180
       61 CALL                             R12 2 1
       62 DUPCLOSURE                       R13 K31 [PROTO_9]
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R3
       65 CAPTURE                          VAL R10
       66 CAPTURE                          VAL R11
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R4
       70 CAPTURE                          VAL R12
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R7
       74 GETTABLEKS                       R14 R3 K32 ["memo"]
       76 MOVE                             R15 R13
       77 CALL                             R14 1 -1
       78 RETURN                           R14 -1
