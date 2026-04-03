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
       90 GETUPVAL                         R14 6
       91 GETTABLEKS                       R15 R0 K26 ["id"]
       93 CALL                             R14 1 1
       94 SETTABLEKS                       R14 R13 K24 ["Image"]
       96 LOADK                            R14 K27 ["size-1000-1000 anchor-center-center position-center-center radius-medium"]
       97 SETTABLEKS                       R14 R13 K10 ["tag"]
       99 CALL                             R11 2 1
      100 SETLIST                          R10 R11 1 [1]
      102 GETUPVAL                         R13 2
      103 GETTABLEKS                       R12 R13 K9 ["createElement"]
      105 GETUPVAL                         R13 4
      106 DUPTABLE                         R14 K28 [{"tag", "LayoutOrder"}]
      107 LOADK                            R15 K29 ["col grow auto-y gap-xsmall"]
      108 SETTABLEKS                       R15 R14 K10 ["tag"]
      110 LOADN                            R15 2
      111 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      113 DUPTABLE                         R15 K33 [{"Name", "CreatorRow", "PriceContainer"}]
      114 GETUPVAL                         R17 2
      115 GETTABLEKS                       R16 R17 K9 ["createElement"]
      117 GETUPVAL                         R17 7
      118 DUPTABLE                         R18 K35 [{"Text", "tag", "LayoutOrder"}]
      119 GETTABLEKS                       R19 R0 K36 ["name"]
      121 SETTABLEKS                       R19 R18 K34 ["Text"]
      123 LOADK                            R19 K37 ["text-label-medium auto-xy content-emphasis"]
      124 SETTABLEKS                       R19 R18 K10 ["tag"]
      126 LOADN                            R19 1
      127 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      129 CALL                             R16 2 1
      130 SETTABLEKS                       R16 R15 K30 ["Name"]
      132 GETUPVAL                         R17 2
      133 GETTABLEKS                       R16 R17 K9 ["createElement"]
      135 GETUPVAL                         R17 4
      136 DUPTABLE                         R18 K28 [{"tag", "LayoutOrder"}]
      137 LOADK                            R19 K38 ["row gap-xsmall align-y-center auto-xy"]
      138 SETTABLEKS                       R19 R18 K10 ["tag"]
      140 LOADN                            R19 2
      141 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      143 DUPTABLE                         R19 K41 [{"CreatorText", "VerifiedIcon"}]
      144 GETUPVAL                         R21 2
      145 GETTABLEKS                       R20 R21 K9 ["createElement"]
      147 GETUPVAL                         R21 7
      148 DUPTABLE                         R22 K35 [{"Text", "tag", "LayoutOrder"}]
      149 GETTABLEKS                       R23 R0 K42 ["creator"]
      151 SETTABLEKS                       R23 R22 K34 ["Text"]
      153 LOADK                            R23 K43 ["text-label-medium auto-xy content-default"]
      154 SETTABLEKS                       R23 R22 K10 ["tag"]
      156 LOADN                            R23 1
      157 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      159 CALL                             R20 2 1
      160 SETTABLEKS                       R20 R19 K39 ["CreatorText"]
      162 GETTABLEKS                       R20 R0 K44 ["creatorHasVerifiedBadge"]
      164 JUMPIFNOT                        R20 ; [+38]
      165 GETUPVAL                         R21 2
      166 GETTABLEKS                       R20 R21 K9 ["createElement"]
      168 GETUPVAL                         R22 8
      169 GETTABLEKS                       R21 R22 K45 ["Icon"]
      171 DUPTABLE                         R22 K48 [{"name", "size", "variant", "LayoutOrder"}]
      172 GETUPVAL                         R26 8
      173 GETTABLEKS                       R25 R26 K49 ["Enums"]
      175 GETTABLEKS                       R24 R25 K50 ["IconName"]
      177 GETTABLEKS                       R23 R24 K51 ["VerifiedMono"]
      179 SETTABLEKS                       R23 R22 K36 ["name"]
      181 GETUPVAL                         R26 8
      182 GETTABLEKS                       R25 R26 K49 ["Enums"]
      184 GETTABLEKS                       R24 R25 K52 ["IconSize"]
      186 GETTABLEKS                       R23 R24 K53 ["XSmall"]
      188 SETTABLEKS                       R23 R22 K46 ["size"]
      190 GETUPVAL                         R26 8
      191 GETTABLEKS                       R25 R26 K49 ["Enums"]
      193 GETTABLEKS                       R24 R25 K54 ["IconVariant"]
      195 GETTABLEKS                       R23 R24 K55 ["Filled"]
      197 SETTABLEKS                       R23 R22 K47 ["variant"]
      199 LOADN                            R23 2
      200 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      202 CALL                             R20 2 1
      203 SETTABLEKS                       R20 R19 K40 ["VerifiedIcon"]
      205 CALL                             R16 3 1
      206 SETTABLEKS                       R16 R15 K31 ["CreatorRow"]
      208 GETUPVAL                         R17 2
      209 GETTABLEKS                       R16 R17 K9 ["createElement"]
      211 GETUPVAL                         R17 4
      212 DUPTABLE                         R18 K28 [{"tag", "LayoutOrder"}]
      213 LOADK                            R19 K38 ["row gap-xsmall align-y-center auto-xy"]
      214 SETTABLEKS                       R19 R18 K10 ["tag"]
      216 LOADN                            R19 3
      217 SETTABLEKS                       R19 R18 K13 ["LayoutOrder"]
      219 DUPTABLE                         R19 K58 [{"RobuxIcon", "Price"}]
      220 GETUPVAL                         R21 2
      221 GETTABLEKS                       R20 R21 K9 ["createElement"]
      223 GETUPVAL                         R21 5
      224 DUPTABLE                         R22 K61 [{"Image", "Size", "imageStyle", "ImageColor3", "LayoutOrder"}]
      225 LOADK                            R23 K62 ["rbxasset://textures/ui/common/robux_small.png"]
      226 SETTABLEKS                       R23 R22 K24 ["Image"]
      228 GETIMPORT                        R23 K64 [UDim2.fromOffset]
      230 LOADN                            R24 16
      231 LOADN                            R25 16
      232 CALL                             R23 2 1
      233 SETTABLEKS                       R23 R22 K11 ["Size"]
      235 SETTABLEKS                       R5 R22 K59 ["imageStyle"]
      237 SETTABLEKS                       R6 R22 K60 ["ImageColor3"]
      239 LOADN                            R23 1
      240 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      242 CALL                             R20 2 1
      243 SETTABLEKS                       R20 R19 K56 ["RobuxIcon"]
      245 GETUPVAL                         R21 2
      246 GETTABLEKS                       R20 R21 K9 ["createElement"]
      248 GETUPVAL                         R21 7
      249 DUPTABLE                         R22 K35 [{"Text", "tag", "LayoutOrder"}]
      250 GETTABLEKS                       R24 R0 K65 ["price"]
      252 FASTCALL1                        TOSTRING R24 ; [+2]
      253 GETIMPORT                        R23 K67 [tostring]
      255 CALL                             R23 1 1
      256 SETTABLEKS                       R23 R22 K34 ["Text"]
      258 LOADK                            R23 K43 ["text-label-medium auto-xy content-default"]
      259 SETTABLEKS                       R23 R22 K10 ["tag"]
      261 LOADN                            R23 2
      262 SETTABLEKS                       R23 R22 K13 ["LayoutOrder"]
      264 CALL                             R20 2 1
      265 SETTABLEKS                       R20 R19 K57 ["Price"]
      267 CALL                             R16 3 1
      268 SETTABLEKS                       R16 R15 K32 ["PriceContainer"]
      270 CALL                             R12 3 1
      271 SETTABLEKS                       R12 R10 K68 ["Details"]
      273 GETUPVAL                         R13 2
      274 GETTABLEKS                       R12 R13 K9 ["createElement"]
      276 GETUPVAL                         R13 4
      277 DUPTABLE                         R14 K28 [{"tag", "LayoutOrder"}]
      278 LOADK                            R15 K69 ["auto-xy padding-left-medium"]
      279 SETTABLEKS                       R15 R14 K10 ["tag"]
      281 LOADN                            R15 3
      282 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      284 DUPTABLE                         R15 K71 [{"Checkbox"}]
      285 GETUPVAL                         R17 2
      286 GETTABLEKS                       R16 R17 K9 ["createElement"]
      288 GETUPVAL                         R17 9
      289 DUPTABLE                         R18 K76 [{"isChecked", "isDisabled", "label", "onActivated", "size"}]
      290 SETTABLEKS                       R3 R18 K72 ["isChecked"]
      292 SETTABLEKS                       R2 R18 K73 ["isDisabled"]
      294 LOADK                            R19 K77 [""]
      295 SETTABLEKS                       R19 R18 K74 ["label"]
      297 SETTABLEKS                       R4 R18 K75 ["onActivated"]
      299 LOADK                            R19 K78 ["Small"]
      300 SETTABLEKS                       R19 R18 K46 ["size"]
      302 CALL                             R16 2 1
      303 SETTABLEKS                       R16 R15 K70 ["Checkbox"]
      305 CALL                             R12 3 1
      306 SETTABLEKS                       R12 R10 K79 ["CheckboxContainer"]
      308 CALL                             R7 3 -1
      309 RETURN                           R7 -1

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
       49 GETTABLEKS                       R10 R11 K16 ["Util"]
       51 GETTABLEKS                       R9 R10 K17 ["getAssetThumbnail"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R2 K18 ["Image"]
       56 GETIMPORT                        R10 K5 [require]
       58 GETTABLEKS                       R12 R0 K12 ["Src"]
       60 GETTABLEKS                       R11 R12 K19 ["Types"]
       62 CALL                             R10 1 1
       63 GETTABLEKS                       R12 R2 K20 ["Hooks"]
       65 GETTABLEKS                       R11 R12 K21 ["useTokens"]
       67 DUPCLOSURE                       R12 K22 [PROTO_1]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R1
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R3
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R4
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R5
       78 RETURN                           R12 1
