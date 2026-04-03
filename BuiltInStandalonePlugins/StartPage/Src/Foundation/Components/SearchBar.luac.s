PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["IsPlaceholder"]
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["Cell cannot be a placeholder here"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K4 ["Id"]
       11 JUMPIFNOT                        R1 ; [+49]
       12 GETTABLEKS                       R1 R0 K5 ["RootPlaceId"]
       14 JUMPIFNOT                        R1 ; [+46]
       15 GETUPVAL                         R1 0
       16 JUMPIF                           R1 ; [+2]
       17 GETUPVAL                         R1 1
       18 JUMPIFNOT                        R1 ; [+25]
       19 GETUPVAL                         R1 2
       20 GETUPVAL                         R2 3
       21 NAMECALL                         R2 R2 K6 ["GetUserId"]
       23 CALL                             R2 1 1
       24 GETTABLEKS                       R3 R0 K4 ["Id"]
       26 GETTABLEKS                       R4 R0 K5 ["RootPlaceId"]
       28 GETTABLEKS                       R5 R0 K5 ["RootPlaceId"]
       30 GETUPVAL                         R7 4
       31 GETTABLEKS                       R6 R7 K7 ["showVerifyAge"]
       33 GETUPVAL                         R8 4
       34 GETTABLEKS                       R7 R8 K8 ["showAgeRestricted"]
       36 GETTABLEKS                       R9 R0 K10 ["IsTeamCreateEnabled"]
       38 ORK                              R8 R9 K9 [False]
       39 GETUPVAL                         R9 5
       40 GETUPVAL                         R10 6
       41 GETUPVAL                         R11 7
       42 CALL                             R1 10 0
       43 RETURN                           R0 0
       44 GETUPVAL                         R1 8
       45 GETUPVAL                         R2 3
       46 NAMECALL                         R2 R2 K6 ["GetUserId"]
       48 CALL                             R2 1 1
       49 GETTABLEKS                       R3 R0 K4 ["Id"]
       51 GETTABLEKS                       R4 R0 K5 ["RootPlaceId"]
       53 GETUPVAL                         R6 4
       54 GETTABLEKS                       R5 R6 K7 ["showVerifyAge"]
       56 GETUPVAL                         R7 4
       57 GETTABLEKS                       R6 R7 K8 ["showAgeRestricted"]
       59 CALL                             R1 5 0
       60 RETURN                           R0 0
       61 GETTABLEKS                       R1 R0 K11 ["FilePath"]
       63 JUMPIFNOT                        R1 ; [+7]
       64 GETUPVAL                         R1 9
       65 GETTABLEKS                       R3 R0 K11 ["FilePath"]
       67 LOADB                            R4 0
       68 NAMECALL                         R1 R1 K12 ["openLocalFile"]
       70 CALL                             R1 3 0
       71 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 GETUPVAL                         R5 2
        7 JUMPIF                           R5 ; [+2]
        8 GETUPVAL                         R5 3
        9 JUMPIFNOT                        R5 ; [+15]
       10 GETUPVAL                         R6 4
       11 GETTABLEKS                       R5 R6 K0 ["getDialogManager"]
       13 CALL                             R5 0 1
       14 MOVE                             R2 R5
       15 GETUPVAL                         R5 5
       16 NAMECALL                         R5 R5 K1 ["use"]
       18 CALL                             R5 1 1
       19 MOVE                             R4 R5
       20 GETUPVAL                         R6 4
       21 GETTABLEKS                       R5 R6 K2 ["getActionsBridge"]
       23 CALL                             R5 0 1
       24 MOVE                             R3 R5
       25 GETUPVAL                         R6 6
       26 GETTABLEKS                       R5 R6 K3 ["createElement"]
       28 GETUPVAL                         R6 7
       29 GETUPVAL                         R7 8
       30 MOVE                             R8 R0
       31 DUPTABLE                         R9 K5 [{"OnClick"}]
       32 NEWCLOSURE                       R10 P0
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          UPVAL U9
       36 CAPTURE                          UPVAL U10
       37 CAPTURE                          VAL R1
       38 CAPTURE                          REF R3
       39 CAPTURE                          REF R2
       40 CAPTURE                          REF R4
       41 CAPTURE                          UPVAL U11
       42 CAPTURE                          UPVAL U12
       43 SETTABLEKS                       R10 R9 K4 ["OnClick"]
       45 CALL                             R7 2 1
       46 CALL                             R5 2 -1
       47 CLOSEUPVALS                      R2
       48 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["PointingHand"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["createElement"]
        8 GETUPVAL                         R4 3
        9 DUPTABLE                         R5 K7 [{"LayoutOrder", "onActivated", "tag", "onStateChanged", "testId"}]
       10 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       12 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       14 GETTABLEKS                       R6 R0 K3 ["onActivated"]
       16 SETTABLEKS                       R6 R5 K3 ["onActivated"]
       18 LOADK                            R6 K8 ["auto-xy padding-small radius-circle"]
       19 SETTABLEKS                       R6 R5 K4 ["tag"]
       21 SETTABLEKS                       R1 R5 K5 ["onStateChanged"]
       23 LOADK                            R6 K9 ["--start-page-SearchBar-ClearButton"]
       24 SETTABLEKS                       R6 R5 K6 ["testId"]
       26 GETUPVAL                         R7 4
       27 JUMPIFNOT                        R7 ; [+25]
       28 GETUPVAL                         R7 2
       29 GETTABLEKS                       R6 R7 K1 ["createElement"]
       31 GETUPVAL                         R7 5
       32 DUPTABLE                         R8 K13 [{"name", "size", "style"}]
       33 GETUPVAL                         R10 6
       34 GETTABLEKS                       R9 R10 K14 ["XSmall"]
       36 SETTABLEKS                       R9 R8 K10 ["name"]
       38 GETUPVAL                         R10 7
       39 GETTABLEKS                       R9 R10 K15 ["Medium"]
       41 SETTABLEKS                       R9 R8 K11 ["size"]
       43 GETTABLEKS                       R11 R2 K16 ["Color"]
       45 GETTABLEKS                       R10 R11 K17 ["Content"]
       47 GETTABLEKS                       R9 R10 K18 ["Emphasis"]
       49 SETTABLEKS                       R9 R8 K12 ["style"]
       51 CALL                             R6 2 1
       52 JUMP                             ; [+9]
       53 GETUPVAL                         R7 2
       54 GETTABLEKS                       R6 R7 K1 ["createElement"]
       56 GETUPVAL                         R7 8
       57 DUPTABLE                         R8 K19 [{"tag"}]
       58 LOADK                            R9 K20 ["StartPage-CancelIcon"]
       59 SETTABLEKS                       R9 R8 K4 ["tag"]
       61 CALL                             R6 2 1
       62 CALL                             R3 3 -1
       63 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K0 ["current"]
        8 GETTABLEKS                       R0 R1 K1 ["CaptureFocus"]
       10 JUMPIFNOT                        R0 ; [+17]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R0 R1 K2 ["IsFocused"]
       14 JUMPIFNOT                        R0 ; [+7]
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R0 R1 K0 ["current"]
       18 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R0 R1 K0 ["current"]
       25 NAMECALL                         R0 R0 K3 ["ReleaseFocus"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnFocused"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["OnFocused"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["OnTextChanged"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["OnTextChanged"]
        7 GETTABLEKS                       R2 R0 K1 ["Text"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 CALL                             R3 0 1
        8 GETUPVAL                         R4 3
        9 LOADNIL                          R5
       10 CALL                             R4 1 1
       11 GETUPVAL                         R5 4
       12 LOADK                            R6 K1 ["fill size-full gui-object-defaults text-body-medium content-emphasis text-align-x-left padding-x-small data-testid=--start-page-SearchBar-TextBox"]
       13 CALL                             R5 1 1
       14 GETUPVAL                         R6 5
       15 NEWCLOSURE                       R7 P0
       16 CAPTURE                          VAL R4
       17 CAPTURE                          VAL R0
       18 NEWTABLE                         R8 0 0
       20 CALL                             R6 2 0
       21 GETUPVAL                         R7 6
       22 GETTABLEKS                       R6 R7 K2 ["createElement"]
       24 GETUPVAL                         R7 7
       25 DUPTABLE                         R8 K7 [{"Position", "Size", "LayoutOrder", "tag"}]
       26 GETTABLEKS                       R9 R0 K3 ["Position"]
       28 SETTABLEKS                       R9 R8 K3 ["Position"]
       30 GETTABLEKS                       R9 R0 K4 ["Size"]
       32 SETTABLEKS                       R9 R8 K4 ["Size"]
       34 GETTABLEKS                       R9 R0 K5 ["LayoutOrder"]
       36 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       38 LOADK                            R9 K8 ["row align-y-center padding-x-small text-truncate-end"]
       39 SETTABLEKS                       R9 R8 K6 ["tag"]
       41 DUPTABLE                         R9 K12 [{"MagnifyingGlass", "TextInputArea", "ClearButton"}]
       42 GETUPVAL                         R11 8
       43 JUMPIFNOT                        R11 ; [+29]
       44 GETUPVAL                         R11 6
       45 GETTABLEKS                       R10 R11 K2 ["createElement"]
       47 GETUPVAL                         R11 9
       48 DUPTABLE                         R12 K16 [{"name", "size", "style", "LayoutOrder"}]
       49 GETUPVAL                         R14 10
       50 GETTABLEKS                       R13 R14 K9 ["MagnifyingGlass"]
       52 SETTABLEKS                       R13 R12 K13 ["name"]
       54 GETUPVAL                         R14 11
       55 GETTABLEKS                       R13 R14 K17 ["Medium"]
       57 SETTABLEKS                       R13 R12 K14 ["size"]
       59 GETTABLEKS                       R15 R3 K18 ["Color"]
       61 GETTABLEKS                       R14 R15 K19 ["Content"]
       63 GETTABLEKS                       R13 R14 K20 ["Emphasis"]
       65 SETTABLEKS                       R13 R12 K15 ["style"]
       67 MOVE                             R13 R2
       68 CALL                             R13 0 1
       69 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       71 CALL                             R10 2 1
       72 JUMP                             ; [+16]
       73 GETUPVAL                         R11 6
       74 GETTABLEKS                       R10 R11 K2 ["createElement"]
       76 GETUPVAL                         R11 12
       77 DUPTABLE                         R12 K22 [{"LayoutOrder", "Image", "tag"}]
       78 MOVE                             R13 R2
       79 CALL                             R13 0 1
       80 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       82 LOADK                            R13 K23 ["rbxasset://studio_svg_textures/Lua/StartPage/Dark/Large/Search.png"]
       83 SETTABLEKS                       R13 R12 K21 ["Image"]
       85 LOADK                            R13 K24 ["size-500 content-emphasis"]
       86 SETTABLEKS                       R13 R12 K6 ["tag"]
       88 CALL                             R10 2 1
       89 SETTABLEKS                       R10 R9 K9 ["MagnifyingGlass"]
       91 GETUPVAL                         R11 6
       92 GETTABLEKS                       R10 R11 K2 ["createElement"]
       94 LOADK                            R11 K25 ["TextBox"]
       95 NEWTABLE                         R12 8 0
       97 GETTABLEKS                       R13 R0 K26 ["Text"]
       99 SETTABLEKS                       R13 R12 K26 ["Text"]
      101 LOADK                            R15 K27 ["Plugin"]
      102 LOADK                            R16 K28 ["Search"]
      103 NAMECALL                         R13 R1 K29 ["getText"]
      105 CALL                             R13 3 1
      106 SETTABLEKS                       R13 R12 K30 ["PlaceholderText"]
      108 LOADB                            R13 1
      109 SETTABLEKS                       R13 R12 K31 ["ClearTextOnFocus"]
      111 SETTABLEKS                       R4 R12 K32 ["ref"]
      113 GETUPVAL                         R15 6
      114 GETTABLEKS                       R14 R15 K33 ["Event"]
      116 GETTABLEKS                       R13 R14 K34 ["Focused"]
      118 NEWCLOSURE                       R14 P1
      119 CAPTURE                          VAL R0
      120 SETTABLE                         R14 R12 R13
      121 GETUPVAL                         R15 6
      122 GETTABLEKS                       R14 R15 K35 ["Change"]
      124 GETTABLEKS                       R13 R14 K26 ["Text"]
      126 NEWCLOSURE                       R14 P2
      127 CAPTURE                          VAL R0
      128 SETTABLE                         R14 R12 R13
      129 MOVE                             R13 R2
      130 CALL                             R13 0 1
      131 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      133 GETUPVAL                         R14 6
      134 GETTABLEKS                       R13 R14 K36 ["Tag"]
      136 SETTABLE                         R5 R12 R13
      137 CALL                             R10 2 1
      138 SETTABLEKS                       R10 R9 K10 ["TextInputArea"]
      140 GETTABLEKS                       R11 R0 K26 ["Text"]
      142 JUMPIFEQKS                       R11 K37 [""] ; [+16]
      144 GETUPVAL                         R11 6
      145 GETTABLEKS                       R10 R11 K2 ["createElement"]
      147 GETUPVAL                         R11 13
      148 DUPTABLE                         R12 K39 [{"LayoutOrder", "onActivated"}]
      149 MOVE                             R13 R2
      150 CALL                             R13 0 1
      151 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      153 GETTABLEKS                       R13 R0 K40 ["OnCleared"]
      155 SETTABLEKS                       R13 R12 K38 ["onActivated"]
      157 CALL                             R10 2 1
      158 JUMP                             ; [+1]
      159 LOADNIL                          R10
      160 SETTABLEKS                       R10 R9 K11 ["ClearButton"]
      162 CALL                             R6 3 -1
      163 RETURN                           R6 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["SearchInput"]
        6 GETTABLEKS                       R1 R2 K2 ["query"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["SearchInput"]
        3 GETTABLEKS                       R1 R2 K1 ["setCurrentQuery"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["SearchInput"]
        3 GETTABLEKS                       R0 R1 K1 ["setCurrentQuery"]
        5 LOADK                            R1 K2 [""]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETUPVAL                         R3 2
        7 LOADN                            R4 0
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 3
       10 CALL                             R5 0 1
       11 GETUPVAL                         R6 2
       12 GETTABLEKS                       R8 R0 K1 ["SearchInput"]
       14 GETTABLEKS                       R7 R8 K2 ["query"]
       16 CALL                             R6 1 2
       17 GETUPVAL                         R8 4
       18 GETUPVAL                         R9 5
       19 MOVE                             R10 R7
       20 LOADK                            R11 K3 [0.2]
       21 CALL                             R9 2 -1
       22 CALL                             R8 -1 1
       23 GETUPVAL                         R9 6
       24 NEWCLOSURE                       R10 P0
       25 CAPTURE                          VAL R8
       26 CAPTURE                          VAL R0
       27 NEWTABLE                         R11 0 1
       29 GETTABLEKS                       R13 R0 K1 ["SearchInput"]
       31 GETTABLEKS                       R12 R13 K2 ["query"]
       33 SETLIST                          R11 R12 1 [1]
       35 CALL                             R9 2 0
       36 LOADB                            R9 0
       37 LENGTH                           R10 R6
       38 LOADN                            R11 2
       39 JUMPIFNOTLT                      R11 R10 ; [+6]
       41 LOADN                            R10 0
       42 JUMPIFLT                         R10 R3 ; [+2]
       44 LOADB                            R9 0 +1
       45 LOADB                            R9 1
       46 GETUPVAL                         R11 7
       47 GETTABLEKS                       R10 R11 K4 ["createElement"]
       49 GETUPVAL                         R11 8
       50 DUPTABLE                         R12 K10 [{"Size", "Position", "sizeConstraint", "testId", "tag"}]
       51 GETTABLEKS                       R13 R0 K5 ["Size"]
       53 SETTABLEKS                       R13 R12 K5 ["Size"]
       55 GETTABLEKS                       R13 R0 K6 ["Position"]
       57 SETTABLEKS                       R13 R12 K6 ["Position"]
       59 DUPTABLE                         R13 K12 [{"MaxSize"}]
       60 GETIMPORT                        R14 K15 [Vector2.new]
       62 LOADN                            R15 108
       63 LOADN                            R16 188
       64 CALL                             R14 2 1
       65 SETTABLEKS                       R14 R13 K11 ["MaxSize"]
       67 SETTABLEKS                       R13 R12 K7 ["sizeConstraint"]
       69 LOADK                            R13 K16 ["--start-page-SearchBar-Dropdown"]
       70 SETTABLEKS                       R13 R12 K8 ["testId"]
       72 LOADK                            R13 K17 ["col bg-surface-200 anchor-top-center radius-medium stroke-default auto-y"]
       73 SETTABLEKS                       R13 R12 K9 ["tag"]
       75 DUPTABLE                         R13 K20 [{"SearchInput", "Border", "Results"}]
       76 GETUPVAL                         R15 7
       77 GETTABLEKS                       R14 R15 K4 ["createElement"]
       79 GETUPVAL                         R15 8
       80 DUPTABLE                         R16 K21 [{"tag"}]
       81 LOADK                            R17 K22 ["padding-y-small auto-y size-full-0"]
       82 SETTABLEKS                       R17 R16 K9 ["tag"]
       84 GETUPVAL                         R18 7
       85 GETTABLEKS                       R17 R18 K4 ["createElement"]
       87 GETUPVAL                         R18 9
       88 DUPTABLE                         R19 K28 [{"Size", "OnTextChanged", "OnCleared", "IsFocused", "Text", "LayoutOrder"}]
       89 GETIMPORT                        R20 K30 [UDim2.new]
       91 LOADN                            R21 1
       92 LOADN                            R22 0
       93 LOADN                            R23 0
       94 GETTABLEKS                       R25 R5 K5 ["Size"]
       96 GETTABLEKS                       R24 R25 K31 ["Size_900"]
       98 CALL                             R20 4 1
       99 SETTABLEKS                       R20 R19 K5 ["Size"]
      101 NEWCLOSURE                       R20 P1
      102 CAPTURE                          VAL R0
      103 SETTABLEKS                       R20 R19 K23 ["OnTextChanged"]
      105 NEWCLOSURE                       R20 P2
      106 CAPTURE                          VAL R0
      107 SETTABLEKS                       R20 R19 K24 ["OnCleared"]
      109 LOADB                            R20 1
      110 SETTABLEKS                       R20 R19 K25 ["IsFocused"]
      112 GETTABLEKS                       R21 R0 K1 ["SearchInput"]
      114 GETTABLEKS                       R20 R21 K2 ["query"]
      116 SETTABLEKS                       R20 R19 K26 ["Text"]
      118 LOADN                            R20 1
      119 SETTABLEKS                       R20 R19 K27 ["LayoutOrder"]
      121 CALL                             R17 2 -1
      122 CALL                             R14 -1 1
      123 SETTABLEKS                       R14 R13 K1 ["SearchInput"]
      125 GETUPVAL                         R15 7
      126 GETTABLEKS                       R14 R15 K4 ["createElement"]
      128 GETUPVAL                         R15 10
      129 DUPTABLE                         R16 K32 [{"LayoutOrder"}]
      130 LOADN                            R17 2
      131 SETTABLEKS                       R17 R16 K27 ["LayoutOrder"]
      133 CALL                             R14 2 1
      134 SETTABLEKS                       R14 R13 K18 ["Border"]
      136 GETUPVAL                         R15 7
      137 GETTABLEKS                       R14 R15 K4 ["createElement"]
      139 GETUPVAL                         R15 8
      140 DUPTABLE                         R16 K33 [{"LayoutOrder", "tag"}]
      141 LOADN                            R17 3
      142 SETTABLEKS                       R17 R16 K27 ["LayoutOrder"]
      144 LOADK                            R17 K34 ["padding-top-large padding-bottom-small col gap-xsmall auto-y size-full-0"]
      145 SETTABLEKS                       R17 R16 K9 ["tag"]
      147 DUPTABLE                         R17 K38 [{"ResultPreview", "SeeMoreLink", "Fallback"}]
      148 GETUPVAL                         R19 7
      149 GETTABLEKS                       R18 R19 K4 ["createElement"]
      151 GETUPVAL                         R19 8
      152 DUPTABLE                         R20 K40 [{"Size", "Visible", "LayoutOrder"}]
      153 GETIMPORT                        R21 K30 [UDim2.new]
      155 LOADN                            R22 1
      156 LOADN                            R23 0
      157 LOADN                            R24 0
      158 FASTCALL2K                       MATH_MIN R3 K42 ; [+5]
      160 MOVE                             R27 R3
      161 LOADK                            R28 K42 [6]
      162 GETIMPORT                        R26 K45 [math.min]
      164 CALL                             R26 2 1
      165 MULK                             R25 R26 K41 [90]
      166 CALL                             R21 4 1
      167 SETTABLEKS                       R21 R20 K5 ["Size"]
      169 SETTABLEKS                       R9 R20 K39 ["Visible"]
      171 MOVE                             R21 R2
      172 CALL                             R21 0 1
      173 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      175 GETUPVAL                         R22 7
      176 GETTABLEKS                       R21 R22 K4 ["createElement"]
      178 GETTABLEKS                       R22 R0 K46 ["ResultComponent"]
      180 DUPTABLE                         R23 K53 [{"DisplayComponent", "MaxCount", "OnItemCountUpdated", "CellComponent", "CellSize", "BaseQuery"}]
      181 GETUPVAL                         R24 11
      182 SETTABLEKS                       R24 R23 K47 ["DisplayComponent"]
      184 LOADN                            R24 6
      185 SETTABLEKS                       R24 R23 K48 ["MaxCount"]
      187 NEWCLOSURE                       R24 P3
      188 CAPTURE                          VAL R4
      189 SETTABLEKS                       R24 R23 K49 ["OnItemCountUpdated"]
      191 GETUPVAL                         R24 12
      192 SETTABLEKS                       R24 R23 K50 ["CellComponent"]
      194 GETIMPORT                        R24 K30 [UDim2.new]
      196 LOADN                            R25 1
      197 LOADN                            R26 0
      198 LOADN                            R27 0
      199 LOADN                            R28 90
      200 CALL                             R24 4 1
      201 SETTABLEKS                       R24 R23 K51 ["CellSize"]
      203 GETUPVAL                         R24 13
      204 GETTABLEKS                       R25 R0 K52 ["BaseQuery"]
      206 DUPTABLE                         R26 K55 [{"search"}]
      207 SETTABLEKS                       R6 R26 K54 ["search"]
      209 CALL                             R24 2 1
      210 SETTABLEKS                       R24 R23 K52 ["BaseQuery"]
      212 CALL                             R21 2 -1
      213 CALL                             R18 -1 1
      214 SETTABLEKS                       R18 R17 K35 ["ResultPreview"]
      216 JUMPIFNOT                        R9 ; [+36]
      217 LOADN                            R19 6
      218 JUMPIFNOTLT                      R19 R3 ; [+34]
      220 GETUPVAL                         R19 7
      221 GETTABLEKS                       R18 R19 K4 ["createElement"]
      223 GETUPVAL                         R19 14
      224 DUPTABLE                         R20 K58 [{"LayoutOrder", "Text", "onActivated", "stateLayer", "tag"}]
      225 MOVE                             R21 R2
      226 CALL                             R21 0 1
      227 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      229 LOADK                            R23 K59 ["Plugin"]
      230 LOADK                            R24 K60 ["SeeAllMatchingExperiences"]
      231 NAMECALL                         R21 R1 K61 ["getText"]
      233 CALL                             R21 3 1
      234 SETTABLEKS                       R21 R20 K26 ["Text"]
      236 GETTABLEKS                       R21 R0 K62 ["MoreExperiencesRequested"]
      238 SETTABLEKS                       R21 R20 K56 ["onActivated"]
      240 DUPTABLE                         R21 K64 [{"affordance"}]
      241 GETUPVAL                         R23 15
      242 GETTABLEKS                       R22 R23 K65 ["None"]
      244 SETTABLEKS                       R22 R21 K63 ["affordance"]
      246 SETTABLEKS                       R21 R20 K57 ["stateLayer"]
      248 LOADK                            R21 K66 ["size-full-0 auto-y padding-x-large padding-y-small text-align-x-left text-label-medium content-system-emphasis"]
      249 SETTABLEKS                       R21 R20 K9 ["tag"]
      251 CALL                             R18 2 1
      252 JUMP                             ; [+1]
      253 LOADNIL                          R18
      254 SETTABLEKS                       R18 R17 K36 ["SeeMoreLink"]
      256 JUMPIF                           R9 ; [+37]
      257 GETUPVAL                         R19 7
      258 GETTABLEKS                       R18 R19 K4 ["createElement"]
      260 GETUPVAL                         R19 14
      261 DUPTABLE                         R20 K67 [{"LayoutOrder", "tag", "Text", "testId"}]
      262 LOADN                            R21 4
      263 SETTABLEKS                       R21 R20 K27 ["LayoutOrder"]
      265 LOADK                            R21 K68 ["padding-large auto-y size-full-0 text-align-x-center"]
      266 SETTABLEKS                       R21 R20 K9 ["tag"]
      268 LENGTH                           R22 R6
      269 LOADN                            R23 2
      270 JUMPIFNOTLT                      R23 R22 ; [+7]
      272 LOADK                            R23 K59 ["Plugin"]
      273 LOADK                            R24 K69 ["SearchBar.NoMatchingExperiencesFound"]
      274 NAMECALL                         R21 R1 K61 ["getText"]
      276 CALL                             R21 3 1
      277 JUMP                             ; [+9]
      278 LOADK                            R23 K59 ["Plugin"]
      279 LOADK                            R24 K70 ["SearchBar.InsufficientQueryLength"]
      280 DUPTABLE                         R25 K72 [{"length"}]
      281 LOADN                            R26 2
      282 SETTABLEKS                       R26 R25 K71 ["length"]
      284 NAMECALL                         R21 R1 K61 ["getText"]
      286 CALL                             R21 4 1
      287 SETTABLEKS                       R21 R20 K26 ["Text"]
      289 LOADK                            R21 K73 ["--start-page-SearchBar-Fallback"]
      290 SETTABLEKS                       R21 R20 K8 ["testId"]
      292 CALL                             R18 2 1
      293 JUMP                             ; [+1]
      294 LOADNIL                          R18
      295 SETTABLEKS                       R18 R17 K37 ["Fallback"]
      297 CALL                             R14 3 1
      298 SETTABLEKS                       R14 R13 K19 ["Results"]
      300 CALL                             R10 3 -1
      301 RETURN                           R10 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["ease"]
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADN                            R3 148
        6 JUMP                             ; [+1]
        7 LOADN                            R3 119
        8 DUPTABLE                         R4 K3 [{"duration", "easingStyle"}]
        9 LOADK                            R5 K4 [0.15]
       10 SETTABLEKS                       R5 R4 K1 ["duration"]
       12 GETIMPORT                        R5 K8 [Enum.EasingStyle.Quad]
       14 SETTABLEKS                       R5 R4 K2 ["easingStyle"]
       16 CALL                             R2 2 -1
       17 CALL                             R1 -1 0
       18 GETUPVAL                         R1 2
       19 LOADB                            R2 1
       20 CALL                             R1 1 0
       21 GETUPVAL                         R1 3
       22 MOVE                             R2 R0
       23 CALL                             R1 1 0
       24 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 0
        4 LOADB                            R4 0
        5 CALL                             R3 1 2
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R5 R6 K0 ["useAnimatedBinding"]
        9 LOADN                            R6 79
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R4
       12 CALL                             R5 2 2
       13 GETUPVAL                         R8 2
       14 GETTABLEKS                       R7 R8 K1 ["useCallback"]
       16 NEWCLOSURE                       R8 P1
       17 CAPTURE                          VAL R6
       18 CAPTURE                          UPVAL U1
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R2
       21 NEWTABLE                         R9 0 0
       23 CALL                             R7 2 1
       24 MOVE                             R8 R5
       25 OR                               R9 R1 R3
       26 MOVE                             R10 R7
       27 RETURN                           R8 3

PROTO_15:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 0
        3 MOVE                             R3 R0
        4 LOADN                            R4 0
        5 LOADN                            R5 0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 [""]
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADB                            R1 1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 JUMPIFEQKS                       R0 K0 [""] ; [+9]
        6 GETUPVAL                         R0 2
        7 LOADK                            R1 K0 [""]
        8 CALL                             R0 1 0
        9 GETUPVAL                         R1 3
       10 GETTABLEKS                       R0 R1 K1 ["OnSearchRequested"]
       12 LOADK                            R1 K0 [""]
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 GETUPVAL                         R0 1
        4 LOADK                            R1 K0 [""]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R0 R1 K1 ["OnSearchRequested"]
        9 LOADK                            R1 K0 [""]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnSearchRequested"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 3
        9 LOADB                            R1 0
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADK                            R3 K0 [""]
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 1
        6 LOADNIL                          R5
        7 CALL                             R4 1 2
        8 GETUPVAL                         R6 1
        9 LOADNIL                          R7
       10 CALL                             R6 1 2
       11 GETUPVAL                         R8 2
       12 MOVE                             R9 R4
       13 CALL                             R8 1 3
       14 GETUPVAL                         R12 3
       15 GETTABLEKS                       R11 R12 K1 ["createElement"]
       17 GETUPVAL                         R12 4
       18 DUPTABLE                         R13 K5 [{"LayoutOrder", "Size", "Position"}]
       19 GETTABLEKS                       R14 R0 K2 ["LayoutOrder"]
       21 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       23 GETIMPORT                        R14 K8 [UDim2.new]
       25 LOADN                            R15 0
       26 LOADN                            R16 79
       27 LOADN                            R17 0
       28 GETTABLEKS                       R19 R1 K3 ["Size"]
       30 GETTABLEKS                       R18 R19 K9 ["Size_900"]
       32 CALL                             R14 4 1
       33 SETTABLEKS                       R14 R13 K3 ["Size"]
       35 GETTABLEKS                       R14 R0 K4 ["Position"]
       37 SETTABLEKS                       R14 R13 K4 ["Position"]
       39 DUPTABLE                         R14 K12 [{"UnfocusedSearchBar", "FocusedContent"}]
       40 JUMPIF                           R9 ; [+50]
       41 GETUPVAL                         R16 3
       42 GETTABLEKS                       R15 R16 K1 ["createElement"]
       44 GETUPVAL                         R16 4
       45 DUPTABLE                         R17 K16 [{"tag", "onAbsoluteSizeChanged", "onAbsolutePositionChanged"}]
       46 LOADK                            R18 K17 ["size-full stroke-default radius-large"]
       47 SETTABLEKS                       R18 R17 K13 ["tag"]
       49 NEWCLOSURE                       R18 P0
       50 CAPTURE                          VAL R5
       51 SETTABLEKS                       R18 R17 K14 ["onAbsoluteSizeChanged"]
       53 NEWCLOSURE                       R18 P1
       54 CAPTURE                          VAL R7
       55 SETTABLEKS                       R18 R17 K15 ["onAbsolutePositionChanged"]
       57 GETUPVAL                         R19 3
       58 GETTABLEKS                       R18 R19 K1 ["createElement"]
       60 GETUPVAL                         R19 5
       61 DUPTABLE                         R20 K22 [{"Size", "OnFocused", "OnCleared", "IsFocused", "Text"}]
       62 GETIMPORT                        R21 K8 [UDim2.new]
       64 LOADN                            R22 1
       65 LOADN                            R23 0
       66 LOADN                            R24 1
       67 LOADN                            R25 0
       68 CALL                             R21 4 1
       69 SETTABLEKS                       R21 R20 K3 ["Size"]
       71 NEWCLOSURE                       R21 P2
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R10
       74 SETTABLEKS                       R21 R20 K18 ["OnFocused"]
       76 NEWCLOSURE                       R21 P3
       77 CAPTURE                          VAL R10
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R0
       81 SETTABLEKS                       R21 R20 K19 ["OnCleared"]
       83 LOADB                            R21 0
       84 SETTABLEKS                       R21 R20 K20 ["IsFocused"]
       86 SETTABLEKS                       R2 R20 K21 ["Text"]
       88 CALL                             R18 2 -1
       89 CALL                             R15 -1 1
       90 JUMP                             ; [+1]
       91 LOADNIL                          R15
       92 SETTABLEKS                       R15 R14 K10 ["UnfocusedSearchBar"]
       94 JUMPIFNOT                        R9 ; [+117]
       95 JUMPIFNOT                        R4 ; [+116]
       96 GETUPVAL                         R16 3
       97 GETTABLEKS                       R15 R16 K1 ["createElement"]
       99 GETUPVAL                         R16 6
      100 LOADNIL                          R17
      101 GETUPVAL                         R19 3
      102 GETTABLEKS                       R18 R19 K1 ["createElement"]
      104 GETUPVAL                         R19 7
      105 NEWTABLE                         R20 4 0
      107 DUPCLOSURE                       R21 K23 [PROTO_20]
      108 SETTABLEKS                       R21 R20 K24 ["OnFocusLost"]
      110 LOADK                            R21 K25 [999999]
      111 SETTABLEKS                       R21 R20 K26 ["Priority"]
      113 GETUPVAL                         R22 3
      114 GETTABLEKS                       R21 R22 K27 ["Tag"]
      116 LOADK                            R22 K28 ["size-full"]
      117 SETTABLE                         R22 R20 R21
      118 DUPTABLE                         R21 K31 [{"DarkShadow", "Dropdown"}]
      119 GETUPVAL                         R23 3
      120 GETTABLEKS                       R22 R23 K1 ["createElement"]
      122 GETUPVAL                         R23 4
      123 DUPTABLE                         R24 K34 [{"onActivated", "stateLayer", "tag"}]
      124 NEWCLOSURE                       R25 P5
      125 CAPTURE                          VAL R10
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R0
      128 SETTABLEKS                       R25 R24 K32 ["onActivated"]
      130 DUPTABLE                         R25 K36 [{"affordance"}]
      131 GETUPVAL                         R27 8
      132 GETTABLEKS                       R26 R27 K37 ["None"]
      134 SETTABLEKS                       R26 R25 K35 ["affordance"]
      136 SETTABLEKS                       R25 R24 K33 ["stateLayer"]
      138 LOADK                            R25 K38 ["size-full bg-over-media-0"]
      139 SETTABLEKS                       R25 R24 K13 ["tag"]
      141 CALL                             R22 2 1
      142 SETTABLEKS                       R22 R21 K29 ["DarkShadow"]
      144 GETUPVAL                         R23 3
      145 GETTABLEKS                       R22 R23 K1 ["createElement"]
      147 GETUPVAL                         R23 9
      148 DUPTABLE                         R24 K44 [{"Size", "Position", "BaseQuery", "ResultComponent", "SetIsSearchBarFocused", "MoreExperiencesRequested", "SearchInput"}]
      149 GETUPVAL                         R27 10
      150 NAMECALL                         R25 R8 K45 ["map"]
      152 CALL                             R25 2 1
      153 SETTABLEKS                       R25 R24 K3 ["Size"]
      155 JUMPIFNOT                        R6 ; [+19]
      156 GETIMPORT                        R25 K8 [UDim2.new]
      158 LOADN                            R26 0
      159 GETTABLEKS                       R28 R6 K46 ["X"]
      161 GETTABLEKS                       R30 R4 K46 ["X"]
      163 DIVK                             R29 R30 K47 [2]
      164 ADD                              R27 R28 R29
      165 LOADN                            R28 0
      166 GETTABLEKS                       R30 R6 K48 ["Y"]
      168 GETTABLEKS                       R32 R1 K49 ["Padding"]
      170 GETTABLEKS                       R31 R32 K50 ["Small"]
      172 SUB                              R29 R30 R31
      173 CALL                             R25 4 1
      174 JUMP                             ; [+5]
      175 GETIMPORT                        R25 K52 [UDim2.fromScale]
      177 LOADN                            R26 0
      178 LOADN                            R27 0
      179 CALL                             R25 2 1
      180 SETTABLEKS                       R25 R24 K4 ["Position"]
      182 GETTABLEKS                       R25 R0 K39 ["BaseQuery"]
      184 SETTABLEKS                       R25 R24 K39 ["BaseQuery"]
      186 GETTABLEKS                       R25 R0 K40 ["ResultComponent"]
      188 SETTABLEKS                       R25 R24 K40 ["ResultComponent"]
      190 SETTABLEKS                       R10 R24 K41 ["SetIsSearchBarFocused"]
      192 NEWCLOSURE                       R25 P6
      193 CAPTURE                          VAL R0
      194 CAPTURE                          VAL R2
      195 CAPTURE                          VAL R3
      196 CAPTURE                          VAL R10
      197 SETTABLEKS                       R25 R24 K42 ["MoreExperiencesRequested"]
      199 DUPTABLE                         R25 K55 [{"query", "setCurrentQuery"}]
      200 SETTABLEKS                       R2 R25 K53 ["query"]
      202 SETTABLEKS                       R3 R25 K54 ["setCurrentQuery"]
      204 SETTABLEKS                       R25 R24 K43 ["SearchInput"]
      206 CALL                             R22 2 1
      207 SETTABLEKS                       R22 R21 K30 ["Dropdown"]
      209 CALL                             R18 3 -1
      210 CALL                             R15 -1 1
      211 JUMP                             ; [+1]
      212 LOADNIL                          R15
      213 SETTABLEKS                       R15 R14 K11 ["FocusedContent"]
      215 CALL                             R11 3 -1
      216 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useRef"]
       18 GETTABLEKS                       R4 R1 K10 ["useEffect"]
       20 GETTABLEKS                       R5 R1 K11 ["useContext"]
       22 GETIMPORT                        R6 K5 [require]
       24 GETTABLEKS                       R8 R0 K6 ["Packages"]
       26 GETTABLEKS                       R7 R8 K12 ["ReactOtter"]
       28 CALL                             R6 1 1
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R9 R0 K6 ["Packages"]
       33 GETTABLEKS                       R8 R9 K13 ["Dash"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R8 R7 K14 ["join"]
       38 GETIMPORT                        R9 K5 [require]
       40 GETTABLEKS                       R11 R0 K6 ["Packages"]
       42 GETTABLEKS                       R10 R11 K15 ["Framework"]
       44 CALL                             R9 1 1
       45 GETTABLEKS                       R11 R9 K16 ["Util"]
       47 GETTABLEKS                       R10 R11 K17 ["counter"]
       49 GETTABLEKS                       R12 R9 K18 ["ContextServices"]
       51 GETTABLEKS                       R11 R12 K19 ["Localization"]
       53 GETTABLEKS                       R12 R9 K20 ["UI"]
       55 GETTABLEKS                       R13 R12 K21 ["Grid"]
       57 GETTABLEKS                       R14 R12 K22 ["CaptureFocus"]
       59 GETIMPORT                        R15 K5 [require]
       61 GETTABLEKS                       R18 R0 K23 ["Src"]
       63 GETTABLEKS                       R17 R18 K16 ["Util"]
       65 GETTABLEKS                       R16 R17 K24 ["Foundation"]
       67 CALL                             R15 1 1
       68 GETTABLEKS                       R16 R15 K25 ["View"]
       70 GETTABLEKS                       R17 R15 K26 ["Text"]
       72 GETTABLEKS                       R18 R15 K27 ["Image"]
       74 GETTABLEKS                       R19 R15 K28 ["Icon"]
       76 GETTABLEKS                       R21 R15 K29 ["Enums"]
       78 GETTABLEKS                       R20 R21 K30 ["StateLayerAffordance"]
       80 GETTABLEKS                       R22 R15 K29 ["Enums"]
       82 GETTABLEKS                       R21 R22 K31 ["IconSize"]
       84 GETTABLEKS                       R23 R15 K29 ["Enums"]
       86 GETTABLEKS                       R22 R23 K32 ["IconName"]
       88 GETTABLEKS                       R24 R15 K33 ["Hooks"]
       90 GETTABLEKS                       R23 R24 K34 ["useTokens"]
       92 GETTABLEKS                       R25 R15 K33 ["Hooks"]
       94 GETTABLEKS                       R24 R25 K35 ["useStyleTags"]
       96 GETIMPORT                        R25 K5 [require]
       98 GETTABLEKS                       R28 R0 K23 ["Src"]
      100 GETTABLEKS                       R27 R28 K33 ["Hooks"]
      102 GETTABLEKS                       R26 R27 K36 ["useOnStateChangedCursor"]
      104 CALL                             R25 1 1
      105 GETIMPORT                        R26 K5 [require]
      107 GETTABLEKS                       R29 R0 K23 ["Src"]
      109 GETTABLEKS                       R28 R29 K37 ["Components"]
      111 GETTABLEKS                       R27 R28 K38 ["CursorScope"]
      113 CALL                             R26 1 1
      114 GETIMPORT                        R27 K5 [require]
      116 GETTABLEKS                       R31 R0 K23 ["Src"]
      118 GETTABLEKS                       R30 R31 K24 ["Foundation"]
      120 GETTABLEKS                       R29 R30 K37 ["Components"]
      122 GETTABLEKS                       R28 R29 K39 ["SearchResultRow"]
      124 CALL                             R27 1 1
      125 GETIMPORT                        R28 K5 [require]
      127 GETTABLEKS                       R32 R0 K23 ["Src"]
      129 GETTABLEKS                       R31 R32 K24 ["Foundation"]
      131 GETTABLEKS                       R30 R31 K37 ["Components"]
      133 GETTABLEKS                       R29 R30 K40 ["Separator"]
      135 CALL                             R28 1 1
      136 GETIMPORT                        R29 K5 [require]
      138 GETTABLEKS                       R32 R0 K23 ["Src"]
      140 GETTABLEKS                       R31 R32 K41 ["SharedFlags"]
      142 GETTABLEKS                       R30 R31 K42 ["getFFlagLuaStartPageBuilderIcons"]
      144 CALL                             R29 1 1
      145 CALL                             R29 0 1
      146 GETIMPORT                        R30 K5 [require]
      148 GETTABLEKS                       R33 R0 K23 ["Src"]
      150 GETTABLEKS                       R32 R33 K41 ["SharedFlags"]
      152 GETTABLEKS                       R31 R32 K43 ["getFFlagLuaStartPageTCAgeGatingCheck"]
      154 CALL                             R30 1 1
      155 CALL                             R30 0 1
      156 GETIMPORT                        R31 K5 [require]
      158 GETTABLEKS                       R34 R0 K23 ["Src"]
      160 GETTABLEKS                       R33 R34 K41 ["SharedFlags"]
      162 GETTABLEKS                       R32 R33 K44 ["getFFlagLuaStartPagePlaceSequestrationCheck"]
      164 CALL                             R31 1 1
      165 CALL                             R31 0 1
      166 GETIMPORT                        R32 K5 [require]
      168 GETTABLEKS                       R35 R0 K23 ["Src"]
      170 GETTABLEKS                       R34 R35 K16 ["Util"]
      172 GETTABLEKS                       R33 R34 K45 ["Dialogs"]
      174 CALL                             R32 1 1
      175 GETIMPORT                        R33 K5 [require]
      177 GETTABLEKS                       R36 R0 K23 ["Src"]
      179 GETTABLEKS                       R35 R36 K16 ["Util"]
      181 GETTABLEKS                       R34 R35 K46 ["debounce"]
      183 CALL                             R33 1 1
      184 GETIMPORT                        R34 K5 [require]
      186 GETTABLEKS                       R37 R0 K23 ["Src"]
      188 GETTABLEKS                       R36 R37 K16 ["Util"]
      190 GETTABLEKS                       R35 R36 K47 ["Services"]
      192 CALL                             R34 1 1
      193 GETTABLEKS                       R35 R34 K48 ["StartPageManager"]
      195 GETTABLEKS                       R36 R34 K49 ["StudioService"]
      197 GETIMPORT                        R37 K5 [require]
      199 GETTABLEKS                       R39 R0 K23 ["Src"]
      201 GETTABLEKS                       R38 R39 K50 ["Types"]
      203 CALL                             R37 1 1
      204 GETIMPORT                        R38 K5 [require]
      206 GETTABLEKS                       R41 R0 K23 ["Src"]
      208 GETTABLEKS                       R40 R41 K51 ["Network"]
      210 GETTABLEKS                       R39 R40 K52 ["DiscoverCreatorEligibilityAndOpenPlace"]
      212 CALL                             R38 1 1
      213 GETIMPORT                        R39 K5 [require]
      215 GETTABLEKS                       R42 R0 K23 ["Src"]
      217 GETTABLEKS                       R41 R42 K51 ["Network"]
      219 GETTABLEKS                       R40 R41 K53 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      221 CALL                             R39 1 1
      222 DUPCLOSURE                       R40 K54 [PROTO_1]
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R32
      225 CAPTURE                          VAL R31
      226 CAPTURE                          VAL R30
      227 CAPTURE                          VAL R34
      228 CAPTURE                          VAL R11
      229 CAPTURE                          VAL R1
      230 CAPTURE                          VAL R27
      231 CAPTURE                          VAL R8
      232 CAPTURE                          VAL R39
      233 CAPTURE                          VAL R36
      234 CAPTURE                          VAL R38
      235 CAPTURE                          VAL R35
      236 DUPCLOSURE                       R41 K55 [PROTO_2]
      237 CAPTURE                          VAL R25
      238 CAPTURE                          VAL R23
      239 CAPTURE                          VAL R1
      240 CAPTURE                          VAL R16
      241 CAPTURE                          VAL R29
      242 CAPTURE                          VAL R19
      243 CAPTURE                          VAL R22
      244 CAPTURE                          VAL R21
      245 CAPTURE                          VAL R18
      246 DUPCLOSURE                       R42 K56 [PROTO_6]
      247 CAPTURE                          VAL R11
      248 CAPTURE                          VAL R10
      249 CAPTURE                          VAL R23
      250 CAPTURE                          VAL R3
      251 CAPTURE                          VAL R24
      252 CAPTURE                          VAL R4
      253 CAPTURE                          VAL R1
      254 CAPTURE                          VAL R16
      255 CAPTURE                          VAL R29
      256 CAPTURE                          VAL R19
      257 CAPTURE                          VAL R22
      258 CAPTURE                          VAL R21
      259 CAPTURE                          VAL R18
      260 CAPTURE                          VAL R41
      261 DUPCLOSURE                       R43 K57 [PROTO_11]
      262 CAPTURE                          VAL R11
      263 CAPTURE                          VAL R10
      264 CAPTURE                          VAL R2
      265 CAPTURE                          VAL R23
      266 CAPTURE                          VAL R3
      267 CAPTURE                          VAL R33
      268 CAPTURE                          VAL R4
      269 CAPTURE                          VAL R1
      270 CAPTURE                          VAL R16
      271 CAPTURE                          VAL R42
      272 CAPTURE                          VAL R28
      273 CAPTURE                          VAL R13
      274 CAPTURE                          VAL R40
      275 CAPTURE                          VAL R8
      276 CAPTURE                          VAL R17
      277 CAPTURE                          VAL R20
      278 DUPCLOSURE                       R44 K58 [PROTO_14]
      279 CAPTURE                          VAL R2
      280 CAPTURE                          VAL R6
      281 CAPTURE                          VAL R1
      282 DUPCLOSURE                       R45 K59 [PROTO_15]
      283 DUPCLOSURE                       R46 K60 [PROTO_23]
      284 CAPTURE                          VAL R23
      285 CAPTURE                          VAL R2
      286 CAPTURE                          VAL R44
      287 CAPTURE                          VAL R1
      288 CAPTURE                          VAL R16
      289 CAPTURE                          VAL R42
      290 CAPTURE                          VAL R26
      291 CAPTURE                          VAL R14
      292 CAPTURE                          VAL R20
      293 CAPTURE                          VAL R43
      294 CAPTURE                          VAL R45
      295 RETURN                           R46 1
