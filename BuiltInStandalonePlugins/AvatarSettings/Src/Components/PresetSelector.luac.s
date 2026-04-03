PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIFNOT                        R0 ; [+3]
        2 MOVE                             R3 R0
        3 LOADK                            R4 K0 ["Title"]
        4 CONCAT                           R2 R3 R4
        5 DUPTABLE                         R3 K4 [{"Id", "Label", "TooltipProps"}]
        6 SETTABLEKS                       R0 R3 K1 ["Id"]
        8 LOADK                            R6 K5 ["AvatarTypeSelector"]
        9 MOVE                             R7 R2
       10 NAMECALL                         R4 R1 K6 ["getText"]
       12 CALL                             R4 3 1
       13 SETTABLEKS                       R4 R3 K2 ["Label"]
       15 NEWTABLE                         R4 4 0
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K7 ["Tag"]
       20 LOADK                            R6 K8 ["PresetHoverTooltip"]
       21 SETTABLE                         R6 R4 R5
       22 GETUPVAL                         R5 1
       23 GETUPVAL                         R6 2
       24 DUPTABLE                         R7 K10 [{"id"}]
       25 SETTABLEKS                       R0 R7 K9 ["id"]
       27 CALL                             R5 2 1
       28 SETTABLEKS                       R5 R4 K11 ["Content"]
       30 GETUPVAL                         R5 3
       31 SETTABLEKS                       R5 R4 K12 ["ContentExtents"]
       33 GETUPVAL                         R5 4
       34 CALL                             R5 0 1
       35 SETTABLEKS                       R5 R4 K13 ["ShowDelay"]
       37 SETTABLEKS                       R4 R3 K3 ["TooltipProps"]
       39 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R1 K3 [Enum.GameAvatarType.R6]
        3 JUMPIFNOTEQ                      R0 R1 ; [+16]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K4 ["currentSettingsPage"]
        8 JUMPIFEQKS                       R0 K5 ["Body"] ; [+11]
       10 GETUPVAL                         R1 1
       11 GETTABLEKS                       R0 R1 K4 ["currentSettingsPage"]
       13 JUMPIFEQKS                       R0 K6 ["Clothing"] ; [+6]
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R0 R1 K7 ["setCurrentSettingsPage"]
       18 LOADK                            R1 K5 ["Body"]
       19 CALL                             R0 1 0
       20 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Id"]
        2 GETUPVAL                         R3 0
        3 JUMPIFEQ                         R2 R3 ; [+19]
        5 GETUPVAL                         R2 1
        6 LOADK                            R4 K1 ["PresetSelected"]
        7 DUPTABLE                         R5 K3 [{"presetType"}]
        8 GETTABLEKS                       R6 R0 K0 ["Id"]
       10 SETTABLEKS                       R6 R5 K2 ["presetType"]
       12 NAMECALL                         R2 R2 K4 ["logCounter"]
       14 CALL                             R2 3 0
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K5 ["navigationBarSettings"]
       18 GETTABLEKS                       R2 R3 K6 ["setAvatarPreset"]
       20 GETTABLEKS                       R3 R0 K0 ["Id"]
       22 CALL                             R2 1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K0 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 CALL                             R3 0 1
       10 GETUPVAL                         R5 3
       11 GETTABLEKS                       R4 R5 K1 ["useContext"]
       13 GETUPVAL                         R5 4
       14 CALL                             R4 1 1
       15 GETTABLEKS                       R7 R4 K2 ["settings"]
       17 JUMPIFNOTEQKNIL                  R7 ; [+2]
       19 LOADB                            R6 0 +1
       20 LOADB                            R6 1
       21 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       23 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       24 GETIMPORT                        R5 K5 [assert]
       26 CALL                             R5 2 0
       27 GETTABLEKS                       R5 R4 K2 ["settings"]
       29 GETTABLEKS                       R8 R5 K6 ["navigationBarSettings"]
       31 GETTABLEKS                       R7 R8 K7 ["avatarType"]
       33 GETTABLEKS                       R6 R7 K8 ["value"]
       35 GETUPVAL                         R8 5
       36 GETTABLEKS                       R7 R8 K9 ["computeCurrentPresetType"]
       38 MOVE                             R8 R4
       39 CALL                             R7 1 1
       40 GETUPVAL                         R9 3
       41 GETTABLEKS                       R8 R9 K10 ["useEffect"]
       43 NEWCLOSURE                       R9 P0
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R5
       46 NEWTABLE                         R10 0 1
       48 MOVE                             R11 R6
       49 SETLIST                          R10 R11 1 [1]
       51 CALL                             R8 2 0
       52 LOADB                            R8 0
       53 GETIMPORT                        R9 K14 [Enum.GameAvatarType.R6]
       55 JUMPIFEQ                         R6 R9 ; [+7]
       57 GETTABLEKS                       R9 R5 K15 ["currentSettingsPage"]
       59 JUMPIFNOTEQKS                    R9 K16 ["General"] ; [+2]
       61 LOADB                            R8 0 +1
       62 LOADB                            R8 1
       63 GETUPVAL                         R9 6
       64 GETUPVAL                         R10 7
       65 MOVE                             R11 R0
       66 DUPTABLE                         R12 K20 [{"UIListLayout", "UIPadding", "PresetTitleFrame"}]
       67 GETUPVAL                         R13 6
       68 LOADK                            R14 K17 ["UIListLayout"]
       69 DUPTABLE                         R15 K24 [{"FillDirection", "SortOrder", "Padding"}]
       70 GETIMPORT                        R16 K26 [Enum.FillDirection.Horizontal]
       72 SETTABLEKS                       R16 R15 K21 ["FillDirection"]
       74 GETIMPORT                        R16 K28 [Enum.SortOrder.LayoutOrder]
       76 SETTABLEKS                       R16 R15 K22 ["SortOrder"]
       78 GETIMPORT                        R16 K31 [UDim.new]
       80 LOADN                            R17 0
       81 LOADN                            R18 24
       82 CALL                             R16 2 1
       83 SETTABLEKS                       R16 R15 K23 ["Padding"]
       85 CALL                             R13 2 1
       86 SETTABLEKS                       R13 R12 K17 ["UIListLayout"]
       88 GETUPVAL                         R13 6
       89 LOADK                            R14 K18 ["UIPadding"]
       90 DUPTABLE                         R15 K33 [{"PaddingLeft"}]
       91 GETIMPORT                        R16 K31 [UDim.new]
       93 LOADN                            R17 0
       94 LOADN                            R18 12
       95 CALL                             R16 2 1
       96 SETTABLEKS                       R16 R15 K32 ["PaddingLeft"]
       98 CALL                             R13 2 1
       99 SETTABLEKS                       R13 R12 K18 ["UIPadding"]
      101 MOVE                             R13 R8
      102 JUMPIFNOT                        R13 ; [+90]
      103 GETUPVAL                         R13 6
      104 GETUPVAL                         R14 8
      105 DUPTABLE                         R15 K40 [{"layoutOrder", "Size", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
      106 MOVE                             R16 R3
      107 CALL                             R16 0 1
      108 SETTABLEKS                       R16 R15 K34 ["layoutOrder"]
      110 GETIMPORT                        R16 K43 [UDim2.fromScale]
      112 LOADN                            R17 0
      113 LOADN                            R18 1
      114 CALL                             R16 2 1
      115 SETTABLEKS                       R16 R15 K35 ["Size"]
      117 GETIMPORT                        R16 K31 [UDim.new]
      119 LOADN                            R17 0
      120 LOADN                            R18 4
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K36 ["separation"]
      124 LOADK                            R16 K44 ["AvatarSettings-LeftTextPrimary"]
      125 SETTABLEKS                       R16 R15 K37 ["textLabelTags"]
      127 GETIMPORT                        R16 K31 [UDim.new]
      129 LOADN                            R17 0
      130 LOADN                            R18 41
      131 CALL                             R16 2 1
      132 SETTABLEKS                       R16 R15 K38 ["minTextLabelWidth"]
      134 LOADK                            R18 K45 ["AvatarTypeSelector"]
      135 LOADK                            R19 K46 ["Preset"]
      136 NAMECALL                         R16 R1 K47 ["getText"]
      138 CALL                             R16 3 1
      139 SETTABLEKS                       R16 R15 K39 ["text"]
      141 DUPTABLE                         R16 K49 [{"AvatarPresetSelectInput"}]
      142 GETUPVAL                         R17 6
      143 GETUPVAL                         R18 9
      144 DUPTABLE                         R19 K56 [{"Items", "PlaceholderText", "Size", "OnRenderItem", "UseAutoWidth", "SelectedId", "OnItemActivated"}]
      145 NEWTABLE                         R20 0 2
      147 GETUPVAL                         R21 10
      148 LOADK                            R22 K57 ["PlayerChoice"]
      149 MOVE                             R23 R1
      150 CALL                             R21 2 1
      151 GETUPVAL                         R22 10
      152 LOADK                            R23 K58 ["ConsistentGameplay"]
      153 MOVE                             R24 R1
      154 CALL                             R22 2 1
      155 SETLIST                          R20 R21 2 [1]
      157 SETTABLEKS                       R20 R19 K50 ["Items"]
      159 LOADK                            R22 K45 ["AvatarTypeSelector"]
      160 LOADK                            R23 K59 ["EmptyPreset"]
      161 NAMECALL                         R20 R1 K47 ["getText"]
      163 CALL                             R20 3 1
      164 SETTABLEKS                       R20 R19 K51 ["PlaceholderText"]
      166 GETIMPORT                        R20 K61 [UDim2.fromOffset]
      168 LOADN                            R21 171
      169 GETUPVAL                         R23 11
      170 GETTABLEKS                       R22 R23 K62 ["STANDARD_HEIGHT"]
      172 CALL                             R20 2 1
      173 SETTABLEKS                       R20 R19 K35 ["Size"]
      175 GETUPVAL                         R20 12
      176 SETTABLEKS                       R20 R19 K52 ["OnRenderItem"]
      178 LOADB                            R20 1
      179 SETTABLEKS                       R20 R19 K53 ["UseAutoWidth"]
      181 SETTABLEKS                       R7 R19 K54 ["SelectedId"]
      183 NEWCLOSURE                       R20 P1
      184 CAPTURE                          VAL R7
      185 CAPTURE                          VAL R2
      186 CAPTURE                          VAL R5
      187 SETTABLEKS                       R20 R19 K55 ["OnItemActivated"]
      189 CALL                             R17 2 1
      190 SETTABLEKS                       R17 R16 K48 ["AvatarPresetSelectInput"]
      192 CALL                             R13 3 1
      193 SETTABLEKS                       R13 R12 K19 ["PresetTitleFrame"]
      195 CALL                             R9 3 -1
      196 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Src"]
       11 GETTABLEKS                       R3 R4 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["AvatarPresetUtil"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R6 R0 K6 ["Src"]
       20 GETTABLEKS                       R5 R6 K9 ["Components"]
       22 GETTABLEKS                       R4 R5 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R4 K11 ["AvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R6 R0 K6 ["Src"]
       31 GETTABLEKS                       R5 R6 K7 ["Util"]
       33 GETTABLEKS                       R4 R5 K12 ["AvatarSettingsProviderTypes"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R7 R0 K6 ["Src"]
       40 GETTABLEKS                       R6 R7 K7 ["Util"]
       42 GETTABLEKS                       R5 R6 K13 ["Constants"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R7 R0 K14 ["Packages"]
       49 GETTABLEKS                       R6 R7 K15 ["Framework"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R9 R0 K6 ["Src"]
       56 GETTABLEKS                       R8 R9 K9 ["Components"]
       58 GETTABLEKS                       R7 R8 K16 ["PresetHoverTooltipContent"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R9 R0 K14 ["Packages"]
       65 GETTABLEKS                       R8 R9 K17 ["React"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R10 R0 K14 ["Packages"]
       72 GETTABLEKS                       R9 R10 K18 ["ReactUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K6 ["Src"]
       79 GETTABLEKS                       R11 R12 K9 ["Components"]
       81 GETTABLEKS                       R10 R11 K19 ["TitledComponent"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K6 ["Src"]
       88 GETTABLEKS                       R12 R13 K7 ["Util"]
       90 GETTABLEKS                       R11 R12 K20 ["getHoverTooltipDelay"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R14 R0 K6 ["Src"]
       97 GETTABLEKS                       R13 R14 K7 ["Util"]
       99 GETTABLEKS                       R12 R13 K21 ["selectInputOnRenderFunction"]
      101 CALL                             R11 1 1
      102 GETTABLEKS                       R12 R5 K22 ["ContextServices"]
      104 GETTABLEKS                       R13 R12 K23 ["Localization"]
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R18 R0 K6 ["Src"]
      110 GETTABLEKS                       R17 R18 K7 ["Util"]
      112 GETTABLEKS                       R16 R17 K24 ["Telemetry"]
      114 GETTABLEKS                       R15 R16 K25 ["TelemetryContext"]
      116 CALL                             R14 1 1
      117 GETTABLEKS                       R15 R5 K26 ["UI"]
      119 GETTABLEKS                       R16 R15 K27 ["Pane"]
      121 GETTABLEKS                       R17 R15 K28 ["SelectInput"]
      123 GETTABLEKS                       R18 R8 K29 ["createNextOrder"]
      125 GETTABLEKS                       R19 R7 K30 ["createElement"]
      127 GETIMPORT                        R20 K33 [Vector2.new]
      129 LOADN                            R21 0
      130 LOADN                            R22 45
      131 CALL                             R20 2 1
      132 DUPCLOSURE                       R21 K34 [PROTO_0]
      133 CAPTURE                          VAL R7
      134 CAPTURE                          VAL R19
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R20
      137 CAPTURE                          VAL R10
      138 DUPCLOSURE                       R22 K35 [PROTO_3]
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R18
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R1
      145 CAPTURE                          VAL R19
      146 CAPTURE                          VAL R16
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R17
      149 CAPTURE                          VAL R21
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R11
      152 RETURN                           R22 1
