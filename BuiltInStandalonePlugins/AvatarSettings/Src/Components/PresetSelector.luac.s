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
        3 JUMPIFEQ                         R2 R3 ; [+22]
        5 GETUPVAL                         R2 1
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+10]
        8 GETUPVAL                         R2 2
        9 LOADK                            R4 K1 ["PresetSelected"]
       10 DUPTABLE                         R5 K3 [{"presetType"}]
       11 GETTABLEKS                       R6 R0 K0 ["Id"]
       13 SETTABLEKS                       R6 R5 K2 ["presetType"]
       15 NAMECALL                         R2 R2 K4 ["logCounter"]
       17 CALL                             R2 3 0
       18 GETUPVAL                         R4 3
       19 GETTABLEKS                       R3 R4 K5 ["navigationBarSettings"]
       21 GETTABLEKS                       R2 R3 K6 ["setAvatarPreset"]
       23 GETTABLEKS                       R3 R0 K0 ["Id"]
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 GETUPVAL                         R2 2
        8 NAMECALL                         R2 R2 K0 ["use"]
       10 CALL                             R2 1 1
       11 JUMP                             ; [+1]
       12 LOADNIL                          R2
       13 GETUPVAL                         R3 3
       14 CALL                             R3 0 1
       15 GETUPVAL                         R5 4
       16 GETTABLEKS                       R4 R5 K1 ["useContext"]
       18 GETUPVAL                         R5 5
       19 CALL                             R4 1 1
       20 GETTABLEKS                       R7 R4 K2 ["settings"]
       22 JUMPIFNOTEQKNIL                  R7 ; [+2]
       24 LOADB                            R6 0 +1
       25 LOADB                            R6 1
       26 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       28 LOADK                            R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
       29 GETIMPORT                        R5 K5 [assert]
       31 CALL                             R5 2 0
       32 GETTABLEKS                       R5 R4 K2 ["settings"]
       34 GETTABLEKS                       R8 R5 K6 ["navigationBarSettings"]
       36 GETTABLEKS                       R7 R8 K7 ["avatarType"]
       38 GETTABLEKS                       R6 R7 K8 ["value"]
       40 GETUPVAL                         R8 6
       41 GETTABLEKS                       R7 R8 K9 ["computeCurrentPresetType"]
       43 MOVE                             R8 R4
       44 CALL                             R7 1 1
       45 GETUPVAL                         R9 4
       46 GETTABLEKS                       R8 R9 K10 ["useEffect"]
       48 NEWCLOSURE                       R9 P0
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R5
       51 NEWTABLE                         R10 0 1
       53 MOVE                             R11 R6
       54 SETLIST                          R10 R11 1 [1]
       56 CALL                             R8 2 0
       57 LOADB                            R8 0
       58 GETIMPORT                        R9 K14 [Enum.GameAvatarType.R6]
       60 JUMPIFEQ                         R6 R9 ; [+7]
       62 GETTABLEKS                       R9 R5 K15 ["currentSettingsPage"]
       64 JUMPIFNOTEQKS                    R9 K16 ["General"] ; [+2]
       66 LOADB                            R8 0 +1
       67 LOADB                            R8 1
       68 GETUPVAL                         R9 7
       69 GETUPVAL                         R10 8
       70 MOVE                             R11 R0
       71 DUPTABLE                         R12 K20 [{"UIListLayout", "UIPadding", "PresetTitleFrame"}]
       72 GETUPVAL                         R13 7
       73 LOADK                            R14 K17 ["UIListLayout"]
       74 DUPTABLE                         R15 K24 [{"FillDirection", "SortOrder", "Padding"}]
       75 GETIMPORT                        R16 K26 [Enum.FillDirection.Horizontal]
       77 SETTABLEKS                       R16 R15 K21 ["FillDirection"]
       79 GETIMPORT                        R16 K28 [Enum.SortOrder.LayoutOrder]
       81 SETTABLEKS                       R16 R15 K22 ["SortOrder"]
       83 GETIMPORT                        R16 K31 [UDim.new]
       85 LOADN                            R17 0
       86 LOADN                            R18 24
       87 CALL                             R16 2 1
       88 SETTABLEKS                       R16 R15 K23 ["Padding"]
       90 CALL                             R13 2 1
       91 SETTABLEKS                       R13 R12 K17 ["UIListLayout"]
       93 GETUPVAL                         R13 7
       94 LOADK                            R14 K18 ["UIPadding"]
       95 DUPTABLE                         R15 K33 [{"PaddingLeft"}]
       96 GETIMPORT                        R16 K31 [UDim.new]
       98 LOADN                            R17 0
       99 LOADN                            R18 12
      100 CALL                             R16 2 1
      101 SETTABLEKS                       R16 R15 K32 ["PaddingLeft"]
      103 CALL                             R13 2 1
      104 SETTABLEKS                       R13 R12 K18 ["UIPadding"]
      106 MOVE                             R13 R8
      107 JUMPIFNOT                        R13 ; [+91]
      108 GETUPVAL                         R13 7
      109 GETUPVAL                         R14 9
      110 DUPTABLE                         R15 K40 [{"layoutOrder", "Size", "separation", "textLabelTags", "minTextLabelWidth", "text"}]
      111 MOVE                             R16 R3
      112 CALL                             R16 0 1
      113 SETTABLEKS                       R16 R15 K34 ["layoutOrder"]
      115 GETIMPORT                        R16 K43 [UDim2.fromScale]
      117 LOADN                            R17 0
      118 LOADN                            R18 1
      119 CALL                             R16 2 1
      120 SETTABLEKS                       R16 R15 K35 ["Size"]
      122 GETIMPORT                        R16 K31 [UDim.new]
      124 LOADN                            R17 0
      125 LOADN                            R18 4
      126 CALL                             R16 2 1
      127 SETTABLEKS                       R16 R15 K36 ["separation"]
      129 LOADK                            R16 K44 ["AvatarSettings-LeftTextPrimary"]
      130 SETTABLEKS                       R16 R15 K37 ["textLabelTags"]
      132 GETIMPORT                        R16 K31 [UDim.new]
      134 LOADN                            R17 0
      135 LOADN                            R18 41
      136 CALL                             R16 2 1
      137 SETTABLEKS                       R16 R15 K38 ["minTextLabelWidth"]
      139 LOADK                            R18 K45 ["AvatarTypeSelector"]
      140 LOADK                            R19 K46 ["Preset"]
      141 NAMECALL                         R16 R1 K47 ["getText"]
      143 CALL                             R16 3 1
      144 SETTABLEKS                       R16 R15 K39 ["text"]
      146 DUPTABLE                         R16 K49 [{"AvatarPresetSelectInput"}]
      147 GETUPVAL                         R17 7
      148 GETUPVAL                         R18 10
      149 DUPTABLE                         R19 K56 [{"Items", "PlaceholderText", "Size", "OnRenderItem", "UseAutoWidth", "SelectedId", "OnItemActivated"}]
      150 NEWTABLE                         R20 0 2
      152 GETUPVAL                         R21 11
      153 LOADK                            R22 K57 ["PlayerChoice"]
      154 MOVE                             R23 R1
      155 CALL                             R21 2 1
      156 GETUPVAL                         R22 11
      157 LOADK                            R23 K58 ["ConsistentGameplay"]
      158 MOVE                             R24 R1
      159 CALL                             R22 2 1
      160 SETLIST                          R20 R21 2 [1]
      162 SETTABLEKS                       R20 R19 K50 ["Items"]
      164 LOADK                            R22 K45 ["AvatarTypeSelector"]
      165 LOADK                            R23 K59 ["EmptyPreset"]
      166 NAMECALL                         R20 R1 K47 ["getText"]
      168 CALL                             R20 3 1
      169 SETTABLEKS                       R20 R19 K51 ["PlaceholderText"]
      171 GETIMPORT                        R20 K61 [UDim2.fromOffset]
      173 LOADN                            R21 171
      174 GETUPVAL                         R23 12
      175 GETTABLEKS                       R22 R23 K62 ["STANDARD_HEIGHT"]
      177 CALL                             R20 2 1
      178 SETTABLEKS                       R20 R19 K35 ["Size"]
      180 GETUPVAL                         R20 13
      181 SETTABLEKS                       R20 R19 K52 ["OnRenderItem"]
      183 LOADB                            R20 1
      184 SETTABLEKS                       R20 R19 K53 ["UseAutoWidth"]
      186 SETTABLEKS                       R7 R19 K54 ["SelectedId"]
      188 NEWCLOSURE                       R20 P1
      189 CAPTURE                          VAL R7
      190 CAPTURE                          UPVAL U1
      191 CAPTURE                          VAL R2
      192 CAPTURE                          VAL R5
      193 SETTABLEKS                       R20 R19 K55 ["OnItemActivated"]
      195 CALL                             R17 2 1
      196 SETTABLEKS                       R17 R16 K48 ["AvatarPresetSelectInput"]
      198 CALL                             R13 3 1
      199 SETTABLEKS                       R13 R12 K19 ["PresetTitleFrame"]
      201 CALL                             R9 3 -1
      202 RETURN                           R9 -1

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
      117 GETIMPORT                        R15 K5 [require]
      119 GETTABLEKS                       R18 R0 K6 ["Src"]
      121 GETTABLEKS                       R17 R18 K26 ["Flags"]
      123 GETTABLEKS                       R16 R17 K27 ["getFFlagAddTelemetry"]
      125 CALL                             R15 1 1
      126 GETTABLEKS                       R16 R5 K28 ["UI"]
      128 GETTABLEKS                       R17 R16 K29 ["Pane"]
      130 GETTABLEKS                       R18 R16 K30 ["SelectInput"]
      132 GETTABLEKS                       R19 R8 K31 ["createNextOrder"]
      134 GETTABLEKS                       R20 R7 K32 ["createElement"]
      136 GETIMPORT                        R21 K35 [Vector2.new]
      138 LOADN                            R22 0
      139 LOADN                            R23 45
      140 CALL                             R21 2 1
      141 DUPCLOSURE                       R22 K36 [PROTO_0]
      142 CAPTURE                          VAL R7
      143 CAPTURE                          VAL R20
      144 CAPTURE                          VAL R6
      145 CAPTURE                          VAL R21
      146 CAPTURE                          VAL R10
      147 DUPCLOSURE                       R23 K37 [PROTO_3]
      148 CAPTURE                          VAL R13
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R14
      151 CAPTURE                          VAL R19
      152 CAPTURE                          VAL R7
      153 CAPTURE                          VAL R2
      154 CAPTURE                          VAL R1
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R17
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R18
      159 CAPTURE                          VAL R22
      160 CAPTURE                          VAL R4
      161 CAPTURE                          VAL R11
      162 RETURN                           R23 1
