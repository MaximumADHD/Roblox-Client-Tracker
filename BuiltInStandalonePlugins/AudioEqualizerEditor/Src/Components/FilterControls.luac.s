PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["idToFilterType"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["FilterHook"]
        8 GETTABLEKS                       R2 R2 K2 ["setFilterType"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FilterHook"]
        3 GETTABLEKS                       R1 R1 K1 ["setQ"]
        5 LOADN                            R3 2
        6 GETUPVAL                         R7 1
        7 GETUPVAL                         R8 2
        8 SUB                              R6 R7 R8
        9 MUL                              R5 R0 R6
       10 GETUPVAL                         R6 2
       11 ADD                              R4 R5 R6
       12 FASTCALL2                        MATH_POW R3 R4 ; [+3]
       14 GETIMPORT                        R2 K4 [math.pow]
       16 CALL                             R2 2 1
       17 CALL                             R1 1 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["FilterHook"]
        3 GETTABLEKS                       R1 R1 K1 ["setQ"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["Context"]
        4 GETTABLEKS                       R2 R2 K1 ["Consumer"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["Localization"]
       10 GETTABLEKS                       R3 R3 K3 ["Key"]
       12 GETTABLE                         R2 R1 R3
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K4 ["filterTypeToId"]
       16 GETTABLEKS                       R4 R0 K5 ["FilterHook"]
       18 GETTABLEKS                       R4 R4 K6 ["filterType"]
       20 CALL                             R3 1 1
       21 NEWCLOSURE                       R4 P0
       22 CAPTURE                          UPVAL U2
       23 CAPTURE                          VAL R0
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K7 ["hasQ"]
       27 GETTABLEKS                       R6 R0 K5 ["FilterHook"]
       29 GETTABLEKS                       R6 R6 K6 ["filterType"]
       31 CALL                             R5 1 1
       32 GETUPVAL                         R6 3
       33 GETTABLEKS                       R6 R6 K8 ["log2"]
       35 LOADK                            R7 K9 [0.1]
       36 CALL                             R6 1 1
       37 GETUPVAL                         R7 3
       38 GETTABLEKS                       R7 R7 K8 ["log2"]
       40 LOADN                            R8 10
       41 CALL                             R7 1 1
       42 GETUPVAL                         R10 3
       43 GETTABLEKS                       R10 R10 K8 ["log2"]
       45 GETTABLEKS                       R11 R0 K5 ["FilterHook"]
       47 GETTABLEKS                       R11 R11 K10 ["q"]
       49 CALL                             R10 1 1
       50 SUB                              R9 R10 R6
       51 SUB                              R10 R7 R6
       52 DIV                              R8 R9 R10
       53 NEWCLOSURE                       R9 P1
       54 CAPTURE                          VAL R0
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R6
       57 NEWCLOSURE                       R10 P2
       58 CAPTURE                          VAL R0
       59 GETUPVAL                         R11 4
       60 GETTABLEKS                       R11 R11 K11 ["createElement"]
       62 GETUPVAL                         R12 5
       63 NEWTABLE                         R13 4 0
       65 GETTABLEKS                       R14 R0 K12 ["Position"]
       67 SETTABLEKS                       R14 R13 K12 ["Position"]
       69 GETTABLEKS                       R14 R0 K13 ["Size"]
       71 SETTABLEKS                       R14 R13 K13 ["Size"]
       73 LOADN                            R14 1
       74 SETTABLEKS                       R14 R13 K14 ["LayoutOrder"]
       76 GETUPVAL                         R14 4
       77 GETTABLEKS                       R14 R14 K15 ["Tag"]
       79 LOADK                            R15 K16 ["X-RowM X-Middle"]
       80 SETTABLE                         R15 R13 R14
       81 DUPTABLE                         R14 K20 [{"FilterType", "Spacer", "Q"}]
       82 GETUPVAL                         R15 4
       83 GETTABLEKS                       R15 R15 K11 ["createElement"]
       85 GETUPVAL                         R16 5
       86 NEWTABLE                         R17 2 0
       88 LOADN                            R18 1
       89 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
       91 GETUPVAL                         R18 4
       92 GETTABLEKS                       R18 R18 K15 ["Tag"]
       94 LOADK                            R19 K21 ["X-Fit X-RowM X-Middle"]
       95 SETTABLE                         R19 R17 R18
       96 DUPTABLE                         R18 K24 [{"FilterTypeDropdown", "FilterTypeLabel"}]
       97 GETUPVAL                         R19 4
       98 GETTABLEKS                       R19 R19 K11 ["createElement"]
      100 GETUPVAL                         R20 6
      101 DUPTABLE                         R21 K32 [{["AutomaticSize"], ["Size"], ["Disabled"] = False, ["OnChanged"], ["Schema"], ["Tooltip"] = "FilterType", ["Value"]}]
      102 GETIMPORT                        R22 K35 [Enum.AutomaticSize.Y]
      104 SETTABLEKS                       R22 R21 K25 ["AutomaticSize"]
      106 GETIMPORT                        R22 K38 [UDim2.fromOffset]
      108 LOADN                            R23 150
      109 LOADN                            R24 25
      110 CALL                             R22 2 1
      111 SETTABLEKS                       R22 R21 K13 ["Size"]
      113 SETTABLEKS                       R4 R21 K28 ["OnChanged"]
      115 DUPTABLE                         R22 K42 [{["Type"] = "Select", ["Items"]}]
      116 GETUPVAL                         R23 2
      117 GETTABLEKS                       R23 R23 K43 ["getDropdownItems"]
      119 MOVE                             R24 R2
      120 CALL                             R23 1 1
      121 SETTABLEKS                       R23 R22 K41 ["Items"]
      123 SETTABLEKS                       R22 R21 K29 ["Schema"]
      125 SETTABLEKS                       R3 R21 K31 ["Value"]
      127 CALL                             R19 2 1
      128 SETTABLEKS                       R19 R18 K22 ["FilterTypeDropdown"]
      130 GETUPVAL                         R19 4
      131 GETTABLEKS                       R19 R19 K11 ["createElement"]
      133 GETUPVAL                         R20 7
      134 NEWTABLE                         R21 4 0
      136 LOADK                            R24 K44 ["Label"]
      137 LOADK                            R25 K17 ["FilterType"]
      138 NAMECALL                         R22 R2 K45 ["getText"]
      140 CALL                             R22 3 1
      141 SETTABLEKS                       R22 R21 K46 ["Text"]
      143 LOADN                            R22 1
      144 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      146 GETUPVAL                         R22 4
      147 GETTABLEKS                       R22 R22 K15 ["Tag"]
      149 LOADK                            R23 K47 ["X-Fit"]
      150 SETTABLE                         R23 R21 R22
      151 CALL                             R19 2 1
      152 SETTABLEKS                       R19 R18 K23 ["FilterTypeLabel"]
      154 CALL                             R15 3 1
      155 SETTABLEKS                       R15 R14 K17 ["FilterType"]
      157 GETUPVAL                         R15 4
      158 GETTABLEKS                       R15 R15 K11 ["createElement"]
      160 GETUPVAL                         R16 5
      161 DUPTABLE                         R17 K49 [{["LayoutOrder"] = 2, ["Size"]}]
      162 GETIMPORT                        R18 K51 [UDim2.new]
      164 LOADN                            R19 0
      165 LOADN                            R20 25
      166 LOADN                            R21 1
      167 LOADN                            R22 0
      168 CALL                             R18 4 1
      169 SETTABLEKS                       R18 R17 K13 ["Size"]
      171 CALL                             R15 2 1
      172 SETTABLEKS                       R15 R14 K18 ["Spacer"]
      174 MOVE                             R15 R5
      175 JUMPIFNOT                        R15 ; [+89]
      176 GETUPVAL                         R15 4
      177 GETTABLEKS                       R15 R15 K11 ["createElement"]
      179 GETUPVAL                         R16 5
      180 NEWTABLE                         R17 2 0
      182 LOADN                            R18 3
      183 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      185 GETUPVAL                         R18 4
      186 GETTABLEKS                       R18 R18 K15 ["Tag"]
      188 LOADK                            R19 K21 ["X-Fit X-RowM X-Middle"]
      189 SETTABLE                         R19 R17 R18
      190 DUPTABLE                         R18 K55 [{"QSlider", "QTextInput", "QLabel"}]
      191 GETUPVAL                         R19 4
      192 GETTABLEKS                       R19 R19 K11 ["createElement"]
      194 GETUPVAL                         R20 8
      195 DUPTABLE                         R21 K66 [{["Disabled"] = False, ["Max"] = 1, ["Min"] = 0, ["OnValueChanged"], ["Size"], ["ShowInput"] = False, ["SnapIncrement"] = 0.01, ["VerticalDragTolerance"] = 1000, ["Value"]}]
      196 SETTABLEKS                       R9 R21 K60 ["OnValueChanged"]
      198 GETIMPORT                        R22 K38 [UDim2.fromOffset]
      200 LOADN                            R23 100
      201 LOADN                            R24 25
      202 CALL                             R22 2 1
      203 SETTABLEKS                       R22 R21 K13 ["Size"]
      205 SETTABLEKS                       R8 R21 K31 ["Value"]
      207 CALL                             R19 2 1
      208 SETTABLEKS                       R19 R18 K52 ["QSlider"]
      210 GETUPVAL                         R19 4
      211 GETTABLEKS                       R19 R19 K11 ["createElement"]
      213 GETUPVAL                         R20 6
      214 DUPTABLE                         R21 K67 [{["AutomaticSize"], ["Size"], ["Disabled"] = False, ["OnChanged"], ["Schema"], ["Tooltip"] = "Q", ["Value"]}]
      215 GETIMPORT                        R22 K35 [Enum.AutomaticSize.Y]
      217 SETTABLEKS                       R22 R21 K25 ["AutomaticSize"]
      219 GETIMPORT                        R22 K38 [UDim2.fromOffset]
      221 LOADN                            R23 50
      222 LOADN                            R24 25
      223 CALL                             R22 2 1
      224 SETTABLEKS                       R22 R21 K13 ["Size"]
      226 SETTABLEKS                       R10 R21 K28 ["OnChanged"]
      228 DUPTABLE                         R22 K69 [{["Type"] = "Number"}]
      229 SETTABLEKS                       R22 R21 K29 ["Schema"]
      231 GETTABLEKS                       R22 R0 K5 ["FilterHook"]
      233 GETTABLEKS                       R22 R22 K10 ["q"]
      235 SETTABLEKS                       R22 R21 K31 ["Value"]
      237 CALL                             R19 2 1
      238 SETTABLEKS                       R19 R18 K53 ["QTextInput"]
      240 GETUPVAL                         R19 4
      241 GETTABLEKS                       R19 R19 K11 ["createElement"]
      243 GETUPVAL                         R20 7
      244 NEWTABLE                         R21 4 0
      246 LOADK                            R24 K44 ["Label"]
      247 LOADK                            R25 K19 ["Q"]
      248 NAMECALL                         R22 R2 K45 ["getText"]
      250 CALL                             R22 3 1
      251 SETTABLEKS                       R22 R21 K46 ["Text"]
      253 LOADN                            R22 1
      254 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      256 GETUPVAL                         R22 4
      257 GETTABLEKS                       R22 R22 K15 ["Tag"]
      259 LOADK                            R23 K47 ["X-Fit"]
      260 SETTABLE                         R23 R21 R22
      261 CALL                             R19 2 1
      262 SETTABLEKS                       R19 R18 K54 ["QLabel"]
      264 CALL                             R15 3 1
      265 SETTABLEKS                       R15 R14 K19 ["Q"]
      267 CALL                             R11 3 -1
      268 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 LOADK                            R3 K3 ["AudioEqualizerEditor"]
        6 NAMECALL                         R1 R0 K4 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Packages"]
       13 GETTABLEKS                       R3 R3 K8 ["React"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K9 ["useContext"]
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R1 K7 ["Packages"]
       22 GETTABLEKS                       R5 R5 K10 ["Framework"]
       24 CALL                             R4 1 1
       25 GETTABLEKS                       R5 R4 K11 ["ContextServices"]
       27 GETTABLEKS                       R6 R4 K12 ["UI"]
       29 GETTABLEKS                       R6 R6 K13 ["Pane"]
       31 GETTABLEKS                       R7 R4 K12 ["UI"]
       33 GETTABLEKS                       R7 R7 K14 ["PropertyCell"]
       35 GETTABLEKS                       R8 R4 K12 ["UI"]
       37 GETTABLEKS                       R8 R8 K15 ["Slider"]
       39 GETTABLEKS                       R9 R4 K12 ["UI"]
       41 GETTABLEKS                       R9 R9 K16 ["TextLabel"]
       43 GETIMPORT                        R10 K6 [require]
       45 GETTABLEKS                       R11 R1 K17 ["Src"]
       47 GETTABLEKS                       R11 R11 K18 ["Types"]
       49 CALL                             R10 1 1
       50 GETIMPORT                        R11 K6 [require]
       52 GETTABLEKS                       R12 R1 K17 ["Src"]
       54 GETTABLEKS                       R12 R12 K19 ["Util"]
       56 GETTABLEKS                       R12 R12 K20 ["FilterTypeUtil"]
       58 CALL                             R11 1 1
       59 GETIMPORT                        R12 K6 [require]
       61 GETTABLEKS                       R13 R1 K17 ["Src"]
       63 GETTABLEKS                       R13 R13 K19 ["Util"]
       65 GETTABLEKS                       R13 R13 K21 ["PlotUtil"]
       67 CALL                             R12 1 1
       68 DUPCLOSURE                       R13 K22 [PROTO_3]
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R5
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R6
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R8
       78 RETURN                           R13 1
