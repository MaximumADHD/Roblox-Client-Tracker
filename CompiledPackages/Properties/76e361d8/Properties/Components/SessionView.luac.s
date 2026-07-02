PROTO_0:
        0 GETIMPORT                        R2 K2 [table.clone]
        2 GETUPVAL                         R3 0
        3 CALL                             R3 0 -1
        4 CALL                             R2 -1 1
        5 JUMPIFNOT                        R1 ; [+2]
        6 LOADNIL                          R3
        7 JUMP                             ; [+1]
        8 LOADB                            R3 1
        9 SETTABLE                         R3 R2 R0
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R2
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["session"]
        3 GETTABLEKS                       R2 R2 K1 ["specializedEditingUtils"]
        5 GETTABLEKS                       R2 R2 K2 ["instancePicker"]
        7 CALL                             R1 1 0
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 1
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R2 R2 K3 ["useContext"]
       13 GETUPVAL                         R3 3
       14 GETTABLEKS                       R3 R3 K4 ["Context"]
       16 CALL                             R2 1 1
       17 GETTABLEKS                       R2 R2 K5 ["tabs"]
       19 GETUPVAL                         R3 4
       20 GETTABLEKS                       R3 R3 K6 ["createSignal"]
       22 GETTABLEN                        R5 R2 1
       23 JUMPIFNOT                        R5 ; [+4]
       24 GETTABLEN                        R4 R2 1
       25 GETTABLEKS                       R4 R4 K7 ["id"]
       27 JUMP                             ; [+1]
       28 LOADK                            R4 K8 [""]
       29 CALL                             R3 1 2
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R5 R5 K6 ["createSignal"]
       33 LOADK                            R6 K8 [""]
       34 CALL                             R5 1 2
       35 GETUPVAL                         R7 4
       36 GETTABLEKS                       R7 R7 K6 ["createSignal"]
       38 NEWTABLE                         R8 0 0
       40 CALL                             R7 1 2
       41 GETUPVAL                         R9 2
       42 GETTABLEKS                       R9 R9 K9 ["useCallback"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          VAL R7
       46 CAPTURE                          VAL R8
       47 CALL                             R9 1 1
       48 GETUPVAL                         R10 5
       49 CALL                             R10 0 1
       50 GETUPVAL                         R11 6
       51 CALL                             R11 0 1
       52 GETUPVAL                         R12 7
       53 GETUPVAL                         R13 8
       54 DUPTABLE                         R14 K13 [{["tag"] = "col align-x-center size-full-full", ["onAbsoluteSizeChanged"]}]
       55 GETTABLEKS                       R15 R1 K12 ["onAbsoluteSizeChanged"]
       57 SETTABLEKS                       R15 R14 K12 ["onAbsoluteSizeChanged"]
       59 DUPTABLE                         R15 K17 [{"TitleBar", "TabBar", "ScrollingContent"}]
       60 GETUPVAL                         R16 7
       61 GETUPVAL                         R17 9
       62 DUPTABLE                         R18 K20 [{"session", "layoutOrder", "size"}]
       63 GETTABLEKS                       R19 R0 K0 ["session"]
       65 SETTABLEKS                       R19 R18 K0 ["session"]
       67 MOVE                             R19 R10
       68 CALL                             R19 0 1
       69 SETTABLEKS                       R19 R18 K18 ["layoutOrder"]
       71 GETIMPORT                        R19 K23 [UDim2.new]
       73 LOADN                            R20 1
       74 LOADN                            R21 0
       75 LOADN                            R22 0
       76 GETTABLEKS                       R23 R11 K14 ["TitleBar"]
       78 GETTABLEKS                       R23 R23 K24 ["Height"]
       80 CALL                             R19 4 1
       81 SETTABLEKS                       R19 R18 K19 ["size"]
       83 CALL                             R16 2 1
       84 SETTABLEKS                       R16 R15 K14 ["TitleBar"]
       86 GETUPVAL                         R16 7
       87 GETUPVAL                         R17 10
       88 DUPTABLE                         R18 K28 [{"layoutOrder", "size", "getCurrentTab", "tabs", "onTabChanged", "onSearchChanged"}]
       89 MOVE                             R19 R10
       90 CALL                             R19 0 1
       91 SETTABLEKS                       R19 R18 K18 ["layoutOrder"]
       93 GETIMPORT                        R19 K23 [UDim2.new]
       95 LOADN                            R20 1
       96 LOADN                            R21 0
       97 LOADN                            R22 0
       98 GETTABLEKS                       R23 R11 K15 ["TabBar"]
      100 GETTABLEKS                       R23 R23 K24 ["Height"]
      102 CALL                             R19 4 1
      103 SETTABLEKS                       R19 R18 K19 ["size"]
      105 SETTABLEKS                       R3 R18 K25 ["getCurrentTab"]
      107 SETTABLEKS                       R2 R18 K5 ["tabs"]
      109 SETTABLEKS                       R4 R18 K26 ["onTabChanged"]
      111 SETTABLEKS                       R6 R18 K27 ["onSearchChanged"]
      113 CALL                             R16 2 1
      114 SETTABLEKS                       R16 R15 K15 ["TabBar"]
      116 GETUPVAL                         R16 7
      117 GETUPVAL                         R17 11
      118 DUPTABLE                         R18 K32 [{"scroll", "LayoutOrder", "Size"}]
      119 DUPTABLE                         R19 K35 [{"AutomaticCanvasSize", "CanvasSize"}]
      120 GETIMPORT                        R20 K39 [Enum.AutomaticSize.Y]
      122 SETTABLEKS                       R20 R19 K33 ["AutomaticCanvasSize"]
      124 GETIMPORT                        R20 K23 [UDim2.new]
      126 CALL                             R20 0 1
      127 SETTABLEKS                       R20 R19 K34 ["CanvasSize"]
      129 SETTABLEKS                       R19 R18 K29 ["scroll"]
      131 MOVE                             R19 R10
      132 CALL                             R19 0 1
      133 SETTABLEKS                       R19 R18 K30 ["LayoutOrder"]
      135 GETIMPORT                        R19 K23 [UDim2.new]
      137 LOADN                            R20 1
      138 LOADN                            R21 0
      139 LOADN                            R22 1
      140 GETTABLEKS                       R25 R11 K14 ["TitleBar"]
      142 GETTABLEKS                       R25 R25 K24 ["Height"]
      144 GETTABLEKS                       R26 R11 K15 ["TabBar"]
      146 GETTABLEKS                       R26 R26 K24 ["Height"]
      148 ADD                              R24 R25 R26
      149 MINUS                            R23 R24
      150 CALL                             R19 4 1
      151 SETTABLEKS                       R19 R18 K31 ["Size"]
      153 DUPTABLE                         R19 K41 [{"TabView"}]
      154 GETUPVAL                         R20 7
      155 GETUPVAL                         R21 12
      156 DUPTABLE                         R22 K46 [{"session", "filter", "setCategoryExpanded", "size", "labelWidthBinding", "initialCaches"}]
      157 GETTABLEKS                       R23 R0 K0 ["session"]
      159 SETTABLEKS                       R23 R22 K0 ["session"]
      161 DUPTABLE                         R23 K50 [{"getTab", "getSearch", "getCollapsedCategories"}]
      162 SETTABLEKS                       R3 R23 K47 ["getTab"]
      164 SETTABLEKS                       R5 R23 K48 ["getSearch"]
      166 SETTABLEKS                       R7 R23 K49 ["getCollapsedCategories"]
      168 SETTABLEKS                       R23 R22 K42 ["filter"]
      170 SETTABLEKS                       R9 R22 K43 ["setCategoryExpanded"]
      172 GETIMPORT                        R23 K23 [UDim2.new]
      174 LOADN                            R24 1
      175 GETTABLEKS                       R26 R11 K51 ["ScrollBar"]
      177 GETTABLEKS                       R26 R26 K52 ["Width"]
      179 MINUS                            R25 R26
      180 LOADN                            R26 0
      181 LOADN                            R27 0
      182 CALL                             R23 4 1
      183 SETTABLEKS                       R23 R22 K19 ["size"]
      185 GETTABLEKS                       R23 R1 K44 ["labelWidthBinding"]
      187 SETTABLEKS                       R23 R22 K44 ["labelWidthBinding"]
      189 DUPTABLE                         R23 K55 [{"categories", "properties"}]
      190 DUPTABLE                         R24 K61 [{["Properties"] = 40, ["Tags"] = 1, ["Attributes"] = 1}]
      191 SETTABLEKS                       R24 R23 K53 ["categories"]
      193 DUPTABLE                         R24 K87 [{["string"] = 8, ["int"] = 4, ["float"] = 15, ["number"] = 5, ["Vector2"] = 6, ["Vector3"] = 20, ["boolean"] = 20, ["InstanceRef"] = 6, ["Enum"] = 16, ["DynamicEnum"] = 2, ["CombinedColor"] = 2, ["Content"] = 0, ["CFrame"] = 6, ["SecurityCapabilities"] = 2, ["Faces"] = 2, ["Color3"] = 2, ["BrickColor"] = 2}]
      194 SETTABLEKS                       R24 R23 K54 ["properties"]
      196 SETTABLEKS                       R23 R22 K45 ["initialCaches"]
      198 CALL                             R20 2 1
      199 SETTABLEKS                       R20 R19 K40 ["TabView"]
      201 CALL                             R16 3 1
      202 SETTABLEKS                       R16 R15 K16 ["ScrollingContent"]
      204 CALL                             R12 3 -1
      205 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Foundation"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Pooling"]
       20 GETTABLEKS                       R4 R4 K10 ["PooledTabView"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K11 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K12 ["ReactUtils"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K13 ["RpcTypes"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R1 K14 ["Signals"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K8 ["Components"]
       49 GETTABLEKS                       R9 R9 K15 ["TabBar"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K8 ["Components"]
       56 GETTABLEKS                       R10 R10 K16 ["Contexts"]
       58 GETTABLEKS                       R10 R10 K17 ["TabsContext"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R11 R0 K8 ["Components"]
       65 GETTABLEKS                       R11 R11 K18 ["TitleBar"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R12 R0 K19 ["Hooks"]
       72 GETTABLEKS                       R12 R12 K20 ["useClearSelectionAction"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R13 R0 K19 ["Hooks"]
       79 GETTABLEKS                       R13 R13 K21 ["useLabelHiding"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K19 ["Hooks"]
       86 GETTABLEKS                       R14 R14 K22 ["useVisualValues"]
       88 CALL                             R13 1 1
       89 GETTABLEKS                       R14 R2 K23 ["ScrollView"]
       91 GETTABLEKS                       R15 R2 K24 ["View"]
       93 GETTABLEKS                       R16 R5 K25 ["createNextOrder"]
       95 GETTABLEKS                       R17 R4 K26 ["createElement"]
       97 DUPCLOSURE                       R18 K27 [PROTO_1]
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R12
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R16
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R17
      106 CAPTURE                          VAL R15
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R3
      111 RETURN                           R18 1
