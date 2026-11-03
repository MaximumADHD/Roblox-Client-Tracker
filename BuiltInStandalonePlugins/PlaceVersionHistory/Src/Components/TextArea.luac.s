PROTO_0:
        0 GETIMPORT                        R1 K2 [string.gsub]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["[\r\n]+"]
        4 LOADK                            R4 K4 [""]
        5 CALL                             R1 3 1
        6 RETURN                           R1 1

PROTO_1:
        0 LOADN                            R3 1
        1 LOADK                            R4 K0 [100000]
        2 FASTCALL3                        STRING_SUB R0 R3 R4
        4 MOVE                             R2 R0
        5 GETIMPORT                        R1 K3 [string.sub]
        7 CALL                             R1 3 1
        8 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Text"]
        2 LOADN                            R5 1
        3 LOADK                            R6 K1 [100000]
        4 FASTCALL3                        STRING_SUB R2 R5 R6
        6 MOVE                             R4 R2
        7 GETIMPORT                        R3 K4 [string.sub]
        9 CALL                             R3 3 1
       10 MOVE                             R1 R3
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K5 ["isMultiLine"]
       14 JUMPIFNOT                        R2 ; [+6]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K6 ["onTextChanged"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R2 0
       22 GETTABLEKS                       R2 R2 K6 ["onTextChanged"]
       24 GETIMPORT                        R4 K8 [string.gsub]
       26 MOVE                             R5 R1
       27 LOADK                            R6 K9 ["[\r\n]+"]
       28 LOADK                            R7 K10 [""]
       29 CALL                             R4 3 1
       30 MOVE                             R3 R4
       31 CALL                             R2 1 0
       32 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R2 K3 ["BodyMedium"]
       10 GETTABLEKS                       R3 R1 K4 ["Color"]
       12 GETTABLEKS                       R3 R3 K5 ["Content"]
       14 GETTABLEKS                       R3 R3 K6 ["Default"]
       16 GETTABLEKS                       R4 R1 K4 ["Color"]
       18 GETTABLEKS                       R4 R4 K7 ["Common"]
       20 GETTABLEKS                       R4 R4 K8 ["Shimmer"]
       22 GETTABLEKS                       R5 R1 K9 ["Size"]
       24 GETTABLEKS                       R5 R5 K10 ["Size_100"]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R6 R6 K11 ["useState"]
       29 LOADB                            R7 0
       30 CALL                             R6 1 2
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K12 ["useCallback"]
       34 NEWCLOSURE                       R9 P0
       35 CAPTURE                          VAL R0
       36 NEWTABLE                         R10 0 1
       38 GETTABLEKS                       R11 R0 K13 ["isMultiLine"]
       40 SETLIST                          R10 R11 1 [1]
       42 CALL                             R8 2 1
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R9 R9 K12 ["useCallback"]
       46 NEWCLOSURE                       R10 P1
       47 CAPTURE                          VAL R7
       48 NEWTABLE                         R11 0 0
       50 CALL                             R9 2 1
       51 GETUPVAL                         R10 1
       52 GETTABLEKS                       R10 R10 K12 ["useCallback"]
       54 NEWCLOSURE                       R11 P2
       55 CAPTURE                          VAL R7
       56 NEWTABLE                         R12 0 0
       58 CALL                             R10 2 1
       59 GETUPVAL                         R11 1
       60 GETTABLEKS                       R11 R11 K14 ["createElement"]
       62 GETUPVAL                         R12 0
       63 GETTABLEKS                       R12 R12 K15 ["View"]
       65 DUPTABLE                         R13 K18 [{"tag", "LayoutOrder"}]
       66 NEWTABLE                         R14 8 0
       68 LOADB                            R15 1
       69 SETTABLEKS                       R15 R14 K19 ["col padding-small stroke-thick radius-medium clip bg-shift-100"]
       71 GETTABLEKS                       R15 R0 K13 ["isMultiLine"]
       73 SETTABLEKS                       R15 R14 K20 ["fill size-full-0"]
       75 GETTABLEKS                       R16 R0 K13 ["isMultiLine"]
       77 NOT                              R15 R16
       78 SETTABLEKS                       R15 R14 K21 ["size-0-0 auto-xy"]
       80 GETTABLEKS                       R15 R0 K22 ["isError"]
       82 SETTABLEKS                       R15 R14 K23 ["stroke-system-alert"]
       84 GETTABLEKS                       R16 R0 K22 ["isError"]
       86 NOT                              R15 R16
       87 JUMPIFNOT                        R15 ; [+1]
       88 NOT                              R15 R6
       89 SETTABLEKS                       R15 R14 K24 ["stroke-default"]
       91 GETTABLEKS                       R17 R0 K22 ["isError"]
       93 NOT                              R16 R17
       94 AND                              R15 R16 R6
       95 SETTABLEKS                       R15 R14 K25 ["stroke-action-subtle"]
       97 SETTABLEKS                       R14 R13 K16 ["tag"]
       99 GETTABLEKS                       R14 R0 K17 ["LayoutOrder"]
      101 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      103 DUPTABLE                         R14 K27 [{"ScrollingFrame"}]
      104 GETUPVAL                         R15 1
      105 GETTABLEKS                       R15 R15 K14 ["createElement"]
      107 LOADK                            R16 K26 ["ScrollingFrame"]
      108 DUPTABLE                         R17 K38 [{["CanvasSize"], ["AutomaticCanvasSize"], ["ScrollingDirection"], ["VerticalScrollBarInset"], ["ScrollBarImageColor3"], ["ScrollBarThickness"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      109 GETUPVAL                         R18 2
      110 SETTABLEKS                       R18 R17 K28 ["CanvasSize"]
      112 GETIMPORT                        R18 K42 [Enum.AutomaticSize.Y]
      114 SETTABLEKS                       R18 R17 K29 ["AutomaticCanvasSize"]
      116 GETIMPORT                        R18 K43 [Enum.ScrollingDirection.Y]
      118 SETTABLEKS                       R18 R17 K30 ["ScrollingDirection"]
      120 GETIMPORT                        R18 K46 [Enum.ScrollBarInset.ScrollBar]
      122 SETTABLEKS                       R18 R17 K31 ["VerticalScrollBarInset"]
      124 GETTABLEKS                       R18 R4 K47 ["Color3"]
      126 SETTABLEKS                       R18 R17 K32 ["ScrollBarImageColor3"]
      128 SETTABLEKS                       R5 R17 K33 ["ScrollBarThickness"]
      130 GETTABLEKS                       R19 R0 K13 ["isMultiLine"]
      132 JUMPIFNOT                        R19 ; [+2]
      133 GETUPVAL                         R18 3
      134 JUMP                             ; [+1]
      135 GETUPVAL                         R18 4
      136 SETTABLEKS                       R18 R17 K9 ["Size"]
      138 DUPTABLE                         R18 K50 [{"TextBox", "UIFlexItem"}]
      139 GETUPVAL                         R19 1
      140 GETTABLEKS                       R19 R19 K14 ["createElement"]
      142 LOADK                            R20 K48 ["TextBox"]
      143 NEWTABLE                         R21 32 0
      145 GETUPVAL                         R22 5
      146 SETTABLEKS                       R22 R21 K9 ["Size"]
      148 GETIMPORT                        R22 K42 [Enum.AutomaticSize.Y]
      150 SETTABLEKS                       R22 R21 K40 ["AutomaticSize"]
      152 GETTABLEKS                       R22 R0 K13 ["isMultiLine"]
      154 SETTABLEKS                       R22 R21 K51 ["MultiLine"]
      156 GETTABLEKS                       R22 R0 K52 ["text"]
      158 SETTABLEKS                       R22 R21 K53 ["Text"]
      160 GETTABLEKS                       R23 R0 K54 ["isDisabled"]
      162 NOT                              R22 R23
      163 SETTABLEKS                       R22 R21 K55 ["TextEditable"]
      165 LOADB                            R22 0
      166 SETTABLEKS                       R22 R21 K56 ["TextWrapped"]
      168 GETIMPORT                        R22 K59 [Enum.TextTruncate.None]
      170 SETTABLEKS                       R22 R21 K57 ["TextTruncate"]
      172 GETIMPORT                        R22 K62 [Enum.TextXAlignment.Left]
      174 SETTABLEKS                       R22 R21 K60 ["TextXAlignment"]
      176 GETIMPORT                        R22 K65 [Enum.TextYAlignment.Top]
      178 SETTABLEKS                       R22 R21 K63 ["TextYAlignment"]
      180 LOADB                            R22 0
      181 SETTABLEKS                       R22 R21 K66 ["ClearTextOnFocus"]
      183 LOADB                            R22 1
      184 SETTABLEKS                       R22 R21 K67 ["ClipsDescendants"]
      186 LOADB                            R22 0
      187 SETTABLEKS                       R22 R21 K68 ["RichText"]
      189 LOADB                            R22 1
      190 SETTABLEKS                       R22 R21 K69 ["Interactable"]
      192 GETUPVAL                         R23 6
      193 JUMPIFNOT                        R23 ; [+2]
      194 LOADNIL                          R22
      195 JUMP                             ; [+2]
      196 GETTABLEKS                       R22 R2 K70 ["Font"]
      198 SETTABLEKS                       R22 R21 K70 ["Font"]
      200 GETUPVAL                         R23 6
      201 JUMPIFNOT                        R23 ; [+5]
      202 GETUPVAL                         R22 7
      203 GETTABLEKS                       R23 R2 K70 ["Font"]
      205 CALL                             R22 1 1
      206 JUMP                             ; [+1]
      207 LOADNIL                          R22
      208 SETTABLEKS                       R22 R21 K71 ["FontFace"]
      210 GETTABLEKS                       R22 R2 K72 ["FontSize"]
      212 SETTABLEKS                       R22 R21 K73 ["TextSize"]
      214 GETTABLEKS                       R22 R2 K74 ["LineHeight"]
      216 SETTABLEKS                       R22 R21 K74 ["LineHeight"]
      218 GETTABLEKS                       R22 R3 K47 ["Color3"]
      220 SETTABLEKS                       R22 R21 K75 ["TextColor3"]
      222 LOADN                            R22 1
      223 SETTABLEKS                       R22 R21 K34 ["BackgroundTransparency"]
      225 LOADN                            R22 0
      226 SETTABLEKS                       R22 R21 K36 ["BorderSizePixel"]
      228 GETUPVAL                         R22 1
      229 GETTABLEKS                       R22 R22 K76 ["Change"]
      231 GETTABLEKS                       R22 R22 K53 ["Text"]
      233 SETTABLE                         R8 R21 R22
      234 GETUPVAL                         R22 1
      235 GETTABLEKS                       R22 R22 K77 ["Event"]
      237 GETTABLEKS                       R22 R22 K78 ["Focused"]
      239 SETTABLE                         R9 R21 R22
      240 GETUPVAL                         R22 1
      241 GETTABLEKS                       R22 R22 K77 ["Event"]
      243 GETTABLEKS                       R22 R22 K79 ["FocusLost"]
      245 SETTABLE                         R10 R21 R22
      246 CALL                             R19 2 1
      247 SETTABLEKS                       R19 R18 K48 ["TextBox"]
      249 GETUPVAL                         R19 1
      250 GETTABLEKS                       R19 R19 K14 ["createElement"]
      252 LOADK                            R20 K49 ["UIFlexItem"]
      253 DUPTABLE                         R21 K81 [{"FlexMode"}]
      254 GETIMPORT                        R22 K84 [Enum.UIFlexMode.Fill]
      256 SETTABLEKS                       R22 R21 K80 ["FlexMode"]
      258 CALL                             R19 2 1
      259 SETTABLEKS                       R19 R18 K49 ["UIFlexItem"]
      261 CALL                             R15 3 1
      262 SETTABLEKS                       R15 R14 K26 ["ScrollingFrame"]
      264 CALL                             R11 3 -1
      265 RETURN                           R11 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["View"]
        8 DUPTABLE                         R4 K6 [{["tag"], ["testId"] = "--text-area", ["LayoutOrder"]}]
        9 NEWTABLE                         R5 4 0
       11 LOADB                            R6 1
       12 SETTABLEKS                       R6 R5 K7 ["col gap-small"]
       14 GETTABLEKS                       R6 R0 K8 ["isMultiLine"]
       16 SETTABLEKS                       R6 R5 K9 ["fill size-full-0"]
       18 GETTABLEKS                       R7 R0 K8 ["isMultiLine"]
       20 NOT                              R6 R7
       21 SETTABLEKS                       R6 R5 K10 ["size-0-0 auto-xy"]
       23 SETTABLEKS                       R5 R4 K2 ["tag"]
       25 GETTABLEKS                       R5 R0 K5 ["LayoutOrder"]
       27 SETTABLEKS                       R5 R4 K5 ["LayoutOrder"]
       29 DUPTABLE                         R5 K14 [{"Label", "TextInput", "Hint"}]
       30 GETTABLEKS                       R6 R0 K15 ["label"]
       32 JUMPIFNOT                        R6 ; [+16]
       33 GETUPVAL                         R6 1
       34 GETTABLEKS                       R6 R6 K0 ["createElement"]
       36 GETUPVAL                         R7 2
       37 GETTABLEKS                       R7 R7 K16 ["Text"]
       39 DUPTABLE                         R8 K18 [{["tag"] = "size-0-0 auto-xy text-label-medium", ["Text"], ["LayoutOrder"]}]
       40 GETTABLEKS                       R9 R0 K15 ["label"]
       42 SETTABLEKS                       R9 R8 K16 ["Text"]
       44 MOVE                             R9 R1
       45 CALL                             R9 0 1
       46 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       48 CALL                             R6 2 1
       49 SETTABLEKS                       R6 R5 K11 ["Label"]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R6 R6 K0 ["createElement"]
       54 GETUPVAL                         R7 3
       55 DUPTABLE                         R8 K23 [{"text", "onTextChanged", "isMultiLine", "isError", "isDisabled", "LayoutOrder"}]
       56 GETTABLEKS                       R9 R0 K19 ["text"]
       58 SETTABLEKS                       R9 R8 K19 ["text"]
       60 GETTABLEKS                       R9 R0 K20 ["onTextChanged"]
       62 SETTABLEKS                       R9 R8 K20 ["onTextChanged"]
       64 GETTABLEKS                       R9 R0 K8 ["isMultiLine"]
       66 SETTABLEKS                       R9 R8 K8 ["isMultiLine"]
       68 GETTABLEKS                       R9 R0 K21 ["isError"]
       70 SETTABLEKS                       R9 R8 K21 ["isError"]
       72 GETTABLEKS                       R9 R0 K22 ["isDisabled"]
       74 SETTABLEKS                       R9 R8 K22 ["isDisabled"]
       76 MOVE                             R9 R1
       77 CALL                             R9 0 1
       78 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       80 CALL                             R6 2 1
       81 SETTABLEKS                       R6 R5 K12 ["TextInput"]
       83 GETTABLEKS                       R6 R0 K24 ["hint"]
       85 JUMPIFNOT                        R6 ; [+27]
       86 GETUPVAL                         R6 1
       87 GETTABLEKS                       R6 R6 K0 ["createElement"]
       89 GETUPVAL                         R7 2
       90 GETTABLEKS                       R7 R7 K16 ["Text"]
       92 DUPTABLE                         R8 K25 [{"tag", "Text", "LayoutOrder"}]
       93 NEWTABLE                         R9 2 0
       95 LOADB                            R10 1
       96 SETTABLEKS                       R10 R9 K26 ["size-0-0 auto-xy text-caption-small text-align-x-left text-align-y-top"]
       98 GETTABLEKS                       R10 R0 K21 ["isError"]
      100 SETTABLEKS                       R10 R9 K27 ["content-system-alert"]
      102 SETTABLEKS                       R9 R8 K2 ["tag"]
      104 GETTABLEKS                       R9 R0 K24 ["hint"]
      106 SETTABLEKS                       R9 R8 K16 ["Text"]
      108 MOVE                             R9 R1
      109 CALL                             R9 0 1
      110 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
      112 CALL                             R6 2 1
      113 SETTABLEKS                       R6 R5 K13 ["Hint"]
      115 CALL                             R2 3 -1
      116 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Utility"]
       30 GETTABLEKS                       R4 R4 K11 ["Flags"]
       32 GETTABLEKS                       R4 R4 K12 ["FoundationStudioFontFaceMigration"]
       34 GETTABLEKS                       R5 R3 K10 ["Utility"]
       36 GETTABLEKS                       R5 R5 K13 ["normalizeFontFace"]
       38 GETTABLEKS                       R6 R2 K14 ["createNextOrder"]
       40 GETIMPORT                        R7 K17 [UDim2.new]
       42 LOADN                            R8 1
       43 LOADN                            R9 0
       44 LOADN                            R10 0
       45 LOADN                            R11 0
       46 CALL                             R7 4 1
       47 GETIMPORT                        R8 K17 [UDim2.new]
       49 LOADN                            R9 1
       50 LOADN                            R10 0
       51 LOADN                            R11 1
       52 LOADN                            R12 0
       53 CALL                             R8 4 1
       54 GETIMPORT                        R9 K17 [UDim2.new]
       56 LOADN                            R10 1
       57 LOADN                            R11 0
       58 LOADN                            R12 0
       59 LOADN                            R13 17
       60 CALL                             R9 4 1
       61 GETIMPORT                        R10 K17 [UDim2.new]
       63 LOADN                            R11 1
       64 LOADN                            R12 0
       65 LOADN                            R13 0
       66 LOADN                            R14 0
       67 CALL                             R10 4 1
       68 DUPCLOSURE                       R11 K18 [PROTO_0]
       69 DUPCLOSURE                       R12 K19 [PROTO_1]
       70 DUPCLOSURE                       R13 K20 [PROTO_5]
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R9
       76 CAPTURE                          VAL R8
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R5
       79 DUPCLOSURE                       R14 K21 [PROTO_6]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R1
       82 CAPTURE                          VAL R3
       83 CAPTURE                          VAL R13
       84 RETURN                           R14 1
