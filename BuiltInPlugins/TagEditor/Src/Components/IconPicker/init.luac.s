PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["close"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["setHoveredIcon"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["tabs"]
        4 DUPTABLE                         R3 K2 [{"selectedTab"}]
        5 NEWTABLE                         R4 0 0
        7 SETTABLEKS                       R4 R3 K1 ["selectedTab"]
        9 NAMECALL                         R1 R0 K3 ["setState"]
       11 CALL                             R1 2 0
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K4 ["closeFunc"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K5 ["onHoverFunc"]
       20 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"selectedTab"}]
        2 SETTABLEKS                       R0 R3 K0 ["selectedTab"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["IconPicker"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETIMPORT                        R5 K7 [string.format]
       14 LOADK                            R6 K8 ["%s %s"]
       15 LOADK                            R9 K9 ["Info"]
       16 LOADK                            R10 K10 ["IconPickerTitle"]
       17 NAMECALL                         R7 R2 K11 ["getText"]
       19 CALL                             R7 3 1
       20 GETTABLEKS                       R8 R1 K12 ["tagName"]
       22 CALL                             R5 3 1
       23 GETUPVAL                         R6 1
       24 GETTABLEKS                       R7 R0 K13 ["state"]
       26 GETTABLEKS                       R7 R7 K14 ["selectedTab"]
       28 GETTABLEKS                       R7 R7 K15 ["Key"]
       30 JUMPIFNOTEQKS                    R7 K16 ["Emoji"] ; [+3]
       32 GETUPVAL                         R6 2
       33 JUMP                             ; [+9]
       34 GETTABLEKS                       R7 R0 K13 ["state"]
       36 GETTABLEKS                       R7 R7 K14 ["selectedTab"]
       38 GETTABLEKS                       R7 R7 K15 ["Key"]
       40 JUMPIFNOTEQKS                    R7 K17 ["Custom"] ; [+2]
       42 GETUPVAL                         R6 3
       43 GETUPVAL                         R7 4
       44 GETTABLEKS                       R7 R7 K18 ["createElement"]
       46 GETUPVAL                         R8 5
       47 DUPTABLE                         R9 K22 [{"Layout", "LayoutOrder", "VerticalAlignment"}]
       48 GETIMPORT                        R10 K26 [Enum.FillDirection.Vertical]
       50 SETTABLEKS                       R10 R9 K19 ["Layout"]
       52 GETTABLEKS                       R10 R1 K20 ["LayoutOrder"]
       54 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       56 GETIMPORT                        R10 K28 [Enum.VerticalAlignment.Top]
       58 SETTABLEKS                       R10 R9 K21 ["VerticalAlignment"]
       60 DUPTABLE                         R10 K31 [{"TopPane", "SelectedPagePane"}]
       61 GETUPVAL                         R11 4
       62 GETTABLEKS                       R11 R11 K18 ["createElement"]
       64 GETUPVAL                         R12 5
       65 DUPTABLE                         R13 K34 [{"Layout", "LayoutOrder", "Size", "Spacing"}]
       66 GETIMPORT                        R14 K26 [Enum.FillDirection.Vertical]
       68 SETTABLEKS                       R14 R13 K19 ["Layout"]
       70 NAMECALL                         R14 R4 K35 ["getNextOrder"]
       72 CALL                             R14 1 1
       73 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
       75 GETTABLEKS                       R14 R3 K36 ["TopPaneSize"]
       77 SETTABLEKS                       R14 R13 K32 ["Size"]
       79 GETTABLEKS                       R14 R3 K37 ["TopPaneSpacing"]
       81 SETTABLEKS                       R14 R13 K33 ["Spacing"]
       83 DUPTABLE                         R14 K42 [{"Cancel", "TitleText", "MiddlePane", "TabsPane"}]
       84 GETUPVAL                         R15 4
       85 GETTABLEKS                       R15 R15 K18 ["createElement"]
       87 GETUPVAL                         R16 6
       88 DUPTABLE                         R17 K47 [{["LayoutOrder"], ["OnClick"], ["Size"], ["Style"] = "Round", ["Text"]}]
       89 NAMECALL                         R18 R4 K35 ["getNextOrder"]
       91 CALL                             R18 1 1
       92 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
       94 GETTABLEKS                       R18 R1 K48 ["close"]
       96 SETTABLEKS                       R18 R17 K43 ["OnClick"]
       98 GETTABLEKS                       R18 R3 K49 ["CancelButtonSize"]
      100 SETTABLEKS                       R18 R17 K32 ["Size"]
      102 LOADK                            R20 K50 ["General"]
      103 LOADK                            R21 K38 ["Cancel"]
      104 NAMECALL                         R18 R2 K11 ["getText"]
      106 CALL                             R18 3 1
      107 SETTABLEKS                       R18 R17 K46 ["Text"]
      109 CALL                             R15 2 1
      110 SETTABLEKS                       R15 R14 K38 ["Cancel"]
      112 GETUPVAL                         R15 4
      113 GETTABLEKS                       R15 R15 K18 ["createElement"]
      115 GETUPVAL                         R16 7
      116 DUPTABLE                         R17 K51 [{"LayoutOrder", "Size", "Text"}]
      117 NAMECALL                         R18 R4 K35 ["getNextOrder"]
      119 CALL                             R18 1 1
      120 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      122 GETTABLEKS                       R18 R3 K52 ["TitleTextSize"]
      124 SETTABLEKS                       R18 R17 K32 ["Size"]
      126 SETTABLEKS                       R5 R17 K46 ["Text"]
      128 CALL                             R15 2 1
      129 SETTABLEKS                       R15 R14 K39 ["TitleText"]
      131 GETUPVAL                         R15 4
      132 GETTABLEKS                       R15 R15 K18 ["createElement"]
      134 GETUPVAL                         R16 5
      135 DUPTABLE                         R17 K53 [{"Layout", "LayoutOrder", "Size"}]
      136 GETIMPORT                        R18 K55 [Enum.FillDirection.Horizontal]
      138 SETTABLEKS                       R18 R17 K19 ["Layout"]
      140 NAMECALL                         R18 R4 K35 ["getNextOrder"]
      142 CALL                             R18 1 1
      143 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      145 GETTABLEKS                       R18 R3 K56 ["MiddlePaneSize"]
      147 SETTABLEKS                       R18 R17 K32 ["Size"]
      149 DUPTABLE                         R18 K59 [{"Icon", "SearchBarPane"}]
      150 GETUPVAL                         R19 4
      151 GETTABLEKS                       R19 R19 K18 ["createElement"]
      153 GETUPVAL                         R20 8
      154 DUPTABLE                         R21 K62 [{["LayoutOrder"], ["Name"], ["Size"], ["Style"] = "Preview"}]
      155 NAMECALL                         R22 R4 K35 ["getNextOrder"]
      157 CALL                             R22 1 1
      158 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      160 GETTABLEKS                       R22 R1 K63 ["tagIcon"]
      162 SETTABLEKS                       R22 R21 K60 ["Name"]
      164 GETTABLEKS                       R22 R3 K64 ["PreviewIconSize"]
      166 SETTABLEKS                       R22 R21 K32 ["Size"]
      168 CALL                             R19 2 1
      169 SETTABLEKS                       R19 R18 K57 ["Icon"]
      171 GETUPVAL                         R19 4
      172 GETTABLEKS                       R19 R19 K18 ["createElement"]
      174 GETUPVAL                         R20 5
      175 DUPTABLE                         R21 K53 [{"Layout", "LayoutOrder", "Size"}]
      176 GETIMPORT                        R22 K26 [Enum.FillDirection.Vertical]
      178 SETTABLEKS                       R22 R21 K19 ["Layout"]
      180 NAMECALL                         R22 R4 K35 ["getNextOrder"]
      182 CALL                             R22 1 1
      183 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      185 GETTABLEKS                       R22 R3 K65 ["SearchBarPaneSize"]
      187 SETTABLEKS                       R22 R21 K32 ["Size"]
      189 DUPTABLE                         R22 K68 [{"SearchBar", "TextLabel"}]
      190 GETUPVAL                         R23 4
      191 GETTABLEKS                       R23 R23 K18 ["createElement"]
      193 GETUPVAL                         R24 9
      194 DUPTABLE                         R25 K72 [{["OnSearchRequested"], ["Size"], ["Style"] = "Compact", ["PlaceholderText"]}]
      195 GETTABLEKS                       R26 R1 K73 ["setTerm"]
      197 SETTABLEKS                       R26 R25 K69 ["OnSearchRequested"]
      199 GETTABLEKS                       R26 R3 K74 ["SearchBarSize"]
      201 SETTABLEKS                       R26 R25 K32 ["Size"]
      203 LOADK                            R28 K50 ["General"]
      204 LOADK                            R29 K75 ["Search"]
      205 NAMECALL                         R26 R2 K11 ["getText"]
      207 CALL                             R26 3 1
      208 SETTABLEKS                       R26 R25 K71 ["PlaceholderText"]
      210 CALL                             R23 2 1
      211 SETTABLEKS                       R23 R22 K66 ["SearchBar"]
      213 GETUPVAL                         R23 4
      214 GETTABLEKS                       R23 R23 K18 ["createElement"]
      216 GETUPVAL                         R24 7
      217 DUPTABLE                         R25 K77 [{"Size", "Text", "TextXAlignment"}]
      218 GETTABLEKS                       R26 R3 K78 ["IconNameTextSize"]
      220 SETTABLEKS                       R26 R25 K32 ["Size"]
      222 GETTABLEKS                       R26 R1 K63 ["tagIcon"]
      224 SETTABLEKS                       R26 R25 K46 ["Text"]
      226 GETIMPORT                        R26 K80 [Enum.TextXAlignment.Left]
      228 SETTABLEKS                       R26 R25 K76 ["TextXAlignment"]
      230 CALL                             R23 2 1
      231 SETTABLEKS                       R23 R22 K67 ["TextLabel"]
      233 CALL                             R19 3 1
      234 SETTABLEKS                       R19 R18 K58 ["SearchBarPane"]
      236 CALL                             R15 3 1
      237 SETTABLEKS                       R15 R14 K40 ["MiddlePane"]
      239 GETUPVAL                         R15 4
      240 GETTABLEKS                       R15 R15 K18 ["createElement"]
      242 GETUPVAL                         R16 5
      243 DUPTABLE                         R17 K82 [{["LayoutOrder"], ["Size"], ["Style"] = "SubtleBox"}]
      244 NAMECALL                         R18 R4 K35 ["getNextOrder"]
      246 CALL                             R18 1 1
      247 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      249 GETTABLEKS                       R18 R3 K83 ["TabsPaneSize"]
      251 SETTABLEKS                       R18 R17 K32 ["Size"]
      253 DUPTABLE                         R18 K85 [{"Tabs"}]
      254 GETUPVAL                         R19 4
      255 GETTABLEKS                       R19 R19 K18 ["createElement"]
      257 GETUPVAL                         R20 10
      258 DUPTABLE                         R21 K88 [{"OnTabSelected", "SelectedTab", "Tabs"}]
      259 NEWCLOSURE                       R22 P0
      260 CAPTURE                          VAL R0
      261 SETTABLEKS                       R22 R21 K86 ["OnTabSelected"]
      263 GETTABLEKS                       R22 R0 K13 ["state"]
      265 GETTABLEKS                       R22 R22 K14 ["selectedTab"]
      267 SETTABLEKS                       R22 R21 K87 ["SelectedTab"]
      269 GETTABLEKS                       R22 R0 K89 ["tabs"]
      271 SETTABLEKS                       R22 R21 K84 ["Tabs"]
      273 CALL                             R19 2 1
      274 SETTABLEKS                       R19 R18 K84 ["Tabs"]
      276 CALL                             R15 3 1
      277 SETTABLEKS                       R15 R14 K41 ["TabsPane"]
      279 CALL                             R11 3 1
      280 SETTABLEKS                       R11 R10 K29 ["TopPane"]
      282 GETUPVAL                         R11 4
      283 GETTABLEKS                       R11 R11 K18 ["createElement"]
      285 GETUPVAL                         R12 5
      286 DUPTABLE                         R13 K90 [{"LayoutOrder"}]
      287 NAMECALL                         R14 R4 K35 ["getNextOrder"]
      289 CALL                             R14 1 1
      290 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
      292 DUPTABLE                         R14 K92 [{"SelectedPage"}]
      293 GETUPVAL                         R15 4
      294 GETTABLEKS                       R15 R15 K18 ["createElement"]
      296 MOVE                             R16 R6
      297 DUPTABLE                         R17 K96 [{"LayoutOrder", "Size", "tagName", "search", "closeFunc", "onHoverFunc"}]
      298 NAMECALL                         R18 R4 K35 ["getNextOrder"]
      300 CALL                             R18 1 1
      301 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      303 GETTABLEKS                       R18 R3 K97 ["SelectedPageSize"]
      305 SETTABLEKS                       R18 R17 K32 ["Size"]
      307 GETTABLEKS                       R18 R1 K12 ["tagName"]
      309 SETTABLEKS                       R18 R17 K12 ["tagName"]
      311 GETTABLEKS                       R18 R1 K93 ["search"]
      313 SETTABLEKS                       R18 R17 K93 ["search"]
      315 GETTABLEKS                       R18 R0 K94 ["closeFunc"]
      317 SETTABLEKS                       R18 R17 K94 ["closeFunc"]
      319 GETTABLEKS                       R18 R0 K95 ["onHoverFunc"]
      321 SETTABLEKS                       R18 R17 K95 ["onHoverFunc"]
      323 CALL                             R15 2 1
      324 SETTABLEKS                       R15 R14 K91 ["SelectedPage"]
      326 CALL                             R11 3 1
      327 SETTABLEKS                       R11 R10 K30 ["SelectedPagePane"]
      329 CALL                             R7 3 -1
      330 RETURN                           R7 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Localization"]
        4 GETUPVAL                         R2 0
        5 JUMPIFNOT                        R2 ; [+20]
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["getAreCustomIconsAndEmojiAllowed"]
        9 CALL                             R2 0 1
       10 JUMPIF                           R2 ; [+15]
       11 NEWTABLE                         R2 0 1
       13 DUPTABLE                         R3 K6 [{["Key"] = "Icons", ["Label"]}]
       14 LOADK                            R6 K7 ["IconPicker"]
       15 LOADK                            R7 K4 ["Icons"]
       16 NAMECALL                         R4 R1 K8 ["getText"]
       18 CALL                             R4 3 1
       19 SETTABLEKS                       R4 R3 K5 ["Label"]
       21 SETLIST                          R2 R3 1 [1]
       23 SETTABLEKS                       R2 R0 K9 ["tabs"]
       25 JUMP                             ; [+30]
       26 NEWTABLE                         R2 0 3
       28 DUPTABLE                         R3 K11 [{["Key"] = "Emoji", ["Label"]}]
       29 LOADK                            R6 K7 ["IconPicker"]
       30 LOADK                            R7 K10 ["Emoji"]
       31 NAMECALL                         R4 R1 K8 ["getText"]
       33 CALL                             R4 3 1
       34 SETTABLEKS                       R4 R3 K5 ["Label"]
       36 DUPTABLE                         R4 K6 [{["Key"] = "Icons", ["Label"]}]
       37 LOADK                            R7 K7 ["IconPicker"]
       38 LOADK                            R8 K4 ["Icons"]
       39 NAMECALL                         R5 R1 K8 ["getText"]
       41 CALL                             R5 3 1
       42 SETTABLEKS                       R5 R4 K5 ["Label"]
       44 DUPTABLE                         R5 K13 [{["Key"] = "Custom", ["Label"]}]
       45 LOADK                            R8 K7 ["IconPicker"]
       46 LOADK                            R9 K12 ["Custom"]
       47 NAMECALL                         R6 R1 K8 ["getText"]
       49 CALL                             R6 3 1
       50 SETTABLEKS                       R6 R5 K5 ["Label"]
       52 SETLIST                          R2 R3 3 [1]
       54 SETTABLEKS                       R2 R0 K9 ["tabs"]
       56 DUPTABLE                         R4 K15 [{"selectedTab"}]
       57 GETTABLEKS                       R6 R0 K9 ["tabs"]
       59 GETTABLEN                        R5 R6 1
       60 SETTABLEKS                       R5 R4 K14 ["selectedTab"]
       62 NAMECALL                         R2 R0 K16 ["setState"]
       64 CALL                             R2 2 0
       65 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["IconPicker"]
        2 GETTABLEKS                       R3 R0 K1 ["HoveredIcon"]
        4 JUMPIFNOTEQKNIL                  R3 ; [+16]
        6 GETIMPORT                        R4 K3 [pairs]
        8 GETTABLEKS                       R5 R0 K4 ["TagData"]
       10 CALL                             R4 1 3
       11 FORGPREP_NEXT                    R4
       12 GETTABLEKS                       R9 R8 K5 ["Name"]
       14 JUMPIFNOTEQ                      R9 R2 ; [+4]
       16 GETTABLEKS                       R3 R8 K6 ["Icon"]
       18 JUMP                             ; [+2]
       19 FORGLOOP                         R4 2 ; [-8]
       21 DUPTABLE                         R4 K10 [{"tagName", "tagIcon", "search"}]
       22 SETTABLEKS                       R2 R4 K7 ["tagName"]
       24 SETTABLEKS                       R3 R4 K8 ["tagIcon"]
       26 GETTABLEKS                       R5 R0 K11 ["IconSearch"]
       28 SETTABLEKS                       R5 R4 K9 ["search"]
       30 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["ToggleIconPicker"]
        4 LOADK                            R2 K1 [""]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SetIconSearch"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["SetHoveredIcon"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_10:
        0 DUPTABLE                         R1 K3 [{"close", "setTerm", "setHoveredIcon"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["close"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 SETTABLEKS                       R2 R1 K1 ["setTerm"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U0
       14 SETTABLEKS                       R2 R1 K2 ["setHoveredIcon"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R4 K11 ["Localization"]
       36 GETTABLEKS                       R7 R3 K12 ["Style"]
       38 GETTABLEKS                       R7 R7 K13 ["Stylizer"]
       40 GETTABLEKS                       R8 R3 K14 ["UI"]
       42 GETTABLEKS                       R9 R8 K15 ["Button"]
       44 GETTABLEKS                       R10 R8 K16 ["Pane"]
       46 GETTABLEKS                       R11 R8 K17 ["Tabs"]
       48 GETTABLEKS                       R12 R8 K18 ["SearchBar"]
       50 GETTABLEKS                       R13 R8 K19 ["TextLabel"]
       52 GETTABLEKS                       R14 R3 K20 ["Util"]
       54 GETTABLEKS                       R15 R14 K21 ["LayoutOrderIterator"]
       56 GETIMPORT                        R16 K4 [require]
       58 GETTABLEKS                       R17 R0 K22 ["Src"]
       60 GETTABLEKS                       R17 R17 K23 ["Actions"]
       62 CALL                             R16 1 1
       63 GETIMPORT                        R17 K4 [require]
       65 GETTABLEKS                       R18 R0 K22 ["Src"]
       67 GETTABLEKS                       R18 R18 K24 ["Components"]
       69 GETTABLEKS                       R18 R18 K25 ["Icon"]
       71 CALL                             R17 1 1
       72 GETIMPORT                        R18 K4 [require]
       74 GETTABLEKS                       R19 R0 K22 ["Src"]
       76 GETTABLEKS                       R19 R19 K26 ["Types"]
       78 CALL                             R18 1 1
       79 GETIMPORT                        R19 K4 [require]
       81 GETIMPORT                        R20 K1 [script]
       83 GETTABLEKS                       R20 R20 K27 ["IconsPage"]
       85 CALL                             R19 1 1
       86 GETIMPORT                        R20 K4 [require]
       88 GETIMPORT                        R21 K1 [script]
       90 GETTABLEKS                       R21 R21 K28 ["EmojiPage"]
       92 CALL                             R20 1 1
       93 GETIMPORT                        R21 K4 [require]
       95 GETIMPORT                        R22 K1 [script]
       97 GETTABLEKS                       R22 R22 K29 ["CustomPage"]
       99 CALL                             R21 1 1
      100 GETIMPORT                        R22 K4 [require]
      102 GETTABLEKS                       R23 R0 K22 ["Src"]
      104 GETTABLEKS                       R23 R23 K20 ["Util"]
      106 GETTABLEKS                       R23 R23 K30 ["TagEditorPluginPolicy"]
      108 CALL                             R22 1 1
      109 GETIMPORT                        R23 K32 [game]
      111 LOADK                            R25 K33 ["TagEditorLuobuIconFixes2"]
      112 LOADB                            R26 0
      113 NAMECALL                         R23 R23 K34 ["DefineFastFlag"]
      115 CALL                             R23 3 1
      116 GETTABLEKS                       R24 R1 K35 ["PureComponent"]
      118 LOADK                            R26 K36 ["IconPicker"]
      119 NAMECALL                         R24 R24 K37 ["extend"]
      121 CALL                             R24 2 1
      122 DUPCLOSURE                       R25 K38 [PROTO_2]
      123 SETTABLEKS                       R25 R24 K39 ["init"]
      125 DUPCLOSURE                       R25 K40 [PROTO_4]
      126 CAPTURE                          VAL R15
      127 CAPTURE                          VAL R19
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R21
      130 CAPTURE                          VAL R1
      131 CAPTURE                          VAL R10
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R13
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R11
      137 SETTABLEKS                       R25 R24 K41 ["render"]
      139 DUPCLOSURE                       R25 K42 [PROTO_5]
      140 CAPTURE                          VAL R23
      141 CAPTURE                          VAL R22
      142 SETTABLEKS                       R25 R24 K43 ["didMount"]
      144 MOVE                             R25 R5
      145 DUPTABLE                         R26 K44 [{"Localization", "Stylizer"}]
      146 SETTABLEKS                       R6 R26 K11 ["Localization"]
      148 SETTABLEKS                       R7 R26 K13 ["Stylizer"]
      150 CALL                             R25 1 1
      151 MOVE                             R26 R24
      152 CALL                             R25 1 1
      153 MOVE                             R24 R25
      154 DUPCLOSURE                       R25 K45 [PROTO_6]
      155 DUPCLOSURE                       R26 K46 [PROTO_10]
      156 CAPTURE                          VAL R16
      157 GETTABLEKS                       R27 R2 K47 ["connect"]
      159 MOVE                             R28 R25
      160 MOVE                             R29 R26
      161 CALL                             R27 2 1
      162 MOVE                             R28 R24
      163 CALL                             R27 1 1
      164 MOVE                             R24 R27
      165 RETURN                           R24 1
