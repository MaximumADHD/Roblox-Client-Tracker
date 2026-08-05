PROTO_0:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADN                            R1 3
        2 RETURN                           R1 1
        3 LOADN                            R1 0
        4 RETURN                           R1 1

PROTO_1:
        0 JUMPIFEQKS                       R1 K0 ["xsmall"] ; [+3]
        2 JUMPIFNOTEQKS                    R1 K1 ["small"] ; [+6]
        4 GETTABLEKS                       R2 R0 K2 ["Gap"]
        6 GETTABLEKS                       R2 R2 K3 ["None"]
        8 RETURN                           R2 1
        9 JUMPIFNOTEQKS                    R1 K4 ["xlarge"] ; [+6]
       11 GETTABLEKS                       R2 R0 K2 ["Gap"]
       13 GETTABLEKS                       R2 R2 K5 ["XSmall"]
       15 RETURN                           R2 1
       16 GETTABLEKS                       R2 R0 K2 ["Gap"]
       18 GETTABLEKS                       R2 R2 K6 ["XXSmall"]
       20 RETURN                           R2 1

PROTO_2:
        0 JUMPIFEQKS                       R1 K0 ["xsmall"] ; [+3]
        2 JUMPIFNOTEQKS                    R1 K1 ["xlarge"] ; [+6]
        4 GETTABLEKS                       R2 R0 K2 ["Gap"]
        6 GETTABLEKS                       R2 R2 K3 ["XXSmall"]
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R0 K2 ["Gap"]
       11 GETTABLEKS                       R2 R2 K4 ["None"]
       13 RETURN                           R2 1

PROTO_3:
        0 JUMPIFEQKS                       R1 K0 ["xsmall"] ; [+3]
        2 JUMPIFNOTEQKS                    R1 K1 ["small"] ; [+6]
        4 GETTABLEKS                       R2 R0 K2 ["Size"]
        6 GETTABLEKS                       R2 R2 K3 ["Size_600"]
        8 RETURN                           R2 1
        9 JUMPIFNOTEQKS                    R1 K4 ["xlarge"] ; [+6]
       11 GETTABLEKS                       R2 R0 K2 ["Size"]
       13 GETTABLEKS                       R2 R2 K5 ["Size_1000"]
       15 RETURN                           R2 1
       16 GETTABLEKS                       R2 R0 K2 ["Size"]
       18 GETTABLEKS                       R2 R2 K6 ["Size_800"]
       20 RETURN                           R2 1

