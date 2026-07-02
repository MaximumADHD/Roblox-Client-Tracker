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
       16 GETTABLEKS                       R4 R1 K7 ["Semantic"]
       18 GETTABLEKS                       R4 R4 K4 ["Color"]
       20 GETTABLEKS                       R4 R4 K8 ["Common"]
       22 GETTABLEKS                       R4 R4 K9 ["Placeholder"]
       24 GETTABLEKS                       R5 R1 K10 ["Size"]
       26 GETTABLEKS                       R5 R5 K11 ["Size_100"]
       28 GETUPVAL                         R6 1
       29 GETTABLEKS                       R6 R6 K12 ["useState"]
       31 LOADB                            R7 0
       32 CALL                             R6 1 2
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R8 R8 K13 ["useCallback"]
       36 NEWCLOSURE                       R9 P0
       37 CAPTURE                          VAL R0
       38 NEWTABLE                         R10 0 1
       40 GETTABLEKS                       R11 R0 K14 ["isMultiLine"]
       42 SETLIST                          R10 R11 1 [1]
       44 CALL                             R8 2 1
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K13 ["useCallback"]
       48 NEWCLOSURE                       R10 P1
       49 CAPTURE                          VAL R7
       50 NEWTABLE                         R11 0 0
       52 CALL                             R9 2 1
       53 GETUPVAL                         R10 1
       54 GETTABLEKS                       R10 R10 K13 ["useCallback"]
       56 NEWCLOSURE                       R11 P2
       57 CAPTURE                          VAL R7
       58 NEWTABLE                         R12 0 0
       60 CALL                             R10 2 1
       61 GETUPVAL                         R11 1
       62 GETTABLEKS                       R11 R11 K15 ["createElement"]
       64 GETUPVAL                         R12 0
       65 GETTABLEKS                       R12 R12 K16 ["View"]
       67 DUPTABLE                         R13 K19 [{"tag", "LayoutOrder"}]
       68 NEWTABLE                         R14 8 0
       70 LOADB                            R15 1
       71 SETTABLEKS                       R15 R14 K20 ["col padding-small stroke-thick radius-medium clip bg-shift-100"]
       73 GETTABLEKS                       R15 R0 K14 ["isMultiLine"]
       75 SETTABLEKS                       R15 R14 K21 ["fill size-full-0"]
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
      106 GETUPVAL                         R15 1
      107 GETTABLEKS                       R15 R15 K15 ["createElement"]
      109 LOADK                            R16 K27 ["ScrollingFrame"]
      110 DUPTABLE                         R17 K39 [{["CanvasSize"], ["AutomaticCanvasSize"], ["ScrollingDirection"], ["VerticalScrollBarInset"], ["ScrollBarImageColor3"], ["ScrollBarThickness"], ["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0}]
      111 GETUPVAL                         R18 2
      112 SETTABLEKS                       R18 R17 K29 ["CanvasSize"]
      114 GETIMPORT                        R18 K43 [Enum.AutomaticSize.Y]
      116 SETTABLEKS                       R18 R17 K30 ["AutomaticCanvasSize"]
      118 GETIMPORT                        R18 K44 [Enum.ScrollingDirection.Y]
      120 SETTABLEKS                       R18 R17 K31 ["ScrollingDirection"]
      122 GETIMPORT                        R18 K47 [Enum.ScrollBarInset.ScrollBar]
      124 SETTABLEKS                       R18 R17 K32 ["VerticalScrollBarInset"]
      126 GETTABLEKS                       R18 R4 K48 ["Color3"]
      128 SETTABLEKS                       R18 R17 K33 ["ScrollBarImageColor3"]
      130 SETTABLEKS                       R5 R17 K34 ["ScrollBarThickness"]
      132 GETTABLEKS                       R19 R0 K14 ["isMultiLine"]
      134 JUMPIFNOT                        R19 ; [+2]
      135 GETUPVAL                         R18 3
      136 JUMP                             ; [+1]
      137 GETUPVAL                         R18 4
      138 SETTABLEKS                       R18 R17 K10 ["Size"]
      140 DUPTABLE                         R18 K51 [{"TextBox", "UIFlexItem"}]
      141 GETUPVAL                         R19 1
      142 GETTABLEKS                       R19 R19 K15 ["createElement"]
      144 LOADK                            R20 K49 ["TextBox"]
      145 NEWTABLE                         R21 32 0
      147 GETUPVAL                         R22 5
      148 SETTABLEKS                       R22 R21 K10 ["Size"]
      150 GETIMPORT                        R22 K43 [Enum.AutomaticSize.Y]
      152 SETTABLEKS                       R22 R21 K41 ["AutomaticSize"]
      154 GETTABLEKS                       R22 R0 K14 ["isMultiLine"]
      156 SETTABLEKS                       R22 R21 K52 ["MultiLine"]
      158 GETTABLEKS                       R22 R0 K53 ["text"]
      160 SETTABLEKS                       R22 R21 K54 ["Text"]
      162 GETTABLEKS                       R23 R0 K55 ["isDisabled"]
      164 NOT                              R22 R23
      165 SETTABLEKS                       R22 R21 K56 ["TextEditable"]
      167 LOADB                            R22 0
      168 SETTABLEKS                       R22 R21 K57 ["TextWrapped"]
      170 GETIMPORT                        R22 K60 [Enum.TextTruncate.None]
      172 SETTABLEKS                       R22 R21 K58 ["TextTruncate"]
      174 GETIMPORT                        R22 K63 [Enum.TextXAlignment.Left]
      176 SETTABLEKS                       R22 R21 K61 ["TextXAlignment"]
      178 GETIMPORT                        R22 K66 [Enum.TextYAlignment.Top]
      180 SETTABLEKS                       R22 R21 K64 ["TextYAlignment"]
      182 LOADB                            R22 0
      183 SETTABLEKS                       R22 R21 K67 ["ClearTextOnFocus"]
      185 LOADB                            R22 1
      186 SETTABLEKS                       R22 R21 K68 ["ClipsDescendants"]
      188 LOADB                            R22 0
      189 SETTABLEKS                       R22 R21 K69 ["RichText"]
      191 LOADB                            R22 1
      192 SETTABLEKS                       R22 R21 K70 ["Interactable"]
      194 GETTABLEKS                       R22 R2 K71 ["Font"]
      196 SETTABLEKS                       R22 R21 K71 ["Font"]
      198 GETTABLEKS                       R22 R2 K72 ["FontSize"]
      200 SETTABLEKS                       R22 R21 K73 ["TextSize"]
      202 GETTABLEKS                       R22 R2 K74 ["LineHeight"]
      204 SETTABLEKS                       R22 R21 K74 ["LineHeight"]
      206 GETTABLEKS                       R22 R3 K48 ["Color3"]
      208 SETTABLEKS                       R22 R21 K75 ["TextColor3"]
      210 LOADN                            R22 1
      211 SETTABLEKS                       R22 R21 K35 ["BackgroundTransparency"]
      213 LOADN                            R22 0
      214 SETTABLEKS                       R22 R21 K37 ["BorderSizePixel"]
      216 GETUPVAL                         R22 1
      217 GETTABLEKS                       R22 R22 K76 ["Change"]
      219 GETTABLEKS                       R22 R22 K54 ["Text"]
      221 SETTABLE                         R8 R21 R22
      222 GETUPVAL                         R22 1
      223 GETTABLEKS                       R22 R22 K77 ["Event"]
      225 GETTABLEKS                       R22 R22 K78 ["Focused"]
      227 SETTABLE                         R9 R21 R22
      228 GETUPVAL                         R22 1
      229 GETTABLEKS                       R22 R22 K77 ["Event"]
      231 GETTABLEKS                       R22 R22 K79 ["FocusLost"]
      233 SETTABLE                         R10 R21 R22
      234 CALL                             R19 2 1
      235 SETTABLEKS                       R19 R18 K49 ["TextBox"]
      237 GETUPVAL                         R19 1
      238 GETTABLEKS                       R19 R19 K15 ["createElement"]
      240 LOADK                            R20 K50 ["UIFlexItem"]
      241 DUPTABLE                         R21 K81 [{"FlexMode"}]
      242 GETIMPORT                        R22 K84 [Enum.UIFlexMode.Fill]
      244 SETTABLEKS                       R22 R21 K80 ["FlexMode"]
      246 CALL                             R19 2 1
      247 SETTABLEKS                       R19 R18 K50 ["UIFlexItem"]
      249 CALL                             R15 3 1
      250 SETTABLEKS                       R15 R14 K27 ["ScrollingFrame"]
      252 CALL                             R11 3 -1
      253 RETURN                           R11 -1

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
