PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["View"]
        6 DUPTABLE                         R3 K5 [{["Size"], ["tag"] = "bg-surface-0"}]
        7 GETIMPORT                        R4 K8 [UDim2.fromScale]
        9 LOADN                            R5 1
       10 LOADN                            R6 1
       11 CALL                             R4 2 1
       12 SETTABLEKS                       R4 R3 K2 ["Size"]
       14 DUPTABLE                         R4 K11 [{"Content", "Divider"}]
       15 GETUPVAL                         R5 0
       16 GETTABLEKS                       R5 R5 K0 ["createElement"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K1 ["View"]
       21 DUPTABLE                         R7 K13 [{"Size", "tag", "padding"}]
       22 GETIMPORT                        R8 K8 [UDim2.fromScale]
       24 LOADN                            R9 1
       25 LOADN                            R10 1
       26 CALL                             R8 2 1
       27 SETTABLEKS                       R8 R7 K2 ["Size"]
       29 GETTABLEKS                       R9 R0 K15 ["contentTag"]
       31 ORK                              R8 R9 K14 ["row align-y-center padding-x-medium"]
       32 SETTABLEKS                       R8 R7 K3 ["tag"]
       34 GETTABLEKS                       R8 R0 K16 ["contentPadding"]
       36 SETTABLEKS                       R8 R7 K12 ["padding"]
       38 DUPTABLE                         R8 K18 [{"Value"}]
       39 GETTABLEKS                       R9 R0 K19 ["content"]
       41 SETTABLEKS                       R9 R8 K17 ["Value"]
       43 CALL                             R5 3 1
       44 SETTABLEKS                       R5 R4 K9 ["Content"]
       46 GETTABLEKS                       R6 R0 K20 ["hideDivider"]
       48 JUMPIFNOT                        R6 ; [+2]
       49 LOADNIL                          R5
       50 JUMP                             ; [+43]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K0 ["createElement"]
       54 GETUPVAL                         R6 1
       55 GETTABLEKS                       R6 R6 K1 ["View"]
       57 DUPTABLE                         R7 K26 [{["AnchorPoint"], ["Position"], ["Size"], ["backgroundStyle"], ["ZIndex"] = 2}]
       58 GETIMPORT                        R8 K29 [Vector2.new]
       60 LOADN                            R9 0
       61 LOADN                            R10 1
       62 CALL                             R8 2 1
       63 SETTABLEKS                       R8 R7 K21 ["AnchorPoint"]
       65 GETIMPORT                        R8 K30 [UDim2.new]
       67 LOADN                            R9 0
       68 LOADN                            R10 12
       69 LOADN                            R11 1
       70 LOADN                            R12 0
       71 CALL                             R8 4 1
       72 SETTABLEKS                       R8 R7 K22 ["Position"]
       74 GETIMPORT                        R8 K30 [UDim2.new]
       76 LOADN                            R9 1
       77 LOADN                            R10 -24
       78 LOADN                            R11 0
       79 LOADN                            R12 1
       80 CALL                             R8 4 1
       81 SETTABLEKS                       R8 R7 K2 ["Size"]
       83 GETTABLEKS                       R8 R0 K31 ["tokens"]
       85 GETTABLEKS                       R8 R8 K32 ["Color"]
       87 GETTABLEKS                       R8 R8 K33 ["Stroke"]
       89 GETTABLEKS                       R8 R8 K34 ["Default"]
       91 SETTABLEKS                       R8 R7 K23 ["backgroundStyle"]
       93 CALL                             R5 2 1
       94 SETTABLEKS                       R5 R4 K10 ["Divider"]
       96 CALL                             R1 3 -1
       97 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K3 [{"tokens", "content"}]
        5 GETTABLEKS                       R4 R0 K1 ["tokens"]
        7 SETTABLEKS                       R4 R3 K1 ["tokens"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K0 ["createElement"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K4 ["View"]
       15 DUPTABLE                         R6 K7 [{["tag"] = "row fill align-y-center"}]
       16 DUPTABLE                         R7 K10 [{"Inset", "Label"}]
       17 GETTABLEKS                       R9 R0 K11 ["inset"]
       19 JUMPIFNOT                        R9 ; [+17]
       20 GETUPVAL                         R8 0
       21 GETTABLEKS                       R8 R8 K0 ["createElement"]
       23 GETUPVAL                         R9 2
       24 GETTABLEKS                       R9 R9 K4 ["View"]
       26 DUPTABLE                         R10 K15 [{["Size"], ["LayoutOrder"] = 1}]
       27 GETIMPORT                        R11 K18 [UDim2.fromOffset]
       29 GETTABLEKS                       R12 R0 K11 ["inset"]
       31 LOADN                            R13 24
       32 CALL                             R11 2 1
       33 SETTABLEKS                       R11 R10 K12 ["Size"]
       35 CALL                             R8 2 1
       36 JUMP                             ; [+1]
       37 LOADNIL                          R8
       38 SETTABLEKS                       R8 R7 K8 ["Inset"]
       40 GETUPVAL                         R8 0
       41 GETTABLEKS                       R8 R8 K0 ["createElement"]
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R9 R9 K19 ["Text"]
       46 DUPTABLE                         R10 K22 [{["Text"], ["LayoutOrder"] = 2, ["fontStyle"], ["tag"]}]
       47 GETTABLEKS                       R11 R0 K23 ["text"]
       49 SETTABLEKS                       R11 R10 K19 ["Text"]
       51 GETTABLEKS                       R11 R0 K21 ["fontStyle"]
       53 SETTABLEKS                       R11 R10 K21 ["fontStyle"]
       55 GETTABLEKS                       R12 R0 K21 ["fontStyle"]
       57 JUMPIFNOT                        R12 ; [+2]
       58 LOADK                            R11 K24 ["fill auto-y content-emphasis text-truncate-end text-align-x-left"]
       59 JUMP                             ; [+1]
       60 LOADK                            R11 K25 ["fill auto-y text-label-small content-emphasis text-truncate-end text-align-x-left"]
       61 SETTABLEKS                       R11 R10 K5 ["tag"]
       63 CALL                             R8 2 1
       64 SETTABLEKS                       R8 R7 K9 ["Label"]
       66 CALL                             R4 3 1
       67 SETTABLEKS                       R4 R3 K2 ["content"]
       69 CALL                             R1 2 -1
       70 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIFNOT                        R0 ; [+3]
        4 GETTABLEKS                       R1 R0 K1 ["focus"]
        6 CALL                             R1 0 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETIMPORT                        R0 K2 [task.defer]
        5 NEWCLOSURE                       R1 P0
        6 CAPTURE                          UPVAL U1
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+3]
        2 GETUPVAL                         R1 0
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETUPVAL                         R0 1
        6 LOADK                            R1 K0 [""]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSearchOpened"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["onSearchOpened"]
        7 CALL                             R0 0 0
        8 GETUPVAL                         R0 0
        9 GETTABLEKS                       R0 R0 K1 ["onSearchChanged"]
       11 LOADK                            R1 K2 [""]
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 1
       14 LOADB                            R1 1
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETTABLEKS                       R4 R0 K2 ["onSearchChanged"]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K3 ["useEffect"]
       15 NEWCLOSURE                       R6 P0
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R3
       18 NEWTABLE                         R7 0 1
       20 MOVE                             R8 R1
       21 SETLIST                          R7 R8 1 [1]
       23 CALL                             R5 2 0
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R5 R5 K4 ["createElement"]
       27 GETUPVAL                         R6 1
       28 DUPTABLE                         R7 K7 [{"tokens", "content"}]
       29 GETTABLEKS                       R8 R0 K5 ["tokens"]
       31 SETTABLEKS                       R8 R7 K5 ["tokens"]
       33 GETUPVAL                         R8 0
       34 GETTABLEKS                       R8 R8 K4 ["createElement"]
       36 GETUPVAL                         R9 2
       37 GETTABLEKS                       R9 R9 K8 ["View"]
       39 DUPTABLE                         R10 K11 [{["tag"] = "row fill align-y-center gap-xsmall"}]
       40 DUPTABLE                         R11 K18 [{"SearchInput", "CloseSearch", "Tabs", "Spacer", "Search", "Add"}]
       41 JUMPIFNOT                        R1 ; [+70]
       42 GETUPVAL                         R12 0
       43 GETTABLEKS                       R12 R12 K4 ["createElement"]
       45 GETUPVAL                         R13 2
       46 GETTABLEKS                       R13 R13 K8 ["View"]
       48 DUPTABLE                         R14 K22 [{["LayoutOrder"] = 1, ["tag"] = "fill auto-y"}]
       49 DUPTABLE                         R15 K24 [{"Input"}]
       50 GETUPVAL                         R16 0
       51 GETTABLEKS                       R16 R16 K4 ["createElement"]
       53 GETUPVAL                         R17 2
       54 GETTABLEKS                       R17 R17 K25 ["TextInput"]
       56 DUPTABLE                         R18 K38 [{["testId"], ["label"] = "", ["leadingIcon"], ["placeholder"] = "Find...", ["text"], ["textBoxRef"], ["size"], ["variant"], ["width"], ["onChanged"]}]
       57 GETTABLEKS                       R20 R0 K40 ["searchTestId"]
       59 ORK                              R19 R20 K39 ["--design-assist-search-input"]
       60 SETTABLEKS                       R19 R18 K26 ["testId"]
       62 GETUPVAL                         R19 2
       63 GETTABLEKS                       R19 R19 K41 ["Enums"]
       65 GETTABLEKS                       R19 R19 K42 ["IconName"]
       67 GETTABLEKS                       R19 R19 K43 ["MagnifyingGlass"]
       69 SETTABLEKS                       R19 R18 K29 ["leadingIcon"]
       71 GETTABLEKS                       R20 R0 K44 ["searchQuery"]
       73 ORK                              R19 R20 K28 [""]
       74 SETTABLEKS                       R19 R18 K32 ["text"]
       76 SETTABLEKS                       R3 R18 K33 ["textBoxRef"]
       78 GETUPVAL                         R19 2
       79 GETTABLEKS                       R19 R19 K41 ["Enums"]
       81 GETTABLEKS                       R19 R19 K45 ["InputSize"]
       83 GETTABLEKS                       R19 R19 K46 ["XSmall"]
       85 SETTABLEKS                       R19 R18 K34 ["size"]
       87 GETUPVAL                         R19 2
       88 GETTABLEKS                       R19 R19 K41 ["Enums"]
       90 GETTABLEKS                       R19 R19 K47 ["InputVariant"]
       92 GETTABLEKS                       R19 R19 K48 ["Standard"]
       94 SETTABLEKS                       R19 R18 K35 ["variant"]
       96 GETIMPORT                        R19 K51 [UDim.new]
       98 LOADN                            R20 1
       99 LOADN                            R21 0
      100 CALL                             R19 2 1
      101 SETTABLEKS                       R19 R18 K36 ["width"]
      103 NEWCLOSURE                       R19 P1
      104 CAPTURE                          VAL R4
      105 SETTABLEKS                       R19 R18 K37 ["onChanged"]
      107 CALL                             R16 2 1
      108 SETTABLEKS                       R16 R15 K23 ["Input"]
      110 CALL                             R12 3 1
      111 JUMP                             ; [+1]
      112 LOADNIL                          R12
      113 SETTABLEKS                       R12 R11 K12 ["SearchInput"]
      115 JUMPIFNOT                        R1 ; [+41]
      116 GETUPVAL                         R12 0
      117 GETTABLEKS                       R12 R12 K4 ["createElement"]
      119 GETUPVAL                         R13 2
      120 GETTABLEKS                       R13 R13 K52 ["IconButton"]
      122 DUPTABLE                         R14 K57 [{["testId"] = "--design-assist-screens-search-close", ["LayoutOrder"] = 2, ["icon"], ["size"], ["variant"], ["onActivated"]}]
      123 GETUPVAL                         R15 2
      124 GETTABLEKS                       R15 R15 K41 ["Enums"]
      126 GETTABLEKS                       R15 R15 K42 ["IconName"]
      128 GETTABLEKS                       R15 R15 K58 ["X"]
      130 SETTABLEKS                       R15 R14 K55 ["icon"]
      132 GETUPVAL                         R15 2
      133 GETTABLEKS                       R15 R15 K41 ["Enums"]
      135 GETTABLEKS                       R15 R15 K45 ["InputSize"]
      137 GETTABLEKS                       R15 R15 K46 ["XSmall"]
      139 SETTABLEKS                       R15 R14 K34 ["size"]
      141 GETUPVAL                         R15 2
      142 GETTABLEKS                       R15 R15 K41 ["Enums"]
      144 GETTABLEKS                       R15 R15 K59 ["ButtonVariant"]
      146 GETTABLEKS                       R15 R15 K60 ["Utility"]
      148 SETTABLEKS                       R15 R14 K35 ["variant"]
      150 NEWCLOSURE                       R15 P2
      151 CAPTURE                          VAL R2
      152 CAPTURE                          VAL R4
      153 SETTABLEKS                       R15 R14 K56 ["onActivated"]
      155 CALL                             R12 2 1
      156 JUMP                             ; [+1]
      157 LOADNIL                          R12
      158 SETTABLEKS                       R12 R11 K13 ["CloseSearch"]
      160 JUMPIF                           R1 ; [+19]
      161 GETUPVAL                         R12 0
      162 GETTABLEKS                       R12 R12 K4 ["createElement"]
      164 GETUPVAL                         R13 3
      165 DUPTABLE                         R14 K63 [{["LayoutOrder"] = 1, ["tabs"], ["value"], ["onActivated"]}]
      166 GETTABLEKS                       R15 R0 K61 ["tabs"]
      168 SETTABLEKS                       R15 R14 K61 ["tabs"]
      170 GETTABLEKS                       R15 R0 K62 ["value"]
      172 SETTABLEKS                       R15 R14 K62 ["value"]
      174 GETTABLEKS                       R15 R0 K56 ["onActivated"]
      176 SETTABLEKS                       R15 R14 K56 ["onActivated"]
      178 CALL                             R12 2 1
      179 JUMP                             ; [+1]
      180 LOADNIL                          R12
      181 SETTABLEKS                       R12 R11 K14 ["Tabs"]
      183 JUMPIF                           R1 ; [+9]
      184 GETUPVAL                         R12 0
      185 GETTABLEKS                       R12 R12 K4 ["createElement"]
      187 GETUPVAL                         R13 2
      188 GETTABLEKS                       R13 R13 K8 ["View"]
      190 DUPTABLE                         R14 K65 [{["LayoutOrder"] = 2, ["tag"] = "fill size-full-0"}]
      191 CALL                             R12 2 1
      192 JUMP                             ; [+1]
      193 LOADNIL                          R12
      194 SETTABLEKS                       R12 R11 K15 ["Spacer"]
      196 JUMPIF                           R1 ; [+44]
      197 GETTABLEKS                       R13 R0 K2 ["onSearchChanged"]
      199 JUMPIFNOT                        R13 ; [+41]
      200 GETUPVAL                         R12 0
      201 GETTABLEKS                       R12 R12 K4 ["createElement"]
      203 GETUPVAL                         R13 2
      204 GETTABLEKS                       R13 R13 K52 ["IconButton"]
      206 DUPTABLE                         R14 K68 [{["testId"] = "--design-assist-screens-search-open", ["LayoutOrder"] = 3, ["icon"], ["size"], ["variant"], ["onActivated"]}]
      207 GETUPVAL                         R15 2
      208 GETTABLEKS                       R15 R15 K41 ["Enums"]
      210 GETTABLEKS                       R15 R15 K42 ["IconName"]
      212 GETTABLEKS                       R15 R15 K43 ["MagnifyingGlass"]
      214 SETTABLEKS                       R15 R14 K55 ["icon"]
      216 GETUPVAL                         R15 2
      217 GETTABLEKS                       R15 R15 K41 ["Enums"]
      219 GETTABLEKS                       R15 R15 K45 ["InputSize"]
      221 GETTABLEKS                       R15 R15 K46 ["XSmall"]
      223 SETTABLEKS                       R15 R14 K34 ["size"]
      225 GETUPVAL                         R15 2
      226 GETTABLEKS                       R15 R15 K41 ["Enums"]
      228 GETTABLEKS                       R15 R15 K59 ["ButtonVariant"]
      230 GETTABLEKS                       R15 R15 K60 ["Utility"]
      232 SETTABLEKS                       R15 R14 K35 ["variant"]
      234 NEWCLOSURE                       R15 P3
      235 CAPTURE                          VAL R0
      236 CAPTURE                          VAL R2
      237 SETTABLEKS                       R15 R14 K56 ["onActivated"]
      239 CALL                             R12 2 1
      240 JUMP                             ; [+1]
      241 LOADNIL                          R12
      242 SETTABLEKS                       R12 R11 K16 ["Search"]
      244 JUMPIF                           R1 ; [+34]
      245 GETTABLEKS                       R13 R0 K69 ["onAdd"]
      247 JUMPIFNOT                        R13 ; [+31]
      248 GETUPVAL                         R12 0
      249 GETTABLEKS                       R12 R12 K4 ["createElement"]
      251 GETUPVAL                         R13 2
      252 GETTABLEKS                       R13 R13 K52 ["IconButton"]
      254 DUPTABLE                         R14 K72 [{["LayoutOrder"] = 4, ["icon"] = "plus-large", ["size"], ["variant"], ["onActivated"]}]
      255 GETUPVAL                         R15 2
      256 GETTABLEKS                       R15 R15 K41 ["Enums"]
      258 GETTABLEKS                       R15 R15 K45 ["InputSize"]
      260 GETTABLEKS                       R15 R15 K46 ["XSmall"]
      262 SETTABLEKS                       R15 R14 K34 ["size"]
      264 GETUPVAL                         R15 2
      265 GETTABLEKS                       R15 R15 K41 ["Enums"]
      267 GETTABLEKS                       R15 R15 K59 ["ButtonVariant"]
      269 GETTABLEKS                       R15 R15 K60 ["Utility"]
      271 SETTABLEKS                       R15 R14 K35 ["variant"]
      273 GETTABLEKS                       R15 R0 K69 ["onAdd"]
      275 SETTABLEKS                       R15 R14 K56 ["onActivated"]
      277 CALL                             R12 2 1
      278 JUMP                             ; [+1]
      279 LOADNIL                          R12
      280 SETTABLEKS                       R12 R11 K17 ["Add"]
      282 CALL                             R8 3 1
      283 SETTABLEKS                       R8 R7 K6 ["content"]
      285 CALL                             R5 2 -1
      286 RETURN                           R5 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createPortal"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R3 R3 K1 ["createElement"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["Fragment"]
        9 LOADNIL                          R5
       10 DUPTABLE                         R6 K5 [{"StyleLink", "Content"}]
       11 GETUPVAL                         R7 1
       12 GETTABLEKS                       R7 R7 K1 ["createElement"]
       14 GETUPVAL                         R8 2
       15 DUPTABLE                         R9 K7 [{"overlay"}]
       16 SETTABLEKS                       R0 R9 K6 ["overlay"]
       18 CALL                             R7 2 1
       19 SETTABLEKS                       R7 R6 K3 ["StyleLink"]
       21 SETTABLEKS                       R1 R6 K4 ["Content"]
       23 CALL                             R3 3 1
       24 MOVE                             R4 R0
       25 CALL                             R2 2 -1
       26 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["primaryTab"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["set"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["secondaryTab"]
        2 MOVE                             R4 R0
        3 NAMECALL                         R1 R1 K1 ["set"]
        5 CALL                             R1 3 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["workspaceState"]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R1
        4 LOADK                            R4 K1 ["primaryTab"]
        5 CALL                             R2 2 1
        6 GETUPVAL                         R3 0
        7 MOVE                             R4 R1
        8 LOADK                            R5 K2 ["secondaryTab"]
        9 CALL                             R3 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R4 R4 K3 ["createElement"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K4 ["Fragment"]
       16 LOADNIL                          R6
       17 DUPTABLE                         R7 K9 [{"PrimaryContext", "PrimaryTabs", "Layers", "SecondaryTabs"}]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R9 R0 K10 ["primaryContextHeaderFrame"]
       21 GETUPVAL                         R10 1
       22 GETTABLEKS                       R10 R10 K3 ["createElement"]
       24 GETUPVAL                         R11 3
       25 DUPTABLE                         R12 K15 [{["text"] = "DESIGN ASSIST", ["fontStyle"], ["tokens"]}]
       26 GETUPVAL                         R13 4
       27 SETTABLEKS                       R13 R12 K13 ["fontStyle"]
       29 GETTABLEKS                       R13 R0 K14 ["tokens"]
       31 SETTABLEKS                       R13 R12 K14 ["tokens"]
       33 CALL                             R10 2 -1
       34 CALL                             R8 -1 1
       35 SETTABLEKS                       R8 R7 K5 ["PrimaryContext"]
       37 GETUPVAL                         R8 2
       38 GETTABLEKS                       R9 R0 K16 ["primaryTabsHeaderFrame"]
       40 GETUPVAL                         R10 1
       41 GETTABLEKS                       R10 R10 K3 ["createElement"]
       43 GETUPVAL                         R11 5
       44 DUPTABLE                         R12 K24 [{["tabs"], ["value"], ["onActivated"], ["searchQuery"], ["onSearchChanged"], ["searchTestId"] = "--design-assist-screens-search-input", ["tokens"]}]
       45 NEWTABLE                         R13 0 1
       47 DUPTABLE                         R14 K28 [{["id"] = "screens", ["text"] = "Screens"}]
       48 SETLIST                          R13 R14 1 [1]
       50 SETTABLEKS                       R13 R12 K17 ["tabs"]
       52 SETTABLEKS                       R2 R12 K18 ["value"]
       54 NEWCLOSURE                       R13 P0
       55 CAPTURE                          VAL R1
       56 SETTABLEKS                       R13 R12 K19 ["onActivated"]
       58 GETTABLEKS                       R13 R0 K29 ["screenSearchQuery"]
       60 SETTABLEKS                       R13 R12 K20 ["searchQuery"]
       62 GETTABLEKS                       R13 R0 K30 ["onScreenSearchChanged"]
       64 SETTABLEKS                       R13 R12 K21 ["onSearchChanged"]
       66 GETTABLEKS                       R13 R0 K14 ["tokens"]
       68 SETTABLEKS                       R13 R12 K14 ["tokens"]
       70 CALL                             R10 2 -1
       71 CALL                             R8 -1 1
       72 SETTABLEKS                       R8 R7 K6 ["PrimaryTabs"]
       74 GETUPVAL                         R8 2
       75 GETTABLEKS                       R9 R0 K31 ["layersHeaderFrame"]
       77 GETUPVAL                         R10 1
       78 GETTABLEKS                       R10 R10 K3 ["createElement"]
       80 GETUPVAL                         R11 3
       81 DUPTABLE                         R12 K34 [{["text"] = "Layers", ["inset"] = 8, ["tokens"]}]
       82 GETTABLEKS                       R13 R0 K14 ["tokens"]
       84 SETTABLEKS                       R13 R12 K14 ["tokens"]
       86 CALL                             R10 2 -1
       87 CALL                             R8 -1 1
       88 SETTABLEKS                       R8 R7 K7 ["Layers"]
       90 GETUPVAL                         R8 2
       91 GETTABLEKS                       R9 R0 K35 ["secondaryTabsHeaderFrame"]
       93 GETUPVAL                         R10 1
       94 GETTABLEKS                       R10 R10 K3 ["createElement"]
       96 GETUPVAL                         R11 5
       97 DUPTABLE                         R12 K36 [{"tabs", "value", "onActivated", "tokens"}]
       98 NEWTABLE                         R13 0 3
      100 DUPTABLE                         R14 K39 [{["id"] = "design", ["text"] = "Design"}]
      101 DUPTABLE                         R15 K42 [{["id"] = "bindings", ["text"] = "Bindings"}]
      102 DUPTABLE                         R16 K45 [{["id"] = "inspect", ["text"] = "Inspect"}]
      103 SETLIST                          R13 R14 3 [1]
      105 SETTABLEKS                       R13 R12 K17 ["tabs"]
      107 SETTABLEKS                       R3 R12 K18 ["value"]
      109 NEWCLOSURE                       R13 P1
      110 CAPTURE                          VAL R1
      111 SETTABLEKS                       R13 R12 K19 ["onActivated"]
      113 GETTABLEKS                       R13 R0 K14 ["tokens"]
      115 SETTABLEKS                       R13 R12 K14 ["tokens"]
      117 CALL                             R10 2 -1
      118 CALL                             R8 -1 1
      119 SETTABLEKS                       R8 R7 K8 ["SecondaryTabs"]
      121 CALL                             R4 3 -1
      122 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["StyleLinkPortal"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K13 ["Parent"]
       43 GETTABLEKS                       R6 R6 K14 ["WorkspaceSegmentedTabs"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETIMPORT                        R7 K1 [script]
       50 GETTABLEKS                       R7 R7 K13 ["Parent"]
       52 GETTABLEKS                       R7 R7 K15 ["WorkspaceState"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETIMPORT                        R8 K1 [script]
       59 GETTABLEKS                       R8 R8 K13 ["Parent"]
       61 GETTABLEKS                       R8 R8 K16 ["useWorkspaceState"]
       63 CALL                             R7 1 1
       64 DUPTABLE                         R8 K22 [{["Font"], ["FontSize"] = 18, ["LineHeight"] = 1.4}]
       65 GETIMPORT                        R9 K24 [Font.new]
       67 LOADK                            R10 K25 ["rbxasset://fonts/families/BuilderExtended.json"]
       68 GETIMPORT                        R11 K29 [Enum.FontWeight.ExtraBold]
       70 GETIMPORT                        R12 K32 [Enum.FontStyle.Normal]
       72 CALL                             R9 3 1
       73 SETTABLEKS                       R9 R8 K17 ["Font"]
       75 DUPCLOSURE                       R9 K33 [PROTO_0]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R3
       78 DUPCLOSURE                       R10 K34 [PROTO_1]
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R3
       82 DUPCLOSURE                       R11 K35 [PROTO_7]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R5
       87 DUPCLOSURE                       R12 K36 [PROTO_8]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R4
       91 DUPCLOSURE                       R13 K37 [PROTO_11]
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R12
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R11
       98 RETURN                           R13 1
