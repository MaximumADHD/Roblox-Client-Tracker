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
       15 LOADK                            R3 K6 ["TagsAndAttributes"]
       16 SETTABLEKS                       R3 R2 K0 ["id"]
       18 GETUPVAL                         R3 0
       19 LOADK                            R5 K4 ["Tabs"]
       20 LOADK                            R6 K7 ["AttributesAndTags"]
       21 NAMECALL                         R3 R3 K5 ["getText"]
       23 CALL                             R3 3 1
       24 SETTABLEKS                       R3 R2 K1 ["text"]
       26 DUPTABLE                         R3 K2 [{"id", "text"}]
       27 LOADK                            R4 K8 ["All"]
       28 SETTABLEKS                       R4 R3 K0 ["id"]
       30 GETUPVAL                         R4 0
       31 LOADK                            R6 K4 ["Tabs"]
       32 LOADK                            R7 K8 ["All"]
       33 NAMECALL                         R4 R4 K5 ["getText"]
       35 CALL                             R4 3 1
       36 SETTABLEKS                       R4 R3 K1 ["text"]
       38 SETLIST                          R0 R1 3 [1]
       40 RETURN                           R0 1

PROTO_1:
        0 GETIMPORT                        R1 K2 [string.find]
        2 GETIMPORT                        R2 K4 [string.lower]
        4 GETTABLEKS                       R4 R0 K5 ["id"]
        6 GETTABLEKS                       R3 R4 K6 ["name"]
        8 CALL                             R2 1 1
        9 GETIMPORT                        R3 K4 [string.lower]
       11 GETUPVAL                         R4 0
       12 CALL                             R3 1 1
       13 LOADN                            R4 1
       14 LOADB                            R5 1
       15 CALL                             R1 4 -1
       16 RETURN                           R1 -1

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
       21 GETUPVAL                         R4 2
       22 GETTABLEKS                       R3 R4 K5 ["useState"]
       24 LOADK                            R4 K6 [""]
       25 CALL                             R3 1 2
       26 GETUPVAL                         R6 4
       27 GETTABLEKS                       R5 R6 K7 ["use"]
       29 GETTABLEKS                       R7 R0 K0 ["session"]
       31 GETTABLEKS                       R6 R7 K8 ["propertiesObservable"]
       33 CALL                             R5 1 1
       34 JUMPIFEQKS                       R3 K6 [""] ; [+11]
       36 GETUPVAL                         R8 5
       37 GETTABLEKS                       R7 R8 K9 ["List"]
       39 GETTABLEKS                       R6 R7 K10 ["filter"]
       41 MOVE                             R7 R5
       42 NEWCLOSURE                       R8 P1
       43 CAPTURE                          VAL R3
       44 CALL                             R6 2 1
       45 MOVE                             R5 R6
       46 GETUPVAL                         R7 2
       47 GETTABLEKS                       R6 R7 K5 ["useState"]
       49 GETTABLEN                        R8 R2 1
       50 GETTABLEKS                       R7 R8 K11 ["id"]
       52 CALL                             R6 1 2
       53 GETUPVAL                         R8 6
       54 CALL                             R8 0 1
       55 GETUPVAL                         R9 7
       56 CALL                             R9 0 1
       57 GETTABLEKS                       R11 R9 K12 ["Size"]
       59 GETTABLEKS                       R10 R11 K13 ["Size_800"]
       61 GETTABLEKS                       R12 R9 K12 ["Size"]
       63 GETTABLEKS                       R11 R12 K13 ["Size_800"]
       65 ADD                              R12 R10 R11
       66 GETUPVAL                         R13 8
       67 GETUPVAL                         R14 9
       68 DUPTABLE                         R15 K16 [{"tag", "onAbsoluteSizeChanged"}]
       69 LOADK                            R16 K17 ["size-full-full col align-x-center"]
       70 SETTABLEKS                       R16 R15 K14 ["tag"]
       72 GETTABLEKS                       R16 R1 K15 ["onAbsoluteSizeChanged"]
       74 SETTABLEKS                       R16 R15 K15 ["onAbsoluteSizeChanged"]
       76 DUPTABLE                         R16 K21 [{"TitleBar", "TabBar", "ScrollingContent"}]
       77 GETUPVAL                         R17 8
       78 GETUPVAL                         R18 10
       79 DUPTABLE                         R19 K24 [{"session", "layoutOrder", "size"}]
       80 GETTABLEKS                       R20 R0 K0 ["session"]
       82 SETTABLEKS                       R20 R19 K0 ["session"]
       84 MOVE                             R20 R8
       85 CALL                             R20 0 1
       86 SETTABLEKS                       R20 R19 K22 ["layoutOrder"]
       88 GETIMPORT                        R20 K27 [UDim2.new]
       90 LOADN                            R21 1
       91 LOADN                            R22 0
       92 LOADN                            R23 0
       93 MOVE                             R24 R10
       94 CALL                             R20 4 1
       95 SETTABLEKS                       R20 R19 K23 ["size"]
       97 CALL                             R17 2 1
       98 SETTABLEKS                       R17 R16 K18 ["TitleBar"]
      100 GETUPVAL                         R17 8
      101 GETUPVAL                         R18 11
      102 DUPTABLE                         R19 K32 [{"layoutOrder", "size", "currentTab", "tabs", "onSearchChanged", "onTabChanged"}]
      103 MOVE                             R20 R8
      104 CALL                             R20 0 1
      105 SETTABLEKS                       R20 R19 K22 ["layoutOrder"]
      107 GETIMPORT                        R20 K27 [UDim2.new]
      109 LOADN                            R21 1
      110 LOADN                            R22 0
      111 LOADN                            R23 0
      112 MOVE                             R24 R11
      113 CALL                             R20 4 1
      114 SETTABLEKS                       R20 R19 K23 ["size"]
      116 SETTABLEKS                       R6 R19 K28 ["currentTab"]
      118 SETTABLEKS                       R2 R19 K29 ["tabs"]
      120 SETTABLEKS                       R4 R19 K30 ["onSearchChanged"]
      122 SETTABLEKS                       R7 R19 K31 ["onTabChanged"]
      124 CALL                             R17 2 1
      125 SETTABLEKS                       R17 R16 K19 ["TabBar"]
      127 GETUPVAL                         R17 8
      128 GETUPVAL                         R18 12
      129 DUPTABLE                         R19 K35 [{"scroll", "LayoutOrder", "Size"}]
      130 DUPTABLE                         R20 K38 [{"AutomaticCanvasSize", "CanvasSize"}]
      131 GETIMPORT                        R21 K42 [Enum.AutomaticSize.Y]
      133 SETTABLEKS                       R21 R20 K36 ["AutomaticCanvasSize"]
      135 GETIMPORT                        R21 K27 [UDim2.new]
      137 CALL                             R21 0 1
      138 SETTABLEKS                       R21 R20 K37 ["CanvasSize"]
      140 SETTABLEKS                       R20 R19 K33 ["scroll"]
      142 MOVE                             R20 R8
      143 CALL                             R20 0 1
      144 SETTABLEKS                       R20 R19 K34 ["LayoutOrder"]
      146 GETIMPORT                        R20 K27 [UDim2.new]
      148 LOADN                            R21 1
      149 LOADN                            R22 0
      150 LOADN                            R23 1
      151 MINUS                            R24 R12
      152 CALL                             R20 4 1
      153 SETTABLEKS                       R20 R19 K12 ["Size"]
      155 DUPTABLE                         R20 K44 [{"TabView"}]
      156 GETUPVAL                         R21 8
      157 GETUPVAL                         R22 13
      158 DUPTABLE                         R23 K48 [{"session", "properties", "size", "tab", "labelWidthBinding"}]
      159 GETTABLEKS                       R24 R0 K0 ["session"]
      161 SETTABLEKS                       R24 R23 K0 ["session"]
      163 SETTABLEKS                       R5 R23 K45 ["properties"]
      165 GETIMPORT                        R24 K27 [UDim2.new]
      167 LOADN                            R25 1
      168 GETUPVAL                         R28 14
      169 GETTABLEKS                       R27 R28 K49 ["scrollBarWidth"]
      171 MINUS                            R26 R27
      172 LOADN                            R27 0
      173 LOADN                            R28 0
      174 CALL                             R24 4 1
      175 SETTABLEKS                       R24 R23 K23 ["size"]
      177 SETTABLEKS                       R6 R23 K46 ["tab"]
      179 GETTABLEKS                       R24 R1 K47 ["labelWidthBinding"]
      181 SETTABLEKS                       R24 R23 K47 ["labelWidthBinding"]
      183 CALL                             R21 2 1
      184 SETTABLEKS                       R21 R20 K43 ["TabView"]
      186 CALL                             R17 3 1
      187 SETTABLEKS                       R17 R16 K20 ["ScrollingContent"]
      189 CALL                             R13 3 -1
      190 RETURN                           R13 -1

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
       18 GETTABLEKS                       R4 R1 K9 ["Cryo"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K4 ["Parent"]
       25 GETTABLEKS                       R5 R6 K10 ["Foundation"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K7 ["Util"]
       32 GETTABLEKS                       R6 R7 K11 ["Observable"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K4 ["Parent"]
       39 GETTABLEKS                       R7 R8 K12 ["React"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K4 ["Parent"]
       46 GETTABLEKS                       R8 R9 K13 ["ReactUtils"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R0 K14 ["RpcTypes"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R11 R0 K15 ["Components"]
       58 GETTABLEKS                       R10 R11 K16 ["TabBar"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K6 [require]
       63 GETTABLEKS                       R12 R0 K15 ["Components"]
       65 GETTABLEKS                       R11 R12 K17 ["TabView"]
       67 CALL                             R10 1 1
       68 GETIMPORT                        R11 K6 [require]
       70 GETTABLEKS                       R13 R0 K15 ["Components"]
       72 GETTABLEKS                       R12 R13 K18 ["TitleBar"]
       74 CALL                             R11 1 1
       75 GETIMPORT                        R12 K6 [require]
       77 GETTABLEKS                       R15 R0 K19 ["Resources"]
       79 GETTABLEKS                       R14 R15 K20 ["Localization"]
       81 GETTABLEKS                       R13 R14 K21 ["Translator"]
       83 CALL                             R12 1 1
       84 GETIMPORT                        R13 K6 [require]
       86 GETTABLEKS                       R15 R0 K22 ["Hooks"]
       88 GETTABLEKS                       R14 R15 K23 ["useClearSelectionAction"]
       90 CALL                             R13 1 1
       91 GETIMPORT                        R14 K6 [require]
       93 GETTABLEKS                       R16 R0 K22 ["Hooks"]
       95 GETTABLEKS                       R15 R16 K24 ["useLabelHiding"]
       97 CALL                             R14 1 1
       98 GETTABLEKS                       R15 R4 K25 ["ScrollView"]
      100 GETTABLEKS                       R16 R4 K26 ["View"]
      102 GETTABLEKS                       R18 R4 K22 ["Hooks"]
      104 GETTABLEKS                       R17 R18 K27 ["useTokens"]
      106 GETTABLEKS                       R18 R7 K28 ["createNextOrder"]
      108 GETTABLEKS                       R19 R6 K29 ["createElement"]
      110 DUPCLOSURE                       R20 K30 [PROTO_2]
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R14
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R3
      117 CAPTURE                          VAL R18
      118 CAPTURE                          VAL R17
      119 CAPTURE                          VAL R19
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R11
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R2
      126 RETURN                           R20 1
