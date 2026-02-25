PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["networking"]
        3 JUMPIFNOTEQKNIL                  R1 ; [+3]
        5 GETUPVAL                         R0 1
        6 RETURN                           R0 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K0 ["networking"]
       10 RETURN                           R0 1

PROTO_1:
        0 JUMPIFEQKS                       R0 K0 ["List"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["Grid"] ; [+4]
        4 GETUPVAL                         R1 0
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["scrollMoreAssets"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["assetType"]
        3 GETIMPORT                        R1 K4 [Enum.AssetType.Animation]
        5 JUMPIFNOTEQ                      R0 R1 ; [+20]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R0 R1 K5 ["browseAssetsAsync"]
       10 GETIMPORT                        R1 K4 [Enum.AssetType.Animation]
       12 CALL                             R0 1 1
       13 JUMPIFNOTEQKNIL                  R0 ; [+2]
       15 RETURN                           R0 0
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R1 R2 K6 ["fetchAssetByIdAsync"]
       19 MOVE                             R2 R0
       20 CALL                             R1 1 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K7 ["onAssetSelected"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Text"]
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [print]
        2 LOADK                            R1 K2 ["TODO"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R4 0 1
       15 GETTABLEKS                       R5 R0 K3 ["networking"]
       17 SETLIST                          R4 R5 1 [1]
       19 CALL                             R2 2 1
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R3 R4 K4 ["useState"]
       23 LOADK                            R4 K5 ["List"]
       24 CALL                             R3 1 2
       25 GETUPVAL                         R5 3
       26 DUPTABLE                         R6 K7 [{"networking", "getGameIdAsync"}]
       27 SETTABLEKS                       R2 R6 K3 ["networking"]
       29 GETTABLEKS                       R7 R0 K6 ["getGameIdAsync"]
       31 SETTABLEKS                       R7 R6 K6 ["getGameIdAsync"]
       33 CALL                             R5 1 1
       34 GETUPVAL                         R7 0
       35 GETTABLEKS                       R6 R7 K4 ["useState"]
       37 LOADK                            R7 K8 [""]
       38 CALL                             R6 1 2
       39 GETUPVAL                         R8 4
       40 DUPTABLE                         R9 K12 [{"networking", "assetType", "scope", "search"}]
       41 SETTABLEKS                       R2 R9 K3 ["networking"]
       43 GETTABLEKS                       R10 R0 K9 ["assetType"]
       45 SETTABLEKS                       R10 R9 K9 ["assetType"]
       47 GETTABLEKS                       R10 R5 K13 ["loadedScope"]
       49 SETTABLEKS                       R10 R9 K10 ["scope"]
       51 SETTABLEKS                       R6 R9 K11 ["search"]
       53 CALL                             R8 1 1
       54 GETUPVAL                         R10 0
       55 GETTABLEKS                       R9 R10 K14 ["useCallback"]
       57 NEWCLOSURE                       R10 P1
       58 CAPTURE                          VAL R4
       59 NEWTABLE                         R11 0 0
       61 CALL                             R9 2 1
       62 GETUPVAL                         R10 5
       63 NEWCLOSURE                       R11 P2
       64 CAPTURE                          VAL R8
       65 NEWTABLE                         R12 0 1
       67 GETTABLEKS                       R13 R8 K15 ["scrollMoreAssets"]
       69 SETLIST                          R12 R13 1 [1]
       71 NEWTABLE                         R13 0 1
       73 GETTABLEKS                       R14 R8 K16 ["loadedAssets"]
       75 JUMPIFNOT                        R14 ; [+3]
       76 GETTABLEKS                       R15 R8 K16 ["loadedAssets"]
       78 LENGTH                           R14 R15
       79 SETLIST                          R13 R14 1 [1]
       81 CALL                             R10 3 1
       82 GETUPVAL                         R12 0
       83 GETTABLEKS                       R11 R12 K14 ["useCallback"]
       85 NEWCLOSURE                       R12 P3
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R1
       88 CAPTURE                          UPVAL U2
       89 NEWTABLE                         R13 0 3
       91 GETTABLEKS                       R14 R0 K9 ["assetType"]
       93 GETTABLEKS                       R15 R1 K17 ["browseAssetsAsync"]
       95 GETTABLEKS                       R16 R0 K18 ["onAssetSelected"]
       97 SETLIST                          R13 R14 3 [1]
       99 CALL                             R11 2 1
      100 GETUPVAL                         R13 0
      101 GETTABLEKS                       R12 R13 K14 ["useCallback"]
      103 NEWCLOSURE                       R13 P4
      104 CAPTURE                          VAL R7
      105 NEWTABLE                         R14 0 0
      107 CALL                             R12 2 1
      108 GETUPVAL                         R13 6
      109 CALL                             R13 0 1
      110 GETUPVAL                         R14 7
      111 CALL                             R14 0 1
      112 GETUPVAL                         R15 8
      113 GETUPVAL                         R16 9
      114 DUPTABLE                         R17 K21 [{"tag", "Size"}]
      115 LOADK                            R18 K22 ["col"]
      116 SETTABLEKS                       R18 R17 K19 ["tag"]
      118 GETIMPORT                        R18 K25 [UDim2.fromOffset]
      120 LOADN                            R19 9
      121 LOADN                            R20 58
      122 CALL                             R18 2 1
      123 SETTABLEKS                       R18 R17 K20 ["Size"]
      125 DUPTABLE                         R18 K30 [{"SearchBarContainer", "Toolbar", "ScrollContentContainer", "Footer"}]
      126 GETUPVAL                         R19 8
      127 GETUPVAL                         R20 9
      128 DUPTABLE                         R21 K32 [{"tag", "LayoutOrder"}]
      129 LOADK                            R22 K33 ["size-full-0 auto-y padding-x-small padding-top-small padding-bottom-xxsmall"]
      130 SETTABLEKS                       R22 R21 K19 ["tag"]
      132 MOVE                             R22 R13
      133 CALL                             R22 0 1
      134 SETTABLEKS                       R22 R21 K31 ["LayoutOrder"]
      136 DUPTABLE                         R22 K35 [{"SearchBar"}]
      137 GETUPVAL                         R23 8
      138 GETUPVAL                         R24 10
      139 DUPTABLE                         R25 K38 [{"size", "onTextBoxChanged"}]
      140 GETIMPORT                        R26 K40 [UDim2.new]
      142 LOADN                            R27 1
      143 LOADN                            R28 0
      144 LOADN                            R29 0
      145 GETTABLEKS                       R31 R14 K20 ["Size"]
      147 GETTABLEKS                       R30 R31 K41 ["Size_600"]
      149 CALL                             R26 4 1
      150 SETTABLEKS                       R26 R25 K36 ["size"]
      152 SETTABLEKS                       R12 R25 K37 ["onTextBoxChanged"]
      154 CALL                             R23 2 1
      155 SETTABLEKS                       R23 R22 K34 ["SearchBar"]
      157 CALL                             R19 3 1
      158 SETTABLEKS                       R19 R18 K26 ["SearchBarContainer"]
      160 GETUPVAL                         R19 8
      161 GETUPVAL                         R20 9
      162 DUPTABLE                         R21 K32 [{"tag", "LayoutOrder"}]
      163 LOADK                            R22 K42 ["size-full-0 auto-y row align-y-center gap-xsmall padding-x-small"]
      164 SETTABLEKS                       R22 R21 K19 ["tag"]
      166 MOVE                             R22 R13
      167 CALL                             R22 0 1
      168 SETTABLEKS                       R22 R21 K31 ["LayoutOrder"]
      170 DUPTABLE                         R22 K46 [{"ScopeMenuButton", "Gap", "OptionMenuButton"}]
      171 GETUPVAL                         R23 8
      172 GETUPVAL                         R24 11
      173 DUPTABLE                         R25 K50 [{"layoutOrder", "loadedScope", "loadedScopeMap", "onScopeChanged"}]
      174 MOVE                             R26 R13
      175 CALL                             R26 0 1
      176 SETTABLEKS                       R26 R25 K47 ["layoutOrder"]
      178 GETTABLEKS                       R26 R5 K13 ["loadedScope"]
      180 SETTABLEKS                       R26 R25 K13 ["loadedScope"]
      182 GETTABLEKS                       R26 R5 K48 ["loadedScopeMap"]
      184 SETTABLEKS                       R26 R25 K48 ["loadedScopeMap"]
      186 GETTABLEKS                       R26 R5 K49 ["onScopeChanged"]
      188 SETTABLEKS                       R26 R25 K49 ["onScopeChanged"]
      190 CALL                             R23 2 1
      191 SETTABLEKS                       R23 R22 K43 ["ScopeMenuButton"]
      193 GETUPVAL                         R23 8
      194 GETUPVAL                         R24 9
      195 DUPTABLE                         R25 K32 [{"tag", "LayoutOrder"}]
      196 LOADK                            R26 K51 ["size-0-0 fill"]
      197 SETTABLEKS                       R26 R25 K19 ["tag"]
      199 MOVE                             R26 R13
      200 CALL                             R26 0 1
      201 SETTABLEKS                       R26 R25 K31 ["LayoutOrder"]
      203 CALL                             R23 2 1
      204 SETTABLEKS                       R23 R22 K44 ["Gap"]
      206 GETUPVAL                         R23 8
      207 GETUPVAL                         R24 12
      208 DUPTABLE                         R25 K54 [{"layoutOrder", "layout", "onItemSelected"}]
      209 MOVE                             R26 R13
      210 CALL                             R26 0 1
      211 SETTABLEKS                       R26 R25 K47 ["layoutOrder"]
      213 SETTABLEKS                       R3 R25 K52 ["layout"]
      215 SETTABLEKS                       R9 R25 K53 ["onItemSelected"]
      217 CALL                             R23 2 1
      218 SETTABLEKS                       R23 R22 K45 ["OptionMenuButton"]
      220 CALL                             R19 3 1
      221 SETTABLEKS                       R19 R18 K27 ["Toolbar"]
      223 GETUPVAL                         R19 8
      224 GETUPVAL                         R20 9
      225 DUPTABLE                         R21 K32 [{"tag", "LayoutOrder"}]
      226 LOADK                            R22 K55 ["size-full-0 fill"]
      227 SETTABLEKS                       R22 R21 K19 ["tag"]
      229 MOVE                             R22 R13
      230 CALL                             R22 0 1
      231 SETTABLEKS                       R22 R21 K31 ["LayoutOrder"]
      233 DUPTABLE                         R22 K57 [{"ScrollContent"}]
      234 GETTABLEKS                       R24 R8 K16 ["loadedAssets"]
      236 JUMPIFEQKNIL                     R24 ; [+6]
      238 GETTABLEKS                       R25 R8 K59 ["loadingStates"]
      240 GETTABLEKS                       R24 R25 K58 ["Scope"]
      242 JUMPIFNOT                        R24 ; [+11]
      243 GETUPVAL                         R23 8
      244 GETUPVAL                         R24 13
      245 DUPTABLE                         R25 K61 [{"tag", "Text"}]
      246 LOADK                            R26 K62 ["size-full-full text-align-x-center text-align-y-center text-body-small"]
      247 SETTABLEKS                       R26 R25 K19 ["tag"]
      249 LOADK                            R26 K63 ["Loading..."]
      250 SETTABLEKS                       R26 R25 K60 ["Text"]
      252 CALL                             R23 2 1
      253 JUMP                             ; [+35]
      254 GETTABLEKS                       R25 R8 K16 ["loadedAssets"]
      256 LENGTH                           R24 R25
      257 JUMPIFNOTEQKN                    R24 K64 [0] ; [+12]
      259 GETUPVAL                         R23 8
      260 GETUPVAL                         R24 13
      261 DUPTABLE                         R25 K61 [{"tag", "Text"}]
      262 LOADK                            R26 K62 ["size-full-full text-align-x-center text-align-y-center text-body-small"]
      263 SETTABLEKS                       R26 R25 K19 ["tag"]
      265 LOADK                            R26 K65 ["No results found"]
      266 SETTABLEKS                       R26 R25 K60 ["Text"]
      268 CALL                             R23 2 1
      269 JUMP                             ; [+19]
      270 GETUPVAL                         R23 8
      271 GETUPVAL                         R24 14
      272 DUPTABLE                         R25 K68 [{"tag", "assets", "onAssetSelected", "layout", "onCanvasPositionChanged"}]
      273 LOADK                            R26 K69 ["size-full-full"]
      274 SETTABLEKS                       R26 R25 K19 ["tag"]
      276 GETTABLEKS                       R26 R8 K16 ["loadedAssets"]
      278 SETTABLEKS                       R26 R25 K66 ["assets"]
      280 GETTABLEKS                       R26 R0 K18 ["onAssetSelected"]
      282 SETTABLEKS                       R26 R25 K18 ["onAssetSelected"]
      284 SETTABLEKS                       R3 R25 K52 ["layout"]
      286 SETTABLEKS                       R10 R25 K67 ["onCanvasPositionChanged"]
      288 CALL                             R23 2 1
      289 SETTABLEKS                       R23 R22 K56 ["ScrollContent"]
      291 CALL                             R19 3 1
      292 SETTABLEKS                       R19 R18 K28 ["ScrollContentContainer"]
      294 GETUPVAL                         R19 8
      295 GETUPVAL                         R20 9
      296 DUPTABLE                         R21 K32 [{"tag", "LayoutOrder"}]
      297 LOADK                            R22 K70 ["size-full-0 auto-y row gap-small padding-small"]
      298 SETTABLEKS                       R22 R21 K19 ["tag"]
      300 MOVE                             R22 R13
      301 CALL                             R22 0 1
      302 SETTABLEKS                       R22 R21 K31 ["LayoutOrder"]
      304 DUPTABLE                         R22 K73 [{"NewButton", "ImportButton"}]
      305 GETUPVAL                         R23 8
      306 GETUPVAL                         R24 15
      307 DUPTABLE                         R25 K79 [{"LayoutOrder", "text", "isDisabled", "fillBehavior", "size", "width", "onActivated"}]
      308 MOVE                             R26 R13
      309 CALL                             R26 0 1
      310 SETTABLEKS                       R26 R25 K31 ["LayoutOrder"]
      312 LOADK                            R26 K80 ["New"]
      313 SETTABLEKS                       R26 R25 K74 ["text"]
      315 LOADB                            R26 1
      316 SETTABLEKS                       R26 R25 K75 ["isDisabled"]
      318 GETUPVAL                         R29 16
      319 GETTABLEKS                       R28 R29 K81 ["Enums"]
      321 GETTABLEKS                       R27 R28 K82 ["FillBehavior"]
      323 GETTABLEKS                       R26 R27 K83 ["Fill"]
      325 SETTABLEKS                       R26 R25 K76 ["fillBehavior"]
      327 GETUPVAL                         R29 16
      328 GETTABLEKS                       R28 R29 K81 ["Enums"]
      330 GETTABLEKS                       R27 R28 K84 ["InputSize"]
      332 GETTABLEKS                       R26 R27 K85 ["XSmall"]
      334 SETTABLEKS                       R26 R25 K36 ["size"]
      336 GETIMPORT                        R26 K87 [UDim.new]
      338 LOADN                            R27 1
      339 LOADN                            R28 0
      340 CALL                             R26 2 1
      341 SETTABLEKS                       R26 R25 K77 ["width"]
      343 DUPCLOSURE                       R26 K88 [PROTO_5]
      344 SETTABLEKS                       R26 R25 K78 ["onActivated"]
      346 CALL                             R23 2 1
      347 SETTABLEKS                       R23 R22 K71 ["NewButton"]
      349 GETUPVAL                         R23 8
      350 GETUPVAL                         R24 15
      351 DUPTABLE                         R25 K79 [{"LayoutOrder", "text", "isDisabled", "fillBehavior", "size", "width", "onActivated"}]
      352 MOVE                             R26 R13
      353 CALL                             R26 0 1
      354 SETTABLEKS                       R26 R25 K31 ["LayoutOrder"]
      356 LOADK                            R26 K89 ["Import..."]
      357 SETTABLEKS                       R26 R25 K74 ["text"]
      359 GETTABLEKS                       R27 R0 K9 ["assetType"]
      361 GETIMPORT                        R28 K93 [Enum.AssetType.Animation]
      363 JUMPIFNOTEQ                      R27 R28 ; [+2]
      365 LOADB                            R26 0 +1
      366 LOADB                            R26 1
      367 SETTABLEKS                       R26 R25 K75 ["isDisabled"]
      369 GETUPVAL                         R29 16
      370 GETTABLEKS                       R28 R29 K81 ["Enums"]
      372 GETTABLEKS                       R27 R28 K82 ["FillBehavior"]
      374 GETTABLEKS                       R26 R27 K83 ["Fill"]
      376 SETTABLEKS                       R26 R25 K76 ["fillBehavior"]
      378 GETUPVAL                         R29 16
      379 GETTABLEKS                       R28 R29 K81 ["Enums"]
      381 GETTABLEKS                       R27 R28 K84 ["InputSize"]
      383 GETTABLEKS                       R26 R27 K85 ["XSmall"]
      385 SETTABLEKS                       R26 R25 K36 ["size"]
      387 GETIMPORT                        R26 K87 [UDim.new]
      389 LOADN                            R27 1
      390 LOADN                            R28 0
      391 CALL                             R26 2 1
      392 SETTABLEKS                       R26 R25 K77 ["width"]
      394 SETTABLEKS                       R11 R25 K78 ["onActivated"]
      396 CALL                             R23 2 1
      397 SETTABLEKS                       R23 R22 K72 ["ImportButton"]
      399 CALL                             R19 3 1
      400 SETTABLEKS                       R19 R18 K29 ["Footer"]
      402 CALL                             R15 3 -1
      403 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETIMPORT                        R5 K1 [script]
       13 GETTABLEKS                       R4 R5 K7 ["Components"]
       15 GETTABLEKS                       R3 R4 K8 ["AssetList"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETIMPORT                        R6 K1 [script]
       22 GETTABLEKS                       R5 R6 K9 ["Contexts"]
       24 GETTABLEKS                       R4 R5 K10 ["BrowserContext"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K11 ["Foundation"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETIMPORT                        R7 K1 [script]
       36 GETTABLEKS                       R6 R7 K12 ["Networking"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETIMPORT                        R9 K1 [script]
       43 GETTABLEKS                       R8 R9 K7 ["Components"]
       45 GETTABLEKS                       R7 R8 K13 ["OptionMenuButton"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETTABLEKS                       R8 R1 K14 ["React"]
       52 CALL                             R7 1 1
       53 GETIMPORT                        R8 K6 [require]
       55 GETTABLEKS                       R9 R1 K15 ["ReactUtils"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETIMPORT                        R12 K1 [script]
       62 GETTABLEKS                       R11 R12 K7 ["Components"]
       64 GETTABLEKS                       R10 R11 K16 ["ScopeMenuButton"]
       66 CALL                             R9 1 1
       67 GETIMPORT                        R10 K6 [require]
       69 GETIMPORT                        R13 K1 [script]
       71 GETTABLEKS                       R12 R13 K7 ["Components"]
       73 GETTABLEKS                       R11 R12 K17 ["SearchBar"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K6 [require]
       78 GETIMPORT                        R13 K1 [script]
       80 GETTABLEKS                       R12 R13 K18 ["Types"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K6 [require]
       85 GETIMPORT                        R15 K1 [script]
       87 GETTABLEKS                       R14 R15 K19 ["Hooks"]
       89 GETTABLEKS                       R13 R14 K20 ["useAssetLoading"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K6 [require]
       94 GETIMPORT                        R16 K1 [script]
       96 GETTABLEKS                       R15 R16 K19 ["Hooks"]
       98 GETTABLEKS                       R14 R15 K21 ["useOnScrollEndReached"]
      100 CALL                             R13 1 1
      101 GETIMPORT                        R14 K6 [require]
      103 GETIMPORT                        R17 K1 [script]
      105 GETTABLEKS                       R16 R17 K19 ["Hooks"]
      107 GETTABLEKS                       R15 R16 K22 ["useScopeLoading"]
      109 CALL                             R14 1 1
      110 GETTABLEKS                       R15 R4 K23 ["Button"]
      112 GETTABLEKS                       R16 R4 K24 ["Text"]
      114 GETTABLEKS                       R17 R4 K25 ["View"]
      116 GETTABLEKS                       R18 R7 K26 ["createElement"]
      118 GETTABLEKS                       R19 R8 K27 ["createNextOrder"]
      120 GETTABLEKS                       R21 R4 K19 ["Hooks"]
      122 GETTABLEKS                       R20 R21 K28 ["useTokens"]
      124 DUPCLOSURE                       R21 K29 [PROTO_6]
      125 CAPTURE                          VAL R7
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R5
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R19
      132 CAPTURE                          VAL R20
      133 CAPTURE                          VAL R18
      134 CAPTURE                          VAL R17
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R9
      137 CAPTURE                          VAL R6
      138 CAPTURE                          VAL R16
      139 CAPTURE                          VAL R2
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R4
      142 RETURN                           R21 1
