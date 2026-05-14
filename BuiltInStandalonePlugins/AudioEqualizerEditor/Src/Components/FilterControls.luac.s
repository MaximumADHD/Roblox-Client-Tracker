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
      101 DUPTABLE                         R21 K31 [{"AutomaticSize", "Size", "Disabled", "OnChanged", "Schema", "Tooltip", "Value"}]
      102 GETIMPORT                        R22 K34 [Enum.AutomaticSize.Y]
      104 SETTABLEKS                       R22 R21 K25 ["AutomaticSize"]
      106 GETIMPORT                        R22 K37 [UDim2.fromOffset]
      108 LOADN                            R23 150
      109 LOADN                            R24 25
      110 CALL                             R22 2 1
      111 SETTABLEKS                       R22 R21 K13 ["Size"]
      113 LOADB                            R22 0
      114 SETTABLEKS                       R22 R21 K26 ["Disabled"]
      116 SETTABLEKS                       R4 R21 K27 ["OnChanged"]
      118 DUPTABLE                         R22 K40 [{"Type", "Items"}]
      119 LOADK                            R23 K41 ["Select"]
      120 SETTABLEKS                       R23 R22 K38 ["Type"]
      122 GETUPVAL                         R23 2
      123 GETTABLEKS                       R23 R23 K42 ["getDropdownItems"]
      125 MOVE                             R24 R2
      126 CALL                             R23 1 1
      127 SETTABLEKS                       R23 R22 K39 ["Items"]
      129 SETTABLEKS                       R22 R21 K28 ["Schema"]
      131 LOADK                            R22 K17 ["FilterType"]
      132 SETTABLEKS                       R22 R21 K29 ["Tooltip"]
      134 SETTABLEKS                       R3 R21 K30 ["Value"]
      136 CALL                             R19 2 1
      137 SETTABLEKS                       R19 R18 K22 ["FilterTypeDropdown"]
      139 GETUPVAL                         R19 4
      140 GETTABLEKS                       R19 R19 K11 ["createElement"]
      142 GETUPVAL                         R20 7
      143 NEWTABLE                         R21 4 0
      145 LOADK                            R24 K43 ["Label"]
      146 LOADK                            R25 K17 ["FilterType"]
      147 NAMECALL                         R22 R2 K44 ["getText"]
      149 CALL                             R22 3 1
      150 SETTABLEKS                       R22 R21 K45 ["Text"]
      152 LOADN                            R22 1
      153 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      155 GETUPVAL                         R22 4
      156 GETTABLEKS                       R22 R22 K15 ["Tag"]
      158 LOADK                            R23 K46 ["X-Fit"]
      159 SETTABLE                         R23 R21 R22
      160 CALL                             R19 2 1
      161 SETTABLEKS                       R19 R18 K23 ["FilterTypeLabel"]
      163 CALL                             R15 3 1
      164 SETTABLEKS                       R15 R14 K17 ["FilterType"]
      166 GETUPVAL                         R15 4
      167 GETTABLEKS                       R15 R15 K11 ["createElement"]
      169 GETUPVAL                         R16 5
      170 DUPTABLE                         R17 K47 [{"LayoutOrder", "Size"}]
      171 LOADN                            R18 2
      172 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      174 GETIMPORT                        R18 K49 [UDim2.new]
      176 LOADN                            R19 0
      177 LOADN                            R20 25
      178 LOADN                            R21 1
      179 LOADN                            R22 0
      180 CALL                             R18 4 1
      181 SETTABLEKS                       R18 R17 K13 ["Size"]
      183 CALL                             R15 2 1
      184 SETTABLEKS                       R15 R14 K18 ["Spacer"]
      186 MOVE                             R15 R5
      187 JUMPIFNOT                        R15 ; [+116]
      188 GETUPVAL                         R15 4
      189 GETTABLEKS                       R15 R15 K11 ["createElement"]
      191 GETUPVAL                         R16 5
      192 NEWTABLE                         R17 2 0
      194 LOADN                            R18 3
      195 SETTABLEKS                       R18 R17 K14 ["LayoutOrder"]
      197 GETUPVAL                         R18 4
      198 GETTABLEKS                       R18 R18 K15 ["Tag"]
      200 LOADK                            R19 K21 ["X-Fit X-RowM X-Middle"]
      201 SETTABLE                         R19 R17 R18
      202 DUPTABLE                         R18 K53 [{"QSlider", "QTextInput", "QLabel"}]
      203 GETUPVAL                         R19 4
      204 GETTABLEKS                       R19 R19 K11 ["createElement"]
      206 GETUPVAL                         R20 8
      207 DUPTABLE                         R21 K60 [{"Disabled", "Max", "Min", "OnValueChanged", "Size", "ShowInput", "SnapIncrement", "VerticalDragTolerance", "Value"}]
      208 LOADB                            R22 0
      209 SETTABLEKS                       R22 R21 K26 ["Disabled"]
      211 LOADN                            R22 1
      212 SETTABLEKS                       R22 R21 K54 ["Max"]
      214 LOADN                            R22 0
      215 SETTABLEKS                       R22 R21 K55 ["Min"]
      217 SETTABLEKS                       R9 R21 K56 ["OnValueChanged"]
      219 GETIMPORT                        R22 K37 [UDim2.fromOffset]
      221 LOADN                            R23 100
      222 LOADN                            R24 25
      223 CALL                             R22 2 1
      224 SETTABLEKS                       R22 R21 K13 ["Size"]
      226 LOADB                            R22 0
      227 SETTABLEKS                       R22 R21 K57 ["ShowInput"]
      229 LOADK                            R22 K61 [0.01]
      230 SETTABLEKS                       R22 R21 K58 ["SnapIncrement"]
      232 LOADN                            R22 232
      233 SETTABLEKS                       R22 R21 K59 ["VerticalDragTolerance"]
      235 SETTABLEKS                       R8 R21 K30 ["Value"]
      237 CALL                             R19 2 1
      238 SETTABLEKS                       R19 R18 K50 ["QSlider"]
      240 GETUPVAL                         R19 4
      241 GETTABLEKS                       R19 R19 K11 ["createElement"]
      243 GETUPVAL                         R20 6
      244 DUPTABLE                         R21 K31 [{"AutomaticSize", "Size", "Disabled", "OnChanged", "Schema", "Tooltip", "Value"}]
      245 GETIMPORT                        R22 K34 [Enum.AutomaticSize.Y]
      247 SETTABLEKS                       R22 R21 K25 ["AutomaticSize"]
      249 GETIMPORT                        R22 K37 [UDim2.fromOffset]
      251 LOADN                            R23 50
      252 LOADN                            R24 25
      253 CALL                             R22 2 1
      254 SETTABLEKS                       R22 R21 K13 ["Size"]
      256 LOADB                            R22 0
      257 SETTABLEKS                       R22 R21 K26 ["Disabled"]
      259 SETTABLEKS                       R10 R21 K27 ["OnChanged"]
      261 DUPTABLE                         R22 K62 [{"Type"}]
      262 LOADK                            R23 K63 ["Number"]
      263 SETTABLEKS                       R23 R22 K38 ["Type"]
      265 SETTABLEKS                       R22 R21 K28 ["Schema"]
      267 LOADK                            R22 K19 ["Q"]
      268 SETTABLEKS                       R22 R21 K29 ["Tooltip"]
      270 GETTABLEKS                       R22 R0 K5 ["FilterHook"]
      272 GETTABLEKS                       R22 R22 K10 ["q"]
      274 SETTABLEKS                       R22 R21 K30 ["Value"]
      276 CALL                             R19 2 1
      277 SETTABLEKS                       R19 R18 K51 ["QTextInput"]
      279 GETUPVAL                         R19 4
      280 GETTABLEKS                       R19 R19 K11 ["createElement"]
      282 GETUPVAL                         R20 7
      283 NEWTABLE                         R21 4 0
      285 LOADK                            R24 K43 ["Label"]
      286 LOADK                            R25 K19 ["Q"]
      287 NAMECALL                         R22 R2 K44 ["getText"]
      289 CALL                             R22 3 1
      290 SETTABLEKS                       R22 R21 K45 ["Text"]
      292 LOADN                            R22 1
      293 SETTABLEKS                       R22 R21 K14 ["LayoutOrder"]
      295 GETUPVAL                         R22 4
      296 GETTABLEKS                       R22 R22 K15 ["Tag"]
      298 LOADK                            R23 K46 ["X-Fit"]
      299 SETTABLE                         R23 R21 R22
      300 CALL                             R19 2 1
      301 SETTABLEKS                       R19 R18 K52 ["QLabel"]
      303 CALL                             R15 3 1
      304 SETTABLEKS                       R15 R14 K19 ["Q"]
      306 CALL                             R11 3 -1
      307 RETURN                           R11 -1

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
