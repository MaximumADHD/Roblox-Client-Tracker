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
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R2 R3 K5 ["isMultiLine"]
       14 JUMPIFNOT                        R2 ; [+6]
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K6 ["onTextChanged"]
       18 MOVE                             R3 R1
       19 CALL                             R2 1 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K6 ["onTextChanged"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R3 R1 K2 ["Typography"]
        8 GETTABLEKS                       R2 R3 K3 ["BodyMedium"]
       10 GETTABLEKS                       R5 R1 K4 ["Color"]
       12 GETTABLEKS                       R4 R5 K5 ["Content"]
       14 GETTABLEKS                       R3 R4 K6 ["Default"]
       16 GETTABLEKS                       R7 R1 K7 ["Semantic"]
       18 GETTABLEKS                       R6 R7 K4 ["Color"]
       20 GETTABLEKS                       R5 R6 K8 ["Common"]
       22 GETTABLEKS                       R4 R5 K9 ["Placeholder"]
       24 GETTABLEKS                       R6 R1 K10 ["Size"]
       26 GETTABLEKS                       R5 R6 K11 ["Size_100"]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R6 R7 K12 ["useState"]
       31 LOADB                            R7 0
       32 CALL                             R6 1 2
       33 GETUPVAL                         R9 1
       34 GETTABLEKS                       R8 R9 K13 ["useCallback"]
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R10 0 1
       40 GETTABLEKS                       R11 R0 K14 ["isMultiLine"]
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R8 2 1
       45 GETUPVAL                         R10 1
       46 GETTABLEKS                       R9 R10 K13 ["useCallback"]
       48 NEWCLOSURE                       R10 P1
       49 CAPTURE                          VAL R7
       50 NEWTABLE                         R11 0 0
       52 CALL                             R9 2 1
       53 GETUPVAL                         R11 1
       54 GETTABLEKS                       R10 R11 K13 ["useCallback"]
       56 NEWCLOSURE                       R11 P2
       57 CAPTURE                          VAL R7
       58 NEWTABLE                         R12 0 0
       60 CALL                             R10 2 1
       61 GETUPVAL                         R12 1
       62 GETTABLEKS                       R11 R12 K15 ["createElement"]
       64 GETUPVAL                         R13 0
       65 GETTABLEKS                       R12 R13 K16 ["View"]
       67 DUPTABLE                         R13 K19 [{"tag", "LayoutOrder"}]
       68 NEWTABLE                         R14 8 0
       70 LOADB                            R15 1
       71 SETTABLEKS                       R15 R14 K20 ["col clip bg-shift-100 padding-small radius-medium stroke-thick"]
       73 GETTABLEKS                       R15 R0 K14 ["isMultiLine"]
       75 SETTABLEKS                       R15 R14 K21 ["size-full-0 fill"]
       77 GETTABLEKS                       R16 R0 K14 ["isMultiLine"]
       79 NOT                              R15 R16
       80 SETTABLEKS                       R15 R14 K22 ["size-0-0 auto-xy"]
       82 GETTABLEKS                       R15 R0 K23 ["isError"]
       84 SETTABLEKS                       R15 R14 K24 ["stroke-system-alert"]
       86 GETTABLEKS                       R16 R0 K23 ["isError"]
       88 NOT                              R15 R16
       89 JUMPIFNOT                        R15 ; [+1]
       90 NOT                              R15 R6
       91 SETTABLEKS                       R15 R14 K25 ["stroke-default"]
       93 GETTABLEKS                       R17 R0 K23 ["isError"]
       95 NOT                              R16 R17
       96 AND                              R15 R16 R6
       97 SETTABLEKS                       R15 R14 K26 ["stroke-action-subtle"]
       99 SETTABLEKS                       R14 R13 K17 ["tag"]
      101 GETTABLEKS                       R14 R0 K18 ["LayoutOrder"]
      103 SETTABLEKS                       R14 R13 K18 ["LayoutOrder"]
      105 DUPTABLE                         R14 K28 [{"ScrollingFrame"}]
      106 GETUPVAL                         R16 1
      107 GETTABLEKS                       R15 R16 K15 ["createElement"]
      109 LOADK                            R16 K27 ["ScrollingFrame"]
      110 DUPTABLE                         R17 K37 [{"CanvasSize", "AutomaticCanvasSize", "ScrollingDirection", "VerticalScrollBarInset", "ScrollBarImageColor3", "ScrollBarThickness", "Size", "BackgroundTransparency", "BorderSizePixel"}]
      111 GETUPVAL                         R18 2
      112 SETTABLEKS                       R18 R17 K29 ["CanvasSize"]
      114 GETIMPORT                        R18 K41 [Enum.AutomaticSize.Y]
      116 SETTABLEKS                       R18 R17 K30 ["AutomaticCanvasSize"]
      118 GETIMPORT                        R18 K42 [Enum.ScrollingDirection.Y]
      120 SETTABLEKS                       R18 R17 K31 ["ScrollingDirection"]
      122 GETIMPORT                        R18 K45 [Enum.ScrollBarInset.ScrollBar]
      124 SETTABLEKS                       R18 R17 K32 ["VerticalScrollBarInset"]
      126 GETTABLEKS                       R18 R4 K46 ["Color3"]
      128 SETTABLEKS                       R18 R17 K33 ["ScrollBarImageColor3"]
      130 SETTABLEKS                       R5 R17 K34 ["ScrollBarThickness"]
      132 GETTABLEKS                       R19 R0 K14 ["isMultiLine"]
      134 JUMPIFNOT                        R19 ; [+2]
      135 GETUPVAL                         R18 3
      136 JUMP                             ; [+1]
      137 GETUPVAL                         R18 4
      138 SETTABLEKS                       R18 R17 K10 ["Size"]
      140 LOADN                            R18 1
      141 SETTABLEKS                       R18 R17 K35 ["BackgroundTransparency"]
      143 LOADN                            R18 0
      144 SETTABLEKS                       R18 R17 K36 ["BorderSizePixel"]
      146 DUPTABLE                         R18 K49 [{"TextBox", "UIFlexItem"}]
      147 GETUPVAL                         R20 1
      148 GETTABLEKS                       R19 R20 K15 ["createElement"]
      150 LOADK                            R20 K47 ["TextBox"]
      151 NEWTABLE                         R21 32 0
      153 GETUPVAL                         R22 5
      154 SETTABLEKS                       R22 R21 K10 ["Size"]
      156 GETIMPORT                        R22 K41 [Enum.AutomaticSize.Y]
      158 SETTABLEKS                       R22 R21 K39 ["AutomaticSize"]
      160 GETTABLEKS                       R22 R0 K14 ["isMultiLine"]
      162 SETTABLEKS                       R22 R21 K50 ["MultiLine"]
      164 GETTABLEKS                       R22 R0 K51 ["text"]
      166 SETTABLEKS                       R22 R21 K52 ["Text"]
      168 GETTABLEKS                       R23 R0 K53 ["isDisabled"]
      170 NOT                              R22 R23
      171 SETTABLEKS                       R22 R21 K54 ["TextEditable"]
      173 LOADB                            R22 0
      174 SETTABLEKS                       R22 R21 K55 ["TextWrapped"]
      176 GETIMPORT                        R22 K58 [Enum.TextTruncate.None]
      178 SETTABLEKS                       R22 R21 K56 ["TextTruncate"]
      180 GETIMPORT                        R22 K61 [Enum.TextXAlignment.Left]
      182 SETTABLEKS                       R22 R21 K59 ["TextXAlignment"]
      184 GETIMPORT                        R22 K64 [Enum.TextYAlignment.Top]
      186 SETTABLEKS                       R22 R21 K62 ["TextYAlignment"]
      188 LOADB                            R22 0
      189 SETTABLEKS                       R22 R21 K65 ["ClearTextOnFocus"]
      191 LOADB                            R22 1
      192 SETTABLEKS                       R22 R21 K66 ["ClipsDescendants"]
      194 LOADB                            R22 0
      195 SETTABLEKS                       R22 R21 K67 ["RichText"]
      197 LOADB                            R22 1
      198 SETTABLEKS                       R22 R21 K68 ["Interactable"]
      200 GETTABLEKS                       R22 R2 K69 ["Font"]
      202 SETTABLEKS                       R22 R21 K69 ["Font"]
      204 GETTABLEKS                       R22 R2 K70 ["FontSize"]
      206 SETTABLEKS                       R22 R21 K71 ["TextSize"]
      208 GETTABLEKS                       R22 R2 K72 ["LineHeight"]
      210 SETTABLEKS                       R22 R21 K72 ["LineHeight"]
      212 GETTABLEKS                       R22 R3 K46 ["Color3"]
      214 SETTABLEKS                       R22 R21 K73 ["TextColor3"]
      216 LOADN                            R22 1
      217 SETTABLEKS                       R22 R21 K35 ["BackgroundTransparency"]
      219 LOADN                            R22 0
      220 SETTABLEKS                       R22 R21 K36 ["BorderSizePixel"]
      222 GETUPVAL                         R24 1
      223 GETTABLEKS                       R23 R24 K74 ["Change"]
      225 GETTABLEKS                       R22 R23 K52 ["Text"]
      227 SETTABLE                         R8 R21 R22
      228 GETUPVAL                         R24 1
      229 GETTABLEKS                       R23 R24 K75 ["Event"]
      231 GETTABLEKS                       R22 R23 K76 ["Focused"]
      233 SETTABLE                         R9 R21 R22
      234 GETUPVAL                         R24 1
      235 GETTABLEKS                       R23 R24 K75 ["Event"]
      237 GETTABLEKS                       R22 R23 K77 ["FocusLost"]
      239 SETTABLE                         R10 R21 R22
      240 CALL                             R19 2 1
      241 SETTABLEKS                       R19 R18 K47 ["TextBox"]
      243 GETUPVAL                         R20 1
      244 GETTABLEKS                       R19 R20 K15 ["createElement"]
      246 LOADK                            R20 K48 ["UIFlexItem"]
      247 DUPTABLE                         R21 K79 [{"FlexMode"}]
      248 GETIMPORT                        R22 K82 [Enum.UIFlexMode.Fill]
      250 SETTABLEKS                       R22 R21 K78 ["FlexMode"]
      252 CALL                             R19 2 1
      253 SETTABLEKS                       R19 R18 K48 ["UIFlexItem"]
      255 CALL                             R15 3 1
      256 SETTABLEKS                       R15 R14 K27 ["ScrollingFrame"]
      258 CALL                             R11 3 -1
      259 RETURN                           R11 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["View"]
        8 DUPTABLE                         R4 K5 [{"tag", "testId", "LayoutOrder"}]
        9 NEWTABLE                         R5 4 0
       11 LOADB                            R6 1
       12 SETTABLEKS                       R6 R5 K6 ["col gap-small"]
       14 GETTABLEKS                       R6 R0 K7 ["isMultiLine"]
       16 SETTABLEKS                       R6 R5 K8 ["size-full-0 fill"]
       18 GETTABLEKS                       R7 R0 K7 ["isMultiLine"]
       20 NOT                              R6 R7
       21 SETTABLEKS                       R6 R5 K9 ["size-0-0 auto-xy"]
       23 SETTABLEKS                       R5 R4 K2 ["tag"]
       25 LOADK                            R5 K10 ["--text-area"]
       26 SETTABLEKS                       R5 R4 K3 ["testId"]
       28 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       30 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       32 DUPTABLE                         R5 K14 [{"Label", "TextInput", "Hint"}]
       33 GETTABLEKS                       R6 R0 K15 ["label"]
       35 JUMPIFNOT                        R6 ; [+19]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K0 ["createElement"]
       39 GETUPVAL                         R8 2
       40 GETTABLEKS                       R7 R8 K16 ["Text"]
       42 DUPTABLE                         R8 K17 [{"tag", "Text", "LayoutOrder"}]
       43 LOADK                            R9 K18 ["size-0-0 auto-xy text-label-medium"]
       44 SETTABLEKS                       R9 R8 K2 ["tag"]
       46 GETTABLEKS                       R9 R0 K15 ["label"]
       48 SETTABLEKS                       R9 R8 K16 ["Text"]
       50 MOVE                             R9 R1
       51 CALL                             R9 0 1
       52 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       54 CALL                             R6 2 1
       55 SETTABLEKS                       R6 R5 K11 ["Label"]
       57 GETUPVAL                         R7 1
       58 GETTABLEKS                       R6 R7 K0 ["createElement"]
       60 GETUPVAL                         R7 3
       61 DUPTABLE                         R8 K23 [{"text", "onTextChanged", "isMultiLine", "isError", "isDisabled", "LayoutOrder"}]
       62 GETTABLEKS                       R9 R0 K19 ["text"]
       64 SETTABLEKS                       R9 R8 K19 ["text"]
       66 GETTABLEKS                       R9 R0 K20 ["onTextChanged"]
       68 SETTABLEKS                       R9 R8 K20 ["onTextChanged"]
       70 GETTABLEKS                       R9 R0 K7 ["isMultiLine"]
       72 SETTABLEKS                       R9 R8 K7 ["isMultiLine"]
       74 GETTABLEKS                       R9 R0 K21 ["isError"]
       76 SETTABLEKS                       R9 R8 K21 ["isError"]
       78 GETTABLEKS                       R9 R0 K22 ["isDisabled"]
       80 SETTABLEKS                       R9 R8 K22 ["isDisabled"]
       82 MOVE                             R9 R1
       83 CALL                             R9 0 1
       84 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       86 CALL                             R6 2 1
       87 SETTABLEKS                       R6 R5 K12 ["TextInput"]
       89 GETTABLEKS                       R6 R0 K24 ["hint"]
       91 JUMPIFNOT                        R6 ; [+27]
       92 GETUPVAL                         R7 1
       93 GETTABLEKS                       R6 R7 K0 ["createElement"]
       95 GETUPVAL                         R8 2
       96 GETTABLEKS                       R7 R8 K16 ["Text"]
       98 DUPTABLE                         R8 K17 [{"tag", "Text", "LayoutOrder"}]
       99 NEWTABLE                         R9 2 0
      101 LOADB                            R10 1
      102 SETTABLEKS                       R10 R9 K25 ["size-0-0 auto-xy text-caption-small text-align-x-left text-align-y-top"]
      104 GETTABLEKS                       R10 R0 K21 ["isError"]
      106 SETTABLEKS                       R10 R9 K26 ["content-system-alert"]
      108 SETTABLEKS                       R9 R8 K2 ["tag"]
      110 GETTABLEKS                       R9 R0 K24 ["hint"]
      112 SETTABLEKS                       R9 R8 K16 ["Text"]
      114 MOVE                             R9 R1
      115 CALL                             R9 0 1
      116 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
      118 CALL                             R6 2 1
      119 SETTABLEKS                       R6 R5 K13 ["Hint"]
      121 CALL                             R2 3 -1
      122 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceVersionHistory"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["createNextOrder"]
       30 GETIMPORT                        R5 K13 [UDim2.new]
       32 LOADN                            R6 1
       33 LOADN                            R7 0
       34 LOADN                            R8 0
       35 LOADN                            R9 0
       36 CALL                             R5 4 1
       37 GETIMPORT                        R6 K13 [UDim2.new]
       39 LOADN                            R7 1
       40 LOADN                            R8 0
       41 LOADN                            R9 1
       42 LOADN                            R10 0
       43 CALL                             R6 4 1
       44 GETIMPORT                        R7 K13 [UDim2.new]
       46 LOADN                            R8 1
       47 LOADN                            R9 0
       48 LOADN                            R10 0
       49 LOADN                            R11 17
       50 CALL                             R7 4 1
       51 GETIMPORT                        R8 K13 [UDim2.new]
       53 LOADN                            R9 1
       54 LOADN                            R10 0
       55 LOADN                            R11 0
       56 LOADN                            R12 0
       57 CALL                             R8 4 1
       58 DUPCLOSURE                       R9 K14 [PROTO_0]
       59 DUPCLOSURE                       R10 K15 [PROTO_1]
       60 DUPCLOSURE                       R11 K16 [PROTO_5]
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R5
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R7
       66 CAPTURE                          VAL R6
       67 DUPCLOSURE                       R12 K17 [PROTO_6]
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R11
       72 RETURN                           R12 1
