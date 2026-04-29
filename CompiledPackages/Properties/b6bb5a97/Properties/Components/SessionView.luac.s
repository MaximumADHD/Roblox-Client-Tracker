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
       50 GETUPVAL                         R12 7
       51 GETUPVAL                         R13 8
       52 DUPTABLE                         R14 K11 [{"tag", "onAbsoluteSizeChanged"}]
       53 LOADK                            R15 K12 ["size-full-full col align-x-center"]
       54 SETTABLEKS                       R15 R14 K9 ["tag"]
       56 GETTABLEKS                       R15 R1 K10 ["onAbsoluteSizeChanged"]
       58 SETTABLEKS                       R15 R14 K10 ["onAbsoluteSizeChanged"]
       60 DUPTABLE                         R15 K16 [{"TitleBar", "TabBar", "ScrollingContent"}]
       61 GETUPVAL                         R16 7
       62 GETUPVAL                         R17 9
       63 DUPTABLE                         R18 K19 [{"session", "layoutOrder", "size"}]
       64 GETTABLEKS                       R19 R0 K0 ["session"]
       66 SETTABLEKS                       R19 R18 K0 ["session"]
       68 MOVE                             R19 R10
       69 CALL                             R19 0 1
       70 SETTABLEKS                       R19 R18 K17 ["layoutOrder"]
       72 GETIMPORT                        R19 K22 [UDim2.new]
       74 LOADN                            R20 1
       75 LOADN                            R21 0
       76 LOADN                            R22 0
       77 GETTABLEKS                       R24 R11 K13 ["TitleBar"]
       79 GETTABLEKS                       R23 R24 K23 ["Height"]
       81 CALL                             R19 4 1
       82 SETTABLEKS                       R19 R18 K18 ["size"]
       84 CALL                             R16 2 1
       85 SETTABLEKS                       R16 R15 K13 ["TitleBar"]
       87 GETUPVAL                         R16 7
       88 GETUPVAL                         R17 10
       89 DUPTABLE                         R18 K28 [{"layoutOrder", "size", "getCurrentTab", "tabs", "onTabChanged", "onSearchChanged"}]
       90 MOVE                             R19 R10
       91 CALL                             R19 0 1
       92 SETTABLEKS                       R19 R18 K17 ["layoutOrder"]
       94 GETIMPORT                        R19 K22 [UDim2.new]
       96 LOADN                            R20 1
       97 LOADN                            R21 0
       98 LOADN                            R22 0
       99 GETTABLEKS                       R24 R11 K14 ["TabBar"]
      101 GETTABLEKS                       R23 R24 K23 ["Height"]
      103 CALL                             R19 4 1
      104 SETTABLEKS                       R19 R18 K18 ["size"]
      106 SETTABLEKS                       R3 R18 K24 ["getCurrentTab"]
      108 SETTABLEKS                       R2 R18 K25 ["tabs"]
      110 SETTABLEKS                       R4 R18 K26 ["onTabChanged"]
      112 SETTABLEKS                       R6 R18 K27 ["onSearchChanged"]
      114 CALL                             R16 2 1
      115 SETTABLEKS                       R16 R15 K14 ["TabBar"]
      117 GETUPVAL                         R16 7
      118 GETUPVAL                         R17 11
      119 DUPTABLE                         R18 K32 [{"scroll", "LayoutOrder", "Size"}]
      120 DUPTABLE                         R19 K35 [{"AutomaticCanvasSize", "CanvasSize"}]
      121 GETIMPORT                        R20 K39 [Enum.AutomaticSize.Y]
      123 SETTABLEKS                       R20 R19 K33 ["AutomaticCanvasSize"]
      125 GETIMPORT                        R20 K22 [UDim2.new]
      127 CALL                             R20 0 1
      128 SETTABLEKS                       R20 R19 K34 ["CanvasSize"]
      130 SETTABLEKS                       R19 R18 K29 ["scroll"]
      132 MOVE                             R19 R10
      133 CALL                             R19 0 1
      134 SETTABLEKS                       R19 R18 K30 ["LayoutOrder"]
      136 GETIMPORT                        R19 K22 [UDim2.new]
      138 LOADN                            R20 1
      139 LOADN                            R21 0
      140 LOADN                            R22 1
      141 GETTABLEKS                       R26 R11 K13 ["TitleBar"]
      143 GETTABLEKS                       R25 R26 K23 ["Height"]
      145 GETTABLEKS                       R27 R11 K14 ["TabBar"]
      147 GETTABLEKS                       R26 R27 K23 ["Height"]
      149 ADD                              R24 R25 R26
      150 MINUS                            R23 R24
      151 CALL                             R19 4 1
      152 SETTABLEKS                       R19 R18 K31 ["Size"]
      154 DUPTABLE                         R19 K41 [{"TabView"}]
      155 GETUPVAL                         R20 7
      156 GETUPVAL                         R21 12
      157 DUPTABLE                         R22 K45 [{"session", "filter", "setCategoryExpanded", "size", "labelWidthBinding"}]
      158 GETTABLEKS                       R23 R0 K0 ["session"]
      160 SETTABLEKS                       R23 R22 K0 ["session"]
      162 DUPTABLE                         R23 K49 [{"getTab", "getSearch", "getCollapsedCategories"}]
      163 SETTABLEKS                       R3 R23 K46 ["getTab"]
      165 SETTABLEKS                       R5 R23 K47 ["getSearch"]
      167 SETTABLEKS                       R7 R23 K48 ["getCollapsedCategories"]
      169 SETTABLEKS                       R23 R22 K42 ["filter"]
      171 SETTABLEKS                       R9 R22 K43 ["setCategoryExpanded"]
      173 GETIMPORT                        R23 K22 [UDim2.new]
      175 LOADN                            R24 1
      176 GETTABLEKS                       R27 R11 K50 ["ScrollBar"]
      178 GETTABLEKS                       R26 R27 K51 ["Width"]
      180 MINUS                            R25 R26
      181 LOADN                            R26 0
      182 LOADN                            R27 0
      183 CALL                             R23 4 1
      184 SETTABLEKS                       R23 R22 K18 ["size"]
      186 GETTABLEKS                       R23 R1 K44 ["labelWidthBinding"]
      188 SETTABLEKS                       R23 R22 K44 ["labelWidthBinding"]
      190 CALL                             R20 2 1
      191 SETTABLEKS                       R20 R19 K40 ["TabView"]
      193 CALL                             R16 3 1
      194 SETTABLEKS                       R16 R15 K15 ["ScrollingContent"]
      196 CALL                             R12 3 -1
      197 RETURN                           R12 -1

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
       16 GETTABLEKS                       R6 R0 K8 ["Components"]
       18 GETTABLEKS                       R5 R6 K9 ["Pooling"]
       20 GETTABLEKS                       R4 R5 K10 ["PooledTabView"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["PropertyEditorTypes"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K4 ["Parent"]
       32 GETTABLEKS                       R6 R7 K12 ["React"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K13 ["ReactUtils"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K14 ["RpcTypes"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R1 K15 ["Signals"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K6 [require]
       52 GETTABLEKS                       R11 R0 K8 ["Components"]
       54 GETTABLEKS                       R10 R11 K16 ["TabBar"]
       56 CALL                             R9 1 1
       57 GETIMPORT                        R10 K6 [require]
       59 GETTABLEKS                       R12 R0 K8 ["Components"]
       61 GETTABLEKS                       R11 R12 K17 ["TitleBar"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R14 R0 K18 ["Resources"]
       68 GETTABLEKS                       R13 R14 K19 ["Localization"]
       70 GETTABLEKS                       R12 R13 K20 ["Translator"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R14 R0 K21 ["Hooks"]
       77 GETTABLEKS                       R13 R14 K22 ["useClearSelectionAction"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K6 [require]
       82 GETTABLEKS                       R15 R0 K21 ["Hooks"]
       84 GETTABLEKS                       R14 R15 K23 ["useLabelHiding"]
       86 CALL                             R13 1 1
       87 GETIMPORT                        R14 K6 [require]
       89 GETTABLEKS                       R16 R0 K21 ["Hooks"]
       91 GETTABLEKS                       R15 R16 K24 ["useVisualValues"]
       93 CALL                             R14 1 1
       94 GETTABLEKS                       R15 R2 K25 ["ScrollView"]
       96 GETTABLEKS                       R16 R2 K26 ["View"]
       98 GETTABLEKS                       R17 R6 K27 ["createNextOrder"]
      100 GETTABLEKS                       R18 R5 K28 ["createElement"]
      102 DUPCLOSURE                       R19 K29 [PROTO_2]
      103 CAPTURE                          VAL R12
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R17
      109 CAPTURE                          VAL R14
      110 CAPTURE                          VAL R18
      111 CAPTURE                          VAL R16
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R15
      115 CAPTURE                          VAL R3
      116 RETURN                           R19 1
