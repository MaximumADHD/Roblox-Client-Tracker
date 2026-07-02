PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETTABLEKS                       R2 R0 K2 ["size"]
        8 GETTABLEKS                       R4 R0 K4 ["imagePadding"]
       10 ORK                              R3 R4 K3 [0]
       11 GETTABLEKS                       R4 R1 K5 ["Radius"]
       13 GETTABLEKS                       R4 R4 K6 ["Small"]
       15 GETUPVAL                         R5 1
       16 GETUPVAL                         R6 2
       17 DUPTABLE                         R7 K12 [{["tag"] = "Component-CarouselItem radius-small bg-shift-300", ["Size"], ["onActivated"], ["LayoutOrder"]}]
       18 GETIMPORT                        R8 K15 [UDim2.fromOffset]
       20 MOVE                             R9 R2
       21 MOVE                             R10 R2
       22 CALL                             R8 2 1
       23 SETTABLEKS                       R8 R7 K9 ["Size"]
       25 GETTABLEKS                       R8 R0 K10 ["onActivated"]
       27 SETTABLEKS                       R8 R7 K10 ["onActivated"]
       29 GETTABLEKS                       R8 R0 K11 ["LayoutOrder"]
       31 SETTABLEKS                       R8 R7 K11 ["LayoutOrder"]
       33 DUPTABLE                         R8 K19 [{"InnerBorder", "Image", "UIPadding"}]
       34 GETTABLEKS                       R9 R0 K20 ["selected"]
       36 JUMPIFNOT                        R9 ; [+46]
       37 GETUPVAL                         R9 1
       38 GETUPVAL                         R10 2
       39 DUPTABLE                         R11 K25 [{["tag"] = "position-center-center anchor-center-center", ["Size"], ["ZIndex"] = 2, ["testId"]}]
       40 GETIMPORT                        R12 K15 [UDim2.fromOffset]
       42 SUBK                             R13 R2 K26 [4]
       43 SUBK                             R14 R2 K26 [4]
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R11 K9 ["Size"]
       47 GETUPVAL                         R12 3
       48 GETTABLEKS                       R12 R12 K27 ["CarouselItem"]
       50 GETTABLEKS                       R12 R12 K28 ["Selected"]
       52 SETTABLEKS                       R12 R11 K24 ["testId"]
       54 DUPTABLE                         R12 K31 [{"UICorner", "UIStroke"}]
       55 GETUPVAL                         R13 1
       56 LOADK                            R14 K29 ["UICorner"]
       57 DUPTABLE                         R15 K33 [{"CornerRadius"}]
       58 GETIMPORT                        R16 K36 [UDim.new]
       60 LOADN                            R17 0
       61 SUBK                             R18 R4 K23 [2]
       62 CALL                             R16 2 1
       63 SETTABLEKS                       R16 R15 K32 ["CornerRadius"]
       65 CALL                             R13 2 1
       66 SETTABLEKS                       R13 R12 K29 ["UICorner"]
       68 GETUPVAL                         R13 1
       69 LOADK                            R14 K30 ["UIStroke"]
       70 DUPTABLE                         R15 K39 [{["Thickness"] = 2, ["Color"]}]
       71 GETIMPORT                        R16 K41 [Color3.new]
       73 LOADN                            R17 1
       74 LOADN                            R18 1
       75 LOADN                            R19 1
       76 CALL                             R16 3 1
       77 SETTABLEKS                       R16 R15 K38 ["Color"]
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K30 ["UIStroke"]
       82 CALL                             R9 3 1
       83 SETTABLEKS                       R9 R8 K16 ["InnerBorder"]
       85 GETUPVAL                         R9 1
       86 GETUPVAL                         R10 4
       87 DUPTABLE                         R11 K43 [{["tag"] = "position-center-center anchor-center-center size-full-full radius-small", ["Image"]}]
       88 GETTABLEKS                       R12 R0 K44 ["uri"]
       90 SETTABLEKS                       R12 R11 K17 ["Image"]
       92 CALL                             R9 2 1
       93 SETTABLEKS                       R9 R8 K17 ["Image"]
       95 GETUPVAL                         R9 1
       96 LOADK                            R10 K18 ["UIPadding"]
       97 DUPTABLE                         R11 K49 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       98 GETIMPORT                        R12 K36 [UDim.new]
      100 LOADN                            R13 0
      101 MOVE                             R14 R3
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K45 ["PaddingLeft"]
      105 GETIMPORT                        R12 K36 [UDim.new]
      107 LOADN                            R13 0
      108 MOVE                             R14 R3
      109 CALL                             R12 2 1
      110 SETTABLEKS                       R12 R11 K46 ["PaddingRight"]
      112 GETIMPORT                        R12 K36 [UDim.new]
      114 LOADN                            R13 0
      115 MOVE                             R14 R3
      116 CALL                             R12 2 1
      117 SETTABLEKS                       R12 R11 K47 ["PaddingTop"]
      119 GETIMPORT                        R12 K36 [UDim.new]
      121 LOADN                            R13 0
      122 MOVE                             R14 R3
      123 CALL                             R12 2 1
      124 SETTABLEKS                       R12 R11 K48 ["PaddingBottom"]
      126 CALL                             R9 2 1
      127 SETTABLEKS                       R9 R8 K18 ["UIPadding"]
      129 CALL                             R5 3 -1
      130 RETURN                           R5 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["canSelect"]
        3 JUMPIFNOT                        R0 ; [+8]
        4 GETUPVAL                         R0 1
        5 GETUPVAL                         R1 2
        6 JUMPIFNOTEQ                      R0 R1 ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 3
       10 GETUPVAL                         R1 2
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 4
       13 GETTABLEKS                       R0 R0 K1 ["onActivated"]
       15 JUMPIFNOT                        R0 ; [+4]
       16 GETUPVAL                         R0 4
       17 GETTABLEKS                       R0 R0 K1 ["onActivated"]
       19 CALL                             R0 0 0
       20 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R0 K9 [{[1], ["AutomaticSize"], ["CanvasSize"], ["ScrollingDirection"], ["ScrollingEnabled"] = True, ["HorizontalScrollBarInset"], ["VerticalScrollBarInset"], ["scrollBarVisibility"]}]
        1 GETIMPORT                        R1 K12 [Enum.AutomaticSize.X]
        3 SETTABLEKS                       R1 R0 K0 ["AutomaticCanvasSize"]
        5 GETIMPORT                        R1 K14 [Enum.AutomaticSize.Y]
        7 SETTABLEKS                       R1 R0 K1 ["AutomaticSize"]
        9 GETIMPORT                        R1 K17 [UDim2.fromOffset]
       11 LOADN                            R2 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K18 ["height"]
       15 CALL                             R1 2 1
       16 SETTABLEKS                       R1 R0 K2 ["CanvasSize"]
       18 GETIMPORT                        R1 K19 [Enum.ScrollingDirection.X]
       20 SETTABLEKS                       R1 R0 K3 ["ScrollingDirection"]
       22 GETIMPORT                        R1 K22 [Enum.ScrollBarInset.ScrollBar]
       24 SETTABLEKS                       R1 R0 K6 ["HorizontalScrollBarInset"]
       26 GETIMPORT                        R1 K24 [Enum.ScrollBarInset.None]
       28 SETTABLEKS                       R1 R0 K7 ["VerticalScrollBarInset"]
       30 GETUPVAL                         R1 1
       31 GETTABLEKS                       R1 R1 K25 ["Enums"]
       33 GETTABLEKS                       R1 R1 K26 ["Visibility"]
       35 GETTABLEKS                       R1 R1 K27 ["Auto"]
       37 SETTABLEKS                       R1 R0 K8 ["scrollBarVisibility"]
       39 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 LOADN                            R3 1
        6 CALL                             R2 1 2
        7 NEWTABLE                         R4 0 0
        9 GETTABLEKS                       R5 R0 K1 ["items"]
       11 LOADNIL                          R6
       12 LOADNIL                          R7
       13 FORGPREP                         R5
       14 MOVE                             R11 R4
       15 GETUPVAL                         R12 2
       16 GETUPVAL                         R13 3
       17 DUPTABLE                         R14 K9 [{"key", "uri", "size", "imagePadding", "selected", "onActivated", "LayoutOrder"}]
       18 GETTABLEKS                       R15 R9 K3 ["uri"]
       20 SETTABLEKS                       R15 R14 K2 ["key"]
       22 GETTABLEKS                       R15 R9 K3 ["uri"]
       24 SETTABLEKS                       R15 R14 K3 ["uri"]
       26 GETTABLEKS                       R15 R0 K10 ["height"]
       28 SETTABLEKS                       R15 R14 K4 ["size"]
       30 GETTABLEKS                       R15 R0 K5 ["imagePadding"]
       32 SETTABLEKS                       R15 R14 K5 ["imagePadding"]
       34 GETTABLEKS                       R16 R0 K11 ["canSelect"]
       36 JUMPIFNOT                        R16 ; [+5]
       37 JUMPIFEQ                         R8 R2 ; [+2]
       39 LOADB                            R15 0 +1
       40 LOADB                            R15 1
       41 JUMP                             ; [+1]
       42 LOADB                            R15 0
       43 SETTABLEKS                       R15 R14 K6 ["selected"]
       45 NEWCLOSURE                       R15 P0
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R8
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R9
       51 SETTABLEKS                       R15 R14 K7 ["onActivated"]
       53 MOVE                             R15 R1
       54 CALL                             R15 0 1
       55 SETTABLEKS                       R15 R14 K8 ["LayoutOrder"]
       57 CALL                             R12 2 -1
       58 FASTCALL                         TABLE_INSERT ; [+2]
       59 GETIMPORT                        R10 K14 [table.insert]
       61 CALL                             R10 -1 0
       62 FORGLOOP                         R5 2 ; [-49]
       64 GETUPVAL                         R5 1
       65 GETTABLEKS                       R5 R5 K15 ["useMemo"]
       67 NEWCLOSURE                       R6 P1
       68 CAPTURE                          VAL R0
       69 CAPTURE                          UPVAL U4
       70 NEWTABLE                         R7 0 1
       72 GETTABLEKS                       R8 R0 K10 ["height"]
       74 SETLIST                          R7 R8 1 [1]
       76 CALL                             R5 2 1
       77 GETUPVAL                         R6 2
       78 GETUPVAL                         R7 5
       79 DUPTABLE                         R8 K19 [{["tag"] = "Component-Carousel size-full-0 auto-y", ["scroll"], ["LayoutOrder"]}]
       80 SETTABLEKS                       R5 R8 K18 ["scroll"]
       82 GETTABLEKS                       R9 R0 K8 ["LayoutOrder"]
       84 SETTABLEKS                       R9 R8 K8 ["LayoutOrder"]
       86 DUPTABLE                         R9 K21 [{"Container"}]
       87 GETUPVAL                         R10 2
       88 GETUPVAL                         R11 6
       89 DUPTABLE                         R12 K24 [{["tag"] = "row gap-small auto-xy padding-bottom-xsmall", ["testId"]}]
       90 GETUPVAL                         R13 7
       91 GETTABLEKS                       R13 R13 K25 ["Carousel"]
       93 GETTABLEKS                       R13 R13 K20 ["Container"]
       95 SETTABLEKS                       R13 R12 K23 ["testId"]
       97 MOVE                             R13 R4
       98 CALL                             R10 3 1
       99 SETTABLEKS                       R10 R9 K20 ["Container"]
      101 CALL                             R6 3 -1
      102 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Parent"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Util"]
       32 GETTABLEKS                       R5 R5 K11 ["TestIds"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K12 ["Image"]
       37 GETTABLEKS                       R6 R1 K13 ["ScrollView"]
       39 GETTABLEKS                       R7 R1 K14 ["View"]
       41 GETTABLEKS                       R8 R3 K15 ["createNextOrder"]
       43 GETTABLEKS                       R9 R2 K16 ["createElement"]
       45 DUPCLOSURE                       R10 K17 [PROTO_0]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R9
       48 CAPTURE                          VAL R7
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 DUPCLOSURE                       R11 K18 [PROTO_3]
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R4
       60 RETURN                           R11 1
