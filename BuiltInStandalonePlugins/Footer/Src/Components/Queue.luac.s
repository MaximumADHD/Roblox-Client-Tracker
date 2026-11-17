PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 MOVE                             R2 R0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 0
        5 GETUPVAL                         R5 0
        6 GETTABLE                         R4 R1 R5
        7 NOT                              R3 R4
        8 SETTABLE                         R3 R1 R2
        9 RETURN                           R1 1

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
        2 NEWTABLE                         R1 0 0
        4 GETIMPORT                        R2 K1 [pairs]
        6 GETUPVAL                         R3 0
        7 CALL                             R2 1 3
        8 FORGPREP_NEXT                    R2
        9 JUMPIFNOT                        R6 ; [+4]
       10 GETUPVAL                         R8 1
       11 GETTABLE                         R7 R8 R5
       12 LOADB                            R8 1
       13 SETTABLE                         R8 R1 R7
       14 FORGLOOP                         R2 2 ; [-6]
       16 GETIMPORT                        R3 K3 [next]
       18 MOVE                             R4 R1
       19 CALL                             R3 1 1
       20 JUMPIFNOTEQKNIL                  R3 ; [+2]
       22 LOADB                            R2 0 +1
       23 LOADB                            R2 1
       24 GETUPVAL                         R3 2
       25 CALL                             R3 0 1
       26 LOADB                            R4 1
       27 GETIMPORT                        R5 K5 [ipairs]
       29 GETUPVAL                         R6 3
       30 GETTABLEKS                       R6 R6 K6 ["items"]
       32 CALL                             R5 1 3
       33 FORGPREP_INEXT                   R5
       34 GETTABLEKS                       R10 R9 K7 ["signals"]
       36 GETTABLEKS                       R10 R10 K8 ["getStatus"]
       38 LOADB                            R11 0
       39 CALL                             R10 1 1
       40 GETUPVAL                         R13 4
       41 GETTABLE                         R12 R13 R10
       42 LOADK                            R13 K9 ["Unexpected queue item status: %*"]
       43 MOVE                             R15 R10
       44 NAMECALL                         R13 R13 K10 ["format"]
       46 CALL                             R13 2 1
       47 FASTCALL2                        ASSERT R12 R13 ; [+3]
       49 GETIMPORT                        R11 K12 [assert]
       51 CALL                             R11 2 0
       52 JUMPIFNOT                        R2 ; [+2]
       53 GETTABLE                         R11 R1 R10
       54 JUMPIFNOT                        R11 ; [+49]
       55 JUMPIF                           R4 ; [+23]
       56 MOVE                             R12 R0
       57 GETUPVAL                         R13 5
       58 GETUPVAL                         R14 6
       59 GETTABLEKS                       R14 R14 K13 ["Divider"]
       61 DUPTABLE                         R15 K16 [{"key", "LayoutOrder"}]
       62 LOADK                            R16 K17 ["divider-%*"]
       63 GETTABLEKS                       R18 R9 K18 ["id"]
       65 NAMECALL                         R16 R16 K10 ["format"]
       67 CALL                             R16 2 1
       68 SETTABLEKS                       R16 R15 K14 ["key"]
       70 MOVE                             R16 R3
       71 CALL                             R16 0 1
       72 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
       74 CALL                             R13 2 -1
       75 FASTCALL                         TABLE_INSERT ; [+2]
       76 GETIMPORT                        R11 K21 [table.insert]
       78 CALL                             R11 -1 0
       79 LOADB                            R4 0
       80 MOVE                             R12 R0
       81 GETUPVAL                         R13 5
       82 GETUPVAL                         R14 7
       83 DUPTABLE                         R15 K24 [{"key", "session", "onView", "LayoutOrder"}]
       84 GETTABLEKS                       R16 R9 K18 ["id"]
       86 SETTABLEKS                       R16 R15 K14 ["key"]
       88 SETTABLEKS                       R9 R15 K22 ["session"]
       90 GETUPVAL                         R16 3
       91 GETTABLEKS                       R16 R16 K25 ["onViewItem"]
       93 SETTABLEKS                       R16 R15 K23 ["onView"]
       95 MOVE                             R16 R3
       96 CALL                             R16 0 1
       97 SETTABLEKS                       R16 R15 K15 ["LayoutOrder"]
       99 CALL                             R13 2 -1
      100 FASTCALL                         TABLE_INSERT ; [+2]
      101 GETIMPORT                        R11 K21 [table.insert]
      103 CALL                             R11 -1 0
      104 FORGLOOP                         R5 2 [inext] ; [-71]
      106 RETURN                           R0 1

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
        7 DUPTABLE                         R4 K6 [{["Active"] = False, ["Failed"] = False, ["Completed"] = False}]
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K1 ["useState"]
       12 LOADB                            R6 0
       13 CALL                             R5 1 2
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R7 R7 K7 ["useCallback"]
       17 NEWCLOSURE                       R8 P0
       18 CAPTURE                          VAL R4
       19 NEWTABLE                         R9 0 0
       21 CALL                             R7 2 1
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R8 R8 K7 ["useCallback"]
       25 NEWCLOSURE                       R9 P1
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R6
       28 NEWTABLE                         R10 0 2
       30 GETTABLEKS                       R11 R0 K8 ["onClearCompleted"]
       32 GETTABLEKS                       R12 R0 K9 ["hasCompletedTasks"]
       34 SETLIST                          R10 R11 2 [1]
       36 CALL                             R8 2 1
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K10 ["useMemo"]
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
       51 GETTABLEKS                       R12 R0 K11 ["items"]
       53 GETTABLEKS                       R13 R0 K12 ["onViewItem"]
       55 MOVE                             R14 R3
       56 SETLIST                          R11 R12 3 [1]
       58 CALL                             R9 2 1
       59 GETUPVAL                         R10 4
       60 GETUPVAL                         R11 5
       61 GETTABLEKS                       R11 R11 K13 ["View"]
       63 DUPTABLE                         R12 K18 [{["tag"] = "col size-full-full", ["testId"] = "--queue"}]
       64 DUPTABLE                         R13 K23 [{"Header", "HeaderSeparator", "TabsRow", "ItemsContainer"}]
       65 GETUPVAL                         R14 4
       66 GETUPVAL                         R15 5
       67 GETTABLEKS                       R15 R15 K13 ["View"]
       69 DUPTABLE                         R16 K27 [{["tag"] = "row flex-x-between items-center size-full-0 auto-y padding-small", ["LayoutOrder"], ["testId"] = "--queue-header"}]
       70 MOVE                             R17 R1
       71 CALL                             R17 0 1
       72 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
       74 DUPTABLE                         R17 K30 [{"Title", "HeaderButtons"}]
       75 GETUPVAL                         R18 4
       76 GETUPVAL                         R19 5
       77 GETTABLEKS                       R19 R19 K31 ["Text"]
       79 DUPTABLE                         R20 K35 [{["tag"] = "auto-xy padding-x-medium text-title-small text-align-x-left content-emphasis", ["Text"], ["LayoutOrder"] = 1, ["testId"] = "--queue-title"}]
       80 SETTABLEKS                       R2 R20 K31 ["Text"]
       82 CALL                             R18 2 1
       83 SETTABLEKS                       R18 R17 K28 ["Title"]
       85 GETUPVAL                         R18 4
       86 GETUPVAL                         R19 5
       87 GETTABLEKS                       R19 R19 K13 ["View"]
       89 DUPTABLE                         R20 K38 [{["tag"] = "row items-center gap-xsmall auto-xy", ["LayoutOrder"] = 2}]
       90 DUPTABLE                         R21 K41 [{"OverflowMenu", "CloseButton"}]
       91 GETTABLEKS                       R23 R0 K8 ["onClearCompleted"]
       93 JUMPIFNOT                        R23 ; [+74]
       94 GETUPVAL                         R22 4
       95 GETUPVAL                         R23 5
       96 GETTABLEKS                       R23 R23 K42 ["Menu"]
       98 DUPTABLE                         R24 K50 [{["isOpen"], ["items"], ["width"], ["size"], ["side"], ["align"], ["onPressedOutside"], ["onActivated"], ["LayoutOrder"] = 1}]
       99 SETTABLEKS                       R5 R24 K43 ["isOpen"]
      101 NEWTABLE                         R25 0 1
      103 DUPTABLE                         R26 K56 [{["id"] = "clear-completed", ["text"] = "Clear completed tasks", ["isDisabled"]}]
      104 GETTABLEKS                       R28 R0 K9 ["hasCompletedTasks"]
      106 NOT                              R27 R28
      107 SETTABLEKS                       R27 R26 K55 ["isDisabled"]
      109 SETLIST                          R25 R26 1 [1]
      111 SETTABLEKS                       R25 R24 K11 ["items"]
      113 GETUPVAL                         R25 7
      114 SETTABLEKS                       R25 R24 K44 ["width"]
      116 GETUPVAL                         R25 8
      117 GETTABLEKS                       R25 R25 K57 ["XSmall"]
      119 SETTABLEKS                       R25 R24 K45 ["size"]
      121 GETUPVAL                         R25 5
      122 GETTABLEKS                       R25 R25 K58 ["Enums"]
      124 GETTABLEKS                       R25 R25 K59 ["PopoverSide"]
      126 GETTABLEKS                       R25 R25 K60 ["Bottom"]
      128 SETTABLEKS                       R25 R24 K46 ["side"]
      130 GETUPVAL                         R25 5
      131 GETTABLEKS                       R25 R25 K58 ["Enums"]
      133 GETTABLEKS                       R25 R25 K61 ["PopoverAlign"]
      135 GETTABLEKS                       R25 R25 K62 ["End"]
      137 SETTABLEKS                       R25 R24 K47 ["align"]
      139 NEWCLOSURE                       R25 P3
      140 CAPTURE                          VAL R6
      141 SETTABLEKS                       R25 R24 K48 ["onPressedOutside"]
      143 SETTABLEKS                       R8 R24 K49 ["onActivated"]
      145 GETUPVAL                         R25 4
      146 GETUPVAL                         R26 5
      147 GETTABLEKS                       R26 R26 K63 ["IconButton"]
      149 DUPTABLE                         R27 K66 [{["icon"], ["size"], ["onActivated"], ["testId"] = "--queue-overflow-menu-button"}]
      150 GETUPVAL                         R28 9
      151 GETTABLEKS                       R28 R28 K67 ["ThreeDotsVertical"]
      153 SETTABLEKS                       R28 R27 K64 ["icon"]
      155 GETUPVAL                         R28 8
      156 GETTABLEKS                       R28 R28 K57 ["XSmall"]
      158 SETTABLEKS                       R28 R27 K45 ["size"]
      160 NEWCLOSURE                       R28 P4
      161 CAPTURE                          VAL R6
      162 CAPTURE                          VAL R5
      163 SETTABLEKS                       R28 R27 K49 ["onActivated"]
      165 CALL                             R25 2 -1
      166 CALL                             R22 -1 1
      167 JUMP                             ; [+1]
      168 LOADNIL                          R22
      169 SETTABLEKS                       R22 R21 K39 ["OverflowMenu"]
      171 GETTABLEKS                       R23 R0 K68 ["onClose"]
      173 JUMPIFNOT                        R23 ; [+21]
      174 GETUPVAL                         R22 4
      175 GETUPVAL                         R23 5
      176 GETTABLEKS                       R23 R23 K63 ["IconButton"]
      178 DUPTABLE                         R24 K70 [{["icon"], ["size"], ["onActivated"], ["LayoutOrder"] = 2, ["testId"] = "--queue-close-button"}]
      179 GETUPVAL                         R25 9
      180 GETTABLEKS                       R25 R25 K71 ["X"]
      182 SETTABLEKS                       R25 R24 K64 ["icon"]
      184 GETUPVAL                         R25 8
      185 GETTABLEKS                       R25 R25 K57 ["XSmall"]
      187 SETTABLEKS                       R25 R24 K45 ["size"]
      189 GETTABLEKS                       R25 R0 K68 ["onClose"]
      191 SETTABLEKS                       R25 R24 K49 ["onActivated"]
      193 CALL                             R22 2 1
      194 JUMP                             ; [+1]
      195 LOADNIL                          R22
      196 SETTABLEKS                       R22 R21 K40 ["CloseButton"]
      198 CALL                             R18 3 1
      199 SETTABLEKS                       R18 R17 K29 ["HeaderButtons"]
      201 CALL                             R14 3 1
      202 SETTABLEKS                       R14 R13 K19 ["Header"]
      204 GETUPVAL                         R14 4
      205 GETUPVAL                         R15 5
      206 GETTABLEKS                       R15 R15 K72 ["Divider"]
      208 DUPTABLE                         R16 K73 [{"LayoutOrder"}]
      209 MOVE                             R17 R1
      210 CALL                             R17 0 1
      211 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      213 CALL                             R14 2 1
      214 SETTABLEKS                       R14 R13 K20 ["HeaderSeparator"]
      216 GETUPVAL                         R14 4
      217 GETUPVAL                         R15 5
      218 GETTABLEKS                       R15 R15 K13 ["View"]
      220 DUPTABLE                         R16 K76 [{["tag"] = "row gap-xsmall size-full-0 auto-y padding-x-medium padding-bottom-xsmall padding-top-small", ["LayoutOrder"], ["testId"] = "--queue-tabs"}]
      221 MOVE                             R17 R1
      222 CALL                             R17 0 1
      223 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      225 DUPTABLE                         R17 K80 [{"FailedTab", "ActiveTab", "CompletedTab"}]
      226 GETUPVAL                         R18 4
      227 GETUPVAL                         R19 5
      228 GETTABLEKS                       R19 R19 K81 ["Chip"]
      230 DUPTABLE                         R20 K84 [{["text"] = "Failed", ["size"], ["isChecked"], ["onActivated"], ["LayoutOrder"] = 1, ["testId"] = "--queue-tab-failed"}]
      231 GETUPVAL                         R21 10
      232 GETTABLEKS                       R21 R21 K85 ["Small"]
      234 SETTABLEKS                       R21 R20 K45 ["size"]
      236 GETTABLEKS                       R21 R3 K4 ["Failed"]
      238 SETTABLEKS                       R21 R20 K82 ["isChecked"]
      240 NEWCLOSURE                       R21 P5
      241 CAPTURE                          VAL R7
      242 SETTABLEKS                       R21 R20 K49 ["onActivated"]
      244 CALL                             R18 2 1
      245 SETTABLEKS                       R18 R17 K77 ["FailedTab"]
      247 GETUPVAL                         R18 4
      248 GETUPVAL                         R19 5
      249 GETTABLEKS                       R19 R19 K81 ["Chip"]
      251 DUPTABLE                         R20 K87 [{["text"] = "Active", ["size"], ["isChecked"], ["onActivated"], ["LayoutOrder"] = 2, ["testId"] = "--queue-tab-active"}]
      252 GETUPVAL                         R21 10
      253 GETTABLEKS                       R21 R21 K85 ["Small"]
      255 SETTABLEKS                       R21 R20 K45 ["size"]
      257 GETTABLEKS                       R21 R3 K2 ["Active"]
      259 SETTABLEKS                       R21 R20 K82 ["isChecked"]
      261 NEWCLOSURE                       R21 P6
      262 CAPTURE                          VAL R7
      263 SETTABLEKS                       R21 R20 K49 ["onActivated"]
      265 CALL                             R18 2 1
      266 SETTABLEKS                       R18 R17 K78 ["ActiveTab"]
      268 GETUPVAL                         R18 4
      269 GETUPVAL                         R19 5
      270 GETTABLEKS                       R19 R19 K81 ["Chip"]
      272 DUPTABLE                         R20 K90 [{["text"] = "Completed", ["size"], ["isChecked"], ["onActivated"], ["LayoutOrder"] = 3, ["testId"] = "--queue-tab-completed"}]
      273 GETUPVAL                         R21 10
      274 GETTABLEKS                       R21 R21 K85 ["Small"]
      276 SETTABLEKS                       R21 R20 K45 ["size"]
      278 GETTABLEKS                       R21 R3 K5 ["Completed"]
      280 SETTABLEKS                       R21 R20 K82 ["isChecked"]
      282 NEWCLOSURE                       R21 P7
      283 CAPTURE                          VAL R7
      284 SETTABLEKS                       R21 R20 K49 ["onActivated"]
      286 CALL                             R18 2 1
      287 SETTABLEKS                       R18 R17 K79 ["CompletedTab"]
      289 CALL                             R14 3 1
      290 SETTABLEKS                       R14 R13 K21 ["TabsRow"]
      292 GETUPVAL                         R14 4
      293 GETUPVAL                         R15 5
      294 GETTABLEKS                       R15 R15 K91 ["ScrollView"]
      296 DUPTABLE                         R16 K96 [{["tag"] = "size-full-full", ["Native"], ["LayoutOrder"], ["scroll"], ["testId"] = "--queue-items-container"}]
      297 DUPTABLE                         R17 K98 [{["BackgroundTransparency"] = 1}]
      298 SETTABLEKS                       R17 R16 K93 ["Native"]
      300 MOVE                             R17 R1
      301 CALL                             R17 0 1
      302 SETTABLEKS                       R17 R16 K25 ["LayoutOrder"]
      304 DUPTABLE                         R17 K103 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize", "scrollBarVisibility"}]
      305 GETIMPORT                        R18 K106 [Enum.ScrollingDirection.Y]
      307 SETTABLEKS                       R18 R17 K99 ["ScrollingDirection"]
      309 GETIMPORT                        R18 K108 [Enum.AutomaticSize.Y]
      311 SETTABLEKS                       R18 R17 K100 ["AutomaticCanvasSize"]
      313 GETIMPORT                        R18 K111 [UDim2.fromScale]
      315 LOADN                            R19 0
      316 LOADN                            R20 0
      317 CALL                             R18 2 1
      318 SETTABLEKS                       R18 R17 K101 ["CanvasSize"]
      320 GETUPVAL                         R18 5
      321 GETTABLEKS                       R18 R18 K58 ["Enums"]
      323 GETTABLEKS                       R18 R18 K112 ["ScrollBarVisibility"]
      325 GETTABLEKS                       R18 R18 K113 ["Auto"]
      327 SETTABLEKS                       R18 R17 K102 ["scrollBarVisibility"]
      329 SETTABLEKS                       R17 R16 K94 ["scroll"]
      331 DUPTABLE                         R17 K115 [{"ItemsWrapper"}]
      332 GETUPVAL                         R18 4
      333 GETUPVAL                         R19 5
      334 GETTABLEKS                       R19 R19 K13 ["View"]
      336 DUPTABLE                         R20 K117 [{["tag"] = "col size-full-0 auto-y"}]
      337 MOVE                             R21 R9
      338 CALL                             R18 3 1
      339 SETTABLEKS                       R18 R17 K114 ["ItemsWrapper"]
      341 CALL                             R14 3 1
      342 SETTABLEKS                       R14 R13 K22 ["ItemsContainer"]
      344 CALL                             R10 3 -1
      345 RETURN                           R10 -1

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
