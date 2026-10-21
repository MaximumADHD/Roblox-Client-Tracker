PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["IsPlaceholder"]
        2 NOT                              R2 R3
        3 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        5 LOADK                            R3 K1 ["Cell cannot be a placeholder here"]
        6 GETIMPORT                        R1 K3 [assert]
        8 CALL                             R1 2 0
        9 GETTABLEKS                       R1 R0 K4 ["Id"]
       11 JUMPIFNOT                        R1 ; [+28]
       12 GETTABLEKS                       R1 R0 K5 ["RootPlaceId"]
       14 JUMPIFNOT                        R1 ; [+25]
       15 GETUPVAL                         R1 0
       16 GETUPVAL                         R2 1
       17 NAMECALL                         R2 R2 K6 ["GetUserId"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R0 K4 ["Id"]
       22 GETTABLEKS                       R4 R0 K5 ["RootPlaceId"]
       24 GETTABLEKS                       R5 R0 K5 ["RootPlaceId"]
       26 GETUPVAL                         R6 2
       27 GETTABLEKS                       R6 R6 K7 ["showVerifyAge"]
       29 GETUPVAL                         R7 2
       30 GETTABLEKS                       R7 R7 K8 ["showAgeRestricted"]
       32 GETTABLEKS                       R9 R0 K10 ["IsTeamCreateEnabled"]
       34 ORK                              R8 R9 K9 [False]
       35 GETUPVAL                         R9 3
       36 GETUPVAL                         R10 4
       37 GETUPVAL                         R11 5
       38 CALL                             R1 10 0
       39 RETURN                           R0 0
       40 GETTABLEKS                       R1 R0 K11 ["FilePath"]
       42 JUMPIFNOT                        R1 ; [+7]
       43 GETUPVAL                         R1 6
       44 GETTABLEKS                       R3 R0 K11 ["FilePath"]
       46 LOADB                            R4 0
       47 NAMECALL                         R1 R1 K12 ["openLocalFile"]
       49 CALL                             R1 3 0
       50 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 2
        4 GETTABLEKS                       R2 R2 K0 ["getDialogManager"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 3
        8 NAMECALL                         R3 R3 K1 ["use"]
       10 CALL                             R3 1 1
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R4 R4 K2 ["getActionsBridge"]
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R5 R5 K3 ["createElement"]
       18 GETUPVAL                         R6 5
       19 GETUPVAL                         R7 6
       20 MOVE                             R8 R0
       21 DUPTABLE                         R9 K5 [{"OnClick"}]
       22 NEWCLOSURE                       R10 P0
       23 CAPTURE                          UPVAL U7
       24 CAPTURE                          UPVAL U8
       25 CAPTURE                          VAL R1
       26 CAPTURE                          VAL R4
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 CAPTURE                          UPVAL U9
       30 SETTABLEKS                       R10 R9 K4 ["OnClick"]
       32 CALL                             R7 2 1
       33 CALL                             R5 2 -1
       34 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R2 K0 ["PointingHand"]
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 CALL                             R2 0 1
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["createElement"]
        8 GETUPVAL                         R4 3
        9 DUPTABLE                         R5 K9 [{["LayoutOrder"], ["onActivated"], ["tag"] = "auto-xy padding-small radius-circle", ["onStateChanged"], ["testId"] = "--start-page-SearchBar-ClearButton"}]
       10 GETTABLEKS                       R6 R0 K2 ["LayoutOrder"]
       12 SETTABLEKS                       R6 R5 K2 ["LayoutOrder"]
       14 GETTABLEKS                       R6 R0 K3 ["onActivated"]
       16 SETTABLEKS                       R6 R5 K3 ["onActivated"]
       18 SETTABLEKS                       R1 R5 K6 ["onStateChanged"]
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R6 R6 K1 ["createElement"]
       23 GETUPVAL                         R7 4
       24 DUPTABLE                         R8 K13 [{"name", "size", "style"}]
       25 GETUPVAL                         R9 5
       26 GETTABLEKS                       R9 R9 K14 ["XSmall"]
       28 SETTABLEKS                       R9 R8 K10 ["name"]
       30 GETUPVAL                         R9 6
       31 GETTABLEKS                       R9 R9 K15 ["Medium"]
       33 SETTABLEKS                       R9 R8 K11 ["size"]
       35 GETTABLEKS                       R9 R2 K16 ["Color"]
       37 GETTABLEKS                       R9 R9 K17 ["Content"]
       39 GETTABLEKS                       R9 R9 K18 ["Emphasis"]
       41 SETTABLEKS                       R9 R8 K12 ["style"]
       43 CALL                             R6 2 -1
       44 CALL                             R3 -1 -1
       45 RETURN                           R3 -1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETTABLEKS                       R0 R0 K0 ["current"]
        8 GETTABLEKS                       R0 R0 K1 ["CaptureFocus"]
       10 JUMPIFNOT                        R0 ; [+17]
       11 GETUPVAL                         R0 1
       12 GETTABLEKS                       R0 R0 K2 ["IsFocused"]
       14 JUMPIFNOT                        R0 ; [+7]
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K0 ["current"]
       18 NAMECALL                         R0 R0 K1 ["CaptureFocus"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R0 0
       23 GETTABLEKS                       R0 R0 K0 ["current"]
       25 NAMECALL                         R0 R0 K3 ["ReleaseFocus"]
       27 CALL                             R0 1 0
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnFocused"]
        3 JUMPIFNOT                        R0 ; [+4]
        4 GETUPVAL                         R0 0
        5 GETTABLEKS                       R0 R0 K0 ["OnFocused"]
        7 CALL                             R0 0 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnTextChanged"]
        3 JUMPIFNOT                        R1 ; [+6]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K0 ["OnTextChanged"]
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
       21 GETUPVAL                         R6 6
       22 GETTABLEKS                       R6 R6 K2 ["createElement"]
       24 GETUPVAL                         R7 7
       25 DUPTABLE                         R8 K8 [{["Position"], ["Size"], ["LayoutOrder"], ["tag"] = "row align-y-center padding-x-small text-truncate-end"}]
       26 GETTABLEKS                       R9 R0 K3 ["Position"]
       28 SETTABLEKS                       R9 R8 K3 ["Position"]
       30 GETTABLEKS                       R9 R0 K4 ["Size"]
       32 SETTABLEKS                       R9 R8 K4 ["Size"]
       34 GETTABLEKS                       R9 R0 K5 ["LayoutOrder"]
       36 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       38 DUPTABLE                         R9 K12 [{"MagnifyingGlass", "TextInputArea", "ClearButton"}]
       39 GETUPVAL                         R10 6
       40 GETTABLEKS                       R10 R10 K2 ["createElement"]
       42 GETUPVAL                         R11 8
       43 DUPTABLE                         R12 K16 [{"name", "size", "style", "LayoutOrder"}]
       44 GETUPVAL                         R13 9
       45 GETTABLEKS                       R13 R13 K9 ["MagnifyingGlass"]
       47 SETTABLEKS                       R13 R12 K13 ["name"]
       49 GETUPVAL                         R13 10
       50 GETTABLEKS                       R13 R13 K17 ["Medium"]
       52 SETTABLEKS                       R13 R12 K14 ["size"]
       54 GETTABLEKS                       R13 R3 K18 ["Color"]
       56 GETTABLEKS                       R13 R13 K19 ["Content"]
       58 GETTABLEKS                       R13 R13 K20 ["Emphasis"]
       60 SETTABLEKS                       R13 R12 K15 ["style"]
       62 MOVE                             R13 R2
       63 CALL                             R13 0 1
       64 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
       66 CALL                             R10 2 1
       67 SETTABLEKS                       R10 R9 K9 ["MagnifyingGlass"]
       69 GETUPVAL                         R10 6
       70 GETTABLEKS                       R10 R10 K2 ["createElement"]
       72 LOADK                            R11 K21 ["TextBox"]
       73 NEWTABLE                         R12 8 0
       75 GETTABLEKS                       R13 R0 K22 ["Text"]
       77 SETTABLEKS                       R13 R12 K22 ["Text"]
       79 LOADK                            R15 K23 ["Plugin"]
       80 LOADK                            R16 K24 ["Search"]
       81 NAMECALL                         R13 R1 K25 ["getText"]
       83 CALL                             R13 3 1
       84 SETTABLEKS                       R13 R12 K26 ["PlaceholderText"]
       86 LOADB                            R13 1
       87 SETTABLEKS                       R13 R12 K27 ["ClearTextOnFocus"]
       89 SETTABLEKS                       R4 R12 K28 ["ref"]
       91 GETUPVAL                         R13 6
       92 GETTABLEKS                       R13 R13 K29 ["Event"]
       94 GETTABLEKS                       R13 R13 K30 ["Focused"]
       96 NEWCLOSURE                       R14 P1
       97 CAPTURE                          VAL R0
       98 SETTABLE                         R14 R12 R13
       99 GETUPVAL                         R13 6
      100 GETTABLEKS                       R13 R13 K31 ["Change"]
      102 GETTABLEKS                       R13 R13 K22 ["Text"]
      104 NEWCLOSURE                       R14 P2
      105 CAPTURE                          VAL R0
      106 SETTABLE                         R14 R12 R13
      107 MOVE                             R13 R2
      108 CALL                             R13 0 1
      109 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      111 GETUPVAL                         R13 6
      112 GETTABLEKS                       R13 R13 K32 ["Tag"]
      114 SETTABLE                         R5 R12 R13
      115 CALL                             R10 2 1
      116 SETTABLEKS                       R10 R9 K10 ["TextInputArea"]
      118 GETTABLEKS                       R11 R0 K22 ["Text"]
      120 JUMPIFEQKS                       R11 K33 [""] ; [+16]
      122 GETUPVAL                         R10 6
      123 GETTABLEKS                       R10 R10 K2 ["createElement"]
      125 GETUPVAL                         R11 11
      126 DUPTABLE                         R12 K35 [{"LayoutOrder", "onActivated"}]
      127 MOVE                             R13 R2
      128 CALL                             R13 0 1
      129 SETTABLEKS                       R13 R12 K5 ["LayoutOrder"]
      131 GETTABLEKS                       R13 R0 K36 ["OnCleared"]
      133 SETTABLEKS                       R13 R12 K34 ["onActivated"]
      135 CALL                             R10 2 1
      136 JUMP                             ; [+1]
      137 LOADNIL                          R10
      138 SETTABLEKS                       R10 R9 K11 ["ClearButton"]
      140 CALL                             R6 3 -1
      141 RETURN                           R6 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["SearchInput"]
        6 GETTABLEKS                       R1 R1 K2 ["query"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["SearchInput"]
        3 GETTABLEKS                       R1 R1 K1 ["setCurrentQuery"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SearchInput"]
        3 GETTABLEKS                       R0 R0 K1 ["setCurrentQuery"]
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
       12 GETTABLEKS                       R7 R0 K1 ["SearchInput"]
       14 GETTABLEKS                       R7 R7 K2 ["query"]
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
       29 GETTABLEKS                       R12 R0 K1 ["SearchInput"]
       31 GETTABLEKS                       R12 R12 K2 ["query"]
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
       46 GETUPVAL                         R10 7
       47 GETTABLEKS                       R10 R10 K4 ["createElement"]
       49 GETUPVAL                         R11 8
       50 DUPTABLE                         R12 K12 [{["Size"], ["Position"], ["sizeConstraint"], ["testId"] = "--start-page-SearchBar-Dropdown", ["tag"] = "col anchor-top-center auto-y stroke-default radius-medium bg-surface-200"}]
       51 GETTABLEKS                       R13 R0 K5 ["Size"]
       53 SETTABLEKS                       R13 R12 K5 ["Size"]
       55 GETTABLEKS                       R13 R0 K6 ["Position"]
       57 SETTABLEKS                       R13 R12 K6 ["Position"]
       59 DUPTABLE                         R13 K14 [{"MaxSize"}]
       60 GETIMPORT                        R14 K17 [Vector2.new]
       62 LOADN                            R15 620
       63 LOADN                            R16 700
       64 CALL                             R14 2 1
       65 SETTABLEKS                       R14 R13 K13 ["MaxSize"]
       67 SETTABLEKS                       R13 R12 K7 ["sizeConstraint"]
       69 DUPTABLE                         R13 K20 [{"SearchInput", "Border", "Results"}]
       70 GETUPVAL                         R14 7
       71 GETTABLEKS                       R14 R14 K4 ["createElement"]
       73 GETUPVAL                         R15 8
       74 DUPTABLE                         R16 K22 [{["tag"] = "size-full-0 auto-y padding-y-small"}]
       75 GETUPVAL                         R17 7
       76 GETTABLEKS                       R17 R17 K4 ["createElement"]
       78 GETUPVAL                         R18 9
       79 DUPTABLE                         R19 K30 [{["Size"], ["OnTextChanged"], ["OnCleared"], ["IsFocused"] = True, ["Text"], ["LayoutOrder"] = 1}]
       80 GETIMPORT                        R20 K32 [UDim2.new]
       82 LOADN                            R21 1
       83 LOADN                            R22 0
       84 LOADN                            R23 0
       85 GETTABLEKS                       R24 R5 K5 ["Size"]
       87 GETTABLEKS                       R24 R24 K33 ["Size_900"]
       89 CALL                             R20 4 1
       90 SETTABLEKS                       R20 R19 K5 ["Size"]
       92 NEWCLOSURE                       R20 P1
       93 CAPTURE                          VAL R0
       94 SETTABLEKS                       R20 R19 K23 ["OnTextChanged"]
       96 NEWCLOSURE                       R20 P2
       97 CAPTURE                          VAL R0
       98 SETTABLEKS                       R20 R19 K24 ["OnCleared"]
      100 GETTABLEKS                       R20 R0 K1 ["SearchInput"]
      102 GETTABLEKS                       R20 R20 K2 ["query"]
      104 SETTABLEKS                       R20 R19 K27 ["Text"]
      106 CALL                             R17 2 -1
      107 CALL                             R14 -1 1
      108 SETTABLEKS                       R14 R13 K1 ["SearchInput"]
      110 GETUPVAL                         R14 7
      111 GETTABLEKS                       R14 R14 K4 ["createElement"]
      113 GETUPVAL                         R15 10
      114 DUPTABLE                         R16 K35 [{["LayoutOrder"] = 2}]
      115 CALL                             R14 2 1
      116 SETTABLEKS                       R14 R13 K18 ["Border"]
      118 GETUPVAL                         R14 7
      119 GETTABLEKS                       R14 R14 K4 ["createElement"]
      121 GETUPVAL                         R15 8
      122 DUPTABLE                         R16 K38 [{["LayoutOrder"] = 3, ["tag"] = "col gap-xsmall size-full-0 auto-y padding-bottom-small padding-top-large"}]
      123 DUPTABLE                         R17 K42 [{"ResultPreview", "SeeMoreLink", "Fallback"}]
      124 GETUPVAL                         R18 7
      125 GETTABLEKS                       R18 R18 K4 ["createElement"]
      127 GETUPVAL                         R19 8
      128 DUPTABLE                         R20 K44 [{"Size", "Visible", "LayoutOrder"}]
      129 GETIMPORT                        R21 K32 [UDim2.new]
      131 LOADN                            R22 1
      132 LOADN                            R23 0
      133 LOADN                            R24 0
      134 FASTCALL2K                       MATH_MIN R3 K46 ; [+5]
      136 MOVE                             R27 R3
      137 LOADK                            R28 K46 [6]
      138 GETIMPORT                        R26 K49 [math.min]
      140 CALL                             R26 2 1
      141 MULK                             R25 R26 K45 [90]
      142 CALL                             R21 4 1
      143 SETTABLEKS                       R21 R20 K5 ["Size"]
      145 SETTABLEKS                       R9 R20 K43 ["Visible"]
      147 MOVE                             R21 R2
      148 CALL                             R21 0 1
      149 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      151 GETUPVAL                         R21 7
      152 GETTABLEKS                       R21 R21 K4 ["createElement"]
      154 GETTABLEKS                       R22 R0 K50 ["ResultComponent"]
      156 DUPTABLE                         R23 K57 [{["DisplayComponent"], ["MaxCount"] = 6, ["OnItemCountUpdated"], ["CellComponent"], ["CellSize"], ["BaseQuery"]}]
      157 GETUPVAL                         R24 11
      158 SETTABLEKS                       R24 R23 K51 ["DisplayComponent"]
      160 NEWCLOSURE                       R24 P3
      161 CAPTURE                          VAL R4
      162 SETTABLEKS                       R24 R23 K53 ["OnItemCountUpdated"]
      164 GETUPVAL                         R24 12
      165 SETTABLEKS                       R24 R23 K54 ["CellComponent"]
      167 GETIMPORT                        R24 K32 [UDim2.new]
      169 LOADN                            R25 1
      170 LOADN                            R26 0
      171 LOADN                            R27 0
      172 LOADN                            R28 90
      173 CALL                             R24 4 1
      174 SETTABLEKS                       R24 R23 K55 ["CellSize"]
      176 GETUPVAL                         R24 13
      177 GETTABLEKS                       R25 R0 K56 ["BaseQuery"]
      179 DUPTABLE                         R26 K59 [{"search"}]
      180 SETTABLEKS                       R6 R26 K58 ["search"]
      182 CALL                             R24 2 1
      183 SETTABLEKS                       R24 R23 K56 ["BaseQuery"]
      185 CALL                             R21 2 -1
      186 CALL                             R18 -1 1
      187 SETTABLEKS                       R18 R17 K39 ["ResultPreview"]
      189 JUMPIFNOT                        R9 ; [+33]
      190 LOADN                            R19 6
      191 JUMPIFNOTLT                      R19 R3 ; [+31]
      193 GETUPVAL                         R18 7
      194 GETTABLEKS                       R18 R18 K4 ["createElement"]
      196 GETUPVAL                         R19 14
      197 DUPTABLE                         R20 K63 [{["LayoutOrder"], ["Text"], ["onActivated"], ["stateLayer"], ["tag"] = "size-full-0 auto-y padding-x-large padding-y-small text-label-medium text-align-x-left content-system-emphasis"}]
      198 MOVE                             R21 R2
      199 CALL                             R21 0 1
      200 SETTABLEKS                       R21 R20 K28 ["LayoutOrder"]
      202 LOADK                            R23 K64 ["Plugin"]
      203 LOADK                            R24 K65 ["SeeAllMatchingExperiences"]
      204 NAMECALL                         R21 R1 K66 ["getText"]
      206 CALL                             R21 3 1
      207 SETTABLEKS                       R21 R20 K27 ["Text"]
      209 GETTABLEKS                       R21 R0 K67 ["MoreExperiencesRequested"]
      211 SETTABLEKS                       R21 R20 K60 ["onActivated"]
      213 DUPTABLE                         R21 K69 [{"affordance"}]
      214 GETUPVAL                         R22 15
      215 GETTABLEKS                       R22 R22 K70 ["None"]
      217 SETTABLEKS                       R22 R21 K68 ["affordance"]
      219 SETTABLEKS                       R21 R20 K61 ["stateLayer"]
      221 CALL                             R18 2 1
      222 JUMP                             ; [+1]
      223 LOADNIL                          R18
      224 SETTABLEKS                       R18 R17 K40 ["SeeMoreLink"]
      226 JUMPIF                           R9 ; [+25]
      227 GETUPVAL                         R18 7
      228 GETTABLEKS                       R18 R18 K4 ["createElement"]
      230 GETUPVAL                         R19 14
      231 DUPTABLE                         R20 K74 [{["LayoutOrder"] = 4, ["tag"] = "size-full-0 auto-y padding-large text-align-x-center", ["Text"], ["testId"] = "--start-page-SearchBar-Fallback"}]
      232 LENGTH                           R22 R6
      233 LOADN                            R23 2
      234 JUMPIFNOTLT                      R23 R22 ; [+7]
      236 LOADK                            R23 K64 ["Plugin"]
      237 LOADK                            R24 K75 ["SearchBar.NoMatchingExperiencesFound"]
      238 NAMECALL                         R21 R1 K66 ["getText"]
      240 CALL                             R21 3 1
      241 JUMP                             ; [+6]
      242 LOADK                            R23 K64 ["Plugin"]
      243 LOADK                            R24 K76 ["SearchBar.InsufficientQueryLength"]
      244 DUPTABLE                         R25 K78 [{["length"] = 2}]
      245 NAMECALL                         R21 R1 K66 ["getText"]
      247 CALL                             R21 4 1
      248 SETTABLEKS                       R21 R20 K27 ["Text"]
      250 CALL                             R18 2 1
      251 JUMP                             ; [+1]
      252 LOADNIL                          R18
      253 SETTABLEKS                       R18 R17 K41 ["Fallback"]
      255 CALL                             R14 3 1
      256 SETTABLEKS                       R14 R13 K19 ["Results"]
      258 CALL                             R10 3 -1
      259 RETURN                           R10 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 LOADB                            R1 0
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["ease"]
        4 JUMPIFNOT                        R0 ; [+2]
        5 LOADN                            R3 660
        6 JUMP                             ; [+1]
        7 LOADN                            R3 375
        8 DUPTABLE                         R4 K4 [{["duration"] = 0.15, ["easingStyle"]}]
        9 GETIMPORT                        R5 K8 [Enum.EasingStyle.Quad]
       11 SETTABLEKS                       R5 R4 K3 ["easingStyle"]
       13 CALL                             R2 2 -1
       14 CALL                             R1 -1 0
       15 GETUPVAL                         R1 2
       16 LOADB                            R2 1
       17 CALL                             R1 1 0
       18 GETUPVAL                         R1 3
       19 MOVE                             R2 R0
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 LOADB                            R2 0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R3 0
        4 LOADB                            R4 0
        5 CALL                             R3 1 2
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R5 R5 K0 ["useAnimatedBinding"]
        9 LOADN                            R6 335
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R4
       12 CALL                             R5 2 2
       13 GETUPVAL                         R7 2
       14 GETTABLEKS                       R7 R7 K1 ["useCallback"]
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
        9 GETUPVAL                         R0 3
       10 GETTABLEKS                       R0 R0 K1 ["OnSearchRequested"]
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
        6 GETUPVAL                         R0 2
        7 GETTABLEKS                       R0 R0 K1 ["OnSearchRequested"]
        9 LOADK                            R1 K0 [""]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnSearchRequested"]
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
       14 GETUPVAL                         R11 3
       15 GETTABLEKS                       R11 R11 K1 ["createElement"]
       17 GETUPVAL                         R12 4
       18 DUPTABLE                         R13 K5 [{"LayoutOrder", "Size", "Position"}]
       19 GETTABLEKS                       R14 R0 K2 ["LayoutOrder"]
       21 SETTABLEKS                       R14 R13 K2 ["LayoutOrder"]
       23 GETIMPORT                        R14 K8 [UDim2.new]
       25 LOADN                            R15 0
       26 LOADN                            R16 335
       27 LOADN                            R17 0
       28 GETTABLEKS                       R18 R1 K3 ["Size"]
       30 GETTABLEKS                       R18 R18 K9 ["Size_900"]
       32 CALL                             R14 4 1
       33 SETTABLEKS                       R14 R13 K3 ["Size"]
       35 GETTABLEKS                       R14 R0 K4 ["Position"]
       37 SETTABLEKS                       R14 R13 K4 ["Position"]
       39 DUPTABLE                         R14 K12 [{"UnfocusedSearchBar", "FocusedContent"}]
       40 JUMPIF                           R9 ; [+44]
       41 GETUPVAL                         R15 3
       42 GETTABLEKS                       R15 R15 K1 ["createElement"]
       44 GETUPVAL                         R16 4
       45 DUPTABLE                         R17 K17 [{["tag"] = "size-full stroke-default radius-large", ["onAbsoluteSizeChanged"], ["onAbsolutePositionChanged"]}]
       46 NEWCLOSURE                       R18 P0
       47 CAPTURE                          VAL R5
       48 SETTABLEKS                       R18 R17 K15 ["onAbsoluteSizeChanged"]
       50 NEWCLOSURE                       R18 P1
       51 CAPTURE                          VAL R7
       52 SETTABLEKS                       R18 R17 K16 ["onAbsolutePositionChanged"]
       54 GETUPVAL                         R18 3
       55 GETTABLEKS                       R18 R18 K1 ["createElement"]
       57 GETUPVAL                         R19 5
       58 DUPTABLE                         R20 K23 [{["Size"], ["OnFocused"], ["OnCleared"], ["IsFocused"] = False, ["Text"]}]
       59 GETIMPORT                        R21 K8 [UDim2.new]
       61 LOADN                            R22 1
       62 LOADN                            R23 0
       63 LOADN                            R24 1
       64 LOADN                            R25 0
       65 CALL                             R21 4 1
       66 SETTABLEKS                       R21 R20 K3 ["Size"]
       68 NEWCLOSURE                       R21 P2
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R10
       71 SETTABLEKS                       R21 R20 K18 ["OnFocused"]
       73 NEWCLOSURE                       R21 P3
       74 CAPTURE                          VAL R10
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R0
       78 SETTABLEKS                       R21 R20 K19 ["OnCleared"]
       80 SETTABLEKS                       R2 R20 K22 ["Text"]
       82 CALL                             R18 2 -1
       83 CALL                             R15 -1 1
       84 JUMP                             ; [+1]
       85 LOADNIL                          R15
       86 SETTABLEKS                       R15 R14 K10 ["UnfocusedSearchBar"]
       88 JUMPIFNOT                        R9 ; [+114]
       89 JUMPIFNOT                        R4 ; [+113]
       90 GETUPVAL                         R15 3
       91 GETTABLEKS                       R15 R15 K1 ["createElement"]
       93 GETUPVAL                         R16 6
       94 LOADNIL                          R17
       95 GETUPVAL                         R18 3
       96 GETTABLEKS                       R18 R18 K1 ["createElement"]
       98 GETUPVAL                         R19 7
       99 NEWTABLE                         R20 4 0
      101 DUPCLOSURE                       R21 K24 [PROTO_20]
      102 SETTABLEKS                       R21 R20 K25 ["OnFocusLost"]
      104 LOADK                            R21 K26 [999999]
      105 SETTABLEKS                       R21 R20 K27 ["Priority"]
      107 GETUPVAL                         R21 3
      108 GETTABLEKS                       R21 R21 K28 ["Tag"]
      110 LOADK                            R22 K29 ["size-full"]
      111 SETTABLE                         R22 R20 R21
      112 DUPTABLE                         R21 K32 [{"DarkShadow", "Dropdown"}]
      113 GETUPVAL                         R22 3
      114 GETTABLEKS                       R22 R22 K1 ["createElement"]
      116 GETUPVAL                         R23 4
      117 DUPTABLE                         R24 K36 [{["onActivated"], ["stateLayer"], ["tag"] = "size-full bg-over-media-0"}]
      118 NEWCLOSURE                       R25 P5
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R0
      122 SETTABLEKS                       R25 R24 K33 ["onActivated"]
      124 DUPTABLE                         R25 K38 [{"affordance"}]
      125 GETUPVAL                         R26 8
      126 GETTABLEKS                       R26 R26 K39 ["None"]
      128 SETTABLEKS                       R26 R25 K37 ["affordance"]
      130 SETTABLEKS                       R25 R24 K34 ["stateLayer"]
      132 CALL                             R22 2 1
      133 SETTABLEKS                       R22 R21 K30 ["DarkShadow"]
      135 GETUPVAL                         R22 3
      136 GETTABLEKS                       R22 R22 K1 ["createElement"]
      138 GETUPVAL                         R23 9
      139 DUPTABLE                         R24 K45 [{"Size", "Position", "BaseQuery", "ResultComponent", "SetIsSearchBarFocused", "MoreExperiencesRequested", "SearchInput"}]
      140 GETUPVAL                         R27 10
      141 NAMECALL                         R25 R8 K46 ["map"]
      143 CALL                             R25 2 1
      144 SETTABLEKS                       R25 R24 K3 ["Size"]
      146 JUMPIFNOT                        R6 ; [+19]
      147 GETIMPORT                        R25 K8 [UDim2.new]
      149 LOADN                            R26 0
      150 GETTABLEKS                       R28 R6 K47 ["X"]
      152 GETTABLEKS                       R30 R4 K47 ["X"]
      154 DIVK                             R29 R30 K48 [2]
      155 ADD                              R27 R28 R29
      156 LOADN                            R28 0
      157 GETTABLEKS                       R30 R6 K49 ["Y"]
      159 GETTABLEKS                       R31 R1 K50 ["Padding"]
      161 GETTABLEKS                       R31 R31 K51 ["Small"]
      163 SUB                              R29 R30 R31
      164 CALL                             R25 4 1
      165 JUMP                             ; [+5]
      166 GETIMPORT                        R25 K53 [UDim2.fromScale]
      168 LOADN                            R26 0
      169 LOADN                            R27 0
      170 CALL                             R25 2 1
      171 SETTABLEKS                       R25 R24 K4 ["Position"]
      173 GETTABLEKS                       R25 R0 K40 ["BaseQuery"]
      175 SETTABLEKS                       R25 R24 K40 ["BaseQuery"]
      177 GETTABLEKS                       R25 R0 K41 ["ResultComponent"]
      179 SETTABLEKS                       R25 R24 K41 ["ResultComponent"]
      181 SETTABLEKS                       R10 R24 K42 ["SetIsSearchBarFocused"]
      183 NEWCLOSURE                       R25 P6
      184 CAPTURE                          VAL R0
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R3
      187 CAPTURE                          VAL R10
      188 SETTABLEKS                       R25 R24 K43 ["MoreExperiencesRequested"]
      190 DUPTABLE                         R25 K56 [{"query", "setCurrentQuery"}]
      191 SETTABLEKS                       R2 R25 K54 ["query"]
      193 SETTABLEKS                       R3 R25 K55 ["setCurrentQuery"]
      195 SETTABLEKS                       R25 R24 K44 ["SearchInput"]
      197 CALL                             R22 2 1
      198 SETTABLEKS                       R22 R21 K31 ["Dropdown"]
      200 CALL                             R18 3 -1
      201 CALL                             R15 -1 1
      202 JUMP                             ; [+1]
      203 LOADNIL                          R15
      204 SETTABLEKS                       R15 R14 K11 ["FocusedContent"]
      206 CALL                             R11 3 -1
      207 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["useState"]
       16 GETTABLEKS                       R3 R1 K9 ["useRef"]
       18 GETTABLEKS                       R4 R1 K10 ["useEffect"]
       20 GETTABLEKS                       R5 R1 K11 ["useContext"]
       22 GETIMPORT                        R6 K5 [require]
       24 GETTABLEKS                       R7 R0 K6 ["Packages"]
       26 GETTABLEKS                       R7 R7 K12 ["ReactOtter"]
       28 CALL                             R6 1 1
       29 GETIMPORT                        R7 K5 [require]
       31 GETTABLEKS                       R8 R0 K6 ["Packages"]
       33 GETTABLEKS                       R8 R8 K13 ["Dash"]
       35 CALL                             R7 1 1
       36 GETTABLEKS                       R8 R7 K14 ["join"]
       38 GETIMPORT                        R9 K5 [require]
       40 GETTABLEKS                       R10 R0 K6 ["Packages"]
       42 GETTABLEKS                       R10 R10 K15 ["Framework"]
       44 CALL                             R9 1 1
       45 GETTABLEKS                       R10 R9 K16 ["Util"]
       47 GETTABLEKS                       R10 R10 K17 ["counter"]
       49 GETTABLEKS                       R11 R9 K18 ["ContextServices"]
       51 GETTABLEKS                       R11 R11 K19 ["Localization"]
       53 GETTABLEKS                       R12 R9 K20 ["UI"]
       55 GETTABLEKS                       R13 R12 K21 ["Grid"]
       57 GETTABLEKS                       R14 R12 K22 ["CaptureFocus"]
       59 GETIMPORT                        R15 K5 [require]
       61 GETTABLEKS                       R16 R0 K23 ["Src"]
       63 GETTABLEKS                       R16 R16 K16 ["Util"]
       65 GETTABLEKS                       R16 R16 K24 ["Foundation"]
       67 CALL                             R15 1 1
       68 GETTABLEKS                       R16 R15 K25 ["View"]
       70 GETTABLEKS                       R17 R15 K26 ["Text"]
       72 GETTABLEKS                       R18 R15 K27 ["Icon"]
       74 GETTABLEKS                       R19 R15 K28 ["Enums"]
       76 GETTABLEKS                       R19 R19 K29 ["StateLayerAffordance"]
       78 GETTABLEKS                       R20 R15 K28 ["Enums"]
       80 GETTABLEKS                       R20 R20 K30 ["IconSize"]
       82 GETTABLEKS                       R21 R15 K28 ["Enums"]
       84 GETTABLEKS                       R21 R21 K31 ["IconName"]
       86 GETTABLEKS                       R22 R15 K32 ["Hooks"]
       88 GETTABLEKS                       R22 R22 K33 ["useTokens"]
       90 GETTABLEKS                       R23 R15 K32 ["Hooks"]
       92 GETTABLEKS                       R23 R23 K34 ["useStyleTags"]
       94 GETIMPORT                        R24 K5 [require]
       96 GETTABLEKS                       R25 R0 K23 ["Src"]
       98 GETTABLEKS                       R25 R25 K32 ["Hooks"]
      100 GETTABLEKS                       R25 R25 K35 ["useOnStateChangedCursor"]
      102 CALL                             R24 1 1
      103 GETIMPORT                        R25 K5 [require]
      105 GETTABLEKS                       R26 R0 K23 ["Src"]
      107 GETTABLEKS                       R26 R26 K36 ["Components"]
      109 GETTABLEKS                       R26 R26 K37 ["CursorScope"]
      111 CALL                             R25 1 1
      112 GETIMPORT                        R26 K5 [require]
      114 GETTABLEKS                       R27 R0 K23 ["Src"]
      116 GETTABLEKS                       R27 R27 K24 ["Foundation"]
      118 GETTABLEKS                       R27 R27 K36 ["Components"]
      120 GETTABLEKS                       R27 R27 K38 ["SearchResultRow"]
      122 CALL                             R26 1 1
      123 GETIMPORT                        R27 K5 [require]
      125 GETTABLEKS                       R28 R0 K23 ["Src"]
      127 GETTABLEKS                       R28 R28 K24 ["Foundation"]
      129 GETTABLEKS                       R28 R28 K36 ["Components"]
      131 GETTABLEKS                       R28 R28 K39 ["Separator"]
      133 CALL                             R27 1 1
      134 GETIMPORT                        R28 K5 [require]
      136 GETTABLEKS                       R29 R0 K23 ["Src"]
      138 GETTABLEKS                       R29 R29 K16 ["Util"]
      140 GETTABLEKS                       R29 R29 K40 ["Dialogs"]
      142 CALL                             R28 1 1
      143 GETIMPORT                        R29 K5 [require]
      145 GETTABLEKS                       R30 R0 K23 ["Src"]
      147 GETTABLEKS                       R30 R30 K16 ["Util"]
      149 GETTABLEKS                       R30 R30 K41 ["debounce"]
      151 CALL                             R29 1 1
      152 GETIMPORT                        R30 K5 [require]
      154 GETTABLEKS                       R31 R0 K23 ["Src"]
      156 GETTABLEKS                       R31 R31 K16 ["Util"]
      158 GETTABLEKS                       R31 R31 K42 ["Services"]
      160 CALL                             R30 1 1
      161 GETTABLEKS                       R31 R30 K43 ["StartPageManager"]
      163 GETTABLEKS                       R32 R30 K44 ["StudioService"]
      165 GETIMPORT                        R33 K5 [require]
      167 GETTABLEKS                       R34 R0 K23 ["Src"]
      169 GETTABLEKS                       R34 R34 K45 ["Types"]
      171 CALL                             R33 1 1
      172 GETIMPORT                        R34 K5 [require]
      174 GETTABLEKS                       R35 R0 K23 ["Src"]
      176 GETTABLEKS                       R35 R35 K46 ["Network"]
      178 GETTABLEKS                       R35 R35 K47 ["DiscoverCreatorEligibilityAndCheckTCAndOpenPlace"]
      180 CALL                             R34 1 1
      181 DUPCLOSURE                       R35 K48 [PROTO_1]
      182 CAPTURE                          VAL R5
      183 CAPTURE                          VAL R28
      184 CAPTURE                          VAL R30
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R1
      187 CAPTURE                          VAL R26
      188 CAPTURE                          VAL R8
      189 CAPTURE                          VAL R34
      190 CAPTURE                          VAL R32
      191 CAPTURE                          VAL R31
      192 DUPCLOSURE                       R36 K49 [PROTO_2]
      193 CAPTURE                          VAL R24
      194 CAPTURE                          VAL R22
      195 CAPTURE                          VAL R1
      196 CAPTURE                          VAL R16
      197 CAPTURE                          VAL R18
      198 CAPTURE                          VAL R21
      199 CAPTURE                          VAL R20
      200 DUPCLOSURE                       R37 K50 [PROTO_6]
      201 CAPTURE                          VAL R11
      202 CAPTURE                          VAL R10
      203 CAPTURE                          VAL R22
      204 CAPTURE                          VAL R3
      205 CAPTURE                          VAL R23
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R1
      208 CAPTURE                          VAL R16
      209 CAPTURE                          VAL R18
      210 CAPTURE                          VAL R21
      211 CAPTURE                          VAL R20
      212 CAPTURE                          VAL R36
      213 DUPCLOSURE                       R38 K51 [PROTO_11]
      214 CAPTURE                          VAL R11
      215 CAPTURE                          VAL R10
      216 CAPTURE                          VAL R2
      217 CAPTURE                          VAL R22
      218 CAPTURE                          VAL R3
      219 CAPTURE                          VAL R29
      220 CAPTURE                          VAL R4
      221 CAPTURE                          VAL R1
      222 CAPTURE                          VAL R16
      223 CAPTURE                          VAL R37
      224 CAPTURE                          VAL R27
      225 CAPTURE                          VAL R13
      226 CAPTURE                          VAL R35
      227 CAPTURE                          VAL R8
      228 CAPTURE                          VAL R17
      229 CAPTURE                          VAL R19
      230 DUPCLOSURE                       R39 K52 [PROTO_14]
      231 CAPTURE                          VAL R2
      232 CAPTURE                          VAL R6
      233 CAPTURE                          VAL R1
      234 DUPCLOSURE                       R40 K53 [PROTO_15]
      235 DUPCLOSURE                       R41 K54 [PROTO_23]
      236 CAPTURE                          VAL R22
      237 CAPTURE                          VAL R2
      238 CAPTURE                          VAL R39
      239 CAPTURE                          VAL R1
      240 CAPTURE                          VAL R16
      241 CAPTURE                          VAL R37
      242 CAPTURE                          VAL R25
      243 CAPTURE                          VAL R14
      244 CAPTURE                          VAL R19
      245 CAPTURE                          VAL R38
      246 CAPTURE                          VAL R40
      247 RETURN                           R41 1
