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
        3 GETTABLEKS                       R2 R2 K1 ["specializedUtils"]
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
       54 DUPTABLE                         R14 K12 [{"tag", "onAbsoluteSizeChanged"}]
       55 LOADK                            R15 K13 ["size-full-full col align-x-center"]
       56 SETTABLEKS                       R15 R14 K10 ["tag"]
       58 GETTABLEKS                       R15 R1 K11 ["onAbsoluteSizeChanged"]
       60 SETTABLEKS                       R15 R14 K11 ["onAbsoluteSizeChanged"]
       62 DUPTABLE                         R15 K17 [{"TitleBar", "TabBar", "ScrollingContent"}]
       63 GETUPVAL                         R16 7
       64 GETUPVAL                         R17 9
       65 DUPTABLE                         R18 K20 [{"session", "layoutOrder", "size"}]
       66 GETTABLEKS                       R19 R0 K0 ["session"]
       68 SETTABLEKS                       R19 R18 K0 ["session"]
       70 MOVE                             R19 R10
       71 CALL                             R19 0 1
       72 SETTABLEKS                       R19 R18 K18 ["layoutOrder"]
       74 GETIMPORT                        R19 K23 [UDim2.new]
       76 LOADN                            R20 1
       77 LOADN                            R21 0
       78 LOADN                            R22 0
       79 GETTABLEKS                       R23 R11 K14 ["TitleBar"]
       81 GETTABLEKS                       R23 R23 K24 ["Height"]
       83 CALL                             R19 4 1
       84 SETTABLEKS                       R19 R18 K19 ["size"]
       86 CALL                             R16 2 1
       87 SETTABLEKS                       R16 R15 K14 ["TitleBar"]
       89 GETUPVAL                         R16 7
       90 GETUPVAL                         R17 10
       91 DUPTABLE                         R18 K28 [{"layoutOrder", "size", "getCurrentTab", "tabs", "onTabChanged", "onSearchChanged"}]
       92 MOVE                             R19 R10
       93 CALL                             R19 0 1
       94 SETTABLEKS                       R19 R18 K18 ["layoutOrder"]
       96 GETIMPORT                        R19 K23 [UDim2.new]
       98 LOADN                            R20 1
       99 LOADN                            R21 0
      100 LOADN                            R22 0
      101 GETTABLEKS                       R23 R11 K15 ["TabBar"]
      103 GETTABLEKS                       R23 R23 K24 ["Height"]
      105 CALL                             R19 4 1
      106 SETTABLEKS                       R19 R18 K19 ["size"]
      108 SETTABLEKS                       R3 R18 K25 ["getCurrentTab"]
      110 SETTABLEKS                       R2 R18 K5 ["tabs"]
      112 SETTABLEKS                       R4 R18 K26 ["onTabChanged"]
      114 SETTABLEKS                       R6 R18 K27 ["onSearchChanged"]
      116 CALL                             R16 2 1
      117 SETTABLEKS                       R16 R15 K15 ["TabBar"]
      119 GETUPVAL                         R16 7
      120 GETUPVAL                         R17 11
      121 DUPTABLE                         R18 K32 [{"scroll", "LayoutOrder", "Size"}]
      122 DUPTABLE                         R19 K35 [{"AutomaticCanvasSize", "CanvasSize"}]
      123 GETIMPORT                        R20 K39 [Enum.AutomaticSize.Y]
      125 SETTABLEKS                       R20 R19 K33 ["AutomaticCanvasSize"]
      127 GETIMPORT                        R20 K23 [UDim2.new]
      129 CALL                             R20 0 1
      130 SETTABLEKS                       R20 R19 K34 ["CanvasSize"]
      132 SETTABLEKS                       R19 R18 K29 ["scroll"]
      134 MOVE                             R19 R10
      135 CALL                             R19 0 1
      136 SETTABLEKS                       R19 R18 K30 ["LayoutOrder"]
      138 GETIMPORT                        R19 K23 [UDim2.new]
      140 LOADN                            R20 1
      141 LOADN                            R21 0
      142 LOADN                            R22 1
      143 GETTABLEKS                       R25 R11 K14 ["TitleBar"]
      145 GETTABLEKS                       R25 R25 K24 ["Height"]
      147 GETTABLEKS                       R26 R11 K15 ["TabBar"]
      149 GETTABLEKS                       R26 R26 K24 ["Height"]
      151 ADD                              R24 R25 R26
      152 MINUS                            R23 R24
      153 CALL                             R19 4 1
      154 SETTABLEKS                       R19 R18 K31 ["Size"]
      156 DUPTABLE                         R19 K41 [{"TabView"}]
      157 GETUPVAL                         R20 7
      158 GETUPVAL                         R21 12
      159 DUPTABLE                         R22 K46 [{"session", "filter", "setCategoryExpanded", "size", "labelWidthBinding", "initialCaches"}]
      160 GETTABLEKS                       R23 R0 K0 ["session"]
      162 SETTABLEKS                       R23 R22 K0 ["session"]
      164 DUPTABLE                         R23 K50 [{"getTab", "getSearch", "getCollapsedCategories"}]
      165 SETTABLEKS                       R3 R23 K47 ["getTab"]
      167 SETTABLEKS                       R5 R23 K48 ["getSearch"]
      169 SETTABLEKS                       R7 R23 K49 ["getCollapsedCategories"]
      171 SETTABLEKS                       R23 R22 K42 ["filter"]
      173 SETTABLEKS                       R9 R22 K43 ["setCategoryExpanded"]
      175 GETIMPORT                        R23 K23 [UDim2.new]
      177 LOADN                            R24 1
      178 GETTABLEKS                       R26 R11 K51 ["ScrollBar"]
      180 GETTABLEKS                       R26 R26 K52 ["Width"]
      182 MINUS                            R25 R26
      183 LOADN                            R26 0
      184 LOADN                            R27 0
      185 CALL                             R23 4 1
      186 SETTABLEKS                       R23 R22 K19 ["size"]
      188 GETTABLEKS                       R23 R1 K44 ["labelWidthBinding"]
      190 SETTABLEKS                       R23 R22 K44 ["labelWidthBinding"]
      192 DUPTABLE                         R23 K55 [{"categories", "properties"}]
      193 DUPTABLE                         R24 K59 [{"Properties", "Tags", "Attributes"}]
      194 LOADN                            R25 40
      195 SETTABLEKS                       R25 R24 K56 ["Properties"]
      197 LOADN                            R25 1
      198 SETTABLEKS                       R25 R24 K57 ["Tags"]
      200 LOADN                            R25 1
      201 SETTABLEKS                       R25 R24 K58 ["Attributes"]
      203 SETTABLEKS                       R24 R23 K53 ["categories"]
      205 DUPTABLE                         R24 K76 [{"string", "int", "float", "number", "Vector2", "Vector3", "boolean", "InstanceRef", "Enum", "DynamicEnum", "CombinedColor", "Content", "CFrame", "SecurityCapabilities", "Faces", "Color3", "BrickColor"}]
      206 LOADN                            R25 8
      207 SETTABLEKS                       R25 R24 K60 ["string"]
      209 LOADN                            R25 4
      210 SETTABLEKS                       R25 R24 K61 ["int"]
      212 LOADN                            R25 15
      213 SETTABLEKS                       R25 R24 K62 ["float"]
      215 LOADN                            R25 5
      216 SETTABLEKS                       R25 R24 K63 ["number"]
      218 LOADN                            R25 6
      219 SETTABLEKS                       R25 R24 K64 ["Vector2"]
      221 LOADN                            R25 20
      222 SETTABLEKS                       R25 R24 K65 ["Vector3"]
      224 LOADN                            R25 20
      225 SETTABLEKS                       R25 R24 K66 ["boolean"]
      227 LOADN                            R25 6
      228 SETTABLEKS                       R25 R24 K67 ["InstanceRef"]
      230 LOADN                            R25 16
      231 SETTABLEKS                       R25 R24 K36 ["Enum"]
      233 LOADN                            R25 2
      234 SETTABLEKS                       R25 R24 K68 ["DynamicEnum"]
      236 LOADN                            R25 2
      237 SETTABLEKS                       R25 R24 K69 ["CombinedColor"]
      239 LOADN                            R25 0
      240 SETTABLEKS                       R25 R24 K70 ["Content"]
      242 LOADN                            R25 6
      243 SETTABLEKS                       R25 R24 K71 ["CFrame"]
      245 LOADN                            R25 2
      246 SETTABLEKS                       R25 R24 K72 ["SecurityCapabilities"]
      248 LOADN                            R25 2
      249 SETTABLEKS                       R25 R24 K73 ["Faces"]
      251 LOADN                            R25 2
      252 SETTABLEKS                       R25 R24 K74 ["Color3"]
      254 LOADN                            R25 2
      255 SETTABLEKS                       R25 R24 K75 ["BrickColor"]
      257 SETTABLEKS                       R24 R23 K54 ["properties"]
      259 SETTABLEKS                       R23 R22 K45 ["initialCaches"]
      261 CALL                             R20 2 1
      262 SETTABLEKS                       R20 R19 K40 ["TabView"]
      264 CALL                             R16 3 1
      265 SETTABLEKS                       R16 R15 K16 ["ScrollingContent"]
      267 CALL                             R12 3 -1
      268 RETURN                           R12 -1

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
