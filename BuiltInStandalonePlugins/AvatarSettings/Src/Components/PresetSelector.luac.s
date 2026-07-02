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
        3 JUMPIFNOTEQ                      R0 R1 ; [+27]
        5 LOADB                            R0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R1 R1 K4 ["currentSettingsPage"]
        9 JUMPIFEQKS                       R1 K5 ["Body"] ; [+15]
       11 LOADB                            R0 1
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K4 ["currentSettingsPage"]
       15 JUMPIFEQKS                       R1 K6 ["Clothing"] ; [+9]
       17 LOADB                            R0 0
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K4 ["currentSettingsPage"]
       21 JUMPIFNOTEQKS                    R1 K7 ["Movement"] ; [+3]
       23 GETUPVAL                         R0 2
       24 CALL                             R0 0 1
       25 JUMPIF                           R0 ; [+5]
       26 GETUPVAL                         R1 1
       27 GETTABLEKS                       R1 R1 K8 ["setCurrentSettingsPage"]
       29 LOADK                            R2 K5 ["Body"]
       30 CALL                             R1 1 0
       31 RETURN                           R0 0

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
       46 CAPTURE                          UPVAL U6
       47 NEWTABLE                         R10 0 1
       49 MOVE                             R11 R6
       50 SETLIST                          R10 R11 1 [1]
       52 CALL                             R8 2 0
       53 LOADB                            R8 0
       54 GETIMPORT                        R9 K14 [Enum.GameAvatarType.R6]
       56 JUMPIFEQ                         R6 R9 ; [+7]
       58 GETTABLEKS                       R9 R5 K15 ["currentSettingsPage"]
       60 JUMPIFNOTEQKS                    R9 K16 ["General"] ; [+2]
       62 LOADB                            R8 0 +1
       63 LOADB                            R8 1
       64 GETUPVAL                         R9 7
       65 GETUPVAL                         R10 8
       66 MOVE                             R11 R0
       67 DUPTABLE                         R12 K20 [{"UIListLayout", "UIPadding", "PresetTitleFrame"}]
       68 GETUPVAL                         R13 7
       69 LOADK                            R14 K17 ["UIListLayout"]
       70 DUPTABLE                         R15 K24 [{"FillDirection", "SortOrder", "Padding"}]
       71 GETIMPORT                        R16 K26 [Enum.FillDirection.Horizontal]
       73 SETTABLEKS                       R16 R15 K21 ["FillDirection"]
       75 GETIMPORT                        R16 K28 [Enum.SortOrder.LayoutOrder]
       77 SETTABLEKS                       R16 R15 K22 ["SortOrder"]
       79 GETIMPORT                        R16 K31 [UDim.new]
       81 LOADN                            R17 0
       82 LOADN                            R18 24
       83 CALL                             R16 2 1
       84 SETTABLEKS                       R16 R15 K23 ["Padding"]
       86 CALL                             R13 2 1
       87 SETTABLEKS                       R13 R12 K17 ["UIListLayout"]
       89 GETUPVAL                         R13 7
       90 LOADK                            R14 K18 ["UIPadding"]
       91 DUPTABLE                         R15 K33 [{"PaddingLeft"}]
       92 GETIMPORT                        R16 K31 [UDim.new]
       94 LOADN                            R17 0
       95 LOADN                            R18 12
       96 CALL                             R16 2 1
       97 SETTABLEKS                       R16 R15 K32 ["PaddingLeft"]
       99 CALL                             R13 2 1
      100 SETTABLEKS                       R13 R12 K18 ["UIPadding"]
      102 MOVE                             R13 R8
      103 JUMPIFNOT                        R13 ; [+84]
      104 GETUPVAL                         R13 7
      105 GETUPVAL                         R14 9
      106 DUPTABLE                         R15 K41 [{["layoutOrder"], ["Size"], ["separation"], ["textLabelTags"] = "AvatarSettings-LeftTextPrimary", ["minTextLabelWidth"], ["text"]}]
      107 MOVE                             R16 R3
      108 CALL                             R16 0 1
      109 SETTABLEKS                       R16 R15 K34 ["layoutOrder"]
      111 GETIMPORT                        R16 K44 [UDim2.fromScale]
      113 LOADN                            R17 0
      114 LOADN                            R18 1
      115 CALL                             R16 2 1
      116 SETTABLEKS                       R16 R15 K35 ["Size"]
      118 GETIMPORT                        R16 K31 [UDim.new]
      120 LOADN                            R17 0
      121 LOADN                            R18 4
      122 CALL                             R16 2 1
      123 SETTABLEKS                       R16 R15 K36 ["separation"]
      125 GETIMPORT                        R16 K31 [UDim.new]
      127 LOADN                            R17 0
      128 LOADN                            R18 41
      129 CALL                             R16 2 1
      130 SETTABLEKS                       R16 R15 K39 ["minTextLabelWidth"]
      132 LOADK                            R18 K45 ["AvatarTypeSelector"]
      133 LOADK                            R19 K46 ["Preset"]
      134 NAMECALL                         R16 R1 K47 ["getText"]
      136 CALL                             R16 3 1
      137 SETTABLEKS                       R16 R15 K40 ["text"]
      139 DUPTABLE                         R16 K49 [{"AvatarPresetSelectInput"}]
      140 GETUPVAL                         R17 7
      141 GETUPVAL                         R18 10
      142 DUPTABLE                         R19 K57 [{["Items"], ["PlaceholderText"], ["Size"], ["OnRenderItem"], ["UseAutoWidth"] = True, ["SelectedId"], ["OnItemActivated"]}]
      143 NEWTABLE                         R20 0 2
      145 GETUPVAL                         R21 11
      146 LOADK                            R22 K58 ["PlayerChoice"]
      147 MOVE                             R23 R1
      148 CALL                             R21 2 1
      149 GETUPVAL                         R22 11
      150 LOADK                            R23 K59 ["ConsistentGameplay"]
      151 MOVE                             R24 R1
      152 CALL                             R22 2 1
      153 SETLIST                          R20 R21 2 [1]
      155 SETTABLEKS                       R20 R19 K50 ["Items"]
      157 LOADK                            R22 K45 ["AvatarTypeSelector"]
      158 LOADK                            R23 K60 ["EmptyPreset"]
      159 NAMECALL                         R20 R1 K47 ["getText"]
      161 CALL                             R20 3 1
      162 SETTABLEKS                       R20 R19 K51 ["PlaceholderText"]
      164 GETIMPORT                        R20 K62 [UDim2.fromOffset]
      166 LOADN                            R21 171
      167 GETUPVAL                         R22 12
      168 GETTABLEKS                       R22 R22 K63 ["STANDARD_HEIGHT"]
      170 CALL                             R20 2 1
      171 SETTABLEKS                       R20 R19 K35 ["Size"]
      173 GETUPVAL                         R20 13
      174 SETTABLEKS                       R20 R19 K52 ["OnRenderItem"]
      176 SETTABLEKS                       R7 R19 K55 ["SelectedId"]
      178 NEWCLOSURE                       R20 P1
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R5
      182 SETTABLEKS                       R20 R19 K56 ["OnItemActivated"]
      184 CALL                             R17 2 1
      185 SETTABLEKS                       R17 R16 K48 ["AvatarPresetSelectInput"]
      187 CALL                             R13 3 1
      188 SETTABLEKS                       R13 R12 K19 ["PresetTitleFrame"]
      190 CALL                             R9 3 -1
      191 RETURN                           R9 -1

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
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K6 ["Src"]
      106 GETTABLEKS                       R13 R13 K22 ["Flags"]
      108 GETTABLEKS                       R13 R13 K23 ["getFFlagAvatarSettingsEnableAbilitiesR6"]
      110 CALL                             R12 1 1
      111 GETTABLEKS                       R13 R5 K24 ["ContextServices"]
      113 GETTABLEKS                       R14 R13 K25 ["Localization"]
      115 GETIMPORT                        R15 K5 [require]
      117 GETTABLEKS                       R16 R0 K6 ["Src"]
      119 GETTABLEKS                       R16 R16 K7 ["Util"]
      121 GETTABLEKS                       R16 R16 K26 ["Telemetry"]
      123 GETTABLEKS                       R16 R16 K27 ["TelemetryContext"]
      125 CALL                             R15 1 1
      126 GETTABLEKS                       R16 R5 K28 ["UI"]
      128 GETTABLEKS                       R17 R16 K29 ["Pane"]
      130 GETTABLEKS                       R18 R16 K30 ["SelectInput"]
      132 GETTABLEKS                       R19 R8 K31 ["createNextOrder"]
      134 GETTABLEKS                       R20 R7 K32 ["createElement"]
      136 GETIMPORT                        R21 K35 [Vector2.new]
      138 LOADN                            R22 256
      139 LOADN                            R23 301
      140 CALL                             R21 2 1
      141 DUPCLOSURE                       R22 K36 [PROTO_0]
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R21
      146 CAPTURE                          VAL R10
      147 DUPCLOSURE                       R23 K37 [PROTO_3]
      148 CAPTURE                          VAL R14
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R19
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R2
      153 CAPTURE                          VAL R1
      154 CAPTURE                          VAL R12
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R11
      162 RETURN                           R23 1
