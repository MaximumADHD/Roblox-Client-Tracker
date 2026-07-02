PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSelected"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["item"]
        6 GETTABLEKS                       R1 R1 K2 ["id"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R0 K1 ["item"]
       11 GETTABLEKS                       R5 R5 K2 ["id"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K3 ["createElement"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["View"]
       22 DUPTABLE                         R5 K9 [{"tag", "onActivated", "testId", "LayoutOrder"}]
       23 NEWTABLE                         R6 2 0
       25 LOADB                            R7 1
       26 SETTABLEKS                       R7 R6 K10 ["row align-y-center gap-xsmall size-0-0 auto-xy padding-xsmall radius-small"]
       28 GETTABLEKS                       R7 R0 K11 ["isSelected"]
       30 SETTABLEKS                       R7 R6 K12 ["bg-shift-100"]
       32 SETTABLEKS                       R6 R5 K5 ["tag"]
       34 SETTABLEKS                       R2 R5 K6 ["onActivated"]
       36 LOADK                            R7 K13 ["--selector-item-%*"]
       37 GETTABLEKS                       R9 R0 K1 ["item"]
       39 GETTABLEKS                       R9 R9 K2 ["id"]
       41 NAMECALL                         R7 R7 K14 ["format"]
       43 CALL                             R7 2 1
       44 MOVE                             R6 R7
       45 SETTABLEKS                       R6 R5 K7 ["testId"]
       47 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       49 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       51 DUPTABLE                         R6 K17 [{"Name", "Check"}]
       52 GETUPVAL                         R7 1
       53 GETTABLEKS                       R7 R7 K3 ["createElement"]
       55 GETUPVAL                         R8 2
       56 GETTABLEKS                       R8 R8 K18 ["Text"]
       58 DUPTABLE                         R9 K19 [{"tag", "Text", "LayoutOrder"}]
       59 NEWTABLE                         R10 2 0
       61 LOADB                            R11 1
       62 SETTABLEKS                       R11 R10 K20 ["fill size-0-0 auto-xy text-body-medium text-align-x-left text-truncate-split"]
       64 GETTABLEKS                       R11 R0 K11 ["isSelected"]
       66 SETTABLEKS                       R11 R10 K21 ["content-emphasis"]
       68 SETTABLEKS                       R10 R9 K5 ["tag"]
       70 GETTABLEKS                       R10 R0 K1 ["item"]
       72 GETTABLEKS                       R10 R10 K22 ["text"]
       74 SETTABLEKS                       R10 R9 K18 ["Text"]
       76 MOVE                             R10 R1
       77 CALL                             R10 0 1
       78 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       80 CALL                             R7 2 1
       81 SETTABLEKS                       R7 R6 K15 ["Name"]
       83 GETTABLEKS                       R7 R0 K11 ["isSelected"]
       85 JUMPIFNOT                        R7 ; [+30]
       86 GETUPVAL                         R7 1
       87 GETTABLEKS                       R7 R7 K3 ["createElement"]
       89 GETUPVAL                         R8 2
       90 GETTABLEKS                       R8 R8 K23 ["Icon"]
       92 DUPTABLE                         R9 K26 [{"name", "size", "LayoutOrder"}]
       93 GETUPVAL                         R10 2
       94 GETTABLEKS                       R10 R10 K27 ["Enums"]
       96 GETTABLEKS                       R10 R10 K28 ["IconName"]
       98 GETTABLEKS                       R10 R10 K16 ["Check"]
      100 SETTABLEKS                       R10 R9 K24 ["name"]
      102 GETUPVAL                         R10 2
      103 GETTABLEKS                       R10 R10 K27 ["Enums"]
      105 GETTABLEKS                       R10 R10 K29 ["IconSize"]
      107 GETTABLEKS                       R10 R10 K30 ["Small"]
      109 SETTABLEKS                       R10 R9 K25 ["size"]
      111 MOVE                             R10 R1
      112 CALL                             R10 0 1
      113 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      115 CALL                             R7 2 1
      116 SETTABLEKS                       R7 R6 K16 ["Check"]
      118 CALL                             R3 3 -1
      119 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["View"]
        8 DUPTABLE                         R4 K5 [{["tag"] = "col align-x-center size-full-0 auto-y padding-small", ["LayoutOrder"]}]
        9 GETTABLEKS                       R5 R0 K4 ["LayoutOrder"]
       11 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       13 DUPTABLE                         R5 K7 [{"SearchBar"}]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R6 R6 K0 ["createElement"]
       17 GETUPVAL                         R7 2
       18 GETTABLEKS                       R7 R7 K8 ["TextInput"]
       20 DUPTABLE                         R8 K17 [{["label"] = "", ["size"], ["width"], ["placeholder"], ["leadingIcon"], ["text"], ["onChanged"], ["LayoutOrder"]}]
       21 GETUPVAL                         R9 2
       22 GETTABLEKS                       R9 R9 K18 ["Enums"]
       24 GETTABLEKS                       R9 R9 K19 ["InputSize"]
       26 GETTABLEKS                       R9 R9 K20 ["XSmall"]
       28 SETTABLEKS                       R9 R8 K11 ["size"]
       30 GETIMPORT                        R9 K23 [UDim.new]
       32 LOADN                            R10 0
       33 LOADN                            R11 184
       34 CALL                             R9 2 1
       35 SETTABLEKS                       R9 R8 K12 ["width"]
       37 GETTABLEKS                       R9 R0 K24 ["searchLabel"]
       39 SETTABLEKS                       R9 R8 K13 ["placeholder"]
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R9 R9 K18 ["Enums"]
       44 GETTABLEKS                       R9 R9 K25 ["IconName"]
       46 GETTABLEKS                       R9 R9 K26 ["MagnifyingGlass"]
       48 SETTABLEKS                       R9 R8 K14 ["leadingIcon"]
       50 GETTABLEKS                       R9 R0 K27 ["search"]
       52 SETTABLEKS                       R9 R8 K15 ["text"]
       54 GETTABLEKS                       R9 R0 K28 ["onSearchChanged"]
       56 SETTABLEKS                       R9 R8 K16 ["onChanged"]
       58 MOVE                             R9 R1
       59 CALL                             R9 0 1
       60 SETTABLEKS                       R9 R8 K4 ["LayoutOrder"]
       62 CALL                             R6 2 1
       63 SETTABLEKS                       R6 R5 K6 ["SearchBar"]
       65 CALL                             R2 3 -1
       66 RETURN                           R2 -1

PROTO_3:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["items"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 MOVE                             R7 R0
        9 GETUPVAL                         R8 1
       10 GETTABLEKS                       R8 R8 K1 ["createElement"]
       12 GETUPVAL                         R9 2
       13 DUPTABLE                         R10 K7 [{"key", "item", "isSelected", "onSelected", "LayoutOrder"}]
       14 GETTABLEKS                       R11 R5 K8 ["id"]
       16 SETTABLEKS                       R11 R10 K2 ["key"]
       18 SETTABLEKS                       R5 R10 K3 ["item"]
       20 GETTABLEKS                       R12 R5 K8 ["id"]
       22 GETUPVAL                         R13 0
       23 GETTABLEKS                       R13 R13 K8 ["id"]
       25 JUMPIFEQ                         R12 R13 ; [+2]
       27 LOADB                            R11 0 +1
       28 LOADB                            R11 1
       29 SETTABLEKS                       R11 R10 K4 ["isSelected"]
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R11 R11 K9 ["onIdChanged"]
       34 SETTABLEKS                       R11 R10 K5 ["onSelected"]
       36 GETUPVAL                         R11 3
       37 CALL                             R11 0 1
       38 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       40 CALL                             R8 2 -1
       41 FASTCALL                         TABLE_INSERT ; [+2]
       42 GETIMPORT                        R6 K12 [table.insert]
       44 CALL                             R6 -1 0
       45 FORGLOOP                         R1 2 ; [-38]
       47 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useMemo"]
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
       41 GETUPVAL                         R6 1
       42 GETTABLEKS                       R6 R6 K12 ["createElement"]
       44 GETUPVAL                         R7 3
       45 GETTABLEKS                       R7 R7 K13 ["ScrollView"]
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
      107 GETUPVAL                         R10 1
      108 GETTABLEKS                       R10 R10 K12 ["createElement"]
      110 GETUPVAL                         R11 3
      111 GETTABLEKS                       R11 R11 K47 ["View"]
      113 DUPTABLE                         R12 K50 [{["tag"] = "col flex-x-fill align-x-left size-0-0 auto-xy padding-bottom-small padding-left-small padding-right-small"}]
      114 MOVE                             R13 R2
      115 CALL                             R10 3 1
      116 SETTABLEKS                       R10 R9 K45 ["Items"]
      118 CALL                             R6 3 -1
      119 RETURN                           R6 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onIdChanged"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["resetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R0 K1 ["resetId"]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 GETTABLEKS                       R3 R3 K2 ["createElement"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K3 ["View"]
       20 DUPTABLE                         R5 K7 [{["tag"] = "col flex-x-fill align-x-center size-full-0 auto-y padding-small", ["LayoutOrder"]}]
       21 GETTABLEKS                       R6 R0 K6 ["LayoutOrder"]
       23 SETTABLEKS                       R6 R5 K6 ["LayoutOrder"]
       25 DUPTABLE                         R6 K9 [{"ResetButton"}]
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K2 ["createElement"]
       29 GETUPVAL                         R8 2
       30 GETTABLEKS                       R8 R8 K3 ["View"]
       32 DUPTABLE                         R9 K14 [{["tag"] = "row align-y-center gap-xsmall size-0-0 auto-xy padding-xsmall radius-small", ["onActivated"], ["testId"] = "--selector-reset-button", ["LayoutOrder"]}]
       33 SETTABLEKS                       R2 R9 K11 ["onActivated"]
       35 MOVE                             R10 R1
       36 CALL                             R10 0 1
       37 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       39 DUPTABLE                         R10 K17 [{"Icon", "Name"}]
       40 GETTABLEKS                       R11 R0 K18 ["resetIcon"]
       42 JUMPIFNOT                        R11 ; [+25]
       43 GETUPVAL                         R11 1
       44 GETTABLEKS                       R11 R11 K2 ["createElement"]
       46 GETUPVAL                         R12 2
       47 GETTABLEKS                       R12 R12 K15 ["Icon"]
       49 DUPTABLE                         R13 K21 [{"name", "size", "LayoutOrder"}]
       50 GETTABLEKS                       R14 R0 K18 ["resetIcon"]
       52 SETTABLEKS                       R14 R13 K19 ["name"]
       54 GETUPVAL                         R14 2
       55 GETTABLEKS                       R14 R14 K22 ["Enums"]
       57 GETTABLEKS                       R14 R14 K23 ["IconSize"]
       59 GETTABLEKS                       R14 R14 K24 ["Small"]
       61 SETTABLEKS                       R14 R13 K20 ["size"]
       63 MOVE                             R14 R1
       64 CALL                             R14 0 1
       65 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       67 CALL                             R11 2 1
       68 SETTABLEKS                       R11 R10 K15 ["Icon"]
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R11 R11 K2 ["createElement"]
       73 GETUPVAL                         R12 2
       74 GETTABLEKS                       R12 R12 K25 ["Text"]
       76 DUPTABLE                         R13 K27 [{["tag"] = "fill size-0-0 auto-xy text-body-medium text-align-x-left text-truncate-split", ["Text"], ["LayoutOrder"]}]
       77 GETTABLEKS                       R14 R0 K28 ["resetLabel"]
       79 SETTABLEKS                       R14 R13 K25 ["Text"]
       81 MOVE                             R14 R1
       82 CALL                             R14 0 1
       83 SETTABLEKS                       R14 R13 K6 ["LayoutOrder"]
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K16 ["Name"]
       88 CALL                             R7 3 1
       89 SETTABLEKS                       R7 R6 K8 ["ResetButton"]
       91 CALL                             R3 3 -1
       92 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 LOADB                            R2 0
        3 GETTABLEKS                       R3 R0 K0 ["resetLabel"]
        5 JUMPIFEQKNIL                     R3 ; [+9]
        7 GETTABLEKS                       R3 R0 K1 ["id"]
        9 GETTABLEKS                       R4 R0 K2 ["resetId"]
       11 JUMPIFNOTEQ                      R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R3 R3 K3 ["createElement"]
       18 GETUPVAL                         R4 2
       19 GETTABLEKS                       R4 R4 K4 ["View"]
       21 DUPTABLE                         R5 K8 [{["tag"] = "col align-x-center size-0-0 auto-y", ["Size"]}]
       22 GETIMPORT                        R6 K11 [UDim2.fromOffset]
       24 LOADN                            R7 200
       25 LOADN                            R8 0
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K7 ["Size"]
       29 DUPTABLE                         R6 K16 [{"Header", "Body", "Divider", "Footer"}]
       30 GETUPVAL                         R7 1
       31 GETTABLEKS                       R7 R7 K3 ["createElement"]
       33 GETUPVAL                         R8 3
       34 DUPTABLE                         R9 K21 [{"search", "onSearchChanged", "searchLabel", "LayoutOrder"}]
       35 GETTABLEKS                       R10 R0 K17 ["search"]
       37 SETTABLEKS                       R10 R9 K17 ["search"]
       39 GETTABLEKS                       R10 R0 K18 ["onSearchChanged"]
       41 SETTABLEKS                       R10 R9 K18 ["onSearchChanged"]
       43 GETTABLEKS                       R10 R0 K19 ["searchLabel"]
       45 SETTABLEKS                       R10 R9 K19 ["searchLabel"]
       47 MOVE                             R10 R1
       48 CALL                             R10 0 1
       49 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       51 CALL                             R7 2 1
       52 SETTABLEKS                       R7 R6 K12 ["Header"]
       54 GETUPVAL                         R7 1
       55 GETTABLEKS                       R7 R7 K3 ["createElement"]
       57 GETUPVAL                         R8 4
       58 DUPTABLE                         R9 K24 [{"items", "id", "onIdChanged", "LayoutOrder"}]
       59 GETTABLEKS                       R10 R0 K22 ["items"]
       61 SETTABLEKS                       R10 R9 K22 ["items"]
       63 GETTABLEKS                       R10 R0 K1 ["id"]
       65 SETTABLEKS                       R10 R9 K1 ["id"]
       67 GETTABLEKS                       R10 R0 K23 ["onIdChanged"]
       69 SETTABLEKS                       R10 R9 K23 ["onIdChanged"]
       71 MOVE                             R10 R1
       72 CALL                             R10 0 1
       73 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       75 CALL                             R7 2 1
       76 SETTABLEKS                       R7 R6 K13 ["Body"]
       78 MOVE                             R7 R2
       79 JUMPIFNOT                        R7 ; [+12]
       80 GETUPVAL                         R7 1
       81 GETTABLEKS                       R7 R7 K3 ["createElement"]
       83 GETUPVAL                         R8 2
       84 GETTABLEKS                       R8 R8 K14 ["Divider"]
       86 DUPTABLE                         R9 K25 [{"LayoutOrder"}]
       87 MOVE                             R10 R1
       88 CALL                             R10 0 1
       89 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       91 CALL                             R7 2 1
       92 SETTABLEKS                       R7 R6 K14 ["Divider"]
       94 MOVE                             R7 R2
       95 JUMPIFNOT                        R7 ; [+26]
       96 GETUPVAL                         R7 1
       97 GETTABLEKS                       R7 R7 K3 ["createElement"]
       99 GETUPVAL                         R8 5
      100 DUPTABLE                         R9 K27 [{"onIdChanged", "resetLabel", "resetId", "resetIcon", "LayoutOrder"}]
      101 GETTABLEKS                       R10 R0 K23 ["onIdChanged"]
      103 SETTABLEKS                       R10 R9 K23 ["onIdChanged"]
      105 GETTABLEKS                       R10 R0 K0 ["resetLabel"]
      107 SETTABLEKS                       R10 R9 K0 ["resetLabel"]
      109 GETTABLEKS                       R10 R0 K2 ["resetId"]
      111 SETTABLEKS                       R10 R9 K2 ["resetId"]
      113 GETTABLEKS                       R10 R0 K26 ["resetIcon"]
      115 SETTABLEKS                       R10 R9 K26 ["resetIcon"]
      117 MOVE                             R10 R1
      118 CALL                             R10 0 1
      119 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
      121 CALL                             R7 2 1
      122 SETTABLEKS                       R7 R6 K15 ["Footer"]
      124 CALL                             R3 3 -1
      125 RETURN                           R3 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onIdChanged"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["disable"]
        8 CALL                             R1 0 0
        9 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onSearchChanged"]
        3 LOADK                            R1 K1 [""]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["id"]
        3 JUMPIF                           R0 ; [+6]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["placeholderLabel"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0
       10 GETUPVAL                         R0 0
       11 GETTABLEKS                       R0 R0 K2 ["items"]
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 FORGPREP                         R0
       16 GETTABLEKS                       R5 R4 K0 ["id"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R6 R6 K0 ["id"]
       21 JUMPIFNOTEQ                      R5 R6 ; [+6]
       23 GETUPVAL                         R5 1
       24 GETTABLEKS                       R6 R4 K3 ["text"]
       26 CALL                             R5 1 0
       27 RETURN                           R0 0
       28 FORGLOOP                         R0 2 ; [-13]
       30 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useState"]
        7 GETTABLEKS                       R4 R0 K1 ["placeholderLabel"]
        9 CALL                             R3 1 2
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       13 NEWCLOSURE                       R6 P0
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R2
       16 NEWTABLE                         R7 0 0
       18 CALL                             R5 2 1
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       22 NEWCLOSURE                       R7 P1
       23 CAPTURE                          VAL R0
       24 NEWTABLE                         R8 0 1
       26 GETTABLEKS                       R9 R2 K4 ["enabled"]
       28 SETLIST                          R8 R9 1 [1]
       30 CALL                             R6 2 0
       31 GETUPVAL                         R6 2
       32 GETTABLEKS                       R6 R6 K3 ["useEffect"]
       34 NEWCLOSURE                       R7 P2
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R4
       37 NEWTABLE                         R8 0 2
       39 GETTABLEKS                       R9 R0 K5 ["id"]
       41 GETTABLEKS                       R10 R0 K6 ["items"]
       43 SETLIST                          R8 R9 2 [1]
       45 CALL                             R6 2 0
       46 GETUPVAL                         R6 2
       47 GETTABLEKS                       R6 R6 K7 ["createElement"]
       49 GETUPVAL                         R7 3
       50 DUPTABLE                         R8 K13 [{["toggle"], ["text"], ["maxWidth"] = 184, ["LayoutOrder"]}]
       51 SETTABLEKS                       R2 R8 K8 ["toggle"]
       53 SETTABLEKS                       R3 R8 K9 ["text"]
       55 GETTABLEKS                       R9 R0 K12 ["LayoutOrder"]
       57 SETTABLEKS                       R9 R8 K12 ["LayoutOrder"]
       59 DUPTABLE                         R9 K15 [{"Content"}]
       60 GETUPVAL                         R10 2
       61 GETTABLEKS                       R10 R10 K7 ["createElement"]
       63 GETUPVAL                         R11 4
       64 DUPTABLE                         R12 K23 [{"id", "onIdChanged", "items", "resetLabel", "resetId", "resetIcon", "search", "onSearchChanged", "searchLabel", "LayoutOrder"}]
       65 GETTABLEKS                       R13 R0 K5 ["id"]
       67 SETTABLEKS                       R13 R12 K5 ["id"]
       69 SETTABLEKS                       R5 R12 K16 ["onIdChanged"]
       71 GETTABLEKS                       R13 R0 K6 ["items"]
       73 SETTABLEKS                       R13 R12 K6 ["items"]
       75 GETTABLEKS                       R13 R0 K17 ["resetLabel"]
       77 SETTABLEKS                       R13 R12 K17 ["resetLabel"]
       79 GETTABLEKS                       R13 R0 K18 ["resetId"]
       81 SETTABLEKS                       R13 R12 K18 ["resetId"]
       83 GETTABLEKS                       R13 R0 K19 ["resetIcon"]
       85 SETTABLEKS                       R13 R12 K19 ["resetIcon"]
       87 GETTABLEKS                       R13 R0 K20 ["search"]
       89 SETTABLEKS                       R13 R12 K20 ["search"]
       91 GETTABLEKS                       R13 R0 K21 ["onSearchChanged"]
       93 SETTABLEKS                       R13 R12 K21 ["onSearchChanged"]
       95 GETTABLEKS                       R13 R0 K22 ["searchLabel"]
       97 SETTABLEKS                       R13 R12 K22 ["searchLabel"]
       99 MOVE                             R13 R1
      100 CALL                             R13 0 1
      101 SETTABLEKS                       R13 R12 K12 ["LayoutOrder"]
      103 CALL                             R10 2 1
      104 SETTABLEKS                       R10 R9 K14 ["Content"]
      106 CALL                             R6 3 -1
      107 RETURN                           R6 -1

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
       30 GETTABLEKS                       R5 R2 K11 ["useToggleState"]
       32 GETTABLEKS                       R6 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R6 K13 ["Components"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R6 K14 ["Dropdown"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R0 K12 ["Src"]
       45 GETTABLEKS                       R9 R9 K15 ["Types"]
       47 CALL                             R8 1 1
       48 DUPCLOSURE                       R9 K16 [PROTO_1]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R3
       52 DUPCLOSURE                       R10 K17 [PROTO_2]
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 DUPCLOSURE                       R11 K18 [PROTO_4]
       57 CAPTURE                          VAL R4
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R9
       60 CAPTURE                          VAL R3
       61 DUPCLOSURE                       R12 K19 [PROTO_6]
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R3
       65 DUPCLOSURE                       R13 K20 [PROTO_7]
       66 CAPTURE                          VAL R4
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R10
       70 CAPTURE                          VAL R11
       71 CAPTURE                          VAL R12
       72 DUPCLOSURE                       R14 K21 [PROTO_11]
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R7
       77 CAPTURE                          VAL R13
       78 RETURN                           R14 1
