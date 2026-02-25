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
       38 LOADK                            R8 K12 ["row gap-medium align-y-center padding-small"]
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
       64 DUPTABLE                         R8 K23 [{"Thumbnail", "Details", "CheckboxContainer"}]
       65 GETUPVAL                         R10 2
       66 GETTABLEKS                       R9 R10 K5 ["createElement"]
       68 GETUPVAL                         R10 3
       69 DUPTABLE                         R11 K24 [{"tag", "Size", "LayoutOrder"}]
       70 LOADK                            R12 K25 ["stroke-default radius-small"]
       71 SETTABLEKS                       R12 R11 K6 ["tag"]
       73 GETIMPORT                        R12 K27 [UDim2.fromOffset]
       75 LOADN                            R13 48
       76 LOADN                            R14 48
       77 CALL                             R12 2 1
       78 SETTABLEKS                       R12 R11 K7 ["Size"]
       80 LOADN                            R12 1
       81 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K20 ["Thumbnail"]
       86 GETUPVAL                         R10 2
       87 GETTABLEKS                       R9 R10 K5 ["createElement"]
       89 GETUPVAL                         R10 3
       90 DUPTABLE                         R11 K28 [{"tag", "LayoutOrder"}]
       91 LOADK                            R12 K29 ["col grow auto-y gap-xsmall"]
       92 SETTABLEKS                       R12 R11 K6 ["tag"]
       94 LOADN                            R12 2
       95 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
       97 DUPTABLE                         R12 K33 [{"Name", "CreatorRow", "PriceContainer"}]
       98 GETUPVAL                         R14 2
       99 GETTABLEKS                       R13 R14 K5 ["createElement"]
      101 GETUPVAL                         R14 4
      102 DUPTABLE                         R15 K35 [{"Text", "tag", "LayoutOrder"}]
      103 GETTABLEKS                       R16 R0 K36 ["name"]
      105 SETTABLEKS                       R16 R15 K34 ["Text"]
      107 LOADK                            R16 K37 ["text-label-medium auto-xy content-default"]
      108 SETTABLEKS                       R16 R15 K6 ["tag"]
      110 LOADN                            R16 1
      111 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      113 CALL                             R13 2 1
      114 SETTABLEKS                       R13 R12 K30 ["Name"]
      116 GETUPVAL                         R14 2
      117 GETTABLEKS                       R13 R14 K5 ["createElement"]
      119 GETUPVAL                         R14 3
      120 DUPTABLE                         R15 K28 [{"tag", "LayoutOrder"}]
      121 LOADK                            R16 K38 ["row gap-xsmall align-y-center auto-xy"]
      122 SETTABLEKS                       R16 R15 K6 ["tag"]
      124 LOADN                            R16 2
      125 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      127 DUPTABLE                         R16 K41 [{"CreatorText", "VerifiedIcon"}]
      128 GETUPVAL                         R18 2
      129 GETTABLEKS                       R17 R18 K5 ["createElement"]
      131 GETUPVAL                         R18 4
      132 DUPTABLE                         R19 K35 [{"Text", "tag", "LayoutOrder"}]
      133 GETTABLEKS                       R20 R0 K42 ["creator"]
      135 SETTABLEKS                       R20 R19 K34 ["Text"]
      137 LOADK                            R20 K43 ["text-body-small auto-xy content-muted"]
      138 SETTABLEKS                       R20 R19 K6 ["tag"]
      140 LOADN                            R20 1
      141 SETTABLEKS                       R20 R19 K9 ["LayoutOrder"]
      143 CALL                             R17 2 1
      144 SETTABLEKS                       R17 R16 K39 ["CreatorText"]
      146 GETUPVAL                         R18 2
      147 GETTABLEKS                       R17 R18 K5 ["createElement"]
      149 GETUPVAL                         R19 5
      150 GETTABLEKS                       R18 R19 K44 ["Icon"]
      152 DUPTABLE                         R19 K47 [{"name", "size", "variant", "LayoutOrder"}]
      153 GETUPVAL                         R23 5
      154 GETTABLEKS                       R22 R23 K48 ["Enums"]
      156 GETTABLEKS                       R21 R22 K49 ["IconName"]
      158 GETTABLEKS                       R20 R21 K50 ["VerifiedMono"]
      160 SETTABLEKS                       R20 R19 K36 ["name"]
      162 GETUPVAL                         R23 5
      163 GETTABLEKS                       R22 R23 K48 ["Enums"]
      165 GETTABLEKS                       R21 R22 K51 ["IconSize"]
      167 GETTABLEKS                       R20 R21 K52 ["XSmall"]
      169 SETTABLEKS                       R20 R19 K45 ["size"]
      171 GETUPVAL                         R23 5
      172 GETTABLEKS                       R22 R23 K48 ["Enums"]
      174 GETTABLEKS                       R21 R22 K53 ["IconVariant"]
      176 GETTABLEKS                       R20 R21 K54 ["Filled"]
      178 SETTABLEKS                       R20 R19 K46 ["variant"]
      180 LOADN                            R20 2
      181 SETTABLEKS                       R20 R19 K9 ["LayoutOrder"]
      183 CALL                             R17 2 1
      184 SETTABLEKS                       R17 R16 K40 ["VerifiedIcon"]
      186 CALL                             R13 3 1
      187 SETTABLEKS                       R13 R12 K31 ["CreatorRow"]
      189 GETUPVAL                         R14 2
      190 GETTABLEKS                       R13 R14 K5 ["createElement"]
      192 GETUPVAL                         R14 3
      193 DUPTABLE                         R15 K28 [{"tag", "LayoutOrder"}]
      194 LOADK                            R16 K38 ["row gap-xsmall align-y-center auto-xy"]
      195 SETTABLEKS                       R16 R15 K6 ["tag"]
      197 LOADN                            R16 3
      198 SETTABLEKS                       R16 R15 K9 ["LayoutOrder"]
      200 DUPTABLE                         R16 K57 [{"RobuxIcon", "Price"}]
      201 GETUPVAL                         R18 2
      202 GETTABLEKS                       R17 R18 K5 ["createElement"]
      204 GETUPVAL                         R19 5
      205 GETTABLEKS                       R18 R19 K58 ["Image"]
      207 DUPTABLE                         R19 K60 [{"Image", "Size", "ImageColor3", "LayoutOrder"}]
      208 LOADK                            R20 K61 ["rbxasset://textures/ui/common/robux_small.png"]
      209 SETTABLEKS                       R20 R19 K58 ["Image"]
      211 GETIMPORT                        R20 K27 [UDim2.fromOffset]
      213 LOADN                            R21 16
      214 LOADN                            R22 16
      215 CALL                             R20 2 1
      216 SETTABLEKS                       R20 R19 K7 ["Size"]
      218 GETTABLEKS                       R23 R1 K62 ["Color"]
      220 GETTABLEKS                       R22 R23 K63 ["Content"]
      222 GETTABLEKS                       R21 R22 K64 ["Default"]
      224 GETTABLEKS                       R20 R21 K65 ["Color3"]
      226 SETTABLEKS                       R20 R19 K59 ["ImageColor3"]
      228 LOADN                            R20 1
      229 SETTABLEKS                       R20 R19 K9 ["LayoutOrder"]
      231 CALL                             R17 2 1
      232 SETTABLEKS                       R17 R16 K55 ["RobuxIcon"]
      234 GETUPVAL                         R18 2
      235 GETTABLEKS                       R17 R18 K5 ["createElement"]
      237 GETUPVAL                         R18 4
      238 DUPTABLE                         R19 K35 [{"Text", "tag", "LayoutOrder"}]
      239 GETTABLEKS                       R21 R0 K66 ["price"]
      241 FASTCALL1                        TOSTRING R21 ; [+2]
      242 GETIMPORT                        R20 K68 [tostring]
      244 CALL                             R20 1 1
      245 SETTABLEKS                       R20 R19 K34 ["Text"]
      247 LOADK                            R20 K43 ["text-body-small auto-xy content-muted"]
      248 SETTABLEKS                       R20 R19 K6 ["tag"]
      250 LOADN                            R20 2
      251 SETTABLEKS                       R20 R19 K9 ["LayoutOrder"]
      253 CALL                             R17 2 1
      254 SETTABLEKS                       R17 R16 K56 ["Price"]
      256 CALL                             R13 3 1
      257 SETTABLEKS                       R13 R12 K32 ["PriceContainer"]
      259 CALL                             R9 3 1
      260 SETTABLEKS                       R9 R8 K21 ["Details"]
      262 GETUPVAL                         R10 2
      263 GETTABLEKS                       R9 R10 K5 ["createElement"]
      265 GETUPVAL                         R10 3
      266 DUPTABLE                         R11 K28 [{"tag", "LayoutOrder"}]
      267 LOADK                            R12 K69 ["auto-xy padding-left-medium"]
      268 SETTABLEKS                       R12 R11 K6 ["tag"]
      270 LOADN                            R12 3
      271 SETTABLEKS                       R12 R11 K9 ["LayoutOrder"]
      273 DUPTABLE                         R12 K71 [{"Checkbox"}]
      274 GETUPVAL                         R14 2
      275 GETTABLEKS                       R13 R14 K5 ["createElement"]
      277 GETUPVAL                         R14 6
      278 DUPTABLE                         R15 K76 [{"isChecked", "isDisabled", "label", "onActivated", "size"}]
      279 SETTABLEKS                       R3 R15 K72 ["isChecked"]
      281 SETTABLEKS                       R2 R15 K73 ["isDisabled"]
      283 LOADK                            R16 K77 [""]
      284 SETTABLEKS                       R16 R15 K74 ["label"]
      286 SETTABLEKS                       R4 R15 K75 ["onActivated"]
      288 LOADK                            R16 K78 ["Small"]
      289 SETTABLEKS                       R16 R15 K45 ["size"]
      291 CALL                             R13 2 1
      292 SETTABLEKS                       R13 R12 K70 ["Checkbox"]
      294 CALL                             R9 3 1
      295 SETTABLEKS                       R9 R8 K22 ["CheckboxContainer"]
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
       38 GETIMPORT                        R10 K1 [script]
       40 GETTABLEKS                       R9 R10 K15 ["Parent"]
       42 GETTABLEKS                       R8 R9 K16 ["Types"]
       44 CALL                             R7 1 1
       45 GETTABLEKS                       R9 R2 K17 ["Hooks"]
       47 GETTABLEKS                       R8 R9 K18 ["useTokens"]
       49 DUPCLOSURE                       R9 K19 [PROTO_1]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R8
       52 CAPTURE                          VAL R1
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R5
       57 RETURN                           R9 1
