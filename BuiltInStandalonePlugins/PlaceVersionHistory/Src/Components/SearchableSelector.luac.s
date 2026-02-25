PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSelected"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R0 K1 ["id"]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K2 ["createElement"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K3 ["View"]
       20 DUPTABLE                         R5 K8 [{"tag", "onActivated", "testId", "LayoutOrder"}]
       21 NEWTABLE                         R6 2 0
       23 LOADB                            R7 1
       24 SETTABLEKS                       R7 R6 K9 ["size-0-0 auto-xy row align-y-center padding-xsmall gap-xsmall radius-small"]
       26 GETTABLEKS                       R7 R0 K10 ["isSelected"]
       28 SETTABLEKS                       R7 R6 K11 ["bg-shift-100"]
       30 SETTABLEKS                       R6 R5 K4 ["tag"]
       32 SETTABLEKS                       R2 R5 K5 ["onActivated"]
       34 LOADK                            R7 K12 ["--selector-item-%*"]
       35 GETTABLEKS                       R9 R0 K1 ["id"]
       37 NAMECALL                         R7 R7 K13 ["format"]
       39 CALL                             R7 2 1
       40 MOVE                             R6 R7
       41 SETTABLEKS                       R6 R5 K6 ["testId"]
       43 GETTABLEKS                       R6 R0 K7 ["LayoutOrder"]
       45 SETTABLEKS                       R6 R5 K7 ["LayoutOrder"]
       47 DUPTABLE                         R6 K16 [{"Name", "Check"}]
       48 GETUPVAL                         R8 1
       49 GETTABLEKS                       R7 R8 K2 ["createElement"]
       51 GETUPVAL                         R9 2
       52 GETTABLEKS                       R8 R9 K17 ["Text"]
       54 DUPTABLE                         R9 K18 [{"tag", "Text", "LayoutOrder"}]
       55 NEWTABLE                         R10 2 0
       57 LOADB                            R11 1
       58 SETTABLEKS                       R11 R10 K19 ["size-0-0 auto-xy fill text-body-medium text-align-x-left text-truncate-split"]
       60 GETTABLEKS                       R11 R0 K10 ["isSelected"]
       62 SETTABLEKS                       R11 R10 K20 ["content-emphasis"]
       64 SETTABLEKS                       R10 R9 K4 ["tag"]
       66 GETTABLEKS                       R10 R0 K21 ["text"]
       68 SETTABLEKS                       R10 R9 K17 ["Text"]
       70 MOVE                             R10 R1
       71 CALL                             R10 0 1
       72 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K14 ["Name"]
       77 GETTABLEKS                       R7 R0 K10 ["isSelected"]
       79 JUMPIFNOT                        R7 ; [+30]
       80 GETUPVAL                         R8 1
       81 GETTABLEKS                       R7 R8 K2 ["createElement"]
       83 GETUPVAL                         R9 2
       84 GETTABLEKS                       R8 R9 K22 ["Icon"]
       86 DUPTABLE                         R9 K25 [{"name", "size", "LayoutOrder"}]
       87 GETUPVAL                         R13 2
       88 GETTABLEKS                       R12 R13 K26 ["Enums"]
       90 GETTABLEKS                       R11 R12 K27 ["IconName"]
       92 GETTABLEKS                       R10 R11 K15 ["Check"]
       94 SETTABLEKS                       R10 R9 K23 ["name"]
       96 GETUPVAL                         R13 2
       97 GETTABLEKS                       R12 R13 K26 ["Enums"]
       99 GETTABLEKS                       R11 R12 K28 ["IconSize"]
      101 GETTABLEKS                       R10 R11 K29 ["Small"]
      103 SETTABLEKS                       R10 R9 K24 ["size"]
      105 MOVE                             R10 R1
      106 CALL                             R10 0 1
      107 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
      109 CALL                             R7 2 1
      110 SETTABLEKS                       R7 R6 K15 ["Check"]
      112 CALL                             R3 3 -1
      113 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["View"]
        8 DUPTABLE                         R4 K4 [{"tag", "LayoutOrder"}]
        9 LOADK                            R5 K5 ["size-full-0 auto-y col align-x-center padding-small"]
       10 SETTABLEKS                       R5 R4 K2 ["tag"]
       12 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       14 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       16 DUPTABLE                         R5 K7 [{"SearchBar"}]
       17 GETUPVAL                         R7 1
       18 GETTABLEKS                       R6 R7 K0 ["createElement"]
       20 GETUPVAL                         R8 2
       21 GETTABLEKS                       R7 R8 K8 ["TextInput"]
       23 DUPTABLE                         R8 K16 [{"label", "size", "width", "placeholder", "leadingIcon", "text", "onChanged", "LayoutOrder"}]
       24 LOADK                            R9 K17 [""]
       25 SETTABLEKS                       R9 R8 K9 ["label"]
       27 GETUPVAL                         R12 2
       28 GETTABLEKS                       R11 R12 K18 ["Enums"]
       30 GETTABLEKS                       R10 R11 K19 ["InputSize"]
       32 GETTABLEKS                       R9 R10 K20 ["XSmall"]
       34 SETTABLEKS                       R9 R8 K10 ["size"]
       36 GETIMPORT                        R9 K23 [UDim.new]
       38 LOADN                            R10 0
       39 LOADN                            R11 184
       40 CALL                             R9 2 1
       41 SETTABLEKS                       R9 R8 K11 ["width"]
       43 GETTABLEKS                       R9 R0 K24 ["searchLabel"]
       45 SETTABLEKS                       R9 R8 K12 ["placeholder"]
       47 GETUPVAL                         R12 2
       48 GETTABLEKS                       R11 R12 K18 ["Enums"]
       50 GETTABLEKS                       R10 R11 K25 ["IconName"]
       52 GETTABLEKS                       R9 R10 K26 ["MagnifyingGlass"]
       54 SETTABLEKS                       R9 R8 K13 ["leadingIcon"]
       56 GETTABLEKS                       R9 R0 K27 ["search"]
       58 SETTABLEKS                       R9 R8 K14 ["text"]
       60 GETTABLEKS                       R9 R0 K28 ["onSearchChanged"]
       62 SETTABLEKS                       R9 R8 K15 ["onChanged"]
       64 MOVE                             R9 R1
       65 CALL                             R9 0 1
       66 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K6 ["SearchBar"]
       71 CALL                             R2 3 -1
       72 RETURN                           R2 -1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R1 R4 K0 ["items"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 MOVE                             R7 R0
        9 GETUPVAL                         R9 1
       10 GETTABLEKS                       R8 R9 K1 ["createElement"]
       12 GETUPVAL                         R9 2
       13 DUPTABLE                         R10 K8 [{"key", "id", "isSelected", "text", "onSelected", "LayoutOrder"}]
       14 SETTABLEKS                       R4 R10 K2 ["key"]
       16 SETTABLEKS                       R4 R10 K3 ["id"]
       18 GETUPVAL                         R13 0
       19 GETTABLEKS                       R12 R13 K3 ["id"]
       21 JUMPIFEQ                         R4 R12 ; [+2]
       23 LOADB                            R11 0 +1
       24 LOADB                            R11 1
       25 SETTABLEKS                       R11 R10 K4 ["isSelected"]
       27 SETTABLEKS                       R5 R10 K5 ["text"]
       29 GETUPVAL                         R12 0
       30 GETTABLEKS                       R11 R12 K9 ["onIdChanged"]
       32 SETTABLEKS                       R11 R10 K6 ["onSelected"]
       34 GETUPVAL                         R11 3
       35 CALL                             R11 0 1
       36 SETTABLEKS                       R11 R10 K7 ["LayoutOrder"]
       38 CALL                             R8 2 -1
       39 FASTCALL                         TABLE_INSERT ; [+2]
       40 GETIMPORT                        R6 K12 [table.insert]
       42 CALL                             R6 -1 0
       43 FORGLOOP                         R1 2 ; [-36]
       45 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useMemo"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          UPVAL U2
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 2
       12 GETTABLEKS                       R5 R0 K1 ["items"]
       14 GETTABLEKS                       R6 R0 K2 ["id"]
       16 SETLIST                          R4 R5 2 [1]
       18 CALL                             R2 2 1
       19 LENGTH                           R4 R2
       20 LOADN                            R5 5
       21 JUMPIFLT                         R5 R4 ; [+2]
       23 LOADB                            R3 0 +1
       24 LOADB                            R3 1
       25 JUMPIFNOT                        R3 ; [+9]
       26 DUPTABLE                         R4 K4 [{"MinSize"}]
       27 GETIMPORT                        R5 K7 [Vector2.new]
       29 LOADN                            R6 0
       30 LOADN                            R7 125
       31 CALL                             R5 2 1
       32 SETTABLEKS                       R5 R4 K3 ["MinSize"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R4
       36 JUMPIFNOT                        R3 ; [+2]
       37 LOADNIL                          R5
       38 JUMP                             ; [+2]
       39 GETIMPORT                        R5 K11 [Enum.AutomaticSize.Y]
       41 GETUPVAL                         R7 1
       42 GETTABLEKS                       R6 R7 K12 ["createElement"]
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R7 R8 K13 ["ScrollView"]
       47 DUPTABLE                         R8 K19 [{"layout", "scroll", "Size", "sizeConstraint", "AutomaticSize", "LayoutOrder"}]
       48 DUPTABLE                         R9 K24 [{"HorizontalAlignment", "FillDirection", "SortOrder", "HorizontalFlex"}]
       49 GETIMPORT                        R10 K26 [Enum.HorizontalAlignment.Left]
       51 SETTABLEKS                       R10 R9 K20 ["HorizontalAlignment"]
       53 GETIMPORT                        R10 K28 [Enum.FillDirection.Vertical]
       55 SETTABLEKS                       R10 R9 K21 ["FillDirection"]
       57 GETIMPORT                        R10 K29 [Enum.SortOrder.LayoutOrder]
       59 SETTABLEKS                       R10 R9 K22 ["SortOrder"]
       61 GETIMPORT                        R10 K32 [Enum.UIFlexAlignment.Fill]
       63 SETTABLEKS                       R10 R9 K23 ["HorizontalFlex"]
       65 SETTABLEKS                       R9 R8 K14 ["layout"]
       67 DUPTABLE                         R9 K37 [{"AutomaticSize", "AutomaticCanvasSize", "ScrollingDirection", "VerticalScrollBarInset", "CanvasSize"}]
       68 SETTABLEKS                       R5 R9 K9 ["AutomaticSize"]
       70 GETIMPORT                        R10 K11 [Enum.AutomaticSize.Y]
       72 SETTABLEKS                       R10 R9 K33 ["AutomaticCanvasSize"]
       74 GETIMPORT                        R10 K38 [Enum.ScrollingDirection.Y]
       76 SETTABLEKS                       R10 R9 K34 ["ScrollingDirection"]
       78 GETIMPORT                        R10 K41 [Enum.ScrollBarInset.None]
       80 SETTABLEKS                       R10 R9 K35 ["VerticalScrollBarInset"]
       82 GETIMPORT                        R10 K44 [UDim2.fromScale]
       84 LOADN                            R11 0
       85 LOADN                            R12 0
       86 CALL                             R10 2 1
       87 SETTABLEKS                       R10 R9 K36 ["CanvasSize"]
       89 SETTABLEKS                       R9 R8 K15 ["scroll"]
       91 GETIMPORT                        R9 K44 [UDim2.fromScale]
       93 LOADN                            R10 1
       94 LOADN                            R11 0
       95 CALL                             R9 2 1
       96 SETTABLEKS                       R9 R8 K16 ["Size"]
       98 SETTABLEKS                       R4 R8 K17 ["sizeConstraint"]
      100 SETTABLEKS                       R5 R8 K9 ["AutomaticSize"]
      102 GETTABLEKS                       R9 R0 K18 ["LayoutOrder"]
      104 SETTABLEKS                       R9 R8 K18 ["LayoutOrder"]
      106 DUPTABLE                         R9 K46 [{"Items"}]
      107 GETUPVAL                         R11 1
      108 GETTABLEKS                       R10 R11 K12 ["createElement"]
      110 GETUPVAL                         R12 3
      111 GETTABLEKS                       R11 R12 K47 ["View"]
      113 DUPTABLE                         R12 K49 [{"tag"}]
      114 LOADK                            R13 K50 ["size-0-0 auto-xy col flex-x-fill align-x-left padding-left-small padding-right-small padding-bottom-small"]
      115 SETTABLEKS                       R13 R12 K48 ["tag"]
      117 MOVE                             R13 R2
      118 CALL                             R10 3 1
      119 SETTABLEKS                       R10 R9 K45 ["Items"]
      121 CALL                             R6 3 -1
      122 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onIdChanged"]
        3 LOADNIL                          R1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 0
        9 CALL                             R2 2 1
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K1 ["createElement"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K2 ["View"]
       16 DUPTABLE                         R5 K5 [{"tag", "LayoutOrder"}]
       17 LOADK                            R6 K6 ["size-full-0 auto-y col flex-x-fill align-x-center padding-small"]
       18 SETTABLEKS                       R6 R5 K3 ["tag"]
       20 GETTABLEKS                       R6 R0 K4 ["LayoutOrder"]
       22 SETTABLEKS                       R6 R5 K4 ["LayoutOrder"]
       24 DUPTABLE                         R6 K8 [{"ResetButton"}]
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R7 R8 K1 ["createElement"]
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R8 R9 K2 ["View"]
       31 DUPTABLE                         R9 K11 [{"tag", "onActivated", "testId", "LayoutOrder"}]
       32 LOADK                            R10 K12 ["size-0-0 auto-xy row align-y-center padding-xsmall gap-xsmall radius-small"]
       33 SETTABLEKS                       R10 R9 K3 ["tag"]
       35 SETTABLEKS                       R2 R9 K9 ["onActivated"]
       37 LOADK                            R10 K13 ["--selector-reset-button"]
       38 SETTABLEKS                       R10 R9 K10 ["testId"]
       40 MOVE                             R10 R1
       41 CALL                             R10 0 1
       42 SETTABLEKS                       R10 R9 K4 ["LayoutOrder"]
       44 DUPTABLE                         R10 K15 [{"Name"}]
       45 GETUPVAL                         R12 1
       46 GETTABLEKS                       R11 R12 K1 ["createElement"]
       48 GETUPVAL                         R13 2
       49 GETTABLEKS                       R12 R13 K16 ["Text"]
       51 DUPTABLE                         R13 K17 [{"tag", "Text", "LayoutOrder"}]
       52 LOADK                            R14 K18 ["size-0-0 auto-xy fill text-body-small text-align-x-left text-truncate-split"]
       53 SETTABLEKS                       R14 R13 K3 ["tag"]
       55 GETTABLEKS                       R14 R0 K19 ["resetLabel"]
       57 SETTABLEKS                       R14 R13 K16 ["Text"]
       59 MOVE                             R14 R1
       60 CALL                             R14 0 1
       61 SETTABLEKS                       R14 R13 K4 ["LayoutOrder"]
       63 CALL                             R11 2 1
       64 SETTABLEKS                       R11 R10 K14 ["Name"]
       66 CALL                             R7 3 1
       67 SETTABLEKS                       R7 R6 K7 ["ResetButton"]
       69 CALL                             R3 3 -1
       70 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADB                            R2 0
        3 GETTABLEKS                       R3 R0 K0 ["id"]
        5 JUMPIFEQKNIL                     R3 ; [+7]
        7 GETTABLEKS                       R3 R0 K1 ["resetLabel"]
        9 JUMPIFNOTEQKNIL                  R3 ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K2 ["createElement"]
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R4 R5 K3 ["View"]
       19 DUPTABLE                         R5 K6 [{"tag", "Size"}]
       20 LOADK                            R6 K7 ["size-0-0 auto-y col align-x-center"]
       21 SETTABLEKS                       R6 R5 K4 ["tag"]
       23 GETIMPORT                        R6 K10 [UDim2.fromOffset]
       25 LOADN                            R7 200
       26 LOADN                            R8 0
       27 CALL                             R6 2 1
       28 SETTABLEKS                       R6 R5 K5 ["Size"]
       30 DUPTABLE                         R6 K15 [{"Header", "Body", "Divider", "Footer"}]
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R7 R8 K2 ["createElement"]
       34 GETUPVAL                         R8 3
       35 DUPTABLE                         R9 K20 [{"search", "onSearchChanged", "searchLabel", "LayoutOrder"}]
       36 GETTABLEKS                       R10 R0 K16 ["search"]
       38 SETTABLEKS                       R10 R9 K16 ["search"]
       40 GETTABLEKS                       R10 R0 K17 ["onSearchChanged"]
       42 SETTABLEKS                       R10 R9 K17 ["onSearchChanged"]
       44 GETTABLEKS                       R10 R0 K18 ["searchLabel"]
       46 SETTABLEKS                       R10 R9 K18 ["searchLabel"]
       48 MOVE                             R10 R1
       49 CALL                             R10 0 1
       50 SETTABLEKS                       R10 R9 K19 ["LayoutOrder"]
       52 CALL                             R7 2 1
       53 SETTABLEKS                       R7 R6 K11 ["Header"]
       55 GETUPVAL                         R8 1
       56 GETTABLEKS                       R7 R8 K2 ["createElement"]
       58 GETUPVAL                         R8 4
       59 DUPTABLE                         R9 K23 [{"items", "id", "onIdChanged", "LayoutOrder"}]
       60 GETTABLEKS                       R10 R0 K21 ["items"]
       62 SETTABLEKS                       R10 R9 K21 ["items"]
       64 GETTABLEKS                       R10 R0 K0 ["id"]
       66 SETTABLEKS                       R10 R9 K0 ["id"]
       68 GETTABLEKS                       R10 R0 K22 ["onIdChanged"]
       70 SETTABLEKS                       R10 R9 K22 ["onIdChanged"]
       72 MOVE                             R10 R1
       73 CALL                             R10 0 1
       74 SETTABLEKS                       R10 R9 K19 ["LayoutOrder"]
       76 CALL                             R7 2 1
       77 SETTABLEKS                       R7 R6 K12 ["Body"]
       79 MOVE                             R7 R2
       80 JUMPIFNOT                        R7 ; [+12]
       81 GETUPVAL                         R8 1
       82 GETTABLEKS                       R7 R8 K2 ["createElement"]
       84 GETUPVAL                         R9 2
       85 GETTABLEKS                       R8 R9 K13 ["Divider"]
       87 DUPTABLE                         R9 K24 [{"LayoutOrder"}]
       88 MOVE                             R10 R1
       89 CALL                             R10 0 1
       90 SETTABLEKS                       R10 R9 K19 ["LayoutOrder"]
       92 CALL                             R7 2 1
       93 SETTABLEKS                       R7 R6 K13 ["Divider"]
       95 MOVE                             R7 R2
       96 JUMPIFNOT                        R7 ; [+18]
       97 GETUPVAL                         R8 1
       98 GETTABLEKS                       R7 R8 K2 ["createElement"]
      100 GETUPVAL                         R8 5
      101 DUPTABLE                         R9 K25 [{"onIdChanged", "resetLabel", "LayoutOrder"}]
      102 GETTABLEKS                       R10 R0 K22 ["onIdChanged"]
      104 SETTABLEKS                       R10 R9 K22 ["onIdChanged"]
      106 GETTABLEKS                       R10 R0 K1 ["resetLabel"]
      108 SETTABLEKS                       R10 R9 K1 ["resetLabel"]
      110 MOVE                             R10 R1
      111 CALL                             R10 0 1
      112 SETTABLEKS                       R10 R9 K19 ["LayoutOrder"]
      114 CALL                             R7 2 1
      115 SETTABLEKS                       R7 R6 K14 ["Footer"]
      117 CALL                             R3 3 -1
      118 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onIdChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K1 ["disable"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSearchChanged"]
        3 LOADK                            R1 K1 [""]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["id"]
        3 JUMPIF                           R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["placeholderLabel"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K2 ["items"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K0 ["id"]
       16 GETTABLE                         R0 R1 R2
       17 JUMPIFNOT                        R0 ; [+9]
       18 GETUPVAL                         R0 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K2 ["items"]
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K0 ["id"]
       25 GETTABLE                         R1 R2 R3
       26 CALL                             R0 1 0
       27 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["useState"]
        7 GETTABLEKS                       R4 R0 K1 ["placeholderLabel"]
        9 CALL                             R3 1 2
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K2 ["useCallback"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R7 0 0
       18 CALL                             R5 2 1
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R6 R7 K3 ["useEffect"]
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R8 0 1
       26 GETTABLEKS                       R9 R2 K4 ["enabled"]
       28 SETLIST                          R8 R9 1 [1]
       30 CALL                             R6 2 0
       31 GETUPVAL                         R7 2
       32 GETTABLEKS                       R6 R7 K3 ["useEffect"]
       34 NEWCLOSURE                       R7 P2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R8 0 2
       39 GETTABLEKS                       R9 R0 K5 ["id"]
       41 GETTABLEKS                       R10 R0 K6 ["items"]
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 0
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R6 R7 K7 ["createElement"]
       49 GETUPVAL                         R7 3
       50 DUPTABLE                         R8 K12 [{"toggle", "text", "maxWidth", "LayoutOrder"}]
       51 SETTABLEKS                       R2 R8 K8 ["toggle"]
       53 SETTABLEKS                       R3 R8 K9 ["text"]
       55 LOADN                            R9 184
       56 SETTABLEKS                       R9 R8 K10 ["maxWidth"]
       58 GETTABLEKS                       R9 R0 K11 ["LayoutOrder"]
       60 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       62 DUPTABLE                         R9 K14 [{"Content"}]
       63 GETUPVAL                         R11 2
       64 GETTABLEKS                       R10 R11 K7 ["createElement"]
       66 GETUPVAL                         R11 4
       67 DUPTABLE                         R12 K20 [{"id", "onIdChanged", "items", "resetLabel", "search", "onSearchChanged", "searchLabel", "LayoutOrder"}]
       68 GETTABLEKS                       R13 R0 K5 ["id"]
       70 SETTABLEKS                       R13 R12 K5 ["id"]
       72 SETTABLEKS                       R5 R12 K15 ["onIdChanged"]
       74 GETTABLEKS                       R13 R0 K6 ["items"]
       76 SETTABLEKS                       R13 R12 K6 ["items"]
       78 GETTABLEKS                       R13 R0 K16 ["resetLabel"]
       80 SETTABLEKS                       R13 R12 K16 ["resetLabel"]
       82 GETTABLEKS                       R13 R0 K17 ["search"]
       84 SETTABLEKS                       R13 R12 K17 ["search"]
       86 GETTABLEKS                       R13 R0 K18 ["onSearchChanged"]
       88 SETTABLEKS                       R13 R12 K18 ["onSearchChanged"]
       90 GETTABLEKS                       R13 R0 K19 ["searchLabel"]
       92 SETTABLEKS                       R13 R12 K19 ["searchLabel"]
       94 MOVE                             R13 R1
       95 CALL                             R13 0 1
       96 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K13 ["Content"]
      101 CALL                             R6 3 -1
      102 RETURN                           R6 -1

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
       30 GETTABLEKS                       R5 R2 K11 ["useToggleState"]
       32 GETTABLEKS                       R7 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R7 K13 ["Components"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R6 K14 ["Dropdown"]
       40 CALL                             R7 1 1
       41 DUPCLOSURE                       R8 K15 [PROTO_1]
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R3
       45 DUPCLOSURE                       R9 K16 [PROTO_2]
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 DUPCLOSURE                       R10 K17 [PROTO_4]
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R3
       54 DUPCLOSURE                       R11 K18 [PROTO_6]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R3
       58 DUPCLOSURE                       R12 K19 [PROTO_7]
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R11
       65 DUPCLOSURE                       R13 K20 [PROTO_11]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R5
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R12
       71 RETURN                           R13 1
