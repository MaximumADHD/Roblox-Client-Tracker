PROTO_0:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["ScrollingFrame"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["ErrorOverlay"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 GETIMPORT                        R2 K7 [UDim2.new]
        9 LOADN                            R3 1
       10 LOADN                            R4 -48
       11 LOADN                            R5 0
       12 LOADN                            R6 180
       13 CALL                             R2 4 1
       14 SETTABLEKS                       R2 R1 K8 ["Size"]
       16 GETIMPORT                        R2 K10 [UDim2.fromOffset]
       18 LOADN                            R3 24
       19 LOADN                            R4 52
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R1 K11 ["Position"]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K12 ["bg"]
       26 SETTABLEKS                       R2 R1 K13 ["BackgroundColor3"]
       28 LOADK                            R2 K14 [0.04]
       29 SETTABLEKS                       R2 R1 K15 ["BackgroundTransparency"]
       31 LOADN                            R2 0
       32 SETTABLEKS                       R2 R1 K16 ["BorderSizePixel"]
       34 LOADN                            R2 6
       35 SETTABLEKS                       R2 R1 K17 ["ScrollBarThickness"]
       37 GETIMPORT                        R2 K19 [UDim2.fromScale]
       39 LOADN                            R3 0
       40 LOADN                            R4 0
       41 CALL                             R2 2 1
       42 SETTABLEKS                       R2 R1 K20 ["CanvasSize"]
       44 GETIMPORT                        R2 K24 [Enum.AutomaticSize.Y]
       46 SETTABLEKS                       R2 R1 K25 ["AutomaticCanvasSize"]
       48 LOADB                            R2 0
       49 SETTABLEKS                       R2 R1 K26 ["Visible"]
       51 LOADN                            R2 120
       52 SETTABLEKS                       R2 R1 K27 ["ZIndex"]
       54 SETTABLEKS                       R0 R1 K28 ["Parent"]
       56 GETIMPORT                        R2 K2 [Instance.new]
       58 LOADK                            R3 K29 ["UICorner"]
       59 CALL                             R2 1 1
       60 GETIMPORT                        R3 K31 [UDim.new]
       62 LOADN                            R4 0
       63 LOADN                            R5 10
       64 CALL                             R3 2 1
       65 SETTABLEKS                       R3 R2 K32 ["CornerRadius"]
       67 SETTABLEKS                       R1 R2 K28 ["Parent"]
       69 GETIMPORT                        R3 K2 [Instance.new]
       71 LOADK                            R4 K33 ["UIStroke"]
       72 CALL                             R3 1 1
       73 GETUPVAL                         R4 0
       74 GETTABLEKS                       R4 R4 K34 ["stroke"]
       76 SETTABLEKS                       R4 R3 K35 ["Color"]
       78 LOADK                            R4 K36 [0.12]
       79 SETTABLEKS                       R4 R3 K37 ["Transparency"]
       81 LOADN                            R4 1
       82 SETTABLEKS                       R4 R3 K38 ["Thickness"]
       84 SETTABLEKS                       R1 R3 K28 ["Parent"]
       86 GETIMPORT                        R4 K2 [Instance.new]
       88 LOADK                            R5 K39 ["UIPadding"]
       89 CALL                             R4 1 1
       90 GETIMPORT                        R5 K31 [UDim.new]
       92 LOADN                            R6 0
       93 LOADN                            R7 14
       94 CALL                             R5 2 1
       95 SETTABLEKS                       R5 R4 K40 ["PaddingLeft"]
       97 GETIMPORT                        R5 K31 [UDim.new]
       99 LOADN                            R6 0
      100 LOADN                            R7 12
      101 CALL                             R5 2 1
      102 SETTABLEKS                       R5 R4 K41 ["PaddingTop"]
      104 GETIMPORT                        R5 K31 [UDim.new]
      106 LOADN                            R6 0
      107 LOADN                            R7 14
      108 CALL                             R5 2 1
      109 SETTABLEKS                       R5 R4 K42 ["PaddingRight"]
      111 GETIMPORT                        R5 K31 [UDim.new]
      113 LOADN                            R6 0
      114 LOADN                            R7 12
      115 CALL                             R5 2 1
      116 SETTABLEKS                       R5 R4 K43 ["PaddingBottom"]
      118 SETTABLEKS                       R1 R4 K28 ["Parent"]
      120 GETIMPORT                        R5 K2 [Instance.new]
      122 LOADK                            R6 K44 ["UIListLayout"]
      123 CALL                             R5 1 1
      124 GETIMPORT                        R6 K47 [Enum.FillDirection.Vertical]
      126 SETTABLEKS                       R6 R5 K45 ["FillDirection"]
      128 GETIMPORT                        R6 K50 [Enum.SortOrder.LayoutOrder]
      130 SETTABLEKS                       R6 R5 K48 ["SortOrder"]
      132 GETIMPORT                        R6 K31 [UDim.new]
      134 LOADN                            R7 0
      135 LOADN                            R8 6
      136 CALL                             R6 2 1
      137 SETTABLEKS                       R6 R5 K51 ["Padding"]
      139 SETTABLEKS                       R1 R5 K28 ["Parent"]
      141 GETIMPORT                        R6 K2 [Instance.new]
      143 LOADK                            R7 K52 ["TextLabel"]
      144 CALL                             R6 1 1
      145 LOADK                            R7 K53 ["ErrorTitle"]
      146 SETTABLEKS                       R7 R6 K5 ["Name"]
      148 GETIMPORT                        R7 K7 [UDim2.new]
      150 LOADN                            R8 1
      151 LOADN                            R9 0
      152 LOADN                            R10 0
      153 LOADN                            R11 0
      154 CALL                             R7 4 1
      155 SETTABLEKS                       R7 R6 K8 ["Size"]
      157 GETIMPORT                        R7 K24 [Enum.AutomaticSize.Y]
      159 SETTABLEKS                       R7 R6 K22 ["AutomaticSize"]
      161 LOADN                            R7 1
      162 SETTABLEKS                       R7 R6 K15 ["BackgroundTransparency"]
      164 LOADN                            R7 1
      165 SETTABLEKS                       R7 R6 K49 ["LayoutOrder"]
      167 LOADK                            R7 K54 ["Preview paused"]
      168 SETTABLEKS                       R7 R6 K55 ["Text"]
      170 GETUPVAL                         R7 0
      171 GETTABLEKS                       R7 R7 K56 ["title"]
      173 SETTABLEKS                       R7 R6 K57 ["TextColor3"]
      175 GETIMPORT                        R7 K59 [Font.new]
      177 LOADK                            R8 K60 ["rbxasset://fonts/families/BuilderSans.json"]
      178 GETIMPORT                        R9 K63 [Enum.FontWeight.SemiBold]
      180 GETIMPORT                        R10 K66 [Enum.FontStyle.Normal]
      182 CALL                             R7 3 1
      183 SETTABLEKS                       R7 R6 K67 ["FontFace"]
      185 LOADN                            R7 15
      186 SETTABLEKS                       R7 R6 K68 ["TextSize"]
      188 GETIMPORT                        R7 K71 [Enum.TextXAlignment.Left]
      190 SETTABLEKS                       R7 R6 K69 ["TextXAlignment"]
      192 GETIMPORT                        R7 K74 [Enum.TextYAlignment.Top]
      194 SETTABLEKS                       R7 R6 K72 ["TextYAlignment"]
      196 LOADB                            R7 1
      197 SETTABLEKS                       R7 R6 K75 ["TextWrapped"]
      199 GETTABLEKS                       R8 R1 K27 ["ZIndex"]
      201 ADDK                             R7 R8 K76 [1]
      202 SETTABLEKS                       R7 R6 K27 ["ZIndex"]
      204 SETTABLEKS                       R1 R6 K28 ["Parent"]
      206 GETIMPORT                        R7 K2 [Instance.new]
      208 LOADK                            R8 K52 ["TextLabel"]
      209 CALL                             R7 1 1
      210 LOADK                            R8 K77 ["ErrorText"]
      211 SETTABLEKS                       R8 R7 K5 ["Name"]
      213 GETIMPORT                        R8 K7 [UDim2.new]
      215 LOADN                            R9 1
      216 LOADN                            R10 0
      217 LOADN                            R11 0
      218 LOADN                            R12 0
      219 CALL                             R8 4 1
      220 SETTABLEKS                       R8 R7 K8 ["Size"]
      222 GETIMPORT                        R8 K24 [Enum.AutomaticSize.Y]
      224 SETTABLEKS                       R8 R7 K22 ["AutomaticSize"]
      226 LOADN                            R8 1
      227 SETTABLEKS                       R8 R7 K15 ["BackgroundTransparency"]
      229 LOADN                            R8 2
      230 SETTABLEKS                       R8 R7 K49 ["LayoutOrder"]
      232 LOADK                            R8 K78 [""]
      233 SETTABLEKS                       R8 R7 K55 ["Text"]
      235 GETUPVAL                         R8 0
      236 GETTABLEKS                       R8 R8 K79 ["text"]
      238 SETTABLEKS                       R8 R7 K57 ["TextColor3"]
      240 GETIMPORT                        R8 K59 [Font.new]
      242 LOADK                            R9 K80 ["rbxasset://fonts/families/BuilderMono.json"]
      243 GETIMPORT                        R10 K82 [Enum.FontWeight.Regular]
      245 GETIMPORT                        R11 K66 [Enum.FontStyle.Normal]
      247 CALL                             R8 3 1
      248 SETTABLEKS                       R8 R7 K67 ["FontFace"]
      250 LOADN                            R8 13
      251 SETTABLEKS                       R8 R7 K68 ["TextSize"]
      253 GETIMPORT                        R8 K71 [Enum.TextXAlignment.Left]
      255 SETTABLEKS                       R8 R7 K69 ["TextXAlignment"]
      257 GETIMPORT                        R8 K74 [Enum.TextYAlignment.Top]
      259 SETTABLEKS                       R8 R7 K72 ["TextYAlignment"]
      261 LOADB                            R8 1
      262 SETTABLEKS                       R8 R7 K75 ["TextWrapped"]
      264 GETTABLEKS                       R9 R1 K27 ["ZIndex"]
      266 ADDK                             R8 R9 K76 [1]
      267 SETTABLEKS                       R8 R7 K27 ["ZIndex"]
      269 SETTABLEKS                       R1 R7 K28 ["Parent"]
      271 GETIMPORT                        R8 K2 [Instance.new]
      273 LOADK                            R9 K83 ["Frame"]
      274 CALL                             R8 1 1
      275 LOADK                            R9 K84 ["ErrorActions"]
      276 SETTABLEKS                       R9 R8 K5 ["Name"]
      278 GETIMPORT                        R9 K7 [UDim2.new]
      280 LOADN                            R10 1
      281 LOADN                            R11 0
      282 LOADN                            R12 0
      283 LOADN                            R13 0
      284 CALL                             R9 4 1
      285 SETTABLEKS                       R9 R8 K8 ["Size"]
      287 GETIMPORT                        R9 K24 [Enum.AutomaticSize.Y]
      289 SETTABLEKS                       R9 R8 K22 ["AutomaticSize"]
      291 LOADN                            R9 1
      292 SETTABLEKS                       R9 R8 K15 ["BackgroundTransparency"]
      294 LOADN                            R9 0
      295 SETTABLEKS                       R9 R8 K16 ["BorderSizePixel"]
      297 LOADN                            R9 3
      298 SETTABLEKS                       R9 R8 K49 ["LayoutOrder"]
      300 LOADB                            R9 0
      301 SETTABLEKS                       R9 R8 K26 ["Visible"]
      303 GETTABLEKS                       R10 R1 K27 ["ZIndex"]
      305 ADDK                             R9 R10 K76 [1]
      306 SETTABLEKS                       R9 R8 K27 ["ZIndex"]
      308 SETTABLEKS                       R1 R8 K28 ["Parent"]
      310 GETIMPORT                        R9 K2 [Instance.new]
      312 LOADK                            R10 K44 ["UIListLayout"]
      313 CALL                             R9 1 1
      314 GETIMPORT                        R10 K86 [Enum.FillDirection.Horizontal]
      316 SETTABLEKS                       R10 R9 K45 ["FillDirection"]
      318 GETIMPORT                        R10 K50 [Enum.SortOrder.LayoutOrder]
      320 SETTABLEKS                       R10 R9 K48 ["SortOrder"]
      322 GETIMPORT                        R10 K31 [UDim.new]
      324 LOADN                            R11 0
      325 LOADN                            R12 14
      326 CALL                             R10 2 1
      327 SETTABLEKS                       R10 R9 K51 ["Padding"]
      329 SETTABLEKS                       R8 R9 K28 ["Parent"]
      331 DUPTABLE                         R11 K92 [{"frame", "_titleLabel", "_bodyLabel", "_actionContainer", "_actionConnections"}]
      332 SETTABLEKS                       R1 R11 K87 ["frame"]
      334 SETTABLEKS                       R6 R11 K88 ["_titleLabel"]
      336 SETTABLEKS                       R7 R11 K89 ["_bodyLabel"]
      338 SETTABLEKS                       R8 R11 K90 ["_actionContainer"]
      340 NEWTABLE                         R12 0 0
      342 SETTABLEKS                       R12 R11 K91 ["_actionConnections"]
      344 GETUPVAL                         R12 1
      345 FASTCALL2                        SETMETATABLE R11 R12 ; [+3]
      347 GETIMPORT                        R10 K94 [setmetatable]
      349 CALL                             R10 2 1
      350 RETURN                           R10 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["_actionConnections"]
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 NAMECALL                         R9 R8 K1 ["Disconnect"]
        7 CALL                             R9 1 0
        8 FORGLOOP                         R4 2 ; [-4]
       10 GETIMPORT                        R4 K4 [table.clear]
       12 GETTABLEKS                       R5 R0 K0 ["_actionConnections"]
       14 CALL                             R4 1 0
       15 GETTABLEKS                       R4 R0 K5 ["_actionContainer"]
       17 NAMECALL                         R4 R4 K6 ["GetChildren"]
       19 CALL                             R4 1 3
       20 FORGPREP                         R4
       21 LOADK                            R11 K7 ["TextButton"]
       22 NAMECALL                         R9 R8 K8 ["IsA"]
       24 CALL                             R9 2 1
       25 JUMPIFNOT                        R9 ; [+3]
       26 NAMECALL                         R9 R8 K9 ["Destroy"]
       28 CALL                             R9 1 0
       29 FORGLOOP                         R4 2 ; [-9]
       31 JUMPIFNOT                        R1 ; [+126]
       32 GETTABLEKS                       R4 R0 K10 ["_titleLabel"]
       34 ORK                              R5 R3 K11 ["Preview paused"]
       35 SETTABLEKS                       R5 R4 K12 ["Text"]
       37 GETTABLEKS                       R4 R0 K13 ["_bodyLabel"]
       39 SETTABLEKS                       R1 R4 K12 ["Text"]
       41 JUMPIFNOT                        R2 ; [+97]
       42 MOVE                             R4 R2
       43 LOADNIL                          R5
       44 LOADNIL                          R6
       45 FORGPREP                         R4
       46 GETIMPORT                        R9 K16 [Instance.new]
       48 LOADK                            R10 K7 ["TextButton"]
       49 CALL                             R9 1 1
       50 LOADK                            R11 K17 ["ErrorAction"]
       51 FASTCALL1                        TOSTRING R7 ; [+3]
       52 MOVE                             R13 R7
       53 GETIMPORT                        R12 K19 [tostring]
       55 CALL                             R12 1 1
       56 CONCAT                           R10 R11 R12
       57 SETTABLEKS                       R10 R9 K20 ["Name"]
       59 GETIMPORT                        R10 K22 [UDim2.new]
       61 LOADN                            R11 0
       62 LOADN                            R12 0
       63 LOADN                            R13 0
       64 LOADN                            R14 0
       65 CALL                             R10 4 1
       66 SETTABLEKS                       R10 R9 K23 ["Size"]
       68 GETIMPORT                        R10 K27 [Enum.AutomaticSize.XY]
       70 SETTABLEKS                       R10 R9 K25 ["AutomaticSize"]
       72 LOADN                            R10 1
       73 SETTABLEKS                       R10 R9 K28 ["BackgroundTransparency"]
       75 LOADN                            R10 0
       76 SETTABLEKS                       R10 R9 K29 ["BorderSizePixel"]
       78 SETTABLEKS                       R7 R9 K30 ["LayoutOrder"]
       80 GETTABLEKS                       R10 R8 K31 ["label"]
       82 SETTABLEKS                       R10 R9 K12 ["Text"]
       84 GETUPVAL                         R10 0
       85 GETTABLEKS                       R10 R10 K32 ["link"]
       87 SETTABLEKS                       R10 R9 K33 ["TextColor3"]
       89 GETIMPORT                        R10 K35 [Font.new]
       91 LOADK                            R11 K36 ["rbxasset://fonts/families/BuilderSans.json"]
       92 GETIMPORT                        R12 K39 [Enum.FontWeight.SemiBold]
       94 GETIMPORT                        R13 K42 [Enum.FontStyle.Normal]
       96 CALL                             R10 3 1
       97 SETTABLEKS                       R10 R9 K43 ["FontFace"]
       99 LOADN                            R10 13
      100 SETTABLEKS                       R10 R9 K44 ["TextSize"]
      102 GETIMPORT                        R10 K47 [Enum.TextXAlignment.Left]
      104 SETTABLEKS                       R10 R9 K45 ["TextXAlignment"]
      106 GETIMPORT                        R10 K50 [Enum.TextYAlignment.Center]
      108 SETTABLEKS                       R10 R9 K48 ["TextYAlignment"]
      110 LOADB                            R10 1
      111 SETTABLEKS                       R10 R9 K51 ["AutoButtonColor"]
      113 GETTABLEKS                       R11 R0 K53 ["frame"]
      115 GETTABLEKS                       R11 R11 K54 ["ZIndex"]
      117 ADDK                             R10 R11 K52 [1]
      118 SETTABLEKS                       R10 R9 K54 ["ZIndex"]
      120 GETTABLEKS                       R10 R0 K5 ["_actionContainer"]
      122 SETTABLEKS                       R10 R9 K55 ["Parent"]
      124 GETTABLEKS                       R11 R0 K0 ["_actionConnections"]
      126 GETTABLEKS                       R12 R9 K56 ["MouseButton1Click"]
      128 GETTABLEKS                       R14 R8 K57 ["onActivated"]
      130 NAMECALL                         R12 R12 K58 ["Connect"]
      132 CALL                             R12 2 -1
      133 FASTCALL                         TABLE_INSERT ; [+2]
      134 GETIMPORT                        R10 K60 [table.insert]
      136 CALL                             R10 -1 0
      137 FORGLOOP                         R4 2 ; [-92]
      139 GETTABLEKS                       R4 R0 K5 ["_actionContainer"]
      141 LOADB                            R5 0
      142 JUMPIFEQKNIL                     R2 ; [+7]
      144 LENGTH                           R6 R2
      145 LOADN                            R7 0
      146 JUMPIFLT                         R7 R6 ; [+2]
      148 LOADB                            R5 0 +1
      149 LOADB                            R5 1
      150 SETTABLEKS                       R5 R4 K61 ["Visible"]
      152 GETTABLEKS                       R4 R0 K53 ["frame"]
      154 LOADB                            R5 1
      155 SETTABLEKS                       R5 R4 K61 ["Visible"]
      157 RETURN                           R0 0
      158 GETTABLEKS                       R4 R0 K5 ["_actionContainer"]
      160 LOADB                            R5 0
      161 SETTABLEKS                       R5 R4 K61 ["Visible"]
      163 GETTABLEKS                       R4 R0 K53 ["frame"]
      165 LOADB                            R5 0
      166 SETTABLEKS                       R5 R4 K61 ["Visible"]
      168 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["frame"]
        2 GETTABLEKS                       R1 R1 K1 ["Visible"]
        4 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["_actionConnections"]
        2 LOADNIL                          R2
        3 LOADNIL                          R3
        4 FORGPREP                         R1
        5 NAMECALL                         R6 R5 K1 ["Disconnect"]
        7 CALL                             R6 1 0
        8 FORGLOOP                         R1 2 ; [-4]
       10 GETTABLEKS                       R1 R0 K2 ["frame"]
       12 NAMECALL                         R1 R1 K3 ["Destroy"]
       14 CALL                             R1 1 0
       15 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"bg", "stroke", "title", "text", "link"}]
        2 GETIMPORT                        R1 K8 [Color3.fromRGB]
        4 LOADN                            R2 44
        5 LOADN                            R3 20
        6 LOADN                            R4 22
        7 CALL                             R1 3 1
        8 SETTABLEKS                       R1 R0 K0 ["bg"]
       10 GETIMPORT                        R1 K8 [Color3.fromRGB]
       12 LOADN                            R2 181
       13 LOADN                            R3 77
       14 LOADN                            R4 82
       15 CALL                             R1 3 1
       16 SETTABLEKS                       R1 R0 K1 ["stroke"]
       18 GETIMPORT                        R1 K8 [Color3.fromRGB]
       20 LOADN                            R2 255
       21 LOADN                            R3 222
       22 LOADN                            R4 222
       23 CALL                             R1 3 1
       24 SETTABLEKS                       R1 R0 K2 ["title"]
       26 GETIMPORT                        R1 K8 [Color3.fromRGB]
       28 LOADN                            R2 255
       29 LOADN                            R3 178
       30 LOADN                            R4 178
       31 CALL                             R1 3 1
       32 SETTABLEKS                       R1 R0 K3 ["text"]
       34 GETIMPORT                        R1 K8 [Color3.fromRGB]
       36 LOADN                            R2 104
       37 LOADN                            R3 190
       38 LOADN                            R4 255
       39 CALL                             R1 3 1
       40 SETTABLEKS                       R1 R0 K4 ["link"]
       42 NEWTABLE                         R1 8 0
       44 SETTABLEKS                       R1 R1 K9 ["__index"]
       46 DUPCLOSURE                       R2 K10 [PROTO_0]
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R1
       49 SETTABLEKS                       R2 R1 K11 ["mount"]
       51 DUPCLOSURE                       R2 K12 [PROTO_1]
       52 CAPTURE                          VAL R0
       53 SETTABLEKS                       R2 R1 K13 ["setError"]
       55 DUPCLOSURE                       R2 K14 [PROTO_2]
       56 SETTABLEKS                       R2 R1 K15 ["isVisible"]
       58 DUPCLOSURE                       R2 K16 [PROTO_3]
       59 SETTABLEKS                       R2 R1 K17 ["destroy"]
       61 RETURN                           R1 1
