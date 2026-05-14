PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"currentText"}]
        2 SETTABLEKS                       R0 R3 K0 ["currentText"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnButtonPressed"]
        5 MOVE                             R2 R0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["state"]
        9 GETTABLEKS                       R3 R3 K3 ["currentText"]
       11 CALL                             R1 2 0
       12 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{"currentText", "title"}]
        1 NAMECALL                         R2 R0 K3 ["_getInitialPresetName"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R2 R1 K0 ["currentText"]
        6 LOADK                            R2 K4 [""]
        7 SETTABLEKS                       R2 R1 K1 ["title"]
        9 SETTABLEKS                       R1 R0 K5 ["state"]
       11 NEWCLOSURE                       R1 P0
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K6 ["onTextChanged"]
       15 NEWCLOSURE                       R1 P1
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K7 ["onButtonPressed"]
       19 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Intent"]
        4 JUMPIFNOTEQKS                    R2 K2 ["Rename"] ; [+4]
        6 GETTABLEKS                       R2 R1 K3 ["CurrentPreset"]
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R1 K4 ["PresetController"]
       11 NAMECALL                         R2 R2 K5 ["getAllPresets"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R1 K6 ["Localization"]
       16 LOADK                            R5 K7 ["Templates"]
       17 LOADK                            R6 K8 ["NewPreset"]
       18 NAMECALL                         R3 R3 K9 ["getText"]
       20 CALL                             R3 3 1
       21 GETTABLE                         R4 R2 R3
       22 JUMPIFNOTEQKNIL                  R4 ; [+2]
       24 RETURN                           R3 1
       25 LOADN                            R6 1
       26 GETUPVAL                         R7 0
       27 CALL                             R7 0 1
       28 ADDK                             R4 R7 K10 [1]
       29 LOADN                            R5 1
       30 FORNPREP                         R4
       31 LOADK                            R8 K11 ["%* %*"]
       32 MOVE                             R10 R3
       33 MOVE                             R11 R6
       34 NAMECALL                         R8 R8 K12 ["format"]
       36 CALL                             R8 3 1
       37 MOVE                             R7 R8
       38 GETTABLE                         R8 R2 R7
       39 JUMPIFNOTEQKNIL                  R8 ; [+2]
       41 RETURN                           R7 1
       42 FORNLOOP                         R4
       43 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["PresetController"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R4 R4 K4 ["PresetNamePrompt"]
       10 GETTABLEKS                       R7 R4 K5 ["LabelSize"]
       12 GETTABLEKS                       R7 R7 K6 ["X"]
       14 GETTABLEKS                       R7 R7 K7 ["Offset"]
       16 GETTABLEKS                       R8 R4 K8 ["TextboxSize"]
       18 GETTABLEKS                       R8 R8 K6 ["X"]
       20 GETTABLEKS                       R8 R8 K7 ["Offset"]
       22 ADD                              R6 R7 R8
       23 GETTABLEKS                       R7 R4 K9 ["Padding"]
       25 ADD                              R5 R6 R7
       26 GETTABLEKS                       R6 R0 K10 ["state"]
       28 GETTABLEKS                       R6 R6 K11 ["currentText"]
       30 NAMECALL                         R7 R3 K12 ["getNumPresetsRemaining"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R9 R1 K13 ["Intent"]
       35 JUMPIFEQKS                       R9 K14 ["Create"] ; [+2]
       37 LOADB                            R8 0 +1
       38 LOADB                            R8 1
       39 LOADN                            R10 0
       40 JUMPIFLE                         R7 R10 ; [+2]
       42 LOADB                            R9 0 +1
       43 LOADB                            R9 1
       44 MOVE                             R12 R6
       45 NAMECALL                         R10 R3 K15 ["isLastImport"]
       47 CALL                             R10 2 1
       48 JUMPIF                           R10 ; [+4]
       49 MOVE                             R12 R6
       50 NAMECALL                         R10 R3 K16 ["isStudioDefault"]
       52 CALL                             R10 2 1
       53 LOADB                            R11 0
       54 NAMECALL                         R13 R3 K17 ["getAllPresets"]
       56 CALL                             R13 1 1
       57 GETTABLE                         R12 R13 R6
       58 JUMPIFEQKNIL                     R12 ; [+9]
       60 MOVE                             R11 R8
       61 JUMPIF                           R11 ; [+6]
       62 GETTABLEKS                       R12 R1 K18 ["CurrentPreset"]
       64 JUMPIFNOTEQ                      R6 R12 ; [+2]
       66 LOADB                            R11 0 +1
       67 LOADB                            R11 1
       68 LOADK                            R12 K19 [""]
       69 LOADB                            R13 0
       70 LOADB                            R14 0
       71 JUMPIFNOT                        R10 ; [+8]
       72 LOADK                            R17 K20 ["Templates"]
       73 LOADK                            R18 K21 ["OverwritingReservedName"]
       74 NAMECALL                         R15 R2 K22 ["getText"]
       76 CALL                             R15 3 1
       77 MOVE                             R12 R15
       78 LOADB                            R13 1
       79 JUMP                             ; [+34]
       80 JUMPIFNOT                        R11 ; [+8]
       81 LOADK                            R17 K20 ["Templates"]
       82 LOADK                            R18 K23 ["PresetNameOverwriteWarning"]
       83 NAMECALL                         R15 R2 K22 ["getText"]
       85 CALL                             R15 3 1
       86 MOVE                             R12 R15
       87 LOADB                            R14 1
       88 JUMP                             ; [+25]
       89 JUMPIFNOT                        R9 ; [+9]
       90 JUMPIFNOT                        R8 ; [+8]
       91 LOADK                            R17 K20 ["Templates"]
       92 LOADK                            R18 K24 ["TooManyPresets"]
       93 NAMECALL                         R15 R2 K22 ["getText"]
       95 CALL                             R15 3 1
       96 MOVE                             R12 R15
       97 LOADB                            R13 1
       98 JUMP                             ; [+15]
       99 JUMPIFNOT                        R8 ; [+14]
      100 LOADK                            R17 K20 ["Templates"]
      101 LOADK                            R18 K25 ["PresetsRemaining1"]
      102 DUPTABLE                         R19 K27 [{"presetsRemaining"}]
      103 FASTCALL1                        TOSTRING R7 ; [+3]
      104 MOVE                             R21 R7
      105 GETIMPORT                        R20 K29 [tostring]
      107 CALL                             R20 1 1
      108 SETTABLEKS                       R20 R19 K26 ["presetsRemaining"]
      110 NAMECALL                         R15 R2 K22 ["getText"]
      112 CALL                             R15 4 1
      113 MOVE                             R12 R15
      114 LOADNIL                          R15
      115 JUMPIFNOT                        R13 ; [+2]
      116 LOADK                            R15 K30 ["Error"]
      117 JUMP                             ; [+2]
      118 JUMPIFNOT                        R14 ; [+1]
      119 LOADK                            R15 K31 ["Warning"]
      120 GETUPVAL                         R16 0
      121 GETTABLEKS                       R16 R16 K32 ["createElement"]
      123 GETUPVAL                         R17 1
      124 DUPTABLE                         R18 K41 [{"AutomaticSize", "Size", "Text", "Style", "LayoutOrder", "TextWrapped", "TextXAlignment", "TextYAlignment"}]
      125 GETIMPORT                        R19 K44 [Enum.AutomaticSize.Y]
      127 SETTABLEKS                       R19 R18 K33 ["AutomaticSize"]
      129 GETIMPORT                        R19 K47 [UDim2.new]
      131 LOADN                            R20 0
      132 MOVE                             R21 R5
      133 LOADN                            R22 0
      134 LOADN                            R23 0
      135 CALL                             R19 4 1
      136 SETTABLEKS                       R19 R18 K34 ["Size"]
      138 SETTABLEKS                       R12 R18 K35 ["Text"]
      140 SETTABLEKS                       R15 R18 K36 ["Style"]
      142 LOADN                            R19 2
      143 SETTABLEKS                       R19 R18 K37 ["LayoutOrder"]
      145 LOADB                            R19 1
      146 SETTABLEKS                       R19 R18 K38 ["TextWrapped"]
      148 GETIMPORT                        R19 K49 [Enum.TextXAlignment.Left]
      150 SETTABLEKS                       R19 R18 K39 ["TextXAlignment"]
      152 GETIMPORT                        R19 K51 [Enum.TextYAlignment.Top]
      154 SETTABLEKS                       R19 R18 K40 ["TextYAlignment"]
      156 CALL                             R16 2 -1
      157 RETURN                           R16 -1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["PresetController"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R4 R4 K4 ["PresetNamePrompt"]
       10 GETTABLEKS                       R5 R4 K5 ["RenameMinContentSize"]
       12 GETTABLEKS                       R6 R1 K6 ["Intent"]
       14 JUMPIFNOTEQKS                    R6 K7 ["Create"] ; [+7]
       16 LOADK                            R9 K8 ["Templates"]
       17 LOADK                            R10 K9 ["WindowTitleNewPreset"]
       18 NAMECALL                         R7 R2 K10 ["getText"]
       20 CALL                             R7 3 1
       21 JUMP                             ; [+9]
       22 JUMPIFNOTEQKS                    R6 K11 ["Rename"] ; [+7]
       24 LOADK                            R9 K8 ["Templates"]
       25 LOADK                            R10 K12 ["WindowTitleRenamePreset"]
       26 NAMECALL                         R7 R2 K10 ["getText"]
       28 CALL                             R7 3 1
       29 JUMP                             ; [+1]
       30 LOADNIL                          R7
       31 GETTABLEKS                       R8 R0 K13 ["state"]
       33 GETTABLEKS                       R8 R8 K14 ["currentText"]
       35 NAMECALL                         R9 R3 K15 ["getNumPresetsRemaining"]
       37 CALL                             R9 1 1
       38 LOADN                            R11 0
       39 JUMPIFLE                         R9 R11 ; [+2]
       41 LOADB                            R10 0 +1
       42 LOADB                            R10 1
       43 NAMECALL                         R13 R3 K16 ["getAllPresets"]
       45 CALL                             R13 1 1
       46 GETTABLE                         R12 R13 R8
       47 JUMPIFNOTEQKNIL                  R12 ; [+2]
       49 LOADB                            R11 0 +1
       50 LOADB                            R11 1
       51 LOADB                            R12 0
       52 JUMPIFNOTEQKS                    R6 K7 ["Create"] ; [+2]
       54 MOVE                             R12 R10
       55 JUMPIFNOTEQKS                    R6 K7 ["Create"] ; [+4]
       57 JUMPIFNOT                        R10 ; [+2]
       58 JUMPIFNOT                        R11 ; [+1]
       59 LOADB                            R12 0
       60 MOVE                             R15 R8
       61 NAMECALL                         R13 R3 K17 ["isLastImport"]
       63 CALL                             R13 2 1
       64 JUMPIF                           R13 ; [+5]
       65 MOVE                             R15 R8
       66 NAMECALL                         R13 R3 K18 ["isStudioDefault"]
       68 CALL                             R13 2 1
       69 JUMPIFNOT                        R13 ; [+1]
       70 LOADB                            R12 1
       71 GETIMPORT                        R13 K21 [utf8.len]
       73 MOVE                             R14 R8
       74 CALL                             R13 1 1
       75 GETUPVAL                         R14 0
       76 CALL                             R14 0 1
       77 JUMPIFLT                         R14 R13 ; [+8]
       79 GETIMPORT                        R13 K21 [utf8.len]
       81 MOVE                             R14 R8
       82 CALL                             R13 1 1
       83 LOADN                            R14 1
       84 JUMPIFNOTLT                      R13 R14 ; [+2]
       86 LOADB                            R12 1
       87 GETUPVAL                         R13 1
       88 GETTABLEKS                       R13 R13 K22 ["createElement"]
       90 GETUPVAL                         R14 2
       91 DUPTABLE                         R15 K30 [{"Title", "MinContentSize", "Buttons", "OnButtonPressed", "OnClose", "ButtonHorizontalAlignment", "Modal"}]
       92 SETTABLEKS                       R7 R15 K23 ["Title"]
       94 SETTABLEKS                       R5 R15 K24 ["MinContentSize"]
       96 NEWTABLE                         R16 0 2
       98 DUPTABLE                         R17 K33 [{"Key", "Text"}]
       99 LOADK                            R18 K34 ["Cancel"]
      100 SETTABLEKS                       R18 R17 K31 ["Key"]
      102 LOADK                            R20 K35 ["Plugin"]
      103 LOADK                            R21 K34 ["Cancel"]
      104 NAMECALL                         R18 R2 K10 ["getText"]
      106 CALL                             R18 3 1
      107 SETTABLEKS                       R18 R17 K32 ["Text"]
      109 DUPTABLE                         R18 K37 [{"Key", "Text", "StyleModifier"}]
      110 LOADK                            R19 K38 ["Save"]
      111 SETTABLEKS                       R19 R18 K31 ["Key"]
      113 LOADK                            R21 K35 ["Plugin"]
      114 LOADK                            R22 K38 ["Save"]
      115 NAMECALL                         R19 R2 K10 ["getText"]
      117 CALL                             R19 3 1
      118 SETTABLEKS                       R19 R18 K32 ["Text"]
      120 JUMPIFNOT                        R12 ; [+4]
      121 GETUPVAL                         R19 3
      122 GETTABLEKS                       R19 R19 K39 ["Disabled"]
      124 JUMP                             ; [+1]
      125 LOADNIL                          R19
      126 SETTABLEKS                       R19 R18 K36 ["StyleModifier"]
      128 SETLIST                          R16 R17 2 [1]
      130 SETTABLEKS                       R16 R15 K25 ["Buttons"]
      132 GETTABLEKS                       R16 R0 K40 ["onButtonPressed"]
      134 SETTABLEKS                       R16 R15 K26 ["OnButtonPressed"]
      136 GETTABLEKS                       R16 R1 K27 ["OnClose"]
      138 SETTABLEKS                       R16 R15 K27 ["OnClose"]
      140 GETIMPORT                        R16 K44 [Enum.HorizontalAlignment.Center]
      142 SETTABLEKS                       R16 R15 K28 ["ButtonHorizontalAlignment"]
      144 GETUPVAL                         R17 4
      145 CALL                             R17 0 1
      146 NOT                              R16 R17
      147 SETTABLEKS                       R16 R15 K29 ["Modal"]
      149 DUPTABLE                         R16 K46 [{"Pane"}]
      150 GETUPVAL                         R17 1
      151 GETTABLEKS                       R17 R17 K22 ["createElement"]
      153 GETUPVAL                         R18 5
      154 DUPTABLE                         R19 K51 [{"Layout", "VerticalAlignment", "Spacing", "Size"}]
      155 GETIMPORT                        R20 K54 [Enum.FillDirection.Vertical]
      157 SETTABLEKS                       R20 R19 K47 ["Layout"]
      159 GETIMPORT                        R20 K56 [Enum.VerticalAlignment.Top]
      161 SETTABLEKS                       R20 R19 K48 ["VerticalAlignment"]
      163 GETTABLEKS                       R20 R4 K57 ["Padding"]
      165 SETTABLEKS                       R20 R19 K49 ["Spacing"]
      167 GETIMPORT                        R20 K60 [UDim2.fromScale]
      169 LOADN                            R21 1
      170 LOADN                            R22 1
      171 CALL                             R20 2 1
      172 SETTABLEKS                       R20 R19 K50 ["Size"]
      174 DUPTABLE                         R20 K63 [{"TextBox", "Message"}]
      175 GETUPVAL                         R21 1
      176 GETTABLEKS                       R21 R21 K22 ["createElement"]
      178 GETUPVAL                         R22 5
      179 DUPTABLE                         R23 K66 [{"AutomaticSize", "Layout", "VerticalAlignment", "Size", "LayoutOrder", "Spacing"}]
      180 GETIMPORT                        R24 K68 [Enum.AutomaticSize.XY]
      182 SETTABLEKS                       R24 R23 K64 ["AutomaticSize"]
      184 GETIMPORT                        R24 K70 [Enum.FillDirection.Horizontal]
      186 SETTABLEKS                       R24 R23 K47 ["Layout"]
      188 GETIMPORT                        R24 K56 [Enum.VerticalAlignment.Top]
      190 SETTABLEKS                       R24 R23 K48 ["VerticalAlignment"]
      192 GETTABLEKS                       R24 R4 K71 ["TextboxSize"]
      194 SETTABLEKS                       R24 R23 K50 ["Size"]
      196 LOADN                            R24 1
      197 SETTABLEKS                       R24 R23 K65 ["LayoutOrder"]
      199 GETTABLEKS                       R24 R4 K57 ["Padding"]
      201 SETTABLEKS                       R24 R23 K49 ["Spacing"]
      203 DUPTABLE                         R24 K74 [{"Label", "Input"}]
      204 GETUPVAL                         R25 1
      205 GETTABLEKS                       R25 R25 K22 ["createElement"]
      207 GETUPVAL                         R26 6
      208 DUPTABLE                         R27 K76 [{"Text", "TextXAlignment", "Size", "LayoutOrder"}]
      209 GETTABLEKS                       R28 R0 K0 ["props"]
      211 GETTABLEKS                       R28 R28 K1 ["Localization"]
      213 LOADK                            R30 K77 ["Properties"]
      214 LOADK                            R31 K78 ["ImportName"]
      215 NAMECALL                         R28 R28 K10 ["getText"]
      217 CALL                             R28 3 1
      218 SETTABLEKS                       R28 R27 K32 ["Text"]
      220 GETIMPORT                        R28 K80 [Enum.TextXAlignment.Left]
      222 SETTABLEKS                       R28 R27 K75 ["TextXAlignment"]
      224 GETTABLEKS                       R28 R4 K81 ["LabelSize"]
      226 SETTABLEKS                       R28 R27 K50 ["Size"]
      228 LOADN                            R28 1
      229 SETTABLEKS                       R28 R27 K65 ["LayoutOrder"]
      231 CALL                             R25 2 1
      232 SETTABLEKS                       R25 R24 K72 ["Label"]
      234 GETUPVAL                         R25 1
      235 GETTABLEKS                       R25 R25 K22 ["createElement"]
      237 GETUPVAL                         R26 7
      238 DUPTABLE                         R27 K84 [{"Text", "MaxLength", "LayoutOrder", "OnTextChanged", "Size"}]
      239 GETTABLEKS                       R28 R0 K13 ["state"]
      241 GETTABLEKS                       R28 R28 K14 ["currentText"]
      243 SETTABLEKS                       R28 R27 K32 ["Text"]
      245 GETUPVAL                         R28 0
      246 CALL                             R28 0 1
      247 SETTABLEKS                       R28 R27 K82 ["MaxLength"]
      249 LOADN                            R28 2
      250 SETTABLEKS                       R28 R27 K65 ["LayoutOrder"]
      252 GETTABLEKS                       R28 R0 K85 ["onTextChanged"]
      254 SETTABLEKS                       R28 R27 K83 ["OnTextChanged"]
      256 GETTABLEKS                       R28 R4 K71 ["TextboxSize"]
      258 SETTABLEKS                       R28 R27 K50 ["Size"]
      260 CALL                             R25 2 1
      261 SETTABLEKS                       R25 R24 K73 ["Input"]
      263 CALL                             R21 3 1
      264 SETTABLEKS                       R21 R20 K61 ["TextBox"]
      266 NAMECALL                         R21 R0 K86 ["_createMessage"]
      268 CALL                             R21 1 1
      269 SETTABLEKS                       R21 R20 K62 ["Message"]
      271 CALL                             R17 3 1
      272 SETTABLEKS                       R17 R16 K45 ["Pane"]
      274 CALL                             R13 3 -1
      275 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["RoactCompat"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["withContext"]
       25 GETTABLEKS                       R5 R3 K11 ["Stylizer"]
       27 GETTABLEKS                       R6 R3 K12 ["Localization"]
       29 GETTABLEKS                       R7 R1 K13 ["UI"]
       31 GETTABLEKS                       R8 R7 K14 ["Pane"]
       33 GETTABLEKS                       R9 R7 K15 ["TextInput"]
       35 GETTABLEKS                       R10 R7 K16 ["StyledDialog"]
       37 GETTABLEKS                       R11 R7 K17 ["TextLabel"]
       39 GETTABLEKS                       R12 R1 K18 ["Util"]
       41 GETTABLEKS                       R12 R12 K19 ["StyleModifier"]
       43 GETIMPORT                        R13 K5 [require]
       45 GETTABLEKS                       R14 R0 K20 ["Src"]
       47 GETTABLEKS                       R14 R14 K21 ["Controllers"]
       49 GETTABLEKS                       R14 R14 K22 ["PresetController"]
       51 CALL                             R13 1 1
       52 GETIMPORT                        R14 K5 [require]
       54 GETTABLEKS                       R15 R0 K20 ["Src"]
       56 GETTABLEKS                       R15 R15 K23 ["Flags"]
       58 GETTABLEKS                       R15 R15 K24 ["getFIntAssetImportMaxPresetNameLength"]
       60 CALL                             R14 1 1
       61 GETIMPORT                        R15 K5 [require]
       63 GETTABLEKS                       R16 R0 K20 ["Src"]
       65 GETTABLEKS                       R16 R16 K23 ["Flags"]
       67 GETTABLEKS                       R16 R16 K25 ["getFIntAssetImportMaxPresetCount"]
       69 CALL                             R15 1 1
       70 GETIMPORT                        R16 K5 [require]
       72 GETTABLEKS                       R17 R0 K20 ["Src"]
       74 GETTABLEKS                       R17 R17 K23 ["Flags"]
       76 GETTABLEKS                       R17 R17 K26 ["getFFlagDebugAssetImportPlugin"]
       78 CALL                             R16 1 1
       79 GETTABLEKS                       R17 R2 K27 ["PureComponent"]
       81 LOADK                            R19 K28 ["PresetNamePrompt"]
       82 NAMECALL                         R17 R17 K29 ["extend"]
       84 CALL                             R17 2 1
       85 DUPCLOSURE                       R18 K30 [PROTO_2]
       86 SETTABLEKS                       R18 R17 K31 ["init"]
       88 DUPCLOSURE                       R18 K32 [PROTO_3]
       89 CAPTURE                          VAL R15
       90 SETTABLEKS                       R18 R17 K33 ["_getInitialPresetName"]
       92 DUPCLOSURE                       R18 K34 [PROTO_4]
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R11
       95 SETTABLEKS                       R18 R17 K35 ["_createMessage"]
       97 DUPCLOSURE                       R18 K36 [PROTO_5]
       98 CAPTURE                          VAL R14
       99 CAPTURE                          VAL R2
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R16
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R11
      105 CAPTURE                          VAL R9
      106 SETTABLEKS                       R18 R17 K37 ["render"]
      108 MOVE                             R18 R4
      109 DUPTABLE                         R19 K38 [{"Stylizer", "Localization", "PresetController"}]
      110 SETTABLEKS                       R5 R19 K11 ["Stylizer"]
      112 SETTABLEKS                       R6 R19 K12 ["Localization"]
      114 SETTABLEKS                       R13 R19 K22 ["PresetController"]
      116 CALL                             R18 1 1
      117 MOVE                             R19 R17
      118 CALL                             R18 1 1
      119 MOVE                             R17 R18
      120 RETURN                           R17 1
