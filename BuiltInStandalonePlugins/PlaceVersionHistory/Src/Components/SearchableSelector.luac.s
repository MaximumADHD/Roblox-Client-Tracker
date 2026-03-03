PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onSelected"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["item"]
        6 GETTABLEKS                       R1 R2 K2 ["id"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R6 R0 K1 ["item"]
       11 GETTABLEKS                       R5 R6 K2 ["id"]
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R4 1
       17 GETTABLEKS                       R3 R4 K3 ["createElement"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K4 ["View"]
       22 DUPTABLE                         R5 K9 [{"tag", "onActivated", "testId", "LayoutOrder"}]
       23 NEWTABLE                         R6 2 0
       25 LOADB                            R7 1
       26 SETTABLEKS                       R7 R6 K10 ["size-0-0 auto-xy row align-y-center padding-xsmall gap-xsmall radius-small"]
       28 GETTABLEKS                       R7 R0 K11 ["isSelected"]
       30 SETTABLEKS                       R7 R6 K12 ["bg-shift-100"]
       32 SETTABLEKS                       R6 R5 K5 ["tag"]
       34 SETTABLEKS                       R2 R5 K6 ["onActivated"]
       36 LOADK                            R7 K13 ["--selector-item-%*"]
       37 GETTABLEKS                       R10 R0 K1 ["item"]
       39 GETTABLEKS                       R9 R10 K2 ["id"]
       41 NAMECALL                         R7 R7 K14 ["format"]
       43 CALL                             R7 2 1
       44 MOVE                             R6 R7
       45 SETTABLEKS                       R6 R5 K7 ["testId"]
       47 GETTABLEKS                       R6 R0 K8 ["LayoutOrder"]
       49 SETTABLEKS                       R6 R5 K8 ["LayoutOrder"]
       51 DUPTABLE                         R6 K17 [{"Name", "Check"}]
       52 GETUPVAL                         R8 1
       53 GETTABLEKS                       R7 R8 K3 ["createElement"]
       55 GETUPVAL                         R9 2
       56 GETTABLEKS                       R8 R9 K18 ["Text"]
       58 DUPTABLE                         R9 K19 [{"tag", "Text", "LayoutOrder"}]
       59 NEWTABLE                         R10 2 0
       61 LOADB                            R11 1
       62 SETTABLEKS                       R11 R10 K20 ["size-0-0 auto-xy fill text-body-medium text-align-x-left text-truncate-split"]
       64 GETTABLEKS                       R11 R0 K11 ["isSelected"]
       66 SETTABLEKS                       R11 R10 K21 ["content-emphasis"]
       68 SETTABLEKS                       R10 R9 K5 ["tag"]
       70 GETTABLEKS                       R11 R0 K1 ["item"]
       72 GETTABLEKS                       R10 R11 K22 ["text"]
       74 SETTABLEKS                       R10 R9 K18 ["Text"]
       76 MOVE                             R10 R1
       77 CALL                             R10 0 1
       78 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       80 CALL                             R7 2 1
       81 SETTABLEKS                       R7 R6 K15 ["Name"]
       83 GETTABLEKS                       R7 R0 K11 ["isSelected"]
       85 JUMPIFNOT                        R7 ; [+30]
       86 GETUPVAL                         R8 1
       87 GETTABLEKS                       R7 R8 K3 ["createElement"]
       89 GETUPVAL                         R9 2
       90 GETTABLEKS                       R8 R9 K23 ["Icon"]
       92 DUPTABLE                         R9 K26 [{"name", "size", "LayoutOrder"}]
       93 GETUPVAL                         R13 2
       94 GETTABLEKS                       R12 R13 K27 ["Enums"]
       96 GETTABLEKS                       R11 R12 K28 ["IconName"]
       98 GETTABLEKS                       R10 R11 K16 ["Check"]
      100 SETTABLEKS                       R10 R9 K24 ["name"]
      102 GETUPVAL                         R13 2
      103 GETTABLEKS                       R12 R13 K27 ["Enums"]
      105 GETTABLEKS                       R11 R12 K29 ["IconSize"]
      107 GETTABLEKS                       R10 R11 K30 ["Small"]
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
       13 DUPTABLE                         R10 K7 [{"key", "item", "isSelected", "onSelected", "LayoutOrder"}]
       14 GETTABLEKS                       R11 R5 K8 ["id"]
       16 SETTABLEKS                       R11 R10 K2 ["key"]
       18 SETTABLEKS                       R5 R10 K3 ["item"]
       20 GETTABLEKS                       R12 R5 K8 ["id"]
       22 GETUPVAL                         R14 0
       23 GETTABLEKS                       R13 R14 K8 ["id"]
       25 JUMPIFEQ                         R12 R13 ; [+2]
       27 LOADB                            R11 0 +1
       28 LOADB                            R11 1
       29 SETTABLEKS                       R11 R10 K4 ["isSelected"]
       31 GETUPVAL                         R12 0
       32 GETTABLEKS                       R11 R12 K9 ["onIdChanged"]
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
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["resetId"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useCallback"]
        5 NEWCLOSURE                       R3 P0
        6 CAPTURE                          VAL R0
        7 NEWTABLE                         R4 0 1
        9 GETTABLEKS                       R5 R0 K1 ["resetId"]
       11 SETLIST                          R4 R5 1 [1]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R3 R4 K2 ["createElement"]
       17 GETUPVAL                         R5 2
       18 GETTABLEKS                       R4 R5 K3 ["View"]
       20 DUPTABLE                         R5 K6 [{"tag", "LayoutOrder"}]
       21 LOADK                            R6 K7 ["size-full-0 auto-y col flex-x-fill align-x-center padding-small"]
       22 SETTABLEKS                       R6 R5 K4 ["tag"]
       24 GETTABLEKS                       R6 R0 K5 ["LayoutOrder"]
       26 SETTABLEKS                       R6 R5 K5 ["LayoutOrder"]
       28 DUPTABLE                         R6 K9 [{"ResetButton"}]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R7 R8 K2 ["createElement"]
       32 GETUPVAL                         R9 2
       33 GETTABLEKS                       R8 R9 K3 ["View"]
       35 DUPTABLE                         R9 K12 [{"tag", "onActivated", "testId", "LayoutOrder"}]
       36 LOADK                            R10 K13 ["size-0-0 auto-xy row align-y-center padding-xsmall gap-xsmall radius-small"]
       37 SETTABLEKS                       R10 R9 K4 ["tag"]
       39 SETTABLEKS                       R2 R9 K10 ["onActivated"]
       41 LOADK                            R10 K14 ["--selector-reset-button"]
       42 SETTABLEKS                       R10 R9 K11 ["testId"]
       44 MOVE                             R10 R1
       45 CALL                             R10 0 1
       46 SETTABLEKS                       R10 R9 K5 ["LayoutOrder"]
       48 DUPTABLE                         R10 K17 [{"Icon", "Name"}]
       49 GETTABLEKS                       R11 R0 K18 ["resetIcon"]
       51 JUMPIFNOT                        R11 ; [+25]
       52 GETUPVAL                         R12 1
       53 GETTABLEKS                       R11 R12 K2 ["createElement"]
       55 GETUPVAL                         R13 2
       56 GETTABLEKS                       R12 R13 K15 ["Icon"]
       58 DUPTABLE                         R13 K21 [{"name", "size", "LayoutOrder"}]
       59 GETTABLEKS                       R14 R0 K18 ["resetIcon"]
       61 SETTABLEKS                       R14 R13 K19 ["name"]
       63 GETUPVAL                         R17 2
       64 GETTABLEKS                       R16 R17 K22 ["Enums"]
       66 GETTABLEKS                       R15 R16 K23 ["IconSize"]
       68 GETTABLEKS                       R14 R15 K24 ["Small"]
       70 SETTABLEKS                       R14 R13 K20 ["size"]
       72 MOVE                             R14 R1
       73 CALL                             R14 0 1
       74 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       76 CALL                             R11 2 1
       77 SETTABLEKS                       R11 R10 K15 ["Icon"]
       79 GETUPVAL                         R12 1
       80 GETTABLEKS                       R11 R12 K2 ["createElement"]
       82 GETUPVAL                         R13 2
       83 GETTABLEKS                       R12 R13 K25 ["Text"]
       85 DUPTABLE                         R13 K26 [{"tag", "Text", "LayoutOrder"}]
       86 LOADK                            R14 K27 ["size-0-0 auto-xy fill text-body-medium text-align-x-left text-truncate-split"]
       87 SETTABLEKS                       R14 R13 K4 ["tag"]
       89 GETTABLEKS                       R14 R0 K28 ["resetLabel"]
       91 SETTABLEKS                       R14 R13 K25 ["Text"]
       93 MOVE                             R14 R1
       94 CALL                             R14 0 1
       95 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       97 CALL                             R11 2 1
       98 SETTABLEKS                       R11 R10 K16 ["Name"]
      100 CALL                             R7 3 1
      101 SETTABLEKS                       R7 R6 K8 ["ResetButton"]
      103 CALL                             R3 3 -1
      104 RETURN                           R3 -1

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
       15 GETUPVAL                         R4 1
       16 GETTABLEKS                       R3 R4 K3 ["createElement"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K4 ["View"]
       21 DUPTABLE                         R5 K7 [{"tag", "Size"}]
       22 LOADK                            R6 K8 ["size-0-0 auto-y col align-x-center"]
       23 SETTABLEKS                       R6 R5 K5 ["tag"]
       25 GETIMPORT                        R6 K11 [UDim2.fromOffset]
       27 LOADN                            R7 200
       28 LOADN                            R8 0
       29 CALL                             R6 2 1
       30 SETTABLEKS                       R6 R5 K6 ["Size"]
       32 DUPTABLE                         R6 K16 [{"Header", "Body", "Divider", "Footer"}]
       33 GETUPVAL                         R8 1
       34 GETTABLEKS                       R7 R8 K3 ["createElement"]
       36 GETUPVAL                         R8 3
       37 DUPTABLE                         R9 K21 [{"search", "onSearchChanged", "searchLabel", "LayoutOrder"}]
       38 GETTABLEKS                       R10 R0 K17 ["search"]
       40 SETTABLEKS                       R10 R9 K17 ["search"]
       42 GETTABLEKS                       R10 R0 K18 ["onSearchChanged"]
       44 SETTABLEKS                       R10 R9 K18 ["onSearchChanged"]
       46 GETTABLEKS                       R10 R0 K19 ["searchLabel"]
       48 SETTABLEKS                       R10 R9 K19 ["searchLabel"]
       50 MOVE                             R10 R1
       51 CALL                             R10 0 1
       52 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       54 CALL                             R7 2 1
       55 SETTABLEKS                       R7 R6 K12 ["Header"]
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R7 R8 K3 ["createElement"]
       60 GETUPVAL                         R8 4
       61 DUPTABLE                         R9 K24 [{"items", "id", "onIdChanged", "LayoutOrder"}]
       62 GETTABLEKS                       R10 R0 K22 ["items"]
       64 SETTABLEKS                       R10 R9 K22 ["items"]
       66 GETTABLEKS                       R10 R0 K1 ["id"]
       68 SETTABLEKS                       R10 R9 K1 ["id"]
       70 GETTABLEKS                       R10 R0 K23 ["onIdChanged"]
       72 SETTABLEKS                       R10 R9 K23 ["onIdChanged"]
       74 MOVE                             R10 R1
       75 CALL                             R10 0 1
       76 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       78 CALL                             R7 2 1
       79 SETTABLEKS                       R7 R6 K13 ["Body"]
       81 MOVE                             R7 R2
       82 JUMPIFNOT                        R7 ; [+12]
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R7 R8 K3 ["createElement"]
       86 GETUPVAL                         R9 2
       87 GETTABLEKS                       R8 R9 K14 ["Divider"]
       89 DUPTABLE                         R9 K25 [{"LayoutOrder"}]
       90 MOVE                             R10 R1
       91 CALL                             R10 0 1
       92 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       94 CALL                             R7 2 1
       95 SETTABLEKS                       R7 R6 K14 ["Divider"]
       97 MOVE                             R7 R2
       98 JUMPIFNOT                        R7 ; [+26]
       99 GETUPVAL                         R8 1
      100 GETTABLEKS                       R7 R8 K3 ["createElement"]
      102 GETUPVAL                         R8 5
      103 DUPTABLE                         R9 K27 [{"onIdChanged", "resetLabel", "resetId", "resetIcon", "LayoutOrder"}]
      104 GETTABLEKS                       R10 R0 K23 ["onIdChanged"]
      106 SETTABLEKS                       R10 R9 K23 ["onIdChanged"]
      108 GETTABLEKS                       R10 R0 K0 ["resetLabel"]
      110 SETTABLEKS                       R10 R9 K0 ["resetLabel"]
      112 GETTABLEKS                       R10 R0 K2 ["resetId"]
      114 SETTABLEKS                       R10 R9 K2 ["resetId"]
      116 GETTABLEKS                       R10 R0 K26 ["resetIcon"]
      118 SETTABLEKS                       R10 R9 K26 ["resetIcon"]
      120 MOVE                             R10 R1
      121 CALL                             R10 0 1
      122 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
      124 CALL                             R7 2 1
      125 SETTABLEKS                       R7 R6 K15 ["Footer"]
      127 CALL                             R3 3 -1
      128 RETURN                           R3 -1

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
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R0 R3 K2 ["items"]
       13 LOADNIL                          R1
       14 LOADNIL                          R2
       15 FORGPREP                         R0
       16 GETTABLEKS                       R5 R4 K0 ["id"]
       18 GETUPVAL                         R7 0
       19 GETTABLEKS                       R6 R7 K0 ["id"]
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
       67 DUPTABLE                         R12 K22 [{"id", "onIdChanged", "items", "resetLabel", "resetId", "resetIcon", "search", "onSearchChanged", "searchLabel", "LayoutOrder"}]
       68 GETTABLEKS                       R13 R0 K5 ["id"]
       70 SETTABLEKS                       R13 R12 K5 ["id"]
       72 SETTABLEKS                       R5 R12 K15 ["onIdChanged"]
       74 GETTABLEKS                       R13 R0 K6 ["items"]
       76 SETTABLEKS                       R13 R12 K6 ["items"]
       78 GETTABLEKS                       R13 R0 K16 ["resetLabel"]
       80 SETTABLEKS                       R13 R12 K16 ["resetLabel"]
       82 GETTABLEKS                       R13 R0 K17 ["resetId"]
       84 SETTABLEKS                       R13 R12 K17 ["resetId"]
       86 GETTABLEKS                       R13 R0 K18 ["resetIcon"]
       88 SETTABLEKS                       R13 R12 K18 ["resetIcon"]
       90 GETTABLEKS                       R13 R0 K19 ["search"]
       92 SETTABLEKS                       R13 R12 K19 ["search"]
       94 GETTABLEKS                       R13 R0 K20 ["onSearchChanged"]
       96 SETTABLEKS                       R13 R12 K20 ["onSearchChanged"]
       98 GETTABLEKS                       R13 R0 K21 ["searchLabel"]
      100 SETTABLEKS                       R13 R12 K21 ["searchLabel"]
      102 MOVE                             R13 R1
      103 CALL                             R13 0 1
      104 SETTABLEKS                       R13 R12 K11 ["LayoutOrder"]
      106 CALL                             R10 2 1
      107 SETTABLEKS                       R10 R9 K13 ["Content"]
      109 CALL                             R6 3 -1
      110 RETURN                           R6 -1

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
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R10 R0 K12 ["Src"]
       45 GETTABLEKS                       R9 R10 K15 ["Types"]
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
