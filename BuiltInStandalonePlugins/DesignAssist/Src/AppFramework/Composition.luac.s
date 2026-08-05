PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["clampSupportWidth"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["SUPPORT_DEFAULT_WIDTH"]
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["clampSupportWidth"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useDeviceProfile"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useContext"]
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K2 ["UseInsetsContext"]
       10 CALL                             R2 1 1
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K3 ["Hooks"]
       14 GETTABLEKS                       R3 R3 K4 ["useTokens"]
       16 CALL                             R3 0 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K5 ["useRegionLayout"]
       20 MOVE                             R5 R1
       21 CALL                             R4 1 1
       22 GETTABLEKS                       R5 R0 K6 ["children"]
       24 JUMPIF                           R5 ; [+2]
       25 NEWTABLE                         R5 0 0
       27 GETTABLEKS                       R6 R5 K7 ["Navigation"]
       29 GETTABLEKS                       R7 R5 K8 ["Content"]
       31 GETTABLEKS                       R8 R5 K9 ["Support"]
       33 GETTABLEKS                       R10 R1 K10 ["breakpoint"]
       35 JUMPIFEQKS                       R10 K11 ["Mobile"] ; [+2]
       37 LOADB                            R9 0 +1
       38 LOADB                            R9 1
       39 MOVE                             R10 R9
       40 JUMPIFNOT                        R10 ; [+6]
       41 GETTABLEKS                       R11 R1 K12 ["orientation"]
       43 JUMPIFEQKS                       R11 K13 ["Portrait"] ; [+2]
       45 LOADB                            R10 0 +1
       46 LOADB                            R10 1
       47 GETTABLEKS                       R12 R0 K15 ["variant"]
       49 ORK                              R11 R12 K14 ["Default"]
       50 JUMPIFNOT                        R9 ; [+2]
       51 LOADK                            R12 K14 ["Default"]
       52 JUMP                             ; [+1]
       53 MOVE                             R12 R11
       54 LOADB                            R13 1
       55 JUMPIFEQKS                       R12 K16 ["SplitLeft"] ; [+5]
       57 JUMPIFEQKS                       R12 K17 ["SplitRight"] ; [+2]
       59 LOADB                            R13 0 +1
       60 LOADB                            R13 1
       61 MOVE                             R14 R6
       62 JUMPIF                           R14 ; [+8]
       63 GETUPVAL                         R14 4
       64 GETUPVAL                         R15 5
       65 GETTABLEKS                       R15 R15 K18 ["PlaceholderNavigation"]
       67 DUPTABLE                         R16 K20 [{"isMobilePortrait"}]
       68 SETTABLEKS                       R10 R16 K19 ["isMobilePortrait"]
       70 CALL                             R14 2 1
       71 GETUPVAL                         R15 1
       72 GETTABLEKS                       R15 R15 K21 ["useState"]
       74 DUPCLOSURE                       R16 K22 [PROTO_0]
       75 CAPTURE                          UPVAL U6
       76 CAPTURE                          UPVAL U2
       77 CALL                             R15 1 2
       78 GETUPVAL                         R17 1
       79 GETTABLEKS                       R17 R17 K23 ["useCallback"]
       81 NEWCLOSURE                       R18 P1
       82 CAPTURE                          VAL R16
       83 CAPTURE                          UPVAL U6
       84 NEWTABLE                         R19 0 0
       86 CALL                             R17 2 1
       87 JUMPIFNOT                        R13 ; [+2]
       88 MOVE                             R18 R15
       89 JUMP                             ; [+1]
       90 LOADN                            R18 0
       91 GETTABLEKS                       R19 R4 K24 ["navigationPlacement"]
       93 GETUPVAL                         R20 6
       94 GETTABLEKS                       R20 R20 K25 ["navThicknessFor"]
       96 MOVE                             R21 R1
       97 MOVE                             R22 R19
       98 CALL                             R20 2 1
       99 GETUPVAL                         R21 6
      100 GETTABLEKS                       R21 R21 K26 ["getSafeAreaInsets"]
      102 MOVE                             R22 R1
      103 MOVE                             R23 R2
      104 CALL                             R21 2 1
      105 GETUPVAL                         R23 6
      106 GETTABLEKS                       R23 R23 K27 ["contentWidthFor"]
      108 MOVE                             R24 R1
      109 MOVE                             R25 R19
      110 MOVE                             R26 R20
      111 MOVE                             R27 R21
      112 CALL                             R23 4 1
      113 SUB                              R22 R23 R18
      114 GETUPVAL                         R23 6
      115 GETTABLEKS                       R23 R23 K28 ["layoutMetricsForContentWidth"]
      117 LOADN                            R25 0
      118 FASTCALL2                        MATH_MAX R25 R22 ; [+4]
      120 MOVE                             R26 R22
      121 GETIMPORT                        R24 K31 [math.max]
      123 CALL                             R24 2 1
      124 CALL                             R23 1 1
      125 JUMPIFNOT                        R13 ; [+10]
      126 GETUPVAL                         R24 6
      127 GETTABLEKS                       R24 R24 K32 ["splitContentPropsFor"]
      129 MOVE                             R25 R19
      130 MOVE                             R26 R20
      131 MOVE                             R27 R21
      132 MOVE                             R28 R12
      133 MOVE                             R29 R18
      134 CALL                             R24 5 1
      135 JUMP                             ; [+7]
      136 GETUPVAL                         R24 6
      137 GETTABLEKS                       R24 R24 K33 ["contentPropsFor"]
      139 MOVE                             R25 R19
      140 MOVE                             R26 R20
      141 MOVE                             R27 R21
      142 CALL                             R24 3 1
      143 DUPTABLE                         R25 K36 [{"ContentRegion", "NavigationRegion"}]
      144 GETUPVAL                         R26 4
      145 GETUPVAL                         R27 7
      146 GETTABLEKS                       R27 R27 K34 ["ContentRegion"]
      148 DUPTABLE                         R28 K39 [{"layoutProps", "children", "width"}]
      149 SETTABLEKS                       R24 R28 K37 ["layoutProps"]
      151 SETTABLEKS                       R7 R28 K6 ["children"]
      153 LOADN                            R30 0
      154 FASTCALL2                        MATH_MAX R30 R22 ; [+4]
      156 MOVE                             R31 R22
      157 GETIMPORT                        R29 K31 [math.max]
      159 CALL                             R29 2 1
      160 SETTABLEKS                       R29 R28 K38 ["width"]
      162 CALL                             R26 2 1
      163 SETTABLEKS                       R26 R25 K34 ["ContentRegion"]
      165 GETUPVAL                         R26 4
      166 GETUPVAL                         R27 7
      167 GETTABLEKS                       R27 R27 K35 ["NavigationRegion"]
      169 DUPTABLE                         R28 K39 [{"layoutProps", "children", "width"}]
      170 GETUPVAL                         R29 6
      171 GETTABLEKS                       R29 R29 K40 ["navPropsFor"]
      173 MOVE                             R30 R19
      174 MOVE                             R31 R20
      175 CALL                             R29 2 1
      176 SETTABLEKS                       R29 R28 K37 ["layoutProps"]
      178 SETTABLEKS                       R14 R28 K6 ["children"]
      180 SETTABLEKS                       R20 R28 K38 ["width"]
      182 CALL                             R26 2 1
      183 SETTABLEKS                       R26 R25 K35 ["NavigationRegion"]
      185 JUMPIFNOT                        R13 ; [+46]
      186 GETUPVAL                         R26 4
      187 GETUPVAL                         R27 7
      188 GETTABLEKS                       R27 R27 K41 ["SupportRegion"]
      190 DUPTABLE                         R28 K39 [{"layoutProps", "children", "width"}]
      191 GETUPVAL                         R29 6
      192 GETTABLEKS                       R29 R29 K42 ["supportPropsFor"]
      194 MOVE                             R30 R19
      195 MOVE                             R31 R20
      196 MOVE                             R32 R21
      197 MOVE                             R33 R12
      198 MOVE                             R34 R18
      199 CALL                             R29 5 1
      200 SETTABLEKS                       R29 R28 K37 ["layoutProps"]
      202 SETTABLEKS                       R8 R28 K6 ["children"]
      204 SETTABLEKS                       R18 R28 K38 ["width"]
      206 CALL                             R26 2 1
      207 SETTABLEKS                       R26 R25 K41 ["SupportRegion"]
      209 GETUPVAL                         R26 4
      210 LOADK                            R27 K43 ["Frame"]
      211 GETUPVAL                         R28 6
      212 GETTABLEKS                       R28 R28 K44 ["dividerPropsFor"]
      214 MOVE                             R29 R19
      215 MOVE                             R30 R20
      216 MOVE                             R31 R21
      217 MOVE                             R32 R12
      218 MOVE                             R33 R18
      219 CALL                             R28 5 1
      220 DUPTABLE                         R29 K46 [{"Line"}]
      221 GETUPVAL                         R30 4
      222 GETUPVAL                         R31 3
      223 GETTABLEKS                       R31 R31 K47 ["View"]
      225 DUPTABLE                         R32 K50 [{["tag"] = "size-full bg-surface-300"}]
      226 CALL                             R30 2 1
      227 SETTABLEKS                       R30 R29 K45 ["Line"]
      229 CALL                             R26 3 1
      230 SETTABLEKS                       R26 R25 K51 ["RegionDivider"]
      232 GETTABLEKS                       R26 R0 K52 ["backgroundStyle"]
      234 JUMPIF                           R26 ; [+16]
      235 MOVE                             R26 R3
      236 JUMPIFNOT                        R26 ; [+14]
      237 GETTABLEKS                       R26 R3 K53 ["Color"]
      239 JUMPIFNOT                        R26 ; [+11]
      240 GETTABLEKS                       R26 R3 K53 ["Color"]
      242 GETTABLEKS                       R26 R26 K54 ["Surface"]
      244 JUMPIFNOT                        R26 ; [+6]
      245 GETTABLEKS                       R26 R3 K53 ["Color"]
      247 GETTABLEKS                       R26 R26 K54 ["Surface"]
      249 GETTABLEKS                       R26 R26 K55 ["Surface_0"]
      251 JUMPIFNOT                        R26 ; [+3]
      252 GETTABLEKS                       R27 R26 K56 ["Color3"]
      254 JUMP                             ; [+6]
      255 GETIMPORT                        R27 K58 [Color3.fromRGB]
      257 LOADN                            R28 255
      258 LOADN                            R29 255
      259 LOADN                            R30 255
      260 CALL                             R27 3 1
      261 JUMPIFNOT                        R26 ; [+3]
      262 GETTABLEKS                       R28 R26 K59 ["Transparency"]
      264 JUMP                             ; [+1]
      265 LOADN                            R28 0
      266 GETUPVAL                         R29 4
      267 LOADK                            R30 K43 ["Frame"]
      268 DUPTABLE                         R31 K67 [{["Name"] = "CompositionBase", ["Size"], ["BackgroundColor3"], ["BackgroundTransparency"], ["BorderSizePixel"] = 0}]
      269 GETIMPORT                        R32 K70 [UDim2.fromScale]
      271 LOADN                            R33 1
      272 LOADN                            R34 1
      273 CALL                             R32 2 1
      274 SETTABLEKS                       R32 R31 K62 ["Size"]
      276 SETTABLEKS                       R27 R31 K63 ["BackgroundColor3"]
      278 SETTABLEKS                       R28 R31 K64 ["BackgroundTransparency"]
      280 MOVE                             R32 R25
      281 CALL                             R29 3 1
      282 NEWTABLE                         R30 0 2
      284 LOADK                            R31 K71 ["navigation"]
      285 LOADK                            R32 K72 ["content"]
      286 SETLIST                          R30 R31 2 [1]
      288 JUMPIFNOT                        R13 ; [+7]
      289 FASTCALL2K                       TABLE_INSERT R30 K73 ; [+5]
      291 MOVE                             R32 R30
      292 LOADK                            R33 K73 ["support"]
      293 GETIMPORT                        R31 K76 [table.insert]
      295 CALL                             R31 2 0
      296 DUPTABLE                         R31 K87 [{["variant"], ["activeRegions"], ["hasSupportRegion"], ["hasNavigation"] = True, ["isSupportResizable"] = False, ["supportWidth"], ["setSupportWidth"], ["supportMinWidth"], ["supportMaxWidth"]}]
      297 SETTABLEKS                       R12 R31 K15 ["variant"]
      299 SETTABLEKS                       R30 R31 K77 ["activeRegions"]
      301 SETTABLEKS                       R13 R31 K78 ["hasSupportRegion"]
      303 SETTABLEKS                       R18 R31 K83 ["supportWidth"]
      305 SETTABLEKS                       R17 R31 K84 ["setSupportWidth"]
      307 GETUPVAL                         R32 2
      308 GETTABLEKS                       R32 R32 K88 ["SUPPORT_MIN_WIDTH"]
      310 SETTABLEKS                       R32 R31 K85 ["supportMinWidth"]
      312 GETUPVAL                         R32 2
      313 GETTABLEKS                       R32 R32 K89 ["SUPPORT_MAX_WIDTH"]
      315 SETTABLEKS                       R32 R31 K86 ["supportMaxWidth"]
      317 GETUPVAL                         R32 4
      318 GETUPVAL                         R33 2
      319 GETTABLEKS                       R33 R33 K90 ["ScaffoldContext"]
      321 GETTABLEKS                       R33 R33 K91 ["Provider"]
      323 DUPTABLE                         R34 K93 [{"value"}]
      324 SETTABLEKS                       R31 R34 K92 ["value"]
      326 DUPTABLE                         R35 K95 [{"Metrics"}]
      327 GETUPVAL                         R36 4
      328 GETUPVAL                         R37 2
      329 GETTABLEKS                       R37 R37 K96 ["LayoutMetricsContext"]
      331 GETTABLEKS                       R37 R37 K91 ["Provider"]
      333 DUPTABLE                         R38 K93 [{"value"}]
      334 SETTABLEKS                       R23 R38 K92 ["value"]
      336 DUPTABLE                         R39 K98 [{"Insets"}]
      337 GETUPVAL                         R40 4
      338 GETUPVAL                         R41 2
      339 GETTABLEKS                       R41 R41 K99 ["RegionInsetContext"]
      341 GETTABLEKS                       R41 R41 K91 ["Provider"]
      343 DUPTABLE                         R42 K93 [{"value"}]
      344 SETTABLEKS                       R21 R42 K92 ["value"]
      346 DUPTABLE                         R43 K101 [{"Composition"}]
      347 SETTABLEKS                       R29 R43 K100 ["Composition"]
      349 CALL                             R40 3 1
      350 SETTABLEKS                       R40 R39 K97 ["Insets"]
      352 CALL                             R36 3 1
      353 SETTABLEKS                       R36 R35 K94 ["Metrics"]
      355 CALL                             R32 3 -1
      356 RETURN                           R32 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.Composition must run inside the DesignAssist plugin tree"]
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
       43 GETTABLEKS                       R5 R5 K14 ["Hooks"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K8 [require]
       48 GETIMPORT                        R6 K1 [script]
       50 GETTABLEKS                       R6 R6 K12 ["Parent"]
       52 GETTABLEKS                       R6 R6 K15 ["Layout"]
       54 CALL                             R5 1 1
       55 GETIMPORT                        R6 K8 [require]
       57 GETIMPORT                        R7 K1 [script]
       59 GETTABLEKS                       R7 R7 K12 ["Parent"]
       61 GETTABLEKS                       R7 R7 K16 ["Regions"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K8 [require]
       66 GETIMPORT                        R8 K1 [script]
       68 GETTABLEKS                       R8 R8 K12 ["Parent"]
       70 GETTABLEKS                       R8 R8 K17 ["Placeholder"]
       72 CALL                             R7 1 1
       73 GETTABLEKS                       R8 R1 K18 ["createElement"]
       75 NEWTABLE                         R9 1 0
       77 DUPCLOSURE                       R10 K19 [PROTO_2]
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R6
       86 SETTABLEKS                       R10 R9 K20 ["Base"]
       88 RETURN                           R9 1
