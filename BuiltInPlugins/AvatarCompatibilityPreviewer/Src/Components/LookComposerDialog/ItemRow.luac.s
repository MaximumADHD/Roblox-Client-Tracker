PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+9]
        2 JUMPIFNOT                        R0 ; [+2]
        3 LOADK                            R1 K0 ["Selected"]
        4 JUMP                             ; [+1]
        5 LOADK                            R1 K1 ["Deselected"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R2 R3 K2 ["onRowStateChanged"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 CALL                             R1 0 1
        7 GETTABLEKS                       R3 R0 K0 ["rowState"]
        9 JUMPIFEQKS                       R3 K1 ["Disabled"] ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 GETTABLEKS                       R4 R0 K0 ["rowState"]
       15 JUMPIFEQKS                       R4 K2 ["Selected"] ; [+2]
       17 LOADB                            R3 0 +1
       18 LOADB                            R3 1
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R4 R5 K3 ["useCallback"]
       22 NEWCLOSURE                       R5 P0
       23 CAPTURE                          VAL R2
       24 CAPTURE                          VAL R0
       25 NEWTABLE                         R6 0 2
       27 MOVE                             R7 R2
       28 GETTABLEKS                       R8 R0 K4 ["onRowStateChanged"]
       30 SETLIST                          R6 R7 2 [1]
       32 CALL                             R4 2 1
       33 LOADNIL                          R5
       34 GETTABLEKS                       R9 R1 K5 ["Color"]
       36 GETTABLEKS                       R8 R9 K6 ["Content"]
       38 GETTABLEKS                       R7 R8 K7 ["Emphasis"]
       40 GETTABLEKS                       R6 R7 K8 ["Color3"]
       42 GETUPVAL                         R7 3
       43 CALL                             R7 0 1
       44 JUMPIFNOT                        R7 ; [+7]
       45 GETTABLEKS                       R8 R1 K5 ["Color"]
       47 GETTABLEKS                       R7 R8 K6 ["Content"]
       49 GETTABLEKS                       R5 R7 K7 ["Emphasis"]
       51 LOADNIL                          R6
       52 GETUPVAL                         R8 2
       53 GETTABLEKS                       R7 R8 K9 ["createElement"]
       55 GETUPVAL                         R8 4
       56 DUPTABLE                         R9 K15 [{"tag", "Size", "AutomaticSize", "LayoutOrder", "GroupTransparency"}]
       57 LOADK                            R10 K16 ["row gap-medium align-y-top padding-y-small"]
       58 SETTABLEKS                       R10 R9 K10 ["tag"]
       60 GETIMPORT                        R10 K19 [UDim2.new]
       62 LOADN                            R11 1
       63 LOADN                            R12 0
       64 LOADN                            R13 0
       65 LOADN                            R14 0
       66 CALL                             R10 4 1
       67 SETTABLEKS                       R10 R9 K11 ["Size"]
       69 GETIMPORT                        R10 K22 [Enum.AutomaticSize.Y]
       71 SETTABLEKS                       R10 R9 K12 ["AutomaticSize"]
       73 GETTABLEKS                       R10 R0 K13 ["LayoutOrder"]
       75 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       77 JUMPIFNOT                        R2 ; [+2]
       78 LOADK                            R10 K23 [0.5]
       79 JUMP                             ; [+1]
       80 LOADN                            R10 0
       81 SETTABLEKS                       R10 R9 K14 ["GroupTransparency"]
       83 NEWTABLE                         R10 2 1
       85 GETUPVAL                         R12 2
       86 GETTABLEKS                       R11 R12 K9 ["createElement"]
       88 GETUPVAL                         R12 5
       89 DUPTABLE                         R13 K25 [{"Image", "tag"}]
       90 GETUPVAL                         R15 6
       91 CALL                             R15 0 1
       92 JUMPIFNOT                        R15 ; [+9]
       93 GETTABLEKS                       R15 R0 K26 ["rowType"]
       95 JUMPIFNOTEQKS                    R15 K27 ["Bundle"] ; [+6]
       97 GETUPVAL                         R14 7
       98 GETTABLEKS                       R15 R0 K28 ["id"]
      100 CALL                             R14 1 1
      101 JUMP                             ; [+4]
      102 GETUPVAL                         R14 8
      103 GETTABLEKS                       R15 R0 K28 ["id"]
      105 CALL                             R14 1 1
      106 SETTABLEKS                       R14 R13 K24 ["Image"]
      108 LOADK                            R14 K29 ["size-1000-1000 anchor-center-center position-center-center radius-medium"]
      109 SETTABLEKS                       R14 R13 K10 ["tag"]
      111 CALL                             R11 2 1
      112 SETLIST                          R10 R11 1 [1]
      114 GETUPVAL                         R13 2
      115 GETTABLEKS                       R12 R13 K9 ["createElement"]
      117 GETUPVAL                         R13 4
      118 DUPTABLE                         R14 K30 [{"tag", "LayoutOrder"}]
      119 LOADK                            R15 K31 ["col grow auto-y gap-xsmall"]
      120 SETTABLEKS                       R15 R14 K10 ["tag"]
      122 LOADN                            R15 2
      123 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      125 DUPTABLE                         R15 K35 [{"Name", "CreatorRow", "PriceContainer"}]
      126 GETUPVAL                         R17 2
      127 GETTABLEKS                       R16 R17 K9 ["createElement"]
      129 GETUPVAL                         R17 9
      130 DUPTABLE                         R18 K37 [{"Text", "tag", "LayoutOrder"}]
      131 GETTABLEKS                       R19 R0 K38 ["name"]
      133 SETTABLEKS                       R19 R18 K36 ["Text"]
      135 LOADK                            R19 K39 ["text-label-medium auto-xy content-emphasis"]
      136 SETTABLEKS                       R19 R18 K10 ["tag"]
      138 LOADN                            R19 1
      139 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      141 CALL                             R16 2 1
      142 SETTABLEKS                       R16 R15 K32 ["Name"]
      144 GETUPVAL                         R17 2
      145 GETTABLEKS                       R16 R17 K9 ["createElement"]
      147 GETUPVAL                         R17 4
      148 DUPTABLE                         R18 K30 [{"tag", "LayoutOrder"}]
      149 LOADK                            R19 K40 ["row gap-xsmall align-y-center auto-xy"]
      150 SETTABLEKS                       R19 R18 K10 ["tag"]
      152 LOADN                            R19 2
      153 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      155 DUPTABLE                         R19 K43 [{"CreatorText", "VerifiedIcon"}]
      156 GETUPVAL                         R21 2
      157 GETTABLEKS                       R20 R21 K9 ["createElement"]
      159 GETUPVAL                         R21 9
      160 DUPTABLE                         R22 K37 [{"Text", "tag", "LayoutOrder"}]
      161 GETTABLEKS                       R23 R0 K44 ["creator"]
      163 SETTABLEKS                       R23 R22 K36 ["Text"]
      165 LOADK                            R23 K45 ["text-label-medium auto-xy content-default"]
      166 SETTABLEKS                       R23 R22 K10 ["tag"]
      168 LOADN                            R23 1
      169 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      171 CALL                             R20 2 1
      172 SETTABLEKS                       R20 R19 K41 ["CreatorText"]
      174 GETTABLEKS                       R20 R0 K46 ["creatorHasVerifiedBadge"]
      176 JUMPIFNOT                        R20 ; [+38]
      177 GETUPVAL                         R21 2
      178 GETTABLEKS                       R20 R21 K9 ["createElement"]
      180 GETUPVAL                         R22 10
      181 GETTABLEKS                       R21 R22 K47 ["Icon"]
      183 DUPTABLE                         R22 K50 [{"name", "size", "variant", "LayoutOrder"}]
      184 GETUPVAL                         R26 10
      185 GETTABLEKS                       R25 R26 K51 ["Enums"]
      187 GETTABLEKS                       R24 R25 K52 ["IconName"]
      189 GETTABLEKS                       R23 R24 K53 ["VerifiedMono"]
      191 SETTABLEKS                       R23 R22 K38 ["name"]
      193 GETUPVAL                         R26 10
      194 GETTABLEKS                       R25 R26 K51 ["Enums"]
      196 GETTABLEKS                       R24 R25 K54 ["IconSize"]
      198 GETTABLEKS                       R23 R24 K55 ["XSmall"]
      200 SETTABLEKS                       R23 R22 K48 ["size"]
      202 GETUPVAL                         R26 10
      203 GETTABLEKS                       R25 R26 K51 ["Enums"]
      205 GETTABLEKS                       R24 R25 K56 ["IconVariant"]
      207 GETTABLEKS                       R23 R24 K57 ["Filled"]
      209 SETTABLEKS                       R23 R22 K49 ["variant"]
      211 LOADN                            R23 2
      212 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      214 CALL                             R20 2 1
      215 SETTABLEKS                       R20 R19 K42 ["VerifiedIcon"]
      217 CALL                             R16 3 1
      218 SETTABLEKS                       R16 R15 K33 ["CreatorRow"]
      220 GETUPVAL                         R17 2
      221 GETTABLEKS                       R16 R17 K9 ["createElement"]
      223 GETUPVAL                         R17 4
      224 DUPTABLE                         R18 K30 [{"tag", "LayoutOrder"}]
      225 LOADK                            R19 K40 ["row gap-xsmall align-y-center auto-xy"]
      226 SETTABLEKS                       R19 R18 K10 ["tag"]
      228 LOADN                            R19 3
      229 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      231 DUPTABLE                         R19 K60 [{"RobuxIcon", "Price"}]
      232 GETUPVAL                         R21 2
      233 GETTABLEKS                       R20 R21 K9 ["createElement"]
      235 GETUPVAL                         R21 5
      236 DUPTABLE                         R22 K63 [{"Image", "Size", "imageStyle", "ImageColor3", "LayoutOrder"}]
      237 LOADK                            R23 K64 ["rbxasset://textures/ui/common/robux_small.png"]
      238 SETTABLEKS                       R23 R22 K24 ["Image"]
      240 GETIMPORT                        R23 K66 [UDim2.fromOffset]
      242 LOADN                            R24 16
      243 LOADN                            R25 16
      244 CALL                             R23 2 1
      245 SETTABLEKS                       R23 R22 K11 ["Size"]
      247 SETTABLEKS                       R5 R22 K61 ["imageStyle"]
      249 SETTABLEKS                       R6 R22 K62 ["ImageColor3"]
      251 LOADN                            R23 1
      252 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      254 CALL                             R20 2 1
      255 SETTABLEKS                       R20 R19 K58 ["RobuxIcon"]
      257 GETUPVAL                         R21 2
      258 GETTABLEKS                       R20 R21 K9 ["createElement"]
      260 GETUPVAL                         R21 9
      261 DUPTABLE                         R22 K37 [{"Text", "tag", "LayoutOrder"}]
      262 GETTABLEKS                       R24 R0 K67 ["price"]
      264 FASTCALL1                        TOSTRING R24 ; [+2]
      265 GETIMPORT                        R23 K69 [tostring]
      267 CALL                             R23 1 1
      268 SETTABLEKS                       R23 R22 K36 ["Text"]
      270 LOADK                            R23 K45 ["text-label-medium auto-xy content-default"]
      271 SETTABLEKS                       R23 R22 K10 ["tag"]
      273 LOADN                            R23 2
      274 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      276 CALL                             R20 2 1
      277 SETTABLEKS                       R20 R19 K59 ["Price"]
      279 CALL                             R16 3 1
      280 SETTABLEKS                       R16 R15 K34 ["PriceContainer"]
      282 CALL                             R12 3 1
      283 SETTABLEKS                       R12 R10 K70 ["Details"]
      285 GETUPVAL                         R13 2
      286 GETTABLEKS                       R12 R13 K9 ["createElement"]
      288 GETUPVAL                         R13 4
      289 DUPTABLE                         R14 K30 [{"tag", "LayoutOrder"}]
      290 LOADK                            R15 K71 ["auto-xy padding-left-medium"]
      291 SETTABLEKS                       R15 R14 K10 ["tag"]
      293 LOADN                            R15 3
      294 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      296 DUPTABLE                         R15 K73 [{"Checkbox"}]
      297 GETUPVAL                         R17 2
      298 GETTABLEKS                       R16 R17 K9 ["createElement"]
      300 GETUPVAL                         R17 11
      301 DUPTABLE                         R18 K78 [{"isChecked", "isDisabled", "label", "onActivated", "size"}]
      302 SETTABLEKS                       R3 R18 K74 ["isChecked"]
      304 SETTABLEKS                       R2 R18 K75 ["isDisabled"]
      306 LOADK                            R19 K79 [""]
      307 SETTABLEKS                       R19 R18 K76 ["label"]
      309 SETTABLEKS                       R4 R18 K77 ["onActivated"]
      311 LOADK                            R19 K80 ["Small"]
      312 SETTABLEKS                       R19 R18 K48 ["size"]
      314 CALL                             R16 2 1
      315 SETTABLEKS                       R16 R15 K72 ["Checkbox"]
      317 CALL                             R12 3 1
      318 SETTABLEKS                       R12 R10 K81 ["CheckboxContainer"]
      320 CALL                             R7 3 -1
      321 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["View"]
       23 GETTABLEKS                       R4 R2 K10 ["Text"]
       25 GETTABLEKS                       R5 R2 K11 ["Checkbox"]
       27 GETIMPORT                        R6 K5 [require]
       29 GETTABLEKS                       R9 R0 K12 ["Src"]
       31 GETTABLEKS                       R8 R9 K13 ["Flags"]
       33 GETTABLEKS                       R7 R8 K14 ["getFFlagAvatarPreviewerLookComposer"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R10 R0 K12 ["Src"]
       40 GETTABLEKS                       R9 R10 K13 ["Flags"]
       42 GETTABLEKS                       R8 R9 K15 ["getFFlagAvatarPreviewerRobuxLightTheme"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K5 [require]
       47 GETTABLEKS                       R11 R0 K12 ["Src"]
       49 GETTABLEKS                       R10 R11 K13 ["Flags"]
       51 GETTABLEKS                       R9 R10 K16 ["getFFlagAvatarPreviewerAvatarLooksEnabled"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K5 [require]
       56 GETTABLEKS                       R12 R0 K12 ["Src"]
       58 GETTABLEKS                       R11 R12 K17 ["Util"]
       60 GETTABLEKS                       R10 R11 K18 ["getAssetThumbnail"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K5 [require]
       65 GETTABLEKS                       R13 R0 K12 ["Src"]
       67 GETTABLEKS                       R12 R13 K17 ["Util"]
       69 GETTABLEKS                       R11 R12 K19 ["getBundleThumbnail"]
       71 CALL                             R10 1 1
       72 GETTABLEKS                       R11 R2 K20 ["Image"]
       74 GETIMPORT                        R12 K5 [require]
       76 GETTABLEKS                       R14 R0 K12 ["Src"]
       78 GETTABLEKS                       R13 R14 K21 ["Types"]
       80 CALL                             R12 1 1
       81 GETTABLEKS                       R14 R2 K22 ["Hooks"]
       83 GETTABLEKS                       R13 R14 K23 ["useTokens"]
       85 DUPCLOSURE                       R14 K24 [PROTO_1]
       86 CAPTURE                          VAL R6
       87 CAPTURE                          VAL R13
       88 CAPTURE                          VAL R1
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R11
       92 CAPTURE                          VAL R8
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R4
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R5
       98 RETURN                           R14 1
