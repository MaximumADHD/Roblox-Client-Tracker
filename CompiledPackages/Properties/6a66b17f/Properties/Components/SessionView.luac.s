PROTO_0:
        0 NEWTABLE                         R0 0 3
        2 DUPTABLE                         R1 K2 [{"id", "text"}]
        3 LOADK                            R2 K3 ["General"]
        4 SETTABLEKS                       R2 R1 K0 ["id"]
        6 GETUPVAL                         R2 0
        7 LOADK                            R4 K4 ["Tabs"]
        8 LOADK                            R5 K3 ["General"]
        9 NAMECALL                         R2 R2 K5 ["getText"]
       11 CALL                             R2 3 1
       12 SETTABLEKS                       R2 R1 K1 ["text"]
       14 DUPTABLE                         R2 K2 [{"id", "text"}]
       15 LOADK                            R3 K6 ["AttributesAndTags"]
       16 SETTABLEKS                       R3 R2 K0 ["id"]
       18 GETUPVAL                         R3 0
       19 LOADK                            R5 K4 ["Tabs"]
       20 LOADK                            R6 K6 ["AttributesAndTags"]
       21 NAMECALL                         R3 R3 K5 ["getText"]
       23 CALL                             R3 3 1
       24 SETTABLEKS                       R3 R2 K1 ["text"]
       26 DUPTABLE                         R3 K2 [{"id", "text"}]
       27 LOADK                            R4 K7 ["All"]
       28 SETTABLEKS                       R4 R3 K0 ["id"]
       30 GETUPVAL                         R4 0
       31 LOADK                            R6 K4 ["Tabs"]
       32 LOADK                            R7 K7 ["All"]
       33 NAMECALL                         R4 R4 K5 ["getText"]
       35 CALL                             R4 3 1
       36 SETTABLEKS                       R4 R3 K1 ["text"]
       38 SETLIST                          R0 R1 3 [1]
       40 RETURN                           R0 1

