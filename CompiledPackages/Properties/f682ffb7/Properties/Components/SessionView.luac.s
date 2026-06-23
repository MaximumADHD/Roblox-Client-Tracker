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
        3 GETTABLEKS                       R2 R2 K1 ["instancePicker"]
        5 CALL                             R1 1 0
        6 GETUPVAL                         R1 1
        7 CALL                             R1 0 1
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["useContext"]
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K3 ["Context"]
       14 CALL                             R2 1 1
       15 GETTABLEKS                       R2 R2 K4 ["tabs"]
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K5 ["createSignal"]
       20 GETTABLEN                        R5 R2 1
       21 JUMPIFNOT                        R5 ; [+4]
       22 GETTABLEN                        R4 R2 1
       23 GETTABLEKS                       R4 R4 K6 ["id"]
       25 JUMP                             ; [+1]
       26 LOADK                            R4 K7 [""]
       27 CALL                             R3 1 2
       28 GETUPVAL                         R5 4
       29 GETTABLEKS                       R5 R5 K5 ["createSignal"]
       31 LOADK                            R6 K7 [""]
       32 CALL                             R5 1 2
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R7 R7 K5 ["createSignal"]
       36 NEWTABLE                         R8 0 0
       38 CALL                             R7 1 2
       39 GETUPVAL                         R9 2
       40 GETTABLEKS                       R9 R9 K8 ["useCallback"]
       42 NEWCLOSURE                       R10 P0
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
       77 GETTABLEKS                       R23 R11 K13 ["TitleBar"]
       79 GETTABLEKS                       R23 R23 K23 ["Height"]
       81 CALL                             R19 4 1
       82 SETTABLEKS                       R19 R18 K18 ["size"]
       84 CALL                             R16 2 1
       85 SETTABLEKS                       R16 R15 K13 ["TitleBar"]
       87 GETUPVAL                         R16 7
       88 GETUPVAL                         R17 10
       89 DUPTABLE                         R18 K27 [{"layoutOrder", "size", "getCurrentTab", "tabs", "onTabChanged", "onSearchChanged"}]
       90 MOVE                             R19 R10
       91 CALL                             R19 0 1
       92 SETTABLEKS                       R19 R18 K17 ["layoutOrder"]
       94 GETIMPORT                        R19 K22 [UDim2.new]
       96 LOADN                            R20 1
       97 LOADN                            R21 0
       98 LOADN                            R22 0
       99 GETTABLEKS                       R23 R11 K14 ["TabBar"]
      101 GETTABLEKS                       R23 R23 K23 ["Height"]
      103 CALL                             R19 4 1
      104 SETTABLEKS                       R19 R18 K18 ["size"]
      106 SETTABLEKS                       R3 R18 K24 ["getCurrentTab"]
      108 SETTABLEKS                       R2 R18 K4 ["tabs"]
      110 SETTABLEKS                       R4 R18 K25 ["onTabChanged"]
      112 SETTABLEKS                       R6 R18 K26 ["onSearchChanged"]
      114 CALL                             R16 2 1
      115 SETTABLEKS                       R16 R15 K14 ["TabBar"]
      117 GETUPVAL                         R16 7
      118 GETUPVAL                         R17 11
      119 DUPTABLE                         R18 K31 [{"scroll", "LayoutOrder", "Size"}]
      120 DUPTABLE                         R19 K34 [{"AutomaticCanvasSize", "CanvasSize"}]
      121 GETIMPORT                        R20 K38 [Enum.AutomaticSize.Y]
      123 SETTABLEKS                       R20 R19 K32 ["AutomaticCanvasSize"]
      125 GETIMPORT                        R20 K22 [UDim2.new]
      127 CALL                             R20 0 1
      128 SETTABLEKS                       R20 R19 K33 ["CanvasSize"]
      130 SETTABLEKS                       R19 R18 K28 ["scroll"]
      132 MOVE                             R19 R10
      133 CALL                             R19 0 1
      134 SETTABLEKS                       R19 R18 K29 ["LayoutOrder"]
      136 GETIMPORT                        R19 K22 [UDim2.new]
      138 LOADN                            R20 1
      139 LOADN                            R21 0
      140 LOADN                            R22 1
      141 GETTABLEKS                       R25 R11 K13 ["TitleBar"]
      143 GETTABLEKS                       R25 R25 K23 ["Height"]
      145 GETTABLEKS                       R26 R11 K14 ["TabBar"]
      147 GETTABLEKS                       R26 R26 K23 ["Height"]
      149 ADD                              R24 R25 R26
      150 MINUS                            R23 R24
      151 CALL                             R19 4 1
      152 SETTABLEKS                       R19 R18 K30 ["Size"]
      154 DUPTABLE                         R19 K40 [{"TabView"}]
      155 GETUPVAL                         R20 7
      156 GETUPVAL                         R21 12
      157 DUPTABLE                         R22 K45 [{"session", "filter", "setCategoryExpanded", "size", "labelWidthBinding", "initialCaches"}]
      158 GETTABLEKS                       R23 R0 K0 ["session"]
      160 SETTABLEKS                       R23 R22 K0 ["session"]
      162 DUPTABLE                         R23 K49 [{"getTab", "getSearch", "getCollapsedCategories"}]
      163 SETTABLEKS                       R3 R23 K46 ["getTab"]
      165 SETTABLEKS                       R5 R23 K47 ["getSearch"]
      167 SETTABLEKS                       R7 R23 K48 ["getCollapsedCategories"]
      169 SETTABLEKS                       R23 R22 K41 ["filter"]
      171 SETTABLEKS                       R9 R22 K42 ["setCategoryExpanded"]
      173 GETIMPORT                        R23 K22 [UDim2.new]
      175 LOADN                            R24 1
      176 GETTABLEKS                       R26 R11 K50 ["ScrollBar"]
      178 GETTABLEKS                       R26 R26 K51 ["Width"]
      180 MINUS                            R25 R26
      181 LOADN                            R26 0
      182 LOADN                            R27 0
      183 CALL                             R23 4 1
      184 SETTABLEKS                       R23 R22 K18 ["size"]
      186 GETTABLEKS                       R23 R1 K43 ["labelWidthBinding"]
      188 SETTABLEKS                       R23 R22 K43 ["labelWidthBinding"]
      190 DUPTABLE                         R23 K54 [{"categories", "properties"}]
      191 DUPTABLE                         R24 K58 [{"Properties", "Tags", "Attributes"}]
      192 LOADN                            R25 40
      193 SETTABLEKS                       R25 R24 K55 ["Properties"]
      195 LOADN                            R25 1
      196 SETTABLEKS                       R25 R24 K56 ["Tags"]
      198 LOADN                            R25 1
      199 SETTABLEKS                       R25 R24 K57 ["Attributes"]
      201 SETTABLEKS                       R24 R23 K52 ["categories"]
      203 DUPTABLE                         R24 K75 [{"string", "int", "float", "number", "Vector2", "Vector3", "boolean", "InstanceRef", "Enum", "DynamicEnum", "CombinedColor", "Content", "CFrame", "SecurityCapabilities", "Faces", "Color3", "BrickColor"}]
      204 LOADN                            R25 8
      205 SETTABLEKS                       R25 R24 K59 ["string"]
      207 LOADN                            R25 4
      208 SETTABLEKS                       R25 R24 K60 ["int"]
      210 LOADN                            R25 15
      211 SETTABLEKS                       R25 R24 K61 ["float"]
      213 LOADN                            R25 5
      214 SETTABLEKS                       R25 R24 K62 ["number"]
      216 LOADN                            R25 6
      217 SETTABLEKS                       R25 R24 K63 ["Vector2"]
      219 LOADN                            R25 20
      220 SETTABLEKS                       R25 R24 K64 ["Vector3"]
      222 LOADN                            R25 20
      223 SETTABLEKS                       R25 R24 K65 ["boolean"]
      225 LOADN                            R25 6
      226 SETTABLEKS                       R25 R24 K66 ["InstanceRef"]
      228 LOADN                            R25 16
      229 SETTABLEKS                       R25 R24 K35 ["Enum"]
      231 LOADN                            R25 2
      232 SETTABLEKS                       R25 R24 K67 ["DynamicEnum"]
      234 LOADN                            R25 2
      235 SETTABLEKS                       R25 R24 K68 ["CombinedColor"]
      237 LOADN                            R25 0
      238 SETTABLEKS                       R25 R24 K69 ["Content"]
      240 LOADN                            R25 6
      241 SETTABLEKS                       R25 R24 K70 ["CFrame"]
      243 LOADN                            R25 2
      244 SETTABLEKS                       R25 R24 K71 ["SecurityCapabilities"]
      246 LOADN                            R25 2
      247 SETTABLEKS                       R25 R24 K72 ["Faces"]
      249 LOADN                            R25 2
      250 SETTABLEKS                       R25 R24 K73 ["Color3"]
      252 LOADN                            R25 2
      253 SETTABLEKS                       R25 R24 K74 ["BrickColor"]
      255 SETTABLEKS                       R24 R23 K53 ["properties"]
      257 SETTABLEKS                       R23 R22 K44 ["initialCaches"]
      259 CALL                             R20 2 1
      260 SETTABLEKS                       R20 R19 K39 ["TabView"]
      262 CALL                             R16 3 1
      263 SETTABLEKS                       R16 R15 K15 ["ScrollingContent"]
      265 CALL                             R12 3 -1
      266 RETURN                           R12 -1

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
