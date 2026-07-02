PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"expanded"}]
        3 GETUPVAL                         R5 2
        4 NOT                              R4 R5
        5 SETTABLEKS                       R4 R3 K0 ["expanded"]
        7 NAMECALL                         R0 R0 K2 ["logEvent"]
        9 CALL                             R0 3 0
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R2 2
       12 NOT                              R1 R2
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["createElement"]
       12 LOADK                            R5 K3 ["Frame"]
       13 NEWTABLE                         R6 8 0
       15 GETIMPORT                        R7 K7 [Enum.AutomaticSize.Y]
       17 SETTABLEKS                       R7 R6 K5 ["AutomaticSize"]
       19 GETIMPORT                        R7 K10 [UDim2.fromScale]
       21 LOADN                            R8 1
       22 LOADN                            R9 0
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K11 ["Size"]
       26 LOADN                            R7 1
       27 SETTABLEKS                       R7 R6 K12 ["BackgroundTransparency"]
       29 GETTABLEKS                       R7 R0 K13 ["LayoutOrder"]
       31 SETTABLEKS                       R7 R6 K13 ["LayoutOrder"]
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K14 ["Tag"]
       36 LOADK                            R8 K15 ["Component-DropdownDrawer"]
       37 SETTABLE                         R8 R6 R7
       38 DUPTABLE                         R7 K21 [{"Layout", "TopContentFrame", "PaddingFrame", "ExpandingContentFrame", "DividerFrame"}]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K2 ["createElement"]
       42 LOADK                            R9 K22 ["UIListLayout"]
       43 DUPTABLE                         R10 K28 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       44 GETIMPORT                        R11 K31 [UDim.new]
       46 LOADN                            R12 0
       47 LOADN                            R13 0
       48 CALL                             R11 2 1
       49 SETTABLEKS                       R11 R10 K23 ["Padding"]
       51 GETIMPORT                        R11 K33 [Enum.FillDirection.Vertical]
       53 SETTABLEKS                       R11 R10 K24 ["FillDirection"]
       55 GETIMPORT                        R11 K35 [Enum.HorizontalAlignment.Left]
       57 SETTABLEKS                       R11 R10 K25 ["HorizontalAlignment"]
       59 GETIMPORT                        R11 K37 [Enum.VerticalAlignment.Top]
       61 SETTABLEKS                       R11 R10 K26 ["VerticalAlignment"]
       63 GETIMPORT                        R11 K38 [Enum.SortOrder.LayoutOrder]
       65 SETTABLEKS                       R11 R10 K27 ["SortOrder"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K16 ["Layout"]
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R8 R8 K2 ["createElement"]
       73 LOADK                            R9 K3 ["Frame"]
       74 DUPTABLE                         R10 K40 [{["AutomaticSize"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1}]
       75 GETIMPORT                        R11 K7 [Enum.AutomaticSize.Y]
       77 SETTABLEKS                       R11 R10 K5 ["AutomaticSize"]
       79 GETIMPORT                        R11 K10 [UDim2.fromScale]
       81 LOADN                            R12 1
       82 LOADN                            R13 0
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K11 ["Size"]
       86 DUPTABLE                         R11 K43 [{"DropArrow", "TopContent"}]
       87 GETUPVAL                         R12 1
       88 GETTABLEKS                       R12 R12 K2 ["createElement"]
       90 LOADK                            R13 K44 ["ImageButton"]
       91 NEWTABLE                         R14 8 0
       93 LOADN                            R15 1
       94 SETTABLEKS                       R15 R14 K12 ["BackgroundTransparency"]
       96 GETUPVAL                         R15 1
       97 GETTABLEKS                       R15 R15 K14 ["Tag"]
       99 JUMPIFNOT                        R2 ; [+2]
      100 LOADK                            R16 K45 ["UseUpArrow"]
      101 JUMP                             ; [+1]
      102 LOADK                            R16 K46 ["UseDownArrow"]
      103 SETTABLE                         R16 R14 R15
      104 GETIMPORT                        R15 K48 [Vector2.new]
      106 LOADN                            R16 1
      107 LOADN                            R17 1
      108 CALL                             R15 2 1
      109 SETTABLEKS                       R15 R14 K49 ["AnchorPoint"]
      111 GETIMPORT                        R15 K50 [UDim2.new]
      113 LOADN                            R16 0
      114 LOADN                            R17 16
      115 LOADN                            R18 0
      116 LOADN                            R19 16
      117 CALL                             R15 4 1
      118 SETTABLEKS                       R15 R14 K11 ["Size"]
      120 GETIMPORT                        R15 K50 [UDim2.new]
      122 LOADN                            R16 1
      123 LOADN                            R17 -12
      124 LOADN                            R18 1
      125 LOADN                            R19 4
      126 CALL                             R15 4 1
      127 SETTABLEKS                       R15 R14 K51 ["Position"]
      129 GETUPVAL                         R15 1
      130 GETTABLEKS                       R15 R15 K52 ["Event"]
      132 GETTABLEKS                       R15 R15 K53 ["Activated"]
      134 NEWCLOSURE                       R16 P0
      135 CAPTURE                          VAL R1
      136 CAPTURE                          UPVAL U2
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R3
      139 SETTABLE                         R16 R14 R15
      140 LOADN                            R15 2
      141 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      143 CALL                             R12 2 1
      144 SETTABLEKS                       R12 R11 K41 ["DropArrow"]
      146 GETTABLEKS                       R12 R0 K42 ["TopContent"]
      148 SETTABLEKS                       R12 R11 K42 ["TopContent"]
      150 CALL                             R8 3 1
      151 SETTABLEKS                       R8 R7 K17 ["TopContentFrame"]
      153 GETUPVAL                         R8 1
      154 GETTABLEKS                       R8 R8 K2 ["createElement"]
      156 LOADK                            R9 K3 ["Frame"]
      157 DUPTABLE                         R10 K57 [{["BorderSizePixel"] = 0, ["LayoutOrder"] = 2, ["Size"]}]
      158 GETIMPORT                        R11 K50 [UDim2.new]
      160 LOADN                            R12 0
      161 LOADN                            R13 0
      162 LOADN                            R14 0
      163 LOADN                            R15 8
      164 CALL                             R11 4 1
      165 SETTABLEKS                       R11 R10 K11 ["Size"]
      167 CALL                             R8 2 1
      168 SETTABLEKS                       R8 R7 K18 ["PaddingFrame"]
      170 GETUPVAL                         R8 1
      171 GETTABLEKS                       R8 R8 K2 ["createElement"]
      173 LOADK                            R9 K3 ["Frame"]
      174 DUPTABLE                         R10 K59 [{["AutomaticSize"], ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 3, ["Size"]}]
      175 GETIMPORT                        R11 K7 [Enum.AutomaticSize.Y]
      177 SETTABLEKS                       R11 R10 K5 ["AutomaticSize"]
      179 GETIMPORT                        R11 K10 [UDim2.fromScale]
      181 LOADN                            R12 1
      182 LOADN                            R13 0
      183 CALL                             R11 2 1
      184 SETTABLEKS                       R11 R10 K11 ["Size"]
      186 DUPTABLE                         R11 K61 [{"ExpandingContent"}]
      187 MOVE                             R12 R2
      188 JUMPIFNOT                        R12 ; [+2]
      189 GETTABLEKS                       R12 R0 K60 ["ExpandingContent"]
      191 SETTABLEKS                       R12 R11 K60 ["ExpandingContent"]
      193 CALL                             R8 3 1
      194 SETTABLEKS                       R8 R7 K19 ["ExpandingContentFrame"]
      196 GETUPVAL                         R8 1
      197 GETTABLEKS                       R8 R8 K2 ["createElement"]
      199 LOADK                            R9 K3 ["Frame"]
      200 DUPTABLE                         R10 K63 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["LayoutOrder"] = 4}]
      201 GETIMPORT                        R11 K50 [UDim2.new]
      203 LOADN                            R12 1
      204 LOADN                            R13 0
      205 LOADN                            R14 0
      206 LOADN                            R15 1
      207 CALL                             R11 4 1
      208 SETTABLEKS                       R11 R10 K11 ["Size"]
      210 DUPTABLE                         R11 K65 [{"SimpleDivider"}]
      211 GETUPVAL                         R12 1
      212 GETTABLEKS                       R12 R12 K2 ["createElement"]
      214 LOADK                            R13 K3 ["Frame"]
      215 NEWTABLE                         R14 8 0
      217 GETUPVAL                         R15 1
      218 GETTABLEKS                       R15 R15 K14 ["Tag"]
      220 LOADK                            R16 K64 ["SimpleDivider"]
      221 SETTABLE                         R16 R14 R15
      222 GETIMPORT                        R15 K50 [UDim2.new]
      224 LOADN                            R16 1
      225 LOADN                            R17 -36
      226 LOADN                            R18 0
      227 LOADN                            R19 1
      228 CALL                             R15 4 1
      229 SETTABLEKS                       R15 R14 K11 ["Size"]
      231 GETIMPORT                        R15 K50 [UDim2.new]
      233 LOADK                            R16 K66 [0.5]
      234 LOADN                            R17 0
      235 LOADN                            R18 0
      236 LOADN                            R19 0
      237 CALL                             R15 4 1
      238 SETTABLEKS                       R15 R14 K51 ["Position"]
      240 GETIMPORT                        R15 K48 [Vector2.new]
      242 LOADK                            R16 K66 [0.5]
      243 LOADN                            R17 0
      244 CALL                             R15 2 1
      245 SETTABLEKS                       R15 R14 K49 ["AnchorPoint"]
      247 LOADN                            R15 0
      248 SETTABLEKS                       R15 R14 K54 ["BorderSizePixel"]
      250 CALL                             R12 2 1
      251 SETTABLEKS                       R12 R11 K64 ["SimpleDivider"]
      253 CALL                             R8 3 1
      254 SETTABLEKS                       R8 R7 K20 ["DividerFrame"]
      256 CALL                             R4 3 -1
      257 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Telemetry"]
       22 GETTABLEKS                       R3 R3 K11 ["TelemetryContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["Telemetry"]
       33 GETTABLEKS                       R4 R4 K12 ["Events"]
       35 GETTABLEKS                       R4 R4 K13 ["ToggleMeasuringBarDropdown"]
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R4 K14 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 RETURN                           R4 1
