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
       33 GETUPVAL                         R6 2
       34 GETTABLEKS                       R5 R6 K5 ["createElement"]
       36 GETUPVAL                         R6 3
       37 DUPTABLE                         R7 K11 [{"tag", "Size", "AutomaticSize", "LayoutOrder", "GroupTransparency"}]
       38 LOADK                            R8 K12 ["row gap-medium align-y-top padding-y-small"]
       39 SETTABLEKS                       R8 R7 K6 ["tag"]
       41 GETIMPORT                        R8 K15 [UDim2.new]
       43 LOADN                            R9 1
       44 LOADN                            R10 0
       45 LOADN                            R11 0
       46 LOADN                            R12 0
       47 CALL                             R8 4 1
       48 SETTABLEKS                       R8 R7 K7 ["Size"]
       50 GETIMPORT                        R8 K18 [Enum.AutomaticSize.Y]
       52 SETTABLEKS                       R8 R7 K8 ["AutomaticSize"]
       54 GETTABLEKS                       R8 R0 K9 ["LayoutOrder"]
       56 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       58 JUMPIFNOT                        R2 ; [+2]
       59 LOADK                            R8 K19 [0.5]
       60 JUMP                             ; [+1]
       61 LOADN                            R8 0
       62 SETTABLEKS                       R8 R7 K10 ["GroupTransparency"]
       64 NEWTABLE                         R8 2 1
       66 GETUPVAL                         R10 2
       67 GETTABLEKS                       R9 R10 K5 ["createElement"]
       69 GETUPVAL                         R10 4
       70 DUPTABLE                         R11 K21 [{"Image", "tag"}]
       71 GETUPVAL                         R12 5
       72 GETTABLEKS                       R13 R0 K22 ["id"]
       74 CALL                             R12 1 1
       75 SETTABLEKS                       R12 R11 K20 ["Image"]
       77 LOADK                            R12 K23 ["size-1000-1000 anchor-center-center position-center-center radius-medium"]
       78 SETTABLEKS                       R12 R11 K6 ["tag"]
       80 CALL                             R9 2 1
       81 SETLIST                          R8 R9 1 [1]
       83 GETUPVAL                         R11 2
       84 GETTABLEKS                       R10 R11 K5 ["createElement"]
       86 GETUPVAL                         R11 3
       87 DUPTABLE                         R12 K24 [{"tag", "LayoutOrder"}]
       88 LOADK                            R13 K25 ["col grow auto-y gap-xsmall"]
       89 SETTABLEKS                       R13 R12 K6 ["tag"]
       91 LOADN                            R13 2
       92 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
       94 DUPTABLE                         R13 K29 [{"Name", "CreatorRow", "PriceContainer"}]
       95 GETUPVAL                         R15 2
       96 GETTABLEKS                       R14 R15 K5 ["createElement"]
       98 GETUPVAL                         R15 6
       99 DUPTABLE                         R16 K31 [{"Text", "tag", "LayoutOrder"}]
      100 GETTABLEKS                       R17 R0 K32 ["name"]
      102 SETTABLEKS                       R17 R16 K30 ["Text"]
      104 LOADK                            R17 K33 ["text-label-medium auto-xy content-emphasis"]
      105 SETTABLEKS                       R17 R16 K6 ["tag"]
      107 LOADN                            R17 1
      108 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      110 CALL                             R14 2 1
      111 SETTABLEKS                       R14 R13 K26 ["Name"]
      113 GETUPVAL                         R15 2
      114 GETTABLEKS                       R14 R15 K5 ["createElement"]
      116 GETUPVAL                         R15 3
      117 DUPTABLE                         R16 K24 [{"tag", "LayoutOrder"}]
      118 LOADK                            R17 K34 ["row gap-xsmall align-y-center auto-xy"]
      119 SETTABLEKS                       R17 R16 K6 ["tag"]
      121 LOADN                            R17 2
      122 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      124 DUPTABLE                         R17 K37 [{"CreatorText", "VerifiedIcon"}]
      125 GETUPVAL                         R19 2
      126 GETTABLEKS                       R18 R19 K5 ["createElement"]
      128 GETUPVAL                         R19 6
      129 DUPTABLE                         R20 K31 [{"Text", "tag", "LayoutOrder"}]
      130 GETTABLEKS                       R21 R0 K38 ["creator"]
      132 SETTABLEKS                       R21 R20 K30 ["Text"]
      134 LOADK                            R21 K39 ["text-label-medium auto-xy content-default"]
      135 SETTABLEKS                       R21 R20 K6 ["tag"]
      137 LOADN                            R21 1
      138 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      140 CALL                             R18 2 1
      141 SETTABLEKS                       R18 R17 K35 ["CreatorText"]
      143 GETTABLEKS                       R18 R0 K40 ["creatorHasVerifiedBadge"]
      145 JUMPIFNOT                        R18 ; [+38]
      146 GETUPVAL                         R19 2
      147 GETTABLEKS                       R18 R19 K5 ["createElement"]
      149 GETUPVAL                         R20 7
      150 GETTABLEKS                       R19 R20 K41 ["Icon"]
      152 DUPTABLE                         R20 K44 [{"name", "size", "variant", "LayoutOrder"}]
      153 GETUPVAL                         R24 7
      154 GETTABLEKS                       R23 R24 K45 ["Enums"]
      156 GETTABLEKS                       R22 R23 K46 ["IconName"]
      158 GETTABLEKS                       R21 R22 K47 ["VerifiedMono"]
      160 SETTABLEKS                       R21 R20 K32 ["name"]
      162 GETUPVAL                         R24 7
      163 GETTABLEKS                       R23 R24 K45 ["Enums"]
      165 GETTABLEKS                       R22 R23 K48 ["IconSize"]
      167 GETTABLEKS                       R21 R22 K49 ["XSmall"]
      169 SETTABLEKS                       R21 R20 K42 ["size"]
      171 GETUPVAL                         R24 7
      172 GETTABLEKS                       R23 R24 K45 ["Enums"]
      174 GETTABLEKS                       R22 R23 K50 ["IconVariant"]
      176 GETTABLEKS                       R21 R22 K51 ["Filled"]
      178 SETTABLEKS                       R21 R20 K43 ["variant"]
      180 LOADN                            R21 2
      181 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      183 CALL                             R18 2 1
      184 SETTABLEKS                       R18 R17 K36 ["VerifiedIcon"]
      186 CALL                             R14 3 1
      187 SETTABLEKS                       R14 R13 K27 ["CreatorRow"]
      189 GETUPVAL                         R15 2
      190 GETTABLEKS                       R14 R15 K5 ["createElement"]
      192 GETUPVAL                         R15 3
      193 DUPTABLE                         R16 K24 [{"tag", "LayoutOrder"}]
      194 LOADK                            R17 K34 ["row gap-xsmall align-y-center auto-xy"]
      195 SETTABLEKS                       R17 R16 K6 ["tag"]
      197 LOADN                            R17 3
      198 SETTABLEKS                       R17 R16 K9 ["LayoutOrder"]
      200 DUPTABLE                         R17 K54 [{"RobuxIcon", "Price"}]
      201 GETUPVAL                         R19 2
      202 GETTABLEKS                       R18 R19 K5 ["createElement"]
      204 GETUPVAL                         R20 7
      205 GETTABLEKS                       R19 R20 K20 ["Image"]
      207 DUPTABLE                         R20 K56 [{"Image", "Size", "ImageColor3", "LayoutOrder"}]
      208 LOADK                            R21 K57 ["rbxasset://textures/ui/common/robux_small.png"]
      209 SETTABLEKS                       R21 R20 K20 ["Image"]
      211 GETIMPORT                        R21 K59 [UDim2.fromOffset]
      213 LOADN                            R22 16
      214 LOADN                            R23 16
      215 CALL                             R21 2 1
      216 SETTABLEKS                       R21 R20 K7 ["Size"]
      218 GETTABLEKS                       R24 R1 K60 ["Color"]
      220 GETTABLEKS                       R23 R24 K61 ["Content"]
      222 GETTABLEKS                       R22 R23 K62 ["Emphasis"]
      224 GETTABLEKS                       R21 R22 K63 ["Color3"]
      226 SETTABLEKS                       R21 R20 K55 ["ImageColor3"]
      228 LOADN                            R21 1
      229 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      231 CALL                             R18 2 1
      232 SETTABLEKS                       R18 R17 K52 ["RobuxIcon"]
      234 GETUPVAL                         R19 2
      235 GETTABLEKS                       R18 R19 K5 ["createElement"]
      237 GETUPVAL                         R19 6
      238 DUPTABLE                         R20 K31 [{"Text", "tag", "LayoutOrder"}]
      239 GETTABLEKS                       R22 R0 K64 ["price"]
      241 FASTCALL1                        TOSTRING R22 ; [+2]
      242 GETIMPORT                        R21 K66 [tostring]
      244 CALL                             R21 1 1
      245 SETTABLEKS                       R21 R20 K30 ["Text"]
      247 LOADK                            R21 K39 ["text-label-medium auto-xy content-default"]
      248 SETTABLEKS                       R21 R20 K6 ["tag"]
      250 LOADN                            R21 2
      251 SETTABLEKS                       R21 R20 K9 ["LayoutOrder"]
      253 CALL                             R18 2 1
      254 SETTABLEKS                       R18 R17 K53 ["Price"]
      256 CALL                             R14 3 1
      257 SETTABLEKS                       R14 R13 K28 ["PriceContainer"]
      259 CALL                             R10 3 1
      260 SETTABLEKS                       R10 R8 K67 ["Details"]
      262 GETUPVAL                         R11 2
      263 GETTABLEKS                       R10 R11 K5 ["createElement"]
      265 GETUPVAL                         R11 3
      266 DUPTABLE                         R12 K24 [{"tag", "LayoutOrder"}]
      267 LOADK                            R13 K68 ["auto-xy padding-left-medium"]
      268 SETTABLEKS                       R13 R12 K6 ["tag"]
      270 LOADN                            R13 3
      271 SETTABLEKS                       R13 R12 K9 ["LayoutOrder"]
      273 DUPTABLE                         R13 K70 [{"Checkbox"}]
      274 GETUPVAL                         R15 2
      275 GETTABLEKS                       R14 R15 K5 ["createElement"]
      277 GETUPVAL                         R15 8
      278 DUPTABLE                         R16 K75 [{"isChecked", "isDisabled", "label", "onActivated", "size"}]
      279 SETTABLEKS                       R3 R16 K71 ["isChecked"]
      281 SETTABLEKS                       R2 R16 K72 ["isDisabled"]
      283 LOADK                            R17 K76 [""]
      284 SETTABLEKS                       R17 R16 K73 ["label"]
      286 SETTABLEKS                       R4 R16 K74 ["onActivated"]
      288 LOADK                            R17 K77 ["Small"]
      289 SETTABLEKS                       R17 R16 K42 ["size"]
      291 CALL                             R14 2 1
      292 SETTABLEKS                       R14 R13 K69 ["Checkbox"]
      294 CALL                             R10 3 1
      295 SETTABLEKS                       R10 R8 K78 ["CheckboxContainer"]
      297 CALL                             R5 3 -1
      298 RETURN                           R5 -1

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
       40 GETTABLEKS                       R9 R10 K15 ["Util"]
       42 GETTABLEKS                       R8 R9 K16 ["getAssetThumbnail"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R8 R2 K17 ["Image"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R11 R0 K12 ["Src"]
       51 GETTABLEKS                       R10 R11 K18 ["Types"]
       53 CALL                             R9 1 1
       54 GETTABLEKS                       R11 R2 K19 ["Hooks"]
       56 GETTABLEKS                       R10 R11 K20 ["useTokens"]
       58 DUPCLOSURE                       R11 K21 [PROTO_1]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R10
       61 CAPTURE                          VAL R1
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R7
       65 CAPTURE                          VAL R4
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R5
       68 RETURN                           R11 1
