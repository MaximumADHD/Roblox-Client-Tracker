PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["getContainerBreakpoint"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADK                            R3 K1 ["%*PX"]
        6 FASTCALL1                        MATH_ROUND R0 ; [+3]
        7 MOVE                             R6 R0
        8 GETIMPORT                        R5 K4 [math.round]
       10 CALL                             R5 1 1
       11 NAMECALL                         R3 R3 K5 ["format"]
       13 CALL                             R3 2 1
       14 MOVE                             R2 R3
       15 GETTABLEKS                       R4 R1 K6 ["maxWidth"]
       17 JUMPIFEQKNIL                     R4 ; [+11]
       19 LOADK                            R4 K7 ["%*PX–%*PX"]
       20 GETTABLEKS                       R6 R1 K8 ["minWidth"]
       22 GETTABLEKS                       R7 R1 K6 ["maxWidth"]
       24 NAMECALL                         R4 R4 K5 ["format"]
       26 CALL                             R4 3 1
       27 MOVE                             R3 R4
       28 JUMP                             ; [+7]
       29 LOADK                            R4 K9 ["%*PX+"]
       30 GETTABLEKS                       R6 R1 K8 ["minWidth"]
       32 NAMECALL                         R4 R4 K5 ["format"]
       34 CALL                             R4 2 1
       35 MOVE                             R3 R4
       36 GETUPVAL                         R4 1
       37 GETUPVAL                         R5 2
       38 GETTABLEKS                       R5 R5 K10 ["View"]
       40 DUPTABLE                         R6 K13 [{["tag"] = "col gap-xxsmall auto-xy"}]
       41 DUPTABLE                         R7 K16 [{"Width", "Spec"}]
       42 GETUPVAL                         R8 1
       43 GETUPVAL                         R9 2
       44 GETTABLEKS                       R9 R9 K17 ["Text"]
       46 DUPTABLE                         R10 K21 [{["Text"], ["tag"] = "text-caption-small content-default auto-xy", ["LayoutOrder"] = 1}]
       47 SETTABLEKS                       R2 R10 K17 ["Text"]
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K14 ["Width"]
       52 GETUPVAL                         R8 1
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R9 R9 K10 ["View"]
       56 DUPTABLE                         R10 K24 [{["tag"] = "row align-y-center gap-small auto-xy", ["LayoutOrder"] = 2}]
       57 DUPTABLE                         R11 K27 [{"Band", "Range"}]
       58 GETUPVAL                         R12 1
       59 GETUPVAL                         R13 2
       60 GETTABLEKS                       R13 R13 K17 ["Text"]
       62 DUPTABLE                         R14 K21 [{["Text"], ["tag"] = "text-caption-small content-default auto-xy", ["LayoutOrder"] = 1}]
       63 LOADK                            R16 K28 ["@%*"]
       64 GETTABLEKS                       R18 R1 K29 ["label"]
       66 NAMECALL                         R16 R16 K5 ["format"]
       68 CALL                             R16 2 1
       69 MOVE                             R15 R16
       70 SETTABLEKS                       R15 R14 K17 ["Text"]
       72 CALL                             R12 2 1
       73 SETTABLEKS                       R12 R11 K25 ["Band"]
       75 GETUPVAL                         R12 1
       76 GETUPVAL                         R13 2
       77 GETTABLEKS                       R13 R13 K17 ["Text"]
       79 DUPTABLE                         R14 K31 [{["Text"], ["tag"] = "text-caption-small content-muted auto-xy", ["LayoutOrder"] = 2}]
       80 SETTABLEKS                       R3 R14 K17 ["Text"]
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K26 ["Range"]
       85 CALL                             R8 3 1
       86 SETTABLEKS                       R8 R7 K15 ["Spec"]
       88 CALL                             R4 3 1
       89 GETUPVAL                         R5 1
       90 GETUPVAL                         R6 2
       91 GETTABLEKS                       R6 R6 K17 ["Text"]
       93 DUPTABLE                         R7 K33 [{["Text"] = "DOCS", ["tag"] = "text-caption-small content-muted auto-xy"}]
       94 CALL                             R5 2 1
       95 GETUPVAL                         R6 1
       96 GETUPVAL                         R7 3
       97 GETTABLEKS                       R7 R7 K34 ["FooterBar"]
       99 DUPTABLE                         R8 K39 [{["leading"], ["trailing"], ["height"] = 48}]
      100 SETTABLEKS                       R4 R8 K35 ["leading"]
      102 SETTABLEKS                       R5 R8 K36 ["trailing"]
      104 CALL                             R6 2 -1
      105 RETURN                           R6 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useRegion"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R5 R1 K2 ["region"]
        7 GETTABLE                         R3 R4 R5
        8 ORK                              R2 R3 K1 ["Region"]
        9 GETUPVAL                         R3 2
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K3 ["View"]
       13 DUPTABLE                         R5 K6 [{["tag"] = "row align-y-center gap-xsmall auto-xy"}]
       14 DUPTABLE                         R6 K9 [{"A", "B"}]
       15 GETUPVAL                         R7 2
       16 GETUPVAL                         R8 4
       17 DUPTABLE                         R9 K15 [{["icon"] = "diamond-simplified", ["isCompact"], ["LayoutOrder"] = 1}]
       18 GETTABLEKS                       R11 R1 K16 ["density"]
       20 JUMPIFEQKS                       R11 K17 ["compact"] ; [+2]
       22 LOADB                            R10 0 +1
       23 LOADB                            R10 1
       24 SETTABLEKS                       R10 R9 K12 ["isCompact"]
       26 CALL                             R7 2 1
       27 SETTABLEKS                       R7 R6 K7 ["A"]
       29 GETUPVAL                         R7 2
       30 GETUPVAL                         R8 4
       31 DUPTABLE                         R9 K19 [{["icon"] = "diamond-simplified", ["isCompact"], ["LayoutOrder"] = 2}]
       32 GETTABLEKS                       R11 R1 K16 ["density"]
       34 JUMPIFEQKS                       R11 K17 ["compact"] ; [+2]
       36 LOADB                            R10 0 +1
       37 LOADB                            R10 1
       38 SETTABLEKS                       R10 R9 K12 ["isCompact"]
       40 CALL                             R7 2 1
       41 SETTABLEKS                       R7 R6 K8 ["B"]
       43 CALL                             R3 3 1
       44 GETUPVAL                         R4 2
       45 LOADK                            R5 K20 ["Frame"]
       46 DUPTABLE                         R6 K27 [{["Name"] = "Structure", ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Size"]}]
       47 GETIMPORT                        R7 K30 [UDim2.fromScale]
       49 LOADN                            R8 1
       50 LOADN                            R9 1
       51 CALL                             R7 2 1
       52 SETTABLEKS                       R7 R6 K26 ["Size"]
       54 DUPTABLE                         R7 K34 [{"Header", "Body", "Footer"}]
       55 GETUPVAL                         R8 2
       56 LOADK                            R9 K20 ["Frame"]
       57 DUPTABLE                         R10 K36 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
       58 GETIMPORT                        R11 K38 [UDim2.fromOffset]
       60 LOADN                            R12 0
       61 LOADN                            R13 0
       62 CALL                             R11 2 1
       63 SETTABLEKS                       R11 R10 K35 ["Position"]
       65 GETIMPORT                        R11 K40 [UDim2.new]
       67 LOADN                            R12 1
       68 LOADN                            R13 0
       69 LOADN                            R14 0
       70 LOADN                            R15 56
       71 CALL                             R11 4 1
       72 SETTABLEKS                       R11 R10 K26 ["Size"]
       74 DUPTABLE                         R11 K42 [{"Bar"}]
       75 GETUPVAL                         R12 2
       76 GETUPVAL                         R13 5
       77 GETTABLEKS                       R13 R13 K43 ["HeaderBar"]
       79 DUPTABLE                         R14 K49 [{["title"] = "Title", ["trailing"], ["height"] = 56}]
       80 SETTABLEKS                       R3 R14 K46 ["trailing"]
       82 CALL                             R12 2 1
       83 SETTABLEKS                       R12 R11 K41 ["Bar"]
       85 CALL                             R8 3 1
       86 SETTABLEKS                       R8 R7 K31 ["Header"]
       88 GETUPVAL                         R8 2
       89 LOADK                            R9 K20 ["Frame"]
       90 DUPTABLE                         R10 K36 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
       91 GETIMPORT                        R11 K38 [UDim2.fromOffset]
       93 LOADN                            R12 0
       94 LOADN                            R13 56
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K35 ["Position"]
       98 GETIMPORT                        R11 K40 [UDim2.new]
      100 LOADN                            R12 1
      101 LOADN                            R13 0
      102 LOADN                            R14 1
      103 LOADN                            R15 -104
      104 CALL                             R11 4 1
      105 SETTABLEKS                       R11 R10 K26 ["Size"]
      107 DUPTABLE                         R11 K51 [{"Inner"}]
      108 GETUPVAL                         R12 2
      109 LOADK                            R13 K20 ["Frame"]
      110 DUPTABLE                         R14 K55 [{["Name"] = "EmptyState", ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["AnchorPoint"], ["Position"], ["Size"], ["AutomaticSize"]}]
      111 GETIMPORT                        R15 K57 [Vector2.new]
      113 LOADK                            R16 K58 [0.5]
      114 LOADK                            R17 K58 [0.5]
      115 CALL                             R15 2 1
      116 SETTABLEKS                       R15 R14 K53 ["AnchorPoint"]
      118 GETIMPORT                        R15 K30 [UDim2.fromScale]
      120 LOADK                            R16 K58 [0.5]
      121 LOADK                            R17 K58 [0.5]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K35 ["Position"]
      125 GETIMPORT                        R15 K40 [UDim2.new]
      127 LOADN                            R16 1
      128 LOADN                            R17 -48
      129 LOADN                            R18 0
      130 LOADN                            R19 0
      131 CALL                             R15 4 1
      132 SETTABLEKS                       R15 R14 K26 ["Size"]
      134 GETIMPORT                        R15 K61 [Enum.AutomaticSize.Y]
      136 SETTABLEKS                       R15 R14 K54 ["AutomaticSize"]
      138 DUPTABLE                         R15 K64 [{"Layout", "Name", "Message"}]
      139 GETUPVAL                         R16 2
      140 LOADK                            R17 K65 ["UIListLayout"]
      141 DUPTABLE                         R18 K71 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      142 GETIMPORT                        R19 K73 [Enum.FillDirection.Vertical]
      144 SETTABLEKS                       R19 R18 K66 ["FillDirection"]
      146 GETIMPORT                        R19 K75 [Enum.HorizontalAlignment.Center]
      148 SETTABLEKS                       R19 R18 K67 ["HorizontalAlignment"]
      150 GETIMPORT                        R19 K76 [Enum.VerticalAlignment.Center]
      152 SETTABLEKS                       R19 R18 K68 ["VerticalAlignment"]
      154 GETIMPORT                        R19 K77 [Enum.SortOrder.LayoutOrder]
      156 SETTABLEKS                       R19 R18 K69 ["SortOrder"]
      158 GETIMPORT                        R19 K79 [UDim.new]
      160 LOADN                            R20 0
      161 LOADN                            R21 8
      162 CALL                             R19 2 1
      163 SETTABLEKS                       R19 R18 K70 ["Padding"]
      165 CALL                             R16 2 1
      166 SETTABLEKS                       R16 R15 K62 ["Layout"]
      168 GETUPVAL                         R16 2
      169 GETUPVAL                         R17 3
      170 GETTABLEKS                       R17 R17 K80 ["Text"]
      172 DUPTABLE                         R18 K84 [{["Text"], ["Size"], ["AutomaticSize"], ["TextWrapped"] = True, ["tag"] = "text-title-small content-emphasis text-align-x-center", ["LayoutOrder"] = 1}]
      173 SETTABLEKS                       R2 R18 K80 ["Text"]
      175 GETIMPORT                        R19 K40 [UDim2.new]
      177 LOADN                            R20 1
      178 LOADN                            R21 0
      179 LOADN                            R22 0
      180 LOADN                            R23 0
      181 CALL                             R19 4 1
      182 SETTABLEKS                       R19 R18 K26 ["Size"]
      184 GETIMPORT                        R19 K61 [Enum.AutomaticSize.Y]
      186 SETTABLEKS                       R19 R18 K54 ["AutomaticSize"]
      188 CALL                             R16 2 1
      189 SETTABLEKS                       R16 R15 K21 ["Name"]
      191 GETUPVAL                         R16 2
      192 GETUPVAL                         R17 3
      193 GETTABLEKS                       R17 R17 K80 ["Text"]
      195 DUPTABLE                         R18 K87 [{["Text"] = "A layout isn't assigned to this region. Select a layout to continue.", ["Size"], ["AutomaticSize"], ["TextWrapped"] = True, ["tag"] = "text-body-medium content-muted text-align-x-center", ["LayoutOrder"] = 2}]
      196 GETIMPORT                        R19 K40 [UDim2.new]
      198 LOADN                            R20 1
      199 LOADN                            R21 0
      200 LOADN                            R22 0
      201 LOADN                            R23 0
      202 CALL                             R19 4 1
      203 SETTABLEKS                       R19 R18 K26 ["Size"]
      205 GETIMPORT                        R19 K61 [Enum.AutomaticSize.Y]
      207 SETTABLEKS                       R19 R18 K54 ["AutomaticSize"]
      209 CALL                             R16 2 1
      210 SETTABLEKS                       R16 R15 K63 ["Message"]
      212 CALL                             R12 3 1
      213 SETTABLEKS                       R12 R11 K50 ["Inner"]
      215 CALL                             R8 3 1
      216 SETTABLEKS                       R8 R7 K32 ["Body"]
      218 GETUPVAL                         R8 2
      219 LOADK                            R9 K20 ["Frame"]
      220 DUPTABLE                         R10 K88 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["AnchorPoint"], ["Position"], ["Size"]}]
      221 GETIMPORT                        R11 K57 [Vector2.new]
      223 LOADN                            R12 0
      224 LOADN                            R13 1
      225 CALL                             R11 2 1
      226 SETTABLEKS                       R11 R10 K53 ["AnchorPoint"]
      228 GETIMPORT                        R11 K40 [UDim2.new]
      230 LOADN                            R12 0
      231 LOADN                            R13 0
      232 LOADN                            R14 1
      233 LOADN                            R15 0
      234 CALL                             R11 4 1
      235 SETTABLEKS                       R11 R10 K35 ["Position"]
      237 GETIMPORT                        R11 K40 [UDim2.new]
      239 LOADN                            R12 1
      240 LOADN                            R13 0
      241 LOADN                            R14 0
      242 LOADN                            R15 48
      243 CALL                             R11 4 1
      244 SETTABLEKS                       R11 R10 K26 ["Size"]
      246 DUPTABLE                         R11 K42 [{"Bar"}]
      247 GETUPVAL                         R12 6
      248 GETTABLEKS                       R13 R1 K89 ["width"]
      250 CALL                             R12 1 1
      251 SETTABLEKS                       R12 R11 K41 ["Bar"]
      253 CALL                             R8 3 1
      254 SETTABLEKS                       R8 R7 K33 ["Footer"]
      256 CALL                             R4 3 1
      257 GETUPVAL                         R5 2
      258 GETUPVAL                         R6 3
      259 GETTABLEKS                       R6 R6 K3 ["View"]
      261 DUPTABLE                         R7 K93 [{["testId"] = "--appkit-region-placeholder", ["tag"] = "size-full"}]
      262 DUPTABLE                         R8 K94 [{"Structure"}]
      263 SETTABLEKS                       R4 R8 K22 ["Structure"]
      265 CALL                             R5 3 -1
      266 RETURN                           R5 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["isMobilePortrait"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETUPVAL                         R1 0
        4 GETUPVAL                         R2 1
        5 DUPTABLE                         R3 K4 [{["items"], ["selectedKey"] = "item-1"}]
        6 GETUPVAL                         R4 2
        7 SETTABLEKS                       R4 R3 K1 ["items"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1
       11 GETUPVAL                         R1 0
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K5 ["NavigationRail"]
       15 DUPTABLE                         R3 K10 [{["items"], ["selectedKey"] = "item-1", ["collapsed"] = True, ["header"], ["footerItems"]}]
       16 GETUPVAL                         R4 2
       17 SETTABLEKS                       R4 R3 K1 ["items"]
       19 GETUPVAL                         R4 0
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R5 R5 K11 ["NavigationRailHeader"]
       23 NEWTABLE                         R6 0 0
       25 CALL                             R4 2 1
       26 SETTABLEKS                       R4 R3 K8 ["header"]
       28 NEWTABLE                         R4 0 1
       30 DUPTABLE                         R5 K18 [{["key"] = "footer", ["icon"] = "diamond-simplified", ["label"] = "Label"}]
       31 SETLIST                          R4 R5 1 [1]
       33 SETTABLEKS                       R4 R3 K9 ["footerItems"]
       35 CALL                             R1 2 -1
       36 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Placeholder must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["React"]
       20 CALL                             R1 1 1
       21 GETIMPORT                        R2 K8 [require]
       23 GETTABLEKS                       R3 R0 K9 ["Packages"]
       25 GETTABLEKS                       R3 R3 K11 ["Foundation"]
       27 CALL                             R2 1 1
       28 GETIMPORT                        R3 K8 [require]
       30 GETIMPORT                        R4 K1 [script]
       32 GETTABLEKS                       R4 R4 K12 ["Parent"]
       34 GETTABLEKS                       R4 R4 K13 ["Contexts"]
       36 CALL                             R3 1 1
       37 GETIMPORT                        R4 K8 [require]
       39 GETIMPORT                        R5 K1 [script]
       41 GETTABLEKS                       R5 R5 K12 ["Parent"]
       43 GETTABLEKS                       R5 R5 K14 ["DeviceProfiles"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K8 [require]
       48 GETIMPORT                        R6 K1 [script]
       50 GETTABLEKS                       R6 R6 K12 ["Parent"]
       52 GETTABLEKS                       R6 R6 K15 ["Hooks"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K8 [require]
       57 GETIMPORT                        R7 K1 [script]
       59 GETTABLEKS                       R7 R7 K12 ["Parent"]
       61 GETTABLEKS                       R7 R7 K16 ["Bars"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K8 [require]
       66 GETIMPORT                        R8 K1 [script]
       68 GETTABLEKS                       R8 R8 K12 ["Parent"]
       70 GETTABLEKS                       R8 R8 K17 ["UtilityButton"]
       72 CALL                             R7 1 1
       73 GETIMPORT                        R8 K8 [require]
       75 GETIMPORT                        R9 K1 [script]
       77 GETTABLEKS                       R9 R9 K12 ["Parent"]
       79 GETTABLEKS                       R9 R9 K18 ["NavigationRail"]
       81 CALL                             R8 1 1
       82 GETIMPORT                        R9 K8 [require]
       84 GETIMPORT                        R10 K1 [script]
       86 GETTABLEKS                       R10 R10 K12 ["Parent"]
       88 GETTABLEKS                       R10 R10 K19 ["NavigationBar"]
       90 CALL                             R9 1 1
       91 GETTABLEKS                       R10 R1 K20 ["createElement"]
       93 DUPTABLE                         R11 K29 [{["content"] = "ContentRegion", ["support"] = "SupportRegion", ["navigation"] = "NavigationRegion", ["utility"] = "UtilityRegion"}]
       94 DUPCLOSURE                       R12 K30 [PROTO_0]
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R6
       99 DUPCLOSURE                       R13 K31 [PROTO_1]
      100 CAPTURE                          VAL R5
      101 CAPTURE                          VAL R11
      102 CAPTURE                          VAL R10
      103 CAPTURE                          VAL R2
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R12
      107 NEWTABLE                         R14 0 4
      109 DUPTABLE                         R15 K38 [{["key"] = "item-1", ["icon"] = "diamond-simplified", ["label"] = "Label"}]
      110 DUPTABLE                         R16 K40 [{["key"] = "item-2", ["icon"] = "diamond-simplified", ["label"] = "Label"}]
      111 DUPTABLE                         R17 K42 [{["key"] = "item-3", ["icon"] = "diamond-simplified", ["label"] = "Label"}]
      112 DUPTABLE                         R18 K44 [{["key"] = "item-4", ["icon"] = "diamond-simplified", ["label"] = "Label"}]
      113 SETLIST                          R14 R15 4 [1]
      115 DUPCLOSURE                       R15 K45 [PROTO_2]
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R9
      118 CAPTURE                          VAL R14
      119 CAPTURE                          VAL R8
      120 DUPTABLE                         R16 K48 [{"RegionPlaceholder", "PlaceholderNavigation"}]
      121 SETTABLEKS                       R13 R16 K46 ["RegionPlaceholder"]
      123 SETTABLEKS                       R15 R16 K47 ["PlaceholderNavigation"]
      125 RETURN                           R16 1