PROTO_4:
        0 JUMPIFEQKS                       R0 K0 ["xsmall"] ; [+3]
        2 JUMPIFNOTEQKS                    R0 K1 ["small"] ; [+9]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R1 R1 K2 ["Enums"]
        7 GETTABLEKS                       R1 R1 K3 ["IconSize"]
        9 GETTABLEKS                       R1 R1 K4 ["Small"]
       11 RETURN                           R1 1
       12 JUMPIFNOTEQKS                    R0 K5 ["xlarge"] ; [+9]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K2 ["Enums"]
       17 GETTABLEKS                       R1 R1 K3 ["IconSize"]
       19 GETTABLEKS                       R1 R1 K6 ["Large"]
       21 RETURN                           R1 1
       22 GETUPVAL                         R1 0
       23 GETTABLEKS                       R1 R1 K2 ["Enums"]
       25 GETTABLEKS                       R1 R1 K3 ["IconSize"]
       27 GETTABLEKS                       R1 R1 K7 ["Medium"]
       29 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Enums"]
        3 GETTABLEKS                       R2 R2 K1 ["ControlState"]
        5 GETTABLEKS                       R2 R2 K2 ["Hover"]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 GETUPVAL                         R2 1
       12 NEWTABLE                         R3 2 0
       14 JUMPIFNOT                        R1 ; [+2]
       15 LOADN                            R4 3
       16 JUMP                             ; [+1]
       17 LOADN                            R4 0
       18 SETTABLEKS                       R4 R3 K3 ["chevronShiftX"]
       20 NEWTABLE                         R4 1 0
       22 DUPTABLE                         R5 K7 [{["duration"] = 0.15, ["easingStyle"]}]
       23 GETUPVAL                         R6 2
       24 SETTABLEKS                       R6 R5 K6 ["easingStyle"]
       26 SETTABLEKS                       R5 R4 K3 ["chevronShiftX"]
       28 SETTABLEKS                       R4 R3 K8 ["transition"]
       30 CALL                             R2 1 0
       31 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R1 K2 [UDim.new]
        2 LOADN                            R2 0
        3 FASTCALL1                        MATH_ROUND R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K5 [math.round]
        7 CALL                             R3 1 1
        8 CALL                             R1 2 -1
        9 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useRegion"]
        9 CALL                             R2 0 1
       10 GETTABLEKS                       R3 R0 K3 ["size"]
       12 JUMPIF                           R3 ; [+7]
       13 GETTABLEKS                       R4 R2 K4 ["density"]
       15 JUMPIFNOTEQKS                    R4 K5 ["compact"] ; [+3]
       17 LOADK                            R3 K6 ["small"]
       18 JUMP                             ; [+1]
       19 LOADK                            R3 K7 ["medium"]
       20 GETUPVAL                         R5 2
       21 GETTABLE                         R4 R5 R3
       22 GETUPVAL                         R6 3
       23 GETTABLE                         R5 R6 R3
       24 LOADB                            R6 1
       25 GETTABLEKS                       R7 R0 K8 ["onAction"]
       27 JUMPIFNOTEQKNIL                  R7 ; [+7]
       29 GETTABLEKS                       R7 R0 K9 ["action"]
       31 JUMPIFNOTEQKNIL                  R7 ; [+2]
       33 LOADB                            R6 0 +1
       34 LOADB                            R6 1
       35 GETTABLEKS                       R8 R0 K10 ["isDisabled"]
       37 JUMPIFEQKB                       R8 TRUE ; [+2]
       39 LOADB                            R7 0 +1
       40 LOADB                            R7 1
       41 MOVE                             R8 R6
       42 JUMPIFNOT                        R8 ; [+1]
       43 NOT                              R8 R7
       44 GETUPVAL                         R9 4
       45 GETTABLEKS                       R9 R9 K11 ["useMotion"]
       47 NEWTABLE                         R10 1 0
       49 LOADN                            R11 0
       50 SETTABLEKS                       R11 R10 K12 ["chevronShiftX"]
       52 CALL                             R9 1 2
       53 GETTABLEKS                       R11 R9 K12 ["chevronShiftX"]
       55 GETUPVAL                         R12 5
       56 GETTABLEKS                       R12 R12 K13 ["useCallback"]
       58 NEWCLOSURE                       R13 P0
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          VAL R10
       61 CAPTURE                          UPVAL U6
       62 NEWTABLE                         R14 0 1
       64 MOVE                             R15 R10
       65 SETLIST                          R14 R15 1 [1]
       67 CALL                             R12 2 1
       68 DUPTABLE                         R13 K15 [{"Title"}]
       69 GETUPVAL                         R14 7
       70 GETUPVAL                         R15 0
       71 GETTABLEKS                       R15 R15 K16 ["Text"]
       73 DUPTABLE                         R16 K25 [{["Text"], ["LayoutOrder"] = 1, ["AutomaticSize"], ["Size"], ["TextWrapped"] = False, ["TextTruncate"], ["tag"]}]
       74 GETTABLEKS                       R17 R0 K26 ["title"]
       76 SETTABLEKS                       R17 R16 K16 ["Text"]
       78 GETIMPORT                        R17 K29 [Enum.AutomaticSize.XY]
       80 SETTABLEKS                       R17 R16 K19 ["AutomaticSize"]
       82 GETIMPORT                        R17 K32 [UDim2.fromOffset]
       84 LOADN                            R18 0
       85 LOADN                            R19 0
       86 CALL                             R17 2 1
       87 SETTABLEKS                       R17 R16 K20 ["Size"]
       89 GETIMPORT                        R17 K34 [Enum.TextTruncate.AtEnd]
       91 SETTABLEKS                       R17 R16 K23 ["TextTruncate"]
       93 LOADK                            R18 K35 ["%* content-emphasis text-align-x-left text-no-wrap text-truncate-end"]
       94 MOVE                             R20 R4
       95 NAMECALL                         R18 R18 K36 ["format"]
       97 CALL                             R18 2 1
       98 MOVE                             R17 R18
       99 SETTABLEKS                       R17 R16 K24 ["tag"]
      101 CALL                             R14 2 1
      102 SETTABLEKS                       R14 R13 K14 ["Title"]
      104 JUMPIFNOT                        R6 ; [+109]
      105 JUMPIFEQKS                       R3 K37 ["xsmall"] ; [+3]
      107 JUMPIFNOTEQKS                    R3 K6 ["small"] ; [+6]
      109 GETTABLEKS                       R14 R1 K20 ["Size"]
      111 GETTABLEKS                       R14 R14 K38 ["Size_600"]
      113 JUMP                             ; [+11]
      114 JUMPIFNOTEQKS                    R3 K39 ["xlarge"] ; [+6]
      116 GETTABLEKS                       R14 R1 K20 ["Size"]
      118 GETTABLEKS                       R14 R14 K40 ["Size_1000"]
      120 JUMP                             ; [+4]
      121 GETTABLEKS                       R14 R1 K20 ["Size"]
      123 GETTABLEKS                       R14 R14 K41 ["Size_800"]
      125 GETUPVAL                         R15 7
      126 GETUPVAL                         R16 0
      127 GETTABLEKS                       R16 R16 K42 ["View"]
      129 DUPTABLE                         R17 K47 [{["testId"] = "--appkit-section-heading-action", ["LayoutOrder"] = 2, ["Size"], ["tag"] = "row align-x-center align-y-center radius-circle bg-action-link content-emphasis"}]
      130 GETIMPORT                        R18 K32 [UDim2.fromOffset]
      132 MOVE                             R19 R14
      133 MOVE                             R20 R14
      134 CALL                             R18 2 1
      135 SETTABLEKS                       R18 R17 K20 ["Size"]
      137 DUPTABLE                         R18 K50 [{"ShiftPadding", "Chevron"}]
      138 GETUPVAL                         R19 7
      139 LOADK                            R20 K51 ["UIPadding"]
      140 DUPTABLE                         R21 K53 [{"PaddingLeft"}]
      141 DUPCLOSURE                       R24 K54 [PROTO_6]
      142 NAMECALL                         R22 R11 K55 ["map"]
      144 CALL                             R22 2 1
      145 SETTABLEKS                       R22 R21 K52 ["PaddingLeft"]
      147 CALL                             R19 2 1
      148 SETTABLEKS                       R19 R18 K48 ["ShiftPadding"]
      150 GETUPVAL                         R19 7
      151 GETUPVAL                         R20 0
      152 GETTABLEKS                       R20 R20 K56 ["Icon"]
      154 DUPTABLE                         R21 K60 [{"name", "variant", "size", "style"}]
      155 GETTABLEKS                       R23 R0 K62 ["actionIcon"]
      157 ORK                              R22 R23 K61 ["chevron-large-right"]
      158 SETTABLEKS                       R22 R21 K57 ["name"]
      160 GETUPVAL                         R22 0
      161 GETTABLEKS                       R22 R22 K63 ["Enums"]
      163 GETTABLEKS                       R22 R22 K64 ["IconVariant"]
      165 GETTABLEKS                       R22 R22 K65 ["Filled"]
      167 SETTABLEKS                       R22 R21 K58 ["variant"]
      169 JUMPIFEQKS                       R3 K37 ["xsmall"] ; [+3]
      171 JUMPIFNOTEQKS                    R3 K6 ["small"] ; [+9]
      173 GETUPVAL                         R22 0
      174 GETTABLEKS                       R22 R22 K63 ["Enums"]
      176 GETTABLEKS                       R22 R22 K66 ["IconSize"]
      178 GETTABLEKS                       R22 R22 K67 ["Small"]
      180 JUMP                             ; [+17]
      181 JUMPIFNOTEQKS                    R3 K39 ["xlarge"] ; [+9]
      183 GETUPVAL                         R22 0
      184 GETTABLEKS                       R22 R22 K63 ["Enums"]
      186 GETTABLEKS                       R22 R22 K66 ["IconSize"]
      188 GETTABLEKS                       R22 R22 K68 ["Large"]
      190 JUMP                             ; [+7]
      191 GETUPVAL                         R22 0
      192 GETTABLEKS                       R22 R22 K63 ["Enums"]
      194 GETTABLEKS                       R22 R22 K66 ["IconSize"]
      196 GETTABLEKS                       R22 R22 K69 ["Medium"]
      198 SETTABLEKS                       R22 R21 K3 ["size"]
      200 GETTABLEKS                       R22 R1 K70 ["Color"]
      202 GETTABLEKS                       R22 R22 K71 ["Content"]
      204 GETTABLEKS                       R22 R22 K72 ["Emphasis"]
      206 SETTABLEKS                       R22 R21 K59 ["style"]
      208 CALL                             R19 2 1
      209 SETTABLEKS                       R19 R18 K49 ["Chevron"]
      211 CALL                             R15 3 1
      212 SETTABLEKS                       R15 R13 K73 ["Action"]
      214 DUPTABLE                         R14 K75 [{"TitleRow"}]
      215 GETUPVAL                         R15 7
      216 GETUPVAL                         R16 0
      217 GETTABLEKS                       R16 R16 K42 ["View"]
      219 DUPTABLE                         R17 K77 [{["LayoutOrder"] = 1, ["AutomaticSize"], ["Size"], ["layout"]}]
      220 GETIMPORT                        R18 K79 [Enum.AutomaticSize.Y]
      222 SETTABLEKS                       R18 R17 K19 ["AutomaticSize"]
      224 GETIMPORT                        R18 K81 [UDim2.new]
      226 LOADN                            R19 1
      227 LOADN                            R20 0
      228 LOADN                            R21 0
      229 LOADN                            R22 0
      230 CALL                             R18 4 1
      231 SETTABLEKS                       R18 R17 K20 ["Size"]
      233 DUPTABLE                         R18 K87 [{"FillDirection", "VerticalAlignment", "HorizontalAlignment", "SortOrder", "Padding"}]
      234 GETIMPORT                        R19 K89 [Enum.FillDirection.Horizontal]
      236 SETTABLEKS                       R19 R18 K82 ["FillDirection"]
      238 GETIMPORT                        R19 K91 [Enum.VerticalAlignment.Center]
      240 SETTABLEKS                       R19 R18 K83 ["VerticalAlignment"]
      242 GETIMPORT                        R19 K93 [Enum.HorizontalAlignment.Left]
      244 SETTABLEKS                       R19 R18 K84 ["HorizontalAlignment"]
      246 GETIMPORT                        R19 K94 [Enum.SortOrder.LayoutOrder]
      248 SETTABLEKS                       R19 R18 K85 ["SortOrder"]
      250 GETIMPORT                        R19 K96 [UDim.new]
      252 LOADN                            R20 0
      253 JUMPIFEQKS                       R3 K37 ["xsmall"] ; [+3]
      255 JUMPIFNOTEQKS                    R3 K39 ["xlarge"] ; [+6]
      257 GETTABLEKS                       R21 R1 K97 ["Gap"]
      259 GETTABLEKS                       R21 R21 K98 ["XXSmall"]
      261 JUMP                             ; [+4]
      262 GETTABLEKS                       R21 R1 K97 ["Gap"]
      264 GETTABLEKS                       R21 R21 K99 ["None"]
      266 CALL                             R19 2 1
      267 SETTABLEKS                       R19 R18 K86 ["Padding"]
      269 SETTABLEKS                       R18 R17 K76 ["layout"]
      271 MOVE                             R18 R13
      272 CALL                             R15 3 1
      273 SETTABLEKS                       R15 R14 K74 ["TitleRow"]
      275 GETTABLEKS                       R15 R0 K100 ["description"]
      277 JUMPIFEQKNIL                     R15 ; [+54]
      279 GETUPVAL                         R15 7
      280 GETUPVAL                         R16 0
      281 GETTABLEKS                       R16 R16 K16 ["Text"]
      283 DUPTABLE                         R17 K101 [{["Text"], ["LayoutOrder"] = 2, ["Size"], ["AutomaticSize"], ["TextWrapped"] = False, ["TextTruncate"], ["tag"]}]
      284 GETTABLEKS                       R18 R0 K100 ["description"]
      286 SETTABLEKS                       R18 R17 K16 ["Text"]
      288 GETIMPORT                        R18 K32 [UDim2.fromOffset]
      290 LOADN                            R19 0
      291 LOADN                            R20 0
      292 CALL                             R18 2 1
      293 SETTABLEKS                       R18 R17 K20 ["Size"]
      295 GETIMPORT                        R18 K29 [Enum.AutomaticSize.XY]
      297 SETTABLEKS                       R18 R17 K19 ["AutomaticSize"]
      299 GETIMPORT                        R18 K34 [Enum.TextTruncate.AtEnd]
      301 SETTABLEKS                       R18 R17 K23 ["TextTruncate"]
      303 LOADK                            R19 K102 ["%* content-default text-align-x-left text-no-wrap text-truncate-end"]
      304 MOVE                             R21 R5
      305 NAMECALL                         R19 R19 K36 ["format"]
      307 CALL                             R19 2 1
      308 MOVE                             R18 R19
      309 SETTABLEKS                       R18 R17 K24 ["tag"]
      311 DUPTABLE                         R18 K104 [{"MaxWidth"}]
      312 GETUPVAL                         R19 7
      313 LOADK                            R20 K105 ["UISizeConstraint"]
      314 DUPTABLE                         R21 K107 [{"MaxSize"}]
      315 GETIMPORT                        R22 K109 [Vector2.new]
      317 GETTABLEKS                       R24 R1 K20 ["Size"]
      319 GETTABLEKS                       R24 R24 K40 ["Size_1000"]
      321 MULK                             R23 R24 K110 [20]
      322 LOADK                            R24 K111 [∞]
      323 CALL                             R22 2 1
      324 SETTABLEKS                       R22 R21 K106 ["MaxSize"]
      326 CALL                             R19 2 1
      327 SETTABLEKS                       R19 R18 K103 ["MaxWidth"]
      329 CALL                             R15 3 1
      330 SETTABLEKS                       R15 R14 K112 ["Description"]
      332 GETUPVAL                         R15 7
      333 GETUPVAL                         R16 0
      334 GETTABLEKS                       R16 R16 K42 ["View"]
      336 DUPTABLE                         R17 K118 [{["testId"] = "--appkit-section-heading", ["LayoutOrder"], ["Size"], ["AutomaticSize"], ["GroupTransparency"], ["onActivated"], ["onStateChanged"], ["stateLayer"], ["layout"]}]
      337 GETTABLEKS                       R18 R0 K17 ["LayoutOrder"]
      339 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      341 GETIMPORT                        R18 K81 [UDim2.new]
      343 LOADN                            R19 1
      344 LOADN                            R20 0
      345 LOADN                            R21 0
      346 LOADN                            R22 0
      347 CALL                             R18 4 1
      348 SETTABLEKS                       R18 R17 K20 ["Size"]
      350 GETIMPORT                        R18 K79 [Enum.AutomaticSize.Y]
      352 SETTABLEKS                       R18 R17 K19 ["AutomaticSize"]
      354 JUMPIFNOT                        R7 ; [+2]
      355 LOADK                            R18 K119 [0.5]
      356 JUMP                             ; [+1]
      357 LOADNIL                          R18
      358 SETTABLEKS                       R18 R17 K114 ["GroupTransparency"]
      360 JUMPIFNOT                        R8 ; [+3]
      361 GETTABLEKS                       R18 R0 K8 ["onAction"]
      363 JUMP                             ; [+1]
      364 LOADNIL                          R18
      365 SETTABLEKS                       R18 R17 K115 ["onActivated"]
      367 JUMPIFNOT                        R8 ; [+2]
      368 MOVE                             R18 R12
      369 JUMP                             ; [+1]
      370 LOADNIL                          R18
      371 SETTABLEKS                       R18 R17 K116 ["onStateChanged"]
      373 JUMPIFNOT                        R8 ; [+11]
      374 DUPTABLE                         R18 K121 [{"affordance"}]
      375 GETUPVAL                         R19 0
      376 GETTABLEKS                       R19 R19 K63 ["Enums"]
      378 GETTABLEKS                       R19 R19 K122 ["StateLayerAffordance"]
      380 GETTABLEKS                       R19 R19 K99 ["None"]
      382 SETTABLEKS                       R19 R18 K120 ["affordance"]
      384 JUMP                             ; [+1]
      385 LOADNIL                          R18
      386 SETTABLEKS                       R18 R17 K117 ["stateLayer"]
      388 DUPTABLE                         R18 K123 [{"FillDirection", "SortOrder", "Padding"}]
      389 GETIMPORT                        R19 K125 [Enum.FillDirection.Vertical]
      391 SETTABLEKS                       R19 R18 K82 ["FillDirection"]
      393 GETIMPORT                        R19 K94 [Enum.SortOrder.LayoutOrder]
      395 SETTABLEKS                       R19 R18 K85 ["SortOrder"]
      397 GETIMPORT                        R19 K96 [UDim.new]
      399 LOADN                            R20 0
      400 JUMPIFEQKS                       R3 K37 ["xsmall"] ; [+3]
      402 JUMPIFNOTEQKS                    R3 K6 ["small"] ; [+6]
      404 GETTABLEKS                       R21 R1 K97 ["Gap"]
      406 GETTABLEKS                       R21 R21 K99 ["None"]
      408 JUMP                             ; [+11]
      409 JUMPIFNOTEQKS                    R3 K39 ["xlarge"] ; [+6]
      411 GETTABLEKS                       R21 R1 K97 ["Gap"]
      413 GETTABLEKS                       R21 R21 K126 ["XSmall"]
      415 JUMP                             ; [+4]
      416 GETTABLEKS                       R21 R1 K97 ["Gap"]
      418 GETTABLEKS                       R21 R21 K98 ["XXSmall"]
      420 CALL                             R19 2 1
      421 SETTABLEKS                       R19 R18 K86 ["Padding"]
      423 SETTABLEKS                       R18 R17 K76 ["layout"]
      425 MOVE                             R18 R14
      426 CALL                             R15 3 -1
      427 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["AppFramework.SectionHeading must run inside the DesignAssist plugin tree"]
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
       30 GETTABLEKS                       R4 R0 K9 ["Packages"]
       32 GETTABLEKS                       R4 R4 K12 ["Motion"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K8 [require]
       37 GETIMPORT                        R5 K1 [script]
       39 GETTABLEKS                       R5 R5 K13 ["Parent"]
       41 GETTABLEKS                       R5 R5 K14 ["Hooks"]
       43 CALL                             R4 1 1
       44 GETTABLEKS                       R5 R1 K15 ["createElement"]
       46 GETIMPORT                        R6 K19 [Enum.EasingStyle.Sine]
       48 DUPCLOSURE                       R7 K20 [PROTO_0]
       49 DUPTABLE                         R8 K31 [{["xsmall"] = "text-title-large", ["small"] = "text-heading-small", ["medium"] = "text-heading-medium", ["large"] = "text-heading-large", ["xlarge"] = "text-display-small"}]
       50 DUPTABLE                         R9 K34 [{["xsmall"] = "text-body-medium", ["small"] = "text-body-medium", ["medium"] = "text-body-medium", ["large"] = "text-body-large", ["xlarge"] = "text-body-large"}]
       51 DUPCLOSURE                       R10 K35 [PROTO_1]
       52 DUPCLOSURE                       R11 K36 [PROTO_2]
       53 DUPCLOSURE                       R12 K37 [PROTO_3]
       54 DUPCLOSURE                       R13 K38 [PROTO_4]
       55 CAPTURE                          VAL R2
       56 DUPCLOSURE                       R14 K39 [PROTO_7]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R8
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R3
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R6
       64 CAPTURE                          VAL R5
       65 RETURN                           R14 1
