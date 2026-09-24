PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onTabChanged"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["tabs"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETTABLEKS                       R9 R5 K1 ["id"]
       10 FASTCALL1                        TYPEOF R9 ; [+2]
       11 GETIMPORT                        R8 K3 [typeof]
       13 CALL                             R8 1 1
       14 JUMPIFEQKS                       R8 K4 ["string"] ; [+2]
       16 LOADB                            R7 0 +1
       17 LOADB                            R7 1
       18 FASTCALL2K                       ASSERT R7 K5 ; [+4]
       20 LOADK                            R8 K5 ["Tab ids must be strings"]
       21 GETIMPORT                        R6 K7 [assert]
       23 CALL                             R6 2 0
       24 GETTABLEKS                       R6 R5 K1 ["id"]
       26 GETUPVAL                         R7 1
       27 GETUPVAL                         R8 2
       28 DUPTABLE                         R9 K13 [{"LayoutOrder", "size", "isChecked", "text", "onActivated"}]
       29 SETTABLEKS                       R4 R9 K8 ["LayoutOrder"]
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R10 R10 K14 ["Small"]
       34 SETTABLEKS                       R10 R9 K9 ["size"]
       36 GETTABLEKS                       R11 R5 K1 ["id"]
       38 GETUPVAL                         R12 4
       39 JUMPIFEQ                         R11 R12 ; [+2]
       41 LOADB                            R10 0 +1
       42 LOADB                            R10 1
       43 SETTABLEKS                       R10 R9 K10 ["isChecked"]
       45 GETTABLEKS                       R10 R5 K11 ["text"]
       47 SETTABLEKS                       R10 R9 K11 ["text"]
       49 NEWCLOSURE                       R10 P0
       50 CAPTURE                          UPVAL U0
       51 CAPTURE                          VAL R5
       52 SETTABLEKS                       R10 R9 K12 ["onActivated"]
       54 CALL                             R7 2 1
       55 SETTABLE                         R7 R0 R6
       56 FORGLOOP                         R1 2 ; [-49]
       58 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["toggle"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K1 ["enabled"]
        7 JUMPIFNOT                        R0 ; [+6]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K2 ["onSearchChanged"]
       11 LOADK                            R1 K3 [""]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K4 ["current"]
       17 FASTCALL2K                       ASSERT R0 K5 ; [+5]
       19 MOVE                             R2 R0
       20 LOADK                            R3 K5 ["TextBox was somehow nil"]
       21 GETIMPORT                        R1 K7 [assert]
       23 CALL                             R1 2 0
       24 GETTABLEKS                       R1 R0 K8 ["focus"]
       26 CALL                             R1 0 0
       27 GETUPVAL                         R1 1
       28 GETTABLEKS                       R1 R1 K2 ["onSearchChanged"]
       30 GETUPVAL                         R2 3
       31 NAMECALL                         R2 R2 K9 ["getValue"]
       33 CALL                             R2 1 -1
       34 CALL                             R1 -1 0
       35 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["onSearchChanged"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalState"]
        3 GETTABLEKS                       R2 R0 K1 ["getCurrentTab"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R3 R3 K2 ["useRef"]
       11 LOADNIL                          R4
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R4 R4 K3 ["useBinding"]
       16 LOADK                            R5 K4 [""]
       17 CALL                             R4 1 2
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R0
       23 CAPTURE                          UPVAL U3
       24 CAPTURE                          UPVAL U4
       25 CAPTURE                          UPVAL U5
       26 CAPTURE                          VAL R1
       27 NEWTABLE                         R8 0 3
       29 GETTABLEKS                       R9 R0 K6 ["tabs"]
       31 MOVE                             R10 R1
       32 GETTABLEKS                       R11 R0 K7 ["onTabChanged"]
       34 SETLIST                          R8 R9 3 [1]
       36 CALL                             R6 2 1
       37 GETUPVAL                         R7 6
       38 GETTABLEKS                       R7 R7 K8 ["useEventCallback"]
       40 NEWCLOSURE                       R8 P1
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R4
       45 CALL                             R7 1 1
       46 GETUPVAL                         R8 6
       47 GETTABLEKS                       R8 R8 K8 ["useEventCallback"]
       49 NEWCLOSURE                       R9 P2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R0
       52 CALL                             R8 1 1
       53 GETUPVAL                         R9 7
       54 CALL                             R9 0 1
       55 GETUPVAL                         R10 7
       56 CALL                             R10 0 1
       57 GETUPVAL                         R11 8
       58 CALL                             R11 0 1
       59 GETUPVAL                         R12 3
       60 GETUPVAL                         R13 9
       61 DUPTABLE                         R14 K12 [{"tag", "Size", "LayoutOrder"}]
       62 NEWTABLE                         R15 2 0
       64 LOADB                            R16 1
       65 SETTABLEKS                       R16 R15 K13 ["row align-x-left align-y-center padding-right-small"]
       67 GETTABLEKS                       R16 R2 K14 ["enabled"]
       69 SETTABLEKS                       R16 R15 K15 ["padding-left-medium"]
       71 SETTABLEKS                       R15 R14 K9 ["tag"]
       73 GETTABLEKS                       R15 R0 K16 ["size"]
       75 SETTABLEKS                       R15 R14 K10 ["Size"]
       77 GETTABLEKS                       R15 R0 K17 ["layoutOrder"]
       79 SETTABLEKS                       R15 R14 K11 ["LayoutOrder"]
       81 DUPTABLE                         R15 K22 [{"Tabs", "SearchBar", "Gap", "SearchButton"}]
       82 GETUPVAL                         R16 3
       83 GETUPVAL                         R17 9
       84 DUPTABLE                         R18 K25 [{["tag"] = "fill size-full-full", ["Visible"]}]
       85 GETTABLEKS                       R20 R2 K14 ["enabled"]
       87 NOT                              R19 R20
       88 SETTABLEKS                       R19 R18 K24 ["Visible"]
       90 DUPTABLE                         R19 K29 [{"Scroller", "CoolFadeLeft", "CoolFadeRight"}]
       91 GETUPVAL                         R20 3
       92 GETUPVAL                         R21 10
       93 GETTABLEKS                       R21 R21 K30 ["ScrollView"]
       95 DUPTABLE                         R22 K35 [{["tag"] = "row align-x-left align-y-center gap-xsmall size-full-full padding-left-medium padding-right-medium", ["scroll"], ["selection"], ["LayoutOrder"], ["ZIndex"]}]
       96 DUPTABLE                         R23 K39 [{"scrollBarVisibility", "AutomaticCanvasSize", "ScrollingDirection"}]
       97 GETUPVAL                         R24 10
       98 GETTABLEKS                       R24 R24 K40 ["Enums"]
      100 GETTABLEKS                       R24 R24 K41 ["Visibility"]
      102 GETTABLEKS                       R24 R24 K42 ["None"]
      104 SETTABLEKS                       R24 R23 K36 ["scrollBarVisibility"]
      106 GETIMPORT                        R24 K46 [Enum.AutomaticSize.XY]
      108 SETTABLEKS                       R24 R23 K37 ["AutomaticCanvasSize"]
      110 GETIMPORT                        R24 K48 [Enum.ScrollingDirection.X]
      112 SETTABLEKS                       R24 R23 K38 ["ScrollingDirection"]
      114 SETTABLEKS                       R23 R22 K32 ["scroll"]
      116 DUPTABLE                         R23 K51 [{["Selectable"] = False}]
      117 SETTABLEKS                       R23 R22 K33 ["selection"]
      119 MOVE                             R23 R9
      120 CALL                             R23 0 1
      121 SETTABLEKS                       R23 R22 K11 ["LayoutOrder"]
      123 MOVE                             R23 R10
      124 CALL                             R23 0 1
      125 SETTABLEKS                       R23 R22 K34 ["ZIndex"]
      127 MOVE                             R23 R6
      128 DUPTABLE                         R24 K53 [{"List"}]
      129 GETUPVAL                         R25 3
      130 LOADK                            R26 K54 ["UIListLayout"]
      131 DUPTABLE                         R27 K59 [{"FillDirection", "SortOrder", "VerticalAlignment", "Padding"}]
      132 GETIMPORT                        R28 K61 [Enum.FillDirection.Horizontal]
      134 SETTABLEKS                       R28 R27 K55 ["FillDirection"]
      136 GETIMPORT                        R28 K62 [Enum.SortOrder.LayoutOrder]
      138 SETTABLEKS                       R28 R27 K56 ["SortOrder"]
      140 GETIMPORT                        R28 K64 [Enum.VerticalAlignment.Center]
      142 SETTABLEKS                       R28 R27 K57 ["VerticalAlignment"]
      144 GETIMPORT                        R28 K67 [UDim.new]
      146 LOADN                            R29 0
      147 GETTABLEKS                       R30 R11 K20 ["Gap"]
      149 GETTABLEKS                       R30 R30 K68 ["XSmall"]
      151 CALL                             R28 2 1
      152 SETTABLEKS                       R28 R27 K58 ["Padding"]
      154 CALL                             R25 2 1
      155 SETTABLEKS                       R25 R24 K52 ["List"]
      157 CALL                             R20 4 1
      158 SETTABLEKS                       R20 R19 K26 ["Scroller"]
      160 GETUPVAL                         R20 3
      161 GETUPVAL                         R21 11
      162 DUPTABLE                         R22 K71 [{["alignment"] = "Left", ["ZIndex"]}]
      163 MOVE                             R23 R10
      164 CALL                             R23 0 1
      165 SETTABLEKS                       R23 R22 K34 ["ZIndex"]
      167 CALL                             R20 2 1
      168 SETTABLEKS                       R20 R19 K27 ["CoolFadeLeft"]
      170 GETUPVAL                         R20 3
      171 GETUPVAL                         R21 11
      172 DUPTABLE                         R22 K73 [{["alignment"] = "Right", ["ZIndex"]}]
      173 MOVE                             R23 R10
      174 CALL                             R23 0 1
      175 SETTABLEKS                       R23 R22 K34 ["ZIndex"]
      177 CALL                             R20 2 1
      178 SETTABLEKS                       R20 R19 K28 ["CoolFadeRight"]
      180 CALL                             R16 3 1
      181 SETTABLEKS                       R16 R15 K18 ["Tabs"]
      183 GETUPVAL                         R16 3
      184 GETUPVAL                         R17 9
      185 DUPTABLE                         R18 K76 [{["tag"] = "fill size-0-600 padding-x-small radius-circle bg-surface-200", ["backgroundStyle"], ["LayoutOrder"], ["Visible"], ["selection"]}]
      186 GETTABLEKS                       R19 R11 K77 ["Color"]
      188 GETTABLEKS                       R19 R19 K78 ["Shift"]
      190 GETTABLEKS                       R19 R19 K79 ["Shift_200"]
      192 SETTABLEKS                       R19 R18 K75 ["backgroundStyle"]
      194 MOVE                             R19 R9
      195 CALL                             R19 0 1
      196 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      198 GETTABLEKS                       R19 R2 K14 ["enabled"]
      200 SETTABLEKS                       R19 R18 K24 ["Visible"]
      202 DUPTABLE                         R19 K51 [{["Selectable"] = False}]
      203 SETTABLEKS                       R19 R18 K33 ["selection"]
      205 DUPTABLE                         R19 K81 [{"TextInput"}]
      206 GETUPVAL                         R20 3
      207 GETUPVAL                         R21 10
      208 GETTABLEKS                       R21 R21 K80 ["TextInput"]
      210 DUPTABLE                         R22 K92 [{["text"], ["onChanged"], ["label"] = "", ["placeholder"], ["variant"], ["textBoxRef"], ["size"], ["width"], ["focusBehavior"], ["testId"] = "search-box"}]
      211 SETTABLEKS                       R4 R22 K82 ["text"]
      213 SETTABLEKS                       R8 R22 K83 ["onChanged"]
      215 GETUPVAL                         R23 12
      216 LOADK                            R25 K19 ["SearchBar"]
      217 LOADK                            R26 K93 ["PlaceholderText"]
      218 NAMECALL                         R23 R23 K94 ["getText"]
      220 CALL                             R23 3 1
      221 SETTABLEKS                       R23 R22 K85 ["placeholder"]
      223 GETUPVAL                         R23 10
      224 GETTABLEKS                       R23 R23 K40 ["Enums"]
      226 GETTABLEKS                       R23 R23 K95 ["InputVariant"]
      228 GETTABLEKS                       R23 R23 K96 ["Utility"]
      230 SETTABLEKS                       R23 R22 K86 ["variant"]
      232 SETTABLEKS                       R3 R22 K87 ["textBoxRef"]
      234 GETUPVAL                         R23 10
      235 GETTABLEKS                       R23 R23 K40 ["Enums"]
      237 GETTABLEKS                       R23 R23 K97 ["InputSize"]
      239 GETTABLEKS                       R23 R23 K68 ["XSmall"]
      241 SETTABLEKS                       R23 R22 K16 ["size"]
      243 GETIMPORT                        R23 K67 [UDim.new]
      245 LOADN                            R24 1
      246 LOADN                            R25 0
      247 CALL                             R23 2 1
      248 SETTABLEKS                       R23 R22 K88 ["width"]
      250 GETUPVAL                         R23 10
      251 GETTABLEKS                       R23 R23 K40 ["Enums"]
      253 GETTABLEKS                       R23 R23 K98 ["InputFocusBehavior"]
      255 GETTABLEKS                       R23 R23 K99 ["Highlight"]
      257 SETTABLEKS                       R23 R22 K89 ["focusBehavior"]
      259 CALL                             R20 2 1
      260 SETTABLEKS                       R20 R19 K80 ["TextInput"]
      262 CALL                             R16 3 1
      263 SETTABLEKS                       R16 R15 K19 ["SearchBar"]
      265 GETUPVAL                         R16 3
      266 GETUPVAL                         R17 9
      267 DUPTABLE                         R18 K100 [{"tag", "LayoutOrder"}]
      268 NEWTABLE                         R19 2 0
      270 GETTABLEKS                       R21 R2 K14 ["enabled"]
      272 NOT                              R20 R21
      273 SETTABLEKS                       R20 R19 K101 ["fill size-0-full"]
      275 GETTABLEKS                       R20 R2 K14 ["enabled"]
      277 SETTABLEKS                       R20 R19 K102 ["size-100-full"]
      279 SETTABLEKS                       R19 R18 K9 ["tag"]
      281 MOVE                             R19 R9
      282 CALL                             R19 0 1
      283 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      285 DUPTABLE                         R19 K104 [{"SizeConstraint"}]
      286 GETTABLEKS                       R21 R2 K14 ["enabled"]
      288 NOT                              R20 R21
      289 JUMPIFNOT                        R20 ; [+14]
      290 GETUPVAL                         R20 3
      291 LOADK                            R21 K105 ["UISizeConstraint"]
      292 DUPTABLE                         R22 K107 [{"MinSize"}]
      293 GETIMPORT                        R23 K109 [Vector2.new]
      295 GETTABLEKS                       R24 R11 K10 ["Size"]
      297 GETTABLEKS                       R24 R24 K110 ["Size_200"]
      299 LOADN                            R25 0
      300 CALL                             R23 2 1
      301 SETTABLEKS                       R23 R22 K106 ["MinSize"]
      303 CALL                             R20 2 1
      304 SETTABLEKS                       R20 R19 K103 ["SizeConstraint"]
      306 CALL                             R16 3 1
      307 SETTABLEKS                       R16 R15 K20 ["Gap"]
      309 GETUPVAL                         R16 3
      310 GETUPVAL                         R17 4
      311 DUPTABLE                         R18 K114 [{"LayoutOrder", "isChecked", "leading", "text", "size", "onActivated"}]
      312 MOVE                             R19 R9
      313 CALL                             R19 0 1
      314 SETTABLEKS                       R19 R18 K11 ["LayoutOrder"]
      316 GETTABLEKS                       R19 R2 K14 ["enabled"]
      318 SETTABLEKS                       R19 R18 K111 ["isChecked"]
      320 DUPTABLE                         R19 K116 [{"iconName"}]
      321 GETUPVAL                         R20 10
      322 GETTABLEKS                       R20 R20 K40 ["Enums"]
      324 GETTABLEKS                       R20 R20 K117 ["IconName"]
      326 GETTABLEKS                       R20 R20 K118 ["MagnifyingGlass"]
      328 SETTABLEKS                       R20 R19 K115 ["iconName"]
      330 SETTABLEKS                       R19 R18 K112 ["leading"]
      332 GETUPVAL                         R19 12
      333 LOADK                            R21 K18 ["Tabs"]
      334 LOADK                            R22 K119 ["All"]
      335 NAMECALL                         R19 R19 K94 ["getText"]
      337 CALL                             R19 3 1
      338 SETTABLEKS                       R19 R18 K82 ["text"]
      340 GETUPVAL                         R19 10
      341 GETTABLEKS                       R19 R19 K40 ["Enums"]
      343 GETTABLEKS                       R19 R19 K120 ["ChipSize"]
      345 GETTABLEKS                       R19 R19 K121 ["Small"]
      347 SETTABLEKS                       R19 R18 K16 ["size"]
      349 SETTABLEKS                       R7 R18 K113 ["onActivated"]
      351 CALL                             R16 2 1
      352 SETTABLEKS                       R16 R15 K21 ["SearchButton"]
      354 CALL                             R12 3 -1
      355 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["Util"]
       15 GETTABLEKS                       R3 R3 K9 ["CoolFade"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K4 ["Parent"]
       29 GETTABLEKS                       R5 R5 K11 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R0 K4 ["Parent"]
       36 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R1 K13 ["Signals"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R1 K14 ["SignalsReact"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K7 ["Components"]
       53 GETTABLEKS                       R9 R9 K15 ["Contexts"]
       55 GETTABLEKS                       R9 R9 K16 ["TabsContext"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETTABLEKS                       R10 R0 K17 ["Resources"]
       62 GETTABLEKS                       R10 R10 K18 ["Localization"]
       64 GETTABLEKS                       R10 R10 K19 ["Translator"]
       66 CALL                             R9 1 1
       67 GETTABLEKS                       R10 R3 K20 ["Chip"]
       69 GETTABLEKS                       R11 R3 K21 ["Enums"]
       71 GETTABLEKS                       R11 R11 K22 ["ChipSize"]
       73 GETTABLEKS                       R12 R3 K23 ["View"]
       75 GETTABLEKS                       R13 R5 K24 ["createNextOrder"]
       77 GETTABLEKS                       R14 R4 K25 ["createElement"]
       79 GETTABLEKS                       R15 R3 K26 ["Hooks"]
       81 GETTABLEKS                       R15 R15 K27 ["useTokens"]
       83 GETTABLEKS                       R16 R5 K28 ["useToggleState"]
       85 DUPCLOSURE                       R17 K29 [PROTO_4]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R5
       93 CAPTURE                          VAL R13
       94 CAPTURE                          VAL R15
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R3
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R9
       99 RETURN                           R17 1
