PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["close"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["setHoveredIcon"]
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
        4 GETTABLEKS                       R4 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R4 K3 ["IconPicker"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K4 ["new"]
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
       24 GETTABLEKS                       R9 R0 K13 ["state"]
       26 GETTABLEKS                       R8 R9 K14 ["selectedTab"]
       28 GETTABLEKS                       R7 R8 K15 ["Key"]
       30 JUMPIFNOTEQKS                    R7 K16 ["Emoji"] ; [+3]
       32 GETUPVAL                         R6 2
       33 JUMP                             ; [+9]
       34 GETTABLEKS                       R9 R0 K13 ["state"]
       36 GETTABLEKS                       R8 R9 K14 ["selectedTab"]
       38 GETTABLEKS                       R7 R8 K15 ["Key"]
       40 JUMPIFNOTEQKS                    R7 K17 ["Custom"] ; [+2]
       42 GETUPVAL                         R6 3
       43 GETUPVAL                         R8 4
       44 GETTABLEKS                       R7 R8 K18 ["createElement"]
       46 GETUPVAL                         R8 5
       47 DUPTABLE                         R9 K22 [{"Layout", "LayoutOrder", "VerticalAlignment"}]
       48 GETIMPORT                        R10 K26 [Enum.FillDirection.Vertical]
       50 SETTABLEKS                       R10 R9 K19 ["Layout"]
       52 GETTABLEKS                       R10 R1 K20 ["LayoutOrder"]
       54 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       56 GETIMPORT                        R10 K28 [Enum.VerticalAlignment.Top]
       58 SETTABLEKS                       R10 R9 K21 ["VerticalAlignment"]
       60 DUPTABLE                         R10 K31 [{"TopPane", "SelectedPagePane"}]
       61 GETUPVAL                         R12 4
       62 GETTABLEKS                       R11 R12 K18 ["createElement"]
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
       84 GETUPVAL                         R16 4
       85 GETTABLEKS                       R15 R16 K18 ["createElement"]
       87 GETUPVAL                         R16 6
       88 DUPTABLE                         R17 K46 [{"LayoutOrder", "OnClick", "Size", "Style", "Text"}]
       89 NAMECALL                         R18 R4 K35 ["getNextOrder"]
       91 CALL                             R18 1 1
       92 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
       94 GETTABLEKS                       R18 R1 K47 ["close"]
       96 SETTABLEKS                       R18 R17 K43 ["OnClick"]
       98 GETTABLEKS                       R18 R3 K48 ["CancelButtonSize"]
      100 SETTABLEKS                       R18 R17 K32 ["Size"]
      102 LOADK                            R18 K49 ["Round"]
      103 SETTABLEKS                       R18 R17 K44 ["Style"]
      105 LOADK                            R20 K50 ["General"]
      106 LOADK                            R21 K38 ["Cancel"]
      107 NAMECALL                         R18 R2 K11 ["getText"]
      109 CALL                             R18 3 1
      110 SETTABLEKS                       R18 R17 K45 ["Text"]
      112 CALL                             R15 2 1
      113 SETTABLEKS                       R15 R14 K38 ["Cancel"]
      115 GETUPVAL                         R16 4
      116 GETTABLEKS                       R15 R16 K18 ["createElement"]
      118 GETUPVAL                         R16 7
      119 DUPTABLE                         R17 K51 [{"LayoutOrder", "Size", "Text"}]
      120 NAMECALL                         R18 R4 K35 ["getNextOrder"]
      122 CALL                             R18 1 1
      123 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      125 GETTABLEKS                       R18 R3 K52 ["TitleTextSize"]
      127 SETTABLEKS                       R18 R17 K32 ["Size"]
      129 SETTABLEKS                       R5 R17 K45 ["Text"]
      131 CALL                             R15 2 1
      132 SETTABLEKS                       R15 R14 K39 ["TitleText"]
      134 GETUPVAL                         R16 4
      135 GETTABLEKS                       R15 R16 K18 ["createElement"]
      137 GETUPVAL                         R16 5
      138 DUPTABLE                         R17 K53 [{"Layout", "LayoutOrder", "Size"}]
      139 GETIMPORT                        R18 K55 [Enum.FillDirection.Horizontal]
      141 SETTABLEKS                       R18 R17 K19 ["Layout"]
      143 NAMECALL                         R18 R4 K35 ["getNextOrder"]
      145 CALL                             R18 1 1
      146 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      148 GETTABLEKS                       R18 R3 K56 ["MiddlePaneSize"]
      150 SETTABLEKS                       R18 R17 K32 ["Size"]
      152 DUPTABLE                         R18 K59 [{"Icon", "SearchBarPane"}]
      153 GETUPVAL                         R20 4
      154 GETTABLEKS                       R19 R20 K18 ["createElement"]
      156 GETUPVAL                         R20 8
      157 DUPTABLE                         R21 K61 [{"LayoutOrder", "Name", "Size", "Style"}]
      158 NAMECALL                         R22 R4 K35 ["getNextOrder"]
      160 CALL                             R22 1 1
      161 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      163 GETTABLEKS                       R22 R1 K62 ["tagIcon"]
      165 SETTABLEKS                       R22 R21 K60 ["Name"]
      167 GETTABLEKS                       R22 R3 K63 ["PreviewIconSize"]
      169 SETTABLEKS                       R22 R21 K32 ["Size"]
      171 LOADK                            R22 K64 ["Preview"]
      172 SETTABLEKS                       R22 R21 K44 ["Style"]
      174 CALL                             R19 2 1
      175 SETTABLEKS                       R19 R18 K57 ["Icon"]
      177 GETUPVAL                         R20 4
      178 GETTABLEKS                       R19 R20 K18 ["createElement"]
      180 GETUPVAL                         R20 5
      181 DUPTABLE                         R21 K53 [{"Layout", "LayoutOrder", "Size"}]
      182 GETIMPORT                        R22 K26 [Enum.FillDirection.Vertical]
      184 SETTABLEKS                       R22 R21 K19 ["Layout"]
      186 NAMECALL                         R22 R4 K35 ["getNextOrder"]
      188 CALL                             R22 1 1
      189 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      191 GETTABLEKS                       R22 R3 K65 ["SearchBarPaneSize"]
      193 SETTABLEKS                       R22 R21 K32 ["Size"]
      195 DUPTABLE                         R22 K68 [{"SearchBar", "TextLabel"}]
      196 GETUPVAL                         R24 4
      197 GETTABLEKS                       R23 R24 K18 ["createElement"]
      199 GETUPVAL                         R24 9
      200 DUPTABLE                         R25 K71 [{"OnSearchRequested", "Size", "Style", "PlaceholderText"}]
      201 GETTABLEKS                       R26 R1 K72 ["setTerm"]
      203 SETTABLEKS                       R26 R25 K69 ["OnSearchRequested"]
      205 GETTABLEKS                       R26 R3 K73 ["SearchBarSize"]
      207 SETTABLEKS                       R26 R25 K32 ["Size"]
      209 LOADK                            R26 K74 ["Compact"]
      210 SETTABLEKS                       R26 R25 K44 ["Style"]
      212 LOADK                            R28 K50 ["General"]
      213 LOADK                            R29 K75 ["Search"]
      214 NAMECALL                         R26 R2 K11 ["getText"]
      216 CALL                             R26 3 1
      217 SETTABLEKS                       R26 R25 K70 ["PlaceholderText"]
      219 CALL                             R23 2 1
      220 SETTABLEKS                       R23 R22 K66 ["SearchBar"]
      222 GETUPVAL                         R24 4
      223 GETTABLEKS                       R23 R24 K18 ["createElement"]
      225 GETUPVAL                         R24 7
      226 DUPTABLE                         R25 K77 [{"Size", "Text", "TextXAlignment"}]
      227 GETTABLEKS                       R26 R3 K78 ["IconNameTextSize"]
      229 SETTABLEKS                       R26 R25 K32 ["Size"]
      231 GETTABLEKS                       R26 R1 K62 ["tagIcon"]
      233 SETTABLEKS                       R26 R25 K45 ["Text"]
      235 GETIMPORT                        R26 K80 [Enum.TextXAlignment.Left]
      237 SETTABLEKS                       R26 R25 K76 ["TextXAlignment"]
      239 CALL                             R23 2 1
      240 SETTABLEKS                       R23 R22 K67 ["TextLabel"]
      242 CALL                             R19 3 1
      243 SETTABLEKS                       R19 R18 K58 ["SearchBarPane"]
      245 CALL                             R15 3 1
      246 SETTABLEKS                       R15 R14 K40 ["MiddlePane"]
      248 GETUPVAL                         R16 4
      249 GETTABLEKS                       R15 R16 K18 ["createElement"]
      251 GETUPVAL                         R16 5
      252 DUPTABLE                         R17 K81 [{"LayoutOrder", "Size", "Style"}]
      253 NAMECALL                         R18 R4 K35 ["getNextOrder"]
      255 CALL                             R18 1 1
      256 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      258 GETTABLEKS                       R18 R3 K82 ["TabsPaneSize"]
      260 SETTABLEKS                       R18 R17 K32 ["Size"]
      262 LOADK                            R18 K83 ["SubtleBox"]
      263 SETTABLEKS                       R18 R17 K44 ["Style"]
      265 DUPTABLE                         R18 K85 [{"Tabs"}]
      266 GETUPVAL                         R20 4
      267 GETTABLEKS                       R19 R20 K18 ["createElement"]
      269 GETUPVAL                         R20 10
      270 DUPTABLE                         R21 K88 [{"OnTabSelected", "SelectedTab", "Tabs"}]
      271 NEWCLOSURE                       R22 P0
      272 CAPTURE                          VAL R0
      273 SETTABLEKS                       R22 R21 K86 ["OnTabSelected"]
      275 GETTABLEKS                       R23 R0 K13 ["state"]
      277 GETTABLEKS                       R22 R23 K14 ["selectedTab"]
      279 SETTABLEKS                       R22 R21 K87 ["SelectedTab"]
      281 GETTABLEKS                       R22 R0 K89 ["tabs"]
      283 SETTABLEKS                       R22 R21 K84 ["Tabs"]
      285 CALL                             R19 2 1
      286 SETTABLEKS                       R19 R18 K84 ["Tabs"]
      288 CALL                             R15 3 1
      289 SETTABLEKS                       R15 R14 K41 ["TabsPane"]
      291 CALL                             R11 3 1
      292 SETTABLEKS                       R11 R10 K29 ["TopPane"]
      294 GETUPVAL                         R12 4
      295 GETTABLEKS                       R11 R12 K18 ["createElement"]
      297 GETUPVAL                         R12 5
      298 DUPTABLE                         R13 K90 [{"LayoutOrder"}]
      299 NAMECALL                         R14 R4 K35 ["getNextOrder"]
      301 CALL                             R14 1 1
      302 SETTABLEKS                       R14 R13 K20 ["LayoutOrder"]
      304 DUPTABLE                         R14 K92 [{"SelectedPage"}]
      305 GETUPVAL                         R16 4
      306 GETTABLEKS                       R15 R16 K18 ["createElement"]
      308 MOVE                             R16 R6
      309 DUPTABLE                         R17 K96 [{"LayoutOrder", "Size", "tagName", "search", "closeFunc", "onHoverFunc"}]
      310 NAMECALL                         R18 R4 K35 ["getNextOrder"]
      312 CALL                             R18 1 1
      313 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      315 GETTABLEKS                       R18 R3 K97 ["SelectedPageSize"]
      317 SETTABLEKS                       R18 R17 K32 ["Size"]
      319 GETTABLEKS                       R18 R1 K12 ["tagName"]
      321 SETTABLEKS                       R18 R17 K12 ["tagName"]
      323 GETTABLEKS                       R18 R1 K93 ["search"]
      325 SETTABLEKS                       R18 R17 K93 ["search"]
      327 GETTABLEKS                       R18 R0 K94 ["closeFunc"]
      329 SETTABLEKS                       R18 R17 K94 ["closeFunc"]
      331 GETTABLEKS                       R18 R0 K95 ["onHoverFunc"]
      333 SETTABLEKS                       R18 R17 K95 ["onHoverFunc"]
      335 CALL                             R15 2 1
      336 SETTABLEKS                       R15 R14 K91 ["SelectedPage"]
      338 CALL                             R11 3 1
      339 SETTABLEKS                       R11 R10 K30 ["SelectedPagePane"]
      341 CALL                             R7 3 -1
      342 RETURN                           R7 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Localization"]
        4 GETUPVAL                         R2 0
        5 JUMPIFNOT                        R2 ; [+23]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["getAreCustomIconsAndEmojiAllowed"]
        9 CALL                             R2 0 1
       10 JUMPIF                           R2 ; [+18]
       11 NEWTABLE                         R2 0 1
       13 DUPTABLE                         R3 K5 [{"Key", "Label"}]
       14 LOADK                            R4 K6 ["Icons"]
       15 SETTABLEKS                       R4 R3 K3 ["Key"]
       17 LOADK                            R6 K7 ["IconPicker"]
       18 LOADK                            R7 K6 ["Icons"]
       19 NAMECALL                         R4 R1 K8 ["getText"]
       21 CALL                             R4 3 1
       22 SETTABLEKS                       R4 R3 K4 ["Label"]
       24 SETLIST                          R2 R3 1 [1]
       26 SETTABLEKS                       R2 R0 K9 ["tabs"]
       28 JUMP                             ; [+39]
       29 NEWTABLE                         R2 0 3
       31 DUPTABLE                         R3 K5 [{"Key", "Label"}]
       32 LOADK                            R4 K10 ["Emoji"]
       33 SETTABLEKS                       R4 R3 K3 ["Key"]
       35 LOADK                            R6 K7 ["IconPicker"]
       36 LOADK                            R7 K10 ["Emoji"]
       37 NAMECALL                         R4 R1 K8 ["getText"]
       39 CALL                             R4 3 1
       40 SETTABLEKS                       R4 R3 K4 ["Label"]
       42 DUPTABLE                         R4 K5 [{"Key", "Label"}]
       43 LOADK                            R5 K6 ["Icons"]
       44 SETTABLEKS                       R5 R4 K3 ["Key"]
       46 LOADK                            R7 K7 ["IconPicker"]
       47 LOADK                            R8 K6 ["Icons"]
       48 NAMECALL                         R5 R1 K8 ["getText"]
       50 CALL                             R5 3 1
       51 SETTABLEKS                       R5 R4 K4 ["Label"]
       53 DUPTABLE                         R5 K5 [{"Key", "Label"}]
       54 LOADK                            R6 K11 ["Custom"]
       55 SETTABLEKS                       R6 R5 K3 ["Key"]
       57 LOADK                            R8 K7 ["IconPicker"]
       58 LOADK                            R9 K11 ["Custom"]
       59 NAMECALL                         R6 R1 K8 ["getText"]
       61 CALL                             R6 3 1
       62 SETTABLEKS                       R6 R5 K4 ["Label"]
       64 SETLIST                          R2 R3 3 [1]
       66 SETTABLEKS                       R2 R0 K9 ["tabs"]
       68 DUPTABLE                         R4 K13 [{"selectedTab"}]
       69 GETTABLEKS                       R6 R0 K9 ["tabs"]
       71 GETTABLEN                        R5 R6 1
       72 SETTABLEKS                       R5 R4 K12 ["selectedTab"]
       74 NAMECALL                         R2 R0 K14 ["setState"]
       76 CALL                             R2 2 0
       77 RETURN                           R0 0

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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["ToggleIconPicker"]
        4 LOADK                            R2 K1 [""]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 0
        7 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["SetIconSearch"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["SetHoveredIcon"]
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
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["RoactRodux"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R5 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R5 K8 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K9 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K10 ["withContext"]
       34 GETTABLEKS                       R6 R4 K11 ["Localization"]
       36 GETTABLEKS                       R8 R3 K12 ["Style"]
       38 GETTABLEKS                       R7 R8 K13 ["Stylizer"]
       40 GETTABLEKS                       R8 R3 K14 ["UI"]
       42 GETTABLEKS                       R9 R8 K15 ["Button"]
       44 GETTABLEKS                       R10 R8 K16 ["Pane"]
       46 GETTABLEKS                       R11 R8 K17 ["Tabs"]
       48 GETTABLEKS                       R12 R8 K18 ["SearchBar"]
       50 GETTABLEKS                       R13 R8 K19 ["TextLabel"]
       52 GETTABLEKS                       R14 R3 K20 ["Util"]
       54 GETTABLEKS                       R15 R14 K21 ["LayoutOrderIterator"]
       56 GETIMPORT                        R16 K4 [require]
       58 GETTABLEKS                       R18 R0 K22 ["Src"]
       60 GETTABLEKS                       R17 R18 K23 ["Actions"]
       62 CALL                             R16 1 1
       63 GETIMPORT                        R17 K4 [require]
       65 GETTABLEKS                       R20 R0 K22 ["Src"]
       67 GETTABLEKS                       R19 R20 K24 ["Components"]
       69 GETTABLEKS                       R18 R19 K25 ["Icon"]
       71 CALL                             R17 1 1
       72 GETIMPORT                        R18 K4 [require]
       74 GETTABLEKS                       R20 R0 K22 ["Src"]
       76 GETTABLEKS                       R19 R20 K26 ["Types"]
       78 CALL                             R18 1 1
       79 GETIMPORT                        R19 K4 [require]
       81 GETIMPORT                        R21 K1 [script]
       83 GETTABLEKS                       R20 R21 K27 ["IconsPage"]
       85 CALL                             R19 1 1
       86 GETIMPORT                        R20 K4 [require]
       88 GETIMPORT                        R22 K1 [script]
       90 GETTABLEKS                       R21 R22 K28 ["EmojiPage"]
       92 CALL                             R20 1 1
       93 GETIMPORT                        R21 K4 [require]
       95 GETIMPORT                        R23 K1 [script]
       97 GETTABLEKS                       R22 R23 K29 ["CustomPage"]
       99 CALL                             R21 1 1
      100 GETIMPORT                        R22 K4 [require]
      102 GETTABLEKS                       R25 R0 K22 ["Src"]
      104 GETTABLEKS                       R24 R25 K20 ["Util"]
      106 GETTABLEKS                       R23 R24 K30 ["TagEditorPluginPolicy"]
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
