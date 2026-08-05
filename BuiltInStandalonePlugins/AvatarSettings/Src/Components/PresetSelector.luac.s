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
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R5 R5 K7 ["Tag"]
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
        3 JUMPIFNOTEQ                      R0 R1 ; [+26]
        5 LOADB                            R0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K4 ["currentSettingsPage"]
        9 JUMPIFEQKS                       R1 K5 ["Body"] ; [+14]
       11 LOADB                            R0 1
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K4 ["currentSettingsPage"]
       15 JUMPIFEQKS                       R1 K6 ["Clothing"] ; [+8]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R1 R1 K4 ["currentSettingsPage"]
       20 JUMPIFEQKS                       R1 K7 ["Movement"] ; [+2]
       22 LOADB                            R0 0 +1
       23 LOADB                            R0 1
       24 JUMPIF                           R0 ; [+5]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K8 ["setCurrentSettingsPage"]
       28 LOADK                            R2 K5 ["Body"]
       29 CALL                             R1 1 0
       30 RETURN                           R0 0

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
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R2 R2 K5 ["navigationBarSettings"]
       18 GETTABLEKS                       R2 R2 K6 ["setAvatarPreset"]
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
       10 GETUPVAL                         R4 3
       11 GETTABLEKS                       R4 R4 K1 ["useContext"]
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
       29 GETTABLEKS                       R6 R5 K6 ["navigationBarSettings"]
       31 GETTABLEKS                       R6 R6 K7 ["avatarType"]
       33 GETTABLEKS                       R6 R6 K8 ["value"]
       35 GETUPVAL                         R7 5
       36 GETTABLEKS                       R7 R7 K9 ["computeCurrentPresetType"]
       38 MOVE                             R8 R4
       39 CALL                             R7 1 1
       40 GETUPVAL                         R8 3
       41 GETTABLEKS                       R8 R8 K10 ["useEffect"]
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
      102 JUMPIFNOT                        R13 ; [+84]
      103 GETUPVAL                         R13 6
      104 GETUPVAL                         R14 8
      105 DUPTABLE                         R15 K41 [{["layoutOrder"], ["Size"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"]}]
      106 MOVE                             R16 R3
      107 CALL                             R16 0 1
      108 SETTABLEKS                       R16 R15 K34 ["layoutOrder"]
      110 GETIMPORT                        R16 K44 [UDim2.fromScale]
      112 LOADN                            R17 0
      113 LOADN                            R18 1
      114 CALL                             R16 2 1
      115 SETTABLEKS                       R16 R15 K35 ["Size"]
      117 GETIMPORT                        R16 K31 [UDim.new]
      119 LOADN                            R17 0
      120 LOADN                            R18 4
      121 CALL                             R16 2 1
      122 SETTABLEKS                       R16 R15 K36 ["separation"]
      124 GETIMPORT                        R16 K31 [UDim.new]
      126 LOADN                            R17 0
      127 LOADN                            R18 41
      128 CALL                             R16 2 1
      129 SETTABLEKS                       R16 R15 K39 ["minTextLabelWidth"]
      131 LOADK                            R18 K45 ["AvatarTypeSelector"]
      132 LOADK                            R19 K46 ["Preset"]
      133 NAMECALL                         R16 R1 K47 ["getText"]
      135 CALL                             R16 3 1
      136 SETTABLEKS                       R16 R15 K40 ["text"]
      138 DUPTABLE                         R16 K49 [{"AvatarPresetSelectInput"}]
      139 GETUPVAL                         R17 6
      140 GETUPVAL                         R18 9
      141 DUPTABLE                         R19 K57 [{["Items"], ["PlaceholderText"], ["Size"], ["OnRenderItem"], ["UseAutoWidth"] = True, ["SelectedId"], ["OnItemActivated"]}]
      142 NEWTABLE                         R20 0 2
      144 GETUPVAL                         R21 10
      145 LOADK                            R22 K58 ["PlayerChoice"]
      146 MOVE                             R23 R1
      147 CALL                             R21 2 1
      148 GETUPVAL                         R22 10
      149 LOADK                            R23 K59 ["ConsistentGameplay"]
      150 MOVE                             R24 R1
      151 CALL                             R22 2 1
      152 SETLIST                          R20 R21 2 [1]
      154 SETTABLEKS                       R20 R19 K50 ["Items"]
      156 LOADK                            R22 K45 ["AvatarTypeSelector"]
      157 LOADK                            R23 K60 ["EmptyPreset"]
      158 NAMECALL                         R20 R1 K47 ["getText"]
      160 CALL                             R20 3 1
      161 SETTABLEKS                       R20 R19 K51 ["PlaceholderText"]
      163 GETIMPORT                        R20 K62 [UDim2.fromOffset]
      165 LOADN                            R21 171
      166 GETUPVAL                         R22 11
      167 GETTABLEKS                       R22 R22 K63 ["STANDARD_HEIGHT"]
      169 CALL                             R20 2 1
      170 SETTABLEKS                       R20 R19 K35 ["Size"]
      172 GETUPVAL                         R20 12
      173 SETTABLEKS                       R20 R19 K52 ["OnRenderItem"]
      175 SETTABLEKS                       R7 R19 K55 ["SelectedId"]
      177 NEWCLOSURE                       R20 P1
      178 CAPTURE                          VAL R7
      179 CAPTURE                          VAL R2
      180 CAPTURE                          VAL R5
      181 SETTABLEKS                       R20 R19 K56 ["OnItemActivated"]
      183 CALL                             R17 2 1
      184 SETTABLEKS                       R17 R16 K48 ["AvatarPresetSelectInput"]
      186 CALL                             R13 3 1
      187 SETTABLEKS                       R13 R12 K19 ["PresetTitleFrame"]
      189 CALL                             R9 3 -1
      190 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["AvatarPresetUtil"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Contexts"]
       24 GETTABLEKS                       R3 R3 K11 ["AvatarSettingsContext"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Src"]
       31 GETTABLEKS                       R4 R4 K7 ["Util"]
       33 GETTABLEKS                       R4 R4 K12 ["AvatarSettingsProviderTypes"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K5 [require]
       38 GETTABLEKS                       R5 R0 K6 ["Src"]
       40 GETTABLEKS                       R5 R5 K7 ["Util"]
       42 GETTABLEKS                       R5 R5 K13 ["Constants"]
       44 CALL                             R4 1 1
       45 GETIMPORT                        R5 K5 [require]
       47 GETTABLEKS                       R6 R0 K14 ["Packages"]
       49 GETTABLEKS                       R6 R6 K15 ["Framework"]
       51 CALL                             R5 1 1
       52 GETIMPORT                        R6 K5 [require]
       54 GETTABLEKS                       R7 R0 K6 ["Src"]
       56 GETTABLEKS                       R7 R7 K9 ["Components"]
       58 GETTABLEKS                       R7 R7 K16 ["PresetHoverTooltipContent"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K14 ["Packages"]
       65 GETTABLEKS                       R8 R8 K17 ["React"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K14 ["Packages"]
       72 GETTABLEKS                       R9 R9 K18 ["ReactUtils"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K6 ["Src"]
       79 GETTABLEKS                       R10 R10 K9 ["Components"]
       81 GETTABLEKS                       R10 R10 K19 ["TitledComponent"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K6 ["Src"]
       88 GETTABLEKS                       R11 R11 K7 ["Util"]
       90 GETTABLEKS                       R11 R11 K20 ["getHoverTooltipDelay"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K6 ["Src"]
       97 GETTABLEKS                       R12 R12 K7 ["Util"]
       99 GETTABLEKS                       R12 R12 K21 ["selectInputOnRenderFunction"]
      101 CALL                             R11 1 1
      102 GETTABLEKS                       R12 R5 K22 ["ContextServices"]
      104 GETTABLEKS                       R13 R12 K23 ["Localization"]
      106 GETIMPORT                        R14 K5 [require]
      108 GETTABLEKS                       R15 R0 K6 ["Src"]
      110 GETTABLEKS                       R15 R15 K7 ["Util"]
      112 GETTABLEKS                       R15 R15 K24 ["Telemetry"]
      114 GETTABLEKS                       R15 R15 K25 ["TelemetryContext"]
      116 CALL                             R14 1 1
      117 GETTABLEKS                       R15 R5 K26 ["UI"]
      119 GETTABLEKS                       R16 R15 K27 ["Pane"]
      121 GETTABLEKS                       R17 R15 K28 ["SelectInput"]
      123 GETTABLEKS                       R18 R8 K29 ["createNextOrder"]
      125 GETTABLEKS                       R19 R7 K30 ["createElement"]
      127 GETIMPORT                        R20 K33 [Vector2.new]
      129 LOADN                            R21 256
      130 LOADN                            R22 301
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