PROTO_1:
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

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["session"]
        3 GETTABLEKS                       R2 R3 K1 ["instancePicker"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       11 DUPCLOSURE                       R3 K3 [PROTO_0]
       12 CAPTURE                          UPVAL U3
       13 NEWTABLE                         R4 0 1
       15 GETUPVAL                         R6 3
       16 GETTABLEKS                       R5 R6 K4 ["locale"]
       18 SETLIST                          R4 R5 1 [1]
       20 CALL                             R2 2 1
       21 GETUPVAL                         R4 4
       22 GETTABLEKS                       R3 R4 K5 ["createSignal"]
       24 GETTABLEN                        R5 R2 1
       25 GETTABLEKS                       R4 R5 K6 ["id"]
       27 CALL                             R3 1 2
       28 GETUPVAL                         R6 4
       29 GETTABLEKS                       R5 R6 K5 ["createSignal"]
       31 LOADK                            R6 K7 [""]
       32 CALL                             R5 1 2
       33 GETUPVAL                         R8 4
       34 GETTABLEKS                       R7 R8 K5 ["createSignal"]
       36 NEWTABLE                         R8 0 0
       38 CALL                             R7 1 2
       39 GETUPVAL                         R10 2
       40 GETTABLEKS                       R9 R10 K8 ["useCallback"]
       42 NEWCLOSURE                       R10 P1
       43 CAPTURE                          VAL R7
       44 CAPTURE                          VAL R8
       45 CALL                             R9 1 1
       46 GETUPVAL                         R10 5
       47 CALL                             R10 0 1
       48 GETUPVAL                         R11 6
       49 CALL                             R11 0 1
       50 GETTABLEKS                       R13 R11 K9 ["Size"]
       52 GETTABLEKS                       R12 R13 K10 ["Size_800"]
       54 GETTABLEKS                       R14 R11 K9 ["Size"]
       56 GETTABLEKS                       R13 R14 K10 ["Size_800"]
       58 ADD                              R14 R12 R13
       59 GETUPVAL                         R15 7
       60 GETUPVAL                         R16 8
       61 DUPTABLE                         R17 K13 [{"tag", "onAbsoluteSizeChanged"}]
       62 LOADK                            R18 K14 ["size-full-full col align-x-center"]
       63 SETTABLEKS                       R18 R17 K11 ["tag"]
       65 GETTABLEKS                       R18 R1 K12 ["onAbsoluteSizeChanged"]
       67 SETTABLEKS                       R18 R17 K12 ["onAbsoluteSizeChanged"]
       69 DUPTABLE                         R18 K18 [{"TitleBar", "TabBar", "ScrollingContent"}]
       70 GETUPVAL                         R19 7
       71 GETUPVAL                         R20 9
       72 DUPTABLE                         R21 K21 [{"session", "layoutOrder", "size"}]
       73 GETTABLEKS                       R22 R0 K0 ["session"]
       75 SETTABLEKS                       R22 R21 K0 ["session"]
       77 MOVE                             R22 R10
       78 CALL                             R22 0 1
       79 SETTABLEKS                       R22 R21 K19 ["layoutOrder"]
       81 GETIMPORT                        R22 K24 [UDim2.new]
       83 LOADN                            R23 1
       84 LOADN                            R24 0
       85 LOADN                            R25 0
       86 MOVE                             R26 R12
       87 CALL                             R22 4 1
       88 SETTABLEKS                       R22 R21 K20 ["size"]
       90 CALL                             R19 2 1
       91 SETTABLEKS                       R19 R18 K15 ["TitleBar"]
       93 GETUPVAL                         R19 7
       94 GETUPVAL                         R20 10
       95 DUPTABLE                         R21 K29 [{"layoutOrder", "size", "getCurrentTab", "tabs", "onTabChanged", "onSearchChanged"}]
       96 MOVE                             R22 R10
       97 CALL                             R22 0 1
       98 SETTABLEKS                       R22 R21 K19 ["layoutOrder"]
      100 GETIMPORT                        R22 K24 [UDim2.new]
      102 LOADN                            R23 1
      103 LOADN                            R24 0
      104 LOADN                            R25 0
      105 MOVE                             R26 R13
      106 CALL                             R22 4 1
      107 SETTABLEKS                       R22 R21 K20 ["size"]
      109 SETTABLEKS                       R3 R21 K25 ["getCurrentTab"]
      111 SETTABLEKS                       R2 R21 K26 ["tabs"]
      113 SETTABLEKS                       R4 R21 K27 ["onTabChanged"]
      115 SETTABLEKS                       R6 R21 K28 ["onSearchChanged"]
      117 CALL                             R19 2 1
      118 SETTABLEKS                       R19 R18 K16 ["TabBar"]
      120 GETUPVAL                         R19 7
      121 GETUPVAL                         R20 11
      122 DUPTABLE                         R21 K32 [{"scroll", "LayoutOrder", "Size"}]
      123 DUPTABLE                         R22 K35 [{"AutomaticCanvasSize", "CanvasSize"}]
      124 GETIMPORT                        R23 K39 [Enum.AutomaticSize.Y]
      126 SETTABLEKS                       R23 R22 K33 ["AutomaticCanvasSize"]
      128 GETIMPORT                        R23 K24 [UDim2.new]
      130 CALL                             R23 0 1
      131 SETTABLEKS                       R23 R22 K34 ["CanvasSize"]
      133 SETTABLEKS                       R22 R21 K30 ["scroll"]
      135 MOVE                             R22 R10
      136 CALL                             R22 0 1
      137 SETTABLEKS                       R22 R21 K31 ["LayoutOrder"]
      139 GETIMPORT                        R22 K24 [UDim2.new]
      141 LOADN                            R23 1
      142 LOADN                            R24 0
      143 LOADN                            R25 1
      144 MINUS                            R26 R14
      145 CALL                             R22 4 1
      146 SETTABLEKS                       R22 R21 K9 ["Size"]
      148 DUPTABLE                         R22 K41 [{"TabView"}]
      149 GETUPVAL                         R23 7
      150 GETUPVAL                         R24 12
      151 DUPTABLE                         R25 K45 [{"session", "filter", "setCategoryExpanded", "size", "labelWidthBinding"}]
      152 GETTABLEKS                       R26 R0 K0 ["session"]
      154 SETTABLEKS                       R26 R25 K0 ["session"]
      156 DUPTABLE                         R26 K49 [{"getTab", "getSearch", "getCollapsedCategories"}]
      157 SETTABLEKS                       R3 R26 K46 ["getTab"]
      159 SETTABLEKS                       R5 R26 K47 ["getSearch"]
      161 SETTABLEKS                       R7 R26 K48 ["getCollapsedCategories"]
      163 SETTABLEKS                       R26 R25 K42 ["filter"]
      165 SETTABLEKS                       R9 R25 K43 ["setCategoryExpanded"]
      167 GETIMPORT                        R26 K24 [UDim2.new]
      169 LOADN                            R27 1
      170 GETUPVAL                         R30 13
      171 GETTABLEKS                       R29 R30 K50 ["scrollBarWidth"]
      173 MINUS                            R28 R29
      174 LOADN                            R29 0
      175 LOADN                            R30 0
      176 CALL                             R26 4 1
      177 SETTABLEKS                       R26 R25 K20 ["size"]
      179 GETTABLEKS                       R26 R1 K44 ["labelWidthBinding"]
      181 SETTABLEKS                       R26 R25 K44 ["labelWidthBinding"]
      183 CALL                             R23 2 1
      184 SETTABLEKS                       R23 R22 K40 ["TabView"]
      186 CALL                             R19 3 1
      187 SETTABLEKS                       R19 R18 K17 ["ScrollingContent"]
      189 CALL                             R15 3 -1
      190 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R4 K8 ["Constants"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R1 K9 ["Foundation"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R7 R0 K10 ["Components"]
       25 GETTABLEKS                       R6 R7 K11 ["Pooling"]
       27 GETTABLEKS                       R5 R6 K12 ["PooledTabView"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K13 ["PropertyEditorTypes"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K4 ["Parent"]
       39 GETTABLEKS                       R7 R8 K14 ["React"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R1 K15 ["ReactUtils"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R0 K16 ["RpcTypes"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R1 K17 ["Signals"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R12 R0 K10 ["Components"]
       61 GETTABLEKS                       R11 R12 K18 ["TabBar"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R13 R0 K10 ["Components"]
       68 GETTABLEKS                       R12 R13 K19 ["TitleBar"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K6 [require]
       73 GETTABLEKS                       R15 R0 K20 ["Resources"]
       75 GETTABLEKS                       R14 R15 K21 ["Localization"]
       77 GETTABLEKS                       R13 R14 K22 ["Translator"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R15 R0 K23 ["Hooks"]
       84 GETTABLEKS                       R14 R15 K24 ["useClearSelectionAction"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R16 R0 K23 ["Hooks"]
       91 GETTABLEKS                       R15 R16 K25 ["useLabelHiding"]
       93 CALL                             R14 1 1
       94 GETTABLEKS                       R15 R3 K26 ["ScrollView"]
       96 GETTABLEKS                       R16 R3 K27 ["View"]
       98 GETTABLEKS                       R18 R3 K23 ["Hooks"]
      100 GETTABLEKS                       R17 R18 K28 ["useTokens"]
      102 GETTABLEKS                       R18 R7 K29 ["createNextOrder"]
      104 GETTABLEKS                       R19 R6 K30 ["createElement"]
      106 DUPCLOSURE                       R20 K31 [PROTO_2]
      107 CAPTURE                          VAL R13
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R18
      113 CAPTURE                          VAL R17
      114 CAPTURE                          VAL R19
      115 CAPTURE                          VAL R16
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R4
      120 CAPTURE                          VAL R2
      121 RETURN                           R20 1
