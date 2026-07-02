PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 1
        6 GETTABLEKS                       R4 R0 K1 ["id"]
        8 FASTCALL2K                       ASSERT R4 K2 ; [+4]
       10 LOADK                            R5 K2 ["PresetHoverTooltipContent id cannot be nil"]
       11 GETIMPORT                        R3 K4 [assert]
       13 CALL                             R3 2 0
       14 GETUPVAL                         R3 2
       15 GETUPVAL                         R4 3
       16 NEWTABLE                         R5 4 0
       18 GETUPVAL                         R6 4
       19 GETTABLEKS                       R6 R6 K5 ["Tag"]
       21 LOADK                            R7 K6 ["X-Column X-Center"]
       22 SETTABLE                         R7 R5 R6
       23 GETIMPORT                        R6 K10 [Enum.AutomaticSize.XY]
       25 SETTABLEKS                       R6 R5 K8 ["AutomaticSize"]
       27 LOADN                            R6 1
       28 SETTABLEKS                       R6 R5 K11 ["BackgroundTransparency"]
       30 DUPTABLE                         R6 K14 [{"Image", "TextBackground"}]
       31 GETUPVAL                         R7 2
       32 LOADK                            R8 K15 ["ImageLabel"]
       33 NEWTABLE                         R9 4 0
       35 GETUPVAL                         R10 4
       36 GETTABLEKS                       R10 R10 K5 ["Tag"]
       38 GETUPVAL                         R11 5
       39 LOADK                            R12 K16 ["HoverTooltipPresetImage"]
       40 GETTABLEKS                       R14 R0 K1 ["id"]
       42 JUMPIFNOTEQKS                    R14 K17 ["PlayerChoice"] ; [+3]
       44 LOADK                            R13 K17 ["PlayerChoice"]
       45 JUMP                             ; [+1]
       46 LOADK                            R13 K18 ["Consistent"]
       47 CALL                             R11 2 1
       48 SETTABLE                         R11 R9 R10
       49 GETUPVAL                         R10 6
       50 SETTABLEKS                       R10 R9 K19 ["Size"]
       52 MOVE                             R10 R2
       53 CALL                             R10 0 1
       54 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       56 CALL                             R7 2 1
       57 SETTABLEKS                       R7 R6 K12 ["Image"]
       59 GETUPVAL                         R7 2
       60 GETUPVAL                         R8 3
       61 DUPTABLE                         R9 K21 [{"LayoutOrder", "Size", "AutomaticSize"}]
       62 MOVE                             R10 R2
       63 CALL                             R10 0 1
       64 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
       66 GETUPVAL                         R10 7
       67 SETTABLEKS                       R10 R9 K19 ["Size"]
       69 GETIMPORT                        R10 K23 [Enum.AutomaticSize.Y]
       71 SETTABLEKS                       R10 R9 K8 ["AutomaticSize"]
       73 DUPTABLE                         R10 K26 [{"UIPadding", "TextSection"}]
       74 GETUPVAL                         R11 2
       75 LOADK                            R12 K24 ["UIPadding"]
       76 DUPTABLE                         R13 K31 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       77 GETUPVAL                         R14 8
       78 SETTABLEKS                       R14 R13 K27 ["PaddingTop"]
       80 GETUPVAL                         R14 8
       81 SETTABLEKS                       R14 R13 K28 ["PaddingBottom"]
       83 GETUPVAL                         R14 8
       84 SETTABLEKS                       R14 R13 K29 ["PaddingLeft"]
       86 GETUPVAL                         R14 8
       87 SETTABLEKS                       R14 R13 K30 ["PaddingRight"]
       89 CALL                             R11 2 1
       90 SETTABLEKS                       R11 R10 K24 ["UIPadding"]
       92 GETUPVAL                         R11 2
       93 GETUPVAL                         R12 3
       94 NEWTABLE                         R13 2 0
       96 GETUPVAL                         R14 4
       97 GETTABLEKS                       R14 R14 K5 ["Tag"]
       99 LOADK                            R15 K32 ["X-Column"]
      100 SETTABLE                         R15 R13 R14
      101 GETIMPORT                        R14 K35 [UDim2.fromScale]
      103 LOADN                            R15 1
      104 LOADN                            R16 1
      105 CALL                             R14 2 1
      106 SETTABLEKS                       R14 R13 K19 ["Size"]
      108 DUPTABLE                         R14 K39 [{"UpperTextSection", "Divider", "LowerTextSection"}]
      109 GETUPVAL                         R15 2
      110 GETUPVAL                         R16 3
      111 NEWTABLE                         R17 4 0
      113 GETUPVAL                         R18 4
      114 GETTABLEKS                       R18 R18 K5 ["Tag"]
      116 LOADK                            R19 K40 ["X-Column X-Left"]
      117 SETTABLE                         R19 R17 R18
      118 GETIMPORT                        R18 K42 [UDim2.new]
      120 LOADN                            R19 1
      121 LOADN                            R20 0
      122 LOADN                            R21 0
      123 LOADN                            R22 0
      124 CALL                             R18 4 1
      125 SETTABLEKS                       R18 R17 K19 ["Size"]
      127 GETIMPORT                        R18 K23 [Enum.AutomaticSize.Y]
      129 SETTABLEKS                       R18 R17 K8 ["AutomaticSize"]
      131 MOVE                             R18 R2
      132 CALL                             R18 0 1
      133 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      135 DUPTABLE                         R18 K45 [{"UIPadding", "Title", "Description"}]
      136 GETUPVAL                         R19 2
      137 LOADK                            R20 K24 ["UIPadding"]
      138 DUPTABLE                         R21 K46 [{"PaddingBottom"}]
      139 GETIMPORT                        R22 K48 [UDim.new]
      141 LOADN                            R23 0
      142 LOADN                            R24 8
      143 CALL                             R22 2 1
      144 SETTABLEKS                       R22 R21 K28 ["PaddingBottom"]
      146 CALL                             R19 2 1
      147 SETTABLEKS                       R19 R18 K24 ["UIPadding"]
      149 GETUPVAL                         R19 2
      150 LOADK                            R20 K49 ["TextLabel"]
      151 NEWTABLE                         R21 8 0
      153 GETUPVAL                         R22 4
      154 GETTABLEKS                       R22 R22 K5 ["Tag"]
      156 LOADK                            R23 K50 ["Component-TextLabel"]
      157 SETTABLE                         R23 R21 R22
      158 GETUPVAL                         R22 9
      159 SETTABLEKS                       R22 R21 K19 ["Size"]
      161 GETIMPORT                        R22 K10 [Enum.AutomaticSize.XY]
      163 SETTABLEKS                       R22 R21 K8 ["AutomaticSize"]
      165 LOADK                            R24 K51 ["AvatarTypeSelector"]
      166 GETTABLEKS                       R26 R0 K1 ["id"]
      168 LOADK                            R27 K43 ["Title"]
      169 CONCAT                           R25 R26 R27
      170 NAMECALL                         R22 R1 K52 ["getText"]
      172 CALL                             R22 3 1
      173 SETTABLEKS                       R22 R21 K53 ["Text"]
      175 LOADN                            R22 18
      176 SETTABLEKS                       R22 R21 K54 ["TextSize"]
      178 GETIMPORT                        R22 K57 [Enum.TextXAlignment.Left]
      180 SETTABLEKS                       R22 R21 K55 ["TextXAlignment"]
      182 MOVE                             R22 R2
      183 CALL                             R22 0 1
      184 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      186 CALL                             R19 2 1
      187 SETTABLEKS                       R19 R18 K43 ["Title"]
      189 GETUPVAL                         R19 2
      190 LOADK                            R20 K49 ["TextLabel"]
      191 NEWTABLE                         R21 8 0
      193 GETUPVAL                         R22 4
      194 GETTABLEKS                       R22 R22 K5 ["Tag"]
      196 LOADK                            R23 K58 ["Component-TextLabel SubText"]
      197 SETTABLE                         R23 R21 R22
      198 GETUPVAL                         R22 10
      199 SETTABLEKS                       R22 R21 K19 ["Size"]
      201 GETIMPORT                        R22 K10 [Enum.AutomaticSize.XY]
      203 SETTABLEKS                       R22 R21 K8 ["AutomaticSize"]
      205 LOADK                            R24 K51 ["AvatarTypeSelector"]
      206 GETTABLEKS                       R26 R0 K1 ["id"]
      208 LOADK                            R27 K44 ["Description"]
      209 CONCAT                           R25 R26 R27
      210 NAMECALL                         R22 R1 K52 ["getText"]
      212 CALL                             R22 3 1
      213 SETTABLEKS                       R22 R21 K53 ["Text"]
      215 GETIMPORT                        R22 K57 [Enum.TextXAlignment.Left]
      217 SETTABLEKS                       R22 R21 K55 ["TextXAlignment"]
      219 LOADB                            R22 1
      220 SETTABLEKS                       R22 R21 K59 ["TextWrapped"]
      222 MOVE                             R22 R2
      223 CALL                             R22 0 1
      224 SETTABLEKS                       R22 R21 K20 ["LayoutOrder"]
      226 CALL                             R19 2 1
      227 SETTABLEKS                       R19 R18 K44 ["Description"]
      229 CALL                             R15 3 1
      230 SETTABLEKS                       R15 R14 K36 ["UpperTextSection"]
      232 GETUPVAL                         R15 2
      233 GETUPVAL                         R16 3
      234 NEWTABLE                         R17 2 0
      236 GETUPVAL                         R18 4
      237 GETTABLEKS                       R18 R18 K5 ["Tag"]
      239 GETUPVAL                         R20 11
      240 CALL                             R20 0 1
      241 JUMPIFNOT                        R20 ; [+2]
      242 LOADK                            R19 K60 ["Separator"]
      243 JUMP                             ; [+1]
      244 LOADK                            R19 K61 ["PresetHoverTooltipDivider"]
      245 SETTABLE                         R19 R17 R18
      246 MOVE                             R18 R2
      247 CALL                             R18 0 1
      248 SETTABLEKS                       R18 R17 K20 ["LayoutOrder"]
      250 CALL                             R15 2 1
      251 SETTABLEKS                       R15 R14 K37 ["Divider"]
      253 GETUPVAL                         R15 2
      254 GETUPVAL                         R16 12
      255 DUPTABLE                         R17 K65 [{"size", "layoutOrder", "currentPreset"}]
      256 GETUPVAL                         R18 13
      257 SETTABLEKS                       R18 R17 K62 ["size"]
      259 MOVE                             R18 R2
      260 CALL                             R18 0 1
      261 SETTABLEKS                       R18 R17 K63 ["layoutOrder"]
      263 GETTABLEKS                       R19 R0 K1 ["id"]
      265 JUMPIFNOT                        R19 ; [+7]
      266 GETTABLEKS                       R19 R0 K1 ["id"]
      268 FASTCALL1                        TOSTRING R19 ; [+2]
      269 GETIMPORT                        R18 K67 [tostring]
      271 CALL                             R18 1 1
      272 JUMP                             ; [+1]
      273 LOADNIL                          R18
      274 SETTABLEKS                       R18 R17 K64 ["currentPreset"]
      276 CALL                             R15 2 1
      277 SETTABLEKS                       R15 R14 K38 ["LowerTextSection"]
      279 CALL                             R11 3 1
      280 SETTABLEKS                       R11 R10 K25 ["TextSection"]
      282 CALL                             R7 3 1
      283 SETTABLEKS                       R7 R6 K13 ["TextBackground"]
      285 CALL                             R3 3 -1
      286 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarSettingsProviderTypes"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Src"]
       27 GETTABLEKS                       R4 R4 K11 ["Components"]
       29 GETTABLEKS                       R4 R4 K12 ["PresetTooltipDescriptionSection"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Packages"]
       36 GETTABLEKS                       R5 R5 K13 ["React"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Packages"]
       43 GETTABLEKS                       R6 R6 K14 ["ReactUtils"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K6 ["Src"]
       50 GETTABLEKS                       R7 R7 K15 ["Flags"]
       52 GETTABLEKS                       R7 R7 K16 ["getFFlagAvatarSettingsChangeSeparatorColor"]
       54 CALL                             R6 1 1
       55 GETTABLEKS                       R7 R2 K17 ["ContextServices"]
       57 GETTABLEKS                       R8 R2 K18 ["Styling"]
       59 GETTABLEKS                       R8 R8 K19 ["joinTags"]
       61 GETTABLEKS                       R9 R7 K20 ["Localization"]
       63 GETTABLEKS                       R10 R2 K21 ["UI"]
       65 GETTABLEKS                       R11 R10 K22 ["Pane"]
       67 GETTABLEKS                       R12 R5 K23 ["createNextOrder"]
       69 GETTABLEKS                       R13 R4 K24 ["createElement"]
       71 GETIMPORT                        R14 K27 [UDim2.fromOffset]
       73 LOADN                            R15 256
       74 LOADN                            R16 113
       75 CALL                             R14 2 1
       76 GETIMPORT                        R15 K27 [UDim2.fromOffset]
       78 LOADN                            R16 256
       79 LOADN                            R17 0
       80 CALL                             R15 2 1
       81 GETIMPORT                        R16 K30 [UDim.new]
       83 LOADN                            R17 0
       84 LOADN                            R18 12
       85 CALL                             R16 2 1
       86 GETIMPORT                        R17 K31 [UDim2.new]
       88 LOADN                            R18 1
       89 LOADN                            R19 0
       90 LOADN                            R20 0
       91 LOADN                            R21 20
       92 CALL                             R17 4 1
       93 GETIMPORT                        R18 K31 [UDim2.new]
       95 LOADN                            R19 1
       96 LOADN                            R20 0
       97 LOADN                            R21 0
       98 LOADN                            R22 48
       99 CALL                             R18 4 1
      100 GETIMPORT                        R19 K31 [UDim2.new]
      102 LOADN                            R20 1
      103 LOADN                            R21 0
      104 LOADN                            R22 0
      105 LOADN                            R23 88
      106 CALL                             R19 4 1
      107 DUPCLOSURE                       R20 K32 [PROTO_0]
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R11
      112 CAPTURE                          VAL R4
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R14
      115 CAPTURE                          VAL R15
      116 CAPTURE                          VAL R16
      117 CAPTURE                          VAL R17
      118 CAPTURE                          VAL R18
      119 CAPTURE                          VAL R6
      120 CAPTURE                          VAL R3
      121 CAPTURE                          VAL R19
      122 RETURN                           R20 1
